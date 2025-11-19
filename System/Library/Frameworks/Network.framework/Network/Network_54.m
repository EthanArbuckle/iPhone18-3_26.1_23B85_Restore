uint64_t sub_181DC5344()
{

  sub_181D04D28(v0[9], v0[10]);
  sub_181D04D28(v0[16], v0[17]);
  sub_181D04D28(v0[23], v0[24]);
  sub_181D04D28(v0[30], v0[31]);

  return swift_deallocClassInstance();
}

uint64_t ___ZL59nw_http3_framer_get_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tjjjP16nw_frame_array_s_block_invoke(uint64_t a1, _DWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  nw_frame_get_buffer(a2, v11);
  v4 = *(a1 + 32);
  if (v4 >= 0x40)
  {
    if (v4 >= 0x4000)
    {
      if (v4 >> 30)
      {
        if (v4 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          v11[1] = 136446466;
          v12 = "_http_vle_length";
          v13 = 2048;
          v14 = v4;
          v6 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v6);
          if (result)
          {
            __break(1u);
            return result;
          }

          free(v6);
          v5 = 0;
        }

        else
        {
          v5 = 8;
        }
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v11[0] >> 30)
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  if (v11[0] >= 0x4000u)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2;
  }

  if (v11[0] >= 0x40u)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  nw_http3_framer_claim_http3_frame_header(v10 + v5, a2);
  return 1;
}

uint64_t ___ZL64nw_http3_framer_finalize_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tP16nw_frame_array_sPjS4_Pc_block_invoke(void *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if (!v4 && !a1[4])
  {
    return 1;
  }

  v17 = 0;
  nw_frame_get_buffer(a2, &v17);
  v5 = a1[4];
  if (v5 < 0x40)
  {
    v6 = 1;
LABEL_13:
    if (v17 >> 30)
    {
      v9 = 8;
    }

    else
    {
      v9 = 4;
    }

    if (v17 >= 0x4000)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2;
    }

    if (v17 >= 0x40)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    v12 = nw_http3_framer_write_http3_frame_header(a1[5], a1[4], v4, v11 + v6, a2);
    v13 = a1[6];
    if (v13)
    {
      *v13 += v4;
    }

    v14 = a1[7];
    if (v14)
    {
      *v14 += v12 + v4;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = ___ZL64nw_http3_framer_finalize_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tP16nw_frame_array_sPjS4_Pc_block_invoke_2;
    v15[3] = &__block_descriptor_tmp_152;
    v15[4] = a1[4];
    v15[5] = a2;
    v15[6] = a1[8];
    v16 = v4;
    *v18 = MEMORY[0x1E69E9820];
    *&v18[8] = 0x40000000;
    *&v18[16] = __nw_http_diag_log_for_level_block_invoke;
    v19 = &unk_1E6A303F0;
    v21 = 3;
    v22 = 1;
    v20 = v15;
    os_unfair_lock_lock(&lock);
    (*&v18[16])(v18);
    os_unfair_lock_unlock(&lock);
    return 1;
  }

  if (v5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_13;
  }

  if (!(v5 >> 30))
  {
    v6 = 4;
    goto LABEL_13;
  }

  if (!(v5 >> 62))
  {
    v6 = 8;
    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *v18 = 136446466;
  *&v18[4] = "_http_vle_length";
  *&v18[12] = 2048;
  *&v18[14] = v5;
  v7 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    v6 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void nw_http_transaction_metadata_increment_outbound_body_transfer_size(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_increment_outbound_body_transfer_size_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
      v9 = "%{public}s metadata must be http_transaction";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_transaction_metadata_increment_outbound_body_transfer_size";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http_transaction_metadata_mark_outbound_message_end(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
        v7 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v4)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v4);
        goto LABEL_8;
      }

      if (v10)
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_transaction_definition_definition))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __nw_http_transaction_metadata_mark_outbound_message_end_block_invoke;
    v15 = &unk_1E6A3A950;
    v16 = v1;
    handle = _nw_protocol_metadata_get_handle(v16);
    if (handle)
    {
      v14(v13, handle);
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
      v7 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
      v7 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
      v7 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v12)
  {
    *buf = 136446466;
    v20 = "nw_http_transaction_metadata_mark_outbound_message_end";
    v21 = 2082;
    v22 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t __nw_http_transaction_metadata_mark_outbound_message_end_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = mach_continuous_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 72) = v5;
  v6 = *(a2 + 136);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), 1);
  }

  return 1;
}

uint64_t nw_http_transaction_metadata_get_outbound_body_size(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_outbound_body_size_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DC67F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_masque_frame_finalizer(nw_frame *a1, BOOL a2, char *a3)
{
  buffer = nw_frame_get_buffer(a1, 0);
  if (buffer)
  {
    free(buffer);
  }

  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (*(a1 + 1) != 0)
  {
    v8 = a3 + 248;
    if (v6)
    {
      v8 = (v6 + 24);
    }

    *v8 = v7;
    *v7 = v6;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
  }

  os_release(a1);
}

uint64_t ___ZL61nw_protocol_instance_registrar_copy_tls_metadata_for_protocolP41NWConcrete_nw_protocol_instance_registrarP11nw_protocol_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (nw_protocol_metadata_is_tls(v5))
  {
    if (gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = a1[4];
        v12 = a1[6];
        v16 = 136446978;
        v17 = "nw_protocol_instance_registrar_copy_tls_metadata_for_protocol_block_invoke";
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v5;
        v22 = 2048;
        v23 = v12;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %@ found TLS metadata %@ for protocol %p", &v16, 0x2Au);
      }
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  if (_nw_protocol_metadata_is_quic(v5))
  {
    if (gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = a1[4];
        v15 = a1[6];
        v16 = 136446978;
        v17 = "nw_protocol_instance_registrar_copy_tls_metadata_for_protocol_block_invoke";
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v5;
        v22 = 2048;
        v23 = v15;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %@ found QUIC metadata %@ for protocol %p", &v16, 0x2Au);
      }
    }

    v6 = nw_quic_copy_sec_protocol_metadata(v5);
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return 1;
}

uint64_t _nw_protocol_metadata_is_quic(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  if (sub_181A93694(a1, sub_181AE33B4, 0) & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0), (sub_181A93694(a1, sub_1820EB39C, 0)))
  {
    v2 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3D0);
    v2 = sub_181A93694(a1, sub_1820EB39C, 0);
  }

  return v2 & 1;
}

sec_protocol_metadata_t nw_quic_copy_sec_protocol_metadata(nw_protocol_metadata_t metadata)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (v1)
  {
    v2 = v1;
    if (_nw_protocol_metadata_is_quic_stream(v1))
    {
      v3 = nw_quic_stream_copy_connection_metadata(v2);

      v2 = v3;
    }

    v4 = nw_quic_connection_copy_sec_protocol_metadata(v2);

    return v4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_quic_copy_sec_protocol_metadata";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_copy_sec_protocol_metadata";
        v10 = "%{public}s called with null metadata";
LABEL_19:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_quic_copy_sec_protocol_metadata";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_quic_copy_sec_protocol_metadata";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_19;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_copy_sec_protocol_metadata";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_endpoint_handler_copy_connected_socket_wrapper(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    if (v2[29]._os_unfair_lock_opaque == 2)
    {
      v3 = nw_endpoint_flow_copy_connected_socket_wrapper(*&v2[66]._os_unfair_lock_opaque);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(v2 + 28);
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_copy_connected_socket_wrapper";
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
        v16 = "nw_endpoint_handler_copy_connected_socket_wrapper";
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
          v16 = "nw_endpoint_handler_copy_connected_socket_wrapper";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_connected_socket_wrapper";
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
        v16 = "nw_endpoint_handler_copy_connected_socket_wrapper";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

  return v3;
}

uint64_t nw_quic_info_allocate()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x29CC0122uLL);
  if (v0)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v1 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v1);
  if (!result)
  {
    free(v1);
LABEL_4:
    *v0 = _nw_array_create();
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t nw_quic_stream_copy_connection_metadata(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    v2 = _nw_quic_stream_copy_connection_metadata(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_copy_connection_metadata";
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
        v14 = "nw_quic_stream_copy_connection_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata)";
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
            v14 = "nw_quic_stream_copy_connection_metadata";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_copy_connection_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_copy_connection_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata), backtrace limit exceeded";
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

void nw_array_remove_all_objects(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_array_remove_all_objects();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_array_remove_all_objects";
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
        v11 = "nw_array_remove_all_objects";
        v5 = "%{public}s called with null array";
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
            v11 = "nw_array_remove_all_objects";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_array_remove_all_objects";
        v5 = "%{public}s called with null array, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_array_remove_all_objects";
        v5 = "%{public}s called with null array, backtrace limit exceeded";
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

void _nw_array_remove_all_objects_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network7NWArray_applyCount;
  v3 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v4 = a1;
  if (__swp(0xFFFFFFFF, v3()))
  {
    should_abort = __nwlog_should_abort("cannot remove during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();

  *&v4[v6] = *sub_182AD2388();
  swift_endAccess();
  v7 = *(**&a1[v2] + 136);

  v9 = v7(v8);
  __swp(v10, v9);
  if (v10 != 255)
  {
    v11 = __nwlog_should_abort("unexpected value for apply count");

    if ((v11 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t _nw_quic_stream_copy_connection_metadata(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      v5 = sub_181DC78CC();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181DC78CC()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + 56);
  if (v2)
  {
    v3 = qword_1ED4100E8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = word_1ED411CB0;
    v5 = qword_1ED411CB8;
    v6 = qword_1ED411CC0;
    v7 = byte_1ED411CC8;
    sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);
    v8 = sub_181ADC1F8();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
    v11 = swift_allocObject();
    *(v11 + 57) = 0;
    *(v11 + 64) = 0;
    *(v11 + 16) = v4;
    *(v11 + 24) = v5;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    *(v11 + 41) = v8;
    *(v11 + 49) = v10;
    swift_beginAccess();
    *(v11 + 64) = v2;
    os_unfair_lock_unlock(v1 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v1 + 4);
    return 0;
  }

  return v11;
}

uint64_t sub_181DC7A0C()
{

  return swift_deallocClassInstance();
}

uint64_t nw_channel_check_defunct(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_channel_check_defunct";
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
          v12 = "nw_channel_check_defunct";
          v6 = "%{public}s called with null channel";
LABEL_26:
          _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
        }
      }

      else if (v9 == 1)
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
            v12 = "nw_channel_check_defunct";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v8)
        {
          *buf = 136446210;
          v12 = "nw_channel_check_defunct";
          v6 = "%{public}s called with null channel, no backtrace";
          goto LABEL_26;
        }
      }

      else
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (os_log_type_enabled(v4, type))
        {
          *buf = 136446210;
          v12 = "nw_channel_check_defunct";
          v6 = "%{public}s called with null channel, backtrace limit exceeded";
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    if (v3)
    {
      free(v3);
    }

    return 0;
  }

  if (*(a1 + 136))
  {
    if ((*(a1 + 462) & 8) == 0)
    {
      result = os_channel_is_defunct();
      if (!result)
      {
        return result;
      }

      nw_channel_handle_defunct(a1);
    }
  }

  else
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1)
    {
      if (kdebug_is_enabled())
      {
        kdebug_trace();
      }
    }
  }

  return 1;
}

void nw_protocol_common_notify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_protocol_common_notify";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v3, &type, &v57))
    {
      goto LABEL_104;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v57 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v54 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v54)
          {
            *buf = 136446466;
            v60 = "nw_protocol_common_notify";
            v61 = 2082;
            v62 = backtrace_string;
            v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
            goto LABEL_62;
          }

          goto LABEL_63;
        }

        if (v54)
        {
          *buf = 136446210;
          v60 = "nw_protocol_common_notify";
          v11 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_103;
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v60 = "nw_protocol_common_notify";
          v11 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_103;
        }
      }

      goto LABEL_104;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v60 = "nw_protocol_common_notify";
    v11 = "%{public}s called with null protocol";
LABEL_103:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_104;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_protocol_common_notify";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v3, &type, &v57))
    {
      goto LABEL_104;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v57 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v55 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v55)
          {
            *buf = 136446466;
            v60 = "nw_protocol_common_notify";
            v61 = 2082;
            v62 = backtrace_string;
            v14 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
            goto LABEL_62;
          }

          goto LABEL_63;
        }

        if (v55)
        {
          *buf = 136446210;
          v60 = "nw_protocol_common_notify";
          v11 = "%{public}s called with null other_protocol, no backtrace";
          goto LABEL_103;
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v60 = "nw_protocol_common_notify";
          v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_103;
        }
      }

      goto LABEL_104;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v60 = "nw_protocol_common_notify";
    v11 = "%{public}s called with null other_protocol";
    goto LABEL_103;
  }

  if (a3 <= 0x1E)
  {
    if (((1 << a3) & 0x44200080) != 0)
    {
      return;
    }

    if (((1 << a3) & 0x1A000) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(v3 + 24);
        if (!v4)
        {
          return;
        }

        v5 = *(v4 + 160);
        if (!v5)
        {
          return;
        }

        v6 = *(v3 + 40);
        v7 = *(a1 + 32);
        if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v3 + 64)) != 0)
        {
          v20 = *(v7 + 88);
          v8 = 0;
          if (v20)
          {
            *(v7 + 88) = v20 + 1;
          }
        }

        else
        {
          v8 = 1;
        }

        v21 = *(a2 + 40);
        v22 = a2;
        if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v22 = *(a2 + 64)) != 0)
        {
          v23 = *(v22 + 88);
          if (v23)
          {
            *(v22 + 88) = v23 + 1;
          }

          v5(v3);
          v25 = a2;
          v26 = *(a2 + 40);
          if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v25 = *(a2 + 64)) != 0)
          {
            v27 = *(v25 + 88);
            if (v27)
            {
              v28 = v27 - 1;
              *(v25 + 88) = v28;
              if (!v28)
              {
                v29 = *(v25 + 64);
                if (v29)
                {
                  *(v25 + 64) = 0;
                  v30 = v25;
                  v29[2](v29);
                  _Block_release(v29);
                  v25 = v30;
                }

                if (*(v25 + 72))
                {
                  v31 = *(v25 + 64);
                  if (v31)
                  {
                    v32 = v25;
                    _Block_release(v31);
                    v25 = v32;
                  }
                }

                free(v25);
              }
            }
          }
        }

        else
        {
          v5(v3);
        }

        if (v8)
        {
          return;
        }

        v33 = *(v3 + 40);
        if (v33 == &nw_protocol_ref_counted_handle)
        {
          goto LABEL_90;
        }

        if (v33 != &nw_protocol_ref_counted_additional_handle)
        {
          return;
        }

        goto LABEL_89;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v60 = "nw_protocol_common_notify";
      v3 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v3, &type, &v57))
      {
        goto LABEL_104;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v60 = "nw_protocol_common_notify";
        v11 = "%{public}s notify requires an output handler";
        goto LABEL_103;
      }

      if (v57 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v60 = "nw_protocol_common_notify";
        v11 = "%{public}s notify requires an output handler, backtrace limit exceeded";
        goto LABEL_103;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v13 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v60 = "nw_protocol_common_notify";
        v11 = "%{public}s notify requires an output handler, no backtrace";
        goto LABEL_103;
      }

      if (v13)
      {
        *buf = 136446466;
        v60 = "nw_protocol_common_notify";
        v61 = 2082;
        v62 = backtrace_string;
        v14 = "%{public}s notify requires an output handler, dumping backtrace:%{public}s";
LABEL_62:
        _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
        goto LABEL_63;
      }

      goto LABEL_63;
    }

    if (!a3)
    {
      __nwlog_obj();
      *buf = 136446210;
      v60 = "nw_protocol_common_notify";
      v3 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (__nwlog_fault(v3, &type, &v57))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446210;
            v60 = "nw_protocol_common_notify";
            v11 = "%{public}s called with null type";
            goto LABEL_103;
          }
        }

        else if (v57 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v9 = __nwlog_obj();
          v10 = type;
          v56 = os_log_type_enabled(v9, type);
          if (backtrace_string)
          {
            if (v56)
            {
              *buf = 136446466;
              v60 = "nw_protocol_common_notify";
              v61 = 2082;
              v62 = backtrace_string;
              v14 = "%{public}s called with null type, dumping backtrace:%{public}s";
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          if (v56)
          {
            *buf = 136446210;
            v60 = "nw_protocol_common_notify";
            v11 = "%{public}s called with null type, no backtrace";
            goto LABEL_103;
          }
        }

        else
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446210;
            v60 = "nw_protocol_common_notify";
            v11 = "%{public}s called with null type, backtrace limit exceeded";
            goto LABEL_103;
          }
        }
      }

LABEL_104:
      if (!v3)
      {
        return;
      }

      goto LABEL_105;
    }
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_protocol_common_notify";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v3, &type, &v57))
    {
      goto LABEL_104;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v60 = "nw_protocol_common_notify";
      v11 = "%{public}s notify requires a default input handler";
      goto LABEL_103;
    }

    if (v57 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v60 = "nw_protocol_common_notify";
      v11 = "%{public}s notify requires a default input handler, backtrace limit exceeded";
      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v34 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v34)
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v60 = "nw_protocol_common_notify";
      v11 = "%{public}s notify requires a default input handler, no backtrace";
      goto LABEL_103;
    }

    if (v34)
    {
      *buf = 136446466;
      v60 = "nw_protocol_common_notify";
      v61 = 2082;
      v62 = backtrace_string;
      v14 = "%{public}s notify requires a default input handler, dumping backtrace:%{public}s";
      goto LABEL_62;
    }

LABEL_63:
    free(backtrace_string);
    if (!v3)
    {
      return;
    }

LABEL_105:
    free(v3);
    return;
  }

  v15 = *(v3 + 24);
  if (!v15)
  {
    return;
  }

  v16 = *(v15 + 160);
  if (!v16)
  {
    return;
  }

  v17 = *(v3 + 40);
  v18 = *(a1 + 48);
  if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *(v3 + 64)) != 0)
  {
    v35 = *(v18 + 88);
    v19 = 0;
    if (v35)
    {
      *(v18 + 88) = v35 + 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v36 = *(a2 + 40);
  v37 = a2;
  if (v36 == &nw_protocol_ref_counted_handle || v36 == &nw_protocol_ref_counted_additional_handle && (v37 = *(a2 + 64)) != 0)
  {
    v39 = *(v37 + 88);
    v38 = 0;
    if (v39)
    {
      *(v37 + 88) = v39 + 1;
    }
  }

  else
  {
    v38 = 1;
  }

  v16(v3);
  if ((v38 & 1) == 0)
  {
    v41 = a2;
    v42 = *(a2 + 40);
    if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v41 = *(a2 + 64)) != 0)
    {
      v43 = *(v41 + 88);
      if (v43)
      {
        v44 = v43 - 1;
        *(v41 + 88) = v44;
        if (!v44)
        {
          v45 = *(v41 + 64);
          if (v45)
          {
            *(v41 + 64) = 0;
            v46 = v41;
            v45[2](v45);
            _Block_release(v45);
            v41 = v46;
          }

          if (*(v41 + 72))
          {
            v47 = *(v41 + 64);
            if (v47)
            {
              v48 = v41;
              _Block_release(v47);
              v41 = v48;
            }
          }

          free(v41);
        }
      }
    }
  }

  if (v19)
  {
    return;
  }

  v49 = *(v3 + 40);
  if (v49 != &nw_protocol_ref_counted_handle)
  {
    if (v49 != &nw_protocol_ref_counted_additional_handle)
    {
      return;
    }

LABEL_89:
    v3 = *(v3 + 64);
    if (!v3)
    {
      return;
    }
  }

LABEL_90:
  v50 = *(v3 + 88);
  if (v50)
  {
    v51 = v50 - 1;
    *(v3 + 88) = v51;
    if (!v51)
    {
      v52 = *(v3 + 64);
      if (v52)
      {
        *(v3 + 64) = 0;
        v52[2](v52);
        _Block_release(v52);
      }

      if (*(v3 + 72))
      {
        v53 = *(v3 + 64);
        if (v53)
        {
          _Block_release(v53);
        }
      }

      goto LABEL_105;
    }
  }
}

void nw_flow_replay_notify(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v122 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *(a1 + 40);
    v9 = *(v8 + 160);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = v11[29];

      if (v12 != 2)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (v12 > 5)
          {
            v15 = "unknown-mode";
          }

          else
          {
            v15 = off_1E6A31018[v12];
          }

          *buf = 136446722;
          v107 = "nw_flow_replay_notify";
          v108 = 2082;
          v109 = v15;
          v110 = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }

        goto LABEL_24;
      }

      if (a3 != 26)
      {
        if (a3 == 30)
        {
          node = nw_hash_table_get_node(*(v8 + 288), a2, 0);
          if (node)
          {
            nw_hash_table_remove_node(*(v8 + 288), node);
          }

          if (*(v8 + 128) == a2)
          {
            nw_protocol_set_output_handler(v8 + 96, 0);
          }
        }

        else if (a3 == 27)
        {
          v13 = nw_hash_table_get_node(*(v8 + 288), a2, 0);
          if (v13)
          {
            *(v13 + 32) = 0;
          }
        }

        else
        {
          nw_protocol_common_notify(a1, a2, a3);
        }

        goto LABEL_24;
      }

      v17 = *(v8 + 288);
      if (!v17 || (v18 = nw_hash_table_get_node(v17, a4, 0)) == 0)
      {
LABEL_24:

        return;
      }

      v19 = *(v18 + 32);
      nw_hash_table_remove_node(*(v8 + 288), v18);
      v105 = OS_LOG_TYPE_DEFAULT;
      v20 = nw_hash_table_add_object(*(v8 + 288), *(v8 + 128), &v105);
      if (v105)
      {
        *nw_hash_node_get_extra(v20) = v19;
        goto LABEL_24;
      }

      v21 = v11;
      v22 = (v21[71] & 0x40) == 0;

      if (!v22)
      {
        goto LABEL_24;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v24 = v21;

      v25 = v24;
      v26 = (v21[71] & 1) == 0;
      v102 = v25;

      if (v26)
      {
        v27 = "";
      }

      else
      {
        v27 = "dry-run ";
      }

      v28 = nw_endpoint_handler_copy_endpoint(v102);
      v29 = v28;
      if (v28)
      {
        logging_description = _nw_endpoint_get_logging_description(v28);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v31 = v102;
      v32 = v31;
      v33 = v31[30];
      if (v33 > 5)
      {
        v34 = "unknown-state";
      }

      else
      {
        v34 = off_1E6A31048[v33];
      }

      v35 = v32;
      v36 = v35;
      v37 = v11[29];
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = "proxy";
          goto LABEL_52;
        }

        if (v37 != 4)
        {
          if (v37 == 5)
          {
            v38 = "transform";
            goto LABEL_52;
          }

          goto LABEL_49;
        }

        v38 = "fallback";
      }

      else
      {
        if (!v37)
        {
          v38 = "path";
          goto LABEL_52;
        }

        if (v37 != 1)
        {
          if (v37 == 2)
          {
            v38 = nw_endpoint_flow_mode_string(v35[33]);
            goto LABEL_52;
          }

LABEL_49:
          v38 = "unknown-mode";
          goto LABEL_52;
        }

        v38 = "resolver";
      }

LABEL_52:

      v39 = v36;
      os_unfair_lock_lock(v39 + 28);
      v40 = v39[8];
      os_unfair_lock_unlock(v39 + 28);

      *buf = 136447746;
      v107 = "nw_flow_replay_notify";
      v108 = 2082;
      v109 = (v24 + 46);
      v110 = 2082;
      v111 = v27;
      v112 = 2082;
      v113 = logging_description;
      v114 = 2082;
      v115 = v34;
      v116 = 2082;
      v117 = v38;
      v118 = 2114;
      v119 = v40;
      v41 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v103 = 0;
      if (__nwlog_fault(v41, &type, &v103))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v42 = gconnectionLogObj;
          v43 = type;
          if (os_log_type_enabled(v42, type))
          {
            id_string = nw_endpoint_handler_get_id_string(v39);
            v45 = nw_endpoint_handler_dry_run_string(v39);
            log = v42;
            v46 = nw_endpoint_handler_copy_endpoint(v39);
            v93 = v41;
            v47 = nw_endpoint_get_logging_description(v46);
            v48 = nw_endpoint_handler_state_string(v39);
            v49 = nw_endpoint_handler_mode_string(v39);
            v50 = nw_endpoint_handler_copy_current_path(v39);
            *buf = 136447746;
            v107 = "nw_flow_replay_notify";
            v108 = 2082;
            v109 = id_string;
            v110 = 2082;
            v111 = v45;
            v112 = 2082;
            v113 = v47;
            v114 = 2082;
            v115 = v48;
            v116 = 2082;
            v117 = v49;
            v118 = 2114;
            v119 = v50;
            v42 = log;
            _os_log_impl(&dword_181A37000, log, v43, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to replace the output handler in candidates", buf, 0x48u);

            v41 = v93;
          }
        }

        else if (v103 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v52 = backtrace_string;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v54 = type;
            if (os_log_type_enabled(v53, type))
            {
              v55 = nw_endpoint_handler_get_id_string(v39);
              loga = v53;
              v101 = nw_endpoint_handler_dry_run_string(v39);
              v56 = nw_endpoint_handler_copy_endpoint(v39);
              v94 = v41;
              v57 = nw_endpoint_get_logging_description(v56);
              v58 = nw_endpoint_handler_state_string(v39);
              v59 = nw_endpoint_handler_mode_string(v39);
              v60 = nw_endpoint_handler_copy_current_path(v39);
              *buf = 136448002;
              v107 = "nw_flow_replay_notify";
              v108 = 2082;
              v109 = v55;
              v110 = 2082;
              v111 = v101;
              v112 = 2082;
              v113 = v57;
              v114 = 2082;
              v115 = v58;
              v116 = 2082;
              v117 = v59;
              v118 = 2114;
              v119 = v60;
              v120 = 2082;
              v121 = v52;
              v53 = loga;
              _os_log_impl(&dword_181A37000, loga, v54, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to replace the output handler in candidates, dumping backtrace:%{public}s", buf, 0x52u);

              v41 = v94;
            }

            free(v52);
            goto LABEL_76;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v42 = gconnectionLogObj;
          v69 = type;
          if (os_log_type_enabled(v42, type))
          {
            v70 = nw_endpoint_handler_get_id_string(v39);
            v71 = nw_endpoint_handler_dry_run_string(v39);
            logc = v42;
            v72 = nw_endpoint_handler_copy_endpoint(v39);
            v96 = v41;
            v73 = nw_endpoint_get_logging_description(v72);
            v74 = nw_endpoint_handler_state_string(v39);
            v75 = nw_endpoint_handler_mode_string(v39);
            v76 = nw_endpoint_handler_copy_current_path(v39);
            *buf = 136447746;
            v107 = "nw_flow_replay_notify";
            v108 = 2082;
            v109 = v70;
            v110 = 2082;
            v111 = v71;
            v112 = 2082;
            v113 = v73;
            v114 = 2082;
            v115 = v74;
            v116 = 2082;
            v117 = v75;
            v118 = 2114;
            v119 = v76;
            v42 = logc;
            _os_log_impl(&dword_181A37000, logc, v69, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to replace the output handler in candidates, no backtrace", buf, 0x48u);

            v41 = v96;
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v42 = gconnectionLogObj;
          v61 = type;
          if (os_log_type_enabled(v42, type))
          {
            v62 = nw_endpoint_handler_get_id_string(v39);
            v63 = nw_endpoint_handler_dry_run_string(v39);
            logb = v42;
            v64 = nw_endpoint_handler_copy_endpoint(v39);
            v95 = v41;
            v65 = nw_endpoint_get_logging_description(v64);
            v66 = nw_endpoint_handler_state_string(v39);
            v67 = nw_endpoint_handler_mode_string(v39);
            v68 = nw_endpoint_handler_copy_current_path(v39);
            *buf = 136447746;
            v107 = "nw_flow_replay_notify";
            v108 = 2082;
            v109 = v62;
            v110 = 2082;
            v111 = v63;
            v112 = 2082;
            v113 = v65;
            v114 = 2082;
            v115 = v66;
            v116 = 2082;
            v117 = v67;
            v118 = 2114;
            v119 = v68;
            v42 = logb;
            _os_log_impl(&dword_181A37000, logb, v61, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to replace the output handler in candidates, backtrace limit exceeded", buf, 0x48u);

            v41 = v95;
          }
        }
      }

LABEL_76:
      if (v41)
      {
        free(v41);
      }

      goto LABEL_24;
    }

    v81 = __nwlog_obj();
    *buf = 136446210;
    v107 = "nw_flow_replay_notify";
    v82 = _os_log_send_and_compose_impl();

    v105 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v82, &v105, &type))
    {
      if (v105 == OS_LOG_TYPE_FAULT)
      {
        v83 = __nwlog_obj();
        v84 = v105;
        if (os_log_type_enabled(v83, v105))
        {
          *buf = 136446210;
          v107 = "nw_flow_replay_notify";
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v88 = __nw_create_backtrace_string();
        v83 = __nwlog_obj();
        v89 = v105;
        v90 = os_log_type_enabled(v83, v105);
        if (v88)
        {
          if (v90)
          {
            *buf = 136446466;
            v107 = "nw_flow_replay_notify";
            v108 = 2082;
            v109 = v88;
            _os_log_impl(&dword_181A37000, v83, v89, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v88);
          goto LABEL_112;
        }

        if (v90)
        {
          *buf = 136446210;
          v107 = "nw_flow_replay_notify";
          _os_log_impl(&dword_181A37000, v83, v89, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v83 = __nwlog_obj();
        v92 = v105;
        if (os_log_type_enabled(v83, v105))
        {
          *buf = 136446210;
          v107 = "nw_flow_replay_notify";
          _os_log_impl(&dword_181A37000, v83, v92, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_112:
    if (v82)
    {
      free(v82);
    }

    goto LABEL_24;
  }

  v77 = __nwlog_obj();
  *buf = 136446210;
  v107 = "nw_flow_replay_notify";
  v78 = _os_log_send_and_compose_impl();

  v105 = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v78, &v105, &type))
  {
    if (v105 == OS_LOG_TYPE_FAULT)
    {
      v79 = __nwlog_obj();
      v80 = v105;
      if (os_log_type_enabled(v79, v105))
      {
        *buf = 136446210;
        v107 = "nw_flow_replay_notify";
        _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v85 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v86 = v105;
      v87 = os_log_type_enabled(v79, v105);
      if (v85)
      {
        if (v87)
        {
          *buf = 136446466;
          v107 = "nw_flow_replay_notify";
          v108 = 2082;
          v109 = v85;
          _os_log_impl(&dword_181A37000, v79, v86, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v85);
        goto LABEL_107;
      }

      if (v87)
      {
        *buf = 136446210;
        v107 = "nw_flow_replay_notify";
        _os_log_impl(&dword_181A37000, v79, v86, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v79 = __nwlog_obj();
      v91 = v105;
      if (os_log_type_enabled(v79, v105))
      {
        *buf = 136446210;
        v107 = "nw_flow_replay_notify";
        _os_log_impl(&dword_181A37000, v79, v91, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_107:
  if (v78)
  {
    free(v78);
  }
}

uint64_t nw_protocol_http3_listen_protocol_new_flow(nw_listen_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v121 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
    v43 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v107) = 0;
    if (!__nwlog_fault(v43, type, &v107))
    {
      goto LABEL_130;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        v46 = "%{public}s called with null listener";
LABEL_129:
        _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      }

LABEL_130:
      if (v43)
      {
        free(v43);
      }

      return 0;
    }

    if (v107 != 1)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        v46 = "%{public}s called with null listener, backtrace limit exceeded";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = type[0];
    v60 = os_log_type_enabled(v44, type[0]);
    if (!backtrace_string)
    {
      if (v60)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        v46 = "%{public}s called with null listener, no backtrace";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (v60)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v61 = "%{public}s called with null listener, dumping backtrace:%{public}s";
LABEL_94:
      _os_log_impl(&dword_181A37000, v44, v45, v61, buf, 0x16u);
    }

LABEL_95:
    free(backtrace_string);
    goto LABEL_130;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
    v43 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v107) = 0;
    if (!__nwlog_fault(v43, type, &v107))
    {
      goto LABEL_130;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        v46 = "%{public}s called with null http3";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (v107 != 1)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        v46 = "%{public}s called with null http3, backtrace limit exceeded";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = type[0];
    v62 = os_log_type_enabled(v44, type[0]);
    if (!backtrace_string)
    {
      if (v62)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        v46 = "%{public}s called with null http3, no backtrace";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (v62)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v61 = "%{public}s called with null http3, dumping backtrace:%{public}s";
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
  {
    v47 = __nwlog_obj();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      v48 = *(handle + 326);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = handle + 1313;
      *&buf[22] = 2080;
      v116 = " ";
      LOWORD(v117) = 1024;
      *(&v117 + 2) = v48;
      HIWORD(v117) = 2112;
      v118 = a2;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> creating new inbound flow from %@", buf, 0x30u);
    }
  }

  v107 = 0;
  v108 = &v107;
  v109 = 0x2000000000;
  v110 = 0;
  v7 = *(handle + 4);
  if (v7)
  {
    v8 = v7[3];
    if (v8)
    {
      v9 = *(v8 + 224);
      if (v9)
      {
        v10 = v9(*(handle + 4), 255, 0);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZL42nw_protocol_http3_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke;
        aBlock[3] = &unk_1E6A39430;
        aBlock[4] = &v107;
        if (v10)
        {
          v11 = v10;
          _nw_array_apply(v10, aBlock);
          os_release(v11);
        }
      }
    }
  }

  v12 = v108[3];
  if (!v12)
  {
    goto LABEL_32;
  }

  has_datagram_variant_flow_id = nw_quic_stream_get_has_datagram_variant_flow_id(v12);
  v14 = v108[3];
  if (has_datagram_variant_flow_id)
  {
    datagram_variant_flow_id = nw_quic_stream_get_datagram_variant_flow_id(v14);
    if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
    {
      v69 = __nwlog_obj();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        v70 = *(handle + 326);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = handle + 1313;
        *&buf[22] = 2080;
        v116 = " ";
        LOWORD(v117) = 1024;
        *(&v117 + 2) = v70;
        HIWORD(v117) = 2048;
        v118 = datagram_variant_flow_id;
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received datagram flow %llu", buf, 0x30u);
      }
    }

    v16 = *(handle + 111);
    if (!v16)
    {
LABEL_15:
      if ((handle[1399] & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v18 = *(handle + 326);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
          *&buf[12] = 2082;
          *&buf[14] = handle + 1313;
          *&buf[22] = 2080;
          v116 = " ";
          LOWORD(v117) = 1024;
          *(&v117 + 2) = v18;
          HIWORD(v117) = 2048;
          v118 = datagram_variant_flow_id;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Rejecting datagram flow ID %llu", buf, 0x30u);
          v19 = 0;
LABEL_64:
          _Block_object_dispose(&v107, 8);
          return v19;
        }
      }

LABEL_32:
      v19 = 0;
      goto LABEL_64;
    }

    while (1)
    {
      v20 = *(v16 + 536);
      if ((*(v16 + 732) & 0x80) != 0 && datagram_variant_flow_id == *(v16 + 248))
      {
        break;
      }

      v16 = *(v16 + 536);
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    if ((*(v16 + 732) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v90 = *(*(v16 + 344) + 1304);
        v91 = *(v16 + 240);
        *buf = 136447490;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v16 + 632;
        *&buf[22] = 2080;
        v116 = " ";
        LOWORD(v117) = 1024;
        *(&v117 + 2) = v90;
        HIWORD(v117) = 2048;
        v118 = v91;
        v119 = 2048;
        v120 = datagram_variant_flow_id;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Accepting datagram flow ID %llu", buf, 0x3Au);
      }
    }

    *(v16 + 732) = *(v16 + 732) & 0xFF3F | 0x40;
    if (*(v16 + 380) == 4)
    {
      *(v16 + 380) = 8;
    }

    nw_protocol_set_input_handler(v16 + 64, *(v16 + 48));
    *(v16 + 64) = *v16;
    if (v7)
    {
      v21 = v7[3];
      if (v21)
      {
        v22 = *v21;
        if (v22)
        {
          v22(v7, v16 + 64);
          nw_protocol_set_output_handler(v16 + 64, v7);
          goto LABEL_29;
        }
      }

      __nwlog_obj();
      v76 = v7[2];
      if (!v76)
      {
        v76 = "invalid";
      }
    }

    else
    {
      __nwlog_obj();
      v76 = "invalid";
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = v76;
    v81 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (__nwlog_fault(v81, type, &v105))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type[0];
        if (!os_log_type_enabled(v82, type[0]))
        {
          goto LABEL_170;
        }

        v84 = "invalid";
        if (v7 && v7[2])
        {
          v84 = v7[2];
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v84;
        v85 = "%{public}s protocol %{public}s has invalid add_input_handler callback";
LABEL_169:
        _os_log_impl(&dword_181A37000, v82, v83, v85, buf, 0x16u);
        goto LABEL_170;
      }

      if (v105 != 1)
      {
        v82 = __nwlog_obj();
        v83 = type[0];
        if (!os_log_type_enabled(v82, type[0]))
        {
          goto LABEL_170;
        }

        v92 = "invalid";
        if (v7 && v7[2])
        {
          v92 = v7[2];
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v92;
        v85 = "%{public}s protocol %{public}s has invalid add_input_handler callback, backtrace limit exceeded";
        goto LABEL_169;
      }

      v86 = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = type[0];
      v87 = os_log_type_enabled(v82, type[0]);
      if (!v86)
      {
        if (!v87)
        {
          goto LABEL_170;
        }

        v93 = "invalid";
        if (v7 && v7[2])
        {
          v93 = v7[2];
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v93;
        v85 = "%{public}s protocol %{public}s has invalid add_input_handler callback, no backtrace";
        goto LABEL_169;
      }

      if (v87)
      {
        v88 = "invalid";
        if (v7 && v7[2])
        {
          v88 = v7[2];
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v88;
        *&buf[22] = 2082;
        v116 = v86;
        _os_log_impl(&dword_181A37000, v82, v83, "%{public}s protocol %{public}s has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v86);
    }

LABEL_170:
    if (v81)
    {
      free(v81);
    }

    nw_protocol_set_output_handler(v16 + 64, v7);
    if (!v7)
    {
      __nwlog_obj();
      v77 = "invalid";
      goto LABEL_174;
    }

LABEL_29:
    v23 = v7[3];
    if (v23)
    {
      v24 = *(v23 + 24);
      if (v24)
      {
        v24(v7, v16 + 64);
LABEL_63:
        v19 = 1;
        goto LABEL_64;
      }
    }

    __nwlog_obj();
    v77 = v7[2];
    if (!v77)
    {
      v77 = "invalid";
    }

LABEL_174:
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = v77;
    v94 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v94, type, &v105))
    {
      goto LABEL_200;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = type[0];
      if (!os_log_type_enabled(v95, type[0]))
      {
        goto LABEL_200;
      }

      v97 = "invalid";
      if (v7 && v7[2])
      {
        v97 = v7[2];
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = v97;
      v98 = "%{public}s protocol %{public}s has invalid connect callback";
    }

    else if (v105 == 1)
    {
      v99 = __nw_create_backtrace_string();
      v95 = __nwlog_obj();
      v96 = type[0];
      v100 = os_log_type_enabled(v95, type[0]);
      if (v99)
      {
        if (v100)
        {
          v101 = "invalid";
          if (v7 && v7[2])
          {
            v101 = v7[2];
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
          *&buf[12] = 2082;
          *&buf[14] = v101;
          *&buf[22] = 2082;
          v116 = v99;
          _os_log_impl(&dword_181A37000, v95, v96, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v99);
        goto LABEL_200;
      }

      if (!v100)
      {
LABEL_200:
        if (v94)
        {
          free(v94);
        }

        goto LABEL_63;
      }

      v103 = "invalid";
      if (v7 && v7[2])
      {
        v103 = v7[2];
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = v103;
      v98 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
    }

    else
    {
      v95 = __nwlog_obj();
      v96 = type[0];
      if (!os_log_type_enabled(v95, type[0]))
      {
        goto LABEL_200;
      }

      v102 = "invalid";
      if (v7 && v7[2])
      {
        v102 = v7[2];
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = v102;
      v98 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v95, v96, v98, buf, 0x16u);
    goto LABEL_200;
  }

  id = nw_quic_stream_get_id(v14);
  if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
  {
    v71 = __nwlog_obj();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      v72 = *(handle + 326);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = handle + 1313;
      *&buf[22] = 2080;
      v116 = " ";
      LOWORD(v117) = 1024;
      *(&v117 + 2) = v72;
      HIWORD(v117) = 2048;
      v118 = id;
      _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Creating untyped stream for %llu", buf, 0x30u);
    }
  }

  v26 = malloc_type_calloc(1uLL, 0xC0uLL, 0x32DE5D2EuLL);
  v27 = v26;
  if (v26)
  {
    v26[10] = 0u;
    v26[11] = 0u;
    v26[8] = 0u;
    v26[9] = 0u;
    v26[6] = 0u;
    v26[7] = 0u;
    v26[4] = 0u;
    v26[5] = 0u;
    v26[2] = 0u;
    v26[3] = 0u;
    *v26 = 0u;
    v26[1] = 0u;
LABEL_40:
    if (gLogDatapath == 1)
    {
      v68 = __nwlog_obj();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http3_untyped_stream_create";
        *&buf[12] = 2048;
        *&buf[14] = v27;
        *&buf[22] = 2048;
        v116 = id;
        _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s created untyped stream %p for stream id %llu", buf, 0x20u);
      }
    }

    *type = 0;
    v112 = type;
    v113 = 0x2000000000;
    v114 = v27;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL30nw_http3_untyped_stream_createP17nw_protocol_http3P11nw_endpointP13nw_parametersy_block_invoke;
    v116 = &unk_1E6A39480;
    v117 = type;
    *(v27 + 168) = _Block_copy(buf);
    _Block_object_dispose(type, 8);
    *(v27 + 16) = &g_http3_untyped_stream_protocol_identifier;
    if (nw_protocol_http3_untyped_stream_get_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http3_untyped_stream_get_callbacks(void)::onceToken, &__block_literal_global_187);
    }

    *(v27 + 24) = &nw_protocol_http3_untyped_stream_get_callbacks(void)::protocol_callbacks;
    *(v27 + 40) = v27;
    *(v27 + 104) = handle;
    if (a2)
    {
      a2 = os_retain(a2);
    }

    v31 = *(v27 + 144);
    if (v31)
    {
      v32 = *(v27 + 136);
      if (v32)
      {
        os_release(v32);
        v31 = *(v27 + 144);
      }
    }

    *(v27 + 136) = a2;
    *(v27 + 144) = v31 | 1;
    if (a3)
    {
      a3 = os_retain(a3);
    }

    v33 = *(v27 + 128);
    if (v33)
    {
      v34 = *(v27 + 120);
      if (v34)
      {
        os_release(v34);
        v33 = *(v27 + 128);
      }
    }

    *(v27 + 120) = a3;
    *(v27 + 128) = v33 | 1;
    *(v27 + 80) = id;
    *(v27 + 88) = -1;
    *(v27 + 96) = -1;
    if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    singleton = _nw_protocol_metadata_create_singleton();
    *(v27 + 112) = singleton;
    nw_http_transaction_metadata_set_stream_id(singleton, id);
    *(v27 + 64) = 0;
    *(v27 + 72) = v27 + 64;
    *(v27 + 176) = 0;
    *(v27 + 184) = 0;
    *v27 = *handle;
    nw_protocol_set_input_handler(v27, handle);
    v36 = *(handle + 123);
    *(v27 + 152) = v36;
    if (v36)
    {
      v37 = (v36 + 160);
    }

    else
    {
      v37 = handle + 992;
    }

    *v37 = v27 + 152;
    *(handle + 123) = v27;
    *(v27 + 160) = handle + 984;
    protocol_handler = a1->protocol_handler;
    if (protocol_handler)
    {
      callbacks = protocol_handler->callbacks;
      if (callbacks)
      {
        add_input_handler = callbacks->add_input_handler;
        if (add_input_handler)
        {
          add_input_handler(protocol_handler, v27);
LABEL_62:
          v41 = *(v27 + 168);
          v42 = *(handle + 159);
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 0x40000000;
          v104[2] = ___ZL42nw_protocol_http3_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke_182;
          v104[3] = &unk_1E6A39458;
          v104[4] = v41;
          nw_queue_context_async(v42, v104);
          goto LABEL_63;
        }
      }
    }

    __nwlog_obj();
    v49 = a1->protocol_handler;
    v50 = "invalid";
    if (v49)
    {
      identifier = v49->identifier;
      if (identifier)
      {
        v50 = identifier;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = v50;
    v52 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (__nwlog_fault(v52, type, &v105))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_139;
        }

        v55 = a1->protocol_handler;
        v56 = "invalid";
        if (v55)
        {
          v57 = v55->identifier;
          if (v57)
          {
            v56 = v57;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v56;
        v58 = "%{public}s protocol %{public}s has invalid add_input_handler callback";
        goto LABEL_138;
      }

      if (v105 != 1)
      {
        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_139;
        }

        v73 = a1->protocol_handler;
        v74 = "invalid";
        if (v73)
        {
          v75 = v73->identifier;
          if (v75)
          {
            v74 = v75;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v74;
        v58 = "%{public}s protocol %{public}s has invalid add_input_handler callback, backtrace limit exceeded";
        goto LABEL_138;
      }

      v63 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = type[0];
      v64 = os_log_type_enabled(v53, type[0]);
      if (v63)
      {
        if (v64)
        {
          v65 = a1->protocol_handler;
          v66 = "invalid";
          if (v65)
          {
            v67 = v65->identifier;
            if (v67)
            {
              v66 = v67;
            }
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
          *&buf[12] = 2082;
          *&buf[14] = v66;
          *&buf[22] = 2082;
          v116 = v63;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s protocol %{public}s has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v63);
        goto LABEL_139;
      }

      if (v64)
      {
        v78 = a1->protocol_handler;
        v79 = "invalid";
        if (v78)
        {
          v80 = v78->identifier;
          if (v80)
          {
            v79 = v80;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v79;
        v58 = "%{public}s protocol %{public}s has invalid add_input_handler callback, no backtrace";
LABEL_138:
        _os_log_impl(&dword_181A37000, v53, v54, v58, buf, 0x16u);
      }
    }

LABEL_139:
    if (v52)
    {
      free(v52);
    }

    goto LABEL_62;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_http3_untyped_stream_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v116 = 192;
  v28 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v28);
  if (!result)
  {
    free(v28);
    MEMORY[0x80] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x78] = 0;
    MEMORY[0x88] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_http3_untyped_stream_create";
    v30 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v30);
    if (!result)
    {
      free(v30);
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZL42nw_protocol_http3_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (nw_protocol_metadata_is_quic_stream(a3))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return 1;
}

uint64_t nw_quic_stream_get_has_datagram_variant_flow_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    has_datagram_variant_flow_id = _nw_quic_stream_get_has_datagram_variant_flow_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_has_datagram_variant_flow_id";
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
        v14 = "nw_quic_stream_get_has_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_get_has_datagram_variant_flow_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_has_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_has_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

  has_datagram_variant_flow_id = 0;
LABEL_3:

  return has_datagram_variant_flow_id;
}

uint64_t _nw_quic_stream_get_has_datagram_variant_flow_id(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v2 = sub_181A93260(a1);
  if (v2 && (v3 = v2, swift_beginAccess(), v4 = *(v3 + 64), , , v4))
  {
    v5 = *(v4 + 32);

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void nw_protocol_http3_untyped_stream_input_available(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_available";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_untyped_stream_input_available";
      v10 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_protocol_http3_untyped_stream_input_available";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v7)
        {
          return;
        }

LABEL_38:
        free(v7);
        return;
      }

      if (!v15)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_untyped_stream_input_available";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_untyped_stream_input_available";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (handle)
  {
    if (gLogDatapath == 1)
    {
      v11 = handle;
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      handle = v11;
      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_protocol_http3_untyped_stream_input_available";
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
        handle = v11;
      }
    }

    if (BYTE4(handle[2].output_handler_context))
    {
      nw_protocol_http3_untyped_stream_get_input_frames(handle, a2, a3, a4, a5, a6);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http3_untyped_stream_input_available";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v7, &type, &v18))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_available";
    v10 = "%{public}s called with null http3_stream";
    goto LABEL_36;
  }

  if (v18 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_available";
    v10 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    goto LABEL_36;
  }

  v16 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_available";
    v10 = "%{public}s called with null http3_stream, no backtrace";
    goto LABEL_36;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_http3_untyped_stream_input_available";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v7)
  {
    goto LABEL_38;
  }
}

void nw_protocol_http3_untyped_stream_input_finished(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_finished";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_untyped_stream_input_finished";
      v10 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_protocol_http3_untyped_stream_input_finished";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v7)
        {
          return;
        }

LABEL_38:
        free(v7);
        return;
      }

      if (!v15)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_untyped_stream_input_finished";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_untyped_stream_input_finished";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (handle)
  {
    if (gLogDatapath == 1)
    {
      v11 = handle;
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      handle = v11;
      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_protocol_http3_untyped_stream_input_finished";
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
        handle = v11;
      }
    }

    if (BYTE4(handle[2].output_handler_context))
    {
      BYTE4(handle[2].output_handler_context) |= 4u;
      nw_protocol_http3_untyped_stream_get_input_frames(handle, a2, a3, a4, a5, a6);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http3_untyped_stream_input_finished";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v7, &type, &v18))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_finished";
    v10 = "%{public}s called with null http3_stream";
    goto LABEL_36;
  }

  if (v18 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_finished";
    v10 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    goto LABEL_36;
  }

  v16 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_untyped_stream_input_finished";
    v10 = "%{public}s called with null http3_stream, no backtrace";
    goto LABEL_36;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_http3_untyped_stream_input_finished";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v7)
  {
    goto LABEL_38;
  }
}

uint64_t ___ZL30nw_http3_untyped_stream_createP17nw_protocol_http3P11nw_endpointP13nw_parametersy_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t nw_protocol_http3_untyped_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
    v43 = _os_log_send_and_compose_impl();
    v75[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v43, v75, &type))
    {
      goto LABEL_102;
    }

    if (v75[0] == 17)
    {
      v44 = __nwlog_obj();
      v45 = v75[0];
      if (!os_log_type_enabled(v44, v75[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      v46 = "%{public}s called with null protocol";
      goto LABEL_101;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v44 = __nwlog_obj();
      v45 = v75[0];
      if (!os_log_type_enabled(v44, v75[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      v46 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = v75[0];
    v49 = os_log_type_enabled(v44, v75[0]);
    if (!backtrace_string)
    {
      if (!v49)
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      v46 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_101;
    }

    if (v49)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_102:
    if (!v43)
    {
      return 0;
    }

LABEL_103:
    v53 = v43;
LABEL_104:
    free(v53);
    return 0;
  }

  v6 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
    v43 = _os_log_send_and_compose_impl();
    v75[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v43, v75, &type))
    {
      goto LABEL_102;
    }

    if (v75[0] == 17)
    {
      v44 = __nwlog_obj();
      v45 = v75[0];
      if (!os_log_type_enabled(v44, v75[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      v46 = "%{public}s called with null http3_stream";
      goto LABEL_101;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v44 = __nwlog_obj();
      v45 = v75[0];
      if (!os_log_type_enabled(v44, v75[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      v46 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_101;
    }

    v50 = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = v75[0];
    v51 = os_log_type_enabled(v44, v75[0]);
    if (v50)
    {
      if (v51)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
      if (!v43)
      {
        return 0;
      }

      goto LABEL_103;
    }

    if (v51)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      v46 = "%{public}s called with null http3_stream, no backtrace";
LABEL_101:
      _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      goto LABEL_102;
    }

    goto LABEL_102;
  }

  if (gLogDatapath == 1)
  {
    v47 = __nwlog_obj();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_untyped_stream_get_input_frames";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
    }
  }

  v8 = handle[188];
  if ((v8 & 3) != 1)
  {
    return 0;
  }

  handle[188] = v8 | 2;
  output_handler = v6->output_handler;
  v10 = handle + 64;
  if (*(handle + 11) == -1)
  {
    input_frames_quiet = nw_protocol_get_input_frames_quiet(v6->output_handler, v6, 1, 0xFFFFLL, 0xFFFFFFFFLL, (handle + 64));
    if (!input_frames_quiet)
    {
      v20 = handle[188];
      handle[188] = v20 & 0xFD;
LABEL_31:
      if ((v20 & 4) != 0 && *(handle + 11) == -1)
      {
        v28 = v6;
LABEL_65:
        nw_protocol_disconnect(v28, v6);
        return 0;
      }

      return 0;
    }

    v14 = input_frames_quiet;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v72 = __Block_byref_object_copy__63268;
    v73 = __Block_byref_object_dispose__63269;
    v74[0] = 0;
    v74[1] = v74;
    *v75 = -1;
    type = OS_LOG_TYPE_DEFAULT;
    v12 = 0;
    if (nw_http_vle_decode_from_frames((handle + 176), v6, handle + 8, v75, &type, v74))
    {
      v15 = *v75;
      *(handle + 11) = *v75;
      v16 = *&buf[8];
      v17 = (*&buf[8] + 40);
      if ((handle[80] & 2) != 0 || v15 == 65)
      {
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 0x40000000;
        v66 = ___ZL49nw_protocol_http3_untyped_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v67 = &unk_1E6A394F0;
        v68 = buf;
        v21 = *v17;
        do
        {
          if (!v21)
          {
            break;
          }

          v22 = *(v21 + 32);
          v23 = (v66)(v65);
          v21 = v22;
        }

        while ((v23 & 1) != 0);
      }

      else
      {
        if (*v10)
        {
          v18 = *(*&buf[8] + 48);
          *v18 = *v10;
          *(*(handle + 8) + 40) = v18;
          *(v16 + 48) = *(handle + 9);
          *(handle + 8) = 0;
          *(handle + 9) = v10;
        }

        if (*v17)
        {
          v19 = *(handle + 9);
          *v19 = *v17;
          *(*(v16 + 40) + 40) = v19;
          *(handle + 9) = *(v16 + 48);
          *(v16 + 40) = 0;
          *(v16 + 48) = v17;
        }
      }

      v12 = v14;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    frame_count = nw_frame_array_get_frame_count(handle + 8, 1, 0);
    v12 = nw_protocol_get_input_frames_quiet(output_handler, v6, 1, 0xFFFFLL, 0xFFFFFFFFLL, (handle + 64)) + frame_count;
  }

  v20 = handle[188];
  handle[188] = v20 & 0xFD;
  if (!v12)
  {
    goto LABEL_31;
  }

  if ((handle[80] & 2) != 0)
  {
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v29 = *(handle + 13);
    v30 = *(handle + 11);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        if (!v29[137])
        {
          v31 = nw_http3_uni_stream_setup_inbound(handle);
          v29[137] = v31;
          nw_http3_decoder_stream_process_input(v29);
          if ((v20 & 4) == 0)
          {
            return 0;
          }

          goto LABEL_69;
        }

        goto LABEL_59;
      }

      if (v30 == 84)
      {
LABEL_43:
        nw_http3_untyped_stream_configure_for_webtransport(handle);
        return 0;
      }
    }

    else
    {
      if (!v30)
      {
        if (!v29[133])
        {
          v31 = nw_http3_uni_stream_setup_inbound(handle);
          v29[133] = v31;
          v29[25] = v31;
          nw_http3_control_stream_process_input(v29);
          if ((v20 & 4) == 0)
          {
            return 0;
          }

          goto LABEL_69;
        }

LABEL_59:
        nw_http3_fail_all_streams(*(handle + 13), 259);
        return 0;
      }

      if (v30 == 2)
      {
        if (!v29[135])
        {
          v31 = nw_http3_uni_stream_setup_inbound(handle);
          v29[135] = v31;
          nw_http3_encoder_stream_process_input(v29);
          if ((v20 & 4) == 0)
          {
            return 0;
          }

LABEL_69:
          input_handler = nw_protocol_get_input_handler(v31);
          nw_protocol_input_finished(input_handler, v31);
          return 0;
        }

        goto LABEL_59;
      }
    }

    v32 = *(handle + 4);
    if (v32)
    {
      v33 = *(v32 + 24);
      if (v33)
      {
        v34 = *(v33 + 224);
        if (v34)
        {
          v35 = v34();
          *v75 = 0;
          *&v75[8] = v75;
          *&v75[16] = 0x2000000000;
          v76 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL33nw_http3_uni_stream_type_receivedP32nw_protocol_http3_untyped_stream_block_invoke;
          v72 = &unk_1E6A39518;
          v73 = v75;
          if (v35)
          {
            v36 = v35;
            _nw_array_apply(v35, buf);
            v37 = *(*&v75[8] + 24);
            if (v37)
            {
              nw_quic_stream_set_application_error(v37, 259);
            }

            os_release(v36);
          }

          _Block_object_dispose(v75, 8);
        }
      }
    }

    v38 = *(handle + 3);
    if (v38)
    {
      v39 = *(v38 + 32);
      if (v39)
      {
        v39(handle, v29);
        return 0;
      }
    }

    __nwlog_obj();
    v54 = *(handle + 2);
    if (!v54)
    {
      v54 = "invalid";
    }

    *v75 = 136446466;
    *&v75[4] = "nw_http3_uni_stream_type_received";
    *&v75[12] = 2082;
    *&v75[14] = v54;
    v55 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v69 = 0;
    if (!__nwlog_fault(v55, &type, &v69))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v56, type))
      {
        v58 = *(handle + 2);
        if (!v58)
        {
          v58 = "invalid";
        }

        *v75 = 136446466;
        *&v75[4] = "nw_http3_uni_stream_type_received";
        *&v75[12] = 2082;
        *&v75[14] = v58;
        v59 = "%{public}s protocol %{public}s has invalid disconnect callback";
LABEL_128:
        _os_log_impl(&dword_181A37000, v56, v57, v59, v75, 0x16u);
      }
    }

    else if (v69 == 1)
    {
      v60 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v61 = os_log_type_enabled(v56, type);
      if (v60)
      {
        if (v61)
        {
          v62 = *(handle + 2);
          if (!v62)
          {
            v62 = "invalid";
          }

          *v75 = 136446722;
          *&v75[4] = "nw_http3_uni_stream_type_received";
          *&v75[12] = 2082;
          *&v75[14] = v62;
          *&v75[22] = 2082;
          v76 = v60;
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", v75, 0x20u);
        }

        free(v60);
        goto LABEL_129;
      }

      if (v61)
      {
        v64 = *(handle + 2);
        if (!v64)
        {
          v64 = "invalid";
        }

        *v75 = 136446466;
        *&v75[4] = "nw_http3_uni_stream_type_received";
        *&v75[12] = 2082;
        *&v75[14] = v64;
        v59 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
        goto LABEL_128;
      }
    }

    else
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v56, type))
      {
        v63 = *(handle + 2);
        if (!v63)
        {
          v63 = "invalid";
        }

        *v75 = 136446466;
        *&v75[4] = "nw_http3_uni_stream_type_received";
        *&v75[12] = 2082;
        *&v75[14] = v63;
        v59 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
        goto LABEL_128;
      }
    }

LABEL_129:
    if (!v55)
    {
      return 0;
    }

    v53 = v55;
    goto LABEL_104;
  }

  if (gLogDatapath == 1)
  {
    v52 = __nwlog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_frame_type_received";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
    }
  }

  if (handle[188])
  {
    if (*(handle + 11) != 65)
    {
      v6 = *(handle + 13);
      identifier = v6[17].identifier;
      if (identifier)
      {
        if (*(&v6[21].default_input_handler + 5))
        {
          v6[20].identifier = handle;
          v6[15].default_input_handler = *(handle + 10);
          (**identifier->name)(identifier, *(handle + 17), *(handle + 15));
          v6[20].identifier = 0;
          return 0;
        }

        if ((HIBYTE(v6[21].default_input_handler) & 0x20) != 0)
        {
          goto LABEL_64;
        }

        v25 = __nwlog_obj();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        callbacks = v6[20].callbacks;
        *buf = 136446978;
        *&buf[4] = "nw_http3_stream_frame_type_received";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 1313;
        *&buf[22] = 2080;
        v72 = " ";
        LOWORD(v73) = 1024;
        *(&v73 + 2) = callbacks;
        v27 = "%{public}s %{public}s%s<i%u> Rejecting server initiated stream";
      }

      else
      {
        if ((HIBYTE(v6[21].default_input_handler) & 0x20) != 0)
        {
          goto LABEL_64;
        }

        v25 = __nwlog_obj();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        v40 = v6[20].callbacks;
        *buf = 136446978;
        *&buf[4] = "nw_http3_stream_frame_type_received";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 1313;
        *&buf[22] = 2080;
        v72 = " ";
        LOWORD(v73) = 1024;
        *(&v73 + 2) = v40;
        v27 = "%{public}s %{public}s%s<i%u> No listen handler found for inbound stream";
      }

      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x26u);
LABEL_64:
      v28 = handle;
      goto LABEL_65;
    }

    goto LABEL_43;
  }

  return 0;
}

void nw_protocol_http3_untyped_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_http3_untyped_stream_connected";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v21, &type, &v43))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v24 = "%{public}s called with null protocol";
      goto LABEL_71;
    }

    if (v43 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v24 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v34 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (!v34)
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v24 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_71;
    }

    if (v34)
    {
      *buf = 136446466;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v47 = 2082;
      v48 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_72:
    if (!v21)
    {
      return;
    }

    goto LABEL_73;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_http3_untyped_stream_connected";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v21, &type, &v43))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v24 = "%{public}s called with null http3_stream";
      goto LABEL_71;
    }

    if (v43 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v24 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_71;
    }

    v35 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v36 = os_log_type_enabled(v22, type);
    if (v35)
    {
      if (v36)
      {
        *buf = 136446466;
        v46 = "nw_protocol_http3_untyped_stream_connected";
        v47 = 2082;
        v48 = v35;
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v35);
      if (!v21)
      {
        return;
      }

LABEL_73:
      free(v21);
      return;
    }

    if (v36)
    {
      *buf = 136446210;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v24 = "%{public}s called with null http3_stream, no backtrace";
LABEL_71:
      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      goto LABEL_72;
    }

    goto LABEL_72;
  }

  if (gLogDatapath == 1)
  {
    v25 = a2;
    v26 = __nwlog_obj();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    a2 = v25;
    if (v27)
    {
      *buf = 136446466;
      v46 = "nw_protocol_http3_untyped_stream_connected";
      v47 = 2048;
      v48 = handle;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
      a2 = v25;
    }
  }

  if (handle->output_handler == a2)
  {
    BYTE4(handle[2].output_handler_context) |= 1u;
    default_input_handler = handle->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        connected = callbacks->connected;
        if (connected)
        {
          connected();
LABEL_9:
          nw_protocol_http3_untyped_stream_get_input_frames(handle, v6, v7, v8, v9, v10);
          return;
        }
      }
    }

    __nwlog_obj();
    v11 = handle->default_input_handler;
    v12 = "invalid";
    if (v11)
    {
      name = v11->identifier->name;
      if (name)
      {
        v12 = name;
      }
    }

    *buf = 136446466;
    v46 = "nw_protocol_http3_untyped_stream_connected";
    v47 = 2082;
    v48 = v12;
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v14, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_65;
        }

        v17 = handle->default_input_handler;
        v18 = "invalid";
        if (v17)
        {
          v19 = v17->identifier->name;
          if (v19)
          {
            v18 = v19;
          }
        }

        *buf = 136446466;
        v46 = "nw_protocol_http3_untyped_stream_connected";
        v47 = 2082;
        v48 = v18;
        v20 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_64;
      }

      if (v43 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_65;
        }

        v37 = handle->default_input_handler;
        v38 = "invalid";
        if (v37)
        {
          v39 = v37->identifier->name;
          if (v39)
          {
            v38 = v39;
          }
        }

        *buf = 136446466;
        v46 = "nw_protocol_http3_untyped_stream_connected";
        v47 = 2082;
        v48 = v38;
        v20 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_64;
      }

      v28 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v29 = os_log_type_enabled(v15, type);
      if (v28)
      {
        if (v29)
        {
          v30 = handle->default_input_handler;
          v31 = "invalid";
          if (v30)
          {
            v32 = v30->identifier->name;
            if (v32)
            {
              v31 = v32;
            }
          }

          *buf = 136446722;
          v46 = "nw_protocol_http3_untyped_stream_connected";
          v47 = 2082;
          v48 = v31;
          v49 = 2082;
          v50 = v28;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v28);
        goto LABEL_65;
      }

      if (v29)
      {
        v40 = handle->default_input_handler;
        v41 = "invalid";
        if (v40)
        {
          v42 = v40->identifier->name;
          if (v42)
          {
            v41 = v42;
          }
        }

        *buf = 136446466;
        v46 = "nw_protocol_http3_untyped_stream_connected";
        v47 = 2082;
        v48 = v41;
        v20 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_64:
        _os_log_impl(&dword_181A37000, v15, v16, v20, buf, 0x16u);
      }
    }

LABEL_65:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_9;
  }
}

uint64_t nw_protocol_get_input_frames_quiet(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    if (v7)
    {
      result = 0;
      if (a6)
      {
        v8 = a2;
        if (a2)
        {
          v9 = *(v7 + 80);
          if (v9)
          {
            v10 = *(v6 + 40);
            v11 = v6;
            if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(v6 + 64)) != 0)
            {
              v13 = *(v11 + 88);
              v12 = 0;
              if (v13)
              {
                *(v11 + 88) = v13 + 1;
              }
            }

            else
            {
              v12 = 1;
            }

            v14 = *(a2 + 40);
            v15 = a2;
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(a2 + 64)) != 0)
            {
              v16 = *(v15 + 88);
              if (v16)
              {
                *(v15 + 88) = v16 + 1;
              }

              result = v9(v6, a2);
              v17 = *(v8 + 40);
              if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v8 + 64)) != 0)
              {
                v18 = *(v8 + 88);
                if (v18)
                {
                  v19 = v18 - 1;
                  *(v8 + 88) = v19;
                  if (!v19)
                  {
                    v20 = result;
                    v21 = *(v8 + 64);
                    if (v21)
                    {
                      *(v8 + 64) = 0;
                      v21[2](v21);
                      _Block_release(v21);
                    }

                    if (*(v8 + 72))
                    {
                      v22 = *(v8 + 64);
                      if (v22)
                      {
                        _Block_release(v22);
                      }
                    }

                    free(v8);
                    result = v20;
                  }
                }
              }
            }

            else
            {
              result = v9(v6, a2);
            }

            if ((v12 & 1) == 0)
            {
              v23 = *(v6 + 40);
              if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
              {
                v24 = *(v6 + 88);
                if (v24)
                {
                  v25 = v24 - 1;
                  *(v6 + 88) = v25;
                  if (!v25)
                  {
                    v26 = result;
                    v27 = *(v6 + 64);
                    if (v27)
                    {
                      *(v6 + 64) = 0;
                      v27[2](v27);
                      _Block_release(v27);
                    }

                    if (*(v6 + 72))
                    {
                      v28 = *(v6 + 64);
                      if (v28)
                      {
                        _Block_release(v28);
                      }
                    }

                    free(v6);
                    return v26;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL __nw_http_vle_decode_from_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v51);
  if (!v4 || !v51)
  {
    goto LABEL_49;
  }

  v5 = *(a1 + 48);
  backtrace_string = (*(v5 + 8) & 0x7F);
  if (8 - backtrace_string >= v51)
  {
    v7 = v51;
  }

  else
  {
    v7 = 8 - backtrace_string;
  }

  memcpy(&backtrace_string[v5], v4, v7);
  *(*(a1 + 48) + 8) = *(*(a1 + 48) + 8) & 0x80 | (*(*(a1 + 48) + 8) + v7) & 0x7F;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if (!v10)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "_http_vle_decode";
    v41 = _os_log_send_and_compose_impl();
    v50[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v41, v50, &type))
    {
      goto LABEL_83;
    }

    if (v50[0] != OS_LOG_TYPE_FAULT)
    {
      if (type != OS_LOG_TYPE_INFO)
      {
        v42 = __nwlog_obj();
        v43 = v50[0];
        if (!os_log_type_enabled(v42, v50[0]))
        {
          goto LABEL_83;
        }

        *buf = 136446210;
        v54 = "_http_vle_decode";
        v44 = "%{public}s called with null *buffer, backtrace limit exceeded";
        goto LABEL_82;
      }

      v48 = backtrace_string;
      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = v50[0];
      v45 = os_log_type_enabled(v42, v50[0]);
      if (!backtrace_string)
      {
        LODWORD(backtrace_string) = v48;
        if (!v45)
        {
          goto LABEL_83;
        }

        *buf = 136446210;
        v54 = "_http_vle_decode";
        v44 = "%{public}s called with null *buffer, no backtrace";
        goto LABEL_82;
      }

      if (v45)
      {
        *buf = 136446466;
        v54 = "_http_vle_decode";
        v55 = 2082;
        v56 = backtrace_string;
        v46 = "%{public}s called with null *buffer, dumping backtrace:%{public}s";
LABEL_72:
        _os_log_impl(&dword_181A37000, v42, v43, v46, buf, 0x16u);
      }

LABEL_73:
      free(backtrace_string);
      LODWORD(backtrace_string) = v48;
      goto LABEL_83;
    }

    v42 = __nwlog_obj();
    v43 = v50[0];
    if (!os_log_type_enabled(v42, v50[0]))
    {
      goto LABEL_83;
    }

    *buf = 136446210;
    v54 = "_http_vle_decode";
    v44 = "%{public}s called with null *buffer";
LABEL_82:
    _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
LABEL_83:
    if (v41)
    {
      free(v41);
    }

    goto LABEL_21;
  }

  v11 = *(a1 + 56);
  if (!v11)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "_http_vle_decode";
    v41 = _os_log_send_and_compose_impl();
    v50[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v41, v50, &type))
    {
      goto LABEL_83;
    }

    if (v50[0] == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = v50[0];
      if (!os_log_type_enabled(v42, v50[0]))
      {
        goto LABEL_83;
      }

      *buf = 136446210;
      v54 = "_http_vle_decode";
      v44 = "%{public}s called with null decoded_val";
      goto LABEL_82;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v42 = __nwlog_obj();
      v43 = v50[0];
      if (!os_log_type_enabled(v42, v50[0]))
      {
        goto LABEL_83;
      }

      *buf = 136446210;
      v54 = "_http_vle_decode";
      v44 = "%{public}s called with null decoded_val, backtrace limit exceeded";
      goto LABEL_82;
    }

    v48 = backtrace_string;
    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v43 = v50[0];
    v47 = os_log_type_enabled(v42, v50[0]);
    if (backtrace_string)
    {
      if (v47)
      {
        *buf = 136446466;
        v54 = "_http_vle_decode";
        v55 = 2082;
        v56 = backtrace_string;
        v46 = "%{public}s called with null decoded_val, dumping backtrace:%{public}s";
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    LODWORD(backtrace_string) = v48;
    if (!v47)
    {
      goto LABEL_83;
    }

    *buf = 136446210;
    v54 = "_http_vle_decode";
    v44 = "%{public}s called with null decoded_val, no backtrace";
    goto LABEL_82;
  }

  v12 = *(*(a1 + 48) + 8) & 0x7F;
  if ((*(*(a1 + 48) + 8) & 0x7F) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 64);
  v14 = *v10;
  if (v14 > 0x3F)
  {
    v17 = v14 >> 6;
    if (v17 == 2)
    {
      if (v12 >= 4)
      {
        v14 = bswap32(*v10 & 0xFFFFFF7F);
        v15 = 4;
        goto LABEL_11;
      }
    }

    else if (v17 == 1)
    {
      if (v12 != 1)
      {
        v14 = bswap32(*v10 & 0xFFBF) >> 16;
        v15 = 2;
        goto LABEL_11;
      }
    }

    else if (v12 >= 8)
    {
      v14 = bswap64(*v10 & 0xFFFFFFFFFFFFFF3FLL);
      v15 = 8;
      goto LABEL_11;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v15 = 1;
LABEL_11:
  *v11 = v14;
  *(v9 + 24) = v10 + v15;
  if (v13)
  {
    *v13 = v15;
  }

  v16 = 1;
LABEL_22:
  *(*(*(a1 + 32) + 8) + 24) = v16;
  if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
    goto LABEL_49;
  }

  if (!*(a1 + 72))
  {
    nw_frame_claim(v2, v8, **(a1 + 64) - backtrace_string, 0);
    *(*(a1 + 48) + 8) &= 0x80u;
    goto LABEL_49;
  }

  v18 = (*(a1 + 88) + 8);
  v19 = (v2 + 32);
  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  if (v20)
  {
    v18 = (v20 + 40);
  }

  *v18 = v21;
  *v21 = v20;
  *(v2 + 40) = 0;
  *v19 = 0;
  *v50 = v2;
  v22 = (**(a1 + 64) - backtrace_string);
  if (v51 == v22)
  {
    v23 = *(a1 + 72);
    *(v2 + 32) = 0;
    v24 = *(v23 + 8);
    *(v2 + 40) = v24;
    *v24 = v2;
    *(v23 + 8) = v19;
    goto LABEL_49;
  }

  v25 = nw_frame_split(v50, v22);
  if (v25)
  {
    v2 = v25;
    v26 = *(a1 + 72);
    *(v25 + 32) = 0;
    v27 = *(v26 + 8);
    *(v25 + 40) = v27;
    *v27 = v25;
    *(v26 + 8) = v25 + 32;
    nw_frame_array_prepend(*(a1 + 88), 1, *v50);
    goto LABEL_49;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v54 = "nw_http_vle_decode_from_frames_block_invoke";
  v28 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (!__nwlog_fault(v28, &type, &v49))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v29 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v29, type))
    {
      *buf = 136446210;
      v54 = "nw_http_vle_decode_from_frames_block_invoke";
      v31 = "%{public}s nw_frame_split returned NULL frame";
LABEL_45:
      _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    }
  }

  else if (v49 == 1)
  {
    v32 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v33 = os_log_type_enabled(v29, type);
    if (v32)
    {
      if (v33)
      {
        *buf = 136446466;
        v54 = "nw_http_vle_decode_from_frames_block_invoke";
        v55 = 2082;
        v56 = v32;
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s nw_frame_split returned NULL frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v32);
      goto LABEL_46;
    }

    if (v33)
    {
      *buf = 136446210;
      v54 = "nw_http_vle_decode_from_frames_block_invoke";
      v31 = "%{public}s nw_frame_split returned NULL frame, no backtrace";
      goto LABEL_45;
    }
  }

  else
  {
    v29 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v29, type))
    {
      *buf = 136446210;
      v54 = "nw_http_vle_decode_from_frames_block_invoke";
      v31 = "%{public}s nw_frame_split returned NULL frame, backtrace limit exceeded";
      goto LABEL_45;
    }
  }

LABEL_46:
  if (v28)
  {
    free(v28);
  }

  v2 = 0;
LABEL_49:
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v34 = (*(a1 + 88) + 8);
    v36 = *(v2 + 32);
    v37 = *(v2 + 40);
    v35 = (v2 + 32);
    if (v36)
    {
      v34 = (v36 + 40);
    }

    *v34 = v37;
    *v37 = v36;
    *v35 = 0;
    *(v2 + 40) = 0;
    v38 = *(a1 + 72);
    if (v38)
    {
      v39 = *(v38 + 8);
      *(v2 + 40) = v39;
      *v39 = v2;
      *(v38 + 8) = v35;
    }

    else
    {
      nw_frame_finalize(v2);
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

uint64_t nw_http_vle_decode_from_frames(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    v18 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v18, type, &v43))
    {
      goto LABEL_72;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v43 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (os_log_type_enabled(v19, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_vle_decode_from_frames";
          v21 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type[0];
      v23 = os_log_type_enabled(v19, type[0]);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_vle_decode_from_frames";
          v21 = "%{public}s called with null parser, no backtrace";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      if (!v23)
      {
        goto LABEL_54;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http_vle_decode_from_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v24 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_72;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    v21 = "%{public}s called with null parser";
LABEL_71:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_72;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    v18 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v18, type, &v43))
    {
      goto LABEL_72;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v43 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (os_log_type_enabled(v19, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_vle_decode_from_frames";
          v21 = "%{public}s called with null frame_array, backtrace limit exceeded";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type[0];
      v25 = os_log_type_enabled(v19, type[0]);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_vle_decode_from_frames";
          v21 = "%{public}s called with null frame_array, no backtrace";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      if (!v25)
      {
        goto LABEL_54;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http_vle_decode_from_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v24 = "%{public}s called with null frame_array, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_72;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    v21 = "%{public}s called with null frame_array";
    goto LABEL_71;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    v18 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v18, type, &v43))
    {
      goto LABEL_72;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (!os_log_type_enabled(v19, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_vle_decode_from_frames";
      v21 = "%{public}s called with null decoded_value";
      goto LABEL_71;
    }

    if (v43 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_vle_decode_from_frames";
        v21 = "%{public}s called with null decoded_value, backtrace limit exceeded";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type[0];
    v26 = os_log_type_enabled(v19, type[0]);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_vle_decode_from_frames";
        v21 = "%{public}s called with null decoded_value, no backtrace";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (!v26)
    {
      goto LABEL_54;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v24 = "%{public}s called with null decoded_value, dumping backtrace:%{public}s";
LABEL_53:
    _os_log_impl(&dword_181A37000, v19, v20, v24, buf, 0x16u);
    goto LABEL_54;
  }

  if (a5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v45 = 0;
    *type = 0;
    v40 = type;
    v41 = 0x2000000000;
    v42 = a1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v29 = __nw_http_vle_decode_from_frames_block_invoke;
    v30 = &unk_1E6A348C8;
    v31 = buf;
    v32 = type;
    v33 = a1;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = a2;
    v38 = a3;
    v9 = *a3;
    do
    {
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 32);
      v11 = (v29)(v28);
      v9 = v10;
    }

    while ((v11 & 1) != 0);
    if (a6)
    {
      *(a1 + 8) &= 0x80u;
      v12 = *&buf[8];
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        if (*a3)
        {
          v13 = a6[1];
          *v13 = *a3;
          *(*a3 + 40) = v13;
          a6[1] = a3[1];
          *a3 = 0;
          a3[1] = a3;
        }

        if (*a6)
        {
          v14 = a3[1];
          *v14 = *a6;
          *(*a6 + 40) = v14;
          a3[1] = a6[1];
          *a6 = 0;
          a6[1] = a6;
        }

        v12 = *&buf[8];
      }
    }

    else
    {
      v12 = *&buf[8];
      if (*(*&buf[8] + 24))
      {
        v15 = 0;
      }

      else
      {
        v15 = 0x80;
      }

      *(a1 + 8) = v15 & 0x80 | *(a1 + 8) & 0x7F;
    }

    v16 = *(v12 + 24);
    _Block_object_dispose(type, 8);
    _Block_object_dispose(buf, 8);
    return v16 & 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_vle_decode_from_frames";
  v18 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (!__nwlog_fault(v18, type, &v43))
  {
    goto LABEL_72;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v43 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_vle_decode_from_frames";
        v21 = "%{public}s called with null decoded_length, backtrace limit exceeded";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type[0];
    v27 = os_log_type_enabled(v19, type[0]);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_vle_decode_from_frames";
        v21 = "%{public}s called with null decoded_length, no backtrace";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (v27)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_vle_decode_from_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v24 = "%{public}s called with null decoded_length, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

LABEL_54:
    free(backtrace_string);
    goto LABEL_72;
  }

  v19 = __nwlog_obj();
  v20 = type[0];
  if (os_log_type_enabled(v19, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_http_vle_decode_from_frames";
    v21 = "%{public}s called with null decoded_length";
    goto LABEL_71;
  }

LABEL_72:
  if (v18)
  {
    free(v18);
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t nw_frame_split(uint64_t *a1, unsigned int a2)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_frame_split";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v25, &type, &v90))
    {
      goto LABEL_114;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s called with null frame";
      goto LABEL_49;
    }

    if (v90 != 1)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = type;
    v79 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (!v79)
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s called with null frame, no backtrace";
      goto LABEL_49;
    }

    if (!v79)
    {
      goto LABEL_83;
    }

    *buf = 136446466;
    v93 = "nw_frame_split";
    v94 = 2082;
    *v95 = backtrace_string;
    v63 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_146:
    v64 = v26;
    v65 = v27;
    v66 = 22;
    goto LABEL_82;
  }

  v3 = *a1;
  if (!*a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_frame_split";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v25, &type, &v90))
    {
      goto LABEL_114;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s called with null *frame";
      goto LABEL_49;
    }

    if (v90 != 1)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s called with null *frame, backtrace limit exceeded";
      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = type;
    v80 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (!v80)
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s called with null *frame, no backtrace";
      goto LABEL_49;
    }

    if (!v80)
    {
      goto LABEL_83;
    }

    *buf = 136446466;
    v93 = "nw_frame_split";
    v94 = 2082;
    *v95 = backtrace_string;
    v63 = "%{public}s called with null *frame, dumping backtrace:%{public}s";
    goto LABEL_146;
  }

  if (a2)
  {
    if (!*(v3 + 112) || (*(v3 + 204) & 0x100) != 0 && g_channel_check_validity && (v4 = a2, v5 = g_channel_check_validity(*a1, *(v3 + 88)), a2 = v4, !v5) || (v6 = *(v3 + 52)) == 0 || ((v7 = *(v3 + 56), v8 = v6 - (v7 + *(v3 + 60)), v9 = *(v3 + 112), v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v93 = "nw_frame_split";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s there are no unclaimed bytes from which to create a subframe", buf, 0xCu);
      }

      return 0;
    }

    v19 = v8 - a2;
    if (v8 > a2)
    {
      v20 = a2;
      v21 = v9 + v7;
      v22 = *a1;
      if (nw_frame_get_finalizer_context(*a1) != 16435934)
      {
        v22 = nw_frame_create(16, v21 + v20, v19, __nw_frame_split_finalizer, 16435934);
        nw_frame_inherit_metadata(*a1, v22, 1);
        metadata = nw_frame_get_metadata(v22);
        if (!metadata)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v22;
          v25 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v90 = 0;
          if (!__nwlog_fault(v25, &type, &v90))
          {
            goto LABEL_114;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v48 = __nwlog_obj();
            v49 = type;
            if (!os_log_type_enabled(v48, type))
            {
              goto LABEL_114;
            }

LABEL_54:
            *buf = 136446466;
            v93 = "nw_frame_split";
            v94 = 2048;
            *v95 = v22;
            v28 = "%{public}s frame %p has no split metadata";
LABEL_111:
            v45 = v48;
            v46 = v49;
            goto LABEL_112;
          }

          if (v90 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v48 = __nwlog_obj();
            v49 = type;
            v59 = os_log_type_enabled(v48, type);
            if (backtrace_string)
            {
              if (v59)
              {
                goto LABEL_81;
              }

              goto LABEL_83;
            }

            if (!v59)
            {
              goto LABEL_114;
            }

LABEL_110:
            *buf = 136446466;
            v93 = "nw_frame_split";
            v94 = 2048;
            *v95 = v22;
            v28 = "%{public}s frame %p has no split metadata, no backtrace";
            goto LABEL_111;
          }

          v48 = __nwlog_obj();
          v49 = type;
          if (!os_log_type_enabled(v48, type))
          {
            goto LABEL_114;
          }

LABEL_95:
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v22;
          v28 = "%{public}s frame %p has no split metadata, backtrace limit exceeded";
          goto LABEL_111;
        }

        *metadata = *a1;
        *(metadata + 8) = 1;
        if (gLogDatapath == 1)
        {
          v88 = __nwlog_obj();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            v89 = *a1;
            *buf = 136446722;
            v93 = "nw_frame_split";
            v94 = 2048;
            *v95 = v22;
            *&v95[8] = 2048;
            *&v95[10] = v89;
            _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s created end frame %p with parent %p", buf, 0x20u);
          }
        }

        *a1 = v22;
        goto LABEL_40;
      }

      nw_frame_claim(*a1, v23, v20, 0);
      v33 = nw_frame_get_metadata(*a1);
      if (v33)
      {
        v34 = v33;
        if (nw_frame_get_finalizer_context(*v33) == 16435934)
        {
          v22 = *v34;
        }

LABEL_40:
        v12 = nw_frame_create(16, v21, v20, __nw_frame_split_finalizer, 16435934);
        nw_frame_inherit_metadata(*a1, v12, 0);
        v35 = nw_frame_get_metadata(v12);
        if (v35)
        {
          *(v35 + 8) = 1;
          *v35 = v22;
          v36 = nw_frame_get_metadata(v22);
          if (v36)
          {
            v37 = v36;
            v38 = *(v36 + 8) + 1;
            *(v36 + 8) = v38;
            if (v38 == v38 << 31 >> 31)
            {
              goto LABEL_127;
            }

            __nwlog_obj();
            v39 = *(v37 + 8);
            *buf = 136446978;
            v93 = "nw_frame_split";
            v94 = 2082;
            *v95 = "parent_metadata->ref_count";
            *&v95[8] = 2048;
            *&v95[10] = 1;
            *&v95[18] = 2048;
            *v96 = v39;
            v40 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v90 = 0;
            if (__nwlog_fault(v40, &type, &v90))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v41 = __nwlog_obj();
                v42 = type;
                if (os_log_type_enabled(v41, type))
                {
                  v43 = *(v37 + 8);
                  *buf = 136446978;
                  v93 = "nw_frame_split";
                  v94 = 2082;
                  *v95 = "parent_metadata->ref_count";
                  *&v95[8] = 2048;
                  *&v95[10] = 1;
                  *&v95[18] = 2048;
                  *v96 = v43;
                  v44 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_123:
                  _os_log_impl(&dword_181A37000, v41, v42, v44, buf, 0x2Au);
                }
              }

              else if (v90 == 1)
              {
                v70 = __nw_create_backtrace_string();
                v41 = __nwlog_obj();
                v42 = type;
                v71 = os_log_type_enabled(v41, type);
                if (v70)
                {
                  if (v71)
                  {
                    v72 = *(v37 + 8);
                    *buf = 136447234;
                    v93 = "nw_frame_split";
                    v94 = 2082;
                    *v95 = "parent_metadata->ref_count";
                    *&v95[8] = 2048;
                    *&v95[10] = 1;
                    *&v95[18] = 2048;
                    *v96 = v72;
                    *&v96[8] = 2082;
                    v97 = v70;
                    _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v70);
                  goto LABEL_124;
                }

                if (v71)
                {
                  v76 = *(v37 + 8);
                  *buf = 136446978;
                  v93 = "nw_frame_split";
                  v94 = 2082;
                  *v95 = "parent_metadata->ref_count";
                  *&v95[8] = 2048;
                  *&v95[10] = 1;
                  *&v95[18] = 2048;
                  *v96 = v76;
                  v44 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_123;
                }
              }

              else
              {
                v41 = __nwlog_obj();
                v42 = type;
                if (os_log_type_enabled(v41, type))
                {
                  v74 = *(v37 + 8);
                  *buf = 136446978;
                  v93 = "nw_frame_split";
                  v94 = 2082;
                  *v95 = "parent_metadata->ref_count";
                  *&v95[8] = 2048;
                  *&v95[10] = 1;
                  *&v95[18] = 2048;
                  *v96 = v74;
                  v44 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_123;
                }
              }
            }

LABEL_124:
            if (v40)
            {
              free(v40);
            }

            *(v37 + 8) = -1;
LABEL_127:
            if (gLogDatapath == 1)
            {
              v77 = __nwlog_obj();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
              {
                v78 = *a1;
                *buf = 136447490;
                v93 = "nw_frame_split";
                v94 = 1024;
                *v95 = v8;
                *&v95[4] = 2048;
                *&v95[6] = v12;
                *&v95[14] = 1024;
                *&v95[16] = v20;
                *v96 = 2048;
                *&v96[2] = v78;
                LOWORD(v97) = 1024;
                *(&v97 + 2) = v19;
                v15 = "%{public}s split frame (%u bytes) into start child %p (%u bytes) and end child %p (%u bytes)";
                v16 = v77;
                v17 = 50;
                goto LABEL_21;
              }
            }

            return v12;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v22;
          v25 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v90 = 0;
          if (!__nwlog_fault(v25, &type, &v90))
          {
            goto LABEL_114;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v48 = __nwlog_obj();
            v49 = type;
            if (!os_log_type_enabled(v48, type))
            {
              goto LABEL_114;
            }

            goto LABEL_54;
          }

          if (v90 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v48 = __nwlog_obj();
            v49 = type;
            v62 = os_log_type_enabled(v48, type);
            if (backtrace_string)
            {
              if (v62)
              {
LABEL_81:
                *buf = 136446722;
                v93 = "nw_frame_split";
                v94 = 2048;
                *v95 = v22;
                *&v95[8] = 2082;
                *&v95[10] = backtrace_string;
                v63 = "%{public}s frame %p has no split metadata, dumping backtrace:%{public}s";
                v64 = v48;
                v65 = v49;
                v66 = 32;
LABEL_82:
                _os_log_impl(&dword_181A37000, v64, v65, v63, buf, v66);
              }

LABEL_83:
              free(backtrace_string);
              goto LABEL_114;
            }

            if (!v62)
            {
              goto LABEL_114;
            }

            goto LABEL_110;
          }

          v48 = __nwlog_obj();
          v49 = type;
          if (!os_log_type_enabled(v48, type))
          {
            goto LABEL_114;
          }

          goto LABEL_95;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        v93 = "nw_frame_split";
        v94 = 2048;
        *v95 = v12;
        v25 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v90 = 0;
        if (!__nwlog_fault(v25, &type, &v90))
        {
          goto LABEL_114;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v50 = __nwlog_obj();
          v51 = type;
          if (!os_log_type_enabled(v50, type))
          {
            goto LABEL_114;
          }

          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v12;
          v28 = "%{public}s frame %p has no split metadata";
          goto LABEL_108;
        }

        if (v90 != 1)
        {
          v50 = __nwlog_obj();
          v51 = type;
          if (!os_log_type_enabled(v50, type))
          {
            goto LABEL_114;
          }

          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v12;
          v28 = "%{public}s frame %p has no split metadata, backtrace limit exceeded";
          goto LABEL_108;
        }

        v60 = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v51 = type;
        v61 = os_log_type_enabled(v50, type);
        if (v60)
        {
          if (v61)
          {
            *buf = 136446722;
            v93 = "nw_frame_split";
            v94 = 2048;
            *v95 = v12;
            *&v95[8] = 2082;
            *&v95[10] = v60;
            _os_log_impl(&dword_181A37000, v50, v51, "%{public}s frame %p has no split metadata, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v60);
          goto LABEL_114;
        }

        if (v61)
        {
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v12;
          v28 = "%{public}s frame %p has no split metadata, no backtrace";
LABEL_108:
          v45 = v50;
          v46 = v51;
LABEL_112:
          v47 = 22;
          goto LABEL_113;
        }

LABEL_114:
        if (v25)
        {
          free(v25);
        }

        return 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = *a1;
      *buf = 136446466;
      v93 = "nw_frame_split";
      v94 = 2048;
      *v95 = v52;
      v53 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v90 = 0;
      if (__nwlog_fault(v53, &type, &v90))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v54 = __nwlog_obj();
          v55 = type;
          if (!os_log_type_enabled(v54, type))
          {
            goto LABEL_119;
          }

          v56 = *a1;
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v56;
          v57 = "%{public}s frame %p has no split metadata";
          goto LABEL_118;
        }

        if (v90 != 1)
        {
          v54 = __nwlog_obj();
          v55 = type;
          if (!os_log_type_enabled(v54, type))
          {
            goto LABEL_119;
          }

          v73 = *a1;
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v73;
          v57 = "%{public}s frame %p has no split metadata, backtrace limit exceeded";
          goto LABEL_118;
        }

        v67 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v55 = type;
        v68 = os_log_type_enabled(v54, type);
        if (v67)
        {
          if (v68)
          {
            v69 = *a1;
            *buf = 136446722;
            v93 = "nw_frame_split";
            v94 = 2048;
            *v95 = v69;
            *&v95[8] = 2082;
            *&v95[10] = v67;
            _os_log_impl(&dword_181A37000, v54, v55, "%{public}s frame %p has no split metadata, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v67);
          goto LABEL_119;
        }

        if (v68)
        {
          v75 = *a1;
          *buf = 136446466;
          v93 = "nw_frame_split";
          v94 = 2048;
          *v95 = v75;
          v57 = "%{public}s frame %p has no split metadata, no backtrace";
LABEL_118:
          _os_log_impl(&dword_181A37000, v54, v55, v57, buf, 0x16u);
        }
      }

LABEL_119:
      if (v53)
      {
        free(v53);
      }

      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v93 = "nw_frame_split";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v25, &type, &v90))
    {
      goto LABEL_114;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s split_offset is beyond the unclaimed region of the frame";
    }

    else
    {
      if (v90 == 1)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = type;
        v32 = os_log_type_enabled(gLogObj, type);
        if (v29)
        {
          if (v32)
          {
            *buf = 136446466;
            v93 = "nw_frame_split";
            v94 = 2082;
            *v95 = v29;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s split_offset is beyond the unclaimed region of the frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_114;
        }

        if (!v32)
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v93 = "nw_frame_split";
        v28 = "%{public}s split_offset is beyond the unclaimed region of the frame, no backtrace";
        v45 = v30;
        v46 = v31;
LABEL_50:
        v47 = 12;
LABEL_113:
        _os_log_impl(&dword_181A37000, v45, v46, v28, buf, v47);
        goto LABEL_114;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v93 = "nw_frame_split";
      v28 = "%{public}s split_offset is beyond the unclaimed region of the frame, backtrace limit exceeded";
    }

LABEL_49:
    v45 = v26;
    v46 = v27;
    goto LABEL_50;
  }

  v12 = nw_frame_create(0, 0, 0, __nw_frame_empty_finalizer, 16435934);
  if (v12)
  {
    nw_frame_inherit_metadata(v3, v12, 0);
    if (gLogDatapath == 1)
    {
      v85 = __nwlog_obj();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v93 = "__nw_frame_create_empty_frame_with_original";
        v94 = 2048;
        *v95 = v12;
        *&v95[8] = 2048;
        *&v95[10] = v3;
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s created empty frame %p from original frame %p", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  __nwlog_obj();
  *buf = 136446210;
  v93 = "__nw_frame_create_empty_frame_with_original";
  v81 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v90 = 0;
  if (__nwlog_fault(v81, &type, &v90))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v82 = __nwlog_obj();
      v83 = type;
      if (!os_log_type_enabled(v82, type))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      v93 = "__nw_frame_create_empty_frame_with_original";
      v84 = "%{public}s called with null empty_frame";
      goto LABEL_170;
    }

    if (v90 != 1)
    {
      v82 = __nwlog_obj();
      v83 = type;
      if (!os_log_type_enabled(v82, type))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      v93 = "__nw_frame_create_empty_frame_with_original";
      v84 = "%{public}s called with null empty_frame, backtrace limit exceeded";
      goto LABEL_170;
    }

    v86 = __nw_create_backtrace_string();
    v82 = __nwlog_obj();
    v83 = type;
    v87 = os_log_type_enabled(v82, type);
    if (v86)
    {
      if (v87)
      {
        *buf = 136446466;
        v93 = "__nw_frame_create_empty_frame_with_original";
        v94 = 2082;
        *v95 = v86;
        _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null empty_frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v86);
      goto LABEL_171;
    }

    if (v87)
    {
      *buf = 136446210;
      v93 = "__nw_frame_create_empty_frame_with_original";
      v84 = "%{public}s called with null empty_frame, no backtrace";
LABEL_170:
      _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
    }
  }

LABEL_171:
  if (v81)
  {
    free(v81);
  }

LABEL_19:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v14 = *a1;
    *buf = 136446722;
    v93 = "nw_frame_split";
    v94 = 2048;
    *v95 = v12;
    *&v95[8] = 2048;
    *&v95[10] = v14;
    v15 = "%{public}s split_offset of 0 passed, created empty frame %p from %p";
    v16 = v13;
    v17 = 32;
LABEL_21:
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
  }

  return v12;
}

uint64_t ___ZL49nw_protocol_http3_untyped_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a1 + 32) + 8) + 48);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

void __nw_frame_split_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "__nw_frame_split_finalizer";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v3, &type, &v38))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v41 = "__nw_frame_split_finalizer";
      v6 = "%{public}s called with null frame";
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v34 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          v41 = "__nw_frame_split_finalizer";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (!v34)
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v41 = "__nw_frame_split_finalizer";
      v6 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v41 = "__nw_frame_split_finalizer";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_24:
    v17 = v4;
    v18 = v5;
LABEL_25:
    _os_log_impl(&dword_181A37000, v17, v18, v6, buf, 0xCu);
    goto LABEL_26;
  }

  if (a3 == 16435934)
  {
    if ((*(a1 + 102) & 4) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v41 = "__nw_frame_split_finalizer";
      v42 = 2048;
      v43 = a1;
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v8, &type, &v38))
      {
        goto LABEL_49;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_49;
        }

        *buf = 136446466;
        v41 = "__nw_frame_split_finalizer";
        v42 = 2048;
        v43 = a1;
        v11 = "%{public}s frame %p has no split metadata";
      }

      else if (v38 == 1)
      {
        v19 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        v20 = os_log_type_enabled(gLogObj, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446722;
            v41 = "__nw_frame_split_finalizer";
            v42 = 2048;
            v43 = a1;
            v44 = 2082;
            v45 = v19;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s frame %p has no split metadata, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v19);
          goto LABEL_49;
        }

        if (!v20)
        {
LABEL_49:
          if (v8)
          {
            free(v8);
          }

          return;
        }

        *buf = 136446466;
        v41 = "__nw_frame_split_finalizer";
        v42 = 2048;
        v43 = a1;
        v11 = "%{public}s frame %p has no split metadata, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_49;
        }

        *buf = 136446466;
        v41 = "__nw_frame_split_finalizer";
        v42 = 2048;
        v43 = a1;
        v11 = "%{public}s frame %p has no split metadata, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0x16u);
      goto LABEL_49;
    }

    v12 = *(a1 + 54);
    *(a1 + 54) = v12 - 1;
    if (v12)
    {
      if (v12 != 1)
      {
        *(a1 + 10) = __nw_frame_split_finalizer;
        *(a1 + 11) = 16435934;
        return;
      }

      goto LABEL_59;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = *(a1 + 54);
    *buf = 136446978;
    v41 = "__nw_frame_split_finalizer";
    v42 = 2082;
    v43 = "metadata->ref_count";
    v44 = 2048;
    v45 = 1;
    v46 = 2048;
    v47 = v21;
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v22, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v25 = *(a1 + 54);
          *buf = 136446978;
          v41 = "__nw_frame_split_finalizer";
          v42 = 2082;
          v43 = "metadata->ref_count";
          v44 = 2048;
          v45 = 1;
          v46 = 2048;
          v47 = v25;
          v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_55:
          _os_log_impl(&dword_181A37000, v23, v24, v26, buf, 0x2Au);
        }
      }

      else if (v38 == 1)
      {
        v27 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        v28 = os_log_type_enabled(gLogObj, type);
        if (v27)
        {
          if (v28)
          {
            v29 = *(a1 + 54);
            *buf = 136447234;
            v41 = "__nw_frame_split_finalizer";
            v42 = 2082;
            v43 = "metadata->ref_count";
            v44 = 2048;
            v45 = 1;
            v46 = 2048;
            v47 = v29;
            v48 = 2082;
            v49 = v27;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v27);
          goto LABEL_56;
        }

        if (v28)
        {
          v31 = *(a1 + 54);
          *buf = 136446978;
          v41 = "__nw_frame_split_finalizer";
          v42 = 2082;
          v43 = "metadata->ref_count";
          v44 = 2048;
          v45 = 1;
          v46 = 2048;
          v47 = v31;
          v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_55;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v30 = *(a1 + 54);
          *buf = 136446978;
          v41 = "__nw_frame_split_finalizer";
          v42 = 2082;
          v43 = "metadata->ref_count";
          v44 = 2048;
          v45 = 1;
          v46 = 2048;
          v47 = v30;
          v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_55;
        }
      }
    }

LABEL_56:
    if (v22)
    {
      free(v22);
    }

    *(a1 + 54) = 0;
LABEL_59:
    v32 = *(a1 + 26);
    if (gLogDatapath == 1)
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v41 = "__nw_frame_split_finalizer";
        v42 = 2048;
        v43 = a1;
        v44 = 2048;
        v45 = v32;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s releasing frame %p parent frame %p", buf, 0x20u);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
    nw_frame_finalize(v32);
    return;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "__nw_frame_split_finalizer";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v3, &type, &v38))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v41 = "__nw_frame_split_finalizer";
      v6 = "%{public}s called with null context";
    }

    else if (v38 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v36 = os_log_type_enabled(v4, type);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446466;
          v41 = "__nw_frame_split_finalizer";
          v42 = 2082;
          v43 = v35;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        if (v3)
        {
          goto LABEL_27;
        }

        return;
      }

      if (!v36)
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v41 = "__nw_frame_split_finalizer";
      v6 = "%{public}s called with null context, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v41 = "__nw_frame_split_finalizer";
      v6 = "%{public}s called with null context, backtrace limit exceeded";
    }

    goto LABEL_24;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v41 = "__nw_frame_split_finalizer";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v3, &type, &v38))
  {
    goto LABEL_26;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_26;
    }

    *buf = 136446210;
    v41 = "__nw_frame_split_finalizer";
    v6 = "%{public}s trying to finalize non-split frame";
    goto LABEL_24;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_26;
    }

    *buf = 136446210;
    v41 = "__nw_frame_split_finalizer";
    v6 = "%{public}s trying to finalize non-split frame, backtrace limit exceeded";
    goto LABEL_24;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v41 = "__nw_frame_split_finalizer";
      v42 = 2082;
      v43 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s trying to finalize non-split frame, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
    if (v3)
    {
      goto LABEL_27;
    }

    return;
  }

  if (v16)
  {
    *buf = 136446210;
    v41 = "__nw_frame_split_finalizer";
    v6 = "%{public}s trying to finalize non-split frame, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_25;
  }

LABEL_26:
  if (v3)
  {
LABEL_27:
    free(v3);
  }
}

uint64_t nw_http3_uni_stream_setup_inbound(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 104);
  v3 = malloc_type_calloc(1uLL, 0x80uLL, 0x2B9F2176uLL);
  v4 = v3;
  if (v3)
  {
    v3[6] = 0u;
    v3[7] = 0u;
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *aBlock = 136446722;
    *&aBlock[4] = "nw_http3_uni_stream_create_inbound";
    *&aBlock[12] = 2048;
    *&aBlock[14] = 1;
    *&aBlock[22] = 2048;
    v13 = 128;
    v5 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v5);
    if (result || (free(v5), MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *aBlock = 136446210, *&aBlock[4] = "nw_http3_uni_stream_create_inbound", v7 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v7), result))
    {
      __break(1u);
      return result;
    }

    free(v7);
  }

  if (gLogDatapath == 1)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_http3_uni_stream_create_inbound";
      *&aBlock[12] = 2048;
      *&aBlock[14] = v4;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s created uni_stream %p", aBlock, 0x16u);
    }
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = v4;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 0x40000000;
  *&aBlock[16] = ___ZL34nw_http3_uni_stream_create_inboundP17nw_protocol_http3_block_invoke;
  v13 = &unk_1E6A39540;
  v14 = v11;
  *(v4 + 96) = _Block_copy(aBlock);
  _Block_object_dispose(v11, 8);
  *(v4 + 16) = &g_http3_uni_stream_protocol_identifier;
  if (nw_protocol_http3_uni_stream_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http3_uni_stream_get_callbacks(void)::onceToken, &__block_literal_global_64_63818);
  }

  *(v4 + 24) = &nw_protocol_http3_uni_stream_get_callbacks(void)::protocol_callbacks;
  *(v4 + 40) = v4;
  *(v4 + 121) &= ~1u;
  *(v4 + 72) = v2;
  *(v4 + 104) = 0;
  *(v4 + 112) = v4 + 104;
  *v4 = *v2;
  nw_protocol_set_input_handler(v4, v2);
  nw_protocol_replace_input_handler(*(a1 + 32), a1, v4);
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(v4 + 112);
    *v9 = v8;
    *(*(a1 + 64) + 40) = v9;
    *(v4 + 112) = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = a1 + 64;
  }

  *(v4 + 121) |= 2u;
  nw_protocol_http3_untyped_stream_destroy(a1);
  return v4;
}

uint64_t nw_protocol_replace_input_handler(void *a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v74 = "__nw_protocol_replace_input_handler";
    v52 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (__nwlog_fault(v52, &type, &v71))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v53 = __nwlog_obj();
        v54 = type;
        if (os_log_type_enabled(v53, type))
        {
          *buf = 136446210;
          v74 = "__nw_protocol_replace_input_handler";
          v55 = "%{public}s called with null protocol";
LABEL_129:
          _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0xCu);
        }
      }

      else if (v71 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v54 = type;
        v61 = os_log_type_enabled(v53, type);
        if (backtrace_string)
        {
          if (v61)
          {
            *buf = 136446466;
            v74 = "__nw_protocol_replace_input_handler";
            v75 = 2082;
            v76 = backtrace_string;
            _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_130;
        }

        if (v61)
        {
          *buf = 136446210;
          v74 = "__nw_protocol_replace_input_handler";
          v55 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_129;
        }
      }

      else
      {
        v53 = __nwlog_obj();
        v54 = type;
        if (os_log_type_enabled(v53, type))
        {
          *buf = 136446210;
          v74 = "__nw_protocol_replace_input_handler";
          v55 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_129;
        }
      }
    }

LABEL_130:
    if (v52)
    {
      free(v52);
    }

    return 0;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v16 = v7[11];
    if (v16)
    {
      v8 = 0;
      v7[11] = v16 + 1;
      if (!a2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      if (!a2)
      {
LABEL_15:
        __nwlog_obj();
        *buf = 136446210;
        v74 = "__nw_protocol_replace_input_handler";
        v17 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (!__nwlog_fault(v17, &type, &v71))
        {
          goto LABEL_136;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (!os_log_type_enabled(v18, type))
          {
            goto LABEL_136;
          }

          *buf = 136446210;
          v74 = "__nw_protocol_replace_input_handler";
          v20 = "%{public}s called with null old_input_protocol";
        }

        else if (v71 == 1)
        {
          v62 = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v19 = type;
          v63 = os_log_type_enabled(v18, type);
          if (v62)
          {
            if (v63)
            {
              *buf = 136446466;
              v74 = "__nw_protocol_replace_input_handler";
              v75 = 2082;
              v76 = v62;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v62);
LABEL_136:
            if (v17)
            {
              free(v17);
            }

            result = 0;
            if (v8)
            {
              return result;
            }

LABEL_61:
            v41 = v5[5];
            if (v41 == &nw_protocol_ref_counted_handle || v41 == &nw_protocol_ref_counted_additional_handle && (v5 = v5[8]) != 0)
            {
              v42 = v5[11];
              if (v42)
              {
                v43 = v42 - 1;
                v5[11] = v43;
                if (!v43)
                {
                  v44 = result;
                  v45 = v5[8];
                  if (v45)
                  {
                    v5[8] = 0;
                    v45[2](v45);
                    _Block_release(v45);
                  }

                  if (v5[9])
                  {
                    v46 = v5[8];
                    if (v46)
                    {
                      _Block_release(v46);
                    }
                  }

                  free(v5);
                  return v44;
                }
              }
            }

            return result;
          }

          if (!v63)
          {
            goto LABEL_136;
          }

          *buf = 136446210;
          v74 = "__nw_protocol_replace_input_handler";
          v20 = "%{public}s called with null old_input_protocol, no backtrace";
        }

        else
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (!os_log_type_enabled(v18, type))
          {
            goto LABEL_136;
          }

          *buf = 136446210;
          v74 = "__nw_protocol_replace_input_handler";
          v20 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        goto LABEL_136;
      }
    }
  }

  else
  {
    v8 = 1;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  v9 = *(a2 + 40);
  v10 = a2;
  if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(a2 + 64)) != 0)
  {
    v21 = *(v10 + 88);
    if (v21)
    {
      v11 = 0;
      *(v10 + 88) = v21 + 1;
      if (!a3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = 0;
      if (!a3)
      {
LABEL_22:
        __nwlog_obj();
        *buf = 136446210;
        v74 = "__nw_protocol_replace_input_handler";
        v22 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (__nwlog_fault(v22, &type, &v71))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v23 = __nwlog_obj();
            v24 = type;
            if (os_log_type_enabled(v23, type))
            {
              *buf = 136446210;
              v74 = "__nw_protocol_replace_input_handler";
              v25 = "%{public}s called with null new_input_protocol";
LABEL_142:
              _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
            }
          }

          else if (v71 == 1)
          {
            v64 = __nw_create_backtrace_string();
            v23 = __nwlog_obj();
            v24 = type;
            v65 = os_log_type_enabled(v23, type);
            if (v64)
            {
              if (v65)
              {
                *buf = 136446466;
                v74 = "__nw_protocol_replace_input_handler";
                v75 = 2082;
                v76 = v64;
                _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v64);
              goto LABEL_143;
            }

            if (v65)
            {
              *buf = 136446210;
              v74 = "__nw_protocol_replace_input_handler";
              v25 = "%{public}s called with null new_input_protocol, no backtrace";
              goto LABEL_142;
            }
          }

          else
          {
            v23 = __nwlog_obj();
            v24 = type;
            if (os_log_type_enabled(v23, type))
            {
              *buf = 136446210;
              v74 = "__nw_protocol_replace_input_handler";
              v25 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
              goto LABEL_142;
            }
          }
        }

LABEL_143:
        if (v22)
        {
          free(v22);
        }

        result = 0;
        goto LABEL_48;
      }
    }
  }

  else
  {
    v11 = 1;
    if (!a3)
    {
      goto LABEL_22;
    }
  }

  v12 = *(a3 + 40);
  v13 = a3;
  if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(a3 + 64)) != 0)
  {
    v26 = *(v13 + 88);
    if (v26)
    {
      v14 = 0;
      *(v13 + 88) = v26 + 1;
      v15 = a1[3];
      if (!v15)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v14 = 0;
      v15 = a1[3];
      if (!v15)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    v14 = 1;
    v15 = a1[3];
    if (!v15)
    {
      goto LABEL_73;
    }
  }

  v27 = *(v15 + 16);
  if (v27)
  {
    result = v27(a1, a2, a3);
    if (v14)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

LABEL_73:
  __nwlog_obj();
  v47 = v5[2];
  *buf = 136446722;
  v74 = "__nw_protocol_replace_input_handler";
  if (!v47)
  {
    v47 = "invalid";
  }

  v75 = 2082;
  v76 = v47;
  v77 = 2048;
  v78 = v5;
  type = OS_LOG_TYPE_ERROR;
  v71 = 0;
  v70 = _os_log_send_and_compose_impl();
  if (__nwlog_fault(v70, &type, &v71))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (!os_log_type_enabled(v48, type))
      {
        goto LABEL_113;
      }

      v50 = v5[2];
      if (!v50)
      {
        v50 = "invalid";
      }

      *buf = 136446722;
      v74 = "__nw_protocol_replace_input_handler";
      v75 = 2082;
      v76 = v50;
      v77 = 2048;
      v78 = v5;
      v51 = "%{public}s protocol %{public}s (%p) has invalid replace_input_handler callback";
LABEL_111:
      v67 = v48;
LABEL_112:
      _os_log_impl(&dword_181A37000, v67, v49, v51, buf, 0x20u);
      goto LABEL_113;
    }

    if (v71 != 1)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (!os_log_type_enabled(v48, type))
      {
        goto LABEL_113;
      }

      v66 = v5[2];
      if (!v66)
      {
        v66 = "invalid";
      }

      *buf = 136446722;
      v74 = "__nw_protocol_replace_input_handler";
      v75 = 2082;
      v76 = v66;
      v77 = 2048;
      v78 = v5;
      v51 = "%{public}s protocol %{public}s (%p) has invalid replace_input_handler callback, backtrace limit exceeded";
      goto LABEL_111;
    }

    v56 = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v49 = type;
    log = v57;
    v58 = os_log_type_enabled(v57, type);
    if (v56)
    {
      if (v58)
      {
        v59 = v5[2];
        if (!v59)
        {
          v59 = "invalid";
        }

        *buf = 136446978;
        v74 = "__nw_protocol_replace_input_handler";
        v75 = 2082;
        v76 = v59;
        v77 = 2048;
        v78 = v5;
        v79 = 2082;
        v80 = v56;
        _os_log_impl(&dword_181A37000, log, v49, "%{public}s protocol %{public}s (%p) has invalid replace_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v56);
    }

    else if (v58)
    {
      v68 = v5[2];
      if (!v68)
      {
        v68 = "invalid";
      }

      *buf = 136446722;
      v74 = "__nw_protocol_replace_input_handler";
      v75 = 2082;
      v76 = v68;
      v77 = 2048;
      v78 = v5;
      v51 = "%{public}s protocol %{public}s (%p) has invalid replace_input_handler callback, no backtrace";
      v67 = log;
      goto LABEL_112;
    }
  }

LABEL_113:
  if (v70)
  {
    free(v70);
  }

  result = 0;
  if ((v14 & 1) == 0)
  {
LABEL_37:
    v29 = *(v3 + 40);
    if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
    {
      v30 = *(v3 + 88);
      if (v30)
      {
        v31 = v30 - 1;
        *(v3 + 88) = v31;
        if (!v31)
        {
          v32 = result;
          v33 = *(v3 + 64);
          if (v33)
          {
            *(v3 + 64) = 0;
            v33[2](v33);
            _Block_release(v33);
          }

          if (*(v3 + 72))
          {
            v34 = *(v3 + 64);
            if (v34)
            {
              _Block_release(v34);
            }
          }

          free(v3);
          result = v32;
        }
      }
    }
  }

LABEL_48:
  if ((v11 & 1) == 0)
  {
    v35 = *(v4 + 40);
    if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
    {
      v36 = *(v4 + 88);
      if (v36)
      {
        v37 = v36 - 1;
        *(v4 + 88) = v37;
        if (!v37)
        {
          v38 = result;
          v39 = *(v4 + 64);
          if (v39)
          {
            *(v4 + 64) = 0;
            v39[2](v39);
            _Block_release(v39);
          }

          if (*(v4 + 72))
          {
            v40 = *(v4 + 64);
            if (v40)
            {
              _Block_release(v40);
            }
          }

          free(v4);
          result = v38;
        }
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t nw_protocol_implementation_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v165 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    handle = a1->handle;
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v8 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        v9 = _os_log_send_and_compose_impl();

        LOBYTE(v164) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v9, &v164, &type))
        {
          if (v164 == 17)
          {
            v10 = __nwlog_obj();
            v11 = v164;
            if (os_log_type_enabled(v10, v164))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_replace_input_handler";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v10 = __nwlog_obj();
            v47 = v164;
            v48 = os_log_type_enabled(v10, v164);
            if (backtrace_string)
            {
              if (v48)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v47, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            if (v48)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_replace_input_handler";
              _os_log_impl(&dword_181A37000, v10, v47, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v10 = __nwlog_obj();
            v58 = v164;
            if (os_log_type_enabled(v10, v164))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_replace_input_handler";
              _os_log_impl(&dword_181A37000, v10, v58, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
LABEL_94:
          v13 = 0;
          goto LABEL_109;
        }

LABEL_93:
        free(v9);
        goto LABEL_94;
      }

      v7 = *a1[1].flow_id;
    }

    v12 = &v7[1].output_handler;
    v13 = v12;
    v14 = v7[1].handle;
    if (v14)
    {
      if (!v14[10])
      {
        v110 = v12;
        v115 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        v112 = _os_log_send_and_compose_impl();

        LOBYTE(v164) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v112, &v164, &type))
        {
          goto LABEL_270;
        }

        if (v164 == 17)
        {
          v113 = __nwlog_obj();
          v116 = v164;
          if (os_log_type_enabled(v113, v164))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v116, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_269;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v113 = __nwlog_obj();
          v137 = v164;
          if (os_log_type_enabled(v113, v164))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v137, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_269;
        }

        v127 = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v128 = v164;
        v129 = os_log_type_enabled(v113, v164);
        if (!v127)
        {
          if (v129)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v128, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_269;
        }

        if (v129)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          v158 = 2082;
          v159 = v127;
          _os_log_impl(&dword_181A37000, v113, v128, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_224;
      }

      if (!a2)
      {
        v110 = v12;
        v117 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        v112 = _os_log_send_and_compose_impl();

        LOBYTE(v164) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v112, &v164, &type))
        {
          goto LABEL_270;
        }

        if (v164 == 17)
        {
          v113 = __nwlog_obj();
          v118 = v164;
          if (os_log_type_enabled(v113, v164))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v118, "%{public}s called with null old_input_handler", buf, 0xCu);
          }

          goto LABEL_269;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v113 = __nwlog_obj();
          v138 = v164;
          if (os_log_type_enabled(v113, v164))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v138, "%{public}s called with null old_input_handler, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_269;
        }

        v127 = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v130 = v164;
        v131 = os_log_type_enabled(v113, v164);
        if (!v127)
        {
          if (v131)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v130, "%{public}s called with null old_input_handler, no backtrace", buf, 0xCu);
          }

          goto LABEL_269;
        }

        if (v131)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          v158 = 2082;
          v159 = v127;
          _os_log_impl(&dword_181A37000, v113, v130, "%{public}s called with null old_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_224;
      }

      if (a3)
      {
        if (*(v14 + 16) == 3)
        {
          if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
          {
            v134 = __nwlog_obj();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447234;
              *&buf[4] = "nw_protocol_implementation_replace_input_handler";
              v158 = 2082;
              v159 = &v7[7].output_handler_context + 7;
              v160 = 2080;
              v161 = " ";
              v162 = 2048;
              *v163 = nw_protocol_flow_for_protocol(v13, a2);
              *&v163[8] = 2048;
              *&v163[10] = a3;
              _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing input handler for flow %llx to %p", buf, 0x34u);
            }
          }

          output_handler_context = a2->output_handler_context;
          if (!output_handler_context)
          {
            if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v57 = gLogObj;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 2048;
                *v163 = a2;
                _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
              }
            }

            goto LABEL_109;
          }

          v152 = v13;
          a2->output_handler_context = 0;
          v155 = 0;
          v16 = nw_hash_table_add_object(*&v7[5].flow_id[8], a3, &v155);
          if (v155)
          {
            v17 = v16;
            if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
            {
              v143 = __nwlog_obj();
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
              {
                v144 = nw_protocol_flow_for_protocol(v152, a3);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 2048;
                *v163 = a3;
                *&v163[8] = 2048;
                *&v163[10] = v144;
                _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMultiplexing protocol added protocol %p to hash table for flow %llx", buf, 0x34u);
              }
            }

            a3->output_handler_context = v17;
            extra = nw_hash_node_get_extra(v17);
            v19 = extra;
            if (extra)
            {
              *(extra + 16) = 0;
              *(extra + 24) = extra + 16;
              p_default_input_handler = &output_handler_context->default_input_handler;
              default_input_handler = output_handler_context->default_input_handler;
              if (default_input_handler)
              {
                *(extra + 16) = default_input_handler;
                output_handler_context->default_input_handler->handle = (extra + 16);
                *(extra + 24) = output_handler_context->output_handler_context;
                output_handler_context->default_input_handler = 0;
                output_handler_context->output_handler_context = p_default_input_handler;
              }

              v22 = output_handler_context->handle;
              output_handler_context->default_input_handler = 0;
              output_handler_context->output_handler_context = p_default_input_handler;
              *extra = output_handler_context->output_handler;
              objc_storeStrong((extra + 8), v22);
              v23 = output_handler_context->handle;
              output_handler_context->handle = 0;

              *(v19 + 32) = *output_handler_context[1].flow_id;
              v24 = *(v19 + 52) & 0xFFFE | WORD2(output_handler_context[1].identifier) & 1;
              *(v19 + 52) = *(v19 + 52) & 0xFFFE | WORD2(output_handler_context[1].identifier) & 1;
              v25 = v24 & 0xFFFFFFFD | (2 * ((WORD2(output_handler_context[1].identifier) >> 1) & 1));
              *(v19 + 52) = v25;
              v26 = v25 & 0xFFFFFFFB | (4 * ((WORD2(output_handler_context[1].identifier) >> 2) & 1));
              *(v19 + 52) = v26;
              v27 = v26 & 0xFFFFFFF7 | (8 * ((WORD2(output_handler_context[1].identifier) >> 3) & 1));
              *(v19 + 52) = v27;
              v28 = v27 & 0xFFFFFFEF | (16 * ((WORD2(output_handler_context[1].identifier) >> 4) & 1));
              *(v19 + 52) = v28;
              v29 = v28 & 0xFFFFFFDF | (32 * ((WORD2(output_handler_context[1].identifier) >> 5) & 1));
              *(v19 + 52) = v29;
              v30 = v29 & 0xFFFFFF7F | (((WORD2(output_handler_context[1].identifier) >> 7) & 1) << 7);
              *(v19 + 52) = v30;
              v31 = v30 & 0xFFFFFEFF | ((HIBYTE(WORD2(output_handler_context[1].identifier)) & 1) << 8);
              *(v19 + 52) = v31;
              v32 = v31 & 0xFFFFFDFF | (((WORD2(output_handler_context[1].identifier) >> 9) & 1) << 9);
              *(v19 + 52) = v32;
              v33 = v32 & 0xFFFFFBFF | (((WORD2(output_handler_context[1].identifier) >> 10) & 1) << 10);
              *(v19 + 52) = v33;
              *(v19 + 52) = v33 & 0xF7FF | WORD2(output_handler_context[1].identifier) & 0x800;
LABEL_25:
              WORD2(output_handler_context[1].identifier) |= 0x4000u;
              if (!a3->output_handler)
              {
                a3->output_handler = v5;
                v75 = v5->handle;
                v76 = v5;
                if (v75 == &nw_protocol_ref_counted_handle || v75 == &nw_protocol_ref_counted_additional_handle && (v76 = *v5[1].flow_id) != 0)
                {
                  callbacks = v76[1].callbacks;
                  if (callbacks)
                  {
                    v76[1].callbacks = (&callbacks->add_input_handler + 1);
                  }
                }
              }

              v34 = a3->callbacks;
              if (!v34)
              {
                goto LABEL_130;
              }

              supports_external_data = v34->supports_external_data;
              if (!supports_external_data)
              {
                goto LABEL_130;
              }

              v36 = a3->handle;
              v37 = a3;
              if (v36 == &nw_protocol_ref_counted_handle)
              {
                goto LABEL_123;
              }

              if (v36 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v37) = 0;
                v38 = 1;
                goto LABEL_126;
              }

              v37 = *a3[1].flow_id;
              if (v37)
              {
LABEL_123:
                v86 = v37[1].callbacks;
                v38 = 0;
                if (v86)
                {
                  v37[1].callbacks = (&v86->add_input_handler + 1);
                }

                LOBYTE(v37) = -1;
              }

              else
              {
                v38 = 1;
              }

LABEL_126:
              *buf = a3;
              buf[8] = v37;
              v87 = supports_external_data(a3);
              if ((v38 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              if (v87)
              {
                v88 = *(v19 + 52) | 0x400;
                goto LABEL_131;
              }

LABEL_130:
              v88 = *(v19 + 52) & 0xFBFF;
LABEL_131:
              *(v19 + 52) = v88;
              v89 = v5->default_input_handler;
              if (v89 == a2)
              {
                if (a2 != a3)
                {
                  nw_protocol_release(v89);
                  v5->default_input_handler = a3;
                  v90 = a3->handle;
                  v91 = a3;
                  if (v90 == &nw_protocol_ref_counted_handle || v90 == &nw_protocol_ref_counted_additional_handle && (v91 = *a3[1].flow_id) != 0)
                  {
                    v92 = v91[1].callbacks;
                    if (v92)
                    {
                      v91[1].callbacks = (&v92->add_input_handler + 1);
                    }
                  }
                }

                *v5->flow_id = *a3->flow_id;
                v93 = nw_protocol_instance_copy_path(v152, -1);
                v94 = *v7[6].flow_id;
                *v7[6].flow_id = v93;
              }

              if (output_handler_context == v7[7].output_handler)
              {
                v7[7].output_handler = v17;
              }

              if (nw_hash_table_remove_node(*&v7[5].flow_id[8], output_handler_context))
              {
                v95 = v7[1].handle;
                v96 = *(v95[10] + 32);
                if (v96 && *v19)
                {
                  v13 = v152;
                  v96(v95, *v19);
                }

                else
                {
                  v13 = v152;
                  if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                  {
                    v148 = __nwlog_obj();
                    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                      v158 = 2082;
                      v159 = &v7[7].output_handler_context + 7;
                      v160 = 2080;
                      v161 = " ";
                      _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNot calling instance replace flow state", buf, 0x20u);
                    }

                    v81 = 1;
                    v13 = v152;
                    goto LABEL_110;
                  }
                }

                goto LABEL_153;
              }

              if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v97 = gLogObj;
                *buf = 136446978;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 2048;
                *v163 = a2;
                v98 = _os_log_send_and_compose_impl();

                LOBYTE(v164) = 16;
                type = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v98, &v164, &type))
                {
                  if (v164 == 17)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v99 = gLogObj;
                    v100 = v164;
                    if (os_log_type_enabled(v99, v164))
                    {
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                      v158 = 2082;
                      v159 = &v7[7].output_handler_context + 7;
                      v160 = 2080;
                      v161 = " ";
                      v162 = 2048;
                      *v163 = a2;
                      _os_log_impl(&dword_181A37000, v99, v100, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table", buf, 0x2Au);
                    }
                  }

                  else if (type == OS_LOG_TYPE_INFO)
                  {
                    v101 = __nw_create_backtrace_string();
                    v99 = __nwlog_obj();
                    v102 = v164;
                    v103 = os_log_type_enabled(v99, v164);
                    if (v101)
                    {
                      if (v103)
                      {
                        *buf = 136447234;
                        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                        v158 = 2082;
                        v159 = &v7[7].output_handler_context + 7;
                        v160 = 2080;
                        v161 = " ";
                        v162 = 2048;
                        *v163 = a2;
                        *&v163[8] = 2082;
                        *&v163[10] = v101;
                        _os_log_impl(&dword_181A37000, v99, v102, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v101);
                      goto LABEL_173;
                    }

                    if (v103)
                    {
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                      v158 = 2082;
                      v159 = &v7[7].output_handler_context + 7;
                      v160 = 2080;
                      v161 = " ";
                      v162 = 2048;
                      *v163 = a2;
                      _os_log_impl(&dword_181A37000, v99, v102, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table, no backtrace", buf, 0x2Au);
                    }
                  }

                  else
                  {
                    v99 = __nwlog_obj();
                    v104 = v164;
                    if (os_log_type_enabled(v99, v164))
                    {
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                      v158 = 2082;
                      v159 = &v7[7].output_handler_context + 7;
                      v160 = 2080;
                      v161 = " ";
                      v162 = 2048;
                      *v163 = a2;
                      _os_log_impl(&dword_181A37000, v99, v104, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table, backtrace limit exceeded", buf, 0x2Au);
                    }
                  }
                }

LABEL_173:
                v13 = v152;
                if (!v98)
                {
                  goto LABEL_109;
                }

                v80 = v98;
                goto LABEL_108;
              }

LABEL_167:
              v81 = 0;
              v13 = v152;
              goto LABEL_110;
            }

            v140 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_protocol_flow_state_move";
            v151 = _os_log_send_and_compose_impl();

            LOBYTE(v164) = 16;
            type = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v151, &v164, &type))
            {
              if (v164 == 17)
              {
                v141 = __nwlog_obj();
                v142 = v164;
                if (os_log_type_enabled(v141, v164))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_flow_state_move";
                  _os_log_impl(&dword_181A37000, v141, v142, "%{public}s called with null dst", buf, 0xCu);
                }
              }

              else
              {
                if (type == OS_LOG_TYPE_INFO)
                {
                  v145 = __nw_create_backtrace_string();
                  v146 = __nwlog_obj();
                  v150 = v164;
                  v147 = os_log_type_enabled(v146, v164);
                  if (v145)
                  {
                    if (v147)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_flow_state_move";
                      v158 = 2082;
                      v159 = v145;
                      _os_log_impl(&dword_181A37000, v146, v150, "%{public}s called with null dst, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v145);
                  }

                  else
                  {
                    if (v147)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_flow_state_move";
                      _os_log_impl(&dword_181A37000, v146, v150, "%{public}s called with null dst, no backtrace", buf, 0xCu);
                    }
                  }

                  goto LABEL_287;
                }

                v141 = __nwlog_obj();
                v149 = v164;
                if (os_log_type_enabled(v141, v164))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_flow_state_move";
                  _os_log_impl(&dword_181A37000, v141, v149, "%{public}s called with null dst, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_287:
            if (v151)
            {
              free(v151);
            }

            goto LABEL_25;
          }

          v164 = *a3->flow_id;
          if (SBYTE5(v7[7].output_handler_context) < 0)
          {
            goto LABEL_167;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          v158 = 2082;
          v159 = &v7[7].output_handler_context + 7;
          v160 = 2080;
          v161 = " ";
          v162 = 1042;
          *v163 = 16;
          *&v163[4] = 2098;
          *&v163[6] = &v164;
          v60 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v154 = 0;
          if (__nwlog_fault(v60, &type, &v154))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = gLogObj;
              v62 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 1042;
                *v163 = 16;
                *&v163[4] = 2098;
                *&v163[6] = &v164;
                _os_log_impl(&dword_181A37000, v61, v62, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P", buf, 0x30u);
              }
            }

            else if (v154 == 1)
            {
              v69 = __nw_create_backtrace_string();
              if (v69)
              {
                v70 = v69;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v71 = gLogObj;
                v72 = type;
                if (os_log_type_enabled(v71, type))
                {
                  *buf = 136447490;
                  *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                  v158 = 2082;
                  v159 = &v7[7].output_handler_context + 7;
                  v160 = 2080;
                  v161 = " ";
                  v162 = 1042;
                  *v163 = 16;
                  *&v163[4] = 2098;
                  *&v163[6] = &v164;
                  *&v163[14] = 2082;
                  *&v163[16] = v70;
                  _os_log_impl(&dword_181A37000, v71, v72, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x3Au);
                }

                free(v70);
                if (!v60)
                {
                  goto LABEL_167;
                }

                goto LABEL_166;
              }

              v61 = __nwlog_obj();
              v105 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 1042;
                *v163 = 16;
                *&v163[4] = 2098;
                *&v163[6] = &v164;
                _os_log_impl(&dword_181A37000, v61, v105, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P, no backtrace", buf, 0x30u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = gLogObj;
              v78 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 1042;
                *v163 = 16;
                *&v163[4] = 2098;
                *&v163[6] = &v164;
                _os_log_impl(&dword_181A37000, v61, v78, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded", buf, 0x30u);
              }
            }
          }

          if (!v60)
          {
            goto LABEL_167;
          }

LABEL_166:
          free(v60);
          goto LABEL_167;
        }

        v39 = v5->default_input_handler;
        if (v39 != a2)
        {
          if (SBYTE5(v7[7].output_handler_context) < 0)
          {
LABEL_109:
            v81 = 0;
LABEL_110:

            return v81;
          }

          v153 = v13;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v40 = gLogObj;
          v41 = v5->default_input_handler;
          *buf = 136447234;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          v158 = 2082;
          v159 = &v7[7].output_handler_context + 7;
          v160 = 2080;
          v161 = " ";
          v162 = 2048;
          *v163 = v41;
          *&v163[8] = 2048;
          *&v163[10] = a2;
          v42 = _os_log_send_and_compose_impl();

          LOBYTE(v164) = 16;
          type = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v42, &v164, &type))
          {
            if (v164 == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v43 = gLogObj;
              v44 = v164;
              if (os_log_type_enabled(v43, v164))
              {
                v45 = v5->default_input_handler;
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 2048;
                *v163 = v45;
                *&v163[8] = 2048;
                *&v163[10] = a2;
                _os_log_impl(&dword_181A37000, v43, v44, "%{public}s %{public}s%sOld input handler does not match (%p != %p)", buf, 0x34u);
              }
            }

            else if (type == OS_LOG_TYPE_INFO)
            {
              v63 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v43 = gLogObj;
              v64 = v164;
              v65 = os_log_type_enabled(v43, v164);
              if (v63)
              {
                if (v65)
                {
                  v66 = v5->default_input_handler;
                  *buf = 136447490;
                  *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                  v158 = 2082;
                  v159 = &v7[7].output_handler_context + 7;
                  v160 = 2080;
                  v161 = " ";
                  v162 = 2048;
                  *v163 = v66;
                  *&v163[8] = 2048;
                  *&v163[10] = a2;
                  *&v163[18] = 2082;
                  *&v163[20] = v63;
                  _os_log_impl(&dword_181A37000, v43, v64, "%{public}s %{public}s%sOld input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x3Eu);
                }

                free(v63);
                v13 = v153;
                if (!v42)
                {
                  goto LABEL_109;
                }

LABEL_107:
                v80 = v42;
LABEL_108:
                free(v80);
                goto LABEL_109;
              }

              if (v65)
              {
                v79 = v5->default_input_handler;
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 2048;
                *v163 = v79;
                *&v163[8] = 2048;
                *&v163[10] = a2;
                _os_log_impl(&dword_181A37000, v43, v64, "%{public}s %{public}s%sOld input handler does not match (%p != %p), no backtrace", buf, 0x34u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v43 = gLogObj;
              v67 = v164;
              if (os_log_type_enabled(v43, v164))
              {
                v68 = v5->default_input_handler;
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_replace_input_handler";
                v158 = 2082;
                v159 = &v7[7].output_handler_context + 7;
                v160 = 2080;
                v161 = " ";
                v162 = 2048;
                *v163 = v68;
                *&v163[8] = 2048;
                *&v163[10] = a2;
                _os_log_impl(&dword_181A37000, v43, v67, "%{public}s %{public}s%sOld input handler does not match (%p != %p), backtrace limit exceeded", buf, 0x34u);
              }
            }
          }

          v13 = v153;
          if (!v42)
          {
            goto LABEL_109;
          }

          goto LABEL_107;
        }

        if (a2 != a3)
        {
          nw_protocol_release(v39);
          v5->default_input_handler = a3;
          v49 = a3->handle;
          v50 = a3;
          if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = *a3[1].flow_id) != 0)
          {
            v51 = v50[1].callbacks;
            if (v51)
            {
              v50[1].callbacks = (&v51->add_input_handler + 1);
            }
          }
        }

        *v5->flow_id = *a3->flow_id;
        if (!a3->output_handler)
        {
          a3->output_handler = v5;
          v73 = v5->handle;
          if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v5 = *v5[1].flow_id) != 0)
          {
            v74 = v5[1].callbacks;
            if (v74)
            {
              v5[1].callbacks = (&v74->add_input_handler + 1);
            }
          }
        }

        v52 = a3->callbacks;
        if (!v52)
        {
          goto LABEL_120;
        }

        v53 = v52->supports_external_data;
        if (!v53)
        {
          goto LABEL_120;
        }

        v54 = a3->handle;
        v55 = a3;
        if (v54 == &nw_protocol_ref_counted_handle)
        {
          goto LABEL_113;
        }

        if (v54 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v55) = 0;
          v56 = 1;
          goto LABEL_116;
        }

        v55 = *a3[1].flow_id;
        if (v55)
        {
LABEL_113:
          v83 = v55[1].callbacks;
          v56 = 0;
          if (v83)
          {
            v55[1].callbacks = (&v83->add_input_handler + 1);
          }

          LOBYTE(v55) = -1;
        }

        else
        {
          v56 = 1;
        }

LABEL_116:
        *buf = a3;
        buf[8] = v55;
        v84 = v53(a3);
        if ((v56 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(buf);
        }

        if (v84)
        {
          v85 = BYTE3(v7[7].output_handler_context) | 2;
LABEL_121:
          BYTE3(v7[7].output_handler_context) = v85;
LABEL_153:
          v81 = 1;
          goto LABEL_110;
        }

LABEL_120:
        v85 = BYTE3(v7[7].output_handler_context) & 0xFD;
        goto LABEL_121;
      }

      v110 = v12;
      v119 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_replace_input_handler";
      v112 = _os_log_send_and_compose_impl();

      LOBYTE(v164) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v112, &v164, &type))
      {
        if (v164 == 17)
        {
          v113 = __nwlog_obj();
          v120 = v164;
          if (os_log_type_enabled(v113, v164))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v120, "%{public}s called with null new_input_handler", buf, 0xCu);
          }

LABEL_269:

          goto LABEL_270;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v113 = __nwlog_obj();
          v139 = v164;
          if (os_log_type_enabled(v113, v164))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v139, "%{public}s called with null new_input_handler, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_269;
        }

        v127 = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v132 = v164;
        v133 = os_log_type_enabled(v113, v164);
        if (!v127)
        {
          if (v133)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_replace_input_handler";
            _os_log_impl(&dword_181A37000, v113, v132, "%{public}s called with null new_input_handler, no backtrace", buf, 0xCu);
          }

          goto LABEL_269;
        }

        if (v133)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          v158 = 2082;
          v159 = v127;
          _os_log_impl(&dword_181A37000, v113, v132, "%{public}s called with null new_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_224:

        free(v127);
        if (!v112)
        {
          goto LABEL_272;
        }

        goto LABEL_271;
      }
    }

    else
    {
      v110 = v12;
      v111 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_replace_input_handler";
      v112 = _os_log_send_and_compose_impl();

      LOBYTE(v164) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v112, &v164, &type))
      {
        goto LABEL_270;
      }

      if (v164 == 17)
      {
        v113 = __nwlog_obj();
        v114 = v164;
        if (os_log_type_enabled(v113, v164))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_269;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v113 = __nwlog_obj();
        v136 = v164;
        if (os_log_type_enabled(v113, v164))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          _os_log_impl(&dword_181A37000, v113, v136, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_269;
      }

      v124 = __nw_create_backtrace_string();
      v113 = __nwlog_obj();
      v125 = v164;
      v126 = os_log_type_enabled(v113, v164);
      if (!v124)
      {
        if (v126)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          _os_log_impl(&dword_181A37000, v113, v125, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_269;
      }

      if (v126)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        v158 = 2082;
        v159 = v124;
        _os_log_impl(&dword_181A37000, v113, v125, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v124);
    }

LABEL_270:
    if (!v112)
    {
LABEL_272:
      v81 = 0;
      v13 = v110;
      goto LABEL_110;
    }

LABEL_271:
    free(v112);
    goto LABEL_272;
  }

  v106 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_replace_input_handler";
  v107 = _os_log_send_and_compose_impl();

  LOBYTE(v164) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v107, &v164, &type))
  {
    if (v164 == 17)
    {
      v108 = __nwlog_obj();
      v109 = v164;
      if (os_log_type_enabled(v108, v164))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        _os_log_impl(&dword_181A37000, v108, v109, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v121 = __nw_create_backtrace_string();
      v108 = __nwlog_obj();
      v122 = v164;
      v123 = os_log_type_enabled(v108, v164);
      if (v121)
      {
        if (v123)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_replace_input_handler";
          v158 = 2082;
          v159 = v121;
          _os_log_impl(&dword_181A37000, v108, v122, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v121);
        goto LABEL_255;
      }

      if (v123)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        _os_log_impl(&dword_181A37000, v108, v122, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v108 = __nwlog_obj();
      v135 = v164;
      if (os_log_type_enabled(v108, v164))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_replace_input_handler";
        _os_log_impl(&dword_181A37000, v108, v135, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_255:
  if (v107)
  {
    free(v107);
  }

  return 0;
}

uint64_t nw_protocol_http3_uni_stream_supports_external_data(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return (handle[121] >> 2) & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_http3_uni_stream_supports_external_data";
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
        v14 = "nw_protocol_http3_uni_stream_supports_external_data";
        v6 = "%{public}s called with null http3_stream";
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
        v14 = "nw_protocol_http3_uni_stream_supports_external_data";
        v6 = "%{public}s called with null http3_stream, backtrace limit exceeded";
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
        v14 = "nw_protocol_http3_uni_stream_supports_external_data";
        v6 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http3_uni_stream_supports_external_data";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http3_uni_stream_supports_external_data";
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
        v14 = "nw_protocol_http3_uni_stream_supports_external_data";
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
        v14 = "nw_protocol_http3_uni_stream_supports_external_data";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http3_uni_stream_supports_external_data";
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
    v14 = "nw_protocol_http3_uni_stream_supports_external_data";
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
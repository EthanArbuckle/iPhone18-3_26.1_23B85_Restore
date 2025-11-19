void nw_framer_options_set_peer_protocol_definition(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_options_set_peer_protocol_definition";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v6, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v29 = "nw_framer_options_set_peer_protocol_definition";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v6)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v6);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v21, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!nw_protocol_options_has_standard_framer_options(v3))
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_options_set_peer_protocol_definition";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v6, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26 != 1)
    {
      v7 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v22, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v16 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v7, type);
    if (!v16)
    {
      if (v18)
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v18)
    {
      *buf = 136446466;
      v29 = "nw_framer_options_set_peer_protocol_definition";
      v30 = 2082;
      v31 = v16;
      _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_options_set_peer_protocol_definition";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v6, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null peer_protocol_definition", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26 != 1)
    {
      v7 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v23, "%{public}s called with null peer_protocol_definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v16 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v7, type);
    if (!v16)
    {
      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_framer_options_set_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s called with null peer_protocol_definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v20)
    {
      *buf = 136446466;
      v29 = "nw_framer_options_set_peer_protocol_definition";
      v30 = 2082;
      v31 = v16;
      _os_log_impl(&dword_181A37000, v7, v19, "%{public}s called with null peer_protocol_definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v16);
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __nw_framer_options_set_peer_protocol_definition_block_invoke;
  v24[3] = &unk_1E6A3A950;
  v25 = v4;
  nw_protocol_options_access_handle(v3, v24);

LABEL_5:
}

id nw_framer_options_copy_peer_protocol_definition(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v5)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  if ((nw_protocol_options_is_framer(v1) & 1) == 0)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null nw_protocol_options_is_framer(options)", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      v13 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v6, type);
      if (v13)
      {
        if (v15)
        {
          *buf = 136446466;
          *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
          *&buf[12] = 2082;
          *&buf[14] = v13;
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null nw_protocol_options_is_framer(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v13);
LABEL_38:
        if (!v5)
        {
          goto LABEL_40;
        }

LABEL_39:
        free(v5);
        goto LABEL_40;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null nw_protocol_options_is_framer(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_peer_protocol_definition";
        _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null nw_protocol_options_is_framer(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (!nw_protocol_options_has_standard_framer_options(v2))
  {
LABEL_40:
    v3 = 0;
    goto LABEL_41;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__5122;
  v24 = __Block_byref_object_dispose__5123;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __nw_framer_options_copy_peer_protocol_definition_block_invoke;
  v19[3] = &unk_1E6A3A858;
  v19[4] = buf;
  nw_protocol_options_access_handle(v2, v19);
  v3 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_41:
  return v3;
}

void sub_18238D61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

id nw_framer_message_copy_original_message(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_message_copy_original_message";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_original_message";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null reply", buf, 0xCu);
      }
    }

    else if (v24 == 1)
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
          *&buf[4] = "nw_framer_message_copy_original_message";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null reply, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v7)
        {
          goto LABEL_10;
        }

        goto LABEL_46;
      }

      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_original_message";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null reply, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_original_message";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null reply, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_44;
  }

  if (!nw_protocol_metadata_is_framer_message(v1))
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_message_copy_original_message";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_original_message";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null nw_protocol_metadata_is_framer_message(reply)", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v8, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_framer_message_copy_original_message";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null nw_protocol_metadata_is_framer_message(reply), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
LABEL_45:
        if (!v7)
        {
LABEL_10:
          v3 = 0;
          goto LABEL_11;
        }

LABEL_46:
        free(v7);
        goto LABEL_10;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_original_message";
        _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null nw_protocol_metadata_is_framer_message(reply), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_original_message";
        _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null nw_protocol_metadata_is_framer_message(reply), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if ((_nw_protocol_metadata_supports_replies(v2) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_framer_message_copy_original_message";
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s Protocol does not support replies, cannot copy reply", buf, 0xCu);
    }

    goto LABEL_10;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__5122;
  v28 = __Block_byref_object_dispose__5123;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __nw_framer_message_copy_original_message_block_invoke;
  v22 = &unk_1E6A3A858;
  v23 = buf;
  if (_nw_protocol_metadata_get_handle(v2))
  {
    (v21)(v20);
  }

  v3 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_11:
  return v3;
}

void sub_18238DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void nw_framer_message_set_value(nw_framer_message_t message, const char *key, void *value, nw_framer_message_dispose_value_t dispose_value)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = message;
  v8 = dispose_value;
  if (!v7)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_framer_message_set_value";
    v10 = _os_log_send_and_compose_impl();

    v35 = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v10, &v35, &v34))
    {
      goto LABEL_57;
    }

    if (v35 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v35;
      if (os_log_type_enabled(v11, v35))
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null message", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v18 = v35;
      v19 = os_log_type_enabled(v11, v35);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v37 = "nw_framer_message_set_value";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v10)
        {
          goto LABEL_7;
        }

LABEL_58:
        free(v10);
        goto LABEL_7;
      }

      if (v19)
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = v35;
      if (os_log_type_enabled(v11, v35))
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!nw_protocol_metadata_is_framer_message(v7))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_framer_message_set_value";
    v10 = _os_log_send_and_compose_impl();

    v35 = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v10, &v35, &v34))
    {
      goto LABEL_57;
    }

    if (v35 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = v35;
      if (os_log_type_enabled(v11, v35))
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v34 != 1)
    {
      v11 = __nwlog_obj();
      v26 = v35;
      if (os_log_type_enabled(v11, v35))
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v21 = v35;
    v22 = os_log_type_enabled(v11, v35);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v22)
    {
      *buf = 136446466;
      v37 = "nw_framer_message_set_value";
      v38 = 2082;
      v39 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!key)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_framer_message_set_value";
    v10 = _os_log_send_and_compose_impl();

    v35 = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v10, &v35, &v34))
    {
      goto LABEL_57;
    }

    if (v35 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = v35;
      if (os_log_type_enabled(v11, v35))
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v34 != 1)
    {
      v11 = __nwlog_obj();
      v27 = v35;
      if (os_log_type_enabled(v11, v35))
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v23 = v35;
    v24 = os_log_type_enabled(v11, v35);
    if (!v20)
    {
      if (v24)
      {
        *buf = 136446210;
        v37 = "nw_framer_message_set_value";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v24)
    {
      *buf = 136446466;
      v37 = "nw_framer_message_set_value";
      v38 = 2082;
      v39 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_37:

    free(v20);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __nw_framer_message_set_value_block_invoke;
  v30 = &unk_1E6A2C178;
  v32 = key;
  v31 = v8;
  v33 = value;
  if (_nw_protocol_metadata_get_handle(v7))
  {
    (v29)(v28);
  }

LABEL_7:
}

uint64_t __nw_framer_message_set_value_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    if (*(a2 + 8))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = *a2;
    *a2 = v12;

    if (*(a2 + 8))
    {
      goto LABEL_3;
    }
  }

  v14 = nw_dictionary_create();
  v15 = *(a2 + 8);
  *(a2 + 8) = v14;

LABEL_3:
  pointer = xpc_dictionary_get_pointer();
  if (pointer)
  {
    v5 = pointer;
    v6 = nw_dictionary_copy_value(*(a2 + 8), *(a1 + 40));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, v5);
    }
  }

  v8 = *(a2 + 8);
  v9 = *(a1 + 40);
  v10 = _Block_copy(*(a1 + 32));
  nw_dictionary_set_value(v8, v9, v10);

  xpc_dictionary_set_pointer();
  return 1;
}

BOOL nw_framer_message_access_value(nw_framer_message_t message, const char *key, void *access_value)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = message;
  v6 = access_value;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_framer_message_access_value";
    v10 = _os_log_send_and_compose_impl();

    v39 = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v10, &v39, &v38))
    {
      goto LABEL_75;
    }

    if (v39 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null message", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v38 != 1)
    {
      v11 = __nwlog_obj();
      v29 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v29, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v20 = v39;
    v21 = os_log_type_enabled(v11, v39);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v21)
    {
      *buf = 136446466;
      v41 = "nw_framer_message_access_value";
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_49;
  }

  if (!nw_protocol_metadata_is_framer_message(v5))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_framer_message_access_value";
    v10 = _os_log_send_and_compose_impl();

    v39 = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v10, &v39, &v38))
    {
      goto LABEL_75;
    }

    if (v39 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v23 = v39;
      v24 = os_log_type_enabled(v11, v39);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v41 = "nw_framer_message_access_value";
          v42 = 2082;
          v43 = v22;
          _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
LABEL_75:
        if (!v10)
        {
LABEL_77:
          v7 = 0;
          goto LABEL_9;
        }

LABEL_76:
        free(v10);
        goto LABEL_77;
      }

      if (v24)
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v30 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v30, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (!key)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_framer_message_access_value";
    v10 = _os_log_send_and_compose_impl();

    v39 = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v10, &v39, &v38))
    {
      goto LABEL_75;
    }

    if (v39 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v38 != 1)
    {
      v11 = __nwlog_obj();
      v31 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v31, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v25 = v39;
    v26 = os_log_type_enabled(v11, v39);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v26)
    {
      *buf = 136446466;
      v41 = "nw_framer_message_access_value";
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_49;
  }

  if (!v6)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_framer_message_access_value";
    v10 = _os_log_send_and_compose_impl();

    v39 = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v10, &v39, &v38))
    {
      goto LABEL_75;
    }

    if (v39 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v18 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null access_value", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v38 != 1)
    {
      v11 = __nwlog_obj();
      v32 = v39;
      if (os_log_type_enabled(v11, v39))
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v32, "%{public}s called with null access_value, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v27 = v39;
    v28 = os_log_type_enabled(v11, v39);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v41 = "nw_framer_message_access_value";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null access_value, no backtrace", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v28)
    {
      *buf = 136446466;
      v41 = "nw_framer_message_access_value";
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null access_value, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_49:

    free(backtrace_string);
    if (!v10)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __nw_framer_message_access_value_block_invoke;
  v35 = &unk_1E6A3AA28;
  v36 = v6;
  v37 = key;
  if (_nw_protocol_metadata_get_handle(v5))
  {
    v7 = v34(v33);
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  return v7;
}

uint64_t __nw_framer_message_access_value_block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    xpc_dictionary_get_pointer();
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t NWPBEndpointReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = objc_alloc_init(NWPBAddressEndpoint);
          objc_storeStrong((a1 + 8), v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !NWPBAddressEndpointReadFrom(v15, a2))
          {
LABEL_42:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v15 = objc_alloc_init(NWPBHostEndpoint);
          objc_storeStrong((a1 + 16), v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !NWPBHostEndpointReadFrom(v15, a2))
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = objc_alloc_init(NWPBServiceEndpoint);
            objc_storeStrong((a1 + 32), v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !NWPBServiceEndpointReadFrom(v15, a2))
            {
              goto LABEL_42;
            }

LABEL_35:
            PBReaderRecallMark();
            goto LABEL_36;
          case 4:
            v15 = objc_alloc_init(NWPBInterface);
            objc_storeStrong((a1 + 24), v15);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !NWPBInterfaceReadFrom(v15, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_35;
          case 5:
            v14 = PBReaderReadData();
            v15 = *(a1 + 40);
            *(a1 + 40) = v14;
LABEL_36:

            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__6340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id *nw_resolver_create_with_endpoint(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [[NWConcrete_nw_resolver alloc] initWithEndpoint:v3 parameters:v4 path:0 log_str:0];
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_resolver_create_with_endpoint";
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
        v18 = "nw_resolver_create_with_endpoint";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
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
          v18 = "nw_resolver_create_with_endpoint";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_resolver_create_with_endpoint";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_resolver_create_with_endpoint";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

id *nw_resolver_to_agent_create_with_endpoint(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [[NWConcrete_nw_resolver alloc] initWithEndpoint:v3 parameters:v4 path:0 log_str:0];
    *(v5 + 372) |= 8u;
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_resolver_to_agent_create_with_endpoint";
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
        v18 = "nw_resolver_to_agent_create_with_endpoint";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
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
          v18 = "nw_resolver_to_agent_create_with_endpoint";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_resolver_to_agent_create_with_endpoint";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_resolver_to_agent_create_with_endpoint";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

char *nw_resolver_create_srv_weighted_variant(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (count = _nw_array_get_count(v1), count > 1))
  {
    v4 = _nw_array_create();
    v6 = 0;
    v26 = count;
    do
    {
      v7 = _nw_array_get_object_at_index(v2, v6);
      priority = nw_endpoint_get_priority(v7);
      weight = nw_endpoint_get_weight(v7);
      v10 = v6 + 1;
      if (v6 + 1 >= count)
      {
        v11 = v6;
        v12 = v7;
      }

      else
      {
        while (1)
        {
          v11 = v10;
          v12 = _nw_array_get_object_at_index(v2, v10);

          if (nw_endpoint_get_priority(v12) != priority)
          {
            break;
          }

          weight += nw_endpoint_get_weight(v12);
          v10 = v11 + 1;
          v7 = v12;
          if (v26 == v11 + 1)
          {
            v10 = v26;
            goto LABEL_13;
          }
        }

        v10 = v11--;
      }

LABEL_13:
      v24 = v10;
      if (v6 - v10 == 1 || !weight)
      {
        while (v6 <= v11)
        {
          v13 = _nw_array_get_object_at_index(v2, v6);
          v14 = v13;
          if (v4 && v13)
          {
            _nw_array_append(v4, v13);
          }

          ++v6;
        }
      }

      else
      {
        v27 = v10 - v6;
        if (v10 != v6)
        {
          if (v6 <= v11)
          {
            v15 = 0;
            do
            {
              v25 = v15;
              v16 = v6;
              if (weight)
              {
                v17 = arc4random() % weight;
                v18 = v6;
                while (1)
                {
                  v19 = _nw_array_get_object_at_index(v2, v18);
                  v20 = v19;
                  if (!v4 || !v19 || (_nw_array_contains_object(v4, v19) & 1) == 0)
                  {
                    v21 = nw_endpoint_get_weight(v20);
                    v22 = v21;
                    if (v17 < v21)
                    {
                      if (!v4)
                      {
                        goto LABEL_25;
                      }

                      goto LABEL_43;
                    }

                    v17 -= v21;
                  }

                  if (++v18 > v11)
                  {
                    goto LABEL_26;
                  }
                }
              }

              while (1)
              {
                v23 = _nw_array_get_object_at_index(v2, v16);
                v20 = v23;
                if (!v4 || !v23 || (_nw_array_contains_object(v4, v23) & 1) == 0)
                {
                  break;
                }

                if (++v16 > v11)
                {
                  weight = 0;
                  goto LABEL_26;
                }
              }

              v22 = nw_endpoint_get_weight(v20);
              if (!v4)
              {
                goto LABEL_25;
              }

LABEL_43:
              if (v20)
              {
                _nw_array_append(v4, v20);
              }

LABEL_25:
              weight -= v22;

LABEL_26:
              v15 = v25 + 1;
            }

            while (v25 + 1 != v27);
          }

          else
          {
            do
            {
              arc4random();
              --v27;
            }

            while (v27);
          }
        }
      }

      count = v26;
      v6 = v24;
    }

    while (v24 < v26);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

void ___ZL33nw_resolver_create_path_evaluatorP22NWConcrete_nw_resolver_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v4 = nw_path_copy_resolved_endpoints(v3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  *(v5 + 168) = v4;

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1 + 32) + 168);
    v9 = 136446466;
    v10 = "nw_resolver_create_path_evaluator_block_invoke";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s path evaluator update handler received resolved endpoints=%@", &v9, 0x16u);
  }

  nw_resolver_update_client(*(a1 + 32), 0);
  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

void ___ZL33nw_resolver_create_path_evaluatorP22NWConcrete_nw_resolver_block_invoke_181(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 136);
    *buf = 136446466;
    v9 = "nw_resolver_create_path_evaluator_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Calling nw_path_enumerate_resolve_options on path:%@", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = v4[17];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZL33nw_resolver_create_path_evaluatorP22NWConcrete_nw_resolver_block_invoke_182;
  v6[3] = &unk_1E6A2C2B0;
  v7 = v4;
  nw_path_enumerate_resolve_options(v5, v6);
}

uint64_t __nw_resolver_set_update_handler_block_invoke_84(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 40) + 16);
  if (!v6)
  {
LABEL_13:
    v9 = *(a1 + 32);
    if (v9)
    {
      if ((v9[370] & 0x20) != 0)
      {
        v8 = 0;
        goto LABEL_49;
      }

      if (v9[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 32);
          v16 = v5;
          v17 = v16;
          if (v16)
          {
            logging_description = _nw_endpoint_get_logging_description(v16);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v40 = 136446722;
          v41 = "nw_resolver_set_update_handler_block_invoke";
          v42 = 2082;
          *v43 = v15 + 280;
          *&v43[8] = 2082;
          *&v43[10] = logging_description;
          v33 = "%{public}s [C%{public}s] found cached alternative %{public}s";
          v34 = v10;
          v35 = 32;
LABEL_40:
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, v33, &v40, v35);
          v8 = 0;
          goto LABEL_48;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v22 = *(*(a1 + 32) + 364);
          v23 = v5;
          v24 = v23;
          if (v23)
          {
            v25 = _nw_endpoint_get_logging_description(v23);
          }

          else
          {
            v25 = "<NULL>";
          }

          v40 = 136446722;
          v41 = "nw_resolver_set_update_handler_block_invoke";
          v42 = 1024;
          *v43 = v22;
          *&v43[4] = 2082;
          *&v43[6] = v25;
          v33 = "%{public}s [R%u] found cached alternative %{public}s";
          v34 = v10;
          v35 = 28;
          goto LABEL_40;
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v19 = v5;
        v20 = v19;
        if (v19)
        {
          v21 = _nw_endpoint_get_logging_description(v19);
        }

        else
        {
          v21 = "<NULL>";
        }

        v40 = 136446466;
        v41 = "nw_resolver_set_update_handler_block_invoke";
        v42 = 2082;
        *v43 = v21;
        v33 = "%{public}s found cached alternative %{public}s";
        v34 = v10;
        v35 = 22;
        goto LABEL_40;
      }
    }

    v8 = 0;
    goto LABEL_48;
  }

  v7 = _nw_array_get_object_at_index(v6, a2);
  v8 = v7;
  if (v7 == MEMORY[0x1E69E9668])
  {

    goto LABEL_13;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v26 = v5;
      v27 = v26;
      if (v26)
      {
        v28 = _nw_endpoint_get_logging_description(v26);
      }

      else
      {
        v28 = "<NULL>";
      }

      v40 = 136446722;
      v41 = "nw_resolver_set_update_handler_block_invoke";
      v42 = 2082;
      *v43 = v28;
      *&v43[8] = 2114;
      *&v43[10] = v8;
      v36 = "%{public}s found cached alternative %{public}s for %{public}@";
      v37 = v10;
      v38 = 32;
      goto LABEL_47;
    }

LABEL_48:

    v9 = *(a1 + 32);
    goto LABEL_49;
  }

  if ((v9[370] & 0x20) == 0)
  {
    if (v9[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v11 = *(a1 + 32);
      v12 = v5;
      v13 = v12;
      if (v12)
      {
        v14 = _nw_endpoint_get_logging_description(v12);
      }

      else
      {
        v14 = "<NULL>";
      }

      v40 = 136446978;
      v41 = "nw_resolver_set_update_handler_block_invoke";
      v42 = 2082;
      *v43 = v11 + 280;
      *&v43[8] = 2082;
      *&v43[10] = v14;
      *&v43[18] = 2114;
      *&v43[20] = v8;
      v36 = "%{public}s [C%{public}s] found cached alternative %{public}s for %{public}@";
      v37 = v10;
      v38 = 42;
      goto LABEL_47;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v29 = *(*(a1 + 32) + 364);
      v30 = v5;
      v31 = v30;
      if (v30)
      {
        v32 = _nw_endpoint_get_logging_description(v30);
      }

      else
      {
        v32 = "<NULL>";
      }

      v40 = 136446978;
      v41 = "nw_resolver_set_update_handler_block_invoke";
      v42 = 1024;
      *v43 = v29;
      *&v43[4] = 2082;
      *&v43[6] = v32;
      *&v43[14] = 2114;
      *&v43[16] = v8;
      v36 = "%{public}s [R%u] found cached alternative %{public}s for %{public}@";
      v37 = v10;
      v38 = 38;
LABEL_47:
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, v36, &v40, v38);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

LABEL_49:
  nw_resolver_update_client_alternative(v9, v5, v8);

  return 1;
}

uint64_t nw_resolver_create_dns_service_locked(NWConcrete_nw_resolver *a1)
{
  v284[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  *(v1 + 44) = 0;
  if (nw_endpoint_get_type(*(v1 + 3)) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    if ((*(v1 + 370) & 0x20) == 0)
    {
      if (*(v1 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v2 = gconnectionLogObj;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v3 = *(v1 + 3);
          v4 = v3;
          if (v3)
          {
            logging_description = _nw_endpoint_get_logging_description(v3);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v149 = *(v1 + 20);
          *buf = 136446978;
          *&buf[4] = "nw_resolver_create_dns_service_locked";
          *&buf[12] = 2082;
          *&buf[14] = v1 + 280;
          *&buf[22] = 2082;
          *&buf[24] = logging_description;
          *&buf[32] = 1024;
          *&buf[34] = v149;
          _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s] Starting application service resolution %{public}s, proto %u", buf, 0x26u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v2 = gLogObj;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v144 = *(v1 + 91);
          v145 = *(v1 + 3);
          v146 = v145;
          if (v145)
          {
            v147 = _nw_endpoint_get_logging_description(v145);
          }

          else
          {
            v147 = "<NULL>";
          }

          v152 = *(v1 + 20);
          *buf = 136446978;
          *&buf[4] = "nw_resolver_create_dns_service_locked";
          *&buf[12] = 1024;
          *&buf[14] = v144;
          *&buf[18] = 2082;
          *&buf[20] = v147;
          *&buf[28] = 1024;
          *&buf[30] = v152;
          _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s [R%u] Starting application service resolution %{public}s, proto %u", buf, 0x22u);
        }
      }
    }

    goto LABEL_371;
  }

  flags = nw_resolver_derive_service_flags(v1, *(v1 + 3), *(v1 + 2));
  out_signature_length = 0;
  attr = 0;
  if (nw_endpoint_get_signature(*(v1 + 3), &out_signature_length) && out_signature_length)
  {
    attr = DNSServiceAttributeCreate();
    DNSServiceAttrSetValidationData();
  }

  v6 = v1 + 280;
  v253 = "invalid";
  v7 = "DNSServiceCreateDelegateConnection";
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v10 = *(v1 + 2);
    v11 = v1;
    v12 = v10;
    v13 = getpid();
    if (!nw_parameters_has_delegated_proc_pid(v12, v13) && !nw_parameters_has_delegated_proc_uuid(v12))
    {
      Connection = DNSServiceCreateConnection(v1 + 8);
      goto LABEL_76;
    }

    if (!nw_parameters_has_delegated_proc_pid(v12, v13))
    {
      pid = 0;
      Connection = 0;
      goto LABEL_43;
    }

    pid = nw_parameters_get_pid(v12);
    if ((*(v1 + 370) & 0x20) == 0)
    {
      if (*v6)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        *buf = 136446722;
        *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 280;
        *&buf[22] = 1024;
        *&buf[24] = pid;
        v16 = v15;
        v17 = "%{public}s [C%{public}s] Delegating DNS service to PID %d";
        v18 = 28;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
LABEL_30:

          goto LABEL_31;
        }

        v20 = *(v1 + 91);
        *buf = 136446722;
        *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v20;
        *&buf[18] = 1024;
        *&buf[20] = pid;
        v16 = v15;
        v17 = "%{public}s [R%u] Delegating DNS service to PID %d";
        v18 = 24;
      }

      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, v17, buf, v18);
      goto LABEL_30;
    }

LABEL_31:
    Connection = DNSServiceCreateDelegateConnection();
    if (!Connection)
    {

      goto LABEL_78;
    }

    if ((*(v1 + 370) & 0x20) == 0)
    {
      if (*v6)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 136446978;
        *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 280;
        *&buf[22] = 1024;
        *&buf[24] = pid;
        *&buf[28] = 1024;
        *&buf[30] = Connection;
        v22 = v21;
        v23 = "%{public}s [C%{public}s] DNSServiceCreateDelegateConnection(..., epid=%d, NULL) failed: %d";
        v24 = 34;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
LABEL_42:

          goto LABEL_43;
        }

        v25 = *(v1 + 91);
        *buf = 136446978;
        *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v25;
        *&buf[18] = 1024;
        *&buf[20] = pid;
        *&buf[24] = 1024;
        *&buf[26] = Connection;
        v22 = v21;
        v23 = "%{public}s [R%u] DNSServiceCreateDelegateConnection(..., epid=%d, NULL) failed: %d";
        v24 = 30;
      }

      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
      goto LABEL_42;
    }

LABEL_43:
    if (nw_parameters_has_delegated_proc_uuid(v12))
    {
      if (!Connection || (*(v1 + 370) & 0x20) != 0)
      {
LABEL_55:
        handler = 0;
        p_handler = 0;
        nw_parameters_get_e_proc_uuid(v12);
        if ((*(v1 + 370) & 0x20) != 0)
        {
LABEL_65:
          Connection = DNSServiceCreateDelegateConnection();
          if (!Connection || (*(v1 + 370) & 0x20) != 0)
          {
            goto LABEL_76;
          }

          if (*v6)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v38 = gconnectionLogObj;
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_75;
            }

            *buf = 136447234;
            *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v1 + 280;
            *&buf[22] = 1042;
            *&buf[24] = 16;
            *&buf[28] = 2098;
            *&buf[30] = &handler;
            *&buf[38] = 1024;
            *&buf[40] = Connection;
            v39 = v38;
            v40 = "%{public}s [C%{public}s] DNSServiceCreateDelegateConnection(..., 0, %{public,uuid_t}.16P) failed: %d";
            v41 = 44;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
LABEL_75:

              goto LABEL_76;
            }

            v42 = *(v1 + 91);
            *buf = 136447234;
            *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v42;
            *&buf[18] = 1042;
            *&buf[20] = 16;
            *&buf[24] = 2098;
            *&buf[26] = &handler;
            *&buf[34] = 1024;
            *&buf[36] = Connection;
            v39 = v38;
            v40 = "%{public}s [R%u] DNSServiceCreateDelegateConnection(..., 0, %{public,uuid_t}.16P) failed: %d";
            v41 = 40;
          }

          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, v40, buf, v41);
          goto LABEL_75;
        }

        if (*v6)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v33 = gconnectionLogObj;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          *buf = 136446466;
          *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v1 + 280;
          v34 = v33;
          v35 = "%{public}s [C%{public}s] Delegating DNS service to eUUID";
          v36 = 22;
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
LABEL_64:

            goto LABEL_65;
          }

          v37 = *(v1 + 91);
          *buf = 136446466;
          *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v37;
          v34 = v33;
          v35 = "%{public}s [R%u] Delegating DNS service to eUUID";
          v36 = 18;
        }

        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, v35, buf, v36);
        goto LABEL_64;
      }

      if (*v6)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        string_for_dns_service_error = nwlog_get_string_for_dns_service_error(Connection);
        *buf = 136447234;
        *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 280;
        *&buf[22] = 1024;
        *&buf[24] = pid;
        *&buf[28] = 2082;
        *&buf[30] = string_for_dns_service_error;
        *&buf[38] = 1024;
        *&buf[40] = Connection;
        v28 = v26;
        v29 = "%{public}s [C%{public}s] Delegating DNS service to PID %d returned failure %{public}s(%d), falling back to eUUID";
        v30 = 44;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
LABEL_54:

          goto LABEL_55;
        }

        v31 = *(v1 + 91);
        v32 = nwlog_get_string_for_dns_service_error(Connection);
        *buf = 136447234;
        *&buf[4] = "nw_resolver_instantiate_dns_connection_for_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v31;
        *&buf[18] = 1024;
        *&buf[20] = pid;
        *&buf[24] = 2082;
        *&buf[26] = v32;
        *&buf[34] = 1024;
        *&buf[36] = Connection;
        v28 = v26;
        v29 = "%{public}s [R%u] Delegating DNS service to PID %d returned failure %{public}s(%d), falling back to eUUID";
        v30 = 40;
      }

      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
      goto LABEL_54;
    }

LABEL_76:

    if (Connection == -65569)
    {
      goto LABEL_15;
    }

    if (Connection)
    {
      goto LABEL_296;
    }

LABEL_78:
    v43 = dispatch_group_create();
    v44 = *(v1 + 5);
    *(v1 + 5) = v43;

    dispatch_group_enter(*(v1 + 5));
    v45 = *(v1 + 8);
    v46 = *(v1 + 5);
    v47 = nw_context_copy_workloop(*(v1 + 4));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL37nw_resolver_create_dns_service_lockedP22NWConcrete_nw_resolver_block_invoke;
    block[3] = &unk_1E6A3AC58;
    v263 = v45;
    v48 = v11;
    v262 = v48;
    dispatch_group_notify(v46, v47, block);

    *(v1 + 9) = *(v1 + 8);
    scoped_interface_index = nw_resolver_get_scoped_interface_index(v48, &flags);
    if (nw_endpoint_get_type(*(v1 + 3)) == nw_endpoint_type_host)
    {
      *(v1 + 9) = *(v1 + 8);
      v50 = flags;
      v51 = *(v1 + 20);
      hostname = nw_endpoint_get_hostname(*(v1 + 3));
      Connection = MEMORY[0x1865DBBB0](v1 + 72, v50, scoped_interface_index, v51, hostname, attr, nw_resolver_host_resolve_callback, v48, context);
      if (Connection != -65569)
      {
        v253 = "host";
        v7 = "DNSServiceGetAddrInfo";
        goto LABEL_295;
      }

      nw_resolver_cancel_query_locked(v48, 0);
      v253 = "host";
      v7 = "DNSServiceGetAddrInfo";
      goto LABEL_14;
    }

    if (nw_endpoint_get_type(*(v1 + 3)) == nw_endpoint_type_bonjour_service)
    {
      v53 = v48;
      if (nw_endpoint_get_type(*(v1 + 3)) != nw_endpoint_type_bonjour_service || (nw_parameters_get_use_awdl(*(v1 + 2)) & 1) == 0 || (bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(*(v1 + 3)), (v55 = bonjour_service_domain) != 0) && strcasecmp(bonjour_service_domain, "local") && strcasecmp(v55, "local."))
      {

        goto LABEL_88;
      }

      v108 = *(v1 + 2);
      v109 = v108;
      if (v108 && (_nw_parameters_get_stricter_path_scoping(v108) & 1) != 0)
      {
        *type = 0;
        v272 = type;
        v273 = 0x2020000000;
        v274 = 1;
        v110 = nw_parameters_copy_preferred_interface_subtypes(*(v1 + 2));
        v111 = v110;
        if (v110)
        {
          *applier = MEMORY[0x1E69E9820];
          *&applier[8] = 3221225472;
          *&applier[16] = ___ZL38nw_resolver_get_awdl_trigger_heuristicP22NWConcrete_nw_resolver_block_invoke;
          *&applier[24] = &unk_1E6A3ABB8;
          *&applier[32] = type;
          xpc_array_apply(v110, applier);
        }

        v112 = *(v272 + 6);

        _Block_object_dispose(type, 8);
        if (v112)
        {
          if (!*(v1 + 15))
          {
            v113 = _nw_interface_create_with_name("awdl0");
            if (v113)
            {
              if ((*(v1 + 370) & 0x20) == 0)
              {
                if (*v6)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v114 = gconnectionLogObj;
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    *applier = 136446466;
                    *&applier[4] = "nw_resolver_should_wait_for_awdl_trigger";
                    *&applier[12] = 2082;
                    *&applier[14] = v1 + 280;
                    v115 = v114;
                    v116 = "%{public}s [C%{public}s] Creating AWDL trigger browser for resolver";
                    v117 = 22;
                    goto LABEL_167;
                  }
                }

                else
                {
                  v114 = __nwlog_obj();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    v118 = *(v1 + 91);
                    *applier = 136446466;
                    *&applier[4] = "nw_resolver_should_wait_for_awdl_trigger";
                    *&applier[12] = 1024;
                    *&applier[14] = v118;
                    v115 = v114;
                    v116 = "%{public}s [R%u] Creating AWDL trigger browser for resolver";
                    v117 = 18;
LABEL_167:
                    _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_DEFAULT, v116, applier, v117);
                  }
                }
              }

              v254 = v113;
              bonjour_service_type = nw_endpoint_get_bonjour_service_type(*(v1 + 3));
              v120 = nw_endpoint_get_bonjour_service_domain(*(v1 + 3));
              bonjour_service = nw_browse_descriptor_create_bonjour_service(bonjour_service_type, v120);
              v121 = _nw_parameters_copy(*(v1 + 2));
              v122 = v113;
              v123 = v121;
              v252 = v121;
              nw_parameters_require_interface(v121, v122);
              v124 = nw_browser_create(bonjour_service, v123);
              v125 = *(v1 + 15);
              *(v1 + 15) = v124;

              if (*(v1 + 15))
              {
                *type = 0;
                v272 = type;
                v273 = 0x2020000000;
                LOBYTE(v274) = 0;
                v267 = 0;
                v268 = &v267;
                v269 = 0x2020000000;
                v270 = v112 == 2;
                objc_initWeak(&location, v53);
                v126 = *(v1 + 15);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke;
                *&buf[24] = &unk_1E6A2C638;
                *&buf[32] = type;
                objc_copyWeak(&buf[48], &location);
                *&buf[40] = &v267;
                nw_browser_set_state_changed_handler(v126, buf);
                v127 = *(v1 + 15);
                handler = MEMORY[0x1E69E9820];
                p_handler = 3221225472;
                v280 = ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke_272;
                v281 = &unk_1E6A2C660;
                v282 = type;
                objc_copyWeak(v284, &location);
                v283 = &v267;
                nw_browser_set_browse_results_changed_handler(v127, &handler);
                if ((*(v1 + 370) & 0x20) == 0)
                {
                  if (*v6)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v128 = gconnectionLogObj;
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                    {
                      v129 = *(v1 + 15);
                      v130 = "?";
                      if (v112 == 1)
                      {
                        v130 = "parallel";
                      }

                      *applier = 136446978;
                      if (v112 == 2)
                      {
                        v130 = "blocking";
                      }

                      *&applier[4] = "nw_resolver_should_wait_for_awdl_trigger";
                      *&applier[12] = 2082;
                      *&applier[14] = v1 + 280;
                      *&applier[22] = 2082;
                      *&applier[24] = v130;
                      *&applier[32] = 2112;
                      *&applier[34] = v129;
                      v131 = v128;
                      v132 = "%{public}s [C%{public}s] Starting %{public}s AWDL trigger browser %@";
                      v133 = 42;
                      goto LABEL_192;
                    }
                  }

                  else
                  {
                    v128 = __nwlog_obj();
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                    {
                      v138 = *(v1 + 91);
                      v139 = "?";
                      if (v112 == 1)
                      {
                        v139 = "parallel";
                      }

                      v140 = *(v1 + 15);
                      if (v112 == 2)
                      {
                        v139 = "blocking";
                      }

                      *applier = 136446978;
                      *&applier[4] = "nw_resolver_should_wait_for_awdl_trigger";
                      *&applier[12] = 1024;
                      *&applier[14] = v138;
                      *&applier[18] = 2082;
                      *&applier[20] = v139;
                      *&applier[28] = 2112;
                      *&applier[30] = v140;
                      v131 = v128;
                      v132 = "%{public}s [R%u] Starting %{public}s AWDL trigger browser %@";
                      v133 = 38;
LABEL_192:
                      _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_DEFAULT, v132, applier, v133);
                    }
                  }
                }

                v141 = *(v1 + 15);
                v142 = nw_context_copy_workloop(*(v1 + 4));
                nw_browser_set_queue(v141, v142);

                nw_browser_start(*(v1 + 15));
                LOBYTE(v141) = *(v268 + 24);
                objc_destroyWeak(v284);
                objc_destroyWeak(&buf[48]);
                objc_destroyWeak(&location);
                _Block_object_dispose(&v267, 8);
                _Block_object_dispose(type, 8);

                if (v141)
                {
                  if ((*(v1 + 370) & 0x20) == 0)
                  {
                    if (*v6)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v236 = gconnectionLogObj;
                      if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_resolver_create_dns_service_locked";
                        *&buf[12] = 2082;
                        *&buf[14] = v1 + 280;
                        _os_log_impl(&dword_181A37000, v236, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s] Blocking resolve on AWDL trigger browser", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v236 = __nwlog_obj();
                      if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
                      {
                        v240 = *(v1 + 91);
                        *buf = 136446466;
                        *&buf[4] = "nw_resolver_create_dns_service_locked";
                        *&buf[12] = 1024;
                        *&buf[14] = v240;
                        _os_log_impl(&dword_181A37000, v236, OS_LOG_TYPE_DEFAULT, "%{public}s [R%u] Blocking resolve on AWDL trigger browser", buf, 0x12u);
                      }
                    }
                  }

                  goto LABEL_250;
                }

LABEL_89:
                nw_endpoint_get_bonjour_service_name(*(v1 + 3));
                nw_endpoint_get_bonjour_service_type(*(v1 + 3));
                nw_endpoint_get_bonjour_service_domain(*(v1 + 3));
                context = v53;
                Connection = DNSServiceResolveEx();
                if (Connection != -65569)
                {
                  v253 = "bonjour";
                  v7 = "DNSServiceResolve";
                  goto LABEL_295;
                }

                nw_resolver_cancel_query_locked(v53, 0);
                v253 = "bonjour";
                v7 = "DNSServiceResolve";
                goto LABEL_14;
              }

              if ((*(v1 + 370) & 0x20) == 0)
              {
                if (*v6)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v134 = gconnectionLogObj;
                  if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                  {
                    *applier = 136446466;
                    *&applier[4] = "nw_resolver_should_wait_for_awdl_trigger";
                    *&applier[12] = 2082;
                    *&applier[14] = v1 + 280;
                    v135 = v134;
                    v136 = "%{public}s [C%{public}s] Failed to create AWDL trigger browser";
                    v137 = 22;
                    goto LABEL_198;
                  }
                }

                else
                {
                  v134 = __nwlog_obj();
                  if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                  {
                    v143 = *(v1 + 91);
                    *applier = 136446466;
                    *&applier[4] = "nw_resolver_should_wait_for_awdl_trigger";
                    *&applier[12] = 1024;
                    *&applier[14] = v143;
                    v135 = v134;
                    v136 = "%{public}s [R%u] Failed to create AWDL trigger browser";
                    v137 = 18;
LABEL_198:
                    _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_ERROR, v136, applier, v137);
                  }
                }
              }

              goto LABEL_89;
            }
          }
        }
      }

      else
      {
      }

LABEL_88:

      goto LABEL_89;
    }

    if (nw_endpoint_get_type(*(v1 + 3)) != nw_endpoint_type_address)
    {
      break;
    }

    if (!nw_parameters_get_resolve_ptr(*(v1 + 2)))
    {
      if ((*(v1 + 370) & 0x10) != 0 || nw_endpoint_get_address_family(*(v1 + 3)) != 2)
      {
LABEL_246:
        v163 = *(v48 + 21);
        if (v163)
        {
          v164 = *(v1 + 3);
          if (v164)
          {
            _nw_array_append(v163, v164);
          }
        }

        *(v48 + 21) = 0;
        nw_resolver_update_status_locked(v48, 0);
LABEL_250:
        v151 = 1;
        goto LABEL_251;
      }

      handler = 0;
      p_handler = 0;
      if (nw_endpoint_fillout_v4_address(*(v1 + 3), &handler))
      {
        if (nw_nat64_can_v4_address_be_synthesized(&handler + 1))
        {
          *(v1 + 20) = 2;
          if ((*(v1 + 370) & 0x20) != 0)
          {
            goto LABEL_288;
          }

          if (*v6)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v153 = gconnectionLogObj;
            if (!os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_287;
            }

            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 2082;
            *&buf[14] = v1 + 280;
            v154 = "%{public}s [C%{public}s] Querying NAT64 prefixes";
            v155 = v153;
            v156 = 22;
          }

          else
          {
            v153 = __nwlog_obj();
            if (!os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
            {
LABEL_287:

LABEL_288:
              *buf = scoped_interface_index;
              dispatch_group_enter(*(v1 + 5));
              v190 = nw_context_copy_workloop(*(v1 + 4));
              v259[0] = MEMORY[0x1E69E9820];
              v259[1] = 3221225472;
              v259[2] = ___ZL37nw_resolver_create_dns_service_lockedP22NWConcrete_nw_resolver_block_invoke_261;
              v259[3] = &unk_1E6A2C5E8;
              v260 = v48;
              nw_nat64_copy_prefixes_async_override_dns(buf, v190, v1 + 9, &flags, v259);

              Connection = 0;
              v7 = "nw_nat64_copy_prefixes_async_override_dns";
              v165 = "NAT64";
LABEL_253:
              v253 = v165;
              goto LABEL_295;
            }

            v189 = *(v1 + 91);
            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 1024;
            *&buf[14] = v189;
            v154 = "%{public}s [R%u] Querying NAT64 prefixes";
            v155 = v153;
            v156 = 18;
          }

          _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, v154, buf, v156);
          goto LABEL_287;
        }

        goto LABEL_246;
      }

      v242 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_resolver_create_dns_service_locked";
      v243 = _os_log_send_and_compose_impl();

      applier[0] = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v243, applier, type))
      {
        if (applier[0] == 17)
        {
          v244 = __nwlog_obj();
          v245 = applier[0];
          if (os_log_type_enabled(v244, applier[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            _os_log_impl(&dword_181A37000, v244, v245, "%{public}s called with null success", buf, 0xCu);
          }
        }

        else if (type[0] == OS_LOG_TYPE_INFO)
        {
          backtrace_string = __nw_create_backtrace_string();
          v244 = __nwlog_obj();
          v247 = applier[0];
          v248 = os_log_type_enabled(v244, applier[0]);
          if (backtrace_string)
          {
            if (v248)
            {
              *buf = 136446466;
              *&buf[4] = "nw_resolver_create_dns_service_locked";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v244, v247, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_417;
          }

          if (v248)
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            _os_log_impl(&dword_181A37000, v244, v247, "%{public}s called with null success, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v244 = __nwlog_obj();
          v249 = applier[0];
          if (os_log_type_enabled(v244, applier[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            _os_log_impl(&dword_181A37000, v244, v249, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_417:
      if (v243)
      {
        free(v243);
      }

      v151 = 0;
LABEL_251:

      goto LABEL_372;
    }

    LODWORD(v281) = 0;
    handler = 0;
    p_handler = 0;
    v280 = 0;
    if ((nw_endpoint_fillout_v4v6_address(*(v1 + 3), &handler) & 1) == 0)
    {
      v232 = __nwlog_obj();
      *applier = 136446210;
      *&applier[4] = "nw_resolver_create_dns_service_locked";
      v233 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v267) = 0;
      if (__nwlog_fault(v233, type, &v267))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v234 = __nwlog_obj();
          v235 = type[0];
          if (os_log_type_enabled(v234, type[0]))
          {
            *applier = 136446210;
            *&applier[4] = "nw_resolver_create_dns_service_locked";
            _os_log_impl(&dword_181A37000, v234, v235, "%{public}s called with null success", applier, 0xCu);
          }
        }

        else if (v267 == 1)
        {
          v237 = __nw_create_backtrace_string();
          v234 = __nwlog_obj();
          v238 = type[0];
          v239 = os_log_type_enabled(v234, type[0]);
          if (v237)
          {
            if (v239)
            {
              *applier = 136446466;
              *&applier[4] = "nw_resolver_create_dns_service_locked";
              *&applier[12] = 2082;
              *&applier[14] = v237;
              _os_log_impl(&dword_181A37000, v234, v238, "%{public}s called with null success, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(v237);
            goto LABEL_399;
          }

          if (v239)
          {
            *applier = 136446210;
            *&applier[4] = "nw_resolver_create_dns_service_locked";
            _os_log_impl(&dword_181A37000, v234, v238, "%{public}s called with null success, no backtrace", applier, 0xCu);
          }
        }

        else
        {
          v234 = __nwlog_obj();
          v241 = type[0];
          if (os_log_type_enabled(v234, type[0]))
          {
            *applier = 136446210;
            *&applier[4] = "nw_resolver_create_dns_service_locked";
            _os_log_impl(&dword_181A37000, v234, v241, "%{public}s called with null success, backtrace limit exceeded", applier, 0xCu);
          }
        }
      }

LABEL_399:
      if (v233)
      {
        free(v233);
      }

      goto LABEL_219;
    }

    if (BYTE1(handler) == 2)
    {
      if (snprintf(buf, 0x100uLL, "%u.%u.%u.%u.in-addr.arpa.", HIBYTE(HIDWORD(handler)), BYTE6(handler), BYTE5(handler), BYTE4(handler)) >= 0x100)
      {
        goto LABEL_205;
      }
    }

    else if (BYTE1(handler) != 30 || (v56 = snprintf(buf, 0x100uLL, "%x.%x.", HIBYTE(v280) & 0xF, HIBYTE(v280) >> 4), v56 >= 0x100) || (v57 = v56, v58 = 256 - v56, v59 = snprintf(&buf[v56], v58, "%x.%x.", BYTE6(v280) & 0xF, BYTE6(v280) >> 4), (v59 & 0x80000000) != 0) || (v60 = v58 > v59, v61 = v58 - v59, !v60) || (v62 = v59 + v57, v63 = snprintf(&buf[v62], v61, "%x.%x.", BYTE5(v280) & 0xF, BYTE5(v280) >> 4), (v63 & 0x80000000) != 0) || (v64 = v61 - v63, v61 <= v63) || (v65 = v63 + v62, v66 = snprintf(&buf[v65], v64, "%x.%x.", BYTE4(v280) & 0xF, BYTE4(v280) >> 4), (v66 & 0x80000000) != 0) || (v60 = v64 > v66, v67 = v64 - v66, !v60) || (v68 = v66 + v65, v69 = snprintf(&buf[v68], v67, "%x.%x.", BYTE3(v280) & 0xF, BYTE3(v280) >> 4), (v69 & 0x80000000) != 0) || (v60 = v67 > v69, v70 = v67 - v69, !v60) || (v71 = v69 + v68, v72 = snprintf(&buf[v71], v70, "%x.%x.", BYTE2(v280) & 0xF, BYTE2(v280) >> 4), (v72 & 0x80000000) != 0) || (v60 = v70 > v72, v73 = v70 - v72, !v60) || (v74 = v72 + v71, v75 = snprintf(&buf[v74], v73, "%x.%x.", BYTE1(v280) & 0xF, BYTE1(v280) >> 4), (v75 & 0x80000000) != 0) || (v60 = v73 > v75, v76 = v73 - v75, !v60) || (v77 = v75 + v74, v78 = snprintf(&buf[v77], v76, "%x.%x.", v280 & 0xF, v280 >> 4), (v78 & 0x80000000) != 0) || (v60 = v76 > v78, v79 = v76 - v78, !v60) || (v80 = v78 + v77, v81 = snprintf(&buf[v80], v79, "%x.%x.", HIBYTE(p_handler) & 0xF, HIBYTE(p_handler) >> 4), (v81 & 0x80000000) != 0) || (v60 = v79 > v81, v82 = v79 - v81, !v60) || (v83 = v81 + v80, v84 = snprintf(&buf[v83], v82, "%x.%x.", BYTE6(p_handler) & 0xF, BYTE6(p_handler) >> 4), (v84 & 0x80000000) != 0) || (v60 = v82 > v84, v85 = v82 - v84, !v60) || (v86 = v84 + v83, v87 = snprintf(&buf[v86], v85, "%x.%x.", BYTE5(p_handler) & 0xF, BYTE5(p_handler) >> 4), (v87 & 0x80000000) != 0) || (v60 = v85 > v87, v88 = v85 - v87, !v60) || (v89 = v87 + v86, v90 = snprintf(&buf[v89], v88, "%x.%x.", BYTE4(p_handler) & 0xF, BYTE4(p_handler) >> 4), (v90 & 0x80000000) != 0) || (v60 = v88 > v90, v91 = v88 - v90, !v60) || (v92 = v90 + v89, v93 = snprintf(&buf[v92], v91, "%x.%x.", BYTE3(p_handler) & 0xF, BYTE3(p_handler) >> 4), (v93 & 0x80000000) != 0) || (v60 = v91 > v93, v94 = v91 - v93, !v60) || (v95 = v93 + v92, v96 = snprintf(&buf[v95], v94, "%x.%x.", BYTE2(p_handler) & 0xF, BYTE2(p_handler) >> 4), (v96 & 0x80000000) != 0) || (v60 = v94 > v96, v97 = v94 - v96, !v60) || (v98 = v96 + v95, v99 = snprintf(&buf[v98], v97, "%x.%x.", BYTE1(p_handler) & 0xF, BYTE1(p_handler) >> 4), (v99 & 0x80000000) != 0) || (v60 = v97 > v99, v100 = v97 - v99, !v60) || (v101 = v99 + v98, v102 = snprintf(&buf[v101], v100, "%x.%x.", p_handler & 0xF, p_handler >> 4), (v102 & 0x80000000) != 0) || (v60 = v100 > v102, v103 = v100 - v102, !v60) || (v104 = snprintf(&buf[v102 + v101], v103, "ip6.arpa."), (v104 & 0x80000000) != 0) || v103 <= v104)
    {
LABEL_205:
      if ((*(v1 + 370) & 0x20) == 0)
      {
        if (*v6)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v148 = gconnectionLogObj;
          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            *applier = 136446466;
            *&applier[4] = "nw_resolver_create_dns_service_locked";
            *&applier[12] = 2082;
            *&applier[14] = v1 + 280;
            _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s] failed to create PTR name", applier, 0x16u);
          }
        }

        else
        {
          v148 = __nwlog_obj();
          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            v150 = *(v1 + 91);
            *applier = 136446466;
            *&applier[4] = "nw_resolver_create_dns_service_locked";
            *&applier[12] = 1024;
            *&applier[14] = v150;
            _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_ERROR, "%{public}s [R%u] failed to create PTR name", applier, 0x12u);
          }
        }
      }

LABEL_219:

      v151 = 0;
      goto LABEL_372;
    }

    Connection = DNSServiceQueryRecordWithAttribute(v1 + 9, flags, scoped_interface_index, buf, 0xCu, 1u, attr, nw_resolver_ptr_resolve_callback, v48);
    if (Connection != -65569)
    {
      v7 = "DNSServiceQueryRecord";
      v165 = "PTR";
      goto LABEL_253;
    }

    nw_resolver_cancel_query_locked(v48, 0);
    v107 = "PTR";
LABEL_13:
    v253 = v107;
    v7 = "DNSServiceQueryRecord";
LABEL_14:

LABEL_15:
    v8 = 0;
    if ((v9 & 1) == 0)
    {
      Connection = -65569;
      goto LABEL_296;
    }
  }

  if (nw_endpoint_get_type(*(v1 + 3)) == (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    v105 = flags;
    srv_name = nw_endpoint_get_srv_name(*(v1 + 3));
    Connection = DNSServiceQueryRecordWithAttribute(v1 + 9, v105, scoped_interface_index, srv_name, 0x21u, 1u, attr, nw_resolver_srv_resolve_callback, v48);
    if (Connection != -65569)
    {
      v253 = "SRV";
      v7 = "DNSServiceQueryRecord";
      goto LABEL_295;
    }

    nw_resolver_cancel_query_locked(v48, 0);
    v107 = "SRV";
    goto LABEL_13;
  }

  if ((*(v1 + 370) & 0x20) == 0)
  {
    if (*v6)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v157 = gconnectionLogObj;
      v158 = nw_endpoint_get_type(*(v1 + 3));
      *buf = 136446722;
      *&buf[4] = "nw_resolver_create_dns_service_locked";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 280;
      *&buf[22] = 1024;
      *&buf[24] = v158;
      v159 = _os_log_send_and_compose_impl();

      LOBYTE(handler) = 16;
      applier[0] = 0;
      if (__nwlog_fault(v159, &handler, applier))
      {
        if (handler == 17)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v160 = gconnectionLogObj;
          v161 = handler;
          if (os_log_type_enabled(v160, handler))
          {
            v162 = nw_endpoint_get_type(*(v1 + 3));
            *buf = 136446722;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 2082;
            *&buf[14] = v1 + 280;
            *&buf[22] = 1024;
            *&buf[24] = v162;
            _os_log_impl(&dword_181A37000, v160, v161, "%{public}s [C%{public}s] unknown resolver mode of operation for type %d", buf, 0x1Cu);
          }

          goto LABEL_291;
        }

        if (applier[0] == 1)
        {
          v172 = __nw_create_backtrace_string();
          if (v172)
          {
            v173 = v172;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v174 = gconnectionLogObj;
            v175 = handler;
            if (os_log_type_enabled(v174, handler))
            {
              v176 = nw_endpoint_get_type(*(v1 + 3));
              *buf = 136446978;
              *&buf[4] = "nw_resolver_create_dns_service_locked";
              *&buf[12] = 2082;
              *&buf[14] = v1 + 280;
              *&buf[22] = 1024;
              *&buf[24] = v176;
              *&buf[28] = 2082;
              *&buf[30] = v173;
              _os_log_impl(&dword_181A37000, v174, v175, "%{public}s [C%{public}s] unknown resolver mode of operation for type %d, dumping backtrace:%{public}s", buf, 0x26u);
            }

            free(v173);
            goto LABEL_292;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v160 = gconnectionLogObj;
          v187 = handler;
          if (os_log_type_enabled(v160, handler))
          {
            v188 = nw_endpoint_get_type(*(v1 + 3));
            *buf = 136446722;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 2082;
            *&buf[14] = v1 + 280;
            *&buf[22] = 1024;
            *&buf[24] = v188;
            _os_log_impl(&dword_181A37000, v160, v187, "%{public}s [C%{public}s] unknown resolver mode of operation for type %d, no backtrace", buf, 0x1Cu);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v160 = gconnectionLogObj;
          v182 = handler;
          if (os_log_type_enabled(v160, handler))
          {
            v183 = nw_endpoint_get_type(*(v1 + 3));
            *buf = 136446722;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 2082;
            *&buf[14] = v1 + 280;
            *&buf[22] = 1024;
            *&buf[24] = v183;
            _os_log_impl(&dword_181A37000, v160, v182, "%{public}s [C%{public}s] unknown resolver mode of operation for type %d, backtrace limit exceeded", buf, 0x1Cu);
          }
        }

LABEL_291:
      }
    }

    else
    {
      v166 = __nwlog_obj();
      v167 = *(v1 + 91);
      v168 = nw_endpoint_get_type(*(v1 + 3));
      *buf = 136446722;
      *&buf[4] = "nw_resolver_create_dns_service_locked";
      *&buf[12] = 1024;
      *&buf[14] = v167;
      *&buf[18] = 1024;
      *&buf[20] = v168;
      v159 = _os_log_send_and_compose_impl();

      LOBYTE(handler) = 16;
      applier[0] = 0;
      if (!__nwlog_fault(v159, &handler, applier))
      {
        goto LABEL_292;
      }

      if (handler == 17)
      {
        v160 = __nwlog_obj();
        v169 = handler;
        if (os_log_type_enabled(v160, handler))
        {
          v170 = *(v1 + 91);
          v171 = nw_endpoint_get_type(*(v1 + 3));
          *buf = 136446722;
          *&buf[4] = "nw_resolver_create_dns_service_locked";
          *&buf[12] = 1024;
          *&buf[14] = v170;
          *&buf[18] = 1024;
          *&buf[20] = v171;
          _os_log_impl(&dword_181A37000, v160, v169, "%{public}s [R%u] unknown resolver mode of operation for type %d", buf, 0x18u);
        }

        goto LABEL_291;
      }

      if (applier[0] != 1)
      {
        v160 = __nwlog_obj();
        v184 = handler;
        if (os_log_type_enabled(v160, handler))
        {
          v185 = *(v1 + 91);
          v186 = nw_endpoint_get_type(*(v1 + 3));
          *buf = 136446722;
          *&buf[4] = "nw_resolver_create_dns_service_locked";
          *&buf[12] = 1024;
          *&buf[14] = v185;
          *&buf[18] = 1024;
          *&buf[20] = v186;
          _os_log_impl(&dword_181A37000, v160, v184, "%{public}s [R%u] unknown resolver mode of operation for type %d, backtrace limit exceeded", buf, 0x18u);
        }

        goto LABEL_291;
      }

      v177 = __nw_create_backtrace_string();
      v160 = __nwlog_obj();
      v178 = handler;
      v179 = os_log_type_enabled(v160, handler);
      if (!v177)
      {
        if (v179)
        {
          v191 = *(v1 + 91);
          v192 = nw_endpoint_get_type(*(v1 + 3));
          *buf = 136446722;
          *&buf[4] = "nw_resolver_create_dns_service_locked";
          *&buf[12] = 1024;
          *&buf[14] = v191;
          *&buf[18] = 1024;
          *&buf[20] = v192;
          _os_log_impl(&dword_181A37000, v160, v178, "%{public}s [R%u] unknown resolver mode of operation for type %d, no backtrace", buf, 0x18u);
        }

        goto LABEL_291;
      }

      if (v179)
      {
        v180 = *(v1 + 91);
        v181 = nw_endpoint_get_type(*(v1 + 3));
        *buf = 136446978;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 1024;
        *&buf[14] = v180;
        *&buf[18] = 1024;
        *&buf[20] = v181;
        *&buf[24] = 2082;
        *&buf[26] = v177;
        _os_log_impl(&dword_181A37000, v160, v178, "%{public}s [R%u] unknown resolver mode of operation for type %d, dumping backtrace:%{public}s", buf, 0x22u);
      }

      free(v177);
    }

LABEL_292:
    if (v159)
    {
      free(v159);
    }
  }

  Connection = 0;
LABEL_295:

LABEL_296:
  if (attr)
  {
    DNSServiceAttributeDeallocate(attr);
  }

  if (Connection)
  {
LABEL_301:
    handler = 0;
    p_handler = &handler;
    v280 = 0x2020000000;
    LOBYTE(v281) = 0;
    if (Connection != -65555)
    {
      if (!v11)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v199 = gLogObj;
        if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
        {
          v200 = nwlog_get_string_for_dns_service_error(Connection);
          *buf = 136446978;
          *&buf[4] = "nw_resolver_create_dns_service_locked";
          *&buf[12] = 2082;
          *&buf[14] = v7;
          *&buf[22] = 2082;
          *&buf[24] = v200;
          *&buf[32] = 1024;
          *&buf[34] = Connection;
          v201 = "%{public}s %{public}s failed: %{public}s(%d)";
          v202 = v199;
          v203 = 38;
LABEL_347:
          _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_ERROR, v201, buf, v203);
        }

LABEL_348:

        goto LABEL_349;
      }

LABEL_339:
      if ((*(v1 + 370) & 0x20) != 0)
      {
LABEL_349:
        *(v11 + 21) = Connection;
        nw_resolver_cancel_query_locked(v11, 0);
        _Block_object_dispose(&handler, 8);
        v151 = 0;
        goto LABEL_372;
      }

      if (*v6)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v199 = gconnectionLogObj;
        if (!os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_348;
        }

        v217 = nwlog_get_string_for_dns_service_error(Connection);
        *buf = 136447234;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 280;
        *&buf[22] = 2082;
        *&buf[24] = v7;
        *&buf[32] = 2082;
        *&buf[34] = v217;
        *&buf[42] = 1024;
        *&buf[44] = Connection;
        v201 = "%{public}s [C%{public}s] %{public}s failed: %{public}s(%d)";
        v202 = v199;
        v203 = 48;
        goto LABEL_347;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v199 = gLogObj;
      if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
      {
        v218 = *(v1 + 91);
        v219 = nwlog_get_string_for_dns_service_error(Connection);
        *buf = 136447234;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 1024;
        *&buf[14] = v218;
        *&buf[18] = 2082;
        *&buf[20] = v7;
        *&buf[28] = 2082;
        *&buf[30] = v219;
        *&buf[38] = 1024;
        *&buf[40] = Connection;
        v201 = "%{public}s [R%u] %{public}s failed: %{public}s(%d)";
        v202 = v199;
        v203 = 44;
        goto LABEL_347;
      }

      goto LABEL_348;
    }

    if (v11)
    {
      if ((*(v1 + 370) & 0x20) != 0)
      {
        goto LABEL_318;
      }

      if (*v6)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v195 = gconnectionLogObj;
        if (!os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
        {
          goto LABEL_317;
        }

        *buf = 136446466;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 280;
        v196 = "%{public}s [C%{public}s] Received kDNSServiceErr_NoAuth - checking for Wifi Aware";
        v197 = v195;
        v198 = 22;
        goto LABEL_316;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v195 = gLogObj;
      if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
      {
        v204 = *(v1 + 91);
        *buf = 136446466;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 1024;
        *&buf[14] = v204;
        v196 = "%{public}s [R%u] Received kDNSServiceErr_NoAuth - checking for Wifi Aware";
        v197 = v195;
        v198 = 18;
        goto LABEL_316;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v195 = gLogObj;
      if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        v196 = "%{public}s Received kDNSServiceErr_NoAuth - checking for Wifi Aware";
        v197 = v195;
        v198 = 12;
LABEL_316:
        _os_log_impl(&dword_181A37000, v197, OS_LOG_TYPE_INFO, v196, buf, v198);
      }
    }

LABEL_317:

LABEL_318:
    v205 = nw_endpoint_copy_txt_record(*(v1 + 3));
    if ((*(v1 + 370) & 0x20) != 0)
    {
      goto LABEL_332;
    }

    if (*v6)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v206 = gconnectionLogObj;
      if (!os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
      {
        goto LABEL_331;
      }

      v207 = "";
      *buf = 136446722;
      *&buf[4] = "nw_resolver_create_dns_service_locked";
      if (!v205)
      {
        v207 = "not ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v1 + 280;
      *&buf[22] = 2080;
      *&buf[24] = v207;
      v208 = "%{public}s [C%{public}s] Endpoint does %shave a TXT record";
      v209 = v206;
      v210 = 32;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v206 = gLogObj;
      if (!os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
      {
LABEL_331:

LABEL_332:
        access_value[0] = MEMORY[0x1E69E9820];
        access_value[1] = 3221225472;
        access_value[2] = ___ZL37nw_resolver_create_dns_service_lockedP22NWConcrete_nw_resolver_block_invoke_267;
        access_value[3] = &unk_1E6A2C610;
        v257 = v11;
        v258 = &handler;
        nw_txt_record_access_key(v205, "ipa", access_value);

        if (*(p_handler + 24))
        {
          if ((*(v1 + 370) & 0x20) != 0)
          {
LABEL_354:
            _Block_object_dispose(&handler, 8);
            goto LABEL_355;
          }

          if (*v6)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v213 = gconnectionLogObj;
            if (!os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
            {
              goto LABEL_353;
            }

            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 2082;
            *&buf[14] = v1 + 280;
            v214 = "%{public}s [C%{public}s] Received DNS error but ignoring due to isWifiAware set";
            v215 = v213;
            v216 = 22;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v213 = gLogObj;
            if (!os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
            {
LABEL_353:

              goto LABEL_354;
            }

            v220 = *(v1 + 91);
            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_service_locked";
            *&buf[12] = 1024;
            *&buf[14] = v220;
            v214 = "%{public}s [R%u] Received DNS error but ignoring due to isWifiAware set";
            v215 = v213;
            v216 = 18;
          }

          _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_INFO, v214, buf, v216);
          goto LABEL_353;
        }

        goto LABEL_339;
      }

      v211 = *(v1 + 91);
      v212 = "";
      *buf = 136446722;
      *&buf[4] = "nw_resolver_create_dns_service_locked";
      if (!v205)
      {
        v212 = "not ";
      }

      *&buf[12] = 1024;
      *&buf[14] = v211;
      *&buf[18] = 2080;
      *&buf[20] = v212;
      v208 = "%{public}s [R%u] Endpoint does %shave a TXT record";
      v209 = v206;
      v210 = 28;
    }

    _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_INFO, v208, buf, v210);
    goto LABEL_331;
  }

  v193 = *(v1 + 8);
  v194 = nw_context_copy_workloop(*(v1 + 4));
  Connection = DNSServiceSetDispatchQueue(v193, v194);

  if (Connection)
  {
    v7 = "DNSServiceSetDispatchQueue";
    goto LABEL_301;
  }

LABEL_355:
  if ((*(v1 + 370) & 0x20) == 0)
  {
    if (*v6)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v221 = gconnectionLogObj;
      if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
      {
        v222 = *(v1 + 3);
        v223 = v222;
        if (v222)
        {
          v224 = _nw_endpoint_get_logging_description(v222);
        }

        else
        {
          v224 = "<NULL>";
        }

        v229 = *(v1 + 20);
        *buf = 136447490;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 280;
        *&buf[22] = 2082;
        *&buf[24] = v253;
        *&buf[32] = 2082;
        *&buf[34] = v224;
        *&buf[42] = 1024;
        *&buf[44] = flags;
        *&buf[48] = 1024;
        v276 = v229;
        _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s] Starting %{public}s resolution %{public}s, flags %#x proto %u", buf, 0x36u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v221 = gLogObj;
      if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
      {
        v225 = *(v1 + 91);
        v226 = *(v1 + 3);
        v227 = v226;
        if (v226)
        {
          v228 = _nw_endpoint_get_logging_description(v226);
        }

        else
        {
          v228 = "<NULL>";
        }

        v230 = *(v1 + 20);
        *buf = 136447490;
        *&buf[4] = "nw_resolver_create_dns_service_locked";
        *&buf[12] = 1024;
        *&buf[14] = v225;
        *&buf[18] = 2082;
        *&buf[20] = v253;
        *&buf[28] = 2082;
        *&buf[30] = v228;
        *&buf[38] = 1024;
        *&buf[40] = flags;
        *&buf[44] = 1024;
        *&buf[46] = v230;
        _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_INFO, "%{public}s [R%u] Starting %{public}s resolution %{public}s, flags %#x proto %u", buf, 0x32u);
      }
    }
  }

LABEL_371:
  v151 = 1;
LABEL_372:

  return v151;
}

uint64_t ___ZL38nw_resolver_get_awdl_trigger_heuristicP22NWConcrete_nw_resolver_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F18] && xpc_uint64_get_value(v4) == 1002)
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || a2 != 4 && a2 != 2)
  {
    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_18;
  }

  v7 = WeakRetained;
  if ((WeakRetained[92]._os_unfair_lock_opaque & 0x200000) == 0)
  {
    if (LOBYTE(WeakRetained[70]._os_unfair_lock_opaque))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136446466;
      v18 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v19 = 2082;
      v20 = v7 + 70;
      v9 = "%{public}s [C%{public}s] AWDL trigger browse did not find service";
      v10 = v8;
      v11 = 22;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      os_unfair_lock_opaque = v7[91]._os_unfair_lock_opaque;
      *buf = 136446466;
      v18 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v19 = 1024;
      LODWORD(v20) = os_unfair_lock_opaque;
      v9 = "%{public}s [R%u] AWDL trigger browse did not find service";
      v10 = v8;
      v11 = 18;
    }

    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_14;
  }

LABEL_15:
  v13 = *(*(a1 + 40) + 8);
  if (*(v13 + 24) == 1)
  {
    *(v13 + 24) = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke_270;
    aBlock[3] = &unk_1E6A3D868;
    v16 = v7;
    v14 = _Block_copy(aBlock);
    os_unfair_lock_lock(v7 + 3);
    v14[2](v14);
    os_unfair_lock_unlock(v7 + 3);
  }

LABEL_18:
}

void ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke_272(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = WeakRetained;
    if (!v4 || !WeakRetained)
    {
      goto LABEL_19;
    }

    v7 = v4;
    v8 = v7[1];

    if (*(v6 + 15))
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = v8;
      bonjour_service_name = _nw_endpoint_get_bonjour_service_name(v9);

      v11 = nw_endpoint_get_bonjour_service_name(*(v6 + 3));
      if (strcasecmp(bonjour_service_name, v11))
      {
        goto LABEL_18;
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke_273;
      v18[3] = &unk_1E6A3D760;
      v19 = v6;
      v20 = v9;
      v12 = _Block_copy(v18);
      os_unfair_lock_lock(v6 + 3);
      v12[2](v12);
      os_unfair_lock_unlock(v6 + 3);

      v13 = v19;
      goto LABEL_17;
    }

    if ((v6[370] & 0x20) != 0)
    {
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    if (v6[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v13 = gconnectionLogObj;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136446722;
      v22 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v23 = 2082;
      *v24 = v6 + 280;
      *&v24[8] = 2112;
      *&v24[10] = v8;
      v14 = "%{public}s [C%{public}s] AWDL trigger browser found result %@ after being cancelled";
      v15 = v13;
      v16 = 32;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_18;
      }

      v17 = *(v6 + 91);
      *buf = 136446722;
      v22 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v23 = 1024;
      *v24 = v17;
      *&v24[4] = 2112;
      *&v24[6] = v8;
      v14 = "%{public}s [R%u] AWDL trigger browser found result %@ after being cancelled";
      v15 = v13;
      v16 = 28;
    }

    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_17;
  }

LABEL_20:
}

void ___ZL37nw_resolver_create_dns_service_lockedP22NWConcrete_nw_resolver_block_invoke_261(uint64_t a1, int a2, int *a3)
{
  v63[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v6 = *(a1 + 32);
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = a2;
      *&buf[18] = 2048;
      *&buf[20] = a3;
      v9 = "%{public}s Received %d NAT64 prefixes [%p]";
      v10 = v7;
      v11 = 28;
LABEL_12:
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v9, buf, v11);
    }

LABEL_13:

    v6 = *(a1 + 32);
    goto LABEL_14;
  }

  if ((*(v6 + 370) & 0x20) == 0)
  {
    if (*(v6 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v8 = *(a1 + 32) + 280;
      *buf = 136446978;
      *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v8;
      *&buf[22] = 1024;
      *&buf[24] = a2;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      v9 = "%{public}s [C%{public}s] Received %d NAT64 prefixes [%p]";
      v10 = v7;
      v11 = 38;
      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(*(a1 + 32) + 364);
      *buf = 136446978;
      *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      *&buf[24] = 2048;
      *&buf[26] = a3;
      v9 = "%{public}s [R%u] Received %d NAT64 prefixes [%p]";
      v10 = v7;
      v11 = 34;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a2 < 1 || !a3)
  {
    goto LABEL_66;
  }

  memset(&__src[2], 0, 24);
  __src[0] = 7708;
  __src[1] = __rev16(nw_endpoint_get_port(*(v6 + 24)));
  v63[0] = 0;
  v63[1] = 0;
  if ((nw_endpoint_fillout_v4_address(*(*(a1 + 32) + 24), v63) & 1) == 0)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
    v47 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55) = 0;
    if (__nwlog_fault(v47, type, &v55))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null success", buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v51 = type[0];
        v52 = os_log_type_enabled(v48, type[0]);
        if (backtrace_string)
        {
          if (v52)
          {
            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_89;
        }

        if (v52)
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
          _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null success, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v48 = __nwlog_obj();
        v53 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
          _os_log_impl(&dword_181A37000, v48, v53, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_89:
    if (v47)
    {
      free(v47);
    }

    return;
  }

  v13 = a2;
  v55 = HIDWORD(v63[0]);
  do
  {
    if (nw_nat64_synthesize_v6(a3, &v55, &__src[4]))
    {
      address = _nw_endpoint_create_address(__src);
      v15 = address;
      if (address)
      {
        nw_endpoint_set_parent_endpoint(address, *(*(a1 + 32) + 24), 0);
        v16 = *(*(a1 + 32) + 168);
        if (v16)
        {
          _nw_array_append(v16, v15);
        }

        goto LABEL_18;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
      v23 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (__nwlog_fault(v23, type, &v54))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v25 = type[0];
          if (os_log_type_enabled(v24, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_endpoint_create_address failed", buf, 0xCu);
          }
        }

        else if (v54 == 1)
        {
          v34 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v35 = type[0];
          v36 = os_log_type_enabled(v24, type[0]);
          if (v34)
          {
            if (v36)
            {
              *buf = 136446466;
              *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = v34;
              _os_log_impl(&dword_181A37000, v24, v35, "%{public}s nw_endpoint_create_address failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v34);
            if (!v23)
            {
              goto LABEL_18;
            }

            goto LABEL_38;
          }

          if (v36)
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
            _os_log_impl(&dword_181A37000, v24, v35, "%{public}s nw_endpoint_create_address failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v37 = type[0];
          if (os_log_type_enabled(v24, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_dns_service_locked_block_invoke";
            _os_log_impl(&dword_181A37000, v24, v37, "%{public}s nw_endpoint_create_address failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v23)
      {
        goto LABEL_18;
      }

LABEL_38:
      free(v23);
      goto LABEL_18;
    }

    v62 = 0;
    memset(buf, 0, sizeof(buf));
    nw_nat64_write_prefix_to_string(a3, buf, 0x32u);
    v17 = *(a1 + 32);
    if (!v17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v26 = *(*(a1 + 32) + 24);
      v27 = v26;
      if (v26)
      {
        logging_description = _nw_endpoint_get_logging_description(v26);
      }

      else
      {
        logging_description = "<NULL>";
      }

      *type = 136446722;
      v58 = "nw_resolver_create_dns_service_locked_block_invoke";
      v59 = 2082;
      *v60 = logging_description;
      *&v60[8] = 2082;
      *&v60[10] = buf;
      v38 = v15;
      v39 = "%{public}s failed to synthesize IPv4 address %{public}s with prefix %{public}s";
      v40 = 32;
      goto LABEL_60;
    }

    if ((*(v17 + 370) & 0x20) == 0)
    {
      if (*(v17 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = *(v18 + 24);
          v20 = v19;
          if (v19)
          {
            v21 = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            v21 = "<NULL>";
          }

          *type = 136446978;
          v58 = "nw_resolver_create_dns_service_locked_block_invoke";
          v59 = 2082;
          *v60 = v18 + 280;
          *&v60[8] = 2082;
          *&v60[10] = v21;
          *&v60[18] = 2082;
          *&v60[20] = buf;
          v38 = v15;
          v39 = "%{public}s [C%{public}s] failed to synthesize IPv4 address %{public}s with prefix %{public}s";
          v40 = 42;
          goto LABEL_60;
        }

LABEL_18:

        goto LABEL_19;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v29 = *(a1 + 32);
      v30 = *(v29 + 364);
      v31 = *(v29 + 24);
      v32 = v31;
      if (v31)
      {
        v33 = _nw_endpoint_get_logging_description(v31);
      }

      else
      {
        v33 = "<NULL>";
      }

      *type = 136446978;
      v58 = "nw_resolver_create_dns_service_locked_block_invoke";
      v59 = 1024;
      *v60 = v30;
      *&v60[4] = 2082;
      *&v60[6] = v33;
      *&v60[14] = 2082;
      *&v60[16] = buf;
      v38 = v15;
      v39 = "%{public}s [R%u] failed to synthesize IPv4 address %{public}s with prefix %{public}s";
      v40 = 38;
LABEL_60:
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, v39, type, v40);
      goto LABEL_18;
    }

LABEL_19:
    a3 += 4;
    --v13;
  }

  while (v13);
  v6 = *(a1 + 32);
LABEL_66:
  v41 = *(v6 + 168);
  v42 = *(v6 + 24);
  if (v41)
  {
    v43 = v42 == 0;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    _nw_array_append(v41, v42);
    v6 = *(a1 + 32);
  }

  *(v6 + 84) = 0;
  v45 = *(a1 + 32);
  v44 = (a1 + 32);
  nw_resolver_update_status_locked(v45, 0);
  dispatch_group_leave(*&(*v44)[10]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(*v44 + 3);
}

uint64_t ___ZL37nw_resolver_create_dns_service_lockedP22NWConcrete_nw_resolver_block_invoke_267(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v24 = 136446210;
      v25 = "nw_resolver_create_dns_service_locked_block_invoke";
      v12 = "%{public}s Accessing key 'ipa'";
      v13 = v10;
      v14 = 12;
LABEL_12:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v12, &v24, v14);
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*(v9 + 370) & 0x20) == 0)
  {
    if (*(v9 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 32) + 280;
      v24 = 136446466;
      v25 = "nw_resolver_create_dns_service_locked_block_invoke";
      v26 = 2082;
      v27 = v11;
      v12 = "%{public}s [C%{public}s] Accessing key 'ipa'";
      v13 = v10;
      v14 = 22;
      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = *(*(a1 + 32) + 364);
      v24 = 136446466;
      v25 = "nw_resolver_create_dns_service_locked_block_invoke";
      v26 = 1024;
      LODWORD(v27) = v15;
      v12 = "%{public}s [R%u] Accessing key 'ipa'";
      v13 = v10;
      v14 = 18;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a3 && a4 && a5)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      if ((*(v16 + 370) & 0x20) != 0)
      {
LABEL_30:
        *(*(*(a1 + 40) + 8) + 24) = 1;
        return 1;
      }

      if (*(v16 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v17 = gconnectionLogObj;
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        v18 = *(a1 + 32) + 280;
        v24 = 136446466;
        v25 = "nw_resolver_create_dns_service_locked_block_invoke";
        v26 = 2082;
        v27 = v18;
        v19 = "%{public}s [C%{public}s] Value is present, setting isWifiAware";
        v20 = v17;
        v21 = 22;
        goto LABEL_28;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = *(*(a1 + 32) + 364);
        v24 = 136446466;
        v25 = "nw_resolver_create_dns_service_locked_block_invoke";
        v26 = 1024;
        LODWORD(v27) = v22;
        v19 = "%{public}s [R%u] Value is present, setting isWifiAware";
        v20 = v17;
        v21 = 18;
        goto LABEL_28;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v24 = 136446210;
        v25 = "nw_resolver_create_dns_service_locked_block_invoke";
        v19 = "%{public}s Value is present, setting isWifiAware";
        v20 = v17;
        v21 = 12;
LABEL_28:
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, v19, &v24, v21);
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  return 1;
}

void nw_resolver_srv_resolve_callback(_DNSServiceRef_t *a1, int a2, int a3, int a4, const char *a5, int a6, int a7, unsigned int a8, unsigned __int16 *a9, unsigned int a10, void *a11)
{
  v90 = *MEMORY[0x1E69E9840];
  v17 = a11;
  v18 = v17;
  if (!v17)
  {
    v57 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_resolver_srv_resolve_callback";
    v58 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (__nwlog_fault(v58, type, &v82))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v60 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v82 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v62 = type[0];
        v63 = os_log_type_enabled(v59, type[0]);
        if (backtrace_string)
        {
          if (v63)
          {
            *buf = 136446466;
            *&buf[4] = "nw_resolver_srv_resolve_callback";
            v84 = 2082;
            *v85 = backtrace_string;
            _os_log_impl(&dword_181A37000, v59, v62, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_112;
        }

        if (v63)
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          _os_log_impl(&dword_181A37000, v59, v62, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v59 = __nwlog_obj();
        v64 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_112:
    if (v58)
    {
      free(v58);
    }

    goto LABEL_25;
  }

  if ((v17[370] & 0x20) == 0)
  {
    if (v17[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v19 = gconnectionLogObj;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 136448514;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 2082;
      *v85 = v18 + 280;
      *&v85[8] = 1024;
      *&v85[10] = a2;
      *&v85[14] = 1024;
      *&v85[16] = a3;
      *&v85[20] = 1024;
      *&v85[22] = a4;
      *&v85[26] = 2082;
      *&v85[28] = a5;
      *&v85[36] = 1024;
      *v86 = a6;
      *&v86[4] = 1024;
      *v87 = a7;
      *&v87[4] = 1024;
      *v88 = a8;
      *&v88[4] = 1024;
      v89 = a10;
      v20 = "%{public}s [C%{public}s] flags=0x%x ifindex=%u errorCode=%d name=%{public}s rrtype=%u rrclass=%u rdlen=%u, ttl=%u";
      v21 = v19;
      v22 = 74;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        goto LABEL_12;
      }

      v23 = *(v18 + 91);
      *buf = 136448514;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 1024;
      *v85 = v23;
      *&v85[4] = 1024;
      *&v85[6] = a2;
      *&v85[10] = 1024;
      *&v85[12] = a3;
      *&v85[16] = 1024;
      *&v85[18] = a4;
      *&v85[22] = 2082;
      *&v85[24] = a5;
      *&v85[32] = 1024;
      *&v85[34] = a6;
      *v86 = 1024;
      *&v86[2] = a7;
      *v87 = 1024;
      *&v87[2] = a8;
      *v88 = 1024;
      *&v88[2] = a10;
      v20 = "%{public}s [R%u] flags=0x%x ifindex=%u errorCode=%d name=%{public}s rrtype=%u rrclass=%u rdlen=%u, ttl=%u";
      v21 = v19;
      v22 = 70;
    }

    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_lock(v18 + 3);
  if (!a1 || *(v18 + 9) != a1)
  {
    if ((v18[370] & 0x20) == 0)
    {
      if (v18[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(v18 + 9);
          *buf = 136447234;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          v84 = 2082;
          *v85 = v18 + 280;
          *&v85[8] = 2048;
          *&v85[10] = a1;
          *&v85[18] = 2048;
          *&v85[20] = v18;
          *&v85[28] = 2048;
          *&v85[30] = v25;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s] Skipped, service %p, resolver %p -> %p", buf, 0x34u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v18 + 91);
          v27 = *(v18 + 9);
          *buf = 136447234;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          v84 = 1024;
          *v85 = v26;
          *&v85[4] = 2048;
          *&v85[6] = a1;
          *&v85[14] = 2048;
          *&v85[16] = v18;
          *&v85[24] = 2048;
          *&v85[26] = v27;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [R%u] Skipped, service %p, resolver %p -> %p", buf, 0x30u);
        }
      }
    }

    goto LABEL_24;
  }

  v28 = a2;
  *(v18 + 44) = *(v18 + 44) & 0xFFEF | (16 * (a2 & 1));
  if (a4)
  {
    if (a4 != -65569 || *(v18 + 2) == 2)
    {
      *(v18 + 21) = a4;
      if (a2)
      {
LABEL_24:
        os_unfair_lock_unlock(v18 + 3);
LABEL_25:

        return;
      }

LABEL_30:
      nw_resolver_update_status_locked(v18, 0);
      goto LABEL_24;
    }

    if ((v18[370] & 0x20) != 0)
    {
LABEL_59:
      nw_resolver_restart_dns_service_locked(v18);
      goto LABEL_24;
    }

    if (v18[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      *buf = 136446722;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 2082;
      *v85 = v18 + 280;
      *&v85[8] = 2048;
      *&v85[10] = v18;
      v34 = "%{public}s [C%{public}s] restarting resolver %p, defunct connection";
      v35 = v33;
      v36 = 32;
    }

    else
    {
      v33 = __nwlog_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
LABEL_58:

        goto LABEL_59;
      }

      v44 = *(v18 + 91);
      *buf = 136446722;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 1024;
      *v85 = v44;
      *&v85[4] = 2048;
      *&v85[6] = v18;
      v34 = "%{public}s [R%u] restarting resolver %p, defunct connection";
      v35 = v33;
      v36 = 28;
    }

    _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_INFO, v34, buf, v36);
    goto LABEL_58;
  }

  if (a6 != 33)
  {
    if ((v18[370] & 0x20) == 0)
    {
      if (v18[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v37 = gconnectionLogObj;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          v84 = 2082;
          *v85 = v18 + 280;
          *&v85[8] = 1024;
          *&v85[10] = a6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s] Ignore record of type: %u", buf, 0x1Cu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(v18 + 91);
          *buf = 136446722;
          *&buf[4] = "nw_resolver_srv_resolve_callback";
          v84 = 1024;
          *v85 = v45;
          *&v85[4] = 1024;
          *&v85[6] = a6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s [R%u] Ignore record of type: %u", buf, 0x18u);
        }
      }
    }

    goto LABEL_24;
  }

  if (a8 <= 5)
  {
    if ((v18[370] & 0x20) != 0)
    {
LABEL_78:
      *(v18 + 21) = -65549;
      goto LABEL_24;
    }

    if (v18[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v29 = gconnectionLogObj;
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      *buf = 136446722;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 2082;
      *v85 = v18 + 280;
      *&v85[8] = 1024;
      *&v85[10] = a8;
      v30 = "%{public}s [C%{public}s] Invalid SRV length: %u";
      v31 = v29;
      v32 = 28;
    }

    else
    {
      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_77:

        goto LABEL_78;
      }

      v52 = *(v18 + 91);
      *buf = 136446722;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 1024;
      *v85 = v52;
      *&v85[4] = 1024;
      *&v85[6] = a8;
      v30 = "%{public}s [R%u] Invalid SRV length: %u";
      v31 = v29;
      v32 = 24;
    }

    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_77;
  }

  v67 = *a9;
  v68 = a9[1];
  v38 = a9[2];
  v39 = a8 - 6;
  if (a8 == 6)
  {
    v65 = __nwlog_obj();
    os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_resolver_srv_resolve_callback";
    v66 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v66))
    {
      goto LABEL_116;
    }

    free(v66);
    v28 = a2;
  }

  v40 = v39;
  v41 = malloc_type_calloc(1uLL, v39, 0x74033D0EuLL);
  v42 = v41;
  if (v41)
  {
    *type = a9 + 3;
    v43 = nw_resolver_parse_rdata(v41, v39, type);
    goto LABEL_65;
  }

  v46 = __nwlog_obj();
  os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_resolver_srv_resolve_callback";
  v84 = 2048;
  *v85 = 1;
  *&v85[8] = 2048;
  *&v85[10] = v39;
  v47 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v47))
  {
    free(v47);
    *type = a9 + 3;
    v43 = nw_resolver_parse_rdata(0, v40, type);
    v28 = a2;
LABEL_65:
    if ((v43 & 0x80000000) == 0)
    {
      if ((v28 & 2) != 0)
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v42, __rev16(v38));
        v54 = host_with_numeric_port;
        if (host_with_numeric_port)
        {
          nw_endpoint_set_parent_endpoint(host_with_numeric_port, *(v18 + 3), 0);
          nw_endpoint_set_weight(v54, __rev16(v68));
          nw_endpoint_set_priority(v54, __rev16(v67));
          *buf = 0;
          ValidationData = DNSServiceGetValidationData();
          if (ValidationData && *buf)
          {
            nw_endpoint_set_signature(v54, ValidationData, *buf);
          }

          if (nw_resolver_set_interface_on_endpoint(v18, a3, v54))
          {
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = ___ZL32nw_resolver_srv_resolve_callbackP16_DNSServiceRef_tjjiPKctttPKvjPv_block_invoke;
            v76[3] = &__block_descriptor_50_e63_B24__0__NSObject_OS_nw_endpoint__8__NSObject_OS_nw_endpoint__16l;
            v76[4] = v42;
            v78 = v67;
            v79 = v68;
            v80 = v38;
            v77 = a3;
            nw_resolver_insert_endpoint_locked(v18, v54, v76);
          }
        }
      }

      else
      {
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = ___ZL32nw_resolver_srv_resolve_callbackP16_DNSServiceRef_tjjiPKctttPKvjPv_block_invoke_2;
        v71[3] = &__block_descriptor_50_e63_B24__0__NSObject_OS_nw_endpoint__8__NSObject_OS_nw_endpoint__16l;
        v71[4] = v42;
        v73 = v67;
        v74 = v68;
        v75 = v38;
        v72 = a3;
        nw_resolver_remove_endpoint_locked(v18, v71);
      }

      if (v42)
      {
        free(v42);
      }

      if (a2)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    if ((v18[370] & 0x20) != 0)
    {
LABEL_94:
      *(v18 + 21) = -65549;
      if (v42)
      {
        free(v42);
      }

      goto LABEL_24;
    }

    if (v18[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v48 = gconnectionLogObj;
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_93;
      }

      *buf = 136446466;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 2082;
      *v85 = v18 + 280;
      v49 = "%{public}s [C%{public}s] Invalid SRV host";
      v50 = v48;
      v51 = 22;
    }

    else
    {
      v48 = __nwlog_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
LABEL_93:

        goto LABEL_94;
      }

      v56 = *(v18 + 91);
      *buf = 136446466;
      *&buf[4] = "nw_resolver_srv_resolve_callback";
      v84 = 1024;
      *v85 = v56;
      v49 = "%{public}s [R%u] Invalid SRV host";
      v50 = v48;
      v51 = 18;
    }

    _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
    goto LABEL_93;
  }

LABEL_116:
  __break(1u);
}

void nw_resolver_restart_dns_service_locked(NWConcrete_nw_resolver *a1)
{
  v3 = a1;
  nw_resolver_cancel_query_locked(v3, 1);
  nw_resolver_cancel_delayed_reporting_timer(v3);
  nw_resolver_cancel_query_timer(v3);
  v1 = _nw_array_create();
  v2 = *(v3 + 21);
  *(v3 + 21) = v1;

  *(v3 + 68) = 0;
  nw_resolver_create_dns_service_locked(v3);
}

uint64_t nw_resolver_parse_rdata(char *__str, uint64_t a2, const unsigned __int8 **a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a3;
  if (!*a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = &__str[a2];
    v7 = __str;
    v8 = __str;
    while (1)
    {
      v9 = snprintf(v8, v6 - v8, "%.*s.", v5, v4 + 1);
      if ((v9 & 0x80000000) != 0 || v6 - v8 <= v9)
      {
        return 0xFFFFFFFFLL;
      }

      v8 += v9;
      v4 = &(*a3)[**a3 + 1];
      *a3 = v4;
      v5 = *v4;
      if (!*v4)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = __str;
  LODWORD(v8) = __str;
LABEL_12:
  *a3 = v4 + 1;
  return (v8 - v7);
}

void nw_resolver_ptr_resolve_callback(_DNSServiceRef_t *a1, int a2, int a3, int a4, const char *a5, int a6, unsigned __int16 a7, unsigned __int16 a8, const char *a9, unsigned int a10, void *a11)
{
  v81 = *MEMORY[0x1E69E9840];
  v16 = a11;
  if (!v16)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_resolver_ptr_resolve_callback";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (__nwlog_fault(v18, &type, &v75))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v57 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v57, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_ptr_resolve_callback";
          _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v75 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v57 = __nwlog_obj();
        v60 = type;
        v61 = os_log_type_enabled(v57, type);
        if (backtrace_string)
        {
          if (v61)
          {
            *buf = 136446466;
            *&buf[4] = "nw_resolver_ptr_resolve_callback";
            v78 = 2082;
            *v79 = backtrace_string;
            _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v18)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (v61)
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_ptr_resolve_callback";
          _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v57 = __nwlog_obj();
        v62 = type;
        if (os_log_type_enabled(v57, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_ptr_resolve_callback";
          _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v18)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v17 = malloc_type_calloc(1uLL, 0x100uLL, 0x5855BDA6uLL);
  v18 = v17;
  v19 = a9;
  v64 = a6;
  if (v17)
  {
    if (a9)
    {
      LODWORD(v20) = v17;
      v63 = a4;
      v21 = a2;
      v22 = a3;
      v23 = *a9;
      if (*a9)
      {
        v20 = v17;
        v24 = v17 + 256;
        while (1)
        {
          v25 = snprintf(v20, v24 - v20, "%.*s.", v23, v19 + 1);
          if ((v25 & 0x80000000) != 0 || v24 - v20 <= v25)
          {
            break;
          }

          v20 += v25;
          v26 = &v19[*v19];
          v27 = v26[1];
          v19 = (v26 + 1);
          v23 = v27;
          if (!v27)
          {
            goto LABEL_9;
          }
        }

        LODWORD(v20) = -1;
      }

      else
      {
LABEL_9:
        LODWORD(v20) = v20 - v18;
      }

      a3 = v22;
      a2 = v21;
      a4 = v63;
      if ((v16[370] & 0x20) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_resolver_ptr_resolve_callback";
  v78 = 2048;
  *v79 = 1;
  *&v79[8] = 2048;
  *&v79[10] = 256;
  v29 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v29))
  {
    free(v29);
    if (a9)
    {
      v30 = *a9;
      if (*a9)
      {
        v20 = 0;
        while (1)
        {
          v31 = snprintf(v20, 256 - v20, "%.*s.", v30, v19 + 1);
          if ((v31 & 0x80000000) != 0 || 256 - v20 <= v31)
          {
            break;
          }

          v20 += v31;
          v32 = &v19[*v19];
          v33 = v32[1];
          v19 = (v32 + 1);
          v30 = v33;
          if (!v33)
          {
            goto LABEL_24;
          }
        }

        LODWORD(v20) = -1;
LABEL_24:
        v18 = 0;
        if ((v16[370] & 0x20) != 0)
        {
LABEL_36:
          os_unfair_lock_lock(v16 + 3);
          if (!a1 || !v18 || (v20 & 0x80000000) != 0 || *(v16 + 9) != a1)
          {
            if ((v16[370] & 0x20) != 0)
            {
              goto LABEL_50;
            }

            if (v16[280])
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v39 = gconnectionLogObj;
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_49;
              }

              v40 = *(v16 + 9);
              *buf = 136447234;
              *&buf[4] = "nw_resolver_ptr_resolve_callback";
              v78 = 2082;
              *v79 = v16 + 280;
              *&v79[8] = 2048;
              *&v79[10] = a1;
              *&v79[18] = 2048;
              *&v79[20] = v16;
              *&v79[28] = 2048;
              *&v79[30] = v40;
              v41 = "%{public}s [C%{public}s] Skipped, service %p, resolver %p -> %p";
              v42 = v39;
              v43 = 52;
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v39 = gLogObj;
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
LABEL_49:

LABEL_50:
                os_unfair_lock_unlock(v16 + 3);
                if (!v18)
                {
                  goto LABEL_82;
                }

                goto LABEL_81;
              }

              v44 = *(v16 + 91);
              v45 = *(v16 + 9);
              *buf = 136447234;
              *&buf[4] = "nw_resolver_ptr_resolve_callback";
              v78 = 1024;
              *v79 = v44;
              *&v79[4] = 2048;
              *&v79[6] = a1;
              *&v79[14] = 2048;
              *&v79[16] = v16;
              *&v79[24] = 2048;
              *&v79[26] = v45;
              v41 = "%{public}s [R%u] Skipped, service %p, resolver %p -> %p";
              v42 = v39;
              v43 = 48;
            }

            _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, v41, buf, v43);
            goto LABEL_49;
          }

          if (a4)
          {
            if (a4 != -65554)
            {
              if (a4 != -65569 || *(v16 + 2) == 2)
              {
                goto LABEL_80;
              }

              if ((v16[370] & 0x20) != 0)
              {
                goto LABEL_79;
              }

              if (v16[280])
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v46 = gconnectionLogObj;
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_78;
                }

                *buf = 136446722;
                *&buf[4] = "nw_resolver_ptr_resolve_callback";
                v78 = 2082;
                *v79 = v16 + 280;
                *&v79[8] = 2048;
                *&v79[10] = v16;
                v47 = "%{public}s [C%{public}s] restarting resolver %p, defunct connection";
                v48 = v46;
                v49 = 32;
              }

              else
              {
                v46 = __nwlog_obj();
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
LABEL_78:

LABEL_79:
                  nw_resolver_restart_dns_service_locked(v16);
                  goto LABEL_80;
                }

                v55 = *(v16 + 91);
                *buf = 136446722;
                *&buf[4] = "nw_resolver_ptr_resolve_callback";
                v78 = 1024;
                *v79 = v55;
                *&v79[4] = 2048;
                *&v79[6] = v16;
                v47 = "%{public}s [R%u] restarting resolver %p, defunct connection";
                v48 = v46;
                v49 = 28;
              }

              _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, v47, buf, v49);
              goto LABEL_78;
            }

            if (*(v16 + 44))
            {
LABEL_80:
              os_unfair_lock_unlock(v16 + 3);
LABEL_81:
              free(v18);
LABEL_82:

              return;
            }

            *(v16 + 44) = 1;
          }

          else
          {
            if (v64 != 12)
            {
              goto LABEL_80;
            }

            if ((a2 & 2) != 0)
            {
              *(v16 + 44) = 4;
              port = nw_endpoint_get_port(*(v16 + 3));
              host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v18, port);
              nw_endpoint_set_parent_endpoint(host_with_numeric_port, *(v16 + 3), 0);
              *buf = 0;
              ValidationData = DNSServiceGetValidationData();
              if (ValidationData && *buf)
              {
                nw_endpoint_set_signature(host_with_numeric_port, ValidationData, *buf);
              }

              if (!nw_resolver_set_interface_on_endpoint(v16, a3, host_with_numeric_port))
              {

                goto LABEL_80;
              }

              v70[0] = MEMORY[0x1E69E9820];
              v70[1] = 3221225472;
              v70[2] = ___ZL32nw_resolver_ptr_resolve_callbackP16_DNSServiceRef_tjjiPKctttPKvjPv_block_invoke;
              v70[3] = &unk_1E6A2C6C8;
              v72 = v18;
              v71 = v16;
              v73 = a3;
              v74 = (a2 & 2) >> 1;
              inserted = nw_resolver_insert_endpoint_locked(v71, host_with_numeric_port, v70);

              if ((inserted & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              *(v16 + 44) = 0;
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3221225472;
              v65[2] = ___ZL32nw_resolver_ptr_resolve_callbackP16_DNSServiceRef_tjjiPKctttPKvjPv_block_invoke_2;
              v65[3] = &unk_1E6A2C6C8;
              v67 = v18;
              v66 = v16;
              v68 = a3;
              v69 = 0;
              v50 = nw_resolver_remove_endpoint_locked(v66, v65);

              if (!v50)
              {
                goto LABEL_80;
              }
            }
          }

          nw_resolver_update_status_locked(v16, 0);
          goto LABEL_80;
        }
      }

      else
      {
        LODWORD(v20) = 0;
        if ((v16[370] & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

LABEL_27:
      if (v16[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v34 = gconnectionLogObj;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        *buf = 136447746;
        *&buf[4] = "nw_resolver_ptr_resolve_callback";
        v78 = 2082;
        *v79 = v16 + 280;
        *&v79[8] = 1024;
        *&v79[10] = a2;
        *&v79[14] = 1024;
        *&v79[16] = a3;
        *&v79[20] = 1024;
        *&v79[22] = a4;
        *&v79[26] = 2082;
        *&v79[28] = v18;
        *&v79[36] = 1024;
        v80 = a10;
        v35 = "%{public}s [C%{public}s] flags=0x%x ifindex=%u errorCode=%d hostname=%{public}s ttl=%u";
        v36 = v34;
        v37 = 56;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
LABEL_35:

          goto LABEL_36;
        }

        v38 = *(v16 + 91);
        *buf = 136447746;
        *&buf[4] = "nw_resolver_ptr_resolve_callback";
        v78 = 1024;
        *v79 = v38;
        *&v79[4] = 1024;
        *&v79[6] = a2;
        *&v79[10] = 1024;
        *&v79[12] = a3;
        *&v79[16] = 1024;
        *&v79[18] = a4;
        *&v79[22] = 2082;
        *&v79[24] = v18;
        *&v79[32] = 1024;
        *&v79[34] = a10;
        v35 = "%{public}s [R%u] flags=0x%x ifindex=%u errorCode=%d hostname=%{public}s ttl=%u";
        v36 = v34;
        v37 = 52;
      }

      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, v35, buf, v37);
      goto LABEL_35;
    }

LABEL_18:
    LODWORD(v20) = -1;
    if ((v16[370] & 0x20) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  __break(1u);
}

BOOL ___ZL32nw_resolver_ptr_resolve_callbackP16_DNSServiceRef_tjjiPKctttPKvjPv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  port = nw_endpoint_get_port(*(*(a1 + 32) + 24));
  v6 = nw_endpoint_host_endpoint_matches_hostname(v3, v4, __rev16(port), *(a1 + 48), *(a1 + 52));

  return v6;
}

BOOL ___ZL32nw_resolver_ptr_resolve_callbackP16_DNSServiceRef_tjjiPKctttPKvjPv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  port = nw_endpoint_get_port(*(*(a1 + 32) + 24));
  v6 = nw_endpoint_host_endpoint_matches_hostname(v3, v4, __rev16(port), *(a1 + 48), *(a1 + 52));

  return v6;
}

void nw_resolver_bonjour_resolve_callback(_DNSServiceRef_t *a1, int a2, int a3, int a4, const char *a5, const char *a6, unsigned int a7, unsigned int a8, uint8_t *txt_bytes, void *a10)
{
  v100 = *MEMORY[0x1E69E9840];
  v18 = a10;
  v19 = v18;
  if (v18)
  {
    v20 = __rev16(a7);
    if ((v18[370] & 0x20) != 0)
    {
      goto LABEL_12;
    }

    if (v18[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v21 = gconnectionLogObj;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 136448002;
      v96 = "nw_resolver_bonjour_resolve_callback";
      v97 = 2082;
      *v98 = v19 + 280;
      *&v98[8] = 1024;
      *&v98[10] = a2;
      *&v98[14] = 1024;
      *&v98[16] = a3;
      *&v98[20] = 1024;
      *&v98[22] = a4;
      *&v98[26] = 2082;
      *&v98[28] = a5;
      *&v98[36] = 2082;
      *&v98[38] = a6;
      *&v98[46] = 1024;
      v99 = v20;
      v22 = "%{public}s [C%{public}s] flags=0x%x ifindex=%u errorCode=%d name=%{public}s target=%{public}s port=%u";
      v23 = v21;
      v24 = 66;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

LABEL_12:
        os_unfair_lock_lock(v19 + 3);
        if (!a1 || *(v19 + 9) != a1)
        {
          if ((v19[370] & 0x20) != 0)
          {
LABEL_24:
            os_unfair_lock_unlock(v19 + 3);
            goto LABEL_25;
          }

          if (v19[280])
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v26 = gconnectionLogObj;
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_23;
            }

            v27 = *(v19 + 9);
            *buf = 136447234;
            v96 = "nw_resolver_bonjour_resolve_callback";
            v97 = 2082;
            *v98 = v19 + 280;
            *&v98[8] = 2048;
            *&v98[10] = a1;
            *&v98[18] = 2048;
            *&v98[20] = v19;
            *&v98[28] = 2048;
            *&v98[30] = v27;
            v28 = "%{public}s [C%{public}s] Skipped, service %p, resolver %p -> %p";
            v29 = v26;
            v30 = 52;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v26 = gLogObj;
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
LABEL_23:

              goto LABEL_24;
            }

            v31 = *(v19 + 91);
            v32 = *(v19 + 9);
            *buf = 136447234;
            v96 = "nw_resolver_bonjour_resolve_callback";
            v97 = 1024;
            *v98 = v31;
            *&v98[4] = 2048;
            *&v98[6] = a1;
            *&v98[14] = 2048;
            *&v98[16] = v19;
            *&v98[24] = 2048;
            *&v98[26] = v32;
            v28 = "%{public}s [R%u] Skipped, service %p, resolver %p -> %p";
            v29 = v26;
            v30 = 48;
          }

          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, v28, buf, v30);
          goto LABEL_23;
        }

        if (a4)
        {
          if (a4 != -65569 || *(v19 + 2) == 2)
          {
            *(v19 + 21) = a4;
            goto LABEL_112;
          }

          if ((v19[370] & 0x20) != 0)
          {
LABEL_50:
            nw_resolver_restart_dns_service_locked(v19);
            goto LABEL_24;
          }

          if (v19[280])
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v40 = gconnectionLogObj;
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              goto LABEL_49;
            }

            *buf = 136446722;
            v96 = "nw_resolver_bonjour_resolve_callback";
            v97 = 2082;
            *v98 = v19 + 280;
            *&v98[8] = 2048;
            *&v98[10] = v19;
            v41 = "%{public}s [C%{public}s] restarting resolver %p, defunct connection";
            v42 = v40;
            v43 = 32;
          }

          else
          {
            v40 = __nwlog_obj();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
LABEL_49:

              goto LABEL_50;
            }

            v44 = *(v19 + 91);
            *buf = 136446722;
            v96 = "nw_resolver_bonjour_resolve_callback";
            v97 = 1024;
            *v98 = v44;
            *&v98[4] = 2048;
            *&v98[6] = v19;
            v41 = "%{public}s [R%u] restarting resolver %p, defunct connection";
            v42 = v40;
            v43 = 28;
          }

          _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, v41, buf, v43);
          goto LABEL_49;
        }

        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(a6, v20);
        v34 = host_with_numeric_port;
        if (!host_with_numeric_port)
        {
LABEL_111:

LABEL_112:
          if ((a2 & 1) == 0)
          {
            nw_resolver_update_status_locked(v19, 0);
          }

          goto LABEL_24;
        }

        nw_endpoint_set_parent_endpoint(host_with_numeric_port, *(v19 + 3), 0);
        v35 = nw_txt_record_create_with_bytes(txt_bytes, a8);
        nw_endpoint_set_txt_record(v34, v35);
        *type = 0;
        DNSServiceGetValidationData();
        if (!nw_resolver_set_interface_on_endpoint(v19, a3, v34))
        {
LABEL_110:

          goto LABEL_111;
        }

        if (!nw_parameters_has_preferred_interface_subtypes(*(v19 + 2)))
        {
          goto LABEL_66;
        }

        v93 = nw_resolver_derive_service_flags(v19, *(v19 + 3), *(v19 + 2));
        if (!nw_resolver_get_scoped_interface_index(v19, &v93))
        {
          v45 = nw_parameters_copy_preferred_interface_subtypes(*(v19 + 2));
          v46 = v45;
          if (v45 && xpc_array_get_count(v45))
          {
            v47 = nw_interface_create_with_index(a3);
            subtype = nw_interface_get_subtype(v47);
            v49 = 0;
            while (1)
            {
              count = xpc_array_get_count(v46);
              v51 = v49 < count;
              if (v49 >= count)
              {
                break;
              }

              uint64 = xpc_array_get_uint64(v46, v49++);
              if (subtype == uint64)
              {
                if ((v19[370] & 0x20) != 0)
                {
                  break;
                }

                if (v19[280])
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v53 = gconnectionLogObj;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446466;
                    v96 = "nw_resolver_bonjour_resolve_callback";
                    v97 = 2082;
                    *v98 = v19 + 280;
                    v54 = "%{public}s [C%{public}s] Found a preferred endpoint for interface subtypes";
                    v55 = v53;
                    v56 = 22;
                    goto LABEL_121;
                  }
                }

                else
                {
                  v53 = __nwlog_obj();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    v86 = *(v19 + 91);
                    *buf = 136446466;
                    v96 = "nw_resolver_bonjour_resolve_callback";
                    v97 = 1024;
                    *v98 = v86;
                    v54 = "%{public}s [R%u] Found a preferred endpoint for interface subtypes";
                    v55 = v53;
                    v56 = 18;
LABEL_121:
                    _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, v54, buf, v56);
                  }
                }

                break;
              }
            }

LABEL_82:
            if (!v51 && (v19[372] & 2) == 0)
            {
              goto LABEL_84;
            }

LABEL_92:
            if ((v19[370] & 0x20) != 0)
            {
LABEL_102:
              nw_resolver_insert_endpoint_locked(v19, v34, &__block_literal_global_290);
              goto LABEL_110;
            }

            if (v19[280])
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v73 = gconnectionLogObj;
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                goto LABEL_101;
              }

              *buf = 136446722;
              v96 = "nw_resolver_bonjour_resolve_callback";
              v97 = 2082;
              *v98 = v19 + 280;
              *&v98[8] = 2112;
              *&v98[10] = v34;
              v74 = "%{public}s [C%{public}s] Inserting host endpoint %@ directly";
              v75 = v73;
              v76 = 32;
            }

            else
            {
              v73 = __nwlog_obj();
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
LABEL_101:

                goto LABEL_102;
              }

              v77 = *(v19 + 91);
              *buf = 136446722;
              v96 = "nw_resolver_bonjour_resolve_callback";
              v97 = 1024;
              *v98 = v77;
              *&v98[4] = 2112;
              *&v98[6] = v34;
              v74 = "%{public}s [R%u] Inserting host endpoint %@ directly";
              v75 = v73;
              v76 = 28;
            }

            _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_INFO, v74, buf, v76);
            goto LABEL_101;
          }

LABEL_81:
          v51 = 0;
          goto LABEL_82;
        }

        if ((v19[370] & 0x20) != 0)
        {
LABEL_66:
          v58 = nw_parameters_execute_endpoint_resolution_preference_handler(*(v19 + 2), v34);
          if ((v19[370] & 0x20) != 0)
          {
LABEL_76:
            if (v58 == 1)
            {
              goto LABEL_92;
            }

            if (v58 == 2)
            {
              if ((v19[372] & 2) != 0)
              {
                goto LABEL_110;
              }

LABEL_84:
              if (!*(v19 + 23))
              {
                v64 = *(v19 + 4);
                v91[0] = MEMORY[0x1E69E9820];
                v91[1] = 3221225472;
                v91[2] = ___ZL36nw_resolver_bonjour_resolve_callbackP16_DNSServiceRef_tjjiPKcS2_ttPKhPv_block_invoke;
                v91[3] = &unk_1E6A3D868;
                v92 = v19;
                source = nw_queue_context_create_source(v64, 2, 3, 0, v91, 0);
                *(v19 + 23) = source;
                v66 = source;
                v67 = dispatch_time(0x8000000000000000, 1000000000);
                nw_queue_set_timer_values(v66, v67, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
                nw_queue_activate_source(*(v19 + 23), v68);
              }

              if ((v19[370] & 0x20) != 0)
              {
                goto LABEL_107;
              }

              if (v19[280])
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v69 = gconnectionLogObj;
                if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_106;
                }

                *buf = 136446722;
                v96 = "nw_resolver_bonjour_resolve_callback";
                v97 = 2082;
                *v98 = v19 + 280;
                *&v98[8] = 2112;
                *&v98[10] = v34;
                v70 = "%{public}s [C%{public}s] Appending non-preferred host endpoint (%@) to array";
                v71 = v69;
                v72 = 32;
              }

              else
              {
                v69 = __nwlog_obj();
                if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
LABEL_106:

LABEL_107:
                  v79 = *(v19 + 22);
                  if (v79 || (v80 = _nw_array_create(), v81 = *(v19 + 22), *(v19 + 22) = v80, v81, (v79 = *(v19 + 22)) != 0))
                  {
                    _nw_array_append(v79, v34);
                  }

                  goto LABEL_110;
                }

                v78 = *(v19 + 91);
                *buf = 136446722;
                v96 = "nw_resolver_bonjour_resolve_callback";
                v97 = 1024;
                *v98 = v78;
                *&v98[4] = 2112;
                *&v98[6] = v34;
                v70 = "%{public}s [R%u] Appending non-preferred host endpoint (%@) to array";
                v71 = v69;
                v72 = 28;
              }

              _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, v70, buf, v72);
              goto LABEL_106;
            }

            goto LABEL_81;
          }

          if (v19[280])
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v59 = gconnectionLogObj;
            if (!os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              goto LABEL_75;
            }

            *buf = 136447234;
            v96 = "nw_resolver_bonjour_resolve_callback";
            v97 = 2082;
            *v98 = v19 + 280;
            *&v98[8] = 1024;
            *&v98[10] = v58;
            *&v98[14] = 2112;
            *&v98[16] = v34;
            *&v98[24] = 1024;
            *&v98[26] = a3;
            v60 = "%{public}s [C%{public}s] Preference result %d for endpoint: %@, interface index: %u";
            v61 = v59;
            v62 = 44;
          }

          else
          {
            v59 = __nwlog_obj();
            if (!os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
LABEL_75:

              goto LABEL_76;
            }

            v63 = *(v19 + 91);
            *buf = 136447234;
            v96 = "nw_resolver_bonjour_resolve_callback";
            v97 = 1024;
            *v98 = v63;
            *&v98[4] = 1024;
            *&v98[6] = v58;
            *&v98[10] = 2112;
            *&v98[12] = v34;
            *&v98[20] = 1024;
            *&v98[22] = a3;
            v60 = "%{public}s [R%u] Preference result %d for endpoint: %@, interface index: %u";
            v61 = v59;
            v62 = 40;
          }

          _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_INFO, v60, buf, v62);
          goto LABEL_75;
        }

        if (v19[280])
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v36 = gconnectionLogObj;
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_65;
          }

          *buf = 136446466;
          v96 = "nw_resolver_bonjour_resolve_callback";
          v97 = 2082;
          *v98 = v19 + 280;
          v37 = "%{public}s [C%{public}s] Not preferring endpoints for scoped resolution";
          v38 = v36;
          v39 = 22;
        }

        else
        {
          v36 = __nwlog_obj();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
LABEL_65:

            goto LABEL_66;
          }

          v57 = *(v19 + 91);
          *buf = 136446466;
          v96 = "nw_resolver_bonjour_resolve_callback";
          v97 = 1024;
          *v98 = v57;
          v37 = "%{public}s [R%u] Not preferring endpoints for scoped resolution";
          v38 = v36;
          v39 = 18;
        }

        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, v37, buf, v39);
        goto LABEL_65;
      }

      v25 = *(v19 + 91);
      *buf = 136448002;
      v96 = "nw_resolver_bonjour_resolve_callback";
      v97 = 1024;
      *v98 = v25;
      *&v98[4] = 1024;
      *&v98[6] = a2;
      *&v98[10] = 1024;
      *&v98[12] = a3;
      *&v98[16] = 1024;
      *&v98[18] = a4;
      *&v98[22] = 2082;
      *&v98[24] = a5;
      *&v98[32] = 2082;
      *&v98[34] = a6;
      *&v98[42] = 1024;
      *&v98[44] = v20;
      v22 = "%{public}s [R%u] flags=0x%x ifindex=%u errorCode=%d name=%{public}s target=%{public}s port=%u";
      v23 = v21;
      v24 = 62;
    }

    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
    goto LABEL_11;
  }

  v82 = __nwlog_obj();
  *buf = 136446210;
  v96 = "nw_resolver_bonjour_resolve_callback";
  v83 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v93) = 0;
  if (__nwlog_fault(v83, type, &v93))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type[0];
      if (os_log_type_enabled(v84, type[0]))
      {
        *buf = 136446210;
        v96 = "nw_resolver_bonjour_resolve_callback";
        _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v93 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v88 = type[0];
      v89 = os_log_type_enabled(v84, type[0]);
      if (backtrace_string)
      {
        if (v89)
        {
          *buf = 136446466;
          v96 = "nw_resolver_bonjour_resolve_callback";
          v97 = 2082;
          *v98 = backtrace_string;
          _os_log_impl(&dword_181A37000, v84, v88, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_135;
      }

      if (v89)
      {
        *buf = 136446210;
        v96 = "nw_resolver_bonjour_resolve_callback";
        _os_log_impl(&dword_181A37000, v84, v88, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v84 = __nwlog_obj();
      v90 = type[0];
      if (os_log_type_enabled(v84, type[0]))
      {
        *buf = 136446210;
        v96 = "nw_resolver_bonjour_resolve_callback";
        _os_log_impl(&dword_181A37000, v84, v90, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_135:
  if (v83)
  {
    free(v83);
  }

LABEL_25:
}

void ___ZL36nw_resolver_bonjour_resolve_callbackP16_DNSServiceRef_tjjiPKcS2_ttPKhPv_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((*(v2 + 370) & 0x20) != 0)
    {
      goto LABEL_14;
    }

    if (*(v2 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 32) + 280;
      *buf = 136446466;
      v25 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v26 = 2082;
      v27 = v4;
      v5 = "%{public}s [C%{public}s] Weighting timer timed out";
      v6 = v3;
      v7 = 22;
      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 32) + 364);
      *buf = 136446466;
      v25 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v26 = 1024;
      LODWORD(v27) = v8;
      v5 = "%{public}s [R%u] Weighting timer timed out";
      v6 = v3;
      v7 = 18;
      goto LABEL_12;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v25 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v5 = "%{public}s Weighting timer timed out";
      v6 = v3;
      v7 = 12;
LABEL_12:
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, v5, buf, v7);
    }
  }

LABEL_13:

  v2 = *(a1 + 32);
LABEL_14:
  os_unfair_lock_lock((v2 + 12));
  v9 = *(a1 + 32);
  v10 = v9[22];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL36nw_resolver_bonjour_resolve_callbackP16_DNSServiceRef_tjjiPKcS2_ttPKhPv_block_invoke_283;
  aBlock[3] = &unk_1E6A3CCB8;
  v23 = v9;
  if (v10)
  {
    _nw_array_apply(v10, aBlock);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 176);
  *(v11 + 176) = 0;

  *(*(a1 + 32) + 372) |= 2u;
  v14 = *(a1 + 32);
  if (v14[23])
  {
    nw_queue_cancel_source(*(*(a1 + 32) + 184), v13);
    *(*(a1 + 32) + 184) = 0;
    v14 = *(a1 + 32);
  }

  nw_resolver_update_status_locked(v14, 0);
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v15 = *(a1 + 32);
  if (!v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v25 = "nw_resolver_bonjour_resolve_callback_block_invoke_2";
      v18 = "%{public}s Marking preferred weighting as completed";
      v19 = v16;
      v20 = 12;
LABEL_29:
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
    }

LABEL_30:

    goto LABEL_31;
  }

  if ((*(v15 + 370) & 0x20) == 0)
  {
    if (*(v15 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v17 = *(a1 + 32) + 280;
      *buf = 136446466;
      v25 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v26 = 2082;
      v27 = v17;
      v18 = "%{public}s [C%{public}s] Marking preferred weighting as completed";
      v19 = v16;
      v20 = 22;
      goto LABEL_29;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(a1 + 32) + 364);
      *buf = 136446466;
      v25 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v26 = 1024;
      LODWORD(v27) = v21;
      v18 = "%{public}s [R%u] Marking preferred weighting as completed";
      v19 = v16;
      v20 = 18;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_31:
}

uint64_t ___ZL36nw_resolver_bonjour_resolve_callbackP16_DNSServiceRef_tjjiPKcS2_ttPKhPv_block_invoke_283(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 136446466;
      v14 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v15 = 2112;
      *v16 = v4;
      v8 = "%{public}s Inserting non-preferred host endpoint %@";
      v9 = v6;
      v10 = 22;
LABEL_12:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, v8, &v13, v10);
    }

LABEL_13:

    v5 = *(a1 + 32);
    goto LABEL_14;
  }

  if ((v5[370] & 0x20) == 0)
  {
    if (v5[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v6 = gconnectionLogObj;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 32) + 280;
      v13 = 136446722;
      v14 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v15 = 2082;
      *v16 = v7;
      *&v16[8] = 2112;
      *&v16[10] = v4;
      v8 = "%{public}s [C%{public}s] Inserting non-preferred host endpoint %@";
      v9 = v6;
      v10 = 32;
      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 364);
      v13 = 136446722;
      v14 = "nw_resolver_bonjour_resolve_callback_block_invoke";
      v15 = 1024;
      *v16 = v11;
      *&v16[4] = 2112;
      *&v16[6] = v4;
      v8 = "%{public}s [R%u] Inserting non-preferred host endpoint %@";
      v9 = v6;
      v10 = 28;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
  nw_resolver_insert_endpoint_locked(v5, v4, &__block_literal_global_286);

  return 1;
}

void ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke_273(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 8) != 2)
  {
    if ((*(v2 + 370) & 0x20) != 0)
    {
LABEL_12:
      nw_resolver_restart_dns_service_locked(v2);
      return;
    }

    if (*(v2 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v12 = 136446978;
      v13 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v14 = 2082;
      *v15 = v4 + 280;
      *&v15[8] = 2048;
      *&v15[10] = v4;
      *&v15[18] = 2112;
      *&v15[20] = v5;
      v6 = "%{public}s [C%{public}s] restarting resolver %p, AWDL trigger browse found endpoint %@";
      v7 = v3;
      v8 = 42;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        v2 = *(a1 + 32);
        goto LABEL_12;
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(v9 + 364);
      v12 = 136446978;
      v13 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v14 = 1024;
      *v15 = v11;
      *&v15[4] = 2048;
      *&v15[6] = v9;
      *&v15[14] = 2112;
      *&v15[16] = v10;
      v6 = "%{public}s [R%u] restarting resolver %p, AWDL trigger browse found endpoint %@";
      v7 = v3;
      v8 = 38;
    }

    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    goto LABEL_11;
  }
}

void ___ZL40nw_resolver_should_wait_for_awdl_triggerP22NWConcrete_nw_resolver_block_invoke_270(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 8) != 2)
  {
    if ((*(v2 + 370) & 0x20) != 0)
    {
LABEL_12:
      nw_resolver_restart_dns_service_locked(v2);
      return;
    }

    if (*(v2 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 32);
      v10 = 136446722;
      v11 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v12 = 2082;
      *v13 = v4 + 280;
      *&v13[8] = 2048;
      *&v13[10] = v4;
      v5 = "%{public}s [C%{public}s] restarting resolver %p, AWDL trigger browse failed";
      v6 = v3;
      v7 = 32;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        v2 = *(a1 + 32);
        goto LABEL_12;
      }

      v8 = *(a1 + 32);
      v9 = *(v8 + 364);
      v10 = 136446722;
      v11 = "nw_resolver_should_wait_for_awdl_trigger_block_invoke";
      v12 = 1024;
      *v13 = v9;
      *&v13[4] = 2048;
      *&v13[6] = v8;
      v5 = "%{public}s [R%u] restarting resolver %p, AWDL trigger browse failed";
      v6 = v3;
      v7 = 28;
    }

    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
    goto LABEL_11;
  }
}

void nw_resolver_host_resolve_callback(_DNSServiceRef_t *a1, int a2, int a3, int a4, const char *a5, const sockaddr *a6, int a7, void *a8)
{
  v85 = *MEMORY[0x1E69E9840];
  v12 = a8;
  v13 = v12;
  if (v12)
  {
    if (nw_parameters_get_sensitive_redacted(v12[2]))
    {
      LOBYTE(v79) = 0;
      *type = 0;
      if (!a6)
      {
        goto LABEL_16;
      }

      sa_family = a6->sa_family;
      if (sa_family != 30)
      {
        if (sa_family == 2)
        {
          if (*&a6->sa_data[2])
          {
            v15 = type;
            __nwlog_salted_hash(&a6->sa_data[2], 4, type);
            v16 = "IPv4#";
            if ((*(v13 + 370) & 0x20) != 0)
            {
              goto LABEL_43;
            }

LABEL_27:
            if (*(v13 + 280))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v23 = gconnectionLogObj;
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                goto LABEL_35;
              }

              string_for_dns_service_error = nwlog_get_string_for_dns_service_error(a4);
              *buf = 136448514;
              *&buf[4] = "nw_resolver_host_resolve_callback";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 35;
              *&buf[22] = 1024;
              *&buf[24] = a2;
              *&buf[28] = 1024;
              *&buf[30] = a3;
              *&buf[34] = 2082;
              *&buf[36] = string_for_dns_service_error;
              *&buf[44] = 1024;
              *&buf[46] = a4;
              *&buf[50] = 2080;
              *&buf[52] = a5;
              *&buf[60] = 2082;
              *&buf[62] = v16;
              *&buf[70] = 2082;
              *&buf[72] = v15;
              *&buf[80] = 1024;
              *&buf[82] = a7;
              v25 = "%{public}s [C%{public}s] flags=0x%x ifindex=%u error=%{public}s(%d) hostname=%s addr=%{public}s%{public}s ttl=%u";
              v26 = v23;
              v27 = 86;
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
LABEL_35:

                goto LABEL_43;
              }

              v28 = a7;
              v29 = *(v13 + 91);
              v30 = nwlog_get_string_for_dns_service_error(a4);
              *buf = 136448514;
              *&buf[4] = "nw_resolver_host_resolve_callback";
              *&buf[12] = 1024;
              *&buf[14] = v29;
              *&buf[18] = 1024;
              *&buf[20] = a2;
              *&buf[24] = 1024;
              *&buf[26] = a3;
              *&buf[30] = 2082;
              *&buf[32] = v30;
              *&buf[40] = 1024;
              *&buf[42] = a4;
              *&buf[46] = 2080;
              *&buf[48] = a5;
              *&buf[56] = 2082;
              *&buf[58] = v16;
              *&buf[66] = 2082;
              *&buf[68] = v15;
              *&buf[76] = 1024;
              *&buf[78] = v28;
              v25 = "%{public}s [R%u] flags=0x%x ifindex=%u error=%{public}s(%d) hostname=%s addr=%{public}s%{public}s ttl=%u";
              v26 = v23;
              v27 = 82;
            }

            _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, v25, buf, v27);
            goto LABEL_35;
          }

          v15 = "INADDR_ANY";
LABEL_17:
          v16 = "";
          if ((*(v13 + 370) & 0x20) != 0)
          {
            goto LABEL_43;
          }

          goto LABEL_27;
        }

LABEL_16:
        v15 = "<NULL>";
        goto LABEL_17;
      }

      if (!*&a6->sa_data[6] && !*&a6->sa_data[10] && !*&a6[1].sa_len && !*&a6[1].sa_data[2])
      {
        v15 = "IN6ADDR_ANY";
        goto LABEL_17;
      }

      v15 = type;
      __nwlog_salted_hash(&a6->sa_data[6], 16, type);
      v16 = "IPv6#";
      if ((*(v13 + 370) & 0x20) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((*(v13 + 370) & 0x20) == 0)
    {
      if (*(v13 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v17 = gconnectionLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = nwlog_get_string_for_dns_service_error(a4);
          if (a6)
          {
            sa_len = a6->sa_len;
          }

          else
          {
            sa_len = 0;
          }

          *buf = 136448514;
          *&buf[4] = "nw_resolver_host_resolve_callback";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 35;
          *&buf[22] = 1024;
          *&buf[24] = a2;
          *&buf[28] = 1024;
          *&buf[30] = a3;
          *&buf[34] = 2082;
          *&buf[36] = v18;
          *&buf[44] = 1024;
          *&buf[46] = a4;
          *&buf[50] = 2082;
          *&buf[52] = a5;
          *&buf[60] = 1040;
          *&buf[62] = sa_len;
          *&buf[66] = 2098;
          *&buf[68] = a6;
          *&buf[76] = 1024;
          *&buf[78] = a7;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s] flags=0x%x ifindex=%u error=%{public}s(%d) hostname=%{public}s addr=%{public,network:sockaddr}.*P ttl=%u", buf, 0x52u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = *(v13 + 91);
          v21 = nwlog_get_string_for_dns_service_error(a4);
          if (a6)
          {
            v22 = a6->sa_len;
          }

          else
          {
            v22 = 0;
          }

          *buf = 136448514;
          *&buf[4] = "nw_resolver_host_resolve_callback";
          *&buf[12] = 1024;
          *&buf[14] = v20;
          *&buf[18] = 1024;
          *&buf[20] = a2;
          *&buf[24] = 1024;
          *&buf[26] = a3;
          *&buf[30] = 2082;
          *&buf[32] = v21;
          *&buf[40] = 1024;
          *&buf[42] = a4;
          *&buf[46] = 2082;
          *&buf[48] = a5;
          *&buf[56] = 1040;
          *&buf[58] = v22;
          *&buf[62] = 2098;
          *&buf[64] = a6;
          *&buf[72] = 1024;
          *&buf[74] = a7;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s [R%u] flags=0x%x ifindex=%u error=%{public}s(%d) hostname=%{public}s addr=%{public,network:sockaddr}.*P ttl=%u", buf, 0x4Eu);
        }
      }
    }

LABEL_43:
    os_unfair_lock_lock(v13 + 3);
    if (!a1 || v13[9] != a1)
    {
      if ((*(v13 + 370) & 0x20) != 0)
      {
LABEL_55:
        os_unfair_lock_unlock(v13 + 3);
        goto LABEL_56;
      }

      if (*(v13 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_54;
        }

        v32 = v13[9];
        *buf = 136447234;
        *&buf[4] = "nw_resolver_host_resolve_callback";
        *&buf[12] = 2082;
        *&buf[14] = v13 + 35;
        *&buf[22] = 2048;
        *&buf[24] = a1;
        *&buf[32] = 2048;
        *&buf[34] = v13;
        *&buf[42] = 2048;
        *&buf[44] = v32;
        v33 = "%{public}s [C%{public}s] skipped, service %p, resolver %p -> %p";
        v34 = v31;
        v35 = 52;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
LABEL_54:

          goto LABEL_55;
        }

        v36 = *(v13 + 91);
        v37 = v13[9];
        *buf = 136447234;
        *&buf[4] = "nw_resolver_host_resolve_callback";
        *&buf[12] = 1024;
        *&buf[14] = v36;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v13;
        *&buf[38] = 2048;
        *&buf[40] = v37;
        v33 = "%{public}s [R%u] skipped, service %p, resolver %p -> %p";
        v34 = v31;
        v35 = 48;
      }

      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, v33, buf, v35);
      goto LABEL_54;
    }

    nw_resolver_update_flags_locked(v13, 0, a2, a4, a6, 0, 0);
    if (a4)
    {
      if (a4 == -65569 && *(v13 + 2) != 2)
      {
        if ((*(v13 + 370) & 0x20) != 0)
        {
LABEL_76:
          nw_resolver_restart_dns_service_locked(v13);
          goto LABEL_55;
        }

        if (*(v13 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v38 = gconnectionLogObj;
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            goto LABEL_75;
          }

          *buf = 136446722;
          *&buf[4] = "nw_resolver_host_resolve_callback";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 35;
          *&buf[22] = 2048;
          *&buf[24] = v13;
          v39 = "%{public}s [C%{public}s] restarting resolver %p, defunct connection";
          v40 = v38;
          v41 = 32;
        }

        else
        {
          v38 = __nwlog_obj();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
LABEL_75:

            goto LABEL_76;
          }

          v44 = *(v13 + 91);
          *buf = 136446722;
          *&buf[4] = "nw_resolver_host_resolve_callback";
          *&buf[12] = 1024;
          *&buf[14] = v44;
          *&buf[18] = 2048;
          *&buf[20] = v13;
          v39 = "%{public}s [R%u] restarting resolver %p, defunct connection";
          v40 = v38;
          v41 = 28;
        }

        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_INFO, v39, buf, v41);
        goto LABEL_75;
      }

LABEL_85:
      if ((a2 & 1) == 0)
      {
        nw_resolver_update_status_locked(v13, 0);
      }

      goto LABEL_55;
    }

    if (!a6)
    {
      goto LABEL_85;
    }

    v42 = a6->sa_len;
    if (v42 > 0x80)
    {
      goto LABEL_85;
    }

    v43 = a6->sa_family;
    if (v43 != 30 && v43 != 2)
    {
      goto LABEL_85;
    }

    v83 = 0u;
    v84 = 0u;
    memset(buf, 0, sizeof(buf));
    memcpy(buf, a6, v42);
    *&buf[2] = __rev16(nw_endpoint_get_port(v13[3]));
    if ((a2 & 2) == 0)
    {
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = ___ZL33nw_resolver_host_resolve_callbackP16_DNSServiceRef_tjjiPKcPK8sockaddrjPv_block_invoke_2;
      v65[3] = &__block_descriptor_45_e63_B24__0__NSObject_OS_nw_endpoint__8__NSObject_OS_nw_endpoint__16l;
      v65[4] = buf;
      v66 = a3;
      v67 = 0;
      nw_resolver_remove_endpoint_locked(v13, v65);
      goto LABEL_85;
    }

    address = _nw_endpoint_create_address(buf);
    nw_endpoint_set_parent_endpoint(address, v13[3], 0);
    v73 = 0;
    DNSServiceGetValidationData();
    *type = 0;
    v79 = 0;
    v81 = 0;
    v80 = 0;
    if (nw_endpoint_fillout_v4v6_address(address, type))
    {
      if (!a3 || type[1] == 30 && type[0] >= 0x18u && (v79 & 0xFE) == 0xFC || nw_resolver_set_interface_on_endpoint(v13, a3, address))
      {
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = ___ZL33nw_resolver_host_resolve_callbackP16_DNSServiceRef_tjjiPKcPK8sockaddrjPv_block_invoke;
        v68[3] = &__block_descriptor_45_e63_B24__0__NSObject_OS_nw_endpoint__8__NSObject_OS_nw_endpoint__16l;
        v68[4] = buf;
        v69 = a3;
        v70 = (a2 & 2) >> 1;
        nw_resolver_insert_endpoint_locked(v13, address, v68);
      }

      goto LABEL_85;
    }

    v54 = __nwlog_obj();
    *v74 = 136446210;
    v75 = "nw_resolver_host_resolve_callback";
    v55 = _os_log_send_and_compose_impl();

    v72 = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v55, &v72, &v71))
    {
      goto LABEL_122;
    }

    if (v72 == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = v72;
      if (os_log_type_enabled(v56, v72))
      {
        *v74 = 136446210;
        v75 = "nw_resolver_host_resolve_callback";
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null success", v74, 0xCu);
      }
    }

    else if (v71 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v59 = v72;
      v60 = os_log_type_enabled(v56, v72);
      if (backtrace_string)
      {
        if (v60)
        {
          *v74 = 136446466;
          v75 = "nw_resolver_host_resolve_callback";
          v76 = 2082;
          v77 = backtrace_string;
          _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null success, dumping backtrace:%{public}s", v74, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_122;
      }

      if (v60)
      {
        *v74 = 136446210;
        v75 = "nw_resolver_host_resolve_callback";
        _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null success, no backtrace", v74, 0xCu);
      }
    }

    else
    {
      v56 = __nwlog_obj();
      v61 = v72;
      if (os_log_type_enabled(v56, v72))
      {
        *v74 = 136446210;
        v75 = "nw_resolver_host_resolve_callback";
        _os_log_impl(&dword_181A37000, v56, v61, "%{public}s called with null success, backtrace limit exceeded", v74, 0xCu);
      }
    }

LABEL_122:
    if (v55)
    {
      free(v55);
    }

    goto LABEL_56;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_host_resolve_callback";
  v47 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v74[0] = 0;
  if (__nwlog_fault(v47, type, v74))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v48, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_host_resolve_callback";
        _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v74[0] == 1)
    {
      v50 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v51 = type[0];
      v52 = os_log_type_enabled(v48, type[0]);
      if (v50)
      {
        if (v52)
        {
          *buf = 136446466;
          *&buf[4] = "nw_resolver_host_resolve_callback";
          *&buf[12] = 2082;
          *&buf[14] = v50;
          _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v50);
        goto LABEL_104;
      }

      if (v52)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_host_resolve_callback";
        _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v48, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_host_resolve_callback";
        _os_log_impl(&dword_181A37000, v48, v53, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_104:
  if (v47)
  {
    free(v47);
  }

LABEL_56:
}

BOOL ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_endpoint_get_type(v4) == nw_endpoint_type_address && nw_endpoint_get_address_family(v4) == 2)
  {
    v5 = *(*(a1 + 32) + 224);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_2;
    v10[3] = &unk_1E6A2C3A0;
    v6 = v4;
    v7 = *(a1 + 40);
    v11 = v6;
    v12 = v7;
    nw_path_enumerate_resolver_configs(v5, v10);
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);

  return (v8 & 1) == 0;
}

void ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_207(uint64_t a1, int a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 12));
  switch(a2)
  {
    case 3:
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      if (v22)
      {
        if (v21)
        {
          if ((*(v21 + 370) & 0x20) != 0)
          {
LABEL_51:
            nw_resolver_service_cancel_query(v22);
            break;
          }

          if (*(v21 + 280))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v23 = gconnectionLogObj;
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              goto LABEL_50;
            }

            v24 = *(a1 + 40);
            v25 = *(a1 + 32) + 280;
            v52 = 136446722;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 2082;
            *v55 = v25;
            *&v55[8] = 2114;
            *&v55[10] = v24;
            v26 = "%{public}s [C%{public}s] Invalidating getaddrinfo DNS object for %{public}@";
            v27 = v23;
            v28 = 32;
            goto LABEL_49;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v37 = *(a1 + 40);
            v38 = *(*(a1 + 32) + 364);
            v52 = 136446722;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 1024;
            *v55 = v38;
            *&v55[4] = 2114;
            *&v55[6] = v37;
            v26 = "%{public}s [R%u] Invalidating getaddrinfo DNS object for %{public}@";
            v27 = v23;
            v28 = 28;
            goto LABEL_49;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v35 = *(a1 + 40);
            v52 = 136446466;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 2114;
            *v55 = v35;
            v26 = "%{public}s Invalidating getaddrinfo DNS object for %{public}@";
            v27 = v23;
            v28 = 22;
LABEL_49:
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, v26, &v52, v28);
          }
        }

LABEL_50:

        v22 = *(a1 + 40);
        goto LABEL_51;
      }

      if (v21)
      {
        if ((*(v21 + 370) & 0x20) != 0)
        {
          goto LABEL_69;
        }

        if (*(v21 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v29 = gconnectionLogObj;
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          v30 = *(a1 + 32) + 280;
          v52 = 136446466;
          v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          v54 = 2082;
          *v55 = v30;
          v31 = "%{public}s [C%{public}s] Invalidating getaddrinfo DNS object";
          v32 = v29;
          v33 = 22;
          goto LABEL_67;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v45 = *(*(a1 + 32) + 364);
          v52 = 136446466;
          v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          v54 = 1024;
          *v55 = v45;
          v31 = "%{public}s [R%u] Invalidating getaddrinfo DNS object";
          v32 = v29;
          v33 = 18;
          goto LABEL_67;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v52 = 136446210;
          v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          v31 = "%{public}s Invalidating getaddrinfo DNS object";
          v32 = v29;
          v33 = 12;
LABEL_67:
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, v31, &v52, v33);
        }
      }

LABEL_68:

      v21 = *(a1 + 32);
LABEL_69:
      if (*(v21 + 48) == *(a1 + 48))
      {
        nw_resolver_cancel_query_locked(v21, 0);
      }

      break;
    case 2:
      if (*(a1 + 40))
      {
        break;
      }

      v15 = *(a1 + 32);
      if (v15)
      {
        if ((*(v15 + 370) & 0x20) != 0)
        {
LABEL_64:
          v42 = _nw_array_create();
          v43 = *(a1 + 32);
          v44 = *(v43 + 168);
          *(v43 + 168) = v42;

          nw_resolver_update_status_locked(*(a1 + 32), 0);
          break;
        }

        if (*(v15 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            goto LABEL_63;
          }

          v17 = *(a1 + 32) + 280;
          v52 = 136446466;
          v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          v54 = 2082;
          *v55 = v17;
          v18 = "%{public}s [C%{public}s] Removing all results for DNS";
          v19 = v16;
          v20 = 22;
          goto LABEL_62;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v41 = *(*(a1 + 32) + 364);
          v52 = 136446466;
          v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          v54 = 1024;
          *v55 = v41;
          v18 = "%{public}s [R%u] Removing all results for DNS";
          v19 = v16;
          v20 = 18;
          goto LABEL_62;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v52 = 136446210;
          v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          v18 = "%{public}s Removing all results for DNS";
          v19 = v16;
          v20 = 12;
LABEL_62:
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, v18, &v52, v20);
        }
      }

LABEL_63:

      goto LABEL_64;
    case 1:
      dns_error = nw_error_create_dns_error(a3);
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      if (v7)
      {
        if (v8)
        {
          if ((*(v8 + 370) & 0x20) != 0)
          {
            goto LABEL_75;
          }

          if (*(v8 + 280))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v9 = gconnectionLogObj;
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_74;
            }

            v10 = *(a1 + 40);
            v11 = *(a1 + 32) + 280;
            v52 = 136446978;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 2082;
            *v55 = v11;
            *&v55[8] = 2112;
            *&v55[10] = dns_error;
            *&v55[18] = 2114;
            *&v55[20] = v10;
            v12 = "%{public}s [C%{public}s] Got DNS error %@ for %{public}@";
            v13 = v9;
            v14 = 42;
            goto LABEL_73;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v39 = *(a1 + 40);
            v40 = *(*(a1 + 32) + 364);
            v52 = 136446978;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 1024;
            *v55 = v40;
            *&v55[4] = 2112;
            *&v55[6] = dns_error;
            *&v55[14] = 2114;
            *&v55[16] = v39;
            v12 = "%{public}s [R%u] Got DNS error %@ for %{public}@";
            v13 = v9;
            v14 = 38;
            goto LABEL_73;
          }

LABEL_74:

          v8 = *(a1 + 32);
          v7 = *(a1 + 40);
          goto LABEL_75;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_74;
        }

        v36 = *(a1 + 40);
        v52 = 136446722;
        v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        v54 = 2112;
        *v55 = dns_error;
        *&v55[8] = 2114;
        *&v55[10] = v36;
        v12 = "%{public}s Got DNS error %@ for %{public}@";
      }

      else
      {
        if (!v8)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v52 = 136446466;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 2112;
            *v55 = dns_error;
            v12 = "%{public}s Got DNS error %@";
            v13 = v9;
            v14 = 22;
            goto LABEL_73;
          }

          goto LABEL_74;
        }

        if ((*(v8 + 370) & 0x20) != 0)
        {
          v7 = 0;
LABEL_75:
          v47 = v7;
          v48 = *(v8 + 88) & 0xFFEF;
          *(v8 + 88) = v48;
          if ((*(v8 + 371) & 2) == 0)
          {
            v48 |= 0x80u;
            *(v8 + 88) = v48;
          }

          v49 = *(v8 + 80);
          if (v49 == 1)
          {
            v50 = 2056;
          }

          else
          {
            if (v49 != 2)
            {
              goto LABEL_82;
            }

            v50 = 1028;
          }

          v48 |= v50;
          *(v8 + 88) = v48;
LABEL_82:
          if (a3)
          {
            if (!v47)
            {
              v51 = v48 | 3;
              *(v8 + 88) = v51;
              if ((v51 & 0xC) != 0)
              {
                goto LABEL_86;
              }

              goto LABEL_85;
            }

            v47[19] |= 3u;
            if ((*(v8 + 88) & 0xC) == 0)
            {
LABEL_85:
              *(v8 + 84) = a3;
            }
          }

LABEL_86:

          nw_resolver_update_status_locked(*(a1 + 32), 0);
          break;
        }

        if (!*(v8 + 280))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v46 = *(*(a1 + 32) + 364);
            v52 = 136446722;
            v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v54 = 1024;
            *v55 = v46;
            *&v55[4] = 2112;
            *&v55[6] = dns_error;
            v12 = "%{public}s [R%u] Got DNS error %@";
            v13 = v9;
            v14 = 28;
            goto LABEL_73;
          }

          goto LABEL_74;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v9 = gconnectionLogObj;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_74;
        }

        v34 = *(a1 + 32) + 280;
        v52 = 136446722;
        v53 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        v54 = 2082;
        *v55 = v34;
        *&v55[8] = 2112;
        *&v55[10] = dns_error;
        v12 = "%{public}s [C%{public}s] Got DNS error %@";
      }

      v13 = v9;
      v14 = 32;
LABEL_73:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, v12, &v52, v14);
      goto LABEL_74;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

void ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_209(id *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v3)
    {
      count = _nw_array_get_count(v3);
      if (count)
      {
        v6 = a1[4];
        if (v6)
        {
          if ((v6[92]._os_unfair_lock_opaque & 0x200000) != 0)
          {
LABEL_17:
            os_unfair_lock_lock(v6 + 3);
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_210;
            v13[3] = &unk_1E6A35E80;
            v14 = a1[4];
            v15 = a1[5];
            _nw_array_apply(v3, v13);
            nw_resolver_check_svcb_complete(a1[4]);
            nw_resolver_update_status_locked(a1[4], 0);
            os_unfair_lock_unlock(a1[4] + 3);

            goto LABEL_18;
          }

          if (LOBYTE(v6[70]._os_unfair_lock_opaque))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v7 = gconnectionLogObj;
            if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              goto LABEL_16;
            }

            v8 = a1[4] + 280;
            *buf = 136446722;
            v17 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v18 = 2082;
            *v19 = v8;
            *&v19[8] = 2048;
            *&v19[10] = count;
            v9 = "%{public}s [C%{public}s] Got %zu expired DNS results from storage cache";
            v10 = v7;
            v11 = 32;
            goto LABEL_15;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1[4] + 91);
            *buf = 136446722;
            v17 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v18 = 1024;
            *v19 = v12;
            *&v19[4] = 2048;
            *&v19[6] = count;
            v9 = "%{public}s [R%u] Got %zu expired DNS results from storage cache";
            v10 = v7;
            v11 = 28;
            goto LABEL_15;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v17 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v18 = 2048;
            *v19 = count;
            v9 = "%{public}s Got %zu expired DNS results from storage cache";
            v10 = v7;
            v11 = 22;
LABEL_15:
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
          }
        }

LABEL_16:

        v6 = a1[4];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
}

void ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_2_212(uint64_t a1, id *a2, uint64_t a3)
{
  v357 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_522;
  }

  v289 = WeakRetained;
  v5 = *(a1 + 32);
  v301 = a1;
  if (v5)
  {
    if ((*(v5 + 370) & 0x20) != 0)
    {
      goto LABEL_15;
    }

    if (*(v5 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v6 = gconnectionLogObj;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 32) + 280;
      *&buf[0].sa_len = 136446722;
      *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
      *&buf[0].sa_data[10] = 2082;
      *&buf[0].sa_data[12] = v7;
      *&buf[1].sa_data[4] = 2048;
      *&buf[1].sa_data[6] = a3;
      v8 = "%{public}s [C%{public}s] Got %zu DNS results";
      v9 = v6;
      v10 = 32;
      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 364);
      *&buf[0].sa_len = 136446722;
      *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
      *&buf[0].sa_data[10] = 1024;
      *&buf[0].sa_data[12] = v11;
      *buf[1].sa_data = 2048;
      *&buf[1].sa_data[2] = a3;
      v8 = "%{public}s [R%u] Got %zu DNS results";
      v9 = v6;
      v10 = 28;
      goto LABEL_13;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *&buf[0].sa_len = 136446466;
      *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke_2";
      *&buf[0].sa_data[10] = 2048;
      *&buf[0].sa_data[12] = a3;
      v8 = "%{public}s Got %zu DNS results";
      v9 = v6;
      v10 = 22;
LABEL_13:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, v8, &buf[0].sa_len, v10);
    }
  }

LABEL_14:

LABEL_15:
  v12 = a3;
  if (!a3)
  {
    os_unfair_lock_lock((*(a1 + 32) + 12));
    v291 = 0;
LABEL_504:
    v281 = v301;
    if (!nw_resolver_check_svcb_complete(*(v301 + 32)))
    {
      if ((v291 & 1) == 0)
      {
        goto LABEL_521;
      }

      goto LABEL_520;
    }

    v282 = *(v301 + 32);
    if (v282)
    {
      if ((*(v282 + 370) & 0x20) != 0)
      {
LABEL_520:
        nw_resolver_update_status_locked(*(v281 + 32), 0);
LABEL_521:
        os_unfair_lock_unlock((*(v281 + 32) + 12));
        WeakRetained = v289;
LABEL_522:

        return;
      }

      if (*(v282 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v283 = gconnectionLogObj;
        if (!os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
        {
          goto LABEL_519;
        }

        v284 = *(v301 + 32) + 280;
        *&buf[0].sa_len = 136446466;
        *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&buf[0].sa_data[10] = 2082;
        *&buf[0].sa_data[12] = v284;
        v285 = "%{public}s [C%{public}s] SVCB queries are complete";
        v286 = v283;
        v287 = 22;
        goto LABEL_518;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v283 = gLogObj;
      if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
      {
        v288 = *(*(v301 + 32) + 364);
        *&buf[0].sa_len = 136446466;
        *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&buf[0].sa_data[10] = 1024;
        *&buf[0].sa_data[12] = v288;
        v285 = "%{public}s [R%u] SVCB queries are complete";
        v286 = v283;
        v287 = 18;
        goto LABEL_518;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v283 = gLogObj;
      if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
      {
        *&buf[0].sa_len = 136446210;
        *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke_3";
        v285 = "%{public}s SVCB queries are complete";
        v286 = v283;
        v287 = 12;
LABEL_518:
        _os_log_impl(&dword_181A37000, v286, OS_LOG_TYPE_INFO, v285, &buf[0].sa_len, v287);
      }
    }

LABEL_519:

    v281 = v301;
    goto LABEL_520;
  }

  v13 = a2;
  do
  {
    v14 = *v13;
    address = dnssd_getaddrinfo_result_get_address();
    tracker_hostname = dnssd_getaddrinfo_result_get_tracker_hostname();
    if (nw_parameters_get_sensitive_redacted(*(*(v301 + 32) + 16)))
    {
      v342[8] = 0;
      *v342 = 0;
      if (address)
      {
        v17 = address[1];
        if (v17 == 30)
        {
          if (*(address + 2) || *(address + 3) || *(address + 4) || *(address + 5))
          {
            v20 = v342;
            __nwlog_salted_hash(address + 8, 16, v342);
            v21 = "IPv6#";
          }

          else
          {
            v21 = "";
            v20 = "IN6ADDR_ANY";
          }

LABEL_50:
          v44 = *(v301 + 32);
          if (v44)
          {
            if ((*(v44 + 370) & 0x20) != 0)
            {
              goto LABEL_95;
            }

            if (*(v44 + 280))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v45 = gconnectionLogObj;
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                goto LABEL_74;
              }

              v298 = v20;
              v46 = *(v301 + 32);
              v47 = dnssd_getaddrinfo_result_get_type() - 1;
              v48 = "?";
              if (v47 <= 4)
              {
                v48 = off_1E6A2C708[v47];
              }

              interface_index = dnssd_getaddrinfo_result_get_interface_index();
              hostname = dnssd_getaddrinfo_result_get_hostname();
              actual_hostname = dnssd_getaddrinfo_result_get_actual_hostname();
              *&buf[0].sa_len = 136448259;
              v52 = "";
              if (tracker_hostname)
              {
                v52 = " tracker";
              }

              *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
              *&buf[0].sa_data[10] = 2082;
              *&buf[0].sa_data[12] = v46 + 280;
              *&buf[1].sa_data[4] = 2080;
              *&buf[1].sa_data[6] = v48;
              *&buf[2].sa_len = 1024;
              *buf[2].sa_data = interface_index;
              *&buf[2].sa_data[4] = 2085;
              *&buf[2].sa_data[6] = hostname;
              *&buf[3].sa_len = 2085;
              *buf[3].sa_data = actual_hostname;
              *&buf[3].sa_data[8] = 2082;
              *&buf[3].sa_data[10] = v21;
              *&buf[4].sa_data[2] = 2082;
              *&buf[4].sa_data[4] = v298;
              *&buf[4].sa_data[12] = 2082;
              *&buf[5].sa_len = v52;
              v53 = v45;
              v54 = "%{public}s [C%{public}s] Got DNS result type %s ifindex=%u %{sensitive}s %{sensitive}s %{public}s%{public}s%{public}s";
              v55 = 88;
              goto LABEL_73;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v299 = v20;
              v62 = *(*(v301 + 32) + 364);
              v63 = dnssd_getaddrinfo_result_get_type() - 1;
              v64 = "?";
              if (v63 <= 4)
              {
                v64 = off_1E6A2C708[v63];
              }

              v65 = dnssd_getaddrinfo_result_get_interface_index();
              v66 = dnssd_getaddrinfo_result_get_hostname();
              v67 = dnssd_getaddrinfo_result_get_actual_hostname();
              *&buf[0].sa_len = 136448259;
              v68 = "";
              if (tracker_hostname)
              {
                v68 = " tracker";
              }

              *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
              *&buf[0].sa_data[10] = 1024;
              *&buf[0].sa_data[12] = v62;
              *buf[1].sa_data = 2080;
              *&buf[1].sa_data[2] = v64;
              *&buf[1].sa_data[10] = 1024;
              *&buf[1].sa_data[12] = v65;
              *buf[2].sa_data = 2085;
              *&buf[2].sa_data[2] = v66;
              *&buf[2].sa_data[10] = 2085;
              *&buf[2].sa_data[12] = v67;
              *&buf[3].sa_data[4] = 2082;
              *&buf[3].sa_data[6] = v21;
              *&buf[4].sa_len = 2082;
              *buf[4].sa_data = v299;
              *&buf[4].sa_data[8] = 2082;
              *&buf[4].sa_data[10] = v68;
              v53 = v45;
              v54 = "%{public}s [R%u] Got DNS result type %s ifindex=%u %{sensitive}s %{sensitive}s %{public}s%{public}s%{public}s";
              v55 = 84;
LABEL_73:
              _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_INFO, v54, &buf[0].sa_len, v55);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v56 = dnssd_getaddrinfo_result_get_type() - 1;
              v57 = "?";
              if (v56 <= 4)
              {
                v57 = off_1E6A2C708[v56];
              }

              v58 = dnssd_getaddrinfo_result_get_interface_index();
              v59 = dnssd_getaddrinfo_result_get_hostname();
              v60 = dnssd_getaddrinfo_result_get_actual_hostname();
              *&buf[0].sa_len = 136448003;
              v61 = "";
              if (tracker_hostname)
              {
                v61 = " tracker";
              }

              *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
              *&buf[0].sa_data[10] = 2080;
              *&buf[0].sa_data[12] = v57;
              *&buf[1].sa_data[4] = 1024;
              *&buf[1].sa_data[6] = v58;
              *&buf[1].sa_data[10] = 2085;
              *&buf[1].sa_data[12] = v59;
              *&buf[2].sa_data[4] = 2085;
              *&buf[2].sa_data[6] = v60;
              *&buf[3].sa_len = 2082;
              *buf[3].sa_data = v21;
              *&buf[3].sa_data[8] = 2082;
              *&buf[3].sa_data[10] = v20;
              *&buf[4].sa_data[2] = 2082;
              *&buf[4].sa_data[4] = v61;
              v53 = v45;
              v54 = "%{public}s Got DNS result type %s ifindex=%u %{sensitive}s %{sensitive}s %{public}s%{public}s%{public}s";
              v55 = 78;
              goto LABEL_73;
            }
          }

LABEL_74:

          goto LABEL_95;
        }

        if (v17 == 2)
        {
          v19 = *(address + 1);
          v18 = address + 4;
          if (v19)
          {
            v20 = v342;
            __nwlog_salted_hash(v18, 4, v342);
            v21 = "IPv4#";
          }

          else
          {
            v21 = "";
            v20 = "INADDR_ANY";
          }

          goto LABEL_50;
        }
      }

      v21 = "";
      v20 = "<NULL>";
      goto LABEL_50;
    }

    v22 = *(v301 + 32);
    if (v22)
    {
      if ((*(v22 + 370) & 0x20) != 0)
      {
        goto LABEL_95;
      }

      if (*(v22 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v23 = gconnectionLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = *(v301 + 32);
          v25 = dnssd_getaddrinfo_result_get_type() - 1;
          v26 = "?";
          if (v25 <= 4)
          {
            v26 = off_1E6A2C708[v25];
          }

          v27 = dnssd_getaddrinfo_result_get_interface_index();
          v28 = dnssd_getaddrinfo_result_get_hostname();
          v29 = dnssd_getaddrinfo_result_get_actual_hostname();
          if (address)
          {
            v30 = *address;
          }

          else
          {
            v30 = 0;
          }

          *&buf[0].sa_len = 136448514;
          v69 = " tracker=";
          if (!tracker_hostname)
          {
            v69 = "";
          }

          *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          if (tracker_hostname)
          {
            v70 = tracker_hostname;
          }

          else
          {
            v70 = "";
          }

          *&buf[0].sa_data[10] = 2082;
          *&buf[0].sa_data[12] = v24 + 280;
          *&buf[1].sa_data[4] = 2080;
          *&buf[1].sa_data[6] = v26;
          *&buf[2].sa_len = 1024;
          *buf[2].sa_data = v27;
          *&buf[2].sa_data[4] = 2082;
          *&buf[2].sa_data[6] = v28;
          *&buf[3].sa_len = 2082;
          *buf[3].sa_data = v29;
          *&buf[3].sa_data[8] = 1040;
          *&buf[3].sa_data[10] = v30;
          *&buf[4].sa_len = 2098;
          *buf[4].sa_data = address;
          *&buf[4].sa_data[8] = 2082;
          *&buf[4].sa_data[10] = v69;
          *&buf[5].sa_data[2] = 2082;
          *&buf[5].sa_data[4] = v70;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s] Got DNS result type %s ifindex=%u %{public}s %{public}s %{public,network:sockaddr}.*P%{public}s%{public}s", &buf[0].sa_len, 0x5Eu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v37 = *(*(v301 + 32) + 364);
          v38 = dnssd_getaddrinfo_result_get_type() - 1;
          v39 = "?";
          if (v38 <= 4)
          {
            v39 = off_1E6A2C708[v38];
          }

          v40 = dnssd_getaddrinfo_result_get_interface_index();
          v41 = dnssd_getaddrinfo_result_get_hostname();
          v42 = dnssd_getaddrinfo_result_get_actual_hostname();
          if (address)
          {
            v43 = *address;
          }

          else
          {
            v43 = 0;
          }

          *&buf[0].sa_len = 136448514;
          v73 = "";
          v74 = " tracker=";
          if (tracker_hostname)
          {
            v73 = tracker_hostname;
          }

          else
          {
            v74 = "";
          }

          *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = v37;
          *buf[1].sa_data = 2080;
          *&buf[1].sa_data[2] = v39;
          *&buf[1].sa_data[10] = 1024;
          *&buf[1].sa_data[12] = v40;
          *buf[2].sa_data = 2082;
          *&buf[2].sa_data[2] = v41;
          *&buf[2].sa_data[10] = 2082;
          *&buf[2].sa_data[12] = v42;
          *&buf[3].sa_data[4] = 1040;
          *&buf[3].sa_data[6] = v43;
          *&buf[3].sa_data[10] = 2098;
          *&buf[3].sa_data[12] = address;
          *&buf[4].sa_data[4] = 2082;
          *&buf[4].sa_data[6] = v74;
          *&buf[5].sa_len = 2082;
          *buf[5].sa_data = v73;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s [R%u] Got DNS result type %s ifindex=%u %{public}s %{public}s %{public,network:sockaddr}.*P%{public}s%{public}s", &buf[0].sa_len, 0x5Au);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v31 = dnssd_getaddrinfo_result_get_type() - 1;
        v32 = "?";
        if (v31 <= 4)
        {
          v32 = off_1E6A2C708[v31];
        }

        v33 = dnssd_getaddrinfo_result_get_interface_index();
        v34 = dnssd_getaddrinfo_result_get_hostname();
        v35 = dnssd_getaddrinfo_result_get_actual_hostname();
        if (address)
        {
          v36 = *address;
        }

        else
        {
          v36 = 0;
        }

        *&buf[0].sa_len = 136448258;
        v71 = "";
        v72 = " tracker=";
        if (tracker_hostname)
        {
          v71 = tracker_hostname;
        }

        else
        {
          v72 = "";
        }

        *&buf[0].sa_data[2] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&buf[0].sa_data[10] = 2080;
        *&buf[0].sa_data[12] = v32;
        *&buf[1].sa_data[4] = 1024;
        *&buf[1].sa_data[6] = v33;
        *&buf[1].sa_data[10] = 2082;
        *&buf[1].sa_data[12] = v34;
        *&buf[2].sa_data[4] = 2082;
        *&buf[2].sa_data[6] = v35;
        *&buf[3].sa_len = 1040;
        *buf[3].sa_data = v36;
        *&buf[3].sa_data[4] = 2098;
        *&buf[3].sa_data[6] = address;
        *&buf[4].sa_len = 2082;
        *buf[4].sa_data = v72;
        *&buf[4].sa_data[8] = 2082;
        *&buf[4].sa_data[10] = v71;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s Got DNS result type %s ifindex=%u %{public}s %{public}s %{public,network:sockaddr}.*P%{public}s%{public}s", &buf[0].sa_len, 0x54u);
      }
    }

LABEL_95:
    ++v13;
    --v12;
  }

  while (v12);
  os_unfair_lock_lock((*(v301 + 32) + 12));
  v291 = 0;
  v75 = a2;
  while (1)
  {
    v296 = v75;
    v76 = *v75;
    protocol = dnssd_getaddrinfo_result_get_protocol();
    v78 = protocol;
    if ((protocol - 1) < 4)
    {
      *(*(v301 + 32) + 272) = protocol;
    }

    provider_name = dnssd_getaddrinfo_result_get_provider_name();
    v80 = *(v301 + 32);
    if (*(v80 + 371) < 0)
    {
      v81 = *(v80 + 224);
      v311[0] = MEMORY[0x1E69E9820];
      v311[1] = 3221225472;
      v311[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_219;
      v311[3] = &unk_1E6A2C288;
      v312 = v80;
      v313 = provider_name;
      nw_path_enumerate_resolver_configs(v81, v311);
    }

    if (provider_name)
    {
      if (!strcmp(provider_name, "dns.google"))
      {
        *(*(v301 + 32) + 276) = 2;
      }

      if (!strcmp(provider_name, "cloudflare-dns.com"))
      {
        *(*(v301 + 32) + 276) = 1;
      }

      if (!strcmp(provider_name, "dns.quad9.net"))
      {
        *(*(v301 + 32) + 276) = 3;
      }
    }

    v82 = dnssd_getaddrinfo_result_get_type();
    if (v82 == 5)
    {
      v83 = *(v301 + 40);
      v300 = *(v301 + 32);
      v293 = v83;
      v294 = v76;
      if (dnssd_getaddrinfo_result_service_is_valid())
      {
        service_name = dnssd_getaddrinfo_result_get_service_name();
        if (service_name)
        {
          traffic_class = nw_parameters_get_traffic_class(*(v300 + 2));
          if (traffic_class > 499)
          {
            if (traffic_class <= 699)
            {
              if (traffic_class != 500 && traffic_class != 600)
              {
                goto LABEL_151;
              }
            }

            else if (traffic_class != 700 && traffic_class != 800 && traffic_class != 900)
            {
              goto LABEL_151;
            }
          }

          else
          {
            v290 = 0;
            if (traffic_class <= 199)
            {
              if (traffic_class == 100)
              {
                goto LABEL_153;
              }

              goto LABEL_151;
            }

            if (traffic_class == 200)
            {
              goto LABEL_153;
            }

            if (traffic_class != 300 && traffic_class != 400)
            {
LABEL_151:
              v99 = 1;
              goto LABEL_152;
            }
          }

          v99 = 2;
LABEL_152:
          v290 = v99;
LABEL_153:
          v100 = v300;
          if ((*(v300 + 370) & 0x20) != 0)
          {
            goto LABEL_163;
          }

          if (*(v300 + 280))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v101 = gconnectionLogObj;
            if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_162;
            }

            *v342 = 136446722;
            *&v342[4] = "nw_resolver_process_service_result";
            *&v342[12] = 2082;
            *&v342[14] = v300 + 280;
            *&v342[22] = 1024;
            *&v342[24] = v290;
            v102 = v101;
            v103 = "%{public}s [C%{public}s] Resolver traffic sla class: %d";
            v104 = 28;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v101 = gLogObj;
            if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
LABEL_162:

              v100 = v300;
LABEL_163:
              *(v100 + 371) |= 4u;
              v335 = 0;
              ech_config = dnssd_getaddrinfo_result_get_ech_config();
              v107 = *(v100 + 3);
              service_priority = dnssd_getaddrinfo_result_get_service_priority();
              service_port = dnssd_getaddrinfo_result_get_service_port();
              v110 = v335;
              sensitive_redacted = nw_parameters_get_sensitive_redacted(*(v300 + 2));
              v112 = v107;
              v113 = [NWConcrete_nw_resolver_service alloc];
              v114 = v112;
              if (!v113)
              {
                goto LABEL_457;
              }

              *aBlock = v113;
              *&aBlock[8] = NWConcrete_nw_resolver_service;
              v115 = objc_msgSendSuper2(aBlock, sel_init);
              if (v115)
              {
                v292 = v115;
                if (v114)
                {
                  v116 = v114;
                  v117 = _nw_endpoint_get_type(v116);

                  if (v117 == 2)
                  {
                    v118 = v116;
                    v119 = _nw_endpoint_get_hostname(v118);

                    if (v119)
                    {
                      v292[16] = service_priority;
                      v292[17] = arc4random_uniform(0x10000u);
                      v120 = v292[24] & 0xFE | sensitive_redacted;
                      *(v292 + 48) = v120;
                      v121 = v120 & 0xFD | (2 * (strcmp(v119, service_name) == 0));
                      *(v292 + 48) = v121;
                      if (service_port)
                      {
                        v122 = v118;
                        port = _nw_endpoint_get_port(v122);

                        v124 = v292;
                        *(v292 + 48) = v292[24] & 0xFB | (4 * (port == service_port));
                      }

                      else
                      {
                        *(v292 + 48) = v121 | 4;
                        v125 = v118;
                        service_port = _nw_endpoint_get_port(v125);

                        v124 = v292;
                      }

                      v124[18] = service_port;
                      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(service_name, service_port);
                      v128 = *(v124 + 1);
                      v127 = (v124 + 4);
                      *v127 = host_with_numeric_port;

                      v129 = *v127;
                      v130 = v292;
                      nw_endpoint_set_priority(v129, v292[16]);
                      nw_endpoint_set_weight(v130[1], *(v130 + 17));
                      if ((sensitive_redacted & 1) == 0)
                      {
                        nw_endpoint_set_do_not_redact(*(v292 + 1));
                      }

                      if ((v292[24] & 4) == 0)
                      {
                        if (v292[16])
                        {
                          v131 = nw_endpoint_create_host_with_numeric_port(v119, v292[18]);
                          v132 = *(v292 + 2);
                          *(v292 + 2) = v131;

                          v130 = v292;
                          nw_endpoint_set_priority(*(v292 + 2), v292[16]);
                          nw_endpoint_set_weight(v130[2], *(v130 + 17));
                          if ((sensitive_redacted & 1) == 0)
                          {
                            nw_endpoint_set_do_not_redact(*(v292 + 2));
                          }
                        }
                      }

                      if (v110 && ech_config && *(v130 + 16))
                      {
                        v133 = dispatch_data_create(ech_config, v110, 0, 0);
                        v134 = v130[5];
                        v130[5] = v133;
                      }

                      if (v293 && v293[16])
                      {
                        v135 = v292;
                        if ((*(v300 + 370) & 0x20) == 0)
                        {
                          if (*(v300 + 280))
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v136 = gconnectionLogObj;
                            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                            {
                              *v342 = 136446978;
                              *&v342[4] = "nw_resolver_process_service_result";
                              *&v342[12] = 2082;
                              *&v342[14] = v300 + 280;
                              *&v342[22] = 2114;
                              *&v342[24] = v292;
                              *&v342[32] = 2114;
                              *&v342[34] = v293;
                              _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s] Ignoring service %{public}@ with parent %{public}@, should not receive nested services for non-alias services", v342, 0x2Au);
                            }
                          }

                          else
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v136 = gLogObj;
                            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                            {
                              v149 = *(v300 + 91);
                              *v342 = 136446978;
                              *&v342[4] = "nw_resolver_process_service_result";
                              *&v342[12] = 1024;
                              *&v342[14] = v149;
                              *&v342[18] = 2114;
                              *&v342[20] = v292;
                              *&v342[28] = 2114;
                              *&v342[30] = v293;
                              _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_ERROR, "%{public}s [R%u] Ignoring service %{public}@ with parent %{public}@, should not receive nested services for non-alias services", v342, 0x26u);
                            }
                          }

                          v135 = v292;
                        }

                        goto LABEL_355;
                      }

                      v331 = 0;
                      v332 = &v331;
                      v333 = 0x2020000000;
                      v334 = 1;
                      v327 = 0;
                      v328 = &v327;
                      v329 = 0x2020000000;
                      v330 = 1;
                      v320 = MEMORY[0x1E69E9820];
                      v321 = 3221225472;
                      v322 = ___ZL34nw_resolver_process_service_resultP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_servicePU38objcproto27OS_dnssd_getaddrinfo_result8NSObject_block_invoke;
                      v323 = &unk_1E6A2C4F8;
                      v326 = v290;
                      v324 = &v327;
                      v325 = &v331;
                      v135 = v292;
                      dnssd_getaddrinfo_result_enumerate_sla_values();
                      if ((v328[3] & 1) == 0 && *(v332 + 24) == 1)
                      {
                        if ((*(v300 + 370) & 0x20) == 0)
                        {
                          if (*(v300 + 280))
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v137 = gconnectionLogObj;
                            if (!os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                            {
                              goto LABEL_353;
                            }

                            *v342 = 136446722;
                            *&v342[4] = "nw_resolver_process_service_result";
                            *&v342[12] = 2082;
                            *&v342[14] = v300 + 280;
                            *&v342[22] = 2114;
                            *&v342[24] = v292;
                            v138 = v137;
                            v139 = OS_LOG_TYPE_INFO;
                            v140 = "%{public}s [C%{public}s] Ignoring service %{public}@, service sla value does not match resolver sla class";
                            v141 = 32;
                            goto LABEL_346;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v137 = gLogObj;
                          if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                          {
                            v205 = *(v300 + 91);
                            *v342 = 136446722;
                            *&v342[4] = "nw_resolver_process_service_result";
                            *&v342[12] = 1024;
                            *&v342[14] = v205;
                            *&v342[18] = 2114;
                            *&v342[20] = v292;
                            v138 = v137;
                            v139 = OS_LOG_TYPE_INFO;
                            v140 = "%{public}s [R%u] Ignoring service %{public}@, service sla value does not match resolver sla class";
LABEL_317:
                            v141 = 28;
LABEL_346:
                            _os_log_impl(&dword_181A37000, v138, v139, v140, v342, v141);
                          }

LABEL_353:

                          v135 = v292;
                          goto LABEL_354;
                        }

                        goto LABEL_354;
                      }

                      if (v292[16])
                      {
                        v142 = *(v300 + 25);
                        if (v142 || (v143 = _nw_array_create(), v144 = *(v300 + 25), *(v300 + 25) = v143, v144, v142 = *(v300 + 25), v135 = v292, v142))
                        {
                          _nw_array_append(v142, v135);
                        }

                        if ((*(v300 + 370) & 0x20) != 0)
                        {
LABEL_227:
                          v152 = *(v135 + 48);
                          if ((v152 & 2) == 0)
                          {
                            goto LABEL_240;
                          }

                          v153 = *(v135 + 32);
                          v154 = *(v135 + 34);
                          v155 = *(v135 + 36);
                          v156 = v300;
                          if (v153)
                          {
                            if ((v152 & 4) != 0 || v155)
                            {
                              v157 = _nw_array_create();
                              v158 = v156[21];
                              *aBlock = MEMORY[0x1E69E9820];
                              *&aBlock[8] = 3221225472;
                              *&aBlock[16] = ___ZL25nw_resolver_apply_serviceP22NWConcrete_nw_resolverttbt_block_invoke;
                              *&aBlock[24] = &unk_1E6A2C570;
                              v356 = (v152 & 4) >> 2;
                              v353 = v153;
                              v354 = v154;
                              v159 = v157;
                              v351 = v159;
                              v355 = v155;
                              v352 = v156;
                              if (v158)
                              {
                                _nw_array_apply(v158, aBlock);
                              }

                              if (v159 && _nw_array_get_count(v159))
                              {
                                *type = 0;
                                v337 = type;
                                v338 = 0x2020000000;
                                v339 = 0;
                                *v346 = 0;
                                *&v346[8] = v346;
                                *&v346[16] = 0x3032000000;
                                v347 = __Block_byref_object_copy__6340;
                                v348 = __Block_byref_object_dispose__6341;
                                v349 = _nw_array_create();
                                v160 = v156[21];
                                *v342 = MEMORY[0x1E69E9820];
                                *&v342[8] = 3221225472;
                                *&v342[16] = ___ZL25nw_resolver_apply_serviceP22NWConcrete_nw_resolverttbt_block_invoke_242;
                                *&v342[24] = &unk_1E6A2C598;
                                v344 = v153;
                                *&v342[40] = type;
                                v343 = v346;
                                *&v342[32] = v159;
                                v345 = (v152 & 4) >> 2;
                                if (v160)
                                {
                                  _nw_array_apply(v160, v342);
                                }

                                objc_storeStrong(v156 + 21, *(*&v346[8] + 40));

                                _Block_object_dispose(v346, 8);
                                _Block_object_dispose(type, 8);
                              }

                              goto LABEL_239;
                            }

                            v260 = __nwlog_obj();
                            *v346 = 136446210;
                            *&v346[4] = "nw_resolver_apply_service";
                            v257 = _os_log_send_and_compose_impl();

                            type[0] = OS_LOG_TYPE_ERROR;
                            v340 = 0;
                            if (__nwlog_fault(v257, type, &v340))
                            {
                              if (type[0] == OS_LOG_TYPE_FAULT)
                              {
                                v258 = __nwlog_obj();
                                v261 = type[0];
                                if (os_log_type_enabled(v258, type[0]))
                                {
                                  *v346 = 136446210;
                                  *&v346[4] = "nw_resolver_apply_service";
                                  _os_log_impl(&dword_181A37000, v258, v261, "%{public}s called with null (port_matches_origin || port != 0)", v346, 0xCu);
                                }
                              }

                              else if (v340 == 1)
                              {
                                backtrace_string = __nw_create_backtrace_string();
                                v258 = __nwlog_obj();
                                v275 = type[0];
                                v276 = os_log_type_enabled(v258, type[0]);
                                if (backtrace_string)
                                {
                                  if (v276)
                                  {
                                    *v346 = 136446466;
                                    *&v346[4] = "nw_resolver_apply_service";
                                    *&v346[12] = 2082;
                                    *&v346[14] = backtrace_string;
                                    _os_log_impl(&dword_181A37000, v258, v275, "%{public}s called with null (port_matches_origin || port != 0), dumping backtrace:%{public}s", v346, 0x16u);
                                  }

                                  free(backtrace_string);
                                  if (!v257)
                                  {
                                    goto LABEL_239;
                                  }

                                  goto LABEL_502;
                                }

                                if (v276)
                                {
                                  *v346 = 136446210;
                                  *&v346[4] = "nw_resolver_apply_service";
                                  _os_log_impl(&dword_181A37000, v258, v275, "%{public}s called with null (port_matches_origin || port != 0), no backtrace", v346, 0xCu);
                                }
                              }

                              else
                              {
                                v258 = __nwlog_obj();
                                v280 = type[0];
                                if (os_log_type_enabled(v258, type[0]))
                                {
                                  *v346 = 136446210;
                                  *&v346[4] = "nw_resolver_apply_service";
                                  _os_log_impl(&dword_181A37000, v258, v280, "%{public}s called with null (port_matches_origin || port != 0), backtrace limit exceeded", v346, 0xCu);
                                }
                              }

                              goto LABEL_500;
                            }

LABEL_501:
                            if (!v257)
                            {
LABEL_239:

                              v135 = v292;
LABEL_240:
                              v161 = *(v135 + 16);
                              v314 = MEMORY[0x1E69E9820];
                              v315 = 3221225472;
                              v316 = ___ZL34nw_resolver_process_service_resultP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_servicePU38objcproto27OS_dnssd_getaddrinfo_result8NSObject_block_invoke_237;
                              v317 = &unk_1E6A2C520;
                              v162 = v300;
                              v318 = v162;
                              v137 = v161;
                              v319 = v137;
                              dnssd_getaddrinfo_result_enumerate_alpn_values();
                              if (v137)
                              {
                                nw_resolver_update_client_alternative(v162, v137, 0);
                              }

                              *v342 = 0;
                              *&v342[8] = v342;
                              *&v342[16] = 0x2020000000;
                              v342[24] = 0;
                              *&buf[0].sa_len = MEMORY[0x1E69E9820];
                              *&buf[0].sa_data[6] = 3221225472;
                              *&buf[1].sa_len = ___ZL34nw_resolver_process_service_resultP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_servicePU38objcproto27OS_dnssd_getaddrinfo_result8NSObject_block_invoke_238;
                              *&buf[1].sa_data[6] = &unk_1E6A2C548;
                              v163 = v135;
                              *&buf[2].sa_len = v163;
                              v164 = v162;
                              *&buf[2].sa_data[6] = v164;
                              *&buf[3].sa_len = v294;
                              *&buf[3].sa_data[6] = v342;
                              dnssd_getaddrinfo_result_enumerate_service_address_hints();
                              doh_uri = dnssd_getaddrinfo_result_get_doh_uri();
                              if (!doh_uri)
                              {
LABEL_297:
                                if ((*(*&v342[8] + 24) & 1) != 0 || (*(v135 + 48) & 2) != 0)
                                {
                                  goto LABEL_352;
                                }

                                if ((*(v300 + 370) & 0x20) != 0)
                                {
LABEL_351:
                                  nw_resolver_create_dns_getaddrinfo_locked(v164, v163);
LABEL_352:

                                  _Block_object_dispose(v342, 8);
                                  goto LABEL_353;
                                }

                                if (*(v164 + 280))
                                {
                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v193 = gconnectionLogObj;
                                  if (!os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
                                  {
                                    goto LABEL_350;
                                  }

                                  *aBlock = 136446722;
                                  *&aBlock[4] = "nw_resolver_process_service_result";
                                  *&aBlock[12] = 2082;
                                  *&aBlock[14] = v164 + 280;
                                  *&aBlock[22] = 2114;
                                  *&aBlock[24] = v163;
                                  v194 = v193;
                                  v195 = "%{public}s [C%{public}s] Starting new gai query for %{public}@";
                                  v196 = 32;
                                }

                                else
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v193 = gLogObj;
                                  if (!os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
                                  {
LABEL_350:

                                    goto LABEL_351;
                                  }

                                  v220 = *(v164 + 91);
                                  *aBlock = 136446722;
                                  *&aBlock[4] = "nw_resolver_process_service_result";
                                  *&aBlock[12] = 1024;
                                  *&aBlock[14] = v220;
                                  *&aBlock[18] = 2114;
                                  *&aBlock[20] = v163;
                                  v194 = v193;
                                  v195 = "%{public}s [R%u] Starting new gai query for %{public}@";
                                  v196 = 28;
                                }

                                _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_INFO, v195, aBlock, v196);
                                goto LABEL_350;
                              }

                              if ((*(v300 + 370) & 0x20) != 0)
                              {
LABEL_296:
                                *(v300 + 371) |= 8u;
                                goto LABEL_297;
                              }

                              if (*(v164 + 280))
                              {
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v166 = gconnectionLogObj;
                                if (!os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
                                {
                                  goto LABEL_295;
                                }

                                *aBlock = 136446723;
                                *&aBlock[4] = "nw_resolver_process_service_result";
                                *&aBlock[12] = 2082;
                                *&aBlock[14] = v164 + 280;
                                *&aBlock[22] = 2085;
                                *&aBlock[24] = doh_uri;
                                v167 = v166;
                                v168 = "%{public}s [C%{public}s] DoH URI: %{sensitive}s";
                                v169 = 32;
                              }

                              else
                              {
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v166 = gLogObj;
                                if (!os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
                                {
LABEL_295:

                                  v135 = v292;
                                  goto LABEL_296;
                                }

                                v192 = *(v164 + 91);
                                *aBlock = 136446723;
                                *&aBlock[4] = "nw_resolver_process_service_result";
                                *&aBlock[12] = 1024;
                                *&aBlock[14] = v192;
                                *&aBlock[18] = 2085;
                                *&aBlock[20] = doh_uri;
                                v167 = v166;
                                v168 = "%{public}s [R%u] DoH URI: %{sensitive}s";
                                v169 = 28;
                              }

                              _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_INFO, v168, aBlock, v169);
                              goto LABEL_295;
                            }

LABEL_502:
                            free(v257);
                            goto LABEL_239;
                          }

                          v256 = __nwlog_obj();
                          *v346 = 136446210;
                          *&v346[4] = "nw_resolver_apply_service";
                          v257 = _os_log_send_and_compose_impl();

                          type[0] = OS_LOG_TYPE_ERROR;
                          v340 = 0;
                          if (!__nwlog_fault(v257, type, &v340))
                          {
                            goto LABEL_501;
                          }

                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v258 = __nwlog_obj();
                            v259 = type[0];
                            if (os_log_type_enabled(v258, type[0]))
                            {
                              *v346 = 136446210;
                              *&v346[4] = "nw_resolver_apply_service";
                              _os_log_impl(&dword_181A37000, v258, v259, "%{public}s called with null (priority != 0)", v346, 0xCu);
                            }
                          }

                          else if (v340 == 1)
                          {
                            v271 = __nw_create_backtrace_string();
                            v258 = __nwlog_obj();
                            v272 = type[0];
                            v273 = os_log_type_enabled(v258, type[0]);
                            if (v271)
                            {
                              if (v273)
                              {
                                *v346 = 136446466;
                                *&v346[4] = "nw_resolver_apply_service";
                                *&v346[12] = 2082;
                                *&v346[14] = v271;
                                _os_log_impl(&dword_181A37000, v258, v272, "%{public}s called with null (priority != 0), dumping backtrace:%{public}s", v346, 0x16u);
                              }

                              free(v271);
                              goto LABEL_501;
                            }

                            if (v273)
                            {
                              *v346 = 136446210;
                              *&v346[4] = "nw_resolver_apply_service";
                              _os_log_impl(&dword_181A37000, v258, v272, "%{public}s called with null (priority != 0), no backtrace", v346, 0xCu);
                            }
                          }

                          else
                          {
                            v258 = __nwlog_obj();
                            v279 = type[0];
                            if (os_log_type_enabled(v258, type[0]))
                            {
                              *v346 = 136446210;
                              *&v346[4] = "nw_resolver_apply_service";
                              _os_log_impl(&dword_181A37000, v258, v279, "%{public}s called with null (priority != 0), backtrace limit exceeded", v346, 0xCu);
                            }
                          }

LABEL_500:

                          goto LABEL_501;
                        }

                        if (*(v300 + 280))
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v145 = gconnectionLogObj;
                          if (!os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                          {
                            goto LABEL_226;
                          }

                          *v342 = 136446722;
                          *&v342[4] = "nw_resolver_process_service_result";
                          *&v342[12] = 2082;
                          *&v342[14] = v300 + 280;
                          *&v342[22] = 2114;
                          *&v342[24] = v135;
                          v146 = v145;
                          v147 = "%{public}s [C%{public}s] Received %{public}@";
                          v148 = 32;
                        }

                        else
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v145 = gLogObj;
                          if (!os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                          {
LABEL_226:

                            v135 = v292;
                            goto LABEL_227;
                          }

                          v151 = *(v300 + 91);
                          *v342 = 136446722;
                          *&v342[4] = "nw_resolver_process_service_result";
                          *&v342[12] = 1024;
                          *&v342[14] = v151;
                          *&v342[18] = 2114;
                          *&v342[20] = v135;
                          v146 = v145;
                          v147 = "%{public}s [R%u] Received %{public}@";
                          v148 = 28;
                        }

                        _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_INFO, v147, v342, v148);
                        goto LABEL_226;
                      }

                      if (v293)
                      {
                        if ((*(v300 + 370) & 0x20) == 0)
                        {
                          if (*(v300 + 280))
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v137 = gconnectionLogObj;
                            if (!os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_353;
                            }

                            *v342 = 136446978;
                            *&v342[4] = "nw_resolver_process_service_result";
                            *&v342[12] = 2082;
                            *&v342[14] = v300 + 280;
                            *&v342[22] = 2114;
                            *&v342[24] = v292;
                            *&v342[32] = 2114;
                            *&v342[34] = v293;
                            v138 = v137;
                            v139 = OS_LOG_TYPE_ERROR;
                            v140 = "%{public}s [C%{public}s] Ignoring service %{public}@ with parent %{public}@, only one alias will be followed";
                            v141 = 42;
                            goto LABEL_346;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v137 = gLogObj;
                          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                          {
                            v219 = *(v300 + 91);
                            *v342 = 136446978;
                            *&v342[4] = "nw_resolver_process_service_result";
                            *&v342[12] = 1024;
                            *&v342[14] = v219;
                            *&v342[18] = 2114;
                            *&v342[20] = v292;
                            *&v342[28] = 2114;
                            *&v342[30] = v293;
                            v138 = v137;
                            v139 = OS_LOG_TYPE_ERROR;
                            v140 = "%{public}s [R%u] Ignoring service %{public}@ with parent %{public}@, only one alias will be followed";
                            v141 = 38;
                            goto LABEL_346;
                          }

                          goto LABEL_353;
                        }

LABEL_354:
                        _Block_object_dispose(&v327, 8);
                        _Block_object_dispose(&v331, 8);
LABEL_355:

                        goto LABEL_356;
                      }

                      if ((v292[24] & 2) != 0)
                      {
                        if ((*(v300 + 370) & 0x20) == 0)
                        {
                          if (*(v300 + 280))
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v137 = gconnectionLogObj;
                            if (!os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                            {
                              goto LABEL_353;
                            }

                            *v342 = 136446722;
                            *&v342[4] = "nw_resolver_process_service_result";
                            *&v342[12] = 2082;
                            *&v342[14] = v300 + 280;
                            *&v342[22] = 2114;
                            *&v342[24] = v292;
                            v138 = v137;
                            v139 = OS_LOG_TYPE_INFO;
                            v140 = "%{public}s [C%{public}s] Ignoring service %{public}@, alias must not match origin";
                            v141 = 32;
                            goto LABEL_346;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v137 = gLogObj;
                          if (!os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                          {
                            goto LABEL_353;
                          }

                          v221 = *(v300 + 91);
                          *v342 = 136446722;
                          *&v342[4] = "nw_resolver_process_service_result";
                          *&v342[12] = 1024;
                          *&v342[14] = v221;
                          *&v342[18] = 2114;
                          *&v342[20] = v292;
                          v138 = v137;
                          v139 = OS_LOG_TYPE_INFO;
                          v140 = "%{public}s [R%u] Ignoring service %{public}@, alias must not match origin";
                          goto LABEL_317;
                        }

                        goto LABEL_354;
                      }

                      v197 = *(v300 + 25);
                      if (v197 || (v198 = _nw_array_create(), v199 = *(v300 + 25), *(v300 + 25) = v198, v199, v197 = *(v300 + 25), v135 = v292, v197))
                      {
                        _nw_array_append(v197, v135);
                      }

                      v200 = v300;
                      if ((*(v300 + 370) & 0x20) != 0)
                      {
LABEL_365:
                        nw_resolver_create_dns_getaddrinfo_locked(v200, v135);
                        goto LABEL_354;
                      }

                      if (*(v300 + 280))
                      {
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v201 = gconnectionLogObj;
                        if (!os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_364;
                        }

                        *v342 = 136446722;
                        *&v342[4] = "nw_resolver_process_service_result";
                        *&v342[12] = 2082;
                        *&v342[14] = v300 + 280;
                        *&v342[22] = 2114;
                        *&v342[24] = v135;
                        v202 = v201;
                        v203 = "%{public}s [C%{public}s] Starting new gai query for %{public}@";
                        v204 = 32;
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v201 = gLogObj;
                        if (!os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
                        {
LABEL_364:

                          v200 = v300;
                          v135 = v292;
                          goto LABEL_365;
                        }

                        v222 = *(v300 + 91);
                        *v342 = 136446722;
                        *&v342[4] = "nw_resolver_process_service_result";
                        *&v342[12] = 1024;
                        *&v342[14] = v222;
                        *&v342[18] = 2114;
                        *&v342[20] = v135;
                        v202 = v201;
                        v203 = "%{public}s [R%u] Starting new gai query for %{public}@";
                        v204 = 28;
                      }

                      _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_INFO, v203, v342, v204);
                      goto LABEL_364;
                    }

                    v236 = __nwlog_obj();
                    *v342 = 136446210;
                    *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                    v237 = _os_log_send_and_compose_impl();

                    v346[0] = 16;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    if ((__nwlog_fault(v237, v346, type) & 1) == 0)
                    {
                      goto LABEL_454;
                    }

                    if (v346[0] == 17)
                    {
                      v238 = __nwlog_obj();
                      v239 = v346[0];
                      if (os_log_type_enabled(v238, v346[0]))
                      {
                        *v342 = 136446210;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        _os_log_impl(&dword_181A37000, v238, v239, "%{public}s called with null origin_name", v342, 0xCu);
                      }
                    }

                    else if (type[0] == OS_LOG_TYPE_INFO)
                    {
                      v249 = __nw_create_backtrace_string();
                      v238 = __nwlog_obj();
                      v250 = v346[0];
                      v251 = os_log_type_enabled(v238, v346[0]);
                      if (v249)
                      {
                        if (v251)
                        {
                          *v342 = 136446466;
                          *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                          *&v342[12] = 2082;
                          *&v342[14] = v249;
                          _os_log_impl(&dword_181A37000, v238, v250, "%{public}s called with null origin_name, dumping backtrace:%{public}s", v342, 0x16u);
                        }

                        free(v249);
                        goto LABEL_454;
                      }

                      if (v251)
                      {
                        *v342 = 136446210;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        _os_log_impl(&dword_181A37000, v238, v250, "%{public}s called with null origin_name, no backtrace", v342, 0xCu);
                      }
                    }

                    else
                    {
                      v238 = __nwlog_obj();
                      v255 = v346[0];
                      if (os_log_type_enabled(v238, v346[0]))
                      {
                        *v342 = 136446210;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        _os_log_impl(&dword_181A37000, v238, v255, "%{public}s called with null origin_name, backtrace limit exceeded", v342, 0xCu);
                      }
                    }

LABEL_454:
                    v262 = v292;
                    if (v237)
                    {
                      free(v237);
                    }

LABEL_456:

                    goto LABEL_457;
                  }

                  v232 = __nwlog_obj();
                  *v342 = 136446210;
                  *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                  v233 = _os_log_send_and_compose_impl();

                  v346[0] = 16;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v233, v346, type))
                  {
                    if (v346[0] == 17)
                    {
                      v234 = __nwlog_obj();
                      v235 = v346[0];
                      if (os_log_type_enabled(v234, v346[0]))
                      {
                        *v342 = 136446210;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        _os_log_impl(&dword_181A37000, v234, v235, "%{public}s called with null (nw_endpoint_get_type(_origin) == nw_endpoint_type_host)", v342, 0xCu);
                      }
                    }

                    else if (type[0] == OS_LOG_TYPE_INFO)
                    {
                      v246 = __nw_create_backtrace_string();
                      v234 = __nwlog_obj();
                      v247 = v346[0];
                      v248 = os_log_type_enabled(v234, v346[0]);
                      if (v246)
                      {
                        if (v248)
                        {
                          *v342 = 136446466;
                          *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                          *&v342[12] = 2082;
                          *&v342[14] = v246;
                          _os_log_impl(&dword_181A37000, v234, v247, "%{public}s called with null (nw_endpoint_get_type(_origin) == nw_endpoint_type_host), dumping backtrace:%{public}s", v342, 0x16u);
                        }

                        free(v246);
                        goto LABEL_448;
                      }

                      if (v248)
                      {
                        *v342 = 136446210;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        _os_log_impl(&dword_181A37000, v234, v247, "%{public}s called with null (nw_endpoint_get_type(_origin) == nw_endpoint_type_host), no backtrace", v342, 0xCu);
                      }
                    }

                    else
                    {
                      v234 = __nwlog_obj();
                      v254 = v346[0];
                      if (os_log_type_enabled(v234, v346[0]))
                      {
                        *v342 = 136446210;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        _os_log_impl(&dword_181A37000, v234, v254, "%{public}s called with null (nw_endpoint_get_type(_origin) == nw_endpoint_type_host), backtrace limit exceeded", v342, 0xCu);
                      }
                    }
                  }

LABEL_448:
                  v262 = v292;
                  if (v233)
                  {
                    free(v233);
                  }

                  goto LABEL_456;
                }

                v228 = __nwlog_obj();
                *v342 = 136446210;
                *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                v229 = _os_log_send_and_compose_impl();

                v346[0] = 16;
                type[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v229, v346, type))
                {
                  if (v346[0] == 17)
                  {
                    v230 = __nwlog_obj();
                    v231 = v346[0];
                    if (os_log_type_enabled(v230, v346[0]))
                    {
                      *v342 = 136446210;
                      *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                      _os_log_impl(&dword_181A37000, v230, v231, "%{public}s called with null _origin", v342, 0xCu);
                    }
                  }

                  else if (type[0] == OS_LOG_TYPE_INFO)
                  {
                    v243 = __nw_create_backtrace_string();
                    v230 = __nwlog_obj();
                    v244 = v346[0];
                    v245 = os_log_type_enabled(v230, v346[0]);
                    if (v243)
                    {
                      if (v245)
                      {
                        *v342 = 136446466;
                        *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                        *&v342[12] = 2082;
                        *&v342[14] = v243;
                        _os_log_impl(&dword_181A37000, v230, v244, "%{public}s called with null _origin, dumping backtrace:%{public}s", v342, 0x16u);
                      }

                      free(v243);
                      goto LABEL_442;
                    }

                    if (v245)
                    {
                      *v342 = 136446210;
                      *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                      _os_log_impl(&dword_181A37000, v230, v244, "%{public}s called with null _origin, no backtrace", v342, 0xCu);
                    }
                  }

                  else
                  {
                    v230 = __nwlog_obj();
                    v253 = v346[0];
                    if (os_log_type_enabled(v230, v346[0]))
                    {
                      *v342 = 136446210;
                      *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                      _os_log_impl(&dword_181A37000, v230, v253, "%{public}s called with null _origin, backtrace limit exceeded", v342, 0xCu);
                    }
                  }
                }

LABEL_442:
                v262 = v292;
                if (v229)
                {
                  free(v229);
                }

                goto LABEL_456;
              }

              v224 = __nwlog_obj();
              *v342 = 136446210;
              *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
              v225 = _os_log_send_and_compose_impl();

              v346[0] = 16;
              type[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v225, v346, type))
              {
                if (v346[0] == 17)
                {
                  v226 = __nwlog_obj();
                  v227 = v346[0];
                  if (os_log_type_enabled(v226, v346[0]))
                  {
                    *v342 = 136446210;
                    *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                    _os_log_impl(&dword_181A37000, v226, v227, "%{public}s [super init] failed", v342, 0xCu);
                  }
                }

                else if (type[0] == OS_LOG_TYPE_INFO)
                {
                  v240 = __nw_create_backtrace_string();
                  v226 = __nwlog_obj();
                  v241 = v346[0];
                  v242 = os_log_type_enabled(v226, v346[0]);
                  if (v240)
                  {
                    if (v242)
                    {
                      *v342 = 136446466;
                      *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                      *&v342[12] = 2082;
                      *&v342[14] = v240;
                      _os_log_impl(&dword_181A37000, v226, v241, "%{public}s [super init] failed, dumping backtrace:%{public}s", v342, 0x16u);
                    }

                    free(v240);
                    goto LABEL_437;
                  }

                  if (v242)
                  {
                    *v342 = 136446210;
                    *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                    _os_log_impl(&dword_181A37000, v226, v241, "%{public}s [super init] failed, no backtrace", v342, 0xCu);
                  }
                }

                else
                {
                  v226 = __nwlog_obj();
                  v252 = v346[0];
                  if (os_log_type_enabled(v226, v346[0]))
                  {
                    *v342 = 136446210;
                    *&v342[4] = "[NWConcrete_nw_resolver_service initWithOrigin:priority:serviceName:port:echConfig:echConfigLength:sensitiveRedacted:]";
                    _os_log_impl(&dword_181A37000, v226, v252, "%{public}s [super init] failed, backtrace limit exceeded", v342, 0xCu);
                  }
                }
              }

LABEL_437:
              if (v225)
              {
                free(v225);
              }

LABEL_457:

              v263 = __nwlog_obj();
              *v342 = 136446210;
              *&v342[4] = "nw_resolver_process_service_result";
              v264 = _os_log_send_and_compose_impl();

              aBlock[0] = 16;
              v346[0] = 0;
              if (__nwlog_fault(v264, aBlock, v346))
              {
                if (aBlock[0] == 17)
                {
                  v265 = __nwlog_obj();
                  v266 = aBlock[0];
                  if (os_log_type_enabled(v265, aBlock[0]))
                  {
                    *v342 = 136446210;
                    *&v342[4] = "nw_resolver_process_service_result";
                    _os_log_impl(&dword_181A37000, v265, v266, "%{public}s called with null service", v342, 0xCu);
                  }
                }

                else if (v346[0] == 1)
                {
                  v267 = __nw_create_backtrace_string();
                  v265 = __nwlog_obj();
                  v268 = aBlock[0];
                  v269 = os_log_type_enabled(v265, aBlock[0]);
                  if (v267)
                  {
                    if (v269)
                    {
                      *v342 = 136446466;
                      *&v342[4] = "nw_resolver_process_service_result";
                      *&v342[12] = 2082;
                      *&v342[14] = v267;
                      _os_log_impl(&dword_181A37000, v265, v268, "%{public}s called with null service, dumping backtrace:%{public}s", v342, 0x16u);
                    }

                    free(v267);
                    goto LABEL_473;
                  }

                  if (v269)
                  {
                    *v342 = 136446210;
                    *&v342[4] = "nw_resolver_process_service_result";
                    _os_log_impl(&dword_181A37000, v265, v268, "%{public}s called with null service, no backtrace", v342, 0xCu);
                  }
                }

                else
                {
                  v265 = __nwlog_obj();
                  v270 = aBlock[0];
                  if (os_log_type_enabled(v265, aBlock[0]))
                  {
                    *v342 = 136446210;
                    *&v342[4] = "nw_resolver_process_service_result";
                    _os_log_impl(&dword_181A37000, v265, v270, "%{public}s called with null service, backtrace limit exceeded", v342, 0xCu);
                  }
                }
              }

LABEL_473:
              if (v264)
              {
                free(v264);
              }

              v135 = 0;
              goto LABEL_355;
            }

            v105 = *(v300 + 91);
            *v342 = 136446722;
            *&v342[4] = "nw_resolver_process_service_result";
            *&v342[12] = 1024;
            *&v342[14] = v105;
            *&v342[18] = 1024;
            *&v342[20] = v290;
            v102 = v101;
            v103 = "%{public}s [R%u] Resolver traffic sla class: %d";
            v104 = 24;
          }

          _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, v103, v342, v104);
          goto LABEL_162;
        }

        if (!v300)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *v342 = 136446210;
            *&v342[4] = "nw_resolver_process_service_result";
            _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_ERROR, "%{public}s Service result did not contain name, ignoring", v342, 0xCu);
          }

          goto LABEL_220;
        }

        if ((*(v300 + 370) & 0x20) == 0)
        {
          if (*(v300 + 280))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v98 = gconnectionLogObj;
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              *v342 = 136446466;
              *&v342[4] = "nw_resolver_process_service_result";
              *&v342[12] = 2082;
              *&v342[14] = v300 + 280;
              _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s] Service result did not contain name, ignoring", v342, 0x16u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v98 = gLogObj;
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              v150 = *(v300 + 91);
              *v342 = 136446466;
              *&v342[4] = "nw_resolver_process_service_result";
              *&v342[12] = 1024;
              *&v342[14] = v150;
              _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_ERROR, "%{public}s [R%u] Service result did not contain name, ignoring", v342, 0x12u);
            }
          }

LABEL_220:
        }
      }

LABEL_356:

      goto LABEL_357;
    }

    v86 = dnssd_getaddrinfo_result_get_address();
    v87 = dnssd_getaddrinfo_result_get_interface_index();
    if (!v86)
    {
      goto LABEL_337;
    }

    if (v86->sa_len > 0x80u)
    {
      goto LABEL_337;
    }

    v88 = v87;
    sa_family = v86->sa_family;
    if (sa_family != 30 && sa_family != 2)
    {
      goto LABEL_337;
    }

    memset(buf, 0, sizeof(buf));
    memcpy(buf, v86, v86->sa_len);
    if (!dnssd_getaddrinfo_result_has_extended_dns_error())
    {
      goto LABEL_273;
    }

    extended_dns_error_code = dnssd_getaddrinfo_result_get_extended_dns_error_code();
    extended_dns_error_text = dnssd_getaddrinfo_result_get_extended_dns_error_text();
    v92 = *(v301 + 32);
    if (v92)
    {
      if ((*(v92 + 370) & 0x20) != 0)
      {
        goto LABEL_253;
      }

      if (*(v92 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v93 = gconnectionLogObj;
        if (!os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          goto LABEL_252;
        }

        v94 = *(v301 + 32) + 280;
        *v342 = 136446978;
        *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&v342[12] = 2082;
        *&v342[14] = v94;
        *&v342[22] = 1024;
        *&v342[24] = extended_dns_error_code;
        *&v342[28] = 2082;
        *&v342[30] = extended_dns_error_text;
        v95 = v93;
        v96 = "%{public}s [C%{public}s] Got Extended DNS Error: %u %{public}s";
        v97 = 38;
        goto LABEL_251;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v93 = gLogObj;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v170 = *(*(v301 + 32) + 364);
        *v342 = 136446978;
        *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&v342[12] = 1024;
        *&v342[14] = v170;
        *&v342[18] = 1024;
        *&v342[20] = extended_dns_error_code;
        *&v342[24] = 2082;
        *&v342[26] = extended_dns_error_text;
        v95 = v93;
        v96 = "%{public}s [R%u] Got Extended DNS Error: %u %{public}s";
        v97 = 34;
        goto LABEL_251;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v93 = gLogObj;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        *v342 = 136446722;
        *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&v342[12] = 1024;
        *&v342[14] = extended_dns_error_code;
        *&v342[18] = 2082;
        *&v342[20] = extended_dns_error_text;
        v95 = v93;
        v96 = "%{public}s Got Extended DNS Error: %u %{public}s";
        v97 = 28;
LABEL_251:
        _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_INFO, v96, v342, v97);
      }
    }

LABEL_252:

LABEL_253:
    if (!extended_dns_error_code)
    {
      goto LABEL_273;
    }

    v171 = *(v301 + 32);
    if (!*(v171 + 368) || v82 == 1)
    {
      *(v171 + 368) = extended_dns_error_code;
      v172 = *(*(v301 + 32) + 248);
      if (v172)
      {
        free(v172);
        *(*(v301 + 32) + 248) = 0;
      }

      if (extended_dns_error_text && (v78 - 3) <= 1)
      {
        break;
      }
    }

LABEL_262:
    if (extended_dns_error_code != 4)
    {
LABEL_273:
      if (v82 == 1)
      {
        v188 = 0;
        v189 = 0;
        v190 = 2;
        goto LABEL_325;
      }

      if (v82 == 4)
      {
        v188 = 0;
        v189 = 0;
        v190 = -2147483646;
        goto LABEL_325;
      }

      if (v82 != 3)
      {
LABEL_285:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        goto LABEL_325;
      }

LABEL_276:
      negative_reason = dnssd_getaddrinfo_result_get_negative_reason();
      v181 = *(v301 + 32);
      if (v181)
      {
        if ((*(v181 + 370) & 0x20) != 0)
        {
LABEL_324:
          v190 = 0;
          v188 = negative_reason - 3 < 2;
          v189 = -65554;
          v82 = 3;
LABEL_325:
          if (dnssd_getaddrinfo_result_is_from_cache())
          {
            v208 = v190 | 0x40000000;
          }

          else
          {
            v208 = v190;
          }

          nw_resolver_update_flags_locked(*(v301 + 32), *(v301 + 40), v208, v189, v86, 0, v188);
          if (v82 == 4 || v82 == 1)
          {
            *aBlock = 0;
            *&aBlock[8] = aBlock;
            *&aBlock[16] = 0x2020000000;
            *&aBlock[24] = 0;
            v320 = 0;
            v321 = &v320;
            v322 = 0x2020000000;
            LOWORD(v323) = 0;
            *v342 = 0;
            *&v342[8] = v342;
            *&v342[16] = 0x3032000000;
            *&v342[24] = __Block_byref_object_copy__6340;
            *&v342[32] = __Block_byref_object_dispose__6341;
            *&v342[40] = 0;
            v209 = *(v301 + 40);
            if (v209)
            {
              v210 = v209;
              v211 = v210[16];

              *(*&aBlock[8] + 24) = v211;
              weight = nw_resolver_service_get_weight(*(v301 + 40));
              *(v321 + 24) = weight;
              v213 = nw_resolver_service_copy_ech_config(*(v301 + 40));
              v214 = *(*&v342[8] + 40);
              *(*&v342[8] + 40) = v213;
            }

            else
            {
              v216 = *(v301 + 32);
              v217 = v216[25];
              v304[0] = MEMORY[0x1E69E9820];
              v304[1] = 3221225472;
              v304[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_223;
              v304[3] = &unk_1E6A2C418;
              v307 = aBlock;
              v308 = &v320;
              v309 = v342;
              v310 = buf;
              v305 = v216;
              v218 = v76;
              v306 = v218;
              if (v217)
              {
                _nw_array_apply(v217, v304);
                v218 = v306;
              }

              v214 = v305;
            }

            *buf[0].sa_data = __rev16(nw_endpoint_get_port(*(v301 + 48)));
            nw_resolver_insert_address(*(v301 + 32), v76, buf, *(*&aBlock[8] + 24), *(v321 + 24), *(*&v342[8] + 40));
            _Block_object_dispose(v342, 8);

            _Block_object_dispose(&v320, 8);
            _Block_object_dispose(aBlock, 8);
          }

          else
          {
            v215 = *(v301 + 32);
            v302[0] = MEMORY[0x1E69E9820];
            v302[1] = 3221225472;
            v302[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_2_224;
            v302[3] = &__block_descriptor_44_e63_B24__0__NSObject_OS_nw_endpoint__8__NSObject_OS_nw_endpoint__16l;
            v302[4] = buf;
            v303 = v88;
            nw_resolver_remove_endpoint_locked(v215, v302);
          }

LABEL_337:
          v291 = 1;
          goto LABEL_357;
        }

        if (*(v181 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v182 = gconnectionLogObj;
          if (!os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
          {
            goto LABEL_323;
          }

          v183 = "<unknown reason>";
          if (negative_reason <= 5)
          {
            v183 = off_1E6A2C730[negative_reason];
          }

          v184 = *(v301 + 32) + 280;
          *v342 = 136446722;
          *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          *&v342[12] = 2082;
          *&v342[14] = v184;
          *&v342[22] = 2082;
          *&v342[24] = v183;
          v185 = v182;
          v186 = "%{public}s [C%{public}s] Got DNS negative reason: %{public}s";
          v187 = 32;
          goto LABEL_322;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v182 = gLogObj;
        if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
        {
          v206 = "<unknown reason>";
          if (negative_reason <= 5)
          {
            v206 = off_1E6A2C730[negative_reason];
          }

          v207 = *(*(v301 + 32) + 364);
          *v342 = 136446722;
          *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          *&v342[12] = 1024;
          *&v342[14] = v207;
          *&v342[18] = 2082;
          *&v342[20] = v206;
          v185 = v182;
          v186 = "%{public}s [R%u] Got DNS negative reason: %{public}s";
          v187 = 28;
LABEL_322:
          _os_log_impl(&dword_181A37000, v185, OS_LOG_TYPE_INFO, v186, v342, v187);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v182 = gLogObj;
        if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
        {
          v191 = "<unknown reason>";
          if (negative_reason <= 5)
          {
            v191 = off_1E6A2C730[negative_reason];
          }

          *v342 = 136446466;
          *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
          *&v342[12] = 2082;
          *&v342[14] = v191;
          v185 = v182;
          v186 = "%{public}s Got DNS negative reason: %{public}s";
          v187 = 22;
          goto LABEL_322;
        }
      }

LABEL_323:

      goto LABEL_324;
    }

    if (v82 == 1 || v82 == 3)
    {
      goto LABEL_276;
    }

    if (v82 != 4)
    {
      goto LABEL_285;
    }

    v174 = *(v301 + 32);
    if (!v174)
    {
      v175 = __nwlog_obj();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
      {
        *v342 = 136446210;
        *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        v177 = v175;
        v178 = "%{public}s Received expired forged answer, ignoring";
        v179 = 12;
LABEL_370:
        _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_INFO, v178, v342, v179);
      }

LABEL_371:

      goto LABEL_357;
    }

    if ((*(v174 + 370) & 0x20) == 0)
    {
      if (*(v174 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v175 = gconnectionLogObj;
        if (!os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
        {
          goto LABEL_371;
        }

        v176 = *(v301 + 32) + 280;
        *v342 = 136446466;
        *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&v342[12] = 2082;
        *&v342[14] = v176;
        v177 = v175;
        v178 = "%{public}s [C%{public}s] Received expired forged answer, ignoring";
        v179 = 22;
        goto LABEL_370;
      }

      v175 = __nwlog_obj();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
      {
        v223 = *(*(v301 + 32) + 364);
        *v342 = 136446466;
        *&v342[4] = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
        *&v342[12] = 1024;
        *&v342[14] = v223;
        v177 = v175;
        v178 = "%{public}s [R%u] Received expired forged answer, ignoring";
        v179 = 18;
        goto LABEL_370;
      }

      goto LABEL_371;
    }

LABEL_357:

    v75 = v296 + 1;
    if (!--a3)
    {
      goto LABEL_504;
    }
  }

  v173 = strdup(extended_dns_error_text);
  if (v173)
  {
LABEL_261:
    *(*(v301 + 32) + 248) = v173;
    goto LABEL_262;
  }

  v277 = __nwlog_obj();
  os_log_type_enabled(v277, OS_LOG_TYPE_ERROR);
  *v342 = 136446210;
  *&v342[4] = "strict_strdup";
  v278 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v278))
  {
    free(v278);
    v173 = 0;
    goto LABEL_261;
  }

  __break(1u);
}
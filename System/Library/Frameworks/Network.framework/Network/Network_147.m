uint64_t __nw_protocol_trainer_bottom_check_output_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = a2;
    v5 = _nw_array_create();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 48);
    if (v7)
    {
      a2 = v4;
      if (*(v6 + 40))
      {
        v8 = v5;
        os_release(*(v6 + 40));
        v5 = v8;
        a2 = v4;
        v7 = *(v6 + 48);
      }
    }

    else
    {
      a2 = v4;
    }

    *(v6 + 40) = v5;
    *(v6 + 48) = v7 | 1;
    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (v3)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    _nw_array_append(v3, a2);
  }

  return 1;
}

uint64_t nw_protocol_trainer_top_check_input(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_check_input";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_top_check_input";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_53;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v22 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v22)
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_top_check_input";
        v20 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_53;
      }

      if (v22)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_trainer_top_check_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_43:
        _os_log_impl(&dword_181A37000, v18, v19, v23, buf, 0x16u);
      }

LABEL_44:
      free(backtrace_string);
      goto LABEL_54;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_check_input";
    v20 = "%{public}s called with null protocol";
LABEL_53:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_54:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_check_input";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_top_check_input";
      v20 = "%{public}s called with null trainer";
      goto LABEL_53;
    }

    if (v30 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_top_check_input";
      v20 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v24 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v24)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_trainer_top_check_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v23 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (!v24)
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_check_input";
    v20 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_53;
  }

  v3 = *(v2 + 120);
  if (!v3)
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v33 = __Block_byref_object_copy__18111;
  v34 = __Block_byref_object_dispose__18112;
  object = 0;
  v36 = -1;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v27 = __nw_protocol_trainer_top_check_input_block_invoke;
  v28 = &unk_1E6A2DE68;
  v29 = buf;
  v5 = *(v3 + 64);
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = *v5;
        v7 = v5[6];
        if (v7)
        {
          break;
        }

        v5 = *v5;
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      _nw_protocol_metadata_is_ip(v7);
      if (v27(v26, v5[6]))
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      v5 = v6;
    }

    while (!v8);
  }

LABEL_13:
  if (!*(v3 + 112) || (*(v3 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v3, *(v3 + 88)))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v10 = *(v3 + 52);
    v9 = *(v3 + 56);
    if (v10)
    {
      v11 = (v10 - (v9 + *(v3 + 60)));
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v3 + 112) + v9;
  }

  v13 = (*(a2 + 16))(a2, *(*&buf[8] + 40), v12, v11);
  v14 = (v2 + 128);
  v15 = *(v3 + 32);
  v16 = *(v3 + 40);
  if (v15)
  {
    v14 = (v15 + 40);
  }

  *v14 = v16;
  *v16 = v15;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  nw_frame_finalize(v3);
  _Block_object_dispose(buf, 8);
  if ((v36 & 1) != 0 && object)
  {
    os_release(object);
  }

  return v13;
}

uint64_t __nw_protocol_trainer_top_check_input_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = a2;
    v5 = _nw_array_create();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 48);
    if (v7)
    {
      a2 = v4;
      if (*(v6 + 40))
      {
        v8 = v5;
        os_release(*(v6 + 40));
        v5 = v8;
        a2 = v4;
        v7 = *(v6 + 48);
      }
    }

    else
    {
      a2 = v4;
    }

    *(v6 + 40) = v5;
    *(v6 + 48) = v7 | 1;
    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (v3)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    _nw_array_append(v3, a2);
  }

  return 1;
}

uint64_t nw_protocol_trainer_top_inject_output(uint64_t a1, void *a2, int a3, const void *a4, size_t size)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_trainer_top_inject_output";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v19, &type, &v27))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v22 = "%{public}s called with null protocol";
LABEL_41:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }

LABEL_42:
      if (v19)
      {
        free(v19);
      }

      return 0;
    }

    if (v27 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v24 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v24)
    {
      *buf = 136446466;
      v30 = "nw_protocol_trainer_top_inject_output";
      v31 = 2082;
      v32 = backtrace_string;
      v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_31:
      _os_log_impl(&dword_181A37000, v20, v21, v25, buf, 0x16u);
    }

LABEL_32:
    free(backtrace_string);
    goto LABEL_42;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_trainer_top_inject_output";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v19, &type, &v27))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v22 = "%{public}s called with null trainer";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v27 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v22 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v26 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v22 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v26)
    {
      *buf = 136446466;
      v30 = "nw_protocol_trainer_top_inject_output";
      v31 = 2082;
      v32 = backtrace_string;
      v25 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  if (a4)
  {
    v12 = size;
    if (size)
    {
      v11 = malloc_type_malloc(size, 0xF49B451AuLL);
      if (!v11)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v30 = "nw_protocol_trainer_top_inject_output";
        v13 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v13);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v13);
      }

      memcpy(v11, a4, v12);
      v10 = v12;
    }
  }

  v15 = nw_frame_create(0, v11, v10, nw_protocol_trainer_frame_finalizer, a1);
  v16 = v15;
  if (a2)
  {
    nw_frame_set_metadata(v15, a2, 0, a3);
  }

  if (v11)
  {
    nw_frame_set_buffer_used_malloc(v16, 1);
  }

  v16[2] = 0;
  v17 = *(v6 + 80);
  v16[3] = v17;
  *v17 = v16;
  *(v6 + 80) = v16 + 2;
  v16[4] = 0;
  v18 = *(v6 + 112);
  v16[5] = v18;
  *v18 = v16;
  *(v6 + 112) = v16 + 4;
  ++*(v6 + 192);
  return 1;
}

uint64_t nw_protocol_trainer_top_flush_output(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_flush_output";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, type, &v28))
    {
      goto LABEL_40;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (!os_log_type_enabled(v12, type[0]))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_top_flush_output";
        v14 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v16 = os_log_type_enabled(v12, type[0]);
      if (!backtrace_string)
      {
        if (!v16)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_top_flush_output";
        v14 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_trainer_top_flush_output";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_29:
        _os_log_impl(&dword_181A37000, v12, v13, v17, buf, 0x16u);
      }

LABEL_30:
      free(backtrace_string);
      goto LABEL_40;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_flush_output";
    v14 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_40:
    if (v11)
    {
      free(v11);
    }

    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_flush_output";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, type, &v28))
    {
      goto LABEL_40;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_top_flush_output";
      v14 = "%{public}s called with null trainer";
      goto LABEL_39;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_top_flush_output";
      v14 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v18 = os_log_type_enabled(v12, type[0]);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_trainer_top_flush_output";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v17 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_top_flush_output";
    v14 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_39;
  }

  if (!*(v1 + 192) || !*(v1 + 104))
  {
    return 1;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  v4 = *(v3 + 88);
  if (!v4 || !*(v3 + 96))
  {
    return 0;
  }

  *type = 0;
  v27 = type;
  v4(v2, a1, 1, 0xFFFFFFFFLL);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v30 = 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v20 = __nw_protocol_trainer_top_flush_output_block_invoke;
  v21 = &unk_1E6A2DEB8;
  v22 = buf;
  v23 = type;
  v24 = v1;
  v25 = a1;
  v6 = *type;
  do
  {
    if (!v6)
    {
      break;
    }

    v7 = *(v6 + 32);
    v8 = v20(v19);
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  v9 = (*(*(v2 + 24) + 96))(v2, type);
  _Block_object_dispose(buf, 8);
  return v9;
}

uint64_t __nw_protocol_trainer_top_flush_output_block_invoke(void *a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24))
  {
    v4 = *(a1[6] + 104);
    if (v4)
    {
      v53 = 0;
      v5 = nw_frame_unclaimed_bytes(a2, &v53);
      if (!*(v4 + 112) || (*(v4 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v4, *(v4 + 88)))
      {
        v8 = 0;
        v12 = 0;
      }

      else
      {
        v7 = *(v4 + 52);
        v6 = *(v4 + 56);
        if (v7)
        {
          v8 = v7 - (v6 + *(v4 + 60));
        }

        else
        {
          v8 = 0;
        }

        v12 = (*(v4 + 112) + v6);
      }

      v49 = 0;
      v50 = &v49;
      v51 = 0x2000000000;
      v52 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 0x40000000;
      v45 = __nw_protocol_trainer_top_flush_output_block_invoke_2;
      v46 = &unk_1E6A2DE90;
      v47 = &v49;
      v48 = a2;
      v13 = *(v4 + 64);
      if (!v13)
      {
        goto LABEL_27;
      }

      do
      {
        while (1)
        {
          v14 = *v13;
          v15 = v13[6];
          if (v15)
          {
            break;
          }

          v13 = *v13;
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        _nw_protocol_metadata_is_ip(v15);
        if (v45(v44, v13[6]))
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        v13 = v14;
      }

      while (!v16);
LABEL_24:
      if ((v50[3] & 1) == 0)
      {
LABEL_27:
        if (!v5 || !v12 || v53 < v8)
        {
          *(*(a1[4] + 8) + 24) = 0;
          v30 = (a1[5] + 8);
          v31 = *(a2 + 32);
          v32 = *(a2 + 40);
          if (v31)
          {
            v30 = (v31 + 40);
          }

          *v30 = v32;
          *v32 = v31;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          nw_frame_finalize(a2);
          v33 = (a1[6] + 112);
          v34 = *(v4 + 32);
          v35 = *(v4 + 40);
          if (v34)
          {
            v33 = (v34 + 40);
          }

          *v33 = v35;
          *v35 = v34;
          *(v4 + 32) = 0;
          *(v4 + 40) = 0;
          goto LABEL_56;
        }
      }

      if (v5 && v12)
      {
        memcpy(v5, v12, v8);
        nw_frame_claim(a2, v17, v8, 0);
        nw_frame_collapse(a2);
        nw_frame_unclaim(a2, v18, v8, 0);
      }

      v19 = (a1[6] + 112);
      v20 = *(v4 + 32);
      v21 = *(v4 + 40);
      if (v20)
      {
        v19 = (v20 + 40);
      }

      *v19 = v21;
      *v21 = v20;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      v22 = a1[6];
      v23 = *(v22 + 192);
      *(v22 + 192) = v23 - 1;
      if (v23)
      {
LABEL_56:
        nw_frame_finalize(v4);
        _Block_object_dispose(&v49, 8);
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = *(a1[6] + 192);
      *buf = 136446978;
      v55 = "nw_protocol_trainer_top_flush_output_block_invoke";
      v56 = 2082;
      v57 = "trainer->injected_output_count";
      v58 = 2048;
      v59 = 1;
      v60 = 2048;
      v61 = v24;
      v25 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v42 = 0;
      if (__nwlog_fault(v25, &type, &v42))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v28 = *(a1[6] + 192);
            *buf = 136446978;
            v55 = "nw_protocol_trainer_top_flush_output_block_invoke";
            v56 = 2082;
            v57 = "trainer->injected_output_count";
            v58 = 2048;
            v59 = 1;
            v60 = 2048;
            v61 = v28;
            v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_52:
            _os_log_impl(&dword_181A37000, v26, v27, v29, buf, 0x2Au);
          }
        }

        else if (v42 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v27 = type;
          v37 = os_log_type_enabled(v26, type);
          if (backtrace_string)
          {
            if (v37)
            {
              v38 = *(a1[6] + 192);
              *buf = 136447234;
              v55 = "nw_protocol_trainer_top_flush_output_block_invoke";
              v56 = 2082;
              v57 = "trainer->injected_output_count";
              v58 = 2048;
              v59 = 1;
              v60 = 2048;
              v61 = v38;
              v62 = 2082;
              v63 = backtrace_string;
              _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(backtrace_string);
            goto LABEL_53;
          }

          if (v37)
          {
            v40 = *(a1[6] + 192);
            *buf = 136446978;
            v55 = "nw_protocol_trainer_top_flush_output_block_invoke";
            v56 = 2082;
            v57 = "trainer->injected_output_count";
            v58 = 2048;
            v59 = 1;
            v60 = 2048;
            v61 = v40;
            v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_52;
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            v39 = *(a1[6] + 192);
            *buf = 136446978;
            v55 = "nw_protocol_trainer_top_flush_output_block_invoke";
            v56 = 2082;
            v57 = "trainer->injected_output_count";
            v58 = 2048;
            v59 = 1;
            v60 = 2048;
            v61 = v39;
            v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_52;
          }
        }
      }

LABEL_53:
      if (v25)
      {
        free(v25);
      }

      *(a1[6] + 192) = 0;
      goto LABEL_56;
    }
  }

  v9 = (a1[5] + 8);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v10)
  {
    v9 = (v10 + 40);
  }

  *v9 = v11;
  *v11 = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t __nw_protocol_trainer_top_flush_output_block_invoke_2(uint64_t a1, void *a2)
{
  nw_frame_set_metadata(*(a1 + 40), a2, 0, 1);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 1;
}

uint64_t nw_protocol_trainer_top_connect(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_top_connect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_top_connect";
      v7 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_top_connect";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_top_connect";
      v7 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_35;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_trainer_top_connect";
      v16 = 2082;
      v17 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_36:
    if (!v4)
    {
      return 0;
    }

LABEL_37:
    free(v4);
    return 0;
  }

  if (!*(a1 + 40))
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_top_connect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_top_connect";
      v7 = "%{public}s called with null trainer";
      goto LABEL_35;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_top_connect";
      v7 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_35;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (v10)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_trainer_top_connect";
        v16 = 2082;
        v17 = v10;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v10);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_37;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_trainer_top_connect";
      v7 = "%{public}s called with null trainer, no backtrace";
LABEL_35:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + 24) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2();
}

uint64_t nw_protocol_trainer_top_disconnect(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_top_disconnect";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_33;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v11 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v14 = "nw_protocol_trainer_top_disconnect";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v8)
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v14 = "nw_protocol_trainer_top_disconnect";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_32;
      }

      if (v8)
      {
        *buf = 136446466;
        v14 = "nw_protocol_trainer_top_disconnect";
        v15 = 2082;
        v16 = backtrace_string;
        v9 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_22:
        _os_log_impl(&dword_181A37000, v4, v5, v9, buf, 0x16u);
      }

LABEL_23:
      free(backtrace_string);
      goto LABEL_33;
    }

    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_top_disconnect";
    v6 = "%{public}s called with null protocol";
LABEL_32:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
LABEL_33:
    if (v3)
    {
      free(v3);
    }

    return 0;
  }

  if (!*(a1 + 40))
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_top_disconnect";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_top_disconnect";
      v6 = "%{public}s called with null trainer";
      goto LABEL_32;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_top_disconnect";
      v6 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_trainer_top_disconnect";
        v15 = 2082;
        v16 = backtrace_string;
        v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_top_disconnect";
    v6 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_32;
  }

  result = *(a1 + 32);
  if (!result)
  {
    return result;
  }

  v2 = *(*(result + 24) + 32);
  if (v2)
  {
    v2();
    return 1;
  }

  return 0;
}

uint64_t nw_protocol_trainer_top_expect_connected(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return *(v1 + 196) & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_top_expect_connected";
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
        v14 = "nw_protocol_trainer_top_expect_connected";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_top_expect_connected";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_top_expect_connected";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_top_expect_connected";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_top_expect_connected";
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
        v14 = "nw_protocol_trainer_top_expect_connected";
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
        v14 = "nw_protocol_trainer_top_expect_connected";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_top_expect_connected";
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
    v14 = "nw_protocol_trainer_top_expect_connected";
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

uint64_t nw_protocol_trainer_top_expect_disconnected(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return (*(v1 + 196) >> 1) & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_top_expect_disconnected";
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
        v14 = "nw_protocol_trainer_top_expect_disconnected";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_top_expect_disconnected";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_top_expect_disconnected";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_top_expect_disconnected";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_top_expect_disconnected";
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
        v14 = "nw_protocol_trainer_top_expect_disconnected";
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
        v14 = "nw_protocol_trainer_top_expect_disconnected";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_top_expect_disconnected";
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
    v14 = "nw_protocol_trainer_top_expect_disconnected";
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

uint64_t nw_protocol_trainer_bottom_expect_disconnect(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return (*(v1 + 196) >> 2) & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_bottom_expect_disconnect";
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
        v14 = "nw_protocol_trainer_bottom_expect_disconnect";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_bottom_expect_disconnect";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_bottom_expect_disconnect";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_bottom_expect_disconnect";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_bottom_expect_disconnect";
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
        v14 = "nw_protocol_trainer_bottom_expect_disconnect";
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
        v14 = "nw_protocol_trainer_bottom_expect_disconnect";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_bottom_expect_disconnect";
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
    v14 = "nw_protocol_trainer_bottom_expect_disconnect";
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

uint64_t nw_protocol_trainer_bottom_expect_dscp(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v24 = 1;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v17 = __nw_protocol_trainer_bottom_expect_dscp_block_invoke;
      v18 = &unk_1E6A2DEE0;
      v20 = a2;
      v19 = buf;
      v3 = *(v2 + 136);
      do
      {
        if (!v3)
        {
          break;
        }

        v4 = *(v3 + 32);
        v5 = (v17)(v16);
        v3 = v4;
      }

      while ((v5 & 1) != 0);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v6 & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
        v11 = "%{public}s called with null trainer";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
        v11 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
        v11 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v15)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v14 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v8, &type, &v21))
  {
    goto LABEL_35;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v13)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_bottom_expect_dscp";
    v11 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t __nw_protocol_trainer_bottom_expect_dscp_block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &v7);
  v4 = 0;
  if (v3 && v7)
  {
    v5 = *v3 >> 4;
    if (v5 == 6)
    {
      v4 = (bswap32(*v3) >> 22) & 0x3F;
    }

    else if (v5 == 4)
    {
      v4 = v3[1] >> 2;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4 != *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t nw_protocol_trainer_bottom_expect_reset(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return (*(v1 + 196) >> 3) & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_bottom_expect_reset";
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
        v14 = "nw_protocol_trainer_bottom_expect_reset";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_bottom_expect_reset";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_bottom_expect_reset";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_bottom_expect_reset";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_bottom_expect_reset";
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
        v14 = "nw_protocol_trainer_bottom_expect_reset";
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
        v14 = "nw_protocol_trainer_bottom_expect_reset";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_bottom_expect_reset";
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
    v14 = "nw_protocol_trainer_bottom_expect_reset";
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

BOOL nw_protocol_trainer_expect_frames_consumed(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return *(v1 + 72) == 0;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_expect_frames_consumed";
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
        v14 = "nw_protocol_trainer_expect_frames_consumed";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_expect_frames_consumed";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_expect_frames_consumed";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_expect_frames_consumed";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_expect_frames_consumed";
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
        v14 = "nw_protocol_trainer_expect_frames_consumed";
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
        v14 = "nw_protocol_trainer_expect_frames_consumed";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_expect_frames_consumed";
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
    v14 = "nw_protocol_trainer_expect_frames_consumed";
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

void nw_protocol_trainer_bottom_set_output_style(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(v2 + 184) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_bottom_set_output_style";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (__nwlog_fault(v3, &type, &v11))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v14 = "nw_protocol_trainer_bottom_set_output_style";
        v6 = "%{public}s called with null trainer";
        goto LABEL_32;
      }

      if (v11 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v14 = "nw_protocol_trainer_bottom_set_output_style";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v10 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v14 = "nw_protocol_trainer_bottom_set_output_style";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_trainer_bottom_set_output_style";
        v6 = "%{public}s called with null trainer, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_bottom_set_output_style";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_bottom_set_output_style";
      v6 = "%{public}s called with null protocol";
      goto LABEL_32;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_bottom_set_output_style";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_32;
    }

    v7 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_bottom_set_output_style";
      v6 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_bottom_set_output_style";
      v15 = 2082;
      v16 = v7;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v7);
  }

LABEL_33:
  if (v3)
  {
LABEL_34:
    free(v3);
  }
}

void nw_protocol_trainer_set_local(uint64_t a1, void *object)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_set_local";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_set_local";
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
          v15 = "nw_protocol_trainer_set_local";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v4)
        {
          return;
        }

LABEL_37:
        free(v4);
        return;
      }

      if (!v9)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_set_local";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_set_local";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_36;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    if (object)
    {
      v3 = os_retain(object);
    }

    else
    {
      v3 = 0;
    }

    *(v2 + 160) = v3;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_trainer_set_local";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v15 = "nw_protocol_trainer_set_local";
    v7 = "%{public}s called with null trainer";
    goto LABEL_35;
  }

  if (v12 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v15 = "nw_protocol_trainer_set_local";
    v7 = "%{public}s called with null trainer, backtrace limit exceeded";
    goto LABEL_35;
  }

  v10 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v11 = os_log_type_enabled(v5, type);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v15 = "nw_protocol_trainer_set_local";
    v7 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_35;
  }

  if (v11)
  {
    *buf = 136446466;
    v15 = "nw_protocol_trainer_set_local";
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v4)
  {
    goto LABEL_37;
  }
}

uint64_t *nw_protocol_trainer_top_identifier()
{
  if (nw_protocol_trainer_top_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_trainer_top_identifier::onceToken, &__block_literal_global_18254);
  }

  return &g_trainer_top_protocol_identifier;
}

uint64_t __nw_protocol_trainer_top_identifier_block_invoke()
{
  dword_1EA84177C = 0;
  unk_1EA84176C = 0u;
  strcpy(&g_trainer_top_protocol_identifier, "trainer_top");
  qword_1EA841780 = 0x100000000;
  g_trainer_top_protocol_callbacks = nw_protocol_default_add_input_handler;
  qword_1EA841798 = nw_protocol_default_replace_input_handler;
  qword_1EA8417D0 = nw_protocol_default_output_available;
  qword_1EA841840 = nw_protocol_default_input_finished;
  qword_1EA841848 = nw_protocol_default_output_finished;
  qword_1EA841890 = nw_protocol_default_input_flush;
  qword_1EA8417D8 = nw_protocol_default_get_input_frames;
  qword_1EA8417E0 = nw_protocol_default_get_output_frames;
  qword_1EA8417E8 = nw_protocol_default_finalize_output_frames;
  qword_1EA841880 = nw_protocol_default_get_message_properties;
  qword_1EA8417F0 = nw_protocol_default_link_state;
  qword_1EA841830 = nw_protocol_default_updated_path;
  qword_1EA841850 = nw_protocol_default_get_output_local;
  qword_1EA841858 = nw_protocol_default_get_output_interface;
  qword_1EA8417A0 = nw_protocol_default_connect;
  qword_1EA8417A8 = nw_protocol_default_disconnect;
  qword_1EA8417C0 = nw_protocol_default_error;
  qword_1EA841888 = nw_protocol_default_reset;
  qword_1EA841838 = nw_protocol_default_supports_external_data;
  qword_1EA841860 = nw_protocol_default_waiting_for_output;
  qword_1EA841868 = nw_protocol_default_copy_info;
  qword_1EA841818 = nw_protocol_default_register_notification;
  qword_1EA841820 = nw_protocol_default_unregister_notification;
  qword_1EA841828 = nw_protocol_default_notify;
  qword_1EA841870 = nw_protocol_default_add_listen_handler;
  qword_1EA841878 = nw_protocol_default_remove_listen_handler;
  qword_1EA841790 = nw_protocol_trainer_remove_input_handler;
  qword_1EA8417B0 = nw_protocol_trainer_connected;
  qword_1EA8417B8 = nw_protocol_trainer_disconnected;
  qword_1EA8417C8 = nw_protocol_trainer_input_available;
  qword_1EA841800 = nw_protocol_trainer_get_path;
  qword_1EA8417F8 = nw_protocol_trainer_get_parameters;
  qword_1EA841808 = nw_protocol_trainer_get_local;
  qword_1EA841810 = nw_protocol_trainer_get_remote;
  return nw_protocol_register_extended(&g_trainer_top_protocol_identifier, nw_protocol_trainer_top_create);
}

_OWORD *nw_protocol_trainer_top_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0xC8uLL, 0x4075E68DuLL))
  {
    v5 = memptr;
    if (memptr)
    {
LABEL_3:
      v5[6] = 0u;
      v5[7] = 0u;
      v5[8] = 0u;
      v5[9] = 0u;
      *(v5 + 24) = 0;
      v5[10] = 0u;
      v5[11] = 0u;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v5 + 2) = &g_trainer_top_protocol_identifier;
      *(v5 + 3) = &g_trainer_top_protocol_callbacks;
      *(v5 + 5) = v5;
      *(v5 + 10) = v5 + 72;
      *(v5 + 12) = v5 + 88;
      *(v5 + 14) = v5 + 104;
      *(v5 + 16) = v5 + 120;
      *(v5 + 18) = v5 + 136;
      if (a2)
      {
        *(v5 + 19) = os_retain(a2);
        if (a3)
        {
LABEL_5:
          v6 = os_retain(a3);
LABEL_8:
          *(v5 + 21) = v6;
          *out = 0;
          *&out[8] = 0;
          uuid_generate_random(out);
          *(v5 + 22) = _nw_path_create_static(a2, a3, 1u, out, 0, 0, 1, 0, 0, 0, 0);
          *(v5 + 46) = 0;
          return v5;
        }
      }

      else
      {
        *(v5 + 19) = 0;
        if (a3)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      goto LABEL_8;
    }
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  *out = 136446722;
  *&out[4] = "nw_protocol_trainer_top_create";
  *&out[12] = 2048;
  *&out[14] = 8;
  v12 = 2048;
  v13 = 200;
  v9 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v5 = memptr;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_trainer_get_remote(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[19];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_get_remote";
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
        v14 = "nw_protocol_trainer_get_remote";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_get_remote";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_get_remote";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_remote";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_get_remote";
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
        v14 = "nw_protocol_trainer_get_remote";
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
        v14 = "nw_protocol_trainer_get_remote";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_remote";
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
    v14 = "nw_protocol_trainer_get_remote";
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

uint64_t nw_protocol_trainer_get_local(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[20];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_get_local";
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
        v14 = "nw_protocol_trainer_get_local";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_get_local";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_get_local";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_local";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_get_local";
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
        v14 = "nw_protocol_trainer_get_local";
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
        v14 = "nw_protocol_trainer_get_local";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_local";
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
    v14 = "nw_protocol_trainer_get_local";
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

uint64_t nw_protocol_trainer_get_parameters(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[21];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_get_parameters";
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
        v14 = "nw_protocol_trainer_get_parameters";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_get_parameters";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_get_parameters";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_parameters";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_get_parameters";
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
        v14 = "nw_protocol_trainer_get_parameters";
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
        v14 = "nw_protocol_trainer_get_parameters";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_parameters";
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
    v14 = "nw_protocol_trainer_get_parameters";
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

uint64_t nw_protocol_trainer_get_path(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[22];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_get_path";
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
        v14 = "nw_protocol_trainer_get_path";
        v6 = "%{public}s called with null trainer";
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
        v14 = "nw_protocol_trainer_get_path";
        v6 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v14 = "nw_protocol_trainer_get_path";
        v6 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_path";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_get_path";
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
        v14 = "nw_protocol_trainer_get_path";
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
        v14 = "nw_protocol_trainer_get_path";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_trainer_get_path";
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
    v14 = "nw_protocol_trainer_get_path";
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

void nw_protocol_trainer_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_input_available";
    v7 = _os_log_send_and_compose_impl();
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &v21, &v20))
    {
      goto LABEL_38;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v21;
      if (!os_log_type_enabled(v8, v21))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_input_available";
      v10 = "%{public}s called with null protocol";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v21;
      v12 = os_log_type_enabled(v8, v21);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_trainer_input_available";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          return;
        }

LABEL_39:
        free(v7);
        return;
      }

      if (!v12)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_input_available";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v21;
      if (!os_log_type_enabled(v8, v21))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_trainer_input_available";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (handle)
  {
    if (a2)
    {
      get_input_frames = a2->callbacks->get_input_frames;
      if (get_input_frames)
      {
        *buf = 0;
        *&buf[8] = buf;
        if (get_input_frames(a2, a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, buf))
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 0x40000000;
          v16 = ___ZL35nw_protocol_trainer_input_availableP11nw_protocolS0__block_invoke;
          v17 = &__block_descriptor_tmp_24;
          v18 = buf;
          v19 = handle;
          v4 = *buf;
          do
          {
            if (!v4)
            {
              break;
            }

            v5 = *(v4 + 32);
            v6 = (v16)(v15);
            v4 = v5;
          }

          while ((v6 & 1) != 0);
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_trainer_input_available";
  v7 = _os_log_send_and_compose_impl();
  v21 = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &v21, &v20))
  {
    goto LABEL_38;
  }

  if (v21 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v21;
    if (!os_log_type_enabled(v8, v21))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_input_available";
    v10 = "%{public}s called with null trainer";
    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v21;
    if (!os_log_type_enabled(v8, v21))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_input_available";
    v10 = "%{public}s called with null trainer, backtrace limit exceeded";
    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v21;
  v14 = os_log_type_enabled(v8, v21);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_input_available";
    v10 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_37;
  }

  if (v14)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_trainer_input_available";
    *&buf[12] = 2082;
    *&buf[14] = v13;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v7)
  {
    goto LABEL_39;
  }
}

uint64_t ___ZL35nw_protocol_trainer_input_availableP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32) + 8);
  v3 = (a2 + 32);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4)
  {
    v2 = (v4 + 40);
  }

  *v2 = v5;
  *v5 = v4;
  *(a2 + 40) = 0;
  *v3 = 0;
  v6 = *(a1 + 40);
  v7 = *(v6 + 128);
  *(a2 + 40) = v7;
  *v7 = a2;
  *(v6 + 128) = v3;
  return 1;
}

void nw_protocol_trainer_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_disconnected";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_disconnected";
      v6 = "%{public}s called with null protocol";
    }

    else if (v11 == 1)
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
          v14 = "nw_protocol_trainer_disconnected";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v3)
        {
          return;
        }

LABEL_35:
        free(v3);
        return;
      }

      if (!v8)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_disconnected";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_disconnected";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {
    if (a1->output_handler == a2)
    {
      handle[196] |= 2u;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_disconnected";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_disconnected";
    v6 = "%{public}s called with null trainer";
    goto LABEL_33;
  }

  if (v11 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_disconnected";
    v6 = "%{public}s called with null trainer, backtrace limit exceeded";
    goto LABEL_33;
  }

  v9 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v10 = os_log_type_enabled(v4, type);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_disconnected";
    v6 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_33;
  }

  if (v10)
  {
    *buf = 136446466;
    v14 = "nw_protocol_trainer_disconnected";
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v3)
  {
    goto LABEL_35;
  }
}

void nw_protocol_trainer_connected(nw_protocol *a1, nw_protocol *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_trainer_connected";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_connected";
      v6 = "%{public}s called with null protocol";
    }

    else if (v11 == 1)
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
          v14 = "nw_protocol_trainer_connected";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v3)
        {
          return;
        }

LABEL_35:
        free(v3);
        return;
      }

      if (!v8)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_connected";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_trainer_connected";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {
    if (a1->output_handler == a2)
    {
      handle[196] |= 1u;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_trainer_connected";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_connected";
    v6 = "%{public}s called with null trainer";
    goto LABEL_33;
  }

  if (v11 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_connected";
    v6 = "%{public}s called with null trainer, backtrace limit exceeded";
    goto LABEL_33;
  }

  v9 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v10 = os_log_type_enabled(v4, type);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "nw_protocol_trainer_connected";
    v6 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_33;
  }

  if (v10)
  {
    *buf = 136446466;
    v14 = "nw_protocol_trainer_connected";
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v3)
  {
    goto LABEL_35;
  }
}

uint64_t nw_protocol_trainer_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_trainer_remove_input_handler";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_57;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        v28 = "nw_protocol_trainer_remove_input_handler";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v22 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v22)
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        v28 = "nw_protocol_trainer_remove_input_handler";
        v20 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_56;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_protocol_trainer_remove_input_handler";
        v29 = 2082;
        v30 = backtrace_string;
        v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_46:
        _os_log_impl(&dword_181A37000, v18, v19, v23, buf, 0x16u);
      }

LABEL_47:
      free(backtrace_string);
      goto LABEL_57;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v28 = "nw_protocol_trainer_remove_input_handler";
    v20 = "%{public}s called with null protocol";
LABEL_56:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_57:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_trainer_remove_input_handler";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v28 = "nw_protocol_trainer_remove_input_handler";
      v20 = "%{public}s called with null trainer";
      goto LABEL_56;
    }

    if (v25 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v28 = "nw_protocol_trainer_remove_input_handler";
      v20 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v24 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v24)
      {
        *buf = 136446466;
        v28 = "nw_protocol_trainer_remove_input_handler";
        v29 = 2082;
        v30 = backtrace_string;
        v23 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (!v24)
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v28 = "nw_protocol_trainer_remove_input_handler";
    v20 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_56;
  }

  if (a2 && a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  nw_protocol_set_input_handler(a1, 0);
  output_handler = a1->output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  if (a3)
  {
    while (1)
    {
      v9 = handle[9];
      if (!v9)
      {
        break;
      }

      v10 = v9[2];
      v11 = v9[3];
      v12 = (v10 + 24);
      if (!v10)
      {
        v12 = handle + 10;
      }

      *v12 = v11;
      *v11 = v10;
      v9[2] = 0;
      v9[3] = 0;
      if (nw_frame_uses_external_data(v9))
      {
        nw_frame_set_external_data(v9, 0, 0);
      }

      else
      {
        nw_frame_free_buffer(v9);
      }

      nw_frame_reset(v9, 0, 0, 0, 0);
      os_release(v9);
    }

    v13 = handle[19];
    if (v13)
    {
      os_release(v13);
      handle[19] = 0;
    }

    v14 = handle[20];
    if (v14)
    {
      os_release(v14);
      handle[20] = 0;
    }

    v15 = handle[21];
    if (v15)
    {
      os_release(v15);
      handle[21] = 0;
    }

    v16 = handle[22];
    if (v16)
    {
      os_release(v16);
    }

    a1->handle = 0;
    free(handle);
  }

  return 1;
}

uint64_t *nw_protocol_trainer_bottom_identifier()
{
  if (nw_protocol_trainer_bottom_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_trainer_bottom_identifier::onceToken, &__block_literal_global_16_18340);
  }

  return &g_trainer_bottom_protocol_identifier;
}

uint64_t __nw_protocol_trainer_bottom_identifier_block_invoke()
{
  byte_1EA8418BF = 0;
  unk_1EA8418AF = 0u;
  strcpy(g_trainer_bottom_protocol_identifier, "trainer_bottom");
  qword_1EA8418C0 = 0x100000000;
  qword_1EA8418D8 = nw_protocol_default_replace_input_handler;
  qword_1EA841908 = nw_protocol_default_input_available;
  qword_1EA841910 = nw_protocol_default_output_available;
  qword_1EA841980 = nw_protocol_default_input_finished;
  qword_1EA841988 = nw_protocol_default_output_finished;
  qword_1EA8419D0 = nw_protocol_default_input_flush;
  qword_1EA8419C0 = nw_protocol_default_get_message_properties;
  qword_1EA841930 = nw_protocol_default_link_state;
  qword_1EA841938 = nw_protocol_default_get_parameters;
  qword_1EA841948 = nw_protocol_default_get_local;
  qword_1EA841950 = nw_protocol_default_get_remote;
  qword_1EA841940 = nw_protocol_default_get_path;
  qword_1EA841970 = nw_protocol_default_updated_path;
  qword_1EA841990 = nw_protocol_default_get_output_local;
  qword_1EA841998 = nw_protocol_default_get_output_interface;
  qword_1EA8418F0 = nw_protocol_default_connected;
  qword_1EA8418F8 = nw_protocol_default_disconnected;
  qword_1EA841900 = nw_protocol_default_error;
  qword_1EA841978 = nw_protocol_default_supports_external_data;
  qword_1EA8419A0 = nw_protocol_default_waiting_for_output;
  qword_1EA8419A8 = nw_protocol_default_copy_info;
  qword_1EA841958 = nw_protocol_default_register_notification;
  qword_1EA841960 = nw_protocol_default_unregister_notification;
  qword_1EA841968 = nw_protocol_default_notify;
  qword_1EA8419B0 = nw_protocol_default_add_listen_handler;
  qword_1EA8419B8 = nw_protocol_default_remove_listen_handler;
  g_trainer_bottom_protocol_callbacks = nw_protocol_trainer_add_input_handler;
  qword_1EA8418D0 = nw_protocol_trainer_remove_input_handler;
  qword_1EA841918 = nw_protocol_trainer_bottom_get_input_frames;
  qword_1EA841920 = nw_protocol_trainer_bottom_get_output_frames;
  qword_1EA841928 = nw_protocol_trainer_bottom_finalize_output_frames;
  qword_1EA8418E0 = nw_protocol_trainer_connect;
  qword_1EA8418E8 = nw_protocol_trainer_disconnect;
  qword_1EA8419C8 = nw_protocol_trainer_reset;
  return nw_protocol_register_extended(g_trainer_bottom_protocol_identifier, nw_protocol_trainer_bottom_create);
}

_OWORD *nw_protocol_trainer_bottom_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0xC8uLL, 0xFDF693A5uLL))
  {
    v5 = memptr;
    if (memptr)
    {
LABEL_3:
      v5[6] = 0u;
      v5[7] = 0u;
      v5[8] = 0u;
      v5[9] = 0u;
      *(v5 + 24) = 0;
      v5[10] = 0u;
      v5[11] = 0u;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v5 + 2) = &g_trainer_bottom_protocol_identifier;
      *(v5 + 3) = &g_trainer_bottom_protocol_callbacks;
      *(v5 + 5) = v5;
      *(v5 + 10) = v5 + 72;
      *(v5 + 12) = v5 + 88;
      *(v5 + 14) = v5 + 104;
      *(v5 + 16) = v5 + 120;
      *(v5 + 18) = v5 + 136;
      if (a2)
      {
        *(v5 + 19) = os_retain(a2);
        if (a3)
        {
LABEL_5:
          v6 = os_retain(a3);
LABEL_8:
          *(v5 + 21) = v6;
          *out = 0;
          *&out[8] = 0;
          uuid_generate_random(out);
          *(v5 + 22) = _nw_path_create_static(a2, a3, 1u, out, 0, 0, 1, 0, 0, 0, 0);
          *(v5 + 46) = 0;
          return v5;
        }
      }

      else
      {
        *(v5 + 19) = 0;
        if (a3)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      goto LABEL_8;
    }
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  *out = 136446722;
  *&out[4] = "nw_protocol_trainer_bottom_create";
  *&out[12] = 2048;
  *&out[14] = 8;
  v12 = 2048;
  v13 = 200;
  v9 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v5 = memptr;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_trainer_reset(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (a1->default_input_handler == a2)
      {
        handle[196] |= 8u;
      }

      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_reset";
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
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_reset";
        v7 = "%{public}s called with null trainer";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_reset";
        v7 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_reset";
        v7 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_trainer_reset";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_trainer_reset";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_34;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_reset";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_reset";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_trainer_reset";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_34;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v15 = "nw_protocol_trainer_reset";
    v7 = "%{public}s called with null protocol";
LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_34:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_protocol_trainer_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_disconnect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_disconnect";
      v7 = "%{public}s called with null protocol";
      goto LABEL_38;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_disconnect";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_disconnect";
      v7 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_38;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_trainer_disconnect";
      v16 = 2082;
      v17 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_39:
    if (!v4)
    {
      return;
    }

    goto LABEL_40;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_disconnect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_disconnect";
      v7 = "%{public}s called with null trainer";
      goto LABEL_38;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v15 = "nw_protocol_trainer_disconnect";
      v7 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_38;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (v10)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_trainer_disconnect";
        v16 = 2082;
        v17 = v10;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v10);
      if (!v4)
      {
        return;
      }

LABEL_40:
      free(v4);
      return;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_trainer_disconnect";
      v7 = "%{public}s called with null trainer, no backtrace";
LABEL_38:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (a1->default_input_handler == a2)
  {
    handle[196] |= 4u;
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  disconnected = a2->callbacks->disconnected;
  if (disconnected)
  {

    disconnected(a2, a1);
  }
}

uint64_t nw_protocol_trainer_connect(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1->handle)
    {
      if (a2)
      {
        connected = a2->callbacks->connected;
        if (connected)
        {
          connected(a2, a1);
        }
      }

      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_trainer_connect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_connect";
        v7 = "%{public}s called with null trainer";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_connect";
        v7 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_connect";
        v7 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_trainer_connect";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_trainer_connect";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_35;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_connect";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_protocol_trainer_connect";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_trainer_connect";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v15 = "nw_protocol_trainer_connect";
    v7 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_35:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_trainer_bottom_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v16 = ___ZL49nw_protocol_trainer_bottom_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v17 = &__block_descriptor_tmp_26_18385;
      v18 = a2;
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
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
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
        v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
        v10 = "%{public}s called with null trainer";
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
        v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
        v10 = "%{public}s called with null trainer, backtrace limit exceeded";
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
        v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
        v10 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
      v24 = 2082;
      v25 = backtrace_string;
      v13 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
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
        v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
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
        v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446466;
      v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
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
    v23 = "nw_protocol_trainer_bottom_finalize_output_frames";
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

uint64_t ___ZL49nw_protocol_trainer_bottom_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32) + 8);
  v3 = (a2 + 32);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4)
  {
    v2 = (v4 + 40);
  }

  *v2 = v5;
  *v5 = v4;
  *(a2 + 40) = 0;
  *v3 = 0;
  v6 = *(a1 + 40);
  v7 = *(v6 + 144);
  *(a2 + 40) = v7;
  *v7 = a2;
  *(v6 + 144) = v3;
  return 1;
}

uint64_t nw_protocol_trainer_bottom_get_output_frames(nw_protocol *a1, nw_protocol *a2, int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (a4 | a3 || a5 != 1)
      {
        v14 = 0;
        if (a5 && a4)
        {
          LODWORD(v14) = 0;
          for (i = 0; i < a4; i += v17)
          {
            if (a4 - i >= 0x2400)
            {
              v17 = 9216;
            }

            else
            {
              v17 = a4 - i;
            }

            v18 = nw_calloc_type<unsigned char>(v17);
            v19 = nw_frame_create(0, v18, v17, nw_protocol_trainer_frame_finalizer, a1);
            nw_frame_set_buffer_used_malloc(v19, 1);
            *(v19 + 16) = 0;
            v20 = handle[10];
            *(v19 + 24) = v20;
            *v20 = v19;
            handle[10] = v19 + 16;
            *(v19 + 32) = 0;
            tqh_last = a6->tqh_last;
            *(v19 + 40) = tqh_last;
            *tqh_last = v19;
            a6->tqh_last = (v19 + 32);
            v14 = (v14 + 1);
            if (v14 >= a5)
            {
              break;
            }
          }
        }
      }

      else
      {
        v11 = nw_frame_create(0, 0, 0, nw_protocol_trainer_frame_finalizer, a1);
        *(v11 + 16) = 0;
        v12 = handle[10];
        *(v11 + 24) = v12;
        *v12 = v11;
        handle[10] = v11 + 16;
        *(v11 + 32) = 0;
        v13 = a6->tqh_last;
        *(v11 + 40) = v13;
        *v13 = v11;
        a6->tqh_last = (v11 + 32);
        return 1;
      }

      return v14;
    }

    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_trainer_bottom_get_output_frames";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v22, &type, &v30))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_trainer_bottom_get_output_frames";
        v25 = "%{public}s called with null trainer";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_trainer_bottom_get_output_frames";
        v25 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_42;
      }

      goto LABEL_43;
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
        v33 = "nw_protocol_trainer_bottom_get_output_frames";
        v25 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v29)
    {
      *buf = 136446466;
      v33 = "nw_protocol_trainer_bottom_get_output_frames";
      v34 = 2082;
      v35 = backtrace_string;
      v28 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_protocol_trainer_bottom_get_output_frames";
  v22 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v22, &type, &v30))
  {
    goto LABEL_43;
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
        v33 = "nw_protocol_trainer_bottom_get_output_frames";
        v25 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_42;
      }

      goto LABEL_43;
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
        v33 = "nw_protocol_trainer_bottom_get_output_frames";
        v25 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v27)
    {
      *buf = 136446466;
      v33 = "nw_protocol_trainer_bottom_get_output_frames";
      v34 = 2082;
      v35 = backtrace_string;
      v28 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_32:
      _os_log_impl(&dword_181A37000, v23, v24, v28, buf, 0x16u);
    }

LABEL_33:
    free(backtrace_string);
    goto LABEL_43;
  }

  v23 = __nwlog_obj();
  v24 = type;
  if (os_log_type_enabled(v23, type))
  {
    *buf = 136446210;
    v33 = "nw_protocol_trainer_bottom_get_output_frames";
    v25 = "%{public}s called with null protocol";
LABEL_42:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
  }

LABEL_43:
  if (v22)
  {
    free(v22);
  }

  return 0;
}

uint64_t nw_protocol_trainer_bottom_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v38 = 0;
      *type = 0;
      v33 = type;
      v34 = 0x2000000000;
      v35 = 0;
      v7 = handle[47];
      if (v7 >= a5)
      {
        v8 = a5;
      }

      else
      {
        v8 = handle[47];
      }

      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = a5;
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v24 = ___ZL43nw_protocol_trainer_bottom_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v25 = &unk_1E6A2DF68;
      v26 = buf;
      v27 = type;
      v30 = v9;
      v31 = a4;
      v28 = handle;
      v29 = a6;
      v10 = *(handle + 11);
      do
      {
        if (!v10)
        {
          break;
        }

        v11 = *(v10 + 32);
        v12 = (v24)(v23);
        v10 = v11;
      }

      while ((v12 & 1) != 0);
      v13 = *(*&buf[8] + 24);
      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);
      return v13;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v15, type, &v36))
    {
      goto LABEL_41;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
        v18 = "%{public}s called with null trainer";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v36 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
        v18 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_40;
      }

      goto LABEL_41;
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
        *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
        v18 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
  v15 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (!__nwlog_fault(v15, type, &v36))
  {
    goto LABEL_41;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v36 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
        v18 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_40;
      }

      goto LABEL_41;
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
        *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
        v18 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
      _os_log_impl(&dword_181A37000, v16, v17, v21, buf, 0x16u);
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_41;
  }

  v16 = __nwlog_obj();
  v17 = type[0];
  if (os_log_type_enabled(v16, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_bottom_get_input_frames";
    v18 = "%{public}s called with null protocol";
LABEL_40:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
  }

LABEL_41:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

uint64_t ___ZL43nw_protocol_trainer_bottom_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 64))
  {
    return 0;
  }

  v4 = nw_frame_unclaimed_length(a2);
  if ((*(*(*(a1 + 40) + 8) + 24) + v4) > *(a1 + 68))
  {
    return 0;
  }

  v6 = (*(a1 + 48) + 96);
  v7 = (a2 + 32);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (v8)
  {
    v6 = (v8 + 40);
  }

  *v6 = v9;
  *v9 = v8;
  *(a2 + 40) = 0;
  *v7 = 0;
  v10 = *(a1 + 56);
  v11 = *(v10 + 8);
  *(a2 + 40) = v11;
  *v11 = a2;
  *(v10 + 8) = v7;
  *(*(*(a1 + 40) + 8) + 24) += v4;
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

uint64_t nw_protocol_trainer_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      nw_protocol_set_input_handler(a1, a2);
      *handle = *a2->flow_id;
      if (!a2->output_handler)
      {
        nw_protocol_set_output_handler(a2, handle);
      }

      v4 = mach_continuous_time();
      if (v4 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      handle[8] = v5;
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_trainer_add_input_handler";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_trainer_add_input_handler";
        v10 = "%{public}s called with null trainer";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_trainer_add_input_handler";
        v10 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_protocol_trainer_add_input_handler";
        v10 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocol_trainer_add_input_handler";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_trainer_add_input_handler";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v7, &type, &v15))
  {
    goto LABEL_37;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_trainer_add_input_handler";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_protocol_trainer_add_input_handler";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocol_trainer_add_input_handler";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_37;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v18 = "nw_protocol_trainer_add_input_handler";
    v10 = "%{public}s called with null protocol";
LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_remote_packet_input_available(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v5 = *(a1 + 40);
    objc_sync_enter(v5);
    v6 = [v5 receiveWindowPacketCount];
    objc_sync_exit(v5);

    if (!v6)
    {
      break;
    }

    v21 = 0;
    v22 = 0;
    if (!(*(*(a2 + 24) + 80))(a2, a1, 1, 0xFFFFFFFFLL, v6, &v21))
    {
      break;
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = v21;
    if (v8)
    {
      v9 = v8;
      do
      {
        v13 = *(v9 + 32);
        if (!v13 && !*(v9 + 40))
        {
          v13 = 0;
        }

        v14 = v13;
        if (*(v9 + 112) && ((*(v9 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v9, *(v9 + 88))))
        {
          v15 = *(v9 + 52);
          if (v15)
          {
            v16 = *(v9 + 56);
            v17 = v16 + *(v9 + 60);
            v18 = (v15 - v17);
            if (v15 != v17)
            {
              v19 = *(v9 + 112);
              if (v19)
              {
                v20 = [MEMORY[0x1E695DEF0] dataWithBytes:v19 + v16 length:v18];
                [v7 addObject:v20];
              }
            }
          }
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = (v10 + 40);
        if (!v10)
        {
          v12 = &v22;
        }

        *v12 = v11;
        *v11 = v10;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        nw_frame_finalize(v9);

        v9 = v14;
      }

      while (v14);
    }

    v4 = [v5 delegate];
    [v4 sendRemotePackets:v7];
  }
}

void nw_remote_packet_output_available(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 40);
  v4 = [v10 writeRequests];
  objc_sync_enter(v4);
  while (1)
  {
    v5 = [v10 writeRequests];
    v6 = [v5 count];

    if (!v6)
    {
      break;
    }

    v7 = [v10 writeRequests];
    v8 = [v7 firstObject];

    if (!nw_remote_director_write_request(a1, a2, v8))
    {

      break;
    }

    v9 = [v10 writeRequests];
    [v9 removeObjectAtIndex:0];
  }

  objc_sync_exit(v4);
}

uint64_t __Block_byref_object_copy__18668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_182459328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_182459520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  socket_inbox_match_on_queue = nw_listener_find_socket_inbox_match_on_queue(*(a1 + 32), v3);
  if (socket_inbox_match_on_queue)
  {
    v5 = *(*(a1 + 32) + 16);
    if (v5 && !_nw_parameters_get_logging_disabled(v5))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v6 = glistenerLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v10 = 136446722;
        v11 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
        v12 = 2082;
        v13 = id_string;
        v14 = 2112;
        v15 = socket_inbox_match_on_queue;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] keeping existing multicast socket inbox: %@", &v10, 0x20u);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      _nw_array_append(v8, socket_inbox_match_on_queue);
    }
  }

  return 1;
}

void nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v11, &type, &v27))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v11)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v11);
        goto LABEL_4;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v7)
  {
    nw_context_assert_queue(*(v5 + 3));
    v9 = *(v5 + 4);
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = ___ZL66nw_listener_enumerate_multicast_parameters_for_descriptor_on_queueP22NWConcrete_nw_listenerPU33objcproto22OS_nw_group_descriptor8NSObjectU13block_pointerFbPU27objcproto16OS_nw_parametersS1_E_block_invoke;
    enumerate_block[3] = &unk_1E6A2E1B8;
    v25 = v5;
    v26 = v8;
    nw_group_descriptor_enumerate_endpoints(v9, enumerate_block);

    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v11, &type, &v27))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v27 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v12, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446466;
    v30 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue";
    v31 = 2082;
    v32 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_210(uint64_t a1, uint64_t a2, void *a3)
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (nw_proxy_config_supports_listeners(v4))
  {
    stack = nw_parameters_copy_default_protocol_stack(*(*(a1 + 32) + 16));
    v83 = nw_protocol_stack_copy_transport_protocol(stack);
    v5 = nw_protocol_options_copy_definition(v83);
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        if (*(v6 + 1))
        {
          if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
          }

          v9 = nw_protocol_copy_quic_connection_definition_quic_definition;
          is_equal_unsafe = nw_protocol_definition_is_equal_unsafe(v8, v9);

          v11 = v8;
          if (is_equal_unsafe)
          {
            if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
            }

            v11 = nw_protocol_copy_quic_stream_definition_quic_definition;
          }

          identifier = nw_protocol_definition_get_identifier(v11);
          if (identifier)
          {
            *buf = 0;
            asprintf(buf, "%s%s", "LISTEN-", identifier);
            should_proxy_transport_at_level = nw_proxy_config_should_proxy_transport_at_level(v6, *buf, 0);
            v82 = nw_dictionary_copy_value(*(v6 + 1), *buf);
            if (*buf)
            {
              free(*buf);
            }

LABEL_59:

            v38 = nw_proxy_config_copy_endpoint(v6);
            v39 = *(a1 + 32);
            v79 = v38;
            nw_context_assert_queue(v39[3]);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v102 = __Block_byref_object_copy__18668;
            v103 = __Block_byref_object_dispose__18669;
            v104 = 0;
            v40 = v39[20];
            aBlock = MEMORY[0x1E69E9820];
            v96 = 3221225472;
            v97 = ___ZL46nw_listener_copy_proxy_connection_for_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
            v98 = &unk_1E6A3BB28;
            v41 = v79;
            v42 = v41;
            v99 = v41;
            v100 = buf;
            if (v40)
            {
              _nw_array_apply(v40, &aBlock);
              v43 = *(*&buf[8] + 40);
              v44 = v99;
            }

            else
            {
              v43 = 0;
              v44 = v41;
            }

            v45 = v43;

            _Block_object_dispose(buf, 8);
            if (v45)
            {
LABEL_95:

LABEL_96:
              goto LABEL_97;
            }

            v46 = *(*(a1 + 32) + 16);
            if (v46 && !_nw_parameters_get_logging_disabled(v46))
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v47 = glistenerLogObj;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                id_string = nw_listener_get_id_string(*(a1 + 32));
                *buf = 136446722;
                *&buf[4] = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = id_string;
                *&buf[22] = 2112;
                v102 = v42;
                _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Found listener proxy to %@, creating a new connection", buf, 0x20u);
              }
            }

            v49 = _nw_parameters_copy(*(*(a1 + 32) + 16));
            nw_parameters_set_server_mode(v49);
            nw_parameters_set_proxy_applied(v49);
            v80 = nw_parameters_copy_default_protocol_stack(v49);
            nw_protocol_stack_clear_application_protocols(v80);
            if (should_proxy_transport_at_level == 2)
            {
              nw_protocol_stack_append_application_protocol(v80, v83);
              v50 = nw_protocol_stack_copy_internet_protocol(stack);
              nw_protocol_stack_append_application_protocol(v80, v50);
            }

            else if (should_proxy_transport_at_level == 3)
            {
              nw_protocol_stack_append_application_protocol(v80, v83);
            }

            iterate_block[0] = MEMORY[0x1E69E9820];
            iterate_block[1] = 3221225472;
            iterate_block[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_211;
            iterate_block[3] = &unk_1E6A32458;
            v90 = *(a1 + 32);
            v51 = v6;
            v91 = v51;
            v52 = v80;
            v92 = v52;
            nw_protocol_stack_iterate_application_protocols(v82, iterate_block);
            v78 = nw_protocol_stack_copy_transport_protocol(v82);
            if (!v78)
            {
LABEL_80:
              aBlock = 0;
              v96 = 0;
              nw_path_get_client_id(*(*(a1 + 32) + 176), &aBlock);
              v55 = v49;
              v56 = v55;
              if (v55)
              {
                _nw_parameters_set_listener_uuid(v55, &aBlock);
                goto LABEL_82;
              }

              v70 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_parameters_set_listener_uuid";
              v77 = _os_log_send_and_compose_impl();

              v94 = OS_LOG_TYPE_ERROR;
              v93 = 0;
              if (__nwlog_fault(v77, &v94, &v93))
              {
                if (v94 == OS_LOG_TYPE_FAULT)
                {
                  v71 = __nwlog_obj();
                  v72 = v94;
                  if (os_log_type_enabled(v71, v94))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_parameters_set_listener_uuid";
                    _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null parameters", buf, 0xCu);
                  }
                }

                else if (v93 == 1)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  v71 = __nwlog_obj();
                  type = v94;
                  v74 = os_log_type_enabled(v71, v94);
                  if (backtrace_string)
                  {
                    if (v74)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_parameters_set_listener_uuid";
                      *&buf[12] = 2082;
                      *&buf[14] = backtrace_string;
                      _os_log_impl(&dword_181A37000, v71, type, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(backtrace_string);
                    goto LABEL_127;
                  }

                  if (v74)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_parameters_set_listener_uuid";
                    _os_log_impl(&dword_181A37000, v71, type, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v71 = __nwlog_obj();
                  v75 = v94;
                  if (os_log_type_enabled(v71, v94))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_parameters_set_listener_uuid";
                    _os_log_impl(&dword_181A37000, v71, v75, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_127:
              if (v77)
              {
                free(v77);
              }

LABEL_82:

              v57 = nw_connection_create_without_parameters_copy(v42, v56);
              v58 = *(a1 + 32);
              if (v57)
              {
                v59 = *(v58 + 160);
                if (v59 || (v60 = _nw_array_create(), v61 = *(a1 + 32), v62 = *(v61 + 160), *(v61 + 160) = v60, v62, v63 = *(a1 + 32), (v59 = v63[20]) != 0))
                {
                  _nw_array_append(v59, v57);
                  v63 = *(a1 + 32);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v102 = __Block_byref_object_copy__18668;
                v103 = __Block_byref_object_dispose__18669;
                v104 = 0;
                handler[0] = MEMORY[0x1E69E9820];
                handler[1] = 3221225472;
                handler[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_212;
                handler[3] = &unk_1E6A2E118;
                v85 = v63;
                v64 = v57;
                v86 = v64;
                v87 = v56;
                v88 = buf;
                nw_connection_set_state_changed_handler(v64, handler);
                v65 = nw_queue_copy_current_workloop();
                nw_connection_set_queue(v64, v65);

                nw_connection_start(v64);
                _Block_object_dispose(buf, 8);
              }

              else
              {
                v66 = *(v58 + 16);
                if (v66 && !_nw_parameters_get_logging_disabled(v66))
                {
                  if (__nwlog_listener_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                  }

                  v67 = glistenerLogObj;
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    v68 = nw_listener_get_id_string(*(a1 + 32));
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_reconcile_inboxes_on_queue_block_invoke_2";
                    *&buf[12] = 2082;
                    *&buf[14] = v68;
                    *&buf[22] = 2112;
                    v102 = v42;
                    _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Failed to create proxy connection to %@", buf, 0x20u);
                  }
                }
              }

              if (!v57)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }

            v53 = v78;
            if (_nw_protocol_options_is_quic_connection(v53))
            {
            }

            else
            {
              is_quic_stream = _nw_protocol_options_is_quic_stream(v53);

              if (!is_quic_stream)
              {
LABEL_79:
                nw_protocol_stack_set_original_proxied_transport_protocol(v52);
                nw_protocol_stack_set_transport_protocol(v52, v53);
                goto LABEL_80;
              }
            }

            nw_listener_update_quic_identity_reference(*(a1 + 32), v51, v53);
            goto LABEL_79;
          }

          v22 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
          v23 = _os_log_send_and_compose_impl();

          LOBYTE(aBlock) = 16;
          v94 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v23, &aBlock, &v94))
          {
            goto LABEL_120;
          }

          if (aBlock == 17)
          {
            v24 = __nwlog_obj();
            v25 = aBlock;
            if (os_log_type_enabled(v24, aBlock))
            {
              *buf = 136446210;
              *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null transport_identifier", buf, 0xCu);
            }
          }

          else if (v94 == OS_LOG_TYPE_INFO)
          {
            v32 = __nw_create_backtrace_string();
            v24 = __nwlog_obj();
            v33 = aBlock;
            v34 = os_log_type_enabled(v24, aBlock);
            if (v32)
            {
              if (v34)
              {
                *buf = 136446466;
                *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
                *&buf[12] = 2082;
                *&buf[14] = v32;
                _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null transport_identifier, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v32);
              goto LABEL_120;
            }

            if (v34)
            {
              *buf = 136446210;
              *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
              _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null transport_identifier, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v24 = __nwlog_obj();
            v37 = aBlock;
            if (os_log_type_enabled(v24, aBlock))
            {
              *buf = 136446210;
              *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
              _os_log_impl(&dword_181A37000, v24, v37, "%{public}s called with null transport_identifier, backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_120:
          if (v23)
          {
            free(v23);
          }

          should_proxy_transport_at_level = 0;
LABEL_123:
          v82 = 0;
          goto LABEL_59;
        }

LABEL_58:
        should_proxy_transport_at_level = 0;
        v82 = 0;
        v11 = v8;
        goto LABEL_59;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
      v19 = _os_log_send_and_compose_impl();

      LOBYTE(aBlock) = 16;
      v94 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v19, &aBlock, &v94))
      {
        if (aBlock == 17)
        {
          v20 = __nwlog_obj();
          v21 = aBlock;
          if (os_log_type_enabled(v20, aBlock))
          {
            *buf = 136446210;
            *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null transport_protocol", buf, 0xCu);
          }
        }

        else if (v94 == OS_LOG_TYPE_INFO)
        {
          v29 = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v30 = aBlock;
          v31 = os_log_type_enabled(v20, aBlock);
          if (v29)
          {
            if (v31)
            {
              *buf = 136446466;
              *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
              *&buf[12] = 2082;
              *&buf[14] = v29;
              _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null transport_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v29);
            goto LABEL_114;
          }

          if (v31)
          {
            *buf = 136446210;
            *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
            _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null transport_protocol, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v20 = __nwlog_obj();
          v36 = aBlock;
          if (os_log_type_enabled(v20, aBlock))
          {
            *buf = 136446210;
            *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
            _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null transport_protocol, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_114:
      if (v19)
      {
        free(v19);
      }

      should_proxy_transport_at_level = 0;
      v11 = 0;
      goto LABEL_123;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
    v15 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock) = 16;
    v94 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v15, &aBlock, &v94))
    {
      if (aBlock == 17)
      {
        v16 = __nwlog_obj();
        v17 = aBlock;
        if (os_log_type_enabled(v16, aBlock))
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v94 == OS_LOG_TYPE_INFO)
      {
        v26 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v27 = aBlock;
        v28 = os_log_type_enabled(v16, aBlock);
        if (v26)
        {
          if (v28)
          {
            *buf = 136446466;
            *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
            *&buf[12] = 2082;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          goto LABEL_56;
        }

        if (v28)
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
          _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v35 = aBlock;
        if (os_log_type_enabled(v16, aBlock))
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_copy_protocol_stack_for_listener";
          _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_56:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_58;
  }

LABEL_97:

  return 1;
}

void ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_214(uint64_t a1, void *a2, const unsigned __int8 *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!uuid_is_null(a3))
  {
    v6 = nw_network_agent_copy_struct(a3);
    if (v6)
    {
      v7 = v6;
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_data(v8, "data", v7, v7[53] + 216);
      free(v7);
      if (v8)
      {
        *length = 0;
        data = xpc_dictionary_get_data(v8, "data", length);
        if (data)
        {
          if (*length >= 0xD8uLL)
          {
            v10 = data[53];
            if (*length == v10 + 216 && v10 >= 0xCC && data[102] && nw_interface_get_mtu(v5) > data[102])
            {
              goto LABEL_29;
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = *(a1 + 32);
    v12 = &unk_182B08000;
    if (v11)
    {
      v13 = v11;
      nw_context_assert_queue(*(v11 + 3));
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v48 = 0;
      v14 = v13[19];
      *length = MEMORY[0x1E69E9820];
      *&length[8] = 3221225472;
      *&length[16] = ___ZL45nw_listener_has_flow_for_nexus_agent_on_queueP22NWConcrete_nw_listenerPh_block_invoke;
      *&v44 = &unk_1E6A3BA10;
      v46 = a3;
      v15 = v13;
      v16 = v15;
      *(&v44 + 1) = v15;
      v45 = buf;
      if (v14)
      {
        _nw_array_apply(v14, length);
        v17 = *(*&buf[8] + 24);

        _Block_object_dispose(buf, 8);
        if (v17)
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {

        _Block_object_dispose(buf, 8);
      }

LABEL_17:
      *buf = *a3;
      v18 = *(*(a1 + 32) + 16);
      if (v18 && !_nw_parameters_get_logging_disabled(v18))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v19 = glistenerLogObj;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          id_string = nw_listener_get_id_string(*(a1 + 32));
          *length = 136447234;
          *&length[4] = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
          *&length[12] = 2082;
          *&length[14] = id_string;
          *&length[22] = 1042;
          LODWORD(v44) = 16;
          WORD2(v44) = 2098;
          *(&v44 + 6) = buf;
          HIWORD(v44) = 2114;
          v45 = v5;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] adding flow registration for nexus %{public,uuid_t}.16P on %{public}@", length, 0x30u);
        }
      }

      flow_inner = nw_path_evaluator_create_flow_inner(*(*(a1 + 32) + 168), 0, 1, 0, 0, buf, 0, 0, 0, 0, 0);
      v22 = *(a1 + 32);
      v23 = v22[19];
      if (v23 || (v24 = _nw_array_create(), v25 = *(a1 + 32), v26 = *(v25 + 152), *(v25 + 152) = v24, v26, v22 = *(a1 + 32), (v23 = v22[19]) != 0))
      {
        if (flow_inner)
        {
          _nw_array_append(v23, flow_inner);
          v22 = *(a1 + 32);
        }
      }

      v27 = v22[3];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = v12[293];
      v38[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_215;
      v38[3] = &unk_1E6A3D760;
      v39 = v22;
      v28 = flow_inner;
      v40 = v28;
      nw_queue_context_async(v27, v38);

      goto LABEL_29;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_listener_has_flow_for_nexus_agent_on_queue";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v30, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_listener_has_flow_for_nexus_agent_on_queue";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null listener", buf, 0xCu);
        }
      }

      else
      {
        if (v41 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v34 = __nwlog_obj();
          v35 = type;
          v36 = os_log_type_enabled(v34, type);
          if (backtrace_string)
          {
            if (v36)
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_has_flow_for_nexus_agent_on_queue";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
            }

            v12 = &unk_182B08000;
            free(backtrace_string);
          }

          else
          {
            if (v36)
            {
              *buf = 136446210;
              *&buf[4] = "nw_listener_has_flow_for_nexus_agent_on_queue";
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null listener, no backtrace", buf, 0xCu);
            }

            v12 = &unk_182B08000;
          }

          goto LABEL_47;
        }

        v31 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_listener_has_flow_for_nexus_agent_on_queue";
          _os_log_impl(&dword_181A37000, v31, v37, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_17;
  }

LABEL_30:
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v9 = 136446722;
      v10 = "nw_listener_reconcile_inboxes_on_queue_block_invoke_4";
      v11 = 2082;
      v12 = id_string;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cancelling retired inbox: %{public}@", &v9, 0x20u);
    }
  }

  nw_listener_cancel_inbox_on_queue(*(a1 + 32), v4);

  return 1;
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_217(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = a3;
  v5 = nw_path_copy_flow_for_registration(*(*(a1 + 32) + 176), v4);
  v6 = v5;
  if (!v5 || (is_defunct = _nw_path_flow_is_defunct(v5), v6, (is_defunct & 1) == 0))
  {
    v8 = *(*(a1 + 32) + 176);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_2_218;
    v11[3] = &unk_1E6A2E168;
    v12 = v4;
    v13 = &v14;
    nw_path_enumerate_interface_options(v8, v11);
  }

  if ((v15[3] & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      if (v4)
      {
        _nw_array_append(v9, v4);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  return 1;
}

void sub_18245BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_3_219(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v9 = 136446722;
      v10 = "nw_listener_reconcile_inboxes_on_queue_block_invoke_3";
      v11 = 2082;
      v12 = id_string;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Removing flow registration: %{public}@", &v9, 0x20u);
    }
  }

  nw_path_flow_registration_close(v4);
  nw_array_remove_object(*(*(a1 + 32) + 152), v4);

  return 1;
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_220(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v47 = 0uLL;
  nw_path_get_client_id(*(*(a1 + 32) + 176), &v47);
  socket_inbox_match_on_queue = nw_listener_find_socket_inbox_match_on_queue(*(a1 + 32), v3);
  if (socket_inbox_match_on_queue)
  {
    v5 = *(*(a1 + 32) + 16);
    if (v5 && !_nw_parameters_get_logging_disabled(v5))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v6 = glistenerLogObj;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      id_string = nw_listener_get_id_string(*(a1 + 32));
      v37 = 136446722;
      v38 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
      v39 = 2082;
      v40 = id_string;
      v41 = 2112;
      v42 = socket_inbox_match_on_queue;
      v8 = "%{public}s [%{public}s] Keeping existing multicast socket inbox: %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 32;
LABEL_8:
      _os_log_impl(&dword_181A37000, v9, v10, v8, &v37, v11);
LABEL_25:
    }
  }

  else
  {
    v12 = [[nw_listener_inbox_socket alloc] initWithParameters:v3 delegate:*(a1 + 32) necpUUID:&v47];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(*(a1 + 40) + 8) + 40);
    if (!v15)
    {
      v24 = *(*(a1 + 32) + 16);
      if (v24 && !_nw_parameters_get_logging_disabled(v24))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v25 = glistenerLogObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = nw_listener_get_id_string(*(a1 + 32));
          v27 = *(*(a1 + 32) + 208);
          v37 = 136446722;
          v38 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
          v39 = 2082;
          v40 = v26;
          v41 = 2114;
          v42 = v27;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] failed to create multicast listener inbox with parameters %{public}@", &v37, 0x20u);
        }
      }

      v28 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v29 = *(*(a1 + 48) + 8);
      v6 = *(v29 + 40);
      *(v29 + 40) = v28;
      goto LABEL_25;
    }

    [v15 setMulticast:1];
    v16 = [*(*(*(a1 + 40) + 8) + 40) start];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(*(a1 + 32) + 16);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (v19 && !_nw_parameters_get_logging_disabled(v19))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v6 = glistenerLogObj;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        v20 = nw_listener_get_id_string(*(a1 + 32));
        v21 = *(*(*(a1 + 48) + 8) + 40);
        v22 = *(*(*(a1 + 40) + 8) + 40);
        v23 = *(*(a1 + 32) + 208);
        v37 = 136447234;
        v38 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
        v39 = 2082;
        v40 = v20;
        v41 = 2114;
        v42 = v21;
        v43 = 2114;
        v44 = v22;
        v45 = 2114;
        v46 = v23;
        v8 = "%{public}s [%{public}s] Error %{public}@ starting multicast inbox %{public}@. Parameters: %{public}@";
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 52;
        goto LABEL_8;
      }
    }

    else
    {
      if (v19 && !_nw_parameters_get_logging_disabled(v19))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v31 = glistenerLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = nw_listener_get_id_string(*(a1 + 32));
          v33 = *(*(*(a1 + 40) + 8) + 40);
          v34 = *(*(a1 + 32) + 208);
          v37 = 136446978;
          v38 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
          v39 = 2082;
          v40 = v32;
          v41 = 2114;
          v42 = v33;
          v43 = 2114;
          v44 = v34;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Started multicast inbox %{public}@ with parameters %{public}@", &v37, 0x2Au);
        }
      }

      v35 = *(*(a1 + 32) + 144);
      if (v35)
      {
        v36 = *(*(*(a1 + 40) + 8) + 40);
        if (v36)
        {
          _nw_array_append(v35, v36);
        }
      }
    }
  }

  return 1;
}

BOOL ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_222(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v31 = 136446722;
      v32 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
      v33 = 2082;
      v34 = id_string;
      v35 = 2114;
      v36 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] creating new flow for %{public}@", &v31, 0x20u);
    }
  }

  v8 = [[nw_ip_channel_inbox alloc] initWithPath:v4 flow:*(*(a1 + 32) + 208) parameters:*(a1 + 32) delegate:?];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 start];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(*(a1 + 32) + 16);
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v13 && !_nw_parameters_get_logging_disabled(v13))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v14 = glistenerLogObj;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v15 = nw_listener_get_id_string(*(a1 + 32));
        v16 = *(*(*(a1 + 40) + 8) + 40);
        v17 = *(*(a1 + 32) + 208);
        v31 = 136447234;
        v32 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
        v33 = 2082;
        v34 = v15;
        v35 = 2114;
        v36 = v16;
        v37 = 2114;
        v38 = v9;
        v39 = 2114;
        v40 = v17;
        v18 = "%{public}s [%{public}s] Error %{public}@ starting inbox %{public}@. Parameters: %{public}@";
        v19 = v14;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 52;
LABEL_22:
        _os_log_impl(&dword_181A37000, v19, v20, v18, &v31, v21);
LABEL_23:
      }
    }

    else
    {
      if (v13 && !_nw_parameters_get_logging_disabled(v13))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v27 = glistenerLogObj;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = nw_listener_get_id_string(*(a1 + 32));
          v29 = *(*(a1 + 32) + 208);
          v31 = 136446978;
          v32 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
          v33 = 2082;
          v34 = v28;
          v35 = 2114;
          v36 = v9;
          v37 = 2114;
          v38 = v29;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Started inbox %{public}@ with parameters %{public}@", &v31, 0x2Au);
        }
      }

      v30 = *(*(a1 + 32) + 144);
      if (v30)
      {
        _nw_array_append(v30, v9);
      }
    }
  }

  else
  {
    v22 = *(*(a1 + 32) + 16);
    if (v22 && !_nw_parameters_get_logging_disabled(v22))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v14 = glistenerLogObj;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v23 = nw_listener_get_id_string(*(a1 + 32));
      v24 = *(*(a1 + 32) + 208);
      v31 = 136446722;
      v32 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
      v33 = 2082;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v18 = "%{public}s [%{public}s] Failed to create IP channel flow for %{public}@";
      v19 = v14;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 32;
      goto LABEL_22;
    }
  }

  v25 = *(*(*(a1 + 40) + 8) + 40) == 0;

  return v25;
}

uint64_t ___ZL40nw_listener_save_local_endpoint_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_path_flow_is_assigned(v4) && (nw_path_flow_is_defunct(v4) & 1) == 0 && (v5 = nw_path_flow_copy_local_endpoint(v4)) != 0)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void ___ZL38nw_listener_start_advertising_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 280))
  {
    v3 = *(v2 + 16);
    if (!v3 || _nw_parameters_get_logging_disabled(v3))
    {
      goto LABEL_15;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v4 = glistenerLogObj;
    id_string = nw_listener_get_id_string(*(a1 + 32));
    *buf = 136446466;
    v23 = "nw_listener_start_advertising_on_queue_block_invoke";
    v24 = 2082;
    v25 = id_string;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v6, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v7 = glistenerLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          v9 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v23 = "nw_listener_start_advertising_on_queue_block_invoke";
          v24 = 2082;
          v25 = v9;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s [%{public}s] advertisers already set", buf, 0x16u);
        }
      }

      else if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v7 = glistenerLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v15)
          {
            v16 = nw_listener_get_id_string(*(a1 + 32));
            *buf = 136446722;
            v23 = "nw_listener_start_advertising_on_queue_block_invoke";
            v24 = 2082;
            v25 = v16;
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v14, "%{public}s [%{public}s] advertisers already set, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (v15)
        {
          v19 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v23 = "nw_listener_start_advertising_on_queue_block_invoke";
          v24 = 2082;
          v25 = v19;
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s [%{public}s] advertisers already set, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v7 = glistenerLogObj;
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          v18 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v23 = "nw_listener_start_advertising_on_queue_block_invoke";
          v24 = 2082;
          v25 = v18;
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s [%{public}s] advertisers already set, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v6)
    {
LABEL_15:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      return;
    }

LABEL_14:
    free(v6);
    goto LABEL_15;
  }

  v28[0] = *(a1 + 40);
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v11 = *(a1 + 32);
  v12 = *(v11 + 280);
  *(v11 + 280) = v10;
}

void sub_18245D640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void _NWAdvertiser_dnssd_handler(_DNSServiceRef_t *a1, int a2, int a3, const char *a4, const char *a5, const char *a6, void *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v13 = a7;
  if (v13 && *(v13 + 8) == a1)
  {
    v31 = v13;
    nw_context_assert_queue(*(*(v13 + 1) + 24));
    v14 = *(*(v31 + 1) + 16);
    if (v14 && !_nw_parameters_get_logging_disabled(v14))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v15 = glistenerLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_listener_get_id_string(*(v31 + 1));
        *buf = 136447746;
        v33 = "[_NWAdvertiser handleBonjourUpdateFlags:error:name:type:domain:]";
        v17 = "<NULL>";
        v34 = 2082;
        if (a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = "<NULL>";
        }

        v35 = id_string;
        v36 = 1024;
        if (a5)
        {
          v19 = a5;
        }

        else
        {
          v19 = "<NULL>";
        }

        *v37 = a2;
        if (a6)
        {
          v17 = a6;
        }

        *&v37[4] = 1024;
        *&v37[6] = a3;
        v38 = 2082;
        v39 = v18;
        v40 = 2082;
        v41 = v19;
        v42 = 2082;
        v43 = v17;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] flags=0x%x, error=%d, name=%{public}s, type=%{public}s, domain=%{public}s", buf, 0x40u);
      }
    }

    WeakRetained = objc_loadWeakRetained(v31 + 3);
    v21 = WeakRetained;
    if (a3)
    {
      dns_error = nw_error_create_dns_error(a3);
      v23 = *(*(v31 + 1) + 16);
      if (v23 && !_nw_parameters_get_logging_disabled(v23))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v24 = glistenerLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = nw_listener_get_id_string(*(v31 + 1));
          *buf = 136446722;
          v33 = "[_NWAdvertiser handleBonjourUpdateFlags:error:name:type:domain:]";
          v34 = 2082;
          v35 = v25;
          v36 = 2114;
          *v37 = dns_error;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Error advertising bonjour service: %{public}@", buf, 0x20u);
        }
      }

      v26 = *(v31 + 1);
      if (a3 == -65570)
      {
        v27 = v26[2];
        if (v27 && !_nw_parameters_get_logging_disabled(v27))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v28 = glistenerLogObj;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = nw_listener_get_id_string(*(v31 + 1));
            *buf = 136446466;
            v33 = "[_NWAdvertiser handleBonjourUpdateFlags:error:name:type:domain:]";
            v34 = 2082;
            v35 = v29;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] advertising denied by policy", buf, 0x16u);
          }
        }
      }

      else
      {
        nw_listener_set_state_on_queue(v26, 3, dns_error);
      }

      bonjour_service = 0;
    }

    else
    {
      bonjour_service = 0;
      if (a4)
      {
        if (a5)
        {
          if (a6)
          {
            if (!WeakRetained)
            {
              bonjour_service = nw_endpoint_create_bonjour_service(a4, a5, a6);
              if ((a2 & 2) != 0)
              {
                nw_listener_update_advertised_endpoint(*(v31 + 1), bonjour_service);
              }
            }
          }
        }
      }
    }

    v13 = v31;
  }
}

void nw_listener_update_advertised_endpoint(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *(v3 + 2);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = v3;
      v8 = v7 + 42;

      *buf = 136446722;
      *&buf[4] = "nw_listener_update_advertised_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v35 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Updating advertised endpoint to %@", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy__18668;
  v36 = __Block_byref_object_dispose__18669;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__11;
  v32 = __Block_byref_object_dispose__12;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__18668;
  v26[4] = __Block_byref_object_dispose__18669;
  v27 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL38nw_listener_update_advertised_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
  aBlock[3] = &unk_1E6A2E050;
  v9 = v3;
  v21 = v9;
  v10 = v4;
  v22 = v10;
  v23 = buf;
  v24 = &v28;
  v25 = v26;
  v11 = _Block_copy(aBlock);
  os_unfair_lock_lock(v3 + 2);
  v11[2](v11);
  os_unfair_lock_unlock(v3 + 2);

  if (v10)
  {
    if (v29[5])
    {
      v12 = *(*&buf[8] + 40);
      if (v12)
      {
        v13 = v9[18];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___ZL38nw_listener_update_advertised_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_2;
        v16[3] = &unk_1E6A36148;
        v18 = v26;
        v19 = &v28;
        v17 = v10;
        v14 = v12;
        v15 = dispatch_block_create_with_qos_class(0, v13, 0, v16);
        dispatch_async(v14, v15);
      }
    }
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(buf, 8);
}

void ___ZL38nw_listener_update_advertised_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 288), *(a1 + 40));
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 64));
  v2 = _Block_copy(*(*(a1 + 32) + 120));
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = _nw_parameters_copy(*(*(a1 + 32) + 16));
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void ___ZL38nw_listener_update_advertised_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___ZL38nw_listener_update_advertised_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_3;
  v2[3] = &unk_1E6A3D738;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  nw_utilities_execute_block_as_persona_from_parameters(v1, v2);
}

uint64_t ___ZL42nw_listener_reconcile_advertised_endpointsP22NWConcrete_nw_listenerP7NSArrayIP13_NWAdvertiserEPU22objcproto11OS_nw_array8NSObjectPU21objcproto10OS_nw_pathS6_S3__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nw_endpoint_copy_public_keys(v4);
  v60 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = [v8 arrayByAddingObjectsFromArray:v6];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = v6;
      v11 = *(v7 + 40);
      *(v7 + 40) = v12;
    }
  }

  if (!*(*(*(a1 + 72) + 8) + 24))
  {
    *(*(*(a1 + 72) + 8) + 24) = nw_endpoint_get_device_id(v4);
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v13 = nw_endpoint_copy_txt_record(v4);
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = nw_endpoint_copy(v4);
  nw_endpoint_set_txt_record(v16, 0);
  v17 = v16;
  if (nw_endpoint_get_type(v17) == nw_endpoint_type_bonjour_service)
  {
    bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v17);
    bonjour_service_name = nw_endpoint_get_bonjour_service_name(v17);
    bonjour_service_type = nw_endpoint_get_bonjour_service_type(v17);
    bonjour_service = nw_advertise_descriptor_create_bonjour_service(bonjour_service_name, bonjour_service_type, bonjour_service_domain);
    v22 = nw_endpoint_copy_txt_record(v17);
    nw_advertise_descriptor_set_txt_record_object(bonjour_service, v22);

    nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
    if (bonjour_service)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v23 = *(a1 + 32);
      v24 = [v23 countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (v24)
      {
        v25 = *v64;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v64 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v63 + 1) + 8 * i);
            if (nw_advertise_descriptor_is_equal(bonjour_service, v27[2], 0))
            {
              v29 = v27;
              goto LABEL_56;
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v63 objects:v76 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v23 = nw_path_copy_derived_parameters(*(a1 + 40));
      v28 = [[_NWAdvertiser alloc] initFor:bonjour_service descriptor:*(a1 + 56) parent:v23 parameters:?];
      if (v28)
      {
        v29 = v28;
        if ([*(*(*(a1 + 64) + 8) + 40) count])
        {
          v30 = *(a1 + 48);
          if (nw_parameters_get_include_peer_to_peer(v30[2]) && nw_parameters_get_multipath_service(v30[2]) && (v31 = v30[34]) != 0)
          {
            v32 = nw_advertise_descriptor_get_type(v31) == 2;

            if (v32)
            {
              v33 = *(*(a1 + 48) + 16);
              if (v33 && !_nw_parameters_get_logging_disabled(v33))
              {
                if (__nwlog_listener_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                }

                v34 = glistenerLogObj;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  id_string = nw_listener_get_id_string(*(a1 + 48));
                  *buf = 136446466;
                  v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
                  v70 = 2082;
                  v71 = id_string;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Got new keys, starting AWDL advertising timer", buf, 0x16u);
                }
              }

              nw_listener_start_advertise_timer_on_queue(*(a1 + 48));
            }
          }

          else
          {
          }
        }

        v43 = *(*(a1 + 48) + 16);
        if (v43 && !_nw_parameters_get_logging_disabled(v43))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v44 = glistenerLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = nw_listener_get_id_string(*(a1 + 48));
            *buf = 136446722;
            v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
            v70 = 2082;
            v71 = v45;
            v72 = 2112;
            v73 = bonjour_service;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Creating new advertiser for %@", buf, 0x20u);
          }
        }

        [(_NWAdvertiser *)v29 start];
        *(*(*(a1 + 88) + 8) + 24) = 1;
LABEL_56:

        v46 = *(*(*(a1 + 96) + 8) + 40);
        if (v46)
        {
          [v46 arrayByAddingObject:v29];
        }

        else
        {
          v67 = v29;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        }
        v47 = ;
        v48 = *(*(a1 + 96) + 8);
        v49 = *(v48 + 40);
        *(v48 + 40) = v47;

        v23 = v29;
        goto LABEL_60;
      }

      v36 = *(*(a1 + 48) + 16);
      if (!v36 || _nw_parameters_get_logging_disabled(v36))
      {
LABEL_60:

        goto LABEL_61;
      }

      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v37 = glistenerLogObj;
      v38 = nw_listener_get_id_string(*(a1 + 48));
      *buf = 136446722;
      v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
      v70 = 2082;
      v71 = v38;
      v72 = 2112;
      v73 = bonjour_service;
      v39 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (__nwlog_fault(v39, &type, &v61))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v40 = glistenerLogObj;
          v41 = type;
          if (os_log_type_enabled(v40, type))
          {
            v42 = nw_listener_get_id_string(*(a1 + 48));
            *buf = 136446722;
            v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
            v70 = 2082;
            v71 = v42;
            v72 = 2112;
            v73 = bonjour_service;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s [%{public}s] failed to create advertiser for %@", buf, 0x20u);
          }
        }

        else if (v61 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v52 = backtrace_string;
            if (__nwlog_listener_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
            }

            v53 = glistenerLogObj;
            v54 = type;
            if (os_log_type_enabled(v53, type))
            {
              v55 = nw_listener_get_id_string(*(a1 + 48));
              *buf = 136446978;
              v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
              v70 = 2082;
              v71 = v55;
              v72 = 2112;
              v73 = bonjour_service;
              v74 = 2082;
              v75 = v52;
              _os_log_impl(&dword_181A37000, v53, v54, "%{public}s [%{public}s] failed to create advertiser for %@, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v52);
            goto LABEL_79;
          }

          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v40 = glistenerLogObj;
          v58 = type;
          if (os_log_type_enabled(v40, type))
          {
            v59 = nw_listener_get_id_string(*(a1 + 48));
            *buf = 136446722;
            v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
            v70 = 2082;
            v71 = v59;
            v72 = 2112;
            v73 = bonjour_service;
            _os_log_impl(&dword_181A37000, v40, v58, "%{public}s [%{public}s] failed to create advertiser for %@, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v40 = glistenerLogObj;
          v56 = type;
          if (os_log_type_enabled(v40, type))
          {
            v57 = nw_listener_get_id_string(*(a1 + 48));
            *buf = 136446722;
            v69 = "nw_listener_reconcile_advertised_endpoints_block_invoke";
            v70 = 2082;
            v71 = v57;
            v72 = 2112;
            v73 = bonjour_service;
            _os_log_impl(&dword_181A37000, v40, v56, "%{public}s [%{public}s] failed to create advertiser for %@, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_79:
      if (v39)
      {
        free(v39);
      }

      goto LABEL_60;
    }
  }

  else
  {
  }

LABEL_61:

  return 1;
}

void nw_listener_start_advertise_timer_on_queue(NWConcrete_nw_listener *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_context_assert_queue(*(v1 + 3));
  if (*(v1 + 32))
  {
    v2 = *(v1 + 2);
    if (v2 && !_nw_parameters_get_logging_disabled(v2))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v3 = glistenerLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v1;
        v5 = v4 + 42;

        *buf = 136446466;
        v40 = "nw_listener_start_advertise_timer_on_queue";
        v41 = 2082;
        v42 = v5;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Reset timer for advertising over AWDL", buf, 0x16u);
      }
    }

    v6 = *(v1 + 32);
    v7 = dispatch_time(0x8000000000000000, 30000000000);
    nw_queue_set_timer_values(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    goto LABEL_34;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___ZL42nw_listener_start_advertise_timer_on_queueP22NWConcrete_nw_listener_block_invoke;
  v37[3] = &unk_1E6A3D868;
  v8 = v1;
  v38 = v8;
  *(v1 + 32) = nw_queue_context_create_source(0, 2, 3, 0, v37, 0);
  v9 = (*(v8 + 124))++ + 1;
  if ((v9 & 0x10000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = *(v8 + 124);
    *buf = 136446978;
    v40 = "nw_listener_start_advertise_timer_on_queue";
    v41 = 2082;
    v42 = "listener->awdl_use_count";
    v43 = 2048;
    v44 = 1;
    v45 = 2048;
    v46 = v11;
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v12, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          v15 = *(v8 + 124);
          *buf = 136446978;
          v40 = "nw_listener_start_advertise_timer_on_queue";
          v41 = 2082;
          v42 = "listener->awdl_use_count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v15;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v27 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          v29 = type;
          if (os_log_type_enabled(v28, type))
          {
            v30 = *(v8 + 124);
            *buf = 136447234;
            v40 = "nw_listener_start_advertise_timer_on_queue";
            v41 = 2082;
            v42 = "listener->awdl_use_count";
            v43 = 2048;
            v44 = 1;
            v45 = 2048;
            v46 = v30;
            v47 = 2082;
            v48 = v27;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v27);
          if (!v12)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v13 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v13, type))
        {
          v34 = *(v8 + 124);
          *buf = 136446978;
          v40 = "nw_listener_start_advertise_timer_on_queue";
          v41 = 2082;
          v42 = "listener->awdl_use_count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v34;
          _os_log_impl(&dword_181A37000, v13, v33, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(v13, type))
        {
          v32 = *(v8 + 124);
          *buf = 136446978;
          v40 = "nw_listener_start_advertise_timer_on_queue";
          v41 = 2082;
          v42 = "listener->awdl_use_count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v32;
          _os_log_impl(&dword_181A37000, v13, v31, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    if (!v12)
    {
LABEL_18:
      *(v8 + 124) = -1;
      goto LABEL_19;
    }

LABEL_17:
    free(v12);
    goto LABEL_18;
  }

LABEL_19:
  v16 = *(v8 + 2);
  if (v16 && !_nw_parameters_get_logging_disabled(v16))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v17 = glistenerLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v8;

      v19 = *(v8 + 124);
      *buf = 136446722;
      v40 = "nw_listener_start_advertise_timer_on_queue";
      v41 = 2082;
      v42 = v18 + 42;
      v43 = 1024;
      LODWORD(v44) = v19;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Incrementing AWDL usage to %d for timer", buf, 0x1Cu);
    }
  }

  v20 = *(v1 + 32);
  v21 = dispatch_time(0x8000000000000000, 30000000000);
  nw_queue_set_timer_values(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  nw_queue_activate_source(*(v1 + 32), v22);
  v23 = *(v8 + 2);
  if (v23 && !_nw_parameters_get_logging_disabled(v23))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v24 = glistenerLogObj;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v8;

      *buf = 136446466;
      v40 = "nw_listener_start_advertise_timer_on_queue";
      v41 = 2082;
      v42 = v25 + 42;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Started AWDL advertise listener timeout", buf, 0x16u);
    }
  }

LABEL_34:
}

void nw_listener_restart_awdl_advertising_on_queue(NWConcrete_nw_listener *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_context_assert_queue(*(v1 + 3));
  if (*(v1 + 32) == 2 && (*(v1 + 310) & 1) == 0)
  {
    v17 = v1;
    v19 = v1;
    nw_context_assert_queue(*(v1 + 3));
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(v19 + 35);
    v2 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v2)
    {
      v3 = *v21;
      do
      {
        v4 = 0;
        do
        {
          if (*v21 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v20 + 1) + 8 * v4);
          v6 = *(v19 + 2);
          if (v6 && !_nw_parameters_get_logging_disabled(v6))
          {
            if (__nwlog_listener_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
            }

            v7 = glistenerLogObj;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              *buf = 136446722;
              v30 = "nw_listener_restart_bonjour_for_all_children_advertising_on_queue";
              v31 = 2082;
              v32 = v19 + 42;
              v33 = 2112;
              v34 = v5;
              _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] restarting bonjour for %@", buf, 0x20u);
            }
          }

          if (v5)
          {
            nw_context_assert_queue(*(*(v5 + 8) + 24));
            v8 = *(*(v5 + 8) + 16);
            if (v8 && !_nw_parameters_get_logging_disabled(v8))
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v9 = glistenerLogObj;
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
              {
                id_string = nw_listener_get_id_string(*(v5 + 8));
                v11 = *(v5 + 16);
                *buf = 136446722;
                v30 = "[_NWAdvertiser restartBonjourForAllChildren]";
                v31 = 2082;
                v32 = id_string;
                v33 = 2112;
                v34 = v11;
                _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] restart bonjour for all children %@", buf, 0x20u);
              }
            }

            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v12 = *(v5 + 48);
            v13 = [v12 countByEnumeratingWithState:&v24 objects:buf count:16];
            if (v13)
            {
              v14 = *v25;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v25 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v24 + 1) + 8 * i);
                  [(_NWAdvertiser *)v16 stopBonjour];
                  [(_NWAdvertiser *)v16 startBonjour];
                }

                v13 = [v12 countByEnumeratingWithState:&v24 objects:buf count:16];
              }

              while (v13);
            }
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v2);
    }

    v1 = v17;
  }
}

BOOL ___ZL42nw_listener_reconcile_advertised_endpointsP22NWConcrete_nw_listenerP7NSArrayIP13_NWAdvertiserEPU22objcproto11OS_nw_array8NSObjectPU21objcproto10OS_nw_pathS6_S3__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_path_flow_copy_error(v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 32) + 8) + 40) == 0;
  return v8;
}

void ___ZL42nw_listener_start_advertise_timer_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2 && !_nw_parameters_get_logging_disabled(v2))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v3 = glistenerLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v5 = 136446466;
      v6 = "nw_listener_start_advertise_timer_on_queue_block_invoke";
      v7 = 2082;
      v8 = id_string;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] AWDL advertiser timeout", &v5, 0x16u);
    }
  }

  nw_listener_adjust_awdl_usage_on_queue(*(a1 + 32), 0);
  *(*(a1 + 32) + 256) = 0;
}

void nw_listener_adjust_awdl_usage_on_queue(NWConcrete_nw_listener *a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a1;
  nw_context_assert_queue(*(v3 + 3));
  v4 = *(v3 + 124);
  if (a2)
  {
    *(v3 + 124) = v4 + 1;
    if (((v4 + 1) & 0x10000) == 0)
    {
LABEL_11:
      v11 = *(v3 + 2);
      if (v11 && !_nw_parameters_get_logging_disabled(v11))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v12 = glistenerLogObj;
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v13 = v3;

        v14 = *(v3 + 124);
        *buf = 136446722;
        v50 = "nw_listener_adjust_awdl_usage_on_queue";
        v51 = 2082;
        v52 = v13 + 42;
        v53 = 1024;
        LODWORD(v54) = v14;
        v15 = "%{public}s [%{public}s] Incrementing AWDL usage to %d";
LABEL_32:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0x1Cu);
LABEL_33:

        goto LABEL_34;
      }

      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = *(v3 + 124);
    *buf = 136446978;
    v50 = "nw_listener_adjust_awdl_usage_on_queue";
    v51 = 2082;
    v52 = "listener->awdl_use_count";
    v53 = 2048;
    v54 = 1;
    v55 = 2048;
    v56 = v6;
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v7, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          v10 = *(v3 + 124);
          *buf = 136446978;
          v50 = "nw_listener_adjust_awdl_usage_on_queue";
          v51 = 2082;
          v52 = "listener->awdl_use_count";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v10;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }
      }

      else if (v47 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v32 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = type;
          if (os_log_type_enabled(v33, type))
          {
            v35 = *(v3 + 124);
            *buf = 136447234;
            v50 = "nw_listener_adjust_awdl_usage_on_queue";
            v51 = 2082;
            v52 = "listener->awdl_use_count";
            v53 = 2048;
            v54 = 1;
            v55 = 2048;
            v56 = v35;
            v57 = 2082;
            v58 = v32;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v32);
          if (!v7)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v8 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v8, type))
        {
          v45 = *(v3 + 124);
          *buf = 136446978;
          v50 = "nw_listener_adjust_awdl_usage_on_queue";
          v51 = 2082;
          v52 = "listener->awdl_use_count";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v45;
          _os_log_impl(&dword_181A37000, v8, v44, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v40 = type;
        if (os_log_type_enabled(v8, type))
        {
          v41 = *(v3 + 124);
          *buf = 136446978;
          v50 = "nw_listener_adjust_awdl_usage_on_queue";
          v51 = 2082;
          v52 = "listener->awdl_use_count";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v41;
          _os_log_impl(&dword_181A37000, v8, v40, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    if (!v7)
    {
LABEL_10:
      *(v3 + 124) = -1;
      goto LABEL_11;
    }

LABEL_9:
    free(v7);
    goto LABEL_10;
  }

  *(v3 + 124) = v4 - 1;
  if ((v4 - 1) >= 0x10000)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = *(v3 + 124);
    *buf = 136446978;
    v50 = "nw_listener_adjust_awdl_usage_on_queue";
    v51 = 2082;
    v52 = "listener->awdl_use_count";
    v53 = 2048;
    v54 = 1;
    v55 = 2048;
    v56 = v17;
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v18, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          v21 = *(v3 + 124);
          *buf = 136446978;
          v50 = "nw_listener_adjust_awdl_usage_on_queue";
          v51 = 2082;
          v52 = "listener->awdl_use_count";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v21;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      else if (v47 == 1)
      {
        v36 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v37 = type;
        v38 = os_log_type_enabled(v19, type);
        if (v36)
        {
          if (v38)
          {
            v39 = *(v3 + 124);
            *buf = 136447234;
            v50 = "nw_listener_adjust_awdl_usage_on_queue";
            v51 = 2082;
            v52 = "listener->awdl_use_count";
            v53 = 2048;
            v54 = 1;
            v55 = 2048;
            v56 = v39;
            v57 = 2082;
            v58 = v36;
            _os_log_impl(&dword_181A37000, v19, v37, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v36);
          if (!v18)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v38)
        {
          v46 = *(v3 + 124);
          *buf = 136446978;
          v50 = "nw_listener_adjust_awdl_usage_on_queue";
          v51 = 2082;
          v52 = "listener->awdl_use_count";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v46;
          _os_log_impl(&dword_181A37000, v19, v37, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v42 = type;
        if (os_log_type_enabled(v19, type))
        {
          v43 = *(v3 + 124);
          *buf = 136446978;
          v50 = "nw_listener_adjust_awdl_usage_on_queue";
          v51 = 2082;
          v52 = "listener->awdl_use_count";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v43;
          _os_log_impl(&dword_181A37000, v19, v42, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    if (!v18)
    {
LABEL_25:
      *(v3 + 124) = 0;
      goto LABEL_26;
    }

LABEL_24:
    free(v18);
    goto LABEL_25;
  }

LABEL_26:
  v22 = *(v3 + 2);
  if (v22 && !_nw_parameters_get_logging_disabled(v22))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v12 = glistenerLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v23 = v3;

    v24 = *(v3 + 124);
    *buf = 136446722;
    v50 = "nw_listener_adjust_awdl_usage_on_queue";
    v51 = 2082;
    v52 = v23 + 42;
    v53 = 1024;
    LODWORD(v54) = v24;
    v15 = "%{public}s [%{public}s] Decrementing AWDL usage to %d";
    goto LABEL_32;
  }

LABEL_34:
  if (!v4 && *(v3 + 124))
  {
    v25 = *(v3 + 2);
    if (!v25 || _nw_parameters_get_logging_disabled(v25))
    {
      goto LABEL_52;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v26 = glistenerLogObj;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_51:

LABEL_52:
      nw_listener_restart_awdl_advertising_on_queue(v3);
      goto LABEL_53;
    }

    v27 = v3;

    *buf = 136446466;
    v50 = "nw_listener_adjust_awdl_usage_on_queue";
    v51 = 2082;
    v52 = v27 + 42;
    v28 = "%{public}s [%{public}s] Start advertising over AWDL";
LABEL_50:
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
    goto LABEL_51;
  }

  if (v4 && !*(v3 + 124))
  {
    v29 = *(v3 + 2);
    if (!v29 || _nw_parameters_get_logging_disabled(v29))
    {
      goto LABEL_52;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v26 = glistenerLogObj;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v30 = v3;

    *buf = 136446466;
    v50 = "nw_listener_adjust_awdl_usage_on_queue";
    v51 = 2082;
    v52 = v30 + 42;
    v28 = "%{public}s [%{public}s] Stop advertising over AWDL";
    goto LABEL_50;
  }

LABEL_53:
}

uint64_t ___ZL49nw_listener_cancel_all_proxy_connections_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v9 = 136446722;
      v10 = "nw_listener_cancel_all_proxy_connections_on_queue_block_invoke";
      v11 = 2082;
      v12 = id_string;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cancelling proxy connection: %{public}@", &v9, 0x20u);
    }
  }

  nw_connection_cancel(v4);

  return 1;
}

BOOL ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_2_218(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  result = nw_path_flow_registration_uses_nexus(*(a1 + 32), a3);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t ___ZL46nw_listener_copy_proxy_connection_for_endpointP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nw_connection_copy_endpoint(v5);
  is_equal = nw_endpoint_is_equal(v6, *(a1 + 32), 0);
  if (is_equal)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return is_equal ^ 1u;
}

void ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_211(void **a1, uint64_t a2)
{
  v3 = nw_protocol_options_copy(a2);
  if (nw_protocol_options_is_quic(v3))
  {
    nw_listener_update_quic_identity_reference(a1[4], a1[5], v3);
  }

  nw_protocol_stack_append_application_protocol(a1[6], v3);
}

void nw_listener_update_quic_identity_reference(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  uu = 0uLL;
  nw_proxy_config_get_identifier(v6, &uu);
  if (!uuid_is_null(&uu))
  {
    v8 = nw_quic_stream_copy_shared_connection_options(v7);
    v9 = v5[3];
    if (nw_proxy_config_get_is_companion_proxy(v6))
    {
      v10 = "com.apple.networkrelay";
    }

    else
    {
      v10 = 0;
    }

    if ((nw_quic_connection_fetch_client_identity_reference(v9, v8, &uu, v10) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 136446210;
        v13 = "nw_listener_update_quic_identity_reference";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Unable to fetch QUIC identity reference", &v12, 0xCu);
      }
    }
  }
}

void ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_212(uint64_t a1, unsigned int a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v7 = &unk_1EA83F000;
  if (v6 && !_nw_parameters_get_logging_disabled(v6))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      if (a2 > 5)
      {
        v10 = "unknown";
      }

      else
      {
        v10 = off_1E6A2F020[a2];
      }

      *buf = 136446978;
      v57 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
      v58 = 2082;
      v59 = id_string;
      v60 = 2082;
      v61 = v10;
      v62 = 2112;
      v63 = v5;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Proxy connection moved to state %{public}s (%@)", buf, 0x2Au);
    }
  }

  if (a2 == 3)
  {
    listener_protocol_on_nw_queue = nw_connection_get_listener_protocol_on_nw_queue(*(a1 + 40), *(a1 + 48), 1);
    if (listener_protocol_on_nw_queue)
    {
      v12 = [[nw_listener_inbox_protocol alloc] initWithProtocol:*(a1 + 32) delegate:?];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = *(*(a1 + 32) + 16);
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        if (v15 && !_nw_parameters_get_logging_disabled(v15))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v16 = glistenerLogObj;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = nw_listener_get_id_string(*(a1 + 32));
            v18 = listener_protocol_on_nw_queue[2];
            *buf = 136446722;
            v57 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
            v58 = 2082;
            v59 = v17;
            v60 = 2082;
            v61 = v18;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Created inbox for proxy protocol %{public}s", buf, 0x20u);
          }
        }

        v19 = *(*(a1 + 32) + 144);
        if (v19)
        {
          v20 = *(*(*(a1 + 56) + 8) + 40);
          if (v20)
          {
            _nw_array_append(v19, v20);
          }
        }

        goto LABEL_79;
      }

      if (v15 && !_nw_parameters_get_logging_disabled(v15))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v38 = glistenerLogObj;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = nw_listener_get_id_string(*(a1 + 32));
          v40 = listener_protocol_on_nw_queue[2];
          *buf = 136446722;
          v57 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
          v58 = 2082;
          v59 = v39;
          v60 = 2082;
          v61 = v40;
          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Failed to create inbox for %{public}s", buf, 0x20u);
        }
      }

      v36 = *(a1 + 32);
      v41 = [[NWConcrete_nw_error alloc] initWithDomain:12 code:?];
      nw_listener_set_state_on_queue(v36, 3, v41);
    }

    else
    {
      v33 = *(*(a1 + 32) + 16);
      if (v33 && !_nw_parameters_get_logging_disabled(v33))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v34 = glistenerLogObj;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v57 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
          v58 = 2082;
          v59 = v35;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Listener could not find protocol to join in connection", buf, 0x16u);
        }
      }

      v36 = *(a1 + 32);
      v37 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      nw_listener_set_state_on_queue(v36, 3, v37);
    }

LABEL_78:

    goto LABEL_79;
  }

  if ((a2 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_79;
  }

  v21 = *(*(*(a1 + 56) + 8) + 40);
  v22 = *(a1 + 32);
  if (v21)
  {
    v23 = v22;
    v24 = v21;
    if (v23)
    {
      nw_context_assert_queue(v23[3]);
      if (*(v23 + 32) != 2 || (*(v23 + 310) & 1) != 0)
      {
        v42 = v23[2];
        if (v42 && !_nw_parameters_get_logging_disabled(v42))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v43 = glistenerLogObj;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v57 = "nw_listener_teardown_protocol_inbox";
            v58 = 2082;
            v59 = v23 + 42;
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Listener is not ready, ignoring teardown protocol inbox", buf, 0x16u);
          }
        }
      }

      else
      {
        v25 = v23[2];
        if (v25 && !_nw_parameters_get_logging_disabled(v25))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v26 = glistenerLogObj;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v57 = "nw_listener_teardown_protocol_inbox";
            v58 = 2082;
            v59 = v23 + 42;
            _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] tearing down protocol inbox", buf, 0x16u);
          }
        }

        v27 = v23[18];
        if (v27)
        {
          v28 = v27;
          v29 = v24;
          v30 = _nw_array_remove_object(v28, v29);

          if (v30)
          {
            v31 = v23[2];
            if (v31 && !_nw_parameters_get_logging_disabled(v31))
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v32 = glistenerLogObj;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v57 = "nw_listener_teardown_protocol_inbox";
                v58 = 2082;
                v59 = v23 + 42;
                v60 = 2114;
                v61 = v29;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cancelling protocol inbox: %{public}@", buf, 0x20u);
              }
            }

            nw_listener_resume_inbox(v23, v29);
            nw_listener_cancel_inbox_on_queue(v23, v29);
          }
        }
      }

LABEL_69:

      v22 = *(a1 + 32);
      goto LABEL_70;
    }

    v46 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_listener_teardown_protocol_inbox";
    v47 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v47, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v48, type))
        {
          *buf = 136446210;
          v57 = "nw_listener_teardown_protocol_inbox";
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null listener", buf, 0xCu);
        }
      }

      else if (v54 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v51 = type;
        v52 = os_log_type_enabled(v48, type);
        if (backtrace_string)
        {
          if (v52)
          {
            *buf = 136446466;
            v57 = "nw_listener_teardown_protocol_inbox";
            v58 = 2082;
            v59 = backtrace_string;
            _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v7 = &unk_1EA83F000;
          free(backtrace_string);
          goto LABEL_96;
        }

        if (v52)
        {
          *buf = 136446210;
          v57 = "nw_listener_teardown_protocol_inbox";
          _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null listener, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v48 = __nwlog_obj();
        v53 = type;
        if (os_log_type_enabled(v48, type))
        {
          *buf = 136446210;
          v57 = "nw_listener_teardown_protocol_inbox";
          _os_log_impl(&dword_181A37000, v48, v53, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
        }
      }

      v7 = &unk_1EA83F000;
    }

LABEL_96:
    if (v47)
    {
      free(v47);
    }

    goto LABEL_69;
  }

LABEL_70:
  if (a2 == 4)
  {
    nw_array_remove_object(*(v22 + 160), *(a1 + 40));
    nw_connection_cancel(*(a1 + 40));
    v22 = *(a1 + 32);
  }

  v44 = *(v22 + 16);
  if (v44 && !_nw_parameters_get_logging_disabled(v44))
  {
    if (v7[321] != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v36 = glistenerLogObj;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v45 = nw_listener_get_id_string(*(a1 + 32));
      *buf = 136446466;
      v57 = "nw_listener_reconcile_inboxes_on_queue_block_invoke";
      v58 = 2082;
      v59 = v45;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Tore down inbox for proxy protocol", buf, 0x16u);
    }

    goto LABEL_78;
  }

LABEL_79:
}

uint64_t ___ZL66nw_listener_enumerate_multicast_parameters_for_descriptor_on_queueP22NWConcrete_nw_listenerPU33objcproto22OS_nw_group_descriptor8NSObjectU13block_pointerFbPU27objcproto16OS_nw_parametersS1_E_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _nw_parameters_copy(*(*(a1 + 32) + 208));
  nw_parameters_set_local_endpoint(v4, v3);
  v5 = nw_endpoint_copy_interface(v3);
  v6 = nw_parameters_copy_required_interface(v4);
  v7 = v6;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6 || (_nw_interface_shallow_compare(v5, v6) & 1) != 0)
  {
    nw_parameters_require_interface(v4, v5);
LABEL_5:
    v8 = (*(*(a1 + 40) + 16))();

    v4 = 0;
    goto LABEL_6;
  }

  v10 = *(*(a1 + 32) + 16);
  if (v10 && !_nw_parameters_get_logging_disabled(v10))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v11 = glistenerLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v13 = 136446978;
      v14 = "nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue_block_invoke";
      v15 = 2082;
      v16 = id_string;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] skipping multicast group %@, does not match interface %@ required by parameters", &v13, 0x2Au);
    }
  }

  v8 = 1;
LABEL_6:

  return v8;
}

void sub_182463398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose((v42 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_182464774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 96), 8);

  _Unwind_Resume(a1);
}

void nw_listener_suspend_inbox(NWConcrete_nw_listener *a1, nw_listener_inbox *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [(nw_listener_inbox *)v4 suspend];
  v5 = *(v3 + 2);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      v8 = v7 + 42;

      v9 = 136446722;
      v10 = "nw_listener_suspend_inbox";
      v11 = 2082;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Suspended for %{public}@", &v9, 0x20u);
    }
  }
}

const char *nw_listener_state_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return "<unknown>";
  }

  else
  {
    return off_1E6A2E220[a1];
  }
}

nw_listener_t nw_listener_create(nw_parameters_t parameters)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = parameters;
  nw_allow_use_of_dispatch_internal();
  if (v1)
  {
    v2 = [NWConcrete_nw_listener alloc];
    v3 = _nw_parameters_copy(v1);
    v4 = [(NWConcrete_nw_listener *)v2 initWithParameters:v3 multicastDescriptor:0];

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_listener_create";
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
        v17 = "nw_listener_create";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters", buf, 0xCu);
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
          v17 = "nw_listener_create";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_listener_create";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_create";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_listener_create_with_launchd_key(void *a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  nw_allow_use_of_dispatch_internal();
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_listener_create_with_launchd_key";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v8, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_listener_create_with_launchd_key";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_listener_create_with_launchd_key";
          _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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
          v25 = "nw_listener_create_with_launchd_key";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_listener_create_with_launchd_key";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }

LABEL_40:
    if (v8)
    {
      free(v8);
    }

    v4 = 0;
    goto LABEL_5;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_listener_create_with_launchd_key";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v8, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_listener_create_with_launchd_key";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null key", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_listener_create_with_launchd_key";
          _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
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
          v25 = "nw_listener_create_with_launchd_key";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null key, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_listener_create_with_launchd_key";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }

    goto LABEL_40;
  }

  v4 = nw_listener_create(v3);
  v5 = strdup(a2);
  if (v5)
  {
LABEL_4:
    v4[7].isa = v5;
LABEL_5:

    return v4;
  }

  v13 = __nwlog_obj();
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v25 = "strict_strdup";
  v14 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v14);
  if (!result)
  {
    free(v14);
    v5 = 0;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}
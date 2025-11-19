uint64_t sub_181AC60FC()
{
  word_1ED411D40 = 1;
  result = sub_181FB974C();
  v1 = result;
  if (result == 39)
  {
    v1 = 28777;
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411D48 = v1;
  unk_1ED411D50 = v2;
  byte_1ED411D58 = result == 39;
  return result;
}

void nw_path_monitor_set_queue(nw_path_monitor_t monitor, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = monitor;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_monitor_set_queue";
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
        v23 = "nw_path_monitor_set_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null monitor", buf, 0xCu);
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
          v23 = "nw_path_monitor_set_queue";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_path_monitor_set_queue";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_monitor_set_queue";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    nw_path_evaluator_set_queue(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_monitor_set_queue";
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
      v23 = "nw_path_monitor_set_queue";
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
      v23 = "nw_path_monitor_set_queue";
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
      v23 = "nw_path_monitor_set_queue";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_monitor_set_queue";
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

void nw_path_monitor_start(nw_path_monitor_t monitor)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = monitor;
  v2 = v1;
  if (v1)
  {
    nw_path_evaluator_start(v1);
    nw_path_evaluator_call_update_handler(v2);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_monitor_start";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_start";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null monitor", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_path_monitor_start";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_start";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_start";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_path_evaluator_call_update_handler(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    v3 = *&v2[12]._os_unfair_lock_opaque;
    if (v3 && (v4 = *&v2[16]._os_unfair_lock_opaque) != 0 && *&v2[14]._os_unfair_lock_opaque)
    {
      v5 = _Block_copy(v4);
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v6 = gpathLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v26 = "nw_path_evaluator_call_update_handler";
        v27 = 1042;
        *v28 = 16;
        *&v28[4] = 2098;
        *&v28[6] = v2 + 20;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P] scheduling update", buf, 0x1Cu);
      }

      v7 = *&v2[14]._os_unfair_lock_opaque;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __nw_path_evaluator_call_update_handler_block_invoke;
      block[3] = &unk_1E6A39AE8;
      v20 = v2;
      v22 = v5;
      v21 = v3;
      v8 = v5;
      dispatch_async(v7, block);
    }

    else
    {
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v8 = gpathLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = _Block_copy(*&v2[16]._os_unfair_lock_opaque);
        v10 = *&v2[14]._os_unfair_lock_opaque;
        *buf = 136447490;
        v26 = "nw_path_evaluator_call_update_handler";
        v27 = 1042;
        *v28 = 16;
        *&v28[4] = 2098;
        *&v28[6] = v2 + 20;
        v29 = 2048;
        v30 = v3;
        v31 = 2048;
        v32 = v9;
        v33 = 2048;
        v34 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [%{public,uuid_t}.16P] not delivering update, path=%p, update_block=%p, client_queue=%p", buf, 0x3Au);
      }
    }

    os_unfair_lock_unlock(v2 + 24);
    goto LABEL_15;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_path_evaluator_call_update_handler";
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
        v26 = "nw_path_evaluator_call_update_handler";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null evaluator", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_path_evaluator_call_update_handler";
          v27 = 2082;
          *v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_path_evaluator_call_update_handler";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v26 = "nw_path_evaluator_call_update_handler";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v12)
  {
    free(v12);
  }

LABEL_15:
}

uint64_t __nw_path_evaluator_call_update_handler_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__nwlog_path_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
  }

  v2 = gpathLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32) + 80;
    v5 = 136446722;
    v6 = "nw_path_evaluator_call_update_handler_block_invoke";
    v7 = 1042;
    v8 = 16;
    v9 = 2098;
    v10 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P] delivering update", &v5, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

char *nw_path_copy_netagent_dictionary(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_netagent_dictionary(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_netagent_dictionary";
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
        v16 = "nw_path_copy_netagent_dictionary";
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
          v16 = "nw_path_copy_netagent_dictionary";
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
        v16 = "nw_path_copy_netagent_dictionary";
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
        v16 = "nw_path_copy_netagent_dictionary";
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

uint64_t nw_queue_context_create_source(void *a1, int a2, int a3, unsigned int a4, void *a5, void *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a5;
  v14 = a6;
  v16 = v14;
  if (a2 == -1)
  {
    v45 = __nwlog_obj(v14, v15);
    *buf = 136446210;
    v75 = "nw_queue_context_create_source";
    v46 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    v47 = __nwlog_fault(v46, &type, &v72);
    if (!v47)
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj(v47, v48);
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v75 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null (fd != -1)", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v72 != 1)
    {
      v49 = __nwlog_obj(v47, v48);
      v66 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v75 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v49, v66, "%{public}s called with null (fd != -1), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj(backtrace_string, v60);
    v61 = type;
    v62 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v62)
      {
        *buf = 136446210;
        v75 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v49, v61, "%{public}s called with null (fd != -1), no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v62)
    {
      *buf = 136446466;
      v75 = "nw_queue_context_create_source";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v61, "%{public}s called with null (fd != -1), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  if (!v13)
  {
    v51 = __nwlog_obj(v14, v15);
    *buf = 136446210;
    v75 = "nw_queue_context_create_source";
    v46 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    v52 = __nwlog_fault(v46, &type, &v72);
    if (!v52)
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj(v52, v53);
      v54 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v75 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v49, v54, "%{public}s called with null block", buf, 0xCu);
      }

LABEL_78:

LABEL_79:
      if (v46)
      {
        free(v46);
      }

      goto LABEL_37;
    }

    if (v72 != 1)
    {
      v49 = __nwlog_obj(v52, v53);
      v67 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v75 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v49, v67, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj(backtrace_string, v63);
    v64 = type;
    v65 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v65)
      {
        *buf = 136446210;
        v75 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v49, v64, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v65)
    {
      *buf = 136446466;
      v75 = "nw_queue_context_create_source";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v64, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(backtrace_string);
    goto LABEL_79;
  }

  if (a3 == 1)
  {
    v17 = MEMORY[0x1E69E96F8];
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v17 = MEMORY[0x1E69E9730];
    goto LABEL_11;
  }

  if ((a3 & 0xFFFFFFFB) == 3)
  {
    v17 = MEMORY[0x1E69E9710];
    goto LABEL_11;
  }

  if ((a3 - 4) >= 3)
  {
    v43 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v43);
    v44 = gLogObj;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v75 = "nw_queue_context_create_source";
      v76 = 1024;
      LODWORD(v77) = a3;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s Bad source type %d", buf, 0x12u);
    }

LABEL_37:
    v18 = 0;
LABEL_45:

    return v18;
  }

  v17 = qword_1E6A39560[a3 - 4];
LABEL_11:
  v18 = malloc_type_calloc(1uLL, 0x38uLL, 0xFB81889AuLL);
  if (v18)
  {
    if (v12)
    {
LABEL_13:
      if (nw_context_is_inline(v12))
      {
        objc_storeStrong(v18 + 1, a1);
        v55 = _Block_copy(v13);
        v56 = v18[2];
        v18[2] = v55;

        v57 = _Block_copy(v16);
        v58 = v18[3];
        v18[3] = v57;

        *(v18 + 48) = a3 == 3;
        v18[4] = -1;
        v18[5] = -1;
        goto LABEL_45;
      }

      v19 = nw_context_copy_workloop(v12);
LABEL_18:
      v27 = v19;
      v28 = dispatch_source_create(v17, a2, a4, v19);
      v29 = *v18;
      *v18 = v28;

      if (*v18)
      {
        dispatch_source_set_event_handler(*v18, v13);
        v30 = *v18;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __nw_queue_context_create_source_block_invoke;
        handler[3] = &unk_1E6A3BAB0;
        v70 = v16;
        v71 = v18;
        dispatch_source_set_cancel_handler(v30, handler);

LABEL_44:
        goto LABEL_45;
      }

      free(v18);
      v31 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v31);
      v32 = gLogObj;
      *buf = 136446210;
      v75 = "nw_queue_context_create_source";
      v33 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (__nwlog_fault(v33, &type, &v72))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v34 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v34);
          v35 = gLogObj;
          v36 = type;
          if (os_log_type_enabled(v35, type))
          {
            *buf = 136446210;
            v75 = "nw_queue_context_create_source";
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s dispatch_source_create failed", buf, 0xCu);
          }
        }

        else if (v72 == 1)
        {
          v37 = __nw_create_backtrace_string();
          v38 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v38);
          v35 = gLogObj;
          v39 = type;
          v40 = os_log_type_enabled(v35, type);
          if (v37)
          {
            if (v40)
            {
              *buf = 136446466;
              v75 = "nw_queue_context_create_source";
              v76 = 2082;
              v77 = v37;
              _os_log_impl(&dword_181A37000, v35, v39, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v37);
            if (!v33)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          if (v40)
          {
            *buf = 136446210;
            v75 = "nw_queue_context_create_source";
            _os_log_impl(&dword_181A37000, v35, v39, "%{public}s dispatch_source_create failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v41 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v41);
          v35 = gLogObj;
          v42 = type;
          if (os_log_type_enabled(v35, type))
          {
            *buf = 136446210;
            v75 = "nw_queue_context_create_source";
            _os_log_impl(&dword_181A37000, v35, v42, "%{public}s dispatch_source_create failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v33)
      {
LABEL_43:
        v18 = 0;
        goto LABEL_44;
      }

LABEL_42:
      free(v33);
      goto LABEL_43;
    }

LABEL_17:
    v19 = dispatch_workloop_copy_current();
    goto LABEL_18;
  }

  v68 = a4;
  v20 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v20);
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = gLogObj;
  os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v75 = "nw_queue_context_create_source";
  v76 = 2048;
  v77 = 1;
  v78 = 2048;
  v79 = 56;
  v25 = _os_log_send_and_compose_impl();

  v16 = v23;
  v13 = v22;
  v12 = v21;
  result = __nwlog_should_abort(v25);
  if (!result)
  {
    free(v25);
    a4 = v68;
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

nw_parameters_attribution_t nw_parameters_get_attribution(nw_parameters_t parameters)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = parameters;
  v2 = v1;
  if (v1)
  {
    internal_attribution = _nw_parameters_get_internal_attribution(v1);
    if (internal_attribution <= 2)
    {
      v4 = (0x20201u >> (8 * (internal_attribution & 0x1F)));
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_get_attribution";
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
        v16 = "nw_parameters_get_attribution";
        v10 = "%{public}s called with null parameters";
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
            v16 = "nw_parameters_get_attribution";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_parameters_get_attribution";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_19;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_get_attribution";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
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

  v4 = 0;
LABEL_5:

  return v4;
}

uint64_t sub_181AC7EB8()
{
  ProtocolStack.transport.getter(&v5);
  v0 = v6;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v1 = v5;
  if (v6 >> 61 != 1)
  {
    sub_181A53008(v5, v6);
    return 0;
  }

  v2 = v5 + *(*v5 + 128);
  result = swift_beginAccess();
  if (*(v2 + 40) != 2)
  {
    v4 = (*(v2 + 40) >> 43) & 1;
    sub_181A53008(v1, v0);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_stack_copy_internet_protocol_as_ip_options(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_stack_copy_internet_protocol_as_ip_options(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
        v7 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
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
            v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
        v7 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
        v7 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t _nw_parameters_get_pid(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xD4);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 212);
  }

  return v3;
}

uint64_t sub_181AC8268(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_181AACFF4(a1, a2);
  }

  return a1;
}

uint64_t nw_parameters_get_upper_transport_protocol(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack(a1);
    v2 = nw_protocol_stack_copy_transport_protocol(v1);
    v3 = v2;
    if (v2)
    {
      if (_nw_protocol_options_is_udp(v2))
      {
        if (_nw_udp_options_get_use_quic_stats(v3))
        {
          v4 = -3;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_12;
      }

      if (!_nw_protocol_options_is_tcp(v3))
      {
        v5 = v3;
        if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
        }

        v6 = nw_protocol_options_matches_definition(v5, nw_protocol_copy_custom_ip_definition_definition);

        if ((v6 & 1) == 0)
        {
          v8 = v5;
          if (_nw_protocol_options_is_quic_connection(v8))
          {

            v4 = -3;
            goto LABEL_12;
          }

          is_quic_stream = _nw_protocol_options_is_quic_stream(v8);

          if (is_quic_stream)
          {
            v4 = -3;
            goto LABEL_12;
          }
        }
      }
    }

    v4 = 0;
LABEL_12:

    return v4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_get_upper_transport_protocol";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_upper_transport_protocol";
        v14 = "%{public}s called with null parameters";
LABEL_31:
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
            v20 = "nw_parameters_get_upper_transport_protocol";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_33;
        }

        if (!v16)
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v20 = "nw_parameters_get_upper_transport_protocol";
        v14 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_31;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_upper_transport_protocol";
        v14 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_31;
      }
    }

LABEL_32:
  }

LABEL_33:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

BOOL nw_parameters_get_logging_disabled(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_logging_disabled(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_logging_disabled";
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
        v12 = "nw_parameters_get_logging_disabled";
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
            v12 = "nw_parameters_get_logging_disabled";
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
        v12 = "nw_parameters_get_logging_disabled";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_logging_disabled";
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

uint64_t nw_parameters_get_multipath(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_multipath(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_multipath";
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
        v12 = "nw_parameters_get_multipath";
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
            v12 = "nw_parameters_get_multipath";
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
        v12 = "nw_parameters_get_multipath";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_multipath";
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

BOOL _nw_parameters_get_logging_disabled(void *a1)
{
  v1 = a1;
  v2 = sub_1821F7C78();

  return v2;
}

uint64_t nw_parameters_get_ip_protocol(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack(a1);
    v2 = nw_protocol_stack_copy_transport_protocol(v1);
    v3 = v2;
    if (v2)
    {
      if (_nw_protocol_options_is_tcp(v2))
      {
        protocol = 6;
LABEL_15:

        return protocol;
      }

      if (_nw_protocol_options_is_udp(v3))
      {
        goto LABEL_6;
      }

      v5 = v3;
      if (_nw_protocol_options_is_quic_connection(v5))
      {

        protocol = 17;
        goto LABEL_15;
      }

      is_quic_stream = _nw_protocol_options_is_quic_stream(v5);

      if (is_quic_stream)
      {
LABEL_6:
        protocol = 17;
        goto LABEL_15;
      }

      v7 = v5;
      if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
      }

      v8 = nw_protocol_options_matches_definition(v7, nw_protocol_copy_custom_ip_definition_definition);

      if (v8)
      {
        protocol = nw_custom_ip_options_get_protocol(v7);
        goto LABEL_15;
      }
    }

    protocol = 0;
    goto LABEL_15;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_get_ip_protocol";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_ip_protocol";
        v14 = "%{public}s called with null parameters";
LABEL_30:
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
            v20 = "nw_parameters_get_ip_protocol";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (!v16)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v20 = "nw_parameters_get_ip_protocol";
        v14 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_30;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_ip_protocol";
        v14 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

uint64_t nw_parameters_copy_context(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_context();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_context";
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
        v12 = "nw_parameters_copy_context";
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
            v12 = "nw_parameters_copy_context";
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
        v12 = "nw_parameters_copy_context";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_context";
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

uint64_t sub_181AC9084()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_182AD2388();
    v1 = *v2;
    *(v0 + 16) = *v2;
    swift_retain_n();
  }

  return v1;
}

nw_protocol_options_t nw_protocol_stack_copy_transport_protocol(nw_protocol_stack_t stack)
{
  v15 = *MEMORY[0x1E69E9840];
  if (stack)
  {

    return _nw_protocol_stack_copy_transport_protocol(stack);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_stack_copy_transport_protocol";
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
        v12 = "nw_protocol_stack_copy_transport_protocol";
        v6 = "%{public}s called with null stack";
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
            v12 = "nw_protocol_stack_copy_transport_protocol";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_transport_protocol";
        v6 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_transport_protocol";
        v6 = "%{public}s called with null stack, backtrace limit exceeded";
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

uint64_t nw_parameters_copy_url_endpoint(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_url_endpoint();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_url_endpoint";
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
        v12 = "nw_parameters_copy_url_endpoint";
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
            v12 = "nw_parameters_copy_url_endpoint";
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
        v12 = "nw_parameters_copy_url_endpoint";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_url_endpoint";
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

uint64_t sub_181AC95F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v40 = *(a1 + 2);
  v41 = a1[24];
  v4 = sub_181AC9084();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *(v4 + 24) + v6;
  if (*(v4 + 16) < v7)
  {
    v7 = *(v4 + 16);
  }

  v46 = v4;
  v47 = v6;
  for (i = v7; ; v7 = i)
  {
    if (v6 != v7)
    {
      goto LABEL_11;
    }

    v4 = sub_181AC81FC(v4);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = v46;
    v6 = v47;
LABEL_11:
    v9 = v5 + 16 * v6++;
    v47 = v6;
    v10 = *(v9 + 40);
    v11 = *(v9 + 48);
    if (v11 >> 62)
    {
      if (v11 >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        LOBYTE(v42) = v1;
        BYTE1(v42) = v2;
        v43 = v3;
        v44 = v40;
        v45 = v41;
        v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v14 = v13(&v42, ObjectType, v11 & 0x3FFFFFFFFFFFFFFFLL);
        v4 = sub_181AAD084(v10, v11);
        if (v14)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v4 = swift_beginAccess();
      if (*(v10 + 16) == v1 && *(v10 + 17) == v2)
      {
        v4 = *(v10 + 24);
        if (*(v10 + 40))
        {
          if (v41)
          {
            if (v4 == v3 && *(v10 + 32) == v40)
            {
              goto LABEL_54;
            }

            v4 = sub_182AD4268();
            if (v4)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          v8 = v41;
          if (v3 != v4)
          {
            v8 = 1;
          }

          if ((v8 & 1) == 0)
          {
LABEL_54:

LABEL_55:
            v30 = 1;
            return v30 & 1;
          }
        }
      }
    }
  }

  v17 = sub_181A54748();
  v18 = v17;
  v19 = *(v17 + 32);
  v20 = *(v17 + 24) + v19;
  if (*(v17 + 16) < v20)
  {
    v20 = *(v17 + 16);
  }

  v46 = v17;
  v47 = v19;
  for (i = v20; ; v20 = i)
  {
    if (v19 != v20)
    {
      goto LABEL_38;
    }

    v17 = sub_181AC81FC(v17);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v18 = v46;
    v19 = v47;
LABEL_38:
    v22 = v18 + 16 * v19++;
    v47 = v19;
    v23 = *(v22 + 40);
    v24 = *(v22 + 48);
    if (v24 >> 62)
    {
      if (v24 >> 62 == 1)
      {
        v25 = swift_getObjectType();
        LOBYTE(v42) = v1;
        BYTE1(v42) = v2;
        v43 = v3;
        v44 = v40;
        v45 = v41;
        v26 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v27 = v26(&v42, v25, v24 & 0x3FFFFFFFFFFFFFFFLL);
        v17 = sub_181AAD084(v23, v24);
        if (v27)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v17 = swift_beginAccess();
      if (*(v23 + 16) == v1 && *(v23 + 17) == v2)
      {
        v17 = *(v23 + 24);
        if (*(v23 + 40))
        {
          if (v41)
          {
            if (v17 == v3 && *(v23 + 32) == v40)
            {
              goto LABEL_54;
            }

            v17 = sub_182AD4268();
            if (v17)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          v21 = v41;
          if (v3 != v17)
          {
            v21 = 1;
          }

          if ((v21 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }
    }
  }

  ProtocolStack.transport.getter(&v42);
  v32 = v43;
  if ((~v43 & 0xF000000000000007) != 0)
  {
    v33 = v42;
    v46 = v42;
    v47 = v43;
    LOBYTE(v42) = v1;
    BYTE1(v42) = v2;
    v43 = v3;
    v44 = v40;
    v45 = v41;
    v34 = sub_181B37BFC(&v42);
    sub_181A53008(v33, v32);
    if (v34)
    {
      goto LABEL_55;
    }
  }

  v35 = v39[13];
  if ((~v35 & 0xF000000000000007) != 0)
  {
    v46 = v39[12];
    v47 = v35;
    LOBYTE(v42) = v1;
    BYTE1(v42) = v2;
    v43 = v3;
    v44 = v40;
    v45 = v41;
    if (sub_181B37BFC(&v42))
    {
      goto LABEL_55;
    }
  }

  swift_beginAccess();
  if ((~v39[7] & 0xF000000000000007) != 0)
  {
    LOBYTE(v42) = v1;
    BYTE1(v42) = v2;
    v43 = v3;
    v44 = v40;
    v45 = v41;
    if (sub_181ACC890(&v42))
    {
      goto LABEL_55;
    }
  }

  ProtocolStack.link.getter(&v42);
  v36 = v42;
  if (v42 >= 2)
  {
    v37 = v43;
    v38 = swift_getObjectType();
    LOBYTE(v42) = v1;
    BYTE1(v42) = v2;
    v43 = v3;
    v44 = v40;
    v45 = v41;
    v30 = (*(v37 + 40))(&v42, v38, v37);
    sub_181B03DAC(v36);
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

unint64_t sub_181AC9A6C()
{
  v0 = 0x636972656E6567;
  ProtocolStack.transport.getter(&v9);
  v1 = v9;
  v2 = v10;
  if ((~v10 & 0xF000000000000007) != 0)
  {
    sub_181AACFF4(v9, v10);
    sub_181A53008(v1, v2);
    v7 = v1;
    v8 = v2;
    sub_181B37B14(&v4);
    sub_181A53008(v1, v2);
    if (v6 != 255)
    {
      v0 = v5;
      if ((v6 & 1) == 0)
      {
        return sub_181FB86BC(v5);
      }
    }
  }

  else
  {
    sub_181A53008(v9, v10);
  }

  return v0;
}

uint64_t nw_context_get_private_redacted(void *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_5:
    if (nwlog_get_private_redacted::onceToken != -1)
    {
      v5 = v1;
      dispatch_once(&nwlog_get_private_redacted::onceToken, &__block_literal_global_80_47487);
      v1 = v5;
    }

    v3 = nwlog_get_private_redacted::privateRedacted;
    goto LABEL_13;
  }

  v2 = v1[33];
  if (v2 == 1)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2 != 3)
  {
    if (v2 != 2)
    {
      v3 = 1;
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (nwlog_get_sensitive_redacted::onceToken != -1)
  {
    v6 = v1;
    dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
    v1 = v6;
  }

  v3 = nwlog_get_sensitive_redacted::sensitiveRedacted;
LABEL_13:

  return v3 & 1;
}

uint64_t ProtocolStack.link.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = v3;
  v5 = *(v1 + 72);
  if (v3 == 2)
  {
    *(v1 + 64) = xmmword_182AE69F0;
    sub_181AC3890(2);
    v5 = 0;
    v4 = 1;
  }

  *a1 = v4;
  a1[1] = v5;

  return sub_181ACAA08(v3);
}

uint64_t sub_181AC9C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v3 = sub_181AC9084();
  v4 = v3;
  v5 = *(v3 + 32);
  v6 = *(v3 + 24) + v5;
  if (*(v3 + 16) < v6)
  {
    v6 = *(v3 + 16);
  }

  v32 = v3;
  v33 = v5;
  v34 = v6;
  while (1)
  {
    if (v5 != v6)
    {
      goto LABEL_10;
    }

    v3 = sub_181AC81FC(v3);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = v32;
    v5 = v33;
LABEL_10:
    v10 = v5 + 1;
    v33 = v5 + 1;
    v11 = v4 + 16 * v5;
    v12 = *(v11 + 40);
    v13 = *(v11 + 48);
    if (!(v13 >> 62))
    {
      v7 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
LABEL_5:
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      v27 = v30;
      v28 = v31;
      v9 = *(v7 + 344);
      sub_181B2C3E0(v12, v13);
      v9(sub_181AA9530, v26, MEMORY[0x1E69E7CA8] + 8, ObjectType, v7);
      v3 = sub_181AAD084(v12, v13);
      goto LABEL_6;
    }

    if (v13 >> 62 == 1)
    {
      v7 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      goto LABEL_5;
    }

LABEL_6:
    v6 = v34;
    v5 = v10;
  }

  v14 = sub_181A54748();
  v15 = v14;
  v16 = *(v14 + 32);
  v17 = *(v14 + 24) + v16;
  if (*(v14 + 16) < v17)
  {
    v17 = *(v14 + 16);
  }

  v32 = v14;
  v33 = v16;
  v34 = v17;
  while (2)
  {
    if (v16 != v17)
    {
LABEL_22:
      v21 = v16 + 1;
      v33 = v16 + 1;
      v22 = v15 + 16 * v16;
      v23 = *(v22 + 40);
      v24 = *(v22 + 48);
      if (v24 >> 62)
      {
        if (v24 >> 62 != 1)
        {
          goto LABEL_18;
        }

        v18 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
      }

      v19 = swift_getObjectType();
      MEMORY[0x1EEE9AC00](v19);
      v27 = v30;
      v28 = v31;
      v20 = *(v18 + 344);
      sub_181B2C3E0(v23, v24);
      v20(sub_181AA9530, v26, MEMORY[0x1E69E7CA8] + 8, v19, v18);
      v14 = sub_181AAD084(v23, v24);
LABEL_18:
      v17 = v34;
      v16 = v21;
      continue;
    }

    break;
  }

  v14 = sub_181AC81FC(v14);
  if (v14)
  {
    v15 = v32;
    v16 = v33;
    goto LABEL_22;
  }
}

uint64_t nw_parameters_get_server_mode(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_server_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_server_mode";
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
        v12 = "nw_parameters_get_server_mode";
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
            v12 = "nw_parameters_get_server_mode";
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
        v12 = "nw_parameters_get_server_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_server_mode";
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

uint64_t nw_parameters_get_only_primary_requires_type(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_only_primary_requires_type(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_only_primary_requires_type";
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
        v12 = "nw_parameters_get_only_primary_requires_type";
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
            v12 = "nw_parameters_get_only_primary_requires_type";
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
        v12 = "nw_parameters_get_only_primary_requires_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_only_primary_requires_type";
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

void nw_queue_activate_source(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj(0, a2);
    *buf = 136446210;
    v19 = "nw_queue_activate_source";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    v7 = __nwlog_fault(v6, &type, &v16);
    if (!v7)
    {
      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj(v7, v8);
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_queue_activate_source";
        v11 = "%{public}s called with null source";
LABEL_28:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj(backtrace_string, v13);
        v10 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v19 = "nw_queue_activate_source";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (!v14)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        v19 = "nw_queue_activate_source";
        v11 = "%{public}s called with null source, no backtrace";
        goto LABEL_28;
      }

      v9 = __nwlog_obj(v7, v8);
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_queue_activate_source";
        v11 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_30:
    if (v6)
    {
      free(v6);
    }

    return;
  }

  if (*a1)
  {
    v2 = *a1;

    dispatch_activate(v2);
    return;
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v3 = a1;
    nw_queue_source_run_timer(a1, a2);
    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v3 = a1;
    nw_context_queue_source_block(*(a1 + 8), v4);
LABEL_12:
    *(v3 + 49) = 1;
    return;
  }

  if (gLogDatapath == 1)
  {
    v15 = __nwlog_obj(a1, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v19 = "nw_queue_activate_source";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Cancelled, not activating source", buf, 0xCu);
    }
  }
}

uint64_t nw_parameters_get_pid(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_pid(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_pid";
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
        v12 = "nw_parameters_get_pid";
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
            v12 = "nw_parameters_get_pid";
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
        v12 = "nw_parameters_get_pid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_pid";
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

uint64_t sub_181ACAA08(uint64_t result)
{
  if (result != 2)
  {
    return sub_181AB78DC(result);
  }

  return result;
}

uint64_t nw_parameters_get_require_companion(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_require_companion(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_require_companion";
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
        v12 = "nw_parameters_get_require_companion";
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
            v12 = "nw_parameters_get_require_companion";
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
        v12 = "nw_parameters_get_require_companion";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_require_companion";
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

uint64_t nw_parameters_get_companion_preference(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_companion_preference();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_companion_preference";
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
        v12 = "nw_parameters_get_companion_preference";
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
            v12 = "nw_parameters_get_companion_preference";
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
        v12 = "nw_parameters_get_companion_preference";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_companion_preference";
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

uint64_t nw_parameters_get_account_id(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_account_id();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_account_id";
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
        v12 = "nw_parameters_get_account_id";
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
            v12 = "nw_parameters_get_account_id";
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
        v12 = "nw_parameters_get_account_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_account_id";
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

BOOL nw_parameters_get_prohibit_expensive(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_prohibit_expensive(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_expensive";
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
        v12 = "nw_parameters_get_prohibit_expensive";
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
            v12 = "nw_parameters_get_prohibit_expensive";
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
        v12 = "nw_parameters_get_prohibit_expensive";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_expensive";
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

uint64_t nw_parameters_get_use_awdl(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_awdl();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_awdl";
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
        v12 = "nw_parameters_get_use_awdl";
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
            v12 = "nw_parameters_get_use_awdl";
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
        v12 = "nw_parameters_get_use_awdl";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_awdl";
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

uint64_t nw_parameters_get_attributed_bundle_identifier(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_attributed_bundle_identifier();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_attributed_bundle_identifier";
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
        v12 = "nw_parameters_get_attributed_bundle_identifier";
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
            v12 = "nw_parameters_get_attributed_bundle_identifier";
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
        v12 = "nw_parameters_get_attributed_bundle_identifier";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_attributed_bundle_identifier";
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

uint64_t nw_parameters_get_local_address_preference(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack(a1);
    v2 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v1, 0);
    v3 = v2;
    if (v2)
    {
      local_address_preference = _nw_ip_options_get_local_address_preference(v2);
    }

    else
    {
      local_address_preference = 0;
    }

    return local_address_preference;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_get_local_address_preference";
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
        v16 = "nw_parameters_get_local_address_preference";
        v10 = "%{public}s called with null parameters";
LABEL_20:
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
            v16 = "nw_parameters_get_local_address_preference";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v12)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "nw_parameters_get_local_address_preference";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_get_local_address_preference";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

nw_protocol_stack_t nw_parameters_copy_default_protocol_stack(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_copy_default_protocol_stack(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_default_protocol_stack";
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
        v12 = "nw_parameters_copy_default_protocol_stack";
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
            v12 = "nw_parameters_copy_default_protocol_stack";
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
        v12 = "nw_parameters_copy_default_protocol_stack";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_default_protocol_stack";
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

uint64_t nw_parameters_get_traffic_class(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_traffic_class(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_traffic_class";
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
        v12 = "nw_parameters_get_traffic_class";
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
            v12 = "nw_parameters_get_traffic_class";
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
        v12 = "nw_parameters_get_traffic_class";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_traffic_class";
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

BOOL nw_parameters_get_prohibit_constrained(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_prohibit_constrained(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_constrained";
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
        v12 = "nw_parameters_get_prohibit_constrained";
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
            v12 = "nw_parameters_get_prohibit_constrained";
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
        v12 = "nw_parameters_get_prohibit_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_constrained";
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

uint64_t nw_parameters_get_use_p2p(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_p2p(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_p2p";
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
        v12 = "nw_parameters_get_use_p2p";
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
            v12 = "nw_parameters_get_use_p2p";
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
        v12 = "nw_parameters_get_use_p2p";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_p2p";
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

uint64_t sub_181ACC600(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838770);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_181D895D0(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838770);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838770);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181DE5C18(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

size_t sub_181ACC7AC(uuid_string_t out, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  *uu = a3;
  v7 = a4;
  if (!out)
  {
    __break(1u);
  }

  uuid_unparse_upper(uu, out);
  return strlen(out);
}

uint64_t sub_181ACC828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181ACC890(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[24];
  v8 = *v1;
  v7 = v1[1];
  if (!(v7 >> 62))
  {
    swift_beginAccess();
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    v23 = *(v8 + 16);
    v24 = v12;
    v25 = v13;
    v26 = v14;
    LOBYTE(v19) = v2;
    HIBYTE(v19) = v3;
    v20 = v5;
    v21 = v4;
    v22 = v6;
    v11 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v23, &v19);
    v15 = v24;
    v16 = v25;
    v17 = v26;
LABEL_8:
    sub_181F49A24(v12, v13, v14);
    sub_181F48350(v15, v16, v17);
    return v11 & 1;
  }

  if (v7 >> 62 != 1)
  {
    LOBYTE(v23) = *a1;
    HIBYTE(v23) = v3;
    v24 = v5;
    v25 = v4;
    v26 = v6;
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED411D48;
    v13 = unk_1ED411D50;
    v14 = byte_1ED411D58;
    v19 = word_1ED411D40;
    v20 = qword_1ED411D48;
    v21 = unk_1ED411D50;
    v22 = byte_1ED411D58;
    v11 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v23, &v19);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    goto LABEL_8;
  }

  v9 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  ObjectType = swift_getObjectType();
  LOBYTE(v23) = v2;
  HIBYTE(v23) = v3;
  v24 = v5;
  v25 = v4;
  v26 = v6;
  v11 = (*(v9 + 40))(&v23, ObjectType, v9);
  return v11 & 1;
}

uint64_t nw_parameters_get_no_wake_from_sleep(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_wake_from_sleep(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_wake_from_sleep";
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
        v12 = "nw_parameters_get_no_wake_from_sleep";
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
            v12 = "nw_parameters_get_no_wake_from_sleep";
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
        v12 = "nw_parameters_get_no_wake_from_sleep";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_wake_from_sleep";
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

uint64_t nw_parameters_get_use_aop2_offload(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_aop2_offload(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_aop2_offload";
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
        v12 = "nw_parameters_get_use_aop2_offload";
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
            v12 = "nw_parameters_get_use_aop2_offload";
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
        v12 = "nw_parameters_get_use_aop2_offload";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_aop2_offload";
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

uint64_t sub_181ACCF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t nw_context_get_globals_for_path(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = &__block_literal_global_291;
  if (!v1)
  {
    v12 = __nwlog_obj(v2, v3);
    *buf = 136446210;
    v26 = "nw_context_get_globals_for_path";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    v14 = __nwlog_fault(v13, &type, &v23);
    if (v14)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj(v14, v15);
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v26 = "nw_context_get_globals_for_path";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj(backtrace_string, v19);
        v20 = type;
        v21 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v26 = "nw_context_get_globals_for_path";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v20, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v21)
        {
          *buf = 136446210;
          v26 = "nw_context_get_globals_for_path";
          _os_log_impl(&dword_181A37000, v16, v20, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj(v14, v15);
        v22 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v26 = "nw_context_get_globals_for_path";
          _os_log_impl(&dword_181A37000, v16, v22, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v13)
    {
      free(v13);
    }

    v6 = 0;
    goto LABEL_8;
  }

  v4 = nw_context_copy_globals_context(v1);

  os_unfair_lock_lock((*(v4 + 4) + 44));
  v5 = *(v4 + 4);
  v6 = *(v5 + 68);
  if (v6)
  {
LABEL_7:
    os_unfair_lock_unlock((v5 + 44));

LABEL_8:
    return v6;
  }

  v7 = malloc_type_calloc(1uLL, 0x98uLL, 0xEE8327E0uLL);
  if (v7)
  {
LABEL_6:
    *(*(v4 + 4) + 68) = v7;
    *(v7 + 7) = 0u;
    *(v7 + 8) = 0u;
    *(v7 + 18) = 0;
    *(v7 + 5) = 0u;
    *(v7 + 6) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    *(v7 + 124) = -1;
    v5 = *(v4 + 4);
    v6 = *(v5 + 68);
    goto LABEL_7;
  }

  v8 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v8);
  v9 = gLogObj;
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v26 = "nw_context_get_globals_for_path";
  v27 = 2048;
  v28 = 1;
  v29 = 2048;
  v30 = 152;
  v10 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v10);
  if (!result)
  {
    free(v10);
    v7 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t nw_path_parse_necp_result(void *a1, uint64_t a2, NSObject *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (!v6)
  {
    v115 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v116 = _os_log_send_and_compose_impl();

    LOBYTE(v148) = 16;
    LOBYTE(uu) = 0;
    if (!__nwlog_fault(v116, &v148, &uu))
    {
      goto LABEL_371;
    }

    if (v148 == 17)
    {
      v117 = __nwlog_obj();
      v118 = v148;
      if (os_log_type_enabled(v117, v148))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_370;
    }

    if (uu != 1)
    {
      v117 = __nwlog_obj();
      v133 = v148;
      if (os_log_type_enabled(v117, v148))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v117, v133, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_370;
    }

    backtrace_string = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v124 = v148;
    v125 = os_log_type_enabled(v117, v148);
    if (!backtrace_string)
    {
      if (v125)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v117, v124, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_370;
    }

    if (v125)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v117, v124, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_339:

    free(backtrace_string);
    goto LABEL_371;
  }

  v146 = a2;
  if (!a2)
  {
    v119 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v116 = _os_log_send_and_compose_impl();

    LOBYTE(v148) = 16;
    LOBYTE(uu) = 0;
    if (!__nwlog_fault(v116, &v148, &uu))
    {
      goto LABEL_371;
    }

    if (v148 == 17)
    {
      v117 = __nwlog_obj();
      v120 = v148;
      if (os_log_type_enabled(v117, v148))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v117, v120, "%{public}s called with null result", buf, 0xCu);
      }

      goto LABEL_370;
    }

    if (uu != 1)
    {
      v117 = __nwlog_obj();
      v134 = v148;
      if (os_log_type_enabled(v117, v148))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v117, v134, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_370;
    }

    backtrace_string = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v126 = v148;
    v127 = os_log_type_enabled(v117, v148);
    if (!backtrace_string)
    {
      if (v127)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v117, v126, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }

      goto LABEL_370;
    }

    if (v127)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v117, v126, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_339;
  }

  if (!a3)
  {
    v121 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v116 = _os_log_send_and_compose_impl();

    LOBYTE(v148) = 16;
    LOBYTE(uu) = 0;
    if (__nwlog_fault(v116, &v148, &uu))
    {
      if (v148 == 17)
      {
        v117 = __nwlog_obj();
        v122 = v148;
        if (os_log_type_enabled(v117, v148))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          _os_log_impl(&dword_181A37000, v117, v122, "%{public}s called with null result_length", buf, 0xCu);
        }

LABEL_370:

        goto LABEL_371;
      }

      if (uu != 1)
      {
        v117 = __nwlog_obj();
        v135 = v148;
        if (os_log_type_enabled(v117, v148))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          _os_log_impl(&dword_181A37000, v117, v135, "%{public}s called with null result_length, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_370;
      }

      backtrace_string = __nw_create_backtrace_string();
      v117 = __nwlog_obj();
      v128 = v148;
      v129 = os_log_type_enabled(v117, v148);
      if (!backtrace_string)
      {
        if (v129)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          _os_log_impl(&dword_181A37000, v117, v128, "%{public}s called with null result_length, no backtrace", buf, 0xCu);
        }

        goto LABEL_370;
      }

      if (v129)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_result";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v117, v128, "%{public}s called with null result_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_339;
    }

LABEL_371:
    if (!v116)
    {
      goto LABEL_282;
    }

    v104 = v116;
    goto LABEL_281;
  }

  if (a3 <= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_parse_necp_result";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v8 = _os_log_send_and_compose_impl();

    LOBYTE(v148) = 16;
    LOBYTE(uu) = 0;
    if (__nwlog_fault(v8, &v148, &uu))
    {
      if (v148 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = v148;
        if (os_log_type_enabled(v9, v148))
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s NECP buffer too short %zu", buf, 0x16u);
        }
      }

      else if (uu == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v22 = v148;
        v23 = os_log_type_enabled(v9, v148);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_parse_necp_result";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2082;
            *&buf[24] = v21;
            _os_log_impl(&dword_181A37000, v9, v22, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v21);
          if (!v8)
          {
            goto LABEL_282;
          }

LABEL_280:
          v104 = v8;
LABEL_281:
          free(v104);
          goto LABEL_282;
        }

        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v9, v22, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v24 = v148;
        if (os_log_type_enabled(v9, v148))
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v9, v24, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v8)
    {
LABEL_282:
      v105 = 0;
      goto LABEL_309;
    }

    goto LABEL_280;
  }

  __ptr = malloc_type_malloc(0xA0uLL, 0xC0FEDF99uLL);
  if (!__ptr)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v139 = buf;
    v17 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v17);
    if (result)
    {
LABEL_379:
      __break(1u);
      return result;
    }

    free(v17);
  }

  if (a3 == 5)
  {
    v19 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    v20 = 0;
    goto LABEL_291;
  }

  v142 = 0;
  v144 = 0;
  v143 = 0;
  v19 = 0;
  v20 = 0;
  v140 = 0;
  v141 = 8;
  while (1)
  {
    v25 = *(v146 + v20);
    v26 = *(v146 + 1 + v20);
    if (v26)
    {
      if (v26 <= 0xFFFFFFF9 && a3 >= v26 + 5 && a3 - v26 - 5 >= v20)
      {
        v36 = (v146 + 5 + v20);
        goto LABEL_51;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v20;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      *&buf[32] = 1024;
      *&buf[34] = v26;
      v139 = buf;
      v29 = _os_log_send_and_compose_impl();

      LOBYTE(v148) = 16;
      LOBYTE(uu) = 0;
      if (__nwlog_fault(v29, &v148, &uu))
      {
        if (v148 == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          v31 = v148;
          if (os_log_type_enabled(v30, v148))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v20;
            *&buf[22] = 2048;
            *&buf[24] = a3;
            *&buf[32] = 1024;
            *&buf[34] = v26;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
          }
        }

        else
        {
          if (uu == 1)
          {
            v3 = v19;
            v32 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v34 = v148;
            v35 = os_log_type_enabled(v33, v148);
            if (v32)
            {
              if (v35)
              {
                *buf = 136447234;
                *&buf[4] = "nw_necp_buffer_get_tlv_value";
                *&buf[12] = 2048;
                *&buf[14] = v20;
                *&buf[22] = 2048;
                *&buf[24] = a3;
                *&buf[32] = 1024;
                *&buf[34] = v26;
                *&buf[38] = 2082;
                *&buf[40] = v32;
                _os_log_impl(&dword_181A37000, v33, v34, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
              }

              v19 = v3;
              free(v32);
              if (!v29)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v35)
              {
                *buf = 136446978;
                *&buf[4] = "nw_necp_buffer_get_tlv_value";
                *&buf[12] = 2048;
                *&buf[14] = v20;
                *&buf[22] = 2048;
                *&buf[24] = a3;
                *&buf[32] = 1024;
                *&buf[34] = v26;
                _os_log_impl(&dword_181A37000, v33, v34, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
              }

              v19 = v3;
              if (!v29)
              {
                goto LABEL_50;
              }
            }

LABEL_49:
            free(v29);
            goto LABEL_50;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          v37 = v148;
          if (os_log_type_enabled(v30, v148))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v20;
            *&buf[22] = 2048;
            *&buf[24] = a3;
            *&buf[32] = 1024;
            *&buf[34] = v26;
            _os_log_impl(&dword_181A37000, v30, v37, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (v29)
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    v36 = 0;
LABEL_51:
    v20 += v26 + 5;
    if (v20 > a3)
    {
      break;
    }

    if (v26)
    {
      v38 = v36 == 0;
    }

    else
    {
      v38 = 1;
    }

    if (!v38)
    {
      switch(v25)
      {
        case 1:
          v148 = 0uLL;
          if (v26 == 16)
          {
            goto LABEL_58;
          }

          if (v26 < 0x11)
          {
            break;
          }

          v80 = __nwlog_obj();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 1;
            *&buf[18] = 1024;
            *&buf[20] = v26;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_58:
          v148 = *v36;
          uu = 0uLL;
          _nw_path_get_client_id(v6, &uu);
          if (uuid_is_null(&uu))
          {
            _nw_path_set_client_id(v6, &v148);
          }

          else if (v148 != uu)
          {
            flow_result_from_tlv = __nwlog_obj();
            if (os_log_type_enabled(flow_result_from_tlv, OS_LOG_TYPE_INFO))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_result";
              *&buf[12] = 1042;
              *&buf[14] = 16;
              *&buf[18] = 2098;
              *&buf[20] = &v148;
              *&buf[28] = 1042;
              *&buf[30] = 16;
              *&buf[34] = 2098;
              *&buf[36] = &uu;
              _os_log_impl(&dword_181A37000, flow_result_from_tlv, OS_LOG_TYPE_INFO, "%{public}s Client ID from NECP (%{public,uuid_t}.16P) does not match path (%{public,uuid_t}.16P)", buf, 0x2Cu);
            }

LABEL_25:
          }

          break;
        case 2:
          if (v26 == 4)
          {
            goto LABEL_102;
          }

          if (v26 < 5)
          {
            v53 = 0;
          }

          else
          {
            v82 = __nwlog_obj();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 2;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_102:
            v53 = *v36;
          }

          _nw_path_set_necp_result_routing_result(v6, v53);
          break;
        case 3:
          if (v26 == 4)
          {
            goto LABEL_80;
          }

          if (v26 < 5)
          {
            v45 = 0;
          }

          else
          {
            v72 = __nwlog_obj();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 3;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_80:
            v45 = *v36;
          }

          _nw_path_set_necp_result_routing_result_parameter(v6, v45);
          break;
        case 4:
          if (v26 == 4)
          {
            goto LABEL_99;
          }

          if (v26 < 5)
          {
            v52 = 0;
          }

          else
          {
            v81 = __nwlog_obj();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 4;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_99:
            v52 = *v36;
          }

          _nw_path_set_necp_result_filter_control_unit(v6, v52);
          break;
        case 5:
          if (v26 == 4)
          {
            goto LABEL_83;
          }

          if (v26 >= 5)
          {
            v73 = __nwlog_obj();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 5;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_83:
            _nw_path_set_necp_result_routed_interface_index(v6, *v36);
          }

          break;
        case 6:
          v47 = v141;
          if (v142 < v141)
          {
            goto LABEL_94;
          }

          v48 = v141 + 8;
          if (v141 != -8)
          {
            goto LABEL_93;
          }

          v90 = __nwlog_obj();
          os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          v139 = buf;
          v91 = _os_log_send_and_compose_impl();

          result = __nwlog_should_abort(v91);
          if (result)
          {
            goto LABEL_379;
          }

          free(v91);
          v48 = 0;
LABEL_93:
          v47 = v48;
          v49 = 20 * v48;
          __ptr = reallocf(__ptr, v49);
          if (__ptr)
          {
            goto LABEL_94;
          }

          v92 = __nwlog_obj();
          os_log_type_enabled(v92, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = v49;
          v139 = buf;
          v93 = _os_log_send_and_compose_impl();

          result = __nwlog_should_abort(v93);
          if (result)
          {
            goto LABEL_379;
          }

          free(v93);
          __ptr = 0;
LABEL_94:
          v141 = v47;
          if (v26 == 20)
          {
            goto LABEL_95;
          }

          if (v26 >= 0x15)
          {
            v84 = __nwlog_obj();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 6;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 20;
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_95:
            v50 = *v36;
            v51 = &__ptr[20 * v142];
            *(v51 + 4) = v36[4];
            *v51 = v50;
            ++v142;
          }

          break;
        case 7:
          if (v26 == 4)
          {
            goto LABEL_107;
          }

          if (v26 >= 5)
          {
            v85 = __nwlog_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 7;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_107:
            v54 = *v36;
            if (*v36)
            {
              _nw_path_set_is_local(v6, 1);
            }

            if ((v54 & 2) != 0)
            {
              _nw_path_set_is_direct(v6, 1);
            }

            if ((v54 & 4) != 0)
            {
              _nw_path_set_has_ipv4(v6, 1);
            }

            if ((v54 & 8) != 0)
            {
              _nw_path_set_has_ipv6(v6, 1);
            }

            if ((v54 & 0x2000) != 0)
            {
              _nw_path_set_has_nat64_prefixes(v6, 1);
            }

            if ((v54 & 0x10000) != 0)
            {
              _nw_path_set_has_kernel_extension_filter(v6, 1);
            }

            if ((v54 & 0x20000) != 0)
            {
              _nw_path_set_has_custom_pf_rules(v6, 1);
            }

            if ((v54 & 0x40000) != 0)
            {
              _nw_path_set_has_application_level_firewall(v6, 1);
            }

            if ((v54 & 0x80000) != 0)
            {
              _nw_path_set_has_parental_controls(v6, 1);
            }

            if ((v54 & 0x20) != 0)
            {
              _nw_path_set_has_necp_satisfied(v6, 1);
            }

            if ((v54 & 0x100) != 0)
            {
              _nw_path_set_probe_connectivity(v6, 1);
            }

            if ((v54 & 0x800) != 0)
            {
              _nw_path_set_link_quality_abort(v6, 1);
            }

            if ((v54 & 0x8000) != 0)
            {
              _nw_path_set_specific_listener(v6, 1);
            }

            if ((v54 & 0x200000) != 0)
            {
              _nw_path_set_use_link_heuristics(v6, 1);
            }
          }

          break;
        case 8:
          if (v26 == 8)
          {
            goto LABEL_136;
          }

          if (v26 >= 9)
          {
            v86 = __nwlog_obj();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 8;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 8;
              _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_136:
            v55 = *v36;
            v56 = v36[1];
            necp_result_direct_interface_index = _nw_path_get_necp_result_direct_interface_index(v6);
            necp_result_delegate_interface_index = _nw_path_get_necp_result_delegate_interface_index(v6);
            if (necp_result_direct_interface_index)
            {
              if (!necp_result_delegate_interface_index)
              {
                _nw_path_set_necp_result_delegate_interface_index(v6, v56);
                _nw_path_set_necp_result_delegate_interface_generation(v6, v55);
              }
            }

            else
            {
              _nw_path_set_necp_result_direct_interface_index(v6, v56);
              _nw_path_set_necp_result_direct_interface_generation(v6, v55);
            }
          }

          break;
        case 9:
          if (v26 == 24)
          {
            goto LABEL_148;
          }

          if (v26 < 0x19)
          {
            break;
          }

          v89 = __nwlog_obj();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 9;
            *&buf[18] = 1024;
            *&buf[20] = v26;
            *&buf[24] = 1024;
            *&buf[26] = 24;
            _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_148:
          if (v144 < v140)
          {
            goto LABEL_151;
          }

          v61 = v140 + 8;
          if (v140 != -8)
          {
            goto LABEL_150;
          }

          v94 = __nwlog_obj();
          os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          v139 = buf;
          v95 = _os_log_send_and_compose_impl();

          result = __nwlog_should_abort(v95);
          if (result)
          {
            goto LABEL_379;
          }

          free(v95);
LABEL_150:
          v140 += 8;
          v62 = 24 * v61;
          v143 = reallocf(v143, 24 * v61);
          if (!v143)
          {
            a3 = __nwlog_obj();
            os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_result";
            *&buf[12] = 2048;
            *&buf[14] = 24 * v61;
            v6 = _os_log_send_and_compose_impl();

            should_abort = __nwlog_should_abort(v6);
            __break(1u);
LABEL_374:
            if (should_abort)
            {
              *buf = v146;
              *&buf[4] = v61;
              *&buf[12] = 2048;
              *&buf[14] = v20;
              *&buf[22] = 2048;
              *&buf[24] = a3;
              _os_log_impl(&dword_181A37000, v3, v62, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
            }

            goto LABEL_377;
          }

LABEL_151:
          v63 = *v36;
          v64 = &v143[24 * v144];
          *(v64 + 2) = *(v36 + 2);
          *v64 = v63;
          ++v144;
          break;
        case 10:
          if (v26 == 4)
          {
            goto LABEL_145;
          }

          if (v26 < 5)
          {
            v60 = 0;
          }

          else
          {
            v88 = __nwlog_obj();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 10;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_145:
            v60 = *v36;
          }

          _nw_path_set_effective_mtu(v6, v60);
          break;
        case 11:
          flow_result_from_tlv = nw_path_create_flow_result_from_tlv(v6, v36, v26);
          if (flow_result_from_tlv)
          {
            _nw_path_append_flow(v6, flow_result_from_tlv);
          }

          goto LABEL_25;
        case 15:
          if (v26 != 1)
          {
            v79 = __nwlog_obj();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 15;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_path_set_recommended_mss(v6, *v36);
          break;
        case 17:
          if (v26 == 4)
          {
            v46 = *v36;
LABEL_88:
            _nw_path_set_interface_time_delta(v6, v46);
            break;
          }

          if (v26 >= 5)
          {
            v75 = __nwlog_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 17;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

            v76 = *v36;
            v77 = __nwlog_obj();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 17;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

            v46 = v76;
            goto LABEL_88;
          }

          break;
        case 18:
          if (v26 == 4)
          {
            goto LABEL_71;
          }

          if (v26 >= 5)
          {
            v70 = __nwlog_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 18;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_71:
            v41 = *v36 - 1;
            if (v41 <= 5)
            {
              nw_path_set_reason(v6, dword_182BD337C[v41], off_1E6A387D0[v41], v11, v12, v13, v14, v15, v139);
            }
          }

          break;
        case 19:
          if (v26 == 4)
          {
            goto LABEL_140;
          }

          if (v26 < 5)
          {
            v59 = 0;
          }

          else
          {
            v87 = __nwlog_obj();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 19;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_140:
            v59 = *v36;
          }

          _nw_path_set_necp_result_flow_divert_aggregate_unit(v6, v59);
          break;
        case 156:
          if (v19)
          {
            nw_path_set_agent_identifier_on_endpoint(v19, 156, v26, v36);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v68 = gLogObj;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_result";
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
          }

          goto LABEL_170;
        case 158:
          if (v19)
          {
            *buf = 0;
            asprintf(buf, "%.*s", v26, v36);
            v66 = *buf;
            v19 = v19;
            _nw_endpoint_set_device_id(v19, v66);

            if (*buf)
            {
              free(*buf);
            }

            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v68 = gLogObj;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_result";
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
          }

          goto LABEL_170;
        case 159:
          if (v19)
          {
            v65 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:v26];
            nw_endpoint_append_public_key(v19, v65);
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_result";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
            }

LABEL_170:

            v19 = 0;
          }

          break;
        case 210:
          if (v26 == 4)
          {
            goto LABEL_65;
          }

          if (v26 < 5)
          {
            v39 = 0;
          }

          else
          {
            v69 = __nwlog_obj();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 210;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_65:
            v39 = *v36;
          }

          _nw_path_set_effective_traffic_class(v6, v39);
          break;
        case 211:
          if (v26 == 4)
          {
            goto LABEL_90;
          }

          if (v26 >= 5)
          {
            v78 = __nwlog_obj();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 211;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_90:
            _nw_path_set_is_traffic_mgmt_background(v6, *v36 != 0);
          }

          break;
        case 212:
          v67 = nw_path_copy_endpoint_from_tlv(212, v26, v36);

          v19 = v67;
          if (v19)
          {
            _nw_path_gateways_append(v6, v19);
          }

          goto LABEL_69;
        case 213:
          v40 = nw_path_copy_endpoint_from_tlv(213, v26, v36);

          v19 = v40;
          if (v19)
          {
            _nw_path_group_members_append(v6, v19);
          }

LABEL_69:

          break;
        case 214:
          if (v26 == 80)
          {
            goto LABEL_85;
          }

          if (v26 >= 0x51)
          {
            v74 = __nwlog_obj();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 214;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 80;
              _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_85:
            _nw_path_set_nat64_prefixes(v6, v36, 80);
          }

          break;
        case 215:
          if (v26 == 2)
          {
            goto LABEL_74;
          }

          if (v26 < 3)
          {
            v42 = 0;
            v43 = 0;
          }

          else
          {
            v71 = __nwlog_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 215;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 2;
              _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_74:
            v42 = *v36;
            v43 = *(v36 + 1);
          }

          _nw_path_set_throughput_estimates(v6, v42, v43);
          break;
        case 218:
          if (v26 != 1)
          {
            v83 = __nwlog_obj();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 218;
              *&buf[18] = 1024;
              *&buf[20] = v26;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_path_set_link_quality(v6, *v36);
          break;
        default:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          flow_result_from_tlv = gLogObj;
          if (os_log_type_enabled(flow_result_from_tlv, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_result";
            *&buf[12] = 1024;
            *&buf[14] = v25;
            _os_log_impl(&dword_181A37000, flow_result_from_tlv, OS_LOG_TYPE_ERROR, "%{public}s Received unknown client result TLV (type %d)", buf, 0x12u);
          }

          goto LABEL_25;
      }
    }

    if (v20 >= &a3[-1].isa + 3)
    {
      goto LABEL_291;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v96 = gLogObj;
  *buf = 136446978;
  *&buf[4] = "nw_path_parse_necp_result";
  *&buf[12] = 1024;
  *&buf[14] = v26;
  *&buf[18] = 2048;
  *&buf[20] = v20;
  *&buf[28] = 2048;
  *&buf[30] = a3;
  v97 = _os_log_send_and_compose_impl();

  LOBYTE(v148) = 16;
  LOBYTE(uu) = 0;
  if (!__nwlog_fault(v97, &v148, &uu))
  {
    goto LABEL_289;
  }

  if (v148 == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v98 = gLogObj;
    v99 = v148;
    if (os_log_type_enabled(v98, v148))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 1024;
      *&buf[14] = v26;
      *&buf[18] = 2048;
      *&buf[20] = v20;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v98, v99, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
    }

    goto LABEL_288;
  }

  if (uu != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v98 = gLogObj;
    v106 = v148;
    if (os_log_type_enabled(v98, v148))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 1024;
      *&buf[14] = v26;
      *&buf[18] = 2048;
      *&buf[20] = v20;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v98, v106, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
    }

    goto LABEL_288;
  }

  v100 = __nw_create_backtrace_string();
  if (!v100)
  {
    v98 = __nwlog_obj();
    v107 = v148;
    if (os_log_type_enabled(v98, v148))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 1024;
      *&buf[14] = v26;
      *&buf[18] = 2048;
      *&buf[20] = v20;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v98, v107, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
    }

LABEL_288:

LABEL_289:
    if (!v97)
    {
      goto LABEL_291;
    }

    goto LABEL_290;
  }

  v101 = v100;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v102 = gLogObj;
  v103 = v148;
  if (os_log_type_enabled(v102, v148))
  {
    *buf = 136447234;
    *&buf[4] = "nw_path_parse_necp_result";
    *&buf[12] = 1024;
    *&buf[14] = v26;
    *&buf[18] = 2048;
    *&buf[20] = v20;
    *&buf[28] = 2048;
    *&buf[30] = a3;
    *&buf[38] = 2082;
    *&buf[40] = v101;
    _os_log_impl(&dword_181A37000, v102, v103, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
  }

  free(v101);
  if (v97)
  {
LABEL_290:
    free(v97);
  }

LABEL_291:
  if (v20 == a3)
  {
    goto LABEL_292;
  }

  v130 = __nwlog_obj();
  LODWORD(v146) = 136446722;
  *buf = 136446722;
  v61 = "nw_path_parse_necp_result";
  *&buf[4] = "nw_path_parse_necp_result";
  *&buf[12] = 2048;
  *&buf[14] = v20;
  *&buf[22] = 2048;
  *&buf[24] = a3;
  v36 = _os_log_send_and_compose_impl();

  LOBYTE(v148) = 16;
  LOBYTE(uu) = 0;
  if (!__nwlog_fault(v36, &v148, &uu))
  {
    goto LABEL_377;
  }

  if (v148 == 17)
  {
    v131 = __nwlog_obj();
    v132 = v148;
    if (os_log_type_enabled(v131, v148))
    {
      *buf = 136446722;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2048;
      *&buf[14] = v20;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_impl(&dword_181A37000, v131, v132, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
    }

LABEL_344:

    goto LABEL_377;
  }

  if (uu != 1)
  {
    v131 = __nwlog_obj();
    v138 = v148;
    if (os_log_type_enabled(v131, v148))
    {
      *buf = 136446722;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2048;
      *&buf[14] = v20;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_impl(&dword_181A37000, v131, v138, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_344;
  }

  v136 = __nw_create_backtrace_string();
  v3 = __nwlog_obj();
  v62 = v148;
  should_abort = os_log_type_enabled(v3, v148);
  if (!v136)
  {
    goto LABEL_374;
  }

  if (should_abort)
  {
    *buf = 136446978;
    *&buf[4] = "nw_path_parse_necp_result";
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    *&buf[32] = 2082;
    *&buf[34] = v136;
    _os_log_impl(&dword_181A37000, v3, v62, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v136);
LABEL_377:
  if (v36)
  {
    free(v36);
  }

LABEL_292:
  necp_result_routed_interface_index = _nw_path_get_necp_result_routed_interface_index(v6);
  v109 = _nw_path_get_necp_result_direct_interface_index(v6);
  if (necp_result_routed_interface_index)
  {
    v110 = v109;
    if (v109)
    {
      if (necp_result_routed_interface_index != v109)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v111 = gLogObj;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 1024;
          *&buf[14] = necp_result_routed_interface_index;
          *&buf[18] = 1024;
          *&buf[20] = v110;
          _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_ERROR, "%{public}s Mismatch in interface results from NECP (%u != %u)", buf, 0x18u);
        }

        _nw_path_set_necp_result_routed_interface_index(v6, v110);
      }
    }
  }

  if (v142)
  {
    v112 = v142;
    v113 = __ptr;
    do
    {
      v114 = *(v113 + 4);
      *buf = *v113;
      *&buf[16] = v114;
      _nw_path_add_necp_result_netagent(v6, &buf[4], *buf);
      v113 += 20;
      --v112;
    }

    while (v112);
LABEL_303:
    free(__ptr);
  }

  else if (__ptr)
  {
    goto LABEL_303;
  }

  if (v144)
  {
    _nw_path_set_necp_result_interface_options(v6, v143, v144);
  }

  if (v143)
  {
    free(v143);
  }

  v105 = 1;
LABEL_309:

  return v105;
}

void sub_181AD033C()
{
  v1 = v0;
  v46 = *MEMORY[0x1E69E9840];
  sub_181ADB0F8();
  sub_181A56FDC();
  sub_181AD9DB8();
  sub_181FD4B3C();
  sub_181AC3118();
  if ((*(v0 + 157) & 8) != 0 || (v2 = *(v0 + 176), v33[10] = *(v0 + 160), v33[11] = v2, v3 = *(v0 + 112), v33[6] = *(v0 + 96), v33[7] = v3, v4 = *(v0 + 144), v33[8] = *(v0 + 128), v33[9] = v4, v5 = *(v0 + 48), v33[2] = *(v0 + 32), v33[3] = v5, v6 = *(v0 + 80), v33[4] = *(v0 + 64), v33[5] = v6, v7 = *(v0 + 16), v33[0] = *v0, v33[1] = v7, v8 = *(v0 + 192), v9 = *(v0 + 200), *(v45 + 10) = *(v0 + 362), v10 = *(v0 + 352), v44 = *(v0 + 336), v45[0] = v10, v11 = *(v0 + 288), v40 = *(v0 + 272), v41 = v11, v12 = *(v0 + 320), v42 = *(v0 + 304), v43 = v12, v13 = *(v0 + 224), v36 = *(v0 + 208), v37 = v13, v14 = *(v0 + 256), v38 = *(v0 + 240), v39 = v14, v34 = v8, v35 = v9, (sub_181ADF260() | 2) != 2))
  {
LABEL_19:
    *(v1 + 377) = 1;
    goto LABEL_20;
  }

  if (!v9)
  {
    goto LABEL_36;
  }

  v15 = v9[4];
  if (v9[2] >= v9[3] + v15)
  {
    v16 = v9[3] + v15;
  }

  else
  {
    v16 = v9[2];
  }

  v30 = v9;
  v31 = v15;
  v32 = v16;
  v17 = swift_retain_n();
  v18 = v9;
  while (1)
  {
    if (v15 != v16)
    {
      goto LABEL_13;
    }

    if ((sub_181AC81FC(v17) & 1) == 0)
    {
      break;
    }

    v18 = v30;
    v15 = v31;
LABEL_13:
    v19 = &v18[26 * v15++];
    v31 = v15;
    if (v19[30])
    {
      goto LABEL_18;
    }

    v17 = v19[20];
    if (v17)
    {
      v29 = v19[20];

      sub_181AC23B8(&v29, v33);
      v17 = *&v33[0];
      if (*&v33[0])
      {
        v20 = *(*&v33[0] + 80);
        v17 = sub_181AD1A40(*&v33[0]);
        if ((v20 & 3) == 1)
        {
          if ((~v20 & 0x50) == 0)
          {
            goto LABEL_18;
          }
        }

        else if ((v20 & 0x40) != 0)
        {
LABEL_18:

          goto LABEL_19;
        }
      }
    }

    v16 = v32;
  }

LABEL_36:
  *(v1 + 377) = 0;
LABEL_20:
  if (*(v1 + 288) == 4 && *(v1 + 292) == 0xFFFFFFF)
  {
    LOBYTE(v33[0]) = 0;
    v21 = nw_context_copy_implicit_context();
    bridged_flow_director = nw_path_create_bridged_flow_director(v21, v33);
    swift_unknownObjectRelease();
    if (bridged_flow_director)
    {
      if (LOBYTE(v33[0]) == 1)
      {
        if (qword_1ED4106B8 != -1)
        {
          swift_once();
        }

        v23 = sub_182AD2698();
        __swift_project_value_buffer(v23, qword_1ED411DA8);
        v24 = sub_182AD2678();
        v25 = sub_182AD38B8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          v27 = "In-process flow divert director created due to path result";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1ED411DA8);
      v24 = sub_182AD2678();
      v25 = sub_182AD38B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "Failed to create in-process flow divert director due to path result";
LABEL_32:
        _os_log_impl(&dword_181A37000, v24, v25, v27, v26, 2u);
        MEMORY[0x1865DF520](v26, -1, -1);
      }

LABEL_33:
    }
  }
}

void _nw_path_set_necp_result_routing_result(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 72) = a2;
  }
}

void _nw_path_update_is_viableTm(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = swift_beginAccess();
    a2(v4);
    swift_endAccess();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *nw_dictionary_copy_value(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_dictionary_copy_value";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_copy_value";
      v7 = "%{public}s called with null dictionary";
    }

    else if (v14 == 1)
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
          v17 = "nw_dictionary_copy_value";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_49:
        if (!v4)
        {
          return 0;
        }

LABEL_50:
        free(v4);
        return 0;
      }

      if (!v9)
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_copy_value";
      v7 = "%{public}s called with null dictionary, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_copy_value";
      v7 = "%{public}s called with null dictionary, backtrace limit exceeded";
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_dictionary_copy_value";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
    {
      goto LABEL_49;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v14 != 1)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_49;
        }

        *buf = 136446210;
        v17 = "nw_dictionary_copy_value";
        v7 = "%{public}s called with null key, backtrace limit exceeded";
        goto LABEL_48;
      }

      v10 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v11 = os_log_type_enabled(v5, type);
      if (!v10)
      {
        if (!v11)
        {
          goto LABEL_49;
        }

        *buf = 136446210;
        v17 = "nw_dictionary_copy_value";
        v7 = "%{public}s called with null key, no backtrace";
        goto LABEL_48;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "nw_dictionary_copy_value";
        v18 = 2082;
        v19 = v10;
        v12 = "%{public}s called with null key, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v5, v6, v12, buf, 0x16u);
      }

LABEL_34:
      free(v10);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_50;
    }

    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v17 = "nw_dictionary_copy_value";
    v7 = "%{public}s called with null key";
LABEL_48:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_49;
  }

  if (!*(a1 + 16))
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_dictionary_copy_value";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_copy_value";
      v7 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_48;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_copy_value";
      v7 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_48;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v13 = os_log_type_enabled(v5, type);
    if (!v10)
    {
      if (!v13)
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_copy_value";
      v7 = "%{public}s called with null dictionary->xpc_object, no backtrace";
      goto LABEL_48;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_dictionary_copy_value";
      v18 = 2082;
      v19 = v10;
      v12 = "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  pointer = xpc_dictionary_get_pointer();
  if (!pointer)
  {
    return 0;
  }

  return os_retain(pointer);
}

uint64_t nw_parameters_get_required_address_family(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack(a1);
    v2 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v1, 0);
    v3 = v2;
    if (!v2)
    {
      goto LABEL_6;
    }

    version = _nw_ip_options_get_version(v2);
    if (version == 4)
    {
      v5 = 2;
      goto LABEL_8;
    }

    if (version == 6)
    {
      v5 = 30;
    }

    else
    {
LABEL_6:
      v5 = 0;
    }

LABEL_8:

    return v5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_get_required_address_family";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v8, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_required_address_family";
        v11 = "%{public}s called with null parameters";
LABEL_23:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_parameters_get_required_address_family";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v13)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "nw_parameters_get_required_address_family";
        v11 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_23;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_required_address_family";
        v11 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

void nw_path_watch_necp_changes(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
    globals_for_path = nw_context_get_globals_for_path(v1);
    os_unfair_lock_lock((globals_for_path + 116));
    v3 = nw_path_shared_necp_fd(v1);
    pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
    if (sNWIsBetweenForkAndExec == 1 && (sNWParentAllowedDispatch & 1) != 0)
    {
      goto LABEL_33;
    }

    if ((sNWDispatchAllowedNow & 1) == 0)
    {
      if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0 && (_dispatch_is_multithreaded() & 1) != 0 || (getpid(), sandbox_check() == 1))
      {
        sNWDispatchAllowedNow = 1;
      }

      else if (!sNWDispatchAllowedNow)
      {
LABEL_33:
        os_unfair_lock_unlock((globals_for_path + 116));
        goto LABEL_34;
      }
    }

    if (v3 == -1 || *(globals_for_path + 56))
    {
      goto LABEL_33;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZL26nw_path_watch_necp_changesPU24objcproto13OS_nw_context8NSObject_block_invoke;
    v22[3] = &unk_1E6A3D868;
    v23 = v1;
    source = nw_queue_context_create_source(v23, v3, 1, 0, v22, 0);
    *(globals_for_path + 56) = source;
    if (source)
    {
      nw_queue_activate_source(source, v5);
LABEL_32:

      goto LABEL_33;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v27 = "nw_path_watch_necp_changes";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v7, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_path_watch_necp_changes";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s nw_queue_context_create_source failed", buf, 0xCu);
        }
      }

      else if (v24 == 1)
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
            v27 = "nw_path_watch_necp_changes";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v12)
        {
          *buf = 136446210;
          v27 = "nw_path_watch_necp_changes";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s nw_queue_context_create_source failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_path_watch_necp_changes";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_30:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_32;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_path_watch_necp_changes";
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
        v27 = "nw_path_watch_necp_changes";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v16, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v27 = "nw_path_watch_necp_changes";
          v28 = 2082;
          v29 = v18;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_51;
      }

      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_path_watch_necp_changes";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "nw_path_watch_necp_changes";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_51:
  if (v15)
  {
    free(v15);
  }

LABEL_34:
}

uint64_t sub_181AD1A40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *_nw_path_set_group_descriptor(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    *(v3 + 20) = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

char *_nw_path_set_advertise_descriptor(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    *(v3 + 22) = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

void _nw_path_set_custom_ethertype(char *a1, __int16 a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 68) = a2;
  }
}

id Endpoint.init(_:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v4 = 0;
  v4[2] = 1;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v5 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v8 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v1[v8] = sub_181A552E8(v7);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v10 = swift_allocObject();
  *&v1[v9] = v10;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v7;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  *(v10 + 16) = 0;
  v11 = &v1[OBJC_IVAR____TtC7Network8Endpoint_type];
  v12 = a1[1];
  *v11 = *a1;
  v11[1] = v12;
  v11[2] = a1[2];
  *(v11 + 44) = *(a1 + 44);
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_181AD1DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 == 2)
  {
  }

  if (a5 <= 1u)
  {
  }

  return result;
}

id _nw_endpoint_create_address_0(unsigned __int8 *__src)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *__src;
  if (v1 > 0x80)
  {
    return 0;
  }

  memset(v4, 0, sizeof(v4));
  memcpy(v4, __src, v1);
  sub_181AD2530(v4, &v5);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v5 == 1)
  {
    return 0;
  }

  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v3 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  return Endpoint.init(_:)(&v5);
}

uint64_t nw_endpoint_fillout_v4v6_address(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_fillout_v4v6_address";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v24 != 1)
    {
      v12 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v18)
    {
      *buf = 136446466;
      v27 = "nw_endpoint_fillout_v4v6_address";
      v28 = 2082;
      v29 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v5 = v3;
  v6 = _nw_endpoint_get_type(v5);

  if (v6 != 1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_fillout_v4v6_address";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)", buf, 0xCu);
      }

LABEL_39:

LABEL_40:
      if (v11)
      {
        free(v11);
      }

      goto LABEL_42;
    }

    if (v24 != 1)
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v20)
    {
      *buf = 136446466;
      v27 = "nw_endpoint_fillout_v4v6_address";
      v28 = 2082;
      v29 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_27:

    free(backtrace_string);
    goto LABEL_40;
  }

  address_family = _nw_endpoint_get_address_family(v5);
  if (address_family == 30)
  {
    v8 = _nw_endpoint_fillout_v6_address(v5, a2);
    goto LABEL_7;
  }

  if (address_family != 2)
  {
LABEL_42:
    v9 = 0;
    goto LABEL_43;
  }

  v8 = _nw_endpoint_fillout_v4_address(v5, a2);
LABEL_7:
  v9 = v8;
LABEL_43:

  return v9;
}

uint64_t sub_181AD2448(uint64_t a1)
{
  v3 = v1[1];
  if (v3)
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);

    sub_181E6550C(v9);
    if (v8 != 1)
    {
      goto LABEL_9;
    }

    if (v4)
    {
      v11 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v11 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!(v11 | v9))
      {
        goto LABEL_7;
      }

LABEL_9:
      type metadata accessor for EndpointCommon.EndpointCommonBacking();
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v10;
      *(v12 + 32) = v5;
      *(v12 + 40) = v4;
      *(v12 + 48) = v6;
      *(v12 + 56) = v7;
      *(v12 + 64) = v8;
      goto LABEL_10;
    }

    if (v9)
    {
      goto LABEL_9;
    }
  }

LABEL_7:

  v12 = 0;
LABEL_10:

  *v1 = a1;
  v1[1] = v12;
  return result;
}

void sub_181AD2530(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (v3 > 0x1D)
  {
    if (v3 == 30)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v24 = *(a1 + 1);
      v25 = *(a1 + 2);
      v11 = *(a1 + 6);
      v26 = bswap32(*(a1 + 1)) >> 16;
      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25 == 4294901760;
      }

      v30[0] = 1;
      if (v27)
      {
        v28 = HIDWORD(v25);
      }

      else
      {
        v28 = v24;
      }

      if (v27)
      {
        v14 = 0;
      }

      else
      {
        v14 = v25;
      }

      if (v27)
      {
        v15 = v26;
      }

      else
      {
        v15 = 0;
      }

      if (v27)
      {
        v16 = 0;
      }

      else
      {
        v16 = v26;
      }

      v18 = !v27;
      *&v13 = 0;
      *(&v13 + 1) = v28;
      v17 = 1;
      goto LABEL_31;
    }

    if (v3 == 40)
    {
      v6 = *(a1 + 2);
      v7 = *a1 | (*(a1 + 1) << 16) | (*(a1 + 1) << 32) | 0x2800;
      *v30 = 0uLL;
      *&v30[16] = v7;
      *&v30[24] = v6;
      *&v31 = 0;
      WORD4(v31) = 0;
      BYTE10(v31) = 3;
      goto LABEL_8;
    }

LABEL_9:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      v5 = bswap32(*(a1 + 1)) >> 16;
      *v30 = 0uLL;
      *&v30[16] = v4;
      *&v30[24] = 0;
      *&v31 = v5;
      WORD4(v31) = 0;
      BYTE10(v31) = 0;
LABEL_8:
      sub_181AD2448(0);
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *v30;
      v13 = *&v30[8];
      v14 = *&v30[24];
      v15 = v31;
      v16 = WORD4(v31);
      v17 = 1;
      v18 = BYTE10(v31);
      goto LABEL_31;
    }

    goto LABEL_9;
  }

  v35 = *(a1 + 98);
  v19 = *(a1 + 50);
  v20 = *(a1 + 82);
  v33 = *(a1 + 66);
  v34 = v20;
  v21 = *(a1 + 18);
  *v30 = *(a1 + 2);
  *&v30[16] = v21;
  v31 = *(a1 + 34);
  v32 = v19;
  MEMORY[0x1EEE9AC00](a1);
  v22 = sub_182AD30D8();
  sub_18217AB24(v22, v23, v30);
  v12 = *v30;
  if (*v30 == 1)
  {
    __break(1u);
    return;
  }

  v17 = BYTE4(v32);
  v11 = DWORD2(v32);
  v10 = v32;
  v9 = HIWORD(v31);
  v8 = WORD6(v31);
  v18 = BYTE10(v31);
  v16 = WORD4(v31);
  v14 = *&v30[24];
  v15 = v31;
  v13 = *&v30[8];
LABEL_31:
  v29 = v17 & 1;
  v30[0] = v29;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 42) = v18;
  *(a2 + 44) = v8;
  *(a2 + 46) = v9;
  *(a2 + 48) = v10;
  *(a2 + 52) = v29;
  *(a2 + 56) = v11;
}

uint64_t sub_181AD27C0(void *a1)
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

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 20);
  v12 = v4[42];

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      sub_181AD1DE4(v9, v8, v10, v11, 2u);
      return 1;
    }

    if (v12 == 3)
    {
      sub_181AD1DE4(v9, v8, v10, v11, 3u);
      return 40;
    }

    sub_181AD1DE4(v9, v8, v10, v11, 4u);
    return 0;
  }

  if (v12)
  {
    sub_181AD1DE4(v9, v8, v10, v11, 1u);
    return 30;
  }

  else
  {
    sub_181AD1DE4(v9, v8, v10, v11, 0);
    return 2;
  }
}

uint64_t sub_181AD2958(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v8 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_181A5513C(v6, type metadata accessor for Endpoint.EndpointType);
  }

  else
  {
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = *(v6 + 20);
    v13 = v6[42];
    if (!v13)
    {
      *a2 = 528;
      *(a2 + 2) = bswap32(v11) >> 16;
      *(a2 + 4) = v9;
      *(a2 + 8) = 0;

      sub_181AD1DE4(v9, v10, v11, v12, 0);
      return 1;
    }

    sub_181AD1DE4(v9, v10, v11, v12, v13);
  }

  return 0;
}

id nw_parameters_copy_prohibited_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_prohibited_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_required_netagent_uuids(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_required_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_required_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_required_netagent_domains(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_required_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_required_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_required_netagent_domains";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_required_netagent_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD35A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _nw_parameters_iterate_avoided_netagent_typesTm(char *a1, void *aBlock, uint64_t (*a3)(uint64_t))
{
  v5 = _Block_copy(aBlock);
  sub_18220DD88(a1, v5, a3);

  _Block_release(v5);
}

uint64_t sub_181AD3638()
{
  v1 = *(v0 + 215);
  v2 = *(v0 + 224);
  if (v2)
  {
    v3 = *(v2 + 72);
    v14 = v3;

    if ((v1 & 0x20) != 0)
    {
      if (v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    return v3;
  }

  if ((*(v0 + 215) & 0x20) == 0)
  {
    return 0;
  }

LABEL_7:
  v3 = *sub_182AD2388();
  v14 = v3;

LABEL_8:
  v4 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v6 = v5;
  result = sub_181AC49BC(0x6F696E61706D6F43, 0xE90000000000006ELL);
  v9 = *(v3 + 24);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v11 = result;
    v12 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v3 + 16) < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181E74708(isUniquelyReferenced_nonNull_native, v10);
      v3 = v14;
    }

    sub_181E748B4((v3 + 16), v3 + 40, v4, v6, v11, v12);
    sub_181E4926C(v4, v6);
    sub_181E49280(v11, v12);
    return v14;
  }

  __break(1u);
  return result;
}

id nw_parameters_copy_required_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_required_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_required_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_required_netagent_types";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_required_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD3AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_preferred_netagent_uuids(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_preferred_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD3E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_preferred_netagent_domains(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_preferred_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD41A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_181AD41DC()
{
  v1 = *(v0 + 210);
  v2 = *(v0 + 211);
  v3 = *(v0 + 28);
  if (v3)
  {
    v4 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
  }

  v77 = v4;
  if (v1 != 1)
  {
    goto LABEL_11;
  }

  v5 = v0[11];
  v58 = v0[10];
  v59 = v5;
  v60 = v0[12];
  v6 = v0[7];
  v54 = v0[6];
  v55 = v6;
  v7 = v0[9];
  v56 = v0[8];
  v57 = v7;
  v8 = v0[3];
  v50 = v0[2];
  v51 = v8;
  v9 = v0[5];
  v52 = v0[4];
  v53 = v9;
  v10 = v0[1];
  v48 = *v0;
  v49 = v10;
  v11 = *(v0 + 344);
  v73 = *(v0 + 328);
  v74 = v11;
  v12 = *(v0 + 376);
  v75 = *(v0 + 360);
  v76 = v12;
  v13 = *(v0 + 280);
  v69 = *(v0 + 264);
  v70 = v13;
  v14 = *(v0 + 312);
  v71 = *(v0 + 296);
  v72 = v14;
  v15 = *(v0 + 248);
  v67 = *(v0 + 232);
  v61 = *(v0 + 104);
  v62 = 1;
  v63 = v2;
  v64 = *(v0 + 212);
  v65 = *(v0 + 55);
  v66 = v3;
  v68 = v15;
  v16 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v18 = v17;
  v19 = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v21 = v20;
  v47[0] = v16;
  v47[1] = v18;
  v47[2] = v19;
  v47[3] = v20;
  v22 = sub_181F44B74(v47);
  sub_181E4926C(v16, v18);
  sub_181E49280(v19, v21);
  if (v22)
  {
    if (v22 != 2)
    {
      goto LABEL_11;
    }

    if (qword_1EA836648 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v23 = sub_182AD2698();
      __swift_project_value_buffer(v23, qword_1EA843148);
      v24 = sub_182AD2678();
      v25 = sub_182AD38B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_181A37000, v24, v25, "Parameters companionPreference is prefer but companion is in avoided list", v26, 2u);
        MEMORY[0x1865DF520](v26, -1, -1);
      }

LABEL_11:
      if (v2 != 1)
      {
        break;
      }

LABEL_12:
      if (!v4)
      {
        v4 = *sub_182AD2388();
        v77 = v4;
      }

      v27 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
      v29 = v28;
      v30 = sub_181AC49BC(0xD00000000000001FLL, 0x8000000182BD4FA0);
      v32 = *(v4 + 24);
      v33 = v32 + 1;
      if (!__OFADD__(v32, 1))
      {
        v34 = v30;
        v35 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (*(v4 + 16) < v33 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181E74708(isUniquelyReferenced_nonNull_native, v33);
          v4 = v77;
        }

        sub_181E748B4((v4 + 16), v4 + 40, v27, v29, v34, v35);
        sub_181E4926C(v27, v29);
        sub_181E49280(v34, v35);
        return v77;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }

    return v4;
  }

  if (!v4)
  {
    v4 = *sub_182AD2388();
    v77 = v4;
  }

  v38 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v40 = v39;
  result = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v42 = *(v4 + 24);
  v43 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    v44 = result;
    v45 = v41;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v4 + 16) < v43 || (v46 & 1) == 0)
    {
      sub_181E74708(v46, v43);
      v4 = v77;
    }

    sub_181E748B4((v4 + 16), v4 + 40, v38, v40, v44, v45);
    sub_181E4926C(v38, v40);
    sub_181E49280(v44, v45);
    v4 = v77;
    if (v2 == 1)
    {
      goto LABEL_12;
    }

    return v4;
  }

  __break(1u);
  return result;
}

id nw_parameters_copy_preferred_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_preferred_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD4934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_avoided_netagent_uuids(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_avoided_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_avoided_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD4CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_avoided_netagent_domains(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_avoided_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_avoided_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD5014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_181AD5048()
{
  v1 = *(v0 + 210);
  v2 = *(v0 + 28);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  v64 = v3;
  if (v1 != 2)
  {
    return v3;
  }

  v4 = v0[11];
  v47 = v0[10];
  v48 = v4;
  v49 = v0[12];
  v5 = v0[7];
  v43 = v0[6];
  v44 = v5;
  v6 = v0[9];
  v45 = v0[8];
  v46 = v6;
  v7 = v0[3];
  v39 = v0[2];
  v40 = v7;
  v8 = v0[5];
  v41 = v0[4];
  v42 = v8;
  v9 = v0[1];
  v37 = *v0;
  v38 = v9;
  v10 = *(v0 + 344);
  v60 = *(v0 + 328);
  v61 = v10;
  v11 = *(v0 + 376);
  v62 = *(v0 + 360);
  v63 = v11;
  v12 = *(v0 + 280);
  v56 = *(v0 + 264);
  v57 = v12;
  v13 = *(v0 + 312);
  v58 = *(v0 + 296);
  v59 = v13;
  v14 = *(v0 + 248);
  v54 = *(v0 + 232);
  v50 = *(v0 + 104);
  v51 = 2;
  *v52 = *(v0 + 211);
  *&v52[5] = *(v0 + 27);
  v53 = v2;
  v55 = v14;
  v15 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v17 = v16;
  v18 = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v20 = v19;
  v36[0] = v15;
  v36[1] = v17;
  v36[2] = v18;
  v36[3] = v19;
  v21 = sub_181F44B74(v36);
  sub_181E4926C(v15, v17);
  sub_181E49280(v18, v20);
  if (v21)
  {
    if (v21 == 1)
    {
      if (qword_1EA836648 != -1)
      {
        swift_once();
      }

      v22 = sub_182AD2698();
      __swift_project_value_buffer(v22, qword_1EA843148);
      v23 = sub_182AD2678();
      v24 = sub_182AD38B8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_181A37000, v23, v24, "Parameters companionPreference is avoid but companion is in preferred list", v25, 2u);
        MEMORY[0x1865DF520](v25, -1, -1);
      }
    }

    return v3;
  }

  if (!v3)
  {
    v3 = *sub_182AD2388();
    v64 = v3;
  }

  v26 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v28 = v27;
  result = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v31 = *(v3 + 24);
  v32 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    v33 = result;
    v34 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v3 + 16) < v32 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181E74708(isUniquelyReferenced_nonNull_native, v32);
      v3 = v64;
    }

    sub_181E748B4((v3 + 16), v3 + 40, v26, v28, v33, v34);
    sub_181E4926C(v26, v28);
    sub_181E49280(v33, v34);
    return v64;
  }

  __break(1u);
  return result;
}

id nw_parameters_copy_avoided_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_avoided_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_avoided_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181AD56A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_parameters_copy_channel_demux_options(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_channel_demux_options(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_channel_demux_options";
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
        v12 = "nw_parameters_copy_channel_demux_options";
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
            v12 = "nw_parameters_copy_channel_demux_options";
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
        v12 = "nw_parameters_copy_channel_demux_options";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_channel_demux_options";
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

_BYTE *sub_181AD5960(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 256);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 248);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage + 16] & 1) == 0)
      {
        v12 = *v7;
LABEL_21:
        os_unfair_lock_unlock((*&v2[v5] + 16));

        goto LABEL_22;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = sub_18224FE14();
        v15 = v14;

        v3 = v15;
        if ((v15 & 0x2000000000000000) == 0)
        {
LABEL_6:
          if ((v4 & 0x1000000000000000) != 0)
          {
            v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v9 = v4 & 0xFFFFFFFFFFFFLL;
            v10 = (v4 & 0xFFFFFFFFFFFFLL) + 1;
            if (!__OFADD__(v4 & 0xFFFFFFFFFFFFLL, 1))
            {
LABEL_8:
              v11 = swift_slowAlloc();
              v12 = v11;
              if (!v9)
              {
LABEL_11:
                v13 = &v12[v9];
LABEL_12:
                *v13 = 0;
                *v7 = v12;
                *(v7 + 1) = v10;
LABEL_20:
                v7[16] = 0;
                goto LABEL_21;
              }

              if (v10 >= v9)
              {
                memcpy(v11, v8, v9);
                goto LABEL_11;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v19 = sub_182AD3CF8();
            if (!v19)
            {
LABEL_28:
              v10 = 1;
              v13 = swift_slowAlloc();
              v12 = v13;
              goto LABEL_12;
            }

            v8 = v19;
            v9 = v20;
            v10 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v16 = HIBYTE(v3) & 0xF;
      __src[0] = v4;
      __src[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v17 = swift_slowAlloc();
      v12 = v17;
      if (v16)
      {
        memcpy(v17, __src, HIBYTE(v3) & 0xF);
      }

      v12[v16] = 0;
      *v7 = v12;
      *(v7 + 1) = v16 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 256);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

uint64_t nw_parameters_get_uid(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_uid(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_uid";
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
        v12 = "nw_parameters_get_uid";
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
            v12 = "nw_parameters_get_uid";
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
        v12 = "nw_parameters_get_uid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_uid";
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

uint64_t _nw_parameters_get_uid(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xD8);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 216);
  }

  return v3;
}

uint64_t nw_parameters_get_persona(char *a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_persona(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_parameters_get_persona";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_get_persona";
        v7 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
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
            v13 = "nw_parameters_get_persona";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_parameters_get_persona";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_get_persona";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}
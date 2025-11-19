BOOL nw_context_get_logging_disabled(_BOOL8 result)
{
  if (result)
  {
    return *(result + 132) == 4;
  }

  return result;
}

void nw_context_queue_block(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3)
  {
    if (v4)
    {
      v7 = nw_context_copy_globals_context(v3);

      if ((*(v7 + 152) & 8) != 0)
      {
        if ((*(v7 + 152) & 0x10) != 0)
        {
          v3 = v7;
          v6[2](v6);
          goto LABEL_12;
        }

        v10 = *(*(v7 + 4) + 108);
        v11 = _Block_copy(v6);
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          _nw_array_append(v10, v11);
        }

        goto LABEL_11;
      }

      v26 = __nwlog_obj(v8, v9);
      *buf = 136446210;
      v50 = "nw_context_queue_block";
      v27 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v47 = 0;
      v28 = __nwlog_fault(v27, &type, &v47);
      if (v28)
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v30 = __nwlog_obj(v28, v29);
          v31 = type;
          if (os_log_type_enabled(v30, type))
          {
            *buf = 136446210;
            v50 = "nw_context_queue_block";
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null context->is_inline", buf, 0xCu);
          }
        }

        else if (v47 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v30 = __nwlog_obj(backtrace_string, v41);
          v42 = type;
          v43 = os_log_type_enabled(v30, type);
          if (backtrace_string)
          {
            if (v43)
            {
              *buf = 136446466;
              v50 = "nw_context_queue_block";
              v51 = 2082;
              v52 = backtrace_string;
              _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null context->is_inline, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_67;
          }

          if (v43)
          {
            *buf = 136446210;
            v50 = "nw_context_queue_block";
            _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null context->is_inline, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v30 = __nwlog_obj(v28, v29);
          v46 = type;
          if (os_log_type_enabled(v30, type))
          {
            *buf = 136446210;
            v50 = "nw_context_queue_block";
            _os_log_impl(&dword_181A37000, v30, v46, "%{public}s called with null context->is_inline, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_67:
      if (v27)
      {
        free(v27);
      }

LABEL_11:
      v3 = v7;
      goto LABEL_12;
    }

    v20 = __nwlog_obj(0, v5);
    *buf = 136446210;
    v50 = "nw_context_queue_block";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    v22 = __nwlog_fault(v21, &type, &v47);
    if (!v22)
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj(v22, v23);
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v50 = "nw_context_queue_block";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null block", buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v24 = __nwlog_obj(v36, v37);
      v38 = type;
      v39 = os_log_type_enabled(v24, type);
      if (v36)
      {
        if (v39)
        {
          *buf = 136446466;
          v50 = "nw_context_queue_block";
          v51 = 2082;
          v52 = v36;
          _os_log_impl(&dword_181A37000, v24, v38, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        goto LABEL_62;
      }

      if (v39)
      {
        *buf = 136446210;
        v50 = "nw_context_queue_block";
        _os_log_impl(&dword_181A37000, v24, v38, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj(v22, v23);
      v45 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v50 = "nw_context_queue_block";
        _os_log_impl(&dword_181A37000, v24, v45, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_62:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_12;
  }

  v14 = __nwlog_obj(v4, v5);
  *buf = 136446210;
  v50 = "nw_context_queue_block";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  v16 = __nwlog_fault(v15, &type, &v47);
  if (v16)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj(v16, v17);
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v50 = "nw_context_queue_block";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v18 = __nwlog_obj(v32, v33);
      v34 = type;
      v35 = os_log_type_enabled(v18, type);
      if (v32)
      {
        if (v35)
        {
          *buf = 136446466;
          v50 = "nw_context_queue_block";
          v51 = 2082;
          v52 = v32;
          _os_log_impl(&dword_181A37000, v18, v34, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        goto LABEL_56;
      }

      if (v35)
      {
        *buf = 136446210;
        v50 = "nw_context_queue_block";
        _os_log_impl(&dword_181A37000, v18, v34, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj(v16, v17);
      v44 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v50 = "nw_context_queue_block";
        _os_log_impl(&dword_181A37000, v18, v44, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_56:
  if (v15)
  {
    free(v15);
  }

  v3 = 0;
LABEL_12:
}

void nw_context_queue_source_block(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3)
  {
    v7 = nw_context_copy_globals_context(v3);

    if ((*(v7 + 152) & 8) != 0)
    {
      v10 = *(*(v7 + 4) + 124);
      v11 = _Block_copy(v6);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        _nw_array_append(v10, v11);
      }

      goto LABEL_9;
    }

    v20 = __nwlog_obj(v8, v9);
    *buf = 136446210;
    v39 = "nw_context_queue_source_block";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    v22 = __nwlog_fault(v21, &type, &v36);
    if (!v22)
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj(v22, v23);
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v39 = "nw_context_queue_source_block";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null context->is_inline", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj(backtrace_string, v31);
      v32 = type;
      v33 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          v39 = "nw_context_queue_source_block";
          v40 = 2082;
          v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v32, "%{public}s called with null context->is_inline, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_44;
      }

      if (v33)
      {
        *buf = 136446210;
        v39 = "nw_context_queue_source_block";
        _os_log_impl(&dword_181A37000, v24, v32, "%{public}s called with null context->is_inline, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj(v22, v23);
      v35 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v39 = "nw_context_queue_source_block";
        _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null context->is_inline, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_44:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_9;
  }

  v14 = __nwlog_obj(v4, v5);
  *buf = 136446210;
  v39 = "nw_context_queue_source_block";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  v16 = __nwlog_fault(v15, &type, &v36);
  if (v16)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj(v16, v17);
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v39 = "nw_context_queue_source_block";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v18 = __nwlog_obj(v26, v27);
      v28 = type;
      v29 = os_log_type_enabled(v18, type);
      if (v26)
      {
        if (v29)
        {
          *buf = 136446466;
          v39 = "nw_context_queue_source_block";
          v40 = 2082;
          v41 = v26;
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_39;
      }

      if (v29)
      {
        *buf = 136446210;
        v39 = "nw_context_queue_source_block";
        _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj(v16, v17);
      v34 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v39 = "nw_context_queue_source_block";
        _os_log_impl(&dword_181A37000, v18, v34, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_39:
  if (v15)
  {
    free(v15);
  }

LABEL_9:
}

void nw_context_dequeue_source_block(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3)
  {
    v7 = nw_context_copy_globals_context(v3);

    if ((*(v7 + 152) & 8) != 0)
    {
      v10 = *(*(v7 + 4) + 124);
      v11 = _Block_copy(v6);
      nw_array_remove_object(v10, v11);

      goto LABEL_4;
    }

    v18 = __nwlog_obj(v8, v9);
    *buf = 136446210;
    v37 = "nw_context_dequeue_source_block";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    v20 = __nwlog_fault(v19, &type, &v34);
    if (!v20)
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj(v20, v21);
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v37 = "nw_context_dequeue_source_block";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null context->is_inline", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj(backtrace_string, v29);
      v30 = type;
      v31 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v37 = "nw_context_dequeue_source_block";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null context->is_inline, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (v31)
      {
        *buf = 136446210;
        v37 = "nw_context_dequeue_source_block";
        _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null context->is_inline, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj(v20, v21);
      v33 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v37 = "nw_context_dequeue_source_block";
        _os_log_impl(&dword_181A37000, v22, v33, "%{public}s called with null context->is_inline, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_4;
  }

  v12 = __nwlog_obj(v4, v5);
  *buf = 136446210;
  v37 = "nw_context_dequeue_source_block";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  v14 = __nwlog_fault(v13, &type, &v34);
  if (v14)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj(v14, v15);
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v37 = "nw_context_dequeue_source_block";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v16 = __nwlog_obj(v24, v25);
      v26 = type;
      v27 = os_log_type_enabled(v16, type);
      if (v24)
      {
        if (v27)
        {
          *buf = 136446466;
          v37 = "nw_context_dequeue_source_block";
          v38 = 2082;
          v39 = v24;
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        goto LABEL_34;
      }

      if (v27)
      {
        *buf = 136446210;
        v37 = "nw_context_dequeue_source_block";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj(v14, v15);
      v32 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v37 = "nw_context_dequeue_source_block";
        _os_log_impl(&dword_181A37000, v16, v32, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_34:
  if (v13)
  {
    free(v13);
  }

LABEL_4:
}

BOOL nw_context_run_queued_blocks_inline(void *a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_context_run_queued_blocks_inline";
    v32 = _os_log_send_and_compose_impl();

    LOBYTE(v68) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v32, &v68, &type))
    {
      if (v68 == 17)
      {
        v33 = __nwlog_obj();
        v34 = v68;
        if (os_log_type_enabled(v33, v68))
        {
          *buf = 136446210;
          v71 = "nw_context_run_queued_blocks_inline";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v51 = v68;
        v52 = os_log_type_enabled(v33, v68);
        if (backtrace_string)
        {
          if (v52)
          {
            *buf = 136446466;
            v71 = "nw_context_run_queued_blocks_inline";
            v72 = 2082;
            v73 = backtrace_string;
            _os_log_impl(&dword_181A37000, v33, v51, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_70;
        }

        if (v52)
        {
          *buf = 136446210;
          v71 = "nw_context_run_queued_blocks_inline";
          _os_log_impl(&dword_181A37000, v33, v51, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v56 = v68;
        if (os_log_type_enabled(v33, v68))
        {
          *buf = 136446210;
          v71 = "nw_context_run_queued_blocks_inline";
          _os_log_impl(&dword_181A37000, v33, v56, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v32)
    {
      free(v32);
    }

    return 0;
  }

  v2 = v1;
  v3 = nw_context_copy_globals_context(v1);

  if ((*(v3 + 152) & 8) == 0)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_context_run_queued_blocks_inline";
    v36 = _os_log_send_and_compose_impl();

    LOBYTE(v68) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v36, &v68, &type))
    {
      if (v68 == 17)
      {
        v37 = __nwlog_obj();
        v38 = v68;
        if (os_log_type_enabled(v37, v68))
        {
          *buf = 136446210;
          v71 = "nw_context_run_queued_blocks_inline";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null context->is_inline", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v53 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v54 = v68;
        v55 = os_log_type_enabled(v37, v68);
        if (v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v71 = "nw_context_run_queued_blocks_inline";
            v72 = 2082;
            v73 = v53;
            _os_log_impl(&dword_181A37000, v37, v54, "%{public}s called with null context->is_inline, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          goto LABEL_75;
        }

        if (v55)
        {
          *buf = 136446210;
          v71 = "nw_context_run_queued_blocks_inline";
          _os_log_impl(&dword_181A37000, v37, v54, "%{public}s called with null context->is_inline, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v57 = v68;
        if (os_log_type_enabled(v37, v68))
        {
          *buf = 136446210;
          v71 = "nw_context_run_queued_blocks_inline";
          _os_log_impl(&dword_181A37000, v37, v57, "%{public}s called with null context->is_inline, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_75:
    if (v36)
    {
      free(v36);
    }

    return 0;
  }

  v68 = 0;
  pthread_threadid_np(0, &v68);
  if (*(v3 + 32) != 4)
  {
    goto LABEL_4;
  }

  v39 = 0;
  atomic_compare_exchange_strong(v3 + 15, &v39, v68);
  if (!v39)
  {
    goto LABEL_4;
  }

  v40 = __nwlog_obj();
  *buf = 136446722;
  v71 = "nw_context_run_queued_blocks_inline";
  v72 = 2048;
  v73 = v68;
  v74 = 2048;
  v75 = v39;
  v41 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (__nwlog_fault(v41, &type, &v67))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v42, type))
      {
        *buf = 136446722;
        v71 = "nw_context_run_queued_blocks_inline";
        v72 = 2048;
        v73 = v68;
        v74 = 2048;
        v75 = v39;
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 0x20u);
      }
    }

    else if (v67 == 1)
    {
      v58 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v59 = type;
      v60 = os_log_type_enabled(v42, type);
      if (v58)
      {
        if (v60)
        {
          *buf = 136446978;
          v71 = "nw_context_run_queued_blocks_inline";
          v72 = 2048;
          v73 = v68;
          v74 = 2048;
          v75 = v39;
          v76 = 2082;
          v77 = v58;
          _os_log_impl(&dword_181A37000, v42, v59, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v58);
        goto LABEL_98;
      }

      if (v60)
      {
        *buf = 136446722;
        v71 = "nw_context_run_queued_blocks_inline";
        v72 = 2048;
        v73 = v68;
        v74 = 2048;
        v75 = v39;
        _os_log_impl(&dword_181A37000, v42, v59, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v42 = __nwlog_obj();
      v64 = type;
      if (os_log_type_enabled(v42, type))
      {
        *buf = 136446722;
        v71 = "nw_context_run_queued_blocks_inline";
        v72 = 2048;
        v73 = v68;
        v74 = 2048;
        v75 = v39;
        _os_log_impl(&dword_181A37000, v42, v64, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

LABEL_98:
  if (v41)
  {
    free(v41);
  }

LABEL_4:
  while (1)
  {
    v4 = *(v3 + 4);
    v5 = *(v4 + 108);
    if (!v5)
    {
      break;
    }

    count = _nw_array_get_count(v5);
    v4 = *(v3 + 4);
    if (!count)
    {
      break;
    }

    v7 = *(v4 + 108);
    v8 = *(v3 + 4);
    v9 = *(v8 + 116);
    if (v9)
    {
      objc_storeStrong((v8 + 108), v9);
      v10 = 0;
      v11 = 116;
    }

    else
    {
      v10 = _nw_array_create();
      v11 = 108;
    }

    v12 = *(v3 + 4);
    v13 = *(v12 + v11);
    *(v12 + v11) = v10;

    if (v7)
    {
      _nw_array_apply(v7, &__block_literal_global_1688);
    }

    nw_array_remove_all_objects(v7);
    v14 = *(v3 + 4);
    v15 = *(v14 + 116);
    *(v14 + 116) = v7;
  }

  v16 = *(v4 + 124);
  v17 = v16;
  v18 = *(*(v3 + 4) + 132);
  if (v18)
  {
    nw_array_assign(v18, v17);
    objc_storeStrong((*(v3 + 4) + 124), *(*(v3 + 4) + 132));
    v19 = *(*(v3 + 4) + 132);
    *(*(v3 + 4) + 132) = 0;

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!v17)
    {
      v28 = _nw_array_create();
      v29 = *(v3 + 4);
      v30 = *(v29 + 124);
      *(v29 + 124) = v28;

      goto LABEL_18;
    }

    v20 = _nw_array_copy(v17);
    v21 = *(v3 + 4);
    v22 = *(v21 + 124);
    *(v21 + 124) = v20;
  }

  _nw_array_apply(v17, &__block_literal_global_15);
LABEL_18:
  nw_array_remove_all_objects(v17);
  objc_storeStrong((*(v3 + 4) + 132), v16);
  if ((*(v3 + 152) & 8) == 0)
  {
    goto LABEL_19;
  }

  v44 = v68;
  v45 = v68;
  atomic_compare_exchange_strong(v3 + 15, &v45, 0);
  if (v45 == v44)
  {
    goto LABEL_19;
  }

  v46 = __nwlog_obj();
  *buf = 136446722;
  v71 = "nw_context_run_queued_blocks_inline";
  v72 = 2048;
  v73 = v68;
  v74 = 2048;
  v66 = v45;
  v75 = v45;
  v47 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (__nwlog_fault(v47, &type, &v67))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446722;
        v71 = "nw_context_run_queued_blocks_inline";
        v72 = 2048;
        v73 = v68;
        v74 = 2048;
        v75 = v66;
        _os_log_impl(&dword_181A37000, v48, v49, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, 0x20u);
      }
    }

    else if (v67 == 1)
    {
      v61 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v48, type);
      if (v61)
      {
        if (v63)
        {
          *buf = 136446978;
          v71 = "nw_context_run_queued_blocks_inline";
          v72 = 2048;
          v73 = v68;
          v74 = 2048;
          v75 = v66;
          v76 = 2082;
          v77 = v61;
          _os_log_impl(&dword_181A37000, v48, v62, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v61);
        goto LABEL_103;
      }

      if (v63)
      {
        *buf = 136446722;
        v71 = "nw_context_run_queued_blocks_inline";
        v72 = 2048;
        v73 = v68;
        v74 = 2048;
        v75 = v66;
        _os_log_impl(&dword_181A37000, v48, v62, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v65 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446722;
        v71 = "nw_context_run_queued_blocks_inline";
        v72 = 2048;
        v73 = v68;
        v74 = 2048;
        v75 = v66;
        _os_log_impl(&dword_181A37000, v48, v65, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

LABEL_103:
  if (v47)
  {
    free(v47);
  }

LABEL_19:
  v23 = *(v3 + 4);
  v24 = *(v23 + 108);
  if (!v24)
  {
    goto LABEL_23;
  }

  if (!_nw_array_get_count(v24))
  {
    v23 = *(v3 + 4);
LABEL_23:
    v26 = *(v23 + 124);
    if (v26)
    {
      v25 = _nw_array_get_count(v26) != 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_26;
  }

  v25 = 1;
LABEL_26:

  return v25;
}

uint64_t __nw_context_run_queued_blocks_inline_block_invoke_2(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2]();

  return 1;
}

uint64_t __nw_context_run_queued_blocks_inline_block_invoke(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2]();

  return 1;
}

void __nw_context_set_privacy_level_internal_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 88));
  *(*(a1 + 32) + 132) = *(a1 + 40);
  *(*(a1 + 32) + 153) = *(*(a1 + 32) + 153) & 0xFE | *(a1 + 44);
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    os_unfair_lock_lock(v3 + 22);
    *(*(*(a1 + 32) + 40) + 132) = *(a1 + 40);
    *(*(*(a1 + 32) + 40) + 153) = *(*(*(a1 + 32) + 40) + 153) & 0xFE | *(a1 + 44);
    os_unfair_lock_unlock((*(*(a1 + 32) + 40) + 88));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 88));
}

void nw_context_set_idle_handler(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if ((v5[19] & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __nw_context_set_idle_handler_block_invoke;
      v22[3] = &unk_1E6A39AE8;
      v23 = v5;
      v24 = v6;
      v25 = v7;
      nw_queue_context_async(v23, v22);
    }

    else
    {
      objc_storeStrong(v5 + 9, a2);
      v8 = _Block_copy(v7);
      v9 = v5[10];
      v5[10] = v8;

      v10 = v5[5];
      if (v10)
      {
        objc_storeStrong(v10 + 9, a2);
        v11 = _Block_copy(v7);
        v12 = v5[5];
        v13 = v12[10];
        v12[10] = v11;
      }
    }

    goto LABEL_7;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_context_set_idle_handler";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v15, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v29 = "nw_context_set_idle_handler";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          v29 = "nw_context_set_idle_handler";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_context_set_idle_handler";
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
        v29 = "nw_context_set_idle_handler";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v15)
  {
    free(v15);
  }

LABEL_7:
}

void __nw_context_set_idle_handler_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 88));
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v2 = _Block_copy(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  if (v6)
  {
    os_unfair_lock_lock(v6 + 22);
    objc_storeStrong((*(*(a1 + 32) + 40) + 72), *(a1 + 40));
    v7 = _Block_copy(*(a1 + 48));
    v8 = *(*(a1 + 32) + 40);
    v9 = *(v8 + 80);
    *(v8 + 80) = v7;

    os_unfair_lock_unlock((*(*(a1 + 32) + 40) + 88));
    v5 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v5 + 88));
}

void nw_context_require_encrypted_name_resolution(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_context_require_encrypted_name_resolution";
    v11 = _os_log_send_and_compose_impl();

    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, &v23, &v22))
    {
      if (v23 == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = v23;
        if (os_log_type_enabled(v12, v23))
        {
          *buf = 136446210;
          v25 = "nw_context_require_encrypted_name_resolution";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = v23;
        v16 = os_log_type_enabled(v12, v23);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v25 = "nw_context_require_encrypted_name_resolution";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v16)
        {
          *buf = 136446210;
          v25 = "nw_context_require_encrypted_name_resolution";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = v23;
        if (os_log_type_enabled(v12, v23))
        {
          *buf = 136446210;
          v25 = "nw_context_require_encrypted_name_resolution";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_30:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_13;
  }

  v7 = *(v5 + 152);
  if ((v7 & 0x48) == 0x40)
  {
    if (!dispatch_workloop_is_current())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __nw_context_require_encrypted_name_resolution_block_invoke;
      v18[3] = &unk_1E6A2BAA8;
      v19 = v5;
      v21 = a2;
      v20 = v6;
      nw_queue_context_async(v19, v18);

      goto LABEL_13;
    }

    v7 = *(v5 + 152);
  }

  if (a2)
  {
    v8 = 0x80;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 152) = v8 & 0x80 | v7 & 0x7F;
  objc_storeStrong(v5 + 6, a3);
  if ((*(v5 + 152) & 4) != 0)
  {
    nw_context_update_default_required_encrypted_name_resolution(a2, v6);
  }

  v9 = *(v5 + 5);
  if (v9)
  {
    *(v9 + 152) = *(v9 + 152) & 0x7F | v8;
    objc_storeStrong((*(v5 + 5) + 48), a3);
  }

LABEL_13:
}

void nw_context_update_default_required_encrypted_name_resolution(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "";
    if (!v2)
    {
      v4 = "out";
    }

    v12 = 136446466;
    v13 = "nw_context_update_default_required_encrypted_name_resolution";
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s Requiring default encrypted resolution with%s fallback config", &v12, 0x16u);
  }

  if (v2)
  {
    v5 = nw_resolver_config_copy_plist_data_ref(v2);
    v6 = v5;
    if (v5)
    {
      CFDataGetBytePtr(v5);
      CFDataGetLength(v6);
      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
LABEL_10:
  v8 = DNSServiceSetResolverDefaults();
  if (v8)
  {
    v9 = v8;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      string_for_dns_service_error = nwlog_get_string_for_dns_service_error(v9);
      v12 = 136446466;
      v13 = "nw_context_update_default_required_encrypted_name_resolution";
      v14 = 2082;
      v15 = string_for_dns_service_error;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s DNSServiceSetResolverDefaults failed: %{public}s", &v12, 0x16u);
    }
  }

  if ((v7 & 1) == 0)
  {
    CFRelease(v6);
  }
}

void __nw_context_require_encrypted_name_resolution_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 88));
  *(*(a1 + 32) + 152) = *(*(a1 + 32) + 152) & 0x7F | (*(a1 + 48) << 7);
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  if ((*(v2 + 152) & 4) != 0)
  {
    nw_context_update_default_required_encrypted_name_resolution(*(a1 + 48), *(a1 + 40));
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 40);
  if (v3)
  {
    os_unfair_lock_lock(v3 + 22);
    *(*(*(a1 + 32) + 40) + 152) = *(*(*(a1 + 32) + 40) + 152) & 0x7F | (*(a1 + 48) << 7);
    objc_storeStrong((*(*(a1 + 32) + 40) + 48), *(a1 + 40));
    os_unfair_lock_unlock((*(*(a1 + 32) + 40) + 88));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 88));
}

id nw_context_copy_fallback_resolver_config(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_context_copy_fallback_resolver_config";
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
          v19 = "nw_context_copy_fallback_resolver_config";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
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
            v19 = "nw_context_copy_fallback_resolver_config";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "nw_context_copy_fallback_resolver_config";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_context_copy_fallback_resolver_config";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_30:
    if (v9)
    {
      free(v9);
    }

    v5 = 0;
    goto LABEL_13;
  }

  v3 = v1[152];
  if ((v3 & 0x48) != 0x40)
  {
    goto LABEL_5;
  }

  if (dispatch_workloop_is_current())
  {
    v3 = v2[152];
LABEL_5:
    if (v3 < 0)
    {
      v5 = *(v2 + 6);
    }

    else
    {
      v4 = nw_context_copy_globals_context(v2);
      v5 = *(v4 + 6);
    }

    goto LABEL_13;
  }

  os_unfair_lock_lock(v2 + 22);
  v5 = *(v2 + 6);
  if (!v5)
  {
    if (v2[152] < 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = nw_context_copy_globals_context(v2);
      v5 = *(v6 + 6);
    }
  }

  os_unfair_lock_unlock(v2 + 22);
LABEL_13:

  return v5;
}

void nw_context_add_proxy(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_context_add_proxy";
    v15 = _os_log_send_and_compose_impl();

    v32 = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v15, &v32, &v31))
    {
      goto LABEL_47;
    }

    if (v32 == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = v32;
      if (os_log_type_enabled(v16, v32))
      {
        *buf = 136446210;
        v34 = "nw_context_add_proxy";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v21 = v32;
      v22 = os_log_type_enabled(v16, v32);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v34 = "nw_context_add_proxy";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_47:
        if (!v15)
        {
          goto LABEL_13;
        }

LABEL_48:
        free(v15);
        goto LABEL_13;
      }

      if (v22)
      {
        *buf = 136446210;
        v34 = "nw_context_add_proxy";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v26 = v32;
      if (os_log_type_enabled(v16, v32))
      {
        *buf = 136446210;
        v34 = "nw_context_add_proxy";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v4)
  {
    if ((v3[19] & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __nw_context_add_proxy_block_invoke;
      v28[3] = &unk_1E6A3D760;
      v29 = v3;
      v30 = v5;
      nw_queue_context_async(v29, v28);
    }

    else
    {
      v6 = v3[7];
      if (v6 || (v7 = _nw_array_create(), v8 = v3[7], v3[7] = v7, v8, (v6 = v3[7]) != 0))
      {
        _nw_array_append(v6, v5);
      }

      v9 = v3[5];
      if (v9)
      {
        v10 = *(v9 + 56);
        if (v10 || (v11 = _nw_array_create(), v12 = v3[5], v13 = *(v12 + 56), *(v12 + 56) = v11, v13, (v10 = *(v3[5] + 56)) != 0))
        {
          _nw_array_append(v10, v5);
        }
      }
    }

    goto LABEL_13;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_context_add_proxy";
  v15 = _os_log_send_and_compose_impl();

  v32 = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v15, &v32, &v31))
  {
    goto LABEL_47;
  }

  if (v32 == OS_LOG_TYPE_FAULT)
  {
    v16 = __nwlog_obj();
    v19 = v32;
    if (os_log_type_enabled(v16, v32))
    {
      *buf = 136446210;
      v34 = "nw_context_add_proxy";
      _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null proxy_config", buf, 0xCu);
    }

    goto LABEL_46;
  }

  if (v31 != 1)
  {
    v16 = __nwlog_obj();
    v27 = v32;
    if (os_log_type_enabled(v16, v32))
    {
      *buf = 136446210;
      v34 = "nw_context_add_proxy";
      _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null proxy_config, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_46;
  }

  v23 = __nw_create_backtrace_string();
  v16 = __nwlog_obj();
  v24 = v32;
  v25 = os_log_type_enabled(v16, v32);
  if (!v23)
  {
    if (v25)
    {
      *buf = 136446210;
      v34 = "nw_context_add_proxy";
      _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null proxy_config, no backtrace", buf, 0xCu);
    }

    goto LABEL_46;
  }

  if (v25)
  {
    *buf = 136446466;
    v34 = "nw_context_add_proxy";
    v35 = 2082;
    v36 = v23;
    _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null proxy_config, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v15)
  {
    goto LABEL_48;
  }

LABEL_13:
}

void __nw_context_add_proxy_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (!v3)
  {
    v4 = _nw_array_create();
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v2 = *(a1 + 32);
    v3 = *(v2 + 56);
  }

  v7 = *(a1 + 40);
  if (v3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    _nw_array_append(v3, v7);
    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 40);
  if (v9)
  {
    os_unfair_lock_lock(v9 + 22);
    v10 = *(a1 + 32);
    v11 = *(*(v10 + 40) + 56);
    if (!v11)
    {
      v12 = _nw_array_create();
      v13 = *(*(a1 + 32) + 40);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;

      v10 = *(a1 + 32);
      v11 = *(*(v10 + 40) + 56);
    }

    v15 = *(a1 + 40);
    if (v11)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      _nw_array_append(v11, v15);
      v10 = *(a1 + 32);
    }

    os_unfair_lock_unlock((*(v10 + 40) + 88));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 88));
}

void nw_context_clear_proxies(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[19] & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __nw_context_clear_proxies_block_invoke;
      v14[3] = &unk_1E6A3D868;
      v15 = v2;
      nw_queue_context_async(v15, v14);
    }

    else
    {
      v3 = v2[7];
      v2[7] = 0;

      v4 = v2[5];
      if (v4)
      {
        v5 = *(v4 + 56);
        *(v4 + 56) = 0;
      }
    }

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_context_clear_proxies";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v7, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_context_clear_proxies";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          v19 = "nw_context_clear_proxies";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_context_clear_proxies";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_context_clear_proxies";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v7)
  {
    free(v7);
  }

LABEL_7:
}

void __nw_context_clear_proxies_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (v5)
  {
    os_unfair_lock_lock(v5 + 22);
    v6 = *(*(a1 + 32) + 40);
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;

    os_unfair_lock_unlock((*(*(a1 + 32) + 40) + 88));
    v4 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v4 + 88));
}

void nw_context_enumerate_proxy_configs(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_context_enumerate_proxy_configs";
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
        v27 = "nw_context_enumerate_proxy_configs";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
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
          v27 = "nw_context_enumerate_proxy_configs";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
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
        v27 = "nw_context_enumerate_proxy_configs";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_context_enumerate_proxy_configs";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = nw_context_copy_proxy_configs(v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_context_enumerate_proxy_configs_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v5;
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
  v27 = "nw_context_enumerate_proxy_configs";
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
      v27 = "nw_context_enumerate_proxy_configs";
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
      v27 = "nw_context_enumerate_proxy_configs";
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
      v27 = "nw_context_enumerate_proxy_configs";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_context_enumerate_proxy_configs";
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

void nw_context_set_isolate_protocol_stack(void *a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_context_set_isolate_protocol_stack";
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
          v19 = "nw_context_set_isolate_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
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
            v19 = "nw_context_set_isolate_protocol_stack";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "nw_context_set_isolate_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_context_set_isolate_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_6;
  }

  v5 = v3[152];
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    v4[152] = v5 & 0xFE | a2;
LABEL_6:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v19 = "nw_context_set_isolate_protocol_stack";
  v7 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v7))
  {
    free(v7);
    v5 = v4[152];
    goto LABEL_5;
  }

  __break(1u);
}

void nw_context_set_scheduling_mode(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_context_set_scheduling_mode";
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
          v18 = "nw_context_set_scheduling_mode";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null context", buf, 0xCu);
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
            v18 = "nw_context_set_scheduling_mode";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_context_set_scheduling_mode";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_context_set_scheduling_mode";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_6;
  }

  if ((v3[38] & 0x40) == 0)
  {
LABEL_5:
    v4[32] = a2;
LABEL_6:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v18 = "nw_context_set_scheduling_mode";
  v6 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v6))
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
}

void nw_context_set_protocol_cache_limits(void *a1, int a2, int a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_context_set_protocol_cache_limits";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v12, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_protocol_cache_limits";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v19 == 1)
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
            v22 = "nw_context_set_protocol_cache_limits";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_context_set_protocol_cache_limits";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_protocol_cache_limits";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_6;
  }

  if ((v7[38] & 0x40) == 0)
  {
LABEL_5:
    v8[23] = a2;
    v8[24] = a3;
    v8[25] = a4;
LABEL_6:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v22 = "nw_context_set_protocol_cache_limits";
  v10 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v10))
  {
    free(v10);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t nw_context_get_scheduling_mode(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[32];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_context_get_scheduling_mode";
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
        v15 = "nw_context_get_scheduling_mode";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
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
          v15 = "nw_context_get_scheduling_mode";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_context_get_scheduling_mode";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_context_get_scheduling_mode";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_context_get_isolate_protocol_stack(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[152] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_context_get_isolate_protocol_stack";
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
        v15 = "nw_context_get_isolate_protocol_stack";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
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
          v15 = "nw_context_get_isolate_protocol_stack";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_context_get_isolate_protocol_stack";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_context_get_isolate_protocol_stack";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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

void nw_context_set_tracker_lookup_callback(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = _Block_copy(v4);
    v7 = v3[17];
    v3[17] = v6;

    if (v3[5])
    {
      v8 = _Block_copy(v5);
      v9 = v3[5];
      v10 = *(v9 + 136);
      *(v9 + 136) = v8;
    }

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_context_set_tracker_lookup_callback";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v12, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_context_set_tracker_lookup_callback";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          v22 = "nw_context_set_tracker_lookup_callback";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_context_set_tracker_lookup_callback";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_context_set_tracker_lookup_callback";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v12)
  {
    free(v12);
  }

LABEL_4:
}

uint64_t nw_context_get_cache_count(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    if ((v1[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v1[1]);
    }

    v3 = nw_context_copy_cache_context(v2);

    v4 = *(v3[3] + 68);
    return v4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_get_cache_count";
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
        v17 = "nw_context_get_cache_count";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_get_cache_count";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_get_cache_count";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_get_cache_count";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_context_set_association_dormant_delay(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = v3[5];
    if (v4)
    {
      *(v4 + 104) = a2;
      goto LABEL_4;
    }

    v5 = v3;
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_context_set_association_dormant_delay";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_association_dormant_delay";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context->isolated_context", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_association_dormant_delay";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null context->isolated_context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_context_set_association_dormant_delay";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context->isolated_context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_context_set_association_dormant_delay";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context->isolated_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v5 = 0;
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_context_set_association_dormant_delay";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_association_dormant_delay";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_association_dormant_delay";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v22 = "nw_context_set_association_dormant_delay";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v14)
      {
        *buf = 136446466;
        v22 = "nw_context_set_association_dormant_delay";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  v3 = v5;
LABEL_4:
}

uint64_t nw_context_get_context_purge_delay(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[14];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_context_get_context_purge_delay";
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
        v15 = "nw_context_get_context_purge_delay";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
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
          v15 = "nw_context_get_context_purge_delay";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_context_get_context_purge_delay";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_context_get_context_purge_delay";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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

void nw_context_set_context_purge_delay(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = v3[5];
    if (v4)
    {
      *(v4 + 112) = a2;
      goto LABEL_4;
    }

    v5 = v3;
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_context_set_context_purge_delay";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_context_purge_delay";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context->isolated_context", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_context_purge_delay";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null context->isolated_context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_context_set_context_purge_delay";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context->isolated_context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_context_set_context_purge_delay";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context->isolated_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v5 = 0;
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_context_set_context_purge_delay";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_context_purge_delay";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_context_set_context_purge_delay";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v22 = "nw_context_set_context_purge_delay";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v14)
      {
        *buf = 136446466;
        v22 = "nw_context_set_context_purge_delay";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  v3 = v5;
LABEL_4:
}

void *nw_context_1024k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 140);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_2, dword_1EA83C3F8, word_1EA83C3FC);
      *(*(v3 + 4) + 140) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_1024k_buffer_manager";
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
        v17 = "nw_context_1024k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_1024k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_1024k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_1024k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

void *nw_context_512k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 148);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_3, dword_1EA83C3B0, word_1EA83C3B4);
      *(*(v3 + 4) + 148) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_512k_buffer_manager";
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
        v17 = "nw_context_512k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_512k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_512k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_512k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

void *nw_context_128k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 156);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_4, dword_1EA83C368, word_1EA83C36C);
      *(*(v3 + 4) + 156) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_128k_buffer_manager";
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
        v17 = "nw_context_128k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_128k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_128k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_128k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

void *nw_context_64k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 164);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_5, dword_1EA83C320, word_1EA83C324);
      *(*(v3 + 4) + 164) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_64k_buffer_manager";
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
        v17 = "nw_context_64k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_64k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_64k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_64k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

void nw_context_set_input_byte_cap(void *a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_context_set_input_byte_cap";
    v12 = _os_log_send_and_compose_impl();

    v36 = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v12, &v36, &v35))
    {
      goto LABEL_55;
    }

    if (v36 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = v36;
      if (os_log_type_enabled(v13, v36))
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null requested_context", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = v36;
      v21 = os_log_type_enabled(v13, v36);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v38 = "nw_context_set_input_byte_cap";
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null requested_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v12)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v12);
        goto LABEL_5;
      }

      if (v21)
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null requested_context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v27 = v36;
      if (os_log_type_enabled(v13, v36))
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v27, "%{public}s called with null requested_context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v8)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_context_set_input_byte_cap";
    v12 = _os_log_send_and_compose_impl();

    v36 = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v12, &v36, &v35))
    {
      goto LABEL_55;
    }

    if (v36 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = v36;
      if (os_log_type_enabled(v13, v36))
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null queue", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v35 != 1)
    {
      v13 = __nwlog_obj();
      v28 = v36;
      if (os_log_type_enabled(v13, v36))
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v23 = v36;
    v24 = os_log_type_enabled(v13, v36);
    if (!v22)
    {
      if (v24)
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null queue, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v38 = "nw_context_set_input_byte_cap";
      v39 = 2082;
      v40 = v22;
      _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v9)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_context_set_input_byte_cap";
    v12 = _os_log_send_and_compose_impl();

    v36 = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v12, &v36, &v35))
    {
      goto LABEL_55;
    }

    if (v36 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = v36;
      if (os_log_type_enabled(v13, v36))
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null cap_exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v35 != 1)
    {
      v13 = __nwlog_obj();
      v29 = v36;
      if (os_log_type_enabled(v13, v36))
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null cap_exceeded, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v25 = v36;
    v26 = os_log_type_enabled(v13, v36);
    if (!v22)
    {
      if (v26)
      {
        *buf = 136446210;
        v38 = "nw_context_set_input_byte_cap";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null cap_exceeded, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26)
    {
      *buf = 136446466;
      v38 = "nw_context_set_input_byte_cap";
      v39 = 2082;
      v40 = v22;
      _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null cap_exceeded, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v22);
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __nw_context_set_input_byte_cap_block_invoke;
  v30[3] = &unk_1E6A35F70;
  v31 = v7;
  v34 = a2;
  v32 = v8;
  v33 = v10;
  nw_queue_context_async_if_needed(v31, v30);

LABEL_5:
}

void __nw_context_set_input_byte_cap_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = nw_context_copy_globals_context(*(a1 + 32));
  v3 = *(v2 + 4);
  if (*(v3 + 76))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(v2 + 4) + 76);
      v6 = *(a1 + 56);
      v10 = 136446722;
      v11 = "nw_context_set_input_byte_cap_block_invoke";
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s Context already has input byte cap of %llu bytes, ignoring request to cap at %llu bytes", &v10, 0x20u);
    }
  }

  else
  {
    g_some_context_has_cap = 1;
    *(v3 + 76) = *(a1 + 56);
    objc_storeStrong((v3 + 92), *(a1 + 40));
    v7 = _Block_copy(*(a1 + 48));
    v8 = *(v2 + 4);
    v9 = *(v8 + 100);
    *(v8 + 100) = v7;
  }
}

uint64_t nw_context_get_channel_flow_count(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    nw_context_assert_queue(v3);
    v4 = *(*(v3 + 4) + 84);

    return v4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_get_channel_flow_count";
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
        v17 = "nw_context_get_channel_flow_count";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_get_channel_flow_count";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_get_channel_flow_count";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_get_channel_flow_count";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void sub_18232F524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18232F958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_18232FF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_182333018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2299(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18233762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18233A69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_ethernet_channel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__2559(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void nw_ethernet_channel_cancel(nw_ethernet_channel_t ethernet_channel)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = ethernet_channel;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(&v1[1]);
    if (*(v2 + 112) == 1)
    {
      *(v2 + 114) = 1;
    }

    else if ((*(v2 + 113) & 1) == 0)
    {
      *(v2 + 113) = 1;
      [(NWConcrete_nw_ethernet_channel *)v2 updateClientState:0 error:?];
      [(NWConcrete_nw_ethernet_channel *)v2 close];
    }

    os_unfair_lock_unlock((v2 + 8));
    goto LABEL_7;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_ethernet_channel_cancel";
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
        v14 = "nw_ethernet_channel_cancel";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null ethernet_channel", buf, 0xCu);
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
          v14 = "nw_ethernet_channel_cancel";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_ethernet_channel_cancel";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_ethernet_channel_cancel";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v4)
  {
    free(v4);
  }

LABEL_7:
}

nw_ethernet_channel_t nw_ethernet_channel_create(uint16_t ether_type, nw_interface_t interface)
{
  v3 = interface;
  v4 = [[NWConcrete_nw_ethernet_channel alloc] initWithEtherType:v3 interface:0 parameters:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

nw_ethernet_channel_t nw_ethernet_channel_create_with_parameters(uint16_t ether_type, nw_interface_t interface, nw_parameters_t parameters)
{
  v5 = interface;
  v6 = parameters;
  v7 = [[NWConcrete_nw_ethernet_channel alloc] initWithEtherType:v5 interface:v6 parameters:?];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

void nw_ethernet_channel_set_state_changed_handler(nw_ethernet_channel_t ethernet_channel, nw_ethernet_channel_state_changed_handler_t handler)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ethernet_channel;
  v4 = handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_ethernet_channel_set_state_changed_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
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
        v25 = "nw_ethernet_channel_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null ethernet_channel", buf, 0xCu);
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
          v25 = "nw_ethernet_channel_set_state_changed_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
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
        v25 = "nw_ethernet_channel_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_ethernet_channel_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    os_unfair_lock_lock(&v3[1]);
    if ((BYTE1(v3[14].isa) & 1) == 0)
    {
      v6 = _Block_copy(v5);
      isa = v3[6].isa;
      v3[6].isa = v6;
    }

    os_unfair_lock_unlock(&v3[1]);
    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_ethernet_channel_set_state_changed_handler";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
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
      v25 = "nw_ethernet_channel_set_state_changed_handler";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_ethernet_channel_set_state_changed_handler";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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
      v25 = "nw_ethernet_channel_set_state_changed_handler";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_ethernet_channel_set_state_changed_handler";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_ethernet_channel_set_queue(nw_ethernet_channel_t ethernet_channel, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = ethernet_channel;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_ethernet_channel_set_queue";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_ethernet_channel_set_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null ethernet_channel", buf, 0xCu);
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
          v23 = "nw_ethernet_channel_set_queue";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v7)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v7);
        goto LABEL_6;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_ethernet_channel_set_queue";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_ethernet_channel_set_queue";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    os_unfair_lock_lock(&v3[1]);
    if ((BYTE1(v3[14].isa) & 1) == 0)
    {
      objc_storeStrong(&v3[5].isa, queue);
    }

    os_unfair_lock_unlock(&v3[1]);
    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_ethernet_channel_set_queue";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_ethernet_channel_set_queue";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null queue", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_ethernet_channel_set_queue";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
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
      v23 = "nw_ethernet_channel_set_queue";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_ethernet_channel_set_queue";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint32_t nw_ethernet_channel_get_maximum_payload_size(nw_ethernet_channel_t ethernet_channel)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = ethernet_channel;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(&v1[1]);
    if ((BYTE1(v2[14].isa) & 1) != 0 || (isa = v2[2].isa) == 0)
    {
      mtu = 0;
    }

    else
    {
      mtu = _nw_interface_get_mtu(isa);
    }

    os_unfair_lock_unlock(&v2[1]);
    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_ethernet_channel_get_maximum_payload_size";
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
        v17 = "nw_ethernet_channel_get_maximum_payload_size";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null ethernet_channel", buf, 0xCu);
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
          v17 = "nw_ethernet_channel_get_maximum_payload_size";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_ethernet_channel_get_maximum_payload_size";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_ethernet_channel_get_maximum_payload_size";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v7)
  {
    free(v7);
  }

  mtu = 0;
LABEL_7:

  return mtu;
}

void nw_ethernet_channel_start(nw_ethernet_channel_t ethernet_channel)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ethernet_channel;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(&v1[1]);
    if ((BYTE1(v2[14].isa) & 1) == 0)
    {
      isa = v2[9].isa;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __nw_ethernet_channel_start_block_invoke;
      v17[3] = &unk_1E6A3CD80;
      v4 = v2;
      v18 = v4;
      nw_path_evaluator_set_update_handler(isa, 0, v17);
      v5 = v4[8];
      if (!v5)
      {
        if (nw_context_copy_implicit_context::onceToken[0] != -1)
        {
          dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
        }

        v5 = nw_context_copy_implicit_context::implicit_context;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __nw_ethernet_channel_start_block_invoke_8;
      v15[3] = &unk_1E6A3D868;
      v6 = v4;
      v16 = v6;
      nw_queue_context_async(v5, v15);
      [(NWConcrete_nw_ethernet_channel *)v6 updateClientState:0 error:?];
      os_unfair_lock_unlock(&v2[1]);
    }

    goto LABEL_8;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_ethernet_channel_start";
  v8 = _os_log_send_and_compose_impl();

  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &v20, &v19))
  {
    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_ethernet_channel_start";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null ethernet_channel", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v20;
      v13 = os_log_type_enabled(v9, v20);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_ethernet_channel_start";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_ethernet_channel_start";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_ethernet_channel_start";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v8)
  {
    free(v8);
  }

LABEL_8:
}

void __nw_ethernet_channel_start_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = v6 + 115;
    LODWORD(v6) = *(v6 + 168);
    v14 = 136447490;
    v15 = "nw_ethernet_channel_start_block_invoke";
    v16 = 2080;
    v17 = v7;
    v18 = 1042;
    *v19 = 16;
    *&v19[4] = 2098;
    *&v19[6] = v8;
    v20 = 1024;
    v21 = v6;
    v22 = 2114;
    v23 = v3;
    v9 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Handling new path %{public}@";
    v10 = v5;
    v11 = 54;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 32);
    v14 = 136446722;
    v15 = "nw_ethernet_channel_start_block_invoke";
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    *v19 = v3;
    v9 = "%{public}s [%{public}@] Handling new path %{public}@";
    v10 = v5;
    v11 = 32;
  }

  _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v9, &v14, v11);
LABEL_8:

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v13 = *(a1 + 32);
  if ((*(v13 + 113) & 1) == 0)
  {
    nw_ethernet_channel_handle_path_update_locked(v13, v3);
    v13 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v13 + 8));
}

void __nw_ethernet_channel_start_block_invoke_8(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if ((*(v2 + 113) & 1) == 0)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      v4 = v3;
      os_unfair_lock_lock(v3 + 24);
      v5 = v4[6];
      os_unfair_lock_unlock(v3 + 24);
    }

    else
    {
      v5 = 0;
    }

    nw_ethernet_channel_handle_path_update_locked(v2, v5);

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 8));
}

void nw_ethernet_channel_handle_path_update_locked(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_path_get_status(v4) == nw_path_status_satisfied)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = ___ZL45nw_ethernet_channel_handle_path_update_lockedP30NWConcrete_nw_ethernet_channelPU21objcproto10OS_nw_path8NSObject_block_invoke;
    v34[3] = &unk_1E6A2E140;
    v5 = v3;
    v35 = v5;
    nw_path_enumerate_interface_options(v4, v34);
    v6 = v5[8];
    if (!v6)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v6 = nw_context_copy_implicit_context::implicit_context;
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZL45nw_ethernet_channel_handle_path_update_lockedP30NWConcrete_nw_ethernet_channelPU21objcproto10OS_nw_path8NSObject_block_invoke_142;
    v32[3] = &unk_1E6A3D868;
    v7 = v5;
    v33 = v7;
    nw_queue_context_async(v6, v32);
    v8 = _nw_path_copy_flows(v4);
    v9 = v7[19];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        v12 = v7[3];
        v13 = *(v7 + 42);
        if (v8)
        {
          count = _nw_array_get_count(v8);
        }

        else
        {
          count = 0;
        }

        *buf = 136447490;
        v37 = "nw_ethernet_channel_handle_path_update_locked";
        v38 = 2080;
        v39 = v12;
        v40 = 1042;
        v41 = 16;
        v42 = 2098;
        v43 = v7 + 115;
        v44 = 1024;
        v45 = v13;
        v46 = 1024;
        v47 = count;
        v26 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: got %d flows from path";
        v27 = v10;
        v28 = 50;
LABEL_32:
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
      }
    }

    else if (v11)
    {
      if (v8)
      {
        v25 = _nw_array_get_count(v8);
      }

      else
      {
        v25 = 0;
      }

      *buf = 136446722;
      v37 = "nw_ethernet_channel_handle_path_update_locked";
      v38 = 2114;
      v39 = v7;
      v40 = 1024;
      v41 = v25;
      v26 = "%{public}s [%{public}@] Ethernet Channel handle update: got %d flows from path";
      v27 = v10;
      v28 = 28;
      goto LABEL_32;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL45nw_ethernet_channel_handle_path_update_lockedP30NWConcrete_nw_ethernet_channelPU21objcproto10OS_nw_path8NSObject_block_invoke_143;
    aBlock[3] = &unk_1E6A3CCB8;
    v29 = v7;
    v31 = v29;
    if (v8)
    {
      _nw_array_apply(v8, aBlock);
      v29 = v31;
    }

    v24 = v35;
    goto LABEL_36;
  }

  if (v3 && v3[19])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v16 = v3[3];
    v17 = *(v3 + 42);
    *buf = 136447234;
    v37 = "nw_ethernet_channel_handle_path_update_locked";
    v38 = 2080;
    v39 = v16;
    v40 = 1042;
    v41 = 16;
    v42 = 2098;
    v43 = v3 + 115;
    v44 = 1024;
    v45 = v17;
    v18 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel - path not satisfied, closing flow";
    v19 = v15;
    v20 = 44;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    *buf = 136446466;
    v37 = "nw_ethernet_channel_handle_path_update_locked";
    v38 = 2114;
    v39 = v3;
    v18 = "%{public}s [%{public}@] Ethernet Channel - path not satisfied, closing flow";
    v19 = v15;
    v20 = 22;
  }

  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
LABEL_17:

  v21 = v3[10];
  if (v21)
  {
    nw_path_flow_registration_close(v21);
    v22 = v3[10];
    v3[10] = 0;
  }

  if (v3[11])
  {
    [(NWConcrete_nw_ethernet_channel *)v3 closeChannel:?];
  }

  v23 = v3[2];
  if (!v23)
  {
    v24 = 0;
    v3[2] = 0;
    goto LABEL_36;
  }

  if (!_nw_interface_get_index(v23))
  {
    v24 = v3[2];
    v3[2] = 0;
LABEL_36:
  }
}

void ___ZL45nw_ethernet_channel_handle_path_update_lockedP30NWConcrete_nw_ethernet_channelPU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, void *a2, const unsigned __int8 *a3, void *a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = *(a1 + 32);
  v13 = *(v10 + 16);
  v11 = (v10 + 16);
  v12 = v13;
  if (!v13)
  {
    objc_storeStrong(v11, a2);
    v15 = *(a1 + 32);
    if (v15 && *(v15 + 152))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = *(v17 + 24);
        v19 = *(v17 + 168);
        if (v8)
        {
          name = _nw_interface_get_name(v8);
          index = _nw_interface_get_index(v8);
        }

        else
        {
          name = 0;
          index = 0;
        }

        *buf = 136447746;
        v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
        v110 = 2080;
        v111 = v18;
        v112 = 1042;
        *v113 = 16;
        *&v113[4] = 2098;
        *&v113[6] = v17 + 115;
        v114 = 1024;
        *v115 = v19;
        *&v115[4] = 2080;
        *&v115[6] = name;
        *&v115[14] = 1024;
        *&v115[16] = index;
        v41 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: updating interface to %s (idx %u)";
        v42 = v16;
        v43 = 60;
LABEL_33:
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, v41, buf, v43);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 32);
        if (v8)
        {
          v32 = _nw_interface_get_name(v8);
          v33 = _nw_interface_get_index(v8);
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        *buf = 136446978;
        v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
        v110 = 2114;
        v111 = v31;
        v112 = 2080;
        *v113 = v32;
        *&v113[8] = 1024;
        *&v113[10] = v33;
        v41 = "%{public}s [%{public}@] Ethernet Channel handle update: updating interface to %s (idx %u)";
        v42 = v16;
        v43 = 38;
        goto LABEL_33;
      }
    }

    goto LABEL_35;
  }

  v14 = _nw_interface_get_index(v12);
  if (!v8)
  {
    if (!v14)
    {
      goto LABEL_35;
    }

LABEL_11:
    v22 = *(a1 + 32);
    if (v22 && *(v22 + 152))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = *(v24 + 168);
        v26 = *(v24 + 16);
        v27 = *(v24 + 24);
        if (v26)
        {
          v28 = _nw_interface_get_name(v26);
          v29 = *(*(a1 + 32) + 16);
          if (v29)
          {
            v30 = _nw_interface_get_index(v29);
LABEL_56:
            if (v8)
            {
              v62 = _nw_interface_get_name(v8);
              v63 = _nw_interface_get_index(v8);
            }

            else
            {
              v62 = 0;
              v63 = 0;
            }

            *buf = 136448258;
            v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
            v110 = 2080;
            v111 = v27;
            v112 = 1042;
            *v113 = 16;
            *&v113[4] = 2098;
            *&v113[6] = v24 + 115;
            v114 = 1024;
            *v115 = v25;
            *&v115[4] = 2080;
            *&v115[6] = v28;
            *&v115[14] = 1024;
            *&v115[16] = v30;
            v116 = 2080;
            *v117 = v62;
            *&v117[8] = 1024;
            *&v117[10] = v63;
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: mismatched interface %s (idx %u) != %s (idx %u)", buf, 0x4Cu);
            goto LABEL_60;
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = 0;
        goto LABEL_56;
      }

LABEL_60:

      goto LABEL_120;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v34 = *(a1 + 32);
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = _nw_interface_get_name(v35);
      v37 = *(*(a1 + 32) + 16);
      if (v37)
      {
        v38 = _nw_interface_get_index(v37);
        if (v8)
        {
LABEL_24:
          v39 = _nw_interface_get_name(v8);
          v40 = _nw_interface_get_index(v8);
LABEL_29:
          *buf = 136447490;
          v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
          v110 = 2114;
          v111 = v34;
          v112 = 2080;
          *v113 = v36;
          *&v113[8] = 1024;
          *&v113[10] = v38;
          v114 = 2080;
          *v115 = v39;
          *&v115[8] = 1024;
          *&v115[10] = v40;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] Ethernet Channel handle update: mismatched interface %s (idx %u) != %s (idx %u)", buf, 0x36u);
          goto LABEL_60;
        }
      }

      else
      {
        v38 = 0;
        if (v8)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v36 = 0;
      v38 = 0;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    v39 = 0;
    v40 = 0;
    goto LABEL_29;
  }

  if (v14 != _nw_interface_get_index(v8))
  {
    goto LABEL_11;
  }

LABEL_35:
  is_null = uuid_is_null(a3);
  v45 = *(a1 + 32);
  if (is_null)
  {
    if (v45 && *(v45 + 152))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 32);
        v47 = *(v46 + 24);
        v48 = v46 + 115;
        LODWORD(v46) = *(v46 + 168);
        *buf = 136447234;
        v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
        v110 = 2080;
        v111 = v47;
        v112 = 1042;
        *v113 = 16;
        *&v113[4] = 2098;
        *&v113[6] = v48;
        v114 = 1024;
        *v115 = v46;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: no nexus agent", buf, 0x2Cu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v49 = *(a1 + 32);
        *buf = 136446466;
        v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
        v110 = 2114;
        v111 = v49;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] Ethernet Channel handle update: no nexus agent", buf, 0x16u);
      }
    }

    goto LABEL_60;
  }

  if (v45 && *(v45 + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_66;
    }

    v51 = *(a1 + 32);
    v52 = *(v51 + 24);
    v53 = *(v51 + 168);
    if (v8)
    {
      v54 = _nw_interface_get_name(v8);
      v55 = _nw_interface_get_index(v8);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    *buf = 136448258;
    v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
    v110 = 2080;
    v111 = v52;
    v112 = 1042;
    *v113 = 16;
    *&v113[4] = 2098;
    *&v113[6] = v51 + 115;
    v114 = 1024;
    *v115 = v53;
    *&v115[4] = 2080;
    *&v115[6] = v54;
    *&v115[14] = 1024;
    *&v115[16] = v55;
    v116 = 1042;
    *v117 = 16;
    *&v117[4] = 2098;
    *&v117[6] = a3;
    v59 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: for %s (%u) nexus agent %{public, uuid_t}.16P";
    v60 = v50;
    v61 = 76;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_66;
    }

    v56 = *(a1 + 32);
    if (v8)
    {
      v57 = _nw_interface_get_name(v8);
      v58 = _nw_interface_get_index(v8);
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    *buf = 136447490;
    v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
    v110 = 2114;
    v111 = v56;
    v112 = 2080;
    *v113 = v57;
    *&v113[8] = 1024;
    *&v113[10] = v58;
    v114 = 1042;
    *v115 = 16;
    *&v115[4] = 2098;
    *&v115[6] = a3;
    v59 = "%{public}s [%{public}@] Ethernet Channel handle update: for %s (%u) nexus agent %{public, uuid_t}.16P";
    v60 = v50;
    v61 = 54;
  }

  _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, v59, buf, v61);
LABEL_66:

  v64 = *(a1 + 32);
  v65 = *(v64 + 80);
  if (!v65)
  {
    v107 = *a3;
LABEL_72:
    if (*(v64 + 152))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v69 = gLogObj;
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_89;
      }

      v70 = *(a1 + 32);
      v71 = *(v70 + 24);
      v72 = *(v70 + 168);
      if (v8)
      {
        v73 = _nw_interface_get_name(v8);
      }

      else
      {
        v73 = 0;
      }

      *buf = 136448002;
      v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v110 = 2080;
      v111 = v71;
      v112 = 1042;
      *v113 = 16;
      *&v113[4] = 2098;
      *&v113[6] = v70 + 115;
      v114 = 1024;
      *v115 = v72;
      *&v115[4] = 1042;
      *&v115[6] = 16;
      *&v115[10] = 2098;
      *&v115[12] = &v107;
      v116 = 2080;
      *v117 = v73;
      v81 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: adding flow registration for nexus agent %{public,uuid_t}.16P on %s";
      v82 = v69;
      v83 = 70;
      goto LABEL_88;
    }

LABEL_76:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v69 = gLogObj;
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_89;
    }

    v74 = *(a1 + 32);
    if (v8)
    {
      v75 = _nw_interface_get_name(v8);
    }

    else
    {
      v75 = 0;
    }

    *buf = 136447234;
    v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
    v110 = 2114;
    v111 = v74;
    v112 = 1042;
    *v113 = 16;
    *&v113[4] = 2098;
    *&v113[6] = &v107;
    v114 = 2080;
    *v115 = v75;
    v81 = "%{public}s [%{public}@] Ethernet Channel handle update: adding flow registration for nexus agent %{public,uuid_t}.16P on %s";
    v82 = v69;
    v83 = 48;
LABEL_88:
    _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, v81, buf, v83);
LABEL_89:

    v84 = nw_path_evaluator_create_flow_inner(*(*(a1 + 32) + 72), 0, 1, 0, 0, &v107, 0, 0, 0, 0, 0);
    v85 = *(a1 + 32);
    if (v84)
    {
      v86 = *(v85 + 80);
      if (v86)
      {
        nw_path_flow_registration_close(v86);
        v85 = *(a1 + 32);
      }

      objc_storeStrong((v85 + 80), v84);
      v87 = *(a1 + 32);
      if (v87 && *(v87 + 152))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v88 = gLogObj;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          v89 = *(a1 + 32);
          v90 = *(v89 + 24);
          v91 = *(v89 + 168);
          if (v8)
          {
            v92 = _nw_interface_get_name(v8);
          }

          else
          {
            v92 = 0;
          }

          *buf = 136448002;
          v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
          v110 = 2080;
          v111 = v90;
          v112 = 1042;
          *v113 = 16;
          *&v113[4] = 2098;
          *&v113[6] = v89 + 115;
          v114 = 1024;
          *v115 = v91;
          *&v115[4] = 1042;
          *&v115[6] = 16;
          *&v115[10] = 2098;
          *&v115[12] = &v107;
          v116 = 2080;
          *v117 = v92;
          v103 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: added flow registration for nexus agent %{public,uuid_t}.16P on %s";
          v104 = v88;
          v105 = OS_LOG_TYPE_DEBUG;
          v106 = 70;
          goto LABEL_118;
        }

LABEL_119:

        goto LABEL_120;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v88 = gLogObj;
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_119;
      }

      v93 = *(a1 + 32);
      if (v8)
      {
        v94 = _nw_interface_get_name(v8);
      }

      else
      {
        v94 = 0;
      }

      *buf = 136447234;
      v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v110 = 2114;
      v111 = v93;
      v112 = 1042;
      *v113 = 16;
      *&v113[4] = 2098;
      *&v113[6] = &v107;
      v114 = 2080;
      *v115 = v94;
      v103 = "%{public}s [%{public}@] Ethernet Channel handle update: added flow registration for nexus agent %{public,uuid_t}.16P on %s";
      v104 = v88;
      v105 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (v85 && *(v85 + 152))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v88 = gLogObj;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v95 = *(a1 + 32);
          v96 = *(v95 + 24);
          v97 = *(v95 + 168);
          if (v8)
          {
            v98 = _nw_interface_get_name(v8);
          }

          else
          {
            v98 = 0;
          }

          *buf = 136448002;
          v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
          v110 = 2080;
          v111 = v96;
          v112 = 1042;
          *v113 = 16;
          *&v113[4] = 2098;
          *&v113[6] = v95 + 115;
          v114 = 1024;
          *v115 = v97;
          *&v115[4] = 1042;
          *&v115[6] = 16;
          *&v115[10] = 2098;
          *&v115[12] = &v107;
          v116 = 2080;
          *v117 = v98;
          v103 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: failed to create flow registration for nexus agent %{public,uuid_t}.16P on %s";
          v104 = v88;
          v105 = OS_LOG_TYPE_ERROR;
          v106 = 70;
          goto LABEL_118;
        }

        goto LABEL_119;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v88 = gLogObj;
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v99 = *(a1 + 32);
      if (v8)
      {
        v100 = _nw_interface_get_name(v8);
      }

      else
      {
        v100 = 0;
      }

      *buf = 136447234;
      v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v110 = 2114;
      v111 = v99;
      v112 = 1042;
      *v113 = 16;
      *&v113[4] = 2098;
      *&v113[6] = &v107;
      v114 = 2080;
      *v115 = v100;
      v103 = "%{public}s [%{public}@] Ethernet Channel handle update: failed to create flow registration for nexus agent %{public,uuid_t}.16P on %s";
      v104 = v88;
      v105 = OS_LOG_TYPE_ERROR;
    }

    v106 = 48;
LABEL_118:
    _os_log_impl(&dword_181A37000, v104, v105, v103, buf, v106);
    goto LABEL_119;
  }

  v66 = v65;
  v67 = v66;
  if ((v66[148] & 4) == 0)
  {

    v64 = *(a1 + 32);
    goto LABEL_71;
  }

  v68 = uuid_compare(v66 + 48, a3) == 0;

  v64 = *(a1 + 32);
  if (!v68)
  {
LABEL_71:
    v107 = *a3;
    if (!v64)
    {
      goto LABEL_76;
    }

    goto LABEL_72;
  }

  if (v64 && *(v64 + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v76 = gLogObj;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v77 = *(a1 + 32);
      v78 = *(v77 + 24);
      v79 = *(v77 + 168);
      if (v8)
      {
        v80 = _nw_interface_get_name(v8);
      }

      else
      {
        v80 = 0;
      }

      *buf = 136448002;
      v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v110 = 2080;
      v111 = v78;
      v112 = 1042;
      *v113 = 16;
      *&v113[4] = 2098;
      *&v113[6] = v77 + 115;
      v114 = 1024;
      *v115 = v79;
      *&v115[4] = 1042;
      *&v115[6] = 16;
      *&v115[10] = 2098;
      *&v115[12] = a3;
      v116 = 2080;
      *v117 = v80;
      _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: flow registration already exists for nexus agent %{public,uuid_t}.16P on %s", buf, 0x46u);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v76 = gLogObj;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v101 = *(a1 + 32);
      if (v8)
      {
        v102 = _nw_interface_get_name(v8);
      }

      else
      {
        v102 = 0;
      }

      *buf = 136447234;
      v109 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v110 = 2114;
      v111 = v101;
      v112 = 1042;
      *v113 = 16;
      *&v113[4] = 2098;
      *&v113[6] = a3;
      v114 = 2080;
      *v115 = v102;
      _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}@] Ethernet Channel handle update: flow registration already exists for nexus agent %{public,uuid_t}.16P on %s", buf, 0x30u);
    }
  }

LABEL_120:
}

void ___ZL45nw_ethernet_channel_handle_path_update_lockedP30NWConcrete_nw_ethernet_channelPU21objcproto10OS_nw_path8NSObject_block_invoke_142(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 113) & 1) == 0)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      nw_path_evaluator_force_update(v2, 0);
    }
  }
}

uint64_t ___ZL45nw_ethernet_channel_handle_path_update_lockedP30NWConcrete_nw_ethernet_channelPU21objcproto10OS_nw_path8NSObject_block_invoke_143(uint64_t a1, uint64_t a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  v8 = v5;
  v9 = v8;
  if (v7)
  {
    v84 = 0;
    v82 = 0;
    *uu1 = 0;
    *uu2 = 0;
    *v79 = 0;
    v80 = 0;
    *v77 = 0;
    v78 = 0;
    v62 = 0;
    if (!v8)
    {
      goto LABEL_18;
    }

    v10 = *(v6 + 88);
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    nexus_instance = _nw_path_flow_get_nexus_instance(v11, uu1, &v62);

    if ((nexus_instance & 1) == 0)
    {
      goto LABEL_18;
    }

    v13 = v9;
    v14 = _nw_path_flow_get_nexus_instance(v13, uu2, &v62);

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 152);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v17)
      {
        v18 = *(v6 + 24);
        v19 = *(v6 + 168);
        *buf = 136447746;
        v64 = "[NWConcrete_nw_ethernet_channel matchesNexusInstance:]";
        v65 = 2080;
        v66 = v18;
        v67 = 1042;
        v68 = 16;
        v69 = 2098;
        v70 = (v6 + 115);
        v71 = 1024;
        v72 = v19;
        v73 = 1042;
        v74 = 16;
        v75 = 2098;
        v76 = uu2;
        v20 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] matching Nexus instance %{public, uuid_t}.16P";
        v21 = v16;
        v22 = 60;
LABEL_11:
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
      }
    }

    else if (v17)
    {
      *buf = 136446978;
      v64 = "[NWConcrete_nw_ethernet_channel matchesNexusInstance:]";
      v65 = 2114;
      v66 = v6;
      v67 = 1042;
      v68 = 16;
      v69 = 2098;
      v70 = uu2;
      v20 = "%{public}s [%{public}@] matching Nexus instance %{public, uuid_t}.16P";
      v21 = v16;
      v22 = 38;
      goto LABEL_11;
    }

    if (!uuid_compare(uu1, uu2) && nw_path_flow_get_id(*(v6 + 88), v79))
    {
      v23 = v13;
      id = _nw_path_flow_get_id(v23, v77);

      if (id)
      {
        v25 = *(v6 + 152);
        v26 = __nwlog_obj();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_49;
          }

          v28 = *(v6 + 24);
          v29 = *(v6 + 168);
          *buf = 136447746;
          v64 = "[NWConcrete_nw_ethernet_channel matchesNexusInstance:]";
          v65 = 2080;
          v66 = v28;
          v67 = 1042;
          v68 = 16;
          v69 = 2098;
          v70 = (v6 + 115);
          v71 = 1024;
          v72 = v29;
          v73 = 1042;
          v74 = 16;
          v75 = 2098;
          v76 = v77;
          v30 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] matching flow id %{public, uuid_t}.16P";
          v31 = v26;
          v32 = 60;
        }

        else
        {
          if (!v27)
          {
            goto LABEL_49;
          }

          *buf = 136446978;
          v64 = "[NWConcrete_nw_ethernet_channel matchesNexusInstance:]";
          v65 = 2114;
          v66 = v6;
          v67 = 1042;
          v68 = 16;
          v69 = 2098;
          v70 = v77;
          v30 = "%{public}s [%{public}@] matching flow id %{public, uuid_t}.16P";
          v31 = v26;
          v32 = 38;
        }

        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, v30, buf, v32);
LABEL_49:

        v57 = uuid_compare(v79, v77) == 0;
        v6 = *(a1 + 32);
        if (v57)
        {
          if (v6 && *(v6 + 152))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v48 = gLogObj;
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_45;
            }

            v58 = *(a1 + 32);
            v59 = *(v58 + 24);
            v60 = (v58 + 115);
            LODWORD(v58) = *(v58 + 168);
            *buf = 136447234;
            v64 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
            v65 = 2080;
            v66 = v59;
            v67 = 1042;
            v68 = 16;
            v69 = 2098;
            v70 = v60;
            v71 = 1024;
            v72 = v58;
            v52 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: flow already exists";
            goto LABEL_40;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v48 = gLogObj;
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_45;
          }

          v61 = *(a1 + 32);
          *buf = 136446466;
          v64 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
          v65 = 2114;
          v66 = v61;
          v52 = "%{public}s [%{public}@] Ethernet Channel handle update: flow already exists";
LABEL_43:
          v53 = v48;
          v54 = 22;
          goto LABEL_44;
        }

LABEL_19:
        v33 = v9;
        if (!v6)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }
    }

LABEL_18:

    v6 = *(a1 + 32);
    goto LABEL_19;
  }

LABEL_20:
  if (*(v6 + 88))
  {
    [(NWConcrete_nw_ethernet_channel *)v6 closeChannel:?];
  }

  if (v9)
  {
    [(NWConcrete_nw_ethernet_channel *)v6 updateClientState:0 error:?];
    v34 = v9;
    v35 = _nw_path_flow_copy_local_endpoint(v34);

    if (v35)
    {
      v36 = v35;
      ethernet_address = _nw_endpoint_get_ethernet_address(v36);

      if (ethernet_address)
      {
        objc_storeStrong((v6 + 88), a3);
        v38 = *ethernet_address;
        *(v6 + 100) = *(ethernet_address + 4);
        *(v6 + 96) = v38;
        if (([(NWConcrete_nw_ethernet_channel *)v6 createChannel]& 1) != 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v39 = *(v6 + 152);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v40 = gLogObj;
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v42 = *(v6 + 24);
        v43 = *(v6 + 168);
        *buf = 136447234;
        v64 = "[NWConcrete_nw_ethernet_channel resetFlow:]";
        v65 = 2080;
        v66 = v42;
        v67 = 1042;
        v68 = 16;
        v69 = 2098;
        v70 = (v6 + 115);
        v71 = 1024;
        v72 = v43;
        v44 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] resetFlow failed to set flow, no local ethernet address";
        v45 = v40;
        v46 = 44;
LABEL_32:
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
      }
    }

    else if (v41)
    {
      *buf = 136446466;
      v64 = "[NWConcrete_nw_ethernet_channel resetFlow:]";
      v65 = 2114;
      v66 = v6;
      v44 = "%{public}s [%{public}@] resetFlow failed to set flow, no local ethernet address";
      v45 = v40;
      v46 = 22;
      goto LABEL_32;
    }

LABEL_34:
    [(NWConcrete_nw_ethernet_channel *)v6 closeChannel:?];
LABEL_35:
  }

LABEL_36:

  v47 = *(a1 + 32);
  if (v47 && *(v47 + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v49 = *(a1 + 32);
      v50 = *(v49 + 24);
      v51 = (v49 + 115);
      LODWORD(v49) = *(v49 + 168);
      *buf = 136447234;
      v64 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v65 = 2080;
      v66 = v50;
      v67 = 1042;
      v68 = 16;
      v69 = 2098;
      v70 = v51;
      v71 = 1024;
      v72 = v49;
      v52 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Ethernet Channel handle update: updated flow";
LABEL_40:
      v53 = v48;
      v54 = 44;
LABEL_44:
      _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, v52, buf, v54);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v55 = *(a1 + 32);
      *buf = 136446466;
      v64 = "nw_ethernet_channel_handle_path_update_locked_block_invoke";
      v65 = 2114;
      v66 = v55;
      v52 = "%{public}s [%{public}@] Ethernet Channel handle update: updated flow";
      goto LABEL_43;
    }
  }

LABEL_45:

  return 1;
}

void nw_ethernet_channel_set_receive_handler(nw_ethernet_channel_t ethernet_channel, nw_ethernet_channel_receive_handler_t handler)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = ethernet_channel;
  v4 = handler;
  if (v3)
  {
    os_unfair_lock_lock(&v3[1]);
    if ((BYTE1(v3[14].isa) & 1) == 0)
    {
      v5 = _Block_copy(v4);
      isa = v3[7].isa;
      v3[7].isa = v5;
    }

    os_unfair_lock_unlock(&v3[1]);
    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_ethernet_channel_set_receive_handler";
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
        v18 = "nw_ethernet_channel_set_receive_handler";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null ethernet_channel", buf, 0xCu);
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
          v18 = "nw_ethernet_channel_set_receive_handler";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_ethernet_channel_set_receive_handler";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_ethernet_channel_set_receive_handler";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:
}

void nw_ethernet_channel_send(nw_ethernet_channel_t ethernet_channel, dispatch_data_t content, uint16_t vlan_tag, unsigned __int8 *remote_address, nw_ethernet_channel_send_completion_t completion)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = ethernet_channel;
  v8 = content;
  v9 = completion;
  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ethernet_channel_send";
    v16 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v69[0] = 0;
    if (!__nwlog_fault(v16, type, v69))
    {
      goto LABEL_52;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ethernet_channel_send";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null ethernet_channel", buf, 0xCu);
      }
    }

    else if (v69[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type[0];
      v23 = os_log_type_enabled(v17, type[0]);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_ethernet_channel_send";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_52:
        if (!v16)
        {
          goto LABEL_11;
        }

LABEL_53:
        free(v16);
        goto LABEL_11;
      }

      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_ethernet_channel_send";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ethernet_channel_send";
        _os_log_impl(&dword_181A37000, v17, v30, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_51:

    goto LABEL_52;
  }

  if (v8)
  {
    os_unfair_lock_lock(&v7[1]);
    if (BYTE1(v7[14].isa))
    {
      v10 = [[NWConcrete_nw_error alloc] initWithDomain:57 code:?];
LABEL_8:
      os_unfair_lock_unlock(&v7[1]);
      if (v9)
      {
        v9[2](v9, v10);
      }

      goto LABEL_11;
    }

    v11 = v7;
    v12 = v8;
    v13 = v12;
    if (!v11[19].isa)
    {
      posix_error = [[NWConcrete_nw_error alloc] initWithDomain:53 code:?];
LABEL_7:
      v10 = posix_error;

      goto LABEL_8;
    }

    if (dispatch_data_get_size(v12) - 4294967278u < 0xFFFFFFFF00000013)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        isa = v11[3].isa;
        v29 = v11[21].isa;
        *buf = 136447490;
        *&buf[4] = "send_data_on_ring_locked";
        *&buf[12] = 2080;
        *&buf[14] = isa;
        v71 = 1042;
        *v72 = 16;
        *&v72[4] = 2098;
        *&v72[6] = v11 + 115;
        v73 = 1024;
        v74 = v29;
        v75 = 2112;
        v76 = @"Bad TX data size";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@", buf, 0x36u);
      }

      if (!v11[19].isa)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (!v11[23].isa)
    {
      v32 = __nwlog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = v11[3].isa;
        v34 = v11[21].isa;
        *buf = 136447490;
        *&buf[4] = "send_data_on_ring_locked";
        *&buf[12] = 2080;
        *&buf[14] = v33;
        v71 = 1042;
        *v72 = 16;
        *&v72[4] = 2098;
        *&v72[6] = v11 + 115;
        v73 = 1024;
        v74 = v34;
        v75 = 2112;
        v76 = @"No rx_ring";
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@", buf, 0x36u);
      }

      if (!v11[19].isa)
      {
        goto LABEL_39;
      }

LABEL_37:
      if (os_channel_is_defunct())
      {
        [(NWConcrete_nw_ethernet_channel *)v11 closeChannel:?];
      }

      goto LABEL_39;
    }

    if (os_channel_available_slot_count())
    {
LABEL_60:
      v68 = 0;
      if (os_channel_packet_alloc())
      {
        v35 = v11[19].isa;
        v36 = __nwlog_obj();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
        if (v35)
        {
          if (!v37)
          {
            goto LABEL_71;
          }

          v38 = v11[3].isa;
          v39 = v11[21].isa;
          *buf = 136447490;
          *&buf[4] = "send_data_on_ring_locked";
          *&buf[12] = 2080;
          *&buf[14] = v38;
          v71 = 1042;
          *v72 = 16;
          *&v72[4] = 2098;
          *&v72[6] = v11 + 115;
          v73 = 1024;
          v74 = v39;
          v75 = 2112;
          v76 = @"Failed to alloc TX packet";
          v40 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
          v41 = v36;
          v42 = 54;
        }

        else
        {
          if (!v37)
          {
            goto LABEL_71;
          }

          *buf = 136446722;
          *&buf[4] = "send_data_on_ring_locked";
          *&buf[12] = 2114;
          *&buf[14] = v11;
          v71 = 2112;
          *v72 = @"Failed to alloc TX packet";
          v40 = "%{public}s [%{public}@]  %@";
          v41 = v36;
          v42 = 32;
        }

        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
LABEL_71:

        if (v11[19].isa)
        {
          goto LABEL_72;
        }

        goto LABEL_74;
      }

      v51 = v11[19].isa;
      v52 = __nwlog_obj();
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
      if (v51)
      {
        if (!v53)
        {
          goto LABEL_92;
        }

        v54 = v11[3].isa;
        v55 = v11[21].isa;
        *buf = 136447490;
        *&buf[4] = "send_data_on_ring_locked";
        *&buf[12] = 2080;
        *&buf[14] = v54;
        v71 = 1042;
        *v72 = 16;
        *&v72[4] = 2098;
        *&v72[6] = v11 + 115;
        v73 = 1024;
        v74 = v55;
        v75 = 2112;
        v76 = @"no TX packet";
        v56 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v57 = v52;
        v58 = 54;
      }

      else
      {
        if (!v53)
        {
          goto LABEL_92;
        }

        *buf = 136446722;
        *&buf[4] = "send_data_on_ring_locked";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        v71 = 2112;
        *v72 = @"no TX packet";
        v56 = "%{public}s [%{public}@]  %@";
        v57 = v52;
        v58 = 32;
      }

      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
LABEL_92:

      if (v11[19].isa)
      {
LABEL_72:
        if (os_channel_is_defunct())
        {
          [(NWConcrete_nw_ethernet_channel *)v11 closeChannel:?];
        }
      }

LABEL_74:
      posix_error = nw_error_create_posix_error(55);
      goto LABEL_7;
    }

    if (os_channel_sync())
    {
      v43 = v11[19].isa;
      v44 = __nwlog_obj();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        if (!v45)
        {
          goto LABEL_78;
        }

        v46 = v11[3].isa;
        v47 = v11[21].isa;
        *buf = 136447490;
        *&buf[4] = "send_data_on_ring_locked";
        *&buf[12] = 2080;
        *&buf[14] = v46;
        v71 = 1042;
        *v72 = 16;
        *&v72[4] = 2098;
        *&v72[6] = v11 + 115;
        v73 = 1024;
        v74 = v47;
        v75 = 2112;
        v76 = @"Failed to sync TX";
        v48 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v49 = v44;
        v50 = 54;
      }

      else
      {
        if (!v45)
        {
          goto LABEL_78;
        }

        *buf = 136446722;
        *&buf[4] = "send_data_on_ring_locked";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        v71 = 2112;
        *v72 = @"Failed to sync TX";
        v48 = "%{public}s [%{public}@]  %@";
        v49 = v44;
        v50 = 32;
      }

      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);
LABEL_78:

      if (v11[19].isa)
      {
        goto LABEL_79;
      }

      goto LABEL_39;
    }

    if (!os_channel_available_slot_count())
    {
      goto LABEL_60;
    }

    v59 = v11[19].isa;
    v60 = __nwlog_obj();
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
    if (v59)
    {
      if (!v61)
      {
        goto LABEL_97;
      }

      v62 = v11[3].isa;
      v63 = v11[21].isa;
      *buf = 136447490;
      *&buf[4] = "send_data_on_ring_locked";
      *&buf[12] = 2080;
      *&buf[14] = v62;
      v71 = 1042;
      *v72 = 16;
      *&v72[4] = 2098;
      *&v72[6] = v11 + 115;
      v73 = 1024;
      v74 = v63;
      v75 = 2112;
      v76 = @"TX no available slot";
      v64 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
      v65 = v60;
      v66 = 54;
    }

    else
    {
      if (!v61)
      {
        goto LABEL_97;
      }

      *buf = 136446722;
      *&buf[4] = "send_data_on_ring_locked";
      *&buf[12] = 2114;
      *&buf[14] = v11;
      v71 = 2112;
      *v72 = @"TX no available slot";
      v64 = "%{public}s [%{public}@]  %@";
      v65 = v60;
      v66 = 32;
    }

    _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_ERROR, v64, buf, v66);
LABEL_97:

    if (v11[19].isa)
    {
LABEL_79:
      if (os_channel_is_defunct())
      {
        [(NWConcrete_nw_ethernet_channel *)v11 closeChannel:?];
      }
    }

LABEL_39:
    posix_error = nw_error_create_posix_error(53);
    goto LABEL_7;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_ethernet_channel_send";
  v16 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v69[0] = 0;
  if (!__nwlog_fault(v16, type, v69))
  {
    goto LABEL_52;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v17 = __nwlog_obj();
    v20 = type[0];
    if (os_log_type_enabled(v17, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_ethernet_channel_send";
      _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null content", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (v69[0] != 1)
  {
    v17 = __nwlog_obj();
    v31 = type[0];
    if (os_log_type_enabled(v17, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_ethernet_channel_send";
      _os_log_impl(&dword_181A37000, v17, v31, "%{public}s called with null content, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_51;
  }

  v24 = __nw_create_backtrace_string();
  v17 = __nwlog_obj();
  v25 = type[0];
  v26 = os_log_type_enabled(v17, type[0]);
  if (!v24)
  {
    if (v26)
    {
      *buf = 136446210;
      *&buf[4] = "nw_ethernet_channel_send";
      _os_log_impl(&dword_181A37000, v17, v25, "%{public}s called with null content, no backtrace", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (v26)
  {
    *buf = 136446466;
    *&buf[4] = "nw_ethernet_channel_send";
    *&buf[12] = 2082;
    *&buf[14] = v24;
    _os_log_impl(&dword_181A37000, v17, v25, "%{public}s called with null content, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v24);
  if (v16)
  {
    goto LABEL_53;
  }

LABEL_11:
}

void sub_1823442B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

BOOL ___ZL24send_data_on_ring_lockedP30NWConcrete_nw_ethernet_channelPU27objcproto16OS_dispatch_data8NSObjecttPh_block_invoke(uint64_t a1, void *a2, uint64_t a3, const void *a4, size_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9 + a5 <= *(a1 + 64))
  {
    memcpy((*(a1 + 56) + v9), a4, a5);
    *(*(*(a1 + 40) + 8) + 24) += a5;
    v20 = 1;
    goto LABEL_15;
  }

  v10 = *(a1 + 32);
  if (v10 && *(v10 + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      v14 = v12 + 115;
      LODWORD(v12) = *(v12 + 168);
      v22 = 136447490;
      v23 = "send_data_on_ring_locked_block_invoke";
      v24 = 2080;
      v25 = v13;
      v26 = 1042;
      *v27 = 16;
      *&v27[4] = 2098;
      *&v27[6] = v14;
      v28 = 1024;
      v29 = v12;
      v30 = 2112;
      v31 = @"TX buffer no space";
      v15 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
      v16 = v11;
      v17 = 54;
LABEL_8:
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, v15, &v22, v17);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v22 = 136446722;
      v23 = "send_data_on_ring_locked_block_invoke";
      v24 = 2114;
      v25 = v18;
      v26 = 2112;
      *v27 = @"TX buffer no space";
      v15 = "%{public}s [%{public}@]  %@";
      v16 = v11;
      v17 = 32;
      goto LABEL_8;
    }
  }

  if (*(*(a1 + 32) + 152))
  {
    if (*(a1 + 48))
    {
      os_channel_packet_free();
    }

    if (os_channel_is_defunct())
    {
      [(NWConcrete_nw_ethernet_channel *)*(a1 + 32) closeChannel:?];
    }
  }

  v19 = [[NWConcrete_nw_error alloc] initWithDomain:55 code:?];
  v20 = v19 != 0;

LABEL_15:
  return v20;
}

uint64_t nw_protocol_copy_swift_tls_record_definition(double a1)
{
  v10 = *MEMORY[0x1E69E9840];
  Helper_x8__nwswifttlsrecord_copy_definition = gotLoadHelper_x8__nwswifttlsrecord_copy_definition(a1);
  if (!*(v2 + 2232))
  {
    return 0;
  }

  inited = nwswifttlsrecord_copy_definition_delayInitStub(Helper_x8__nwswifttlsrecord_copy_definition);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446466;
    v7 = "nw_protocol_copy_swift_tls_record_definition_if_present";
    v8 = 2048;
    v9 = inited;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS record protocol definition %p", &v6, 0x16u);
  }

  return inited;
}

uint64_t nw_tls_set_fallback()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_fallback";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_fallback";
      v3 = "%{public}s nw_tls_set_fallback not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_fallback";
      v3 = "%{public}s nw_tls_set_fallback not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_fallback";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_fallback not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_fallback";
      v3 = "%{public}s nw_tls_set_fallback not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_fallback()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_fallback";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_fallback";
      v3 = "%{public}s nw_tls_get_fallback not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_fallback";
      v3 = "%{public}s nw_tls_get_fallback not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_fallback";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_fallback not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_fallback";
      v3 = "%{public}s nw_tls_get_fallback not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_false_start()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_false_start";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_false_start";
      v3 = "%{public}s nw_tls_set_false_start not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_false_start";
      v3 = "%{public}s nw_tls_set_false_start not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_false_start";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_false_start not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_false_start";
      v3 = "%{public}s nw_tls_set_false_start not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_false_start()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_false_start";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_false_start";
      v3 = "%{public}s nw_tls_get_false_start not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_false_start";
      v3 = "%{public}s nw_tls_get_false_start not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_false_start";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_false_start not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_false_start";
      v3 = "%{public}s nw_tls_get_false_start not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_session_resumption_enabled()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_session_resumption_enabled";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_session_resumption_enabled";
      v3 = "%{public}s nw_tls_set_session_resumption_enabled not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_session_resumption_enabled";
      v3 = "%{public}s nw_tls_set_session_resumption_enabled not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_session_resumption_enabled";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_session_resumption_enabled not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_session_resumption_enabled";
      v3 = "%{public}s nw_tls_set_session_resumption_enabled not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_session_ticket_enabled()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_session_ticket_enabled";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_session_ticket_enabled";
      v3 = "%{public}s nw_tls_set_session_ticket_enabled not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_session_ticket_enabled";
      v3 = "%{public}s nw_tls_set_session_ticket_enabled not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_session_ticket_enabled";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_session_ticket_enabled not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_session_ticket_enabled";
      v3 = "%{public}s nw_tls_set_session_ticket_enabled not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_npn_enabled()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_npn_enabled";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_npn_enabled";
      v3 = "%{public}s nw_tls_set_npn_enabled not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_npn_enabled";
      v3 = "%{public}s nw_tls_set_npn_enabled not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_npn_enabled";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_npn_enabled not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_npn_enabled";
      v3 = "%{public}s nw_tls_set_npn_enabled not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_minimum_protocol_version()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_minimum_protocol_version";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_minimum_protocol_version";
      v3 = "%{public}s nw_tls_set_minimum_protocol_version not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_minimum_protocol_version";
      v3 = "%{public}s nw_tls_set_minimum_protocol_version not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_minimum_protocol_version";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_minimum_protocol_version not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_minimum_protocol_version";
      v3 = "%{public}s nw_tls_set_minimum_protocol_version not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_minimum_protocol_version()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_minimum_protocol_version";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_minimum_protocol_version";
      v3 = "%{public}s nw_tls_get_minimum_protocol_version not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_minimum_protocol_version";
      v3 = "%{public}s nw_tls_get_minimum_protocol_version not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_minimum_protocol_version";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_minimum_protocol_version not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_minimum_protocol_version";
      v3 = "%{public}s nw_tls_get_minimum_protocol_version not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_maximum_protocol_version()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_maximum_protocol_version";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_maximum_protocol_version";
      v3 = "%{public}s nw_tls_set_maximum_protocol_version not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_maximum_protocol_version";
      v3 = "%{public}s nw_tls_set_maximum_protocol_version not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_maximum_protocol_version";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_maximum_protocol_version not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_maximum_protocol_version";
      v3 = "%{public}s nw_tls_set_maximum_protocol_version not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_maximum_protocol_version()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_maximum_protocol_version";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_maximum_protocol_version";
      v3 = "%{public}s nw_tls_get_maximum_protocol_version not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_maximum_protocol_version";
      v3 = "%{public}s nw_tls_get_maximum_protocol_version not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_maximum_protocol_version";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_maximum_protocol_version not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_maximum_protocol_version";
      v3 = "%{public}s nw_tls_get_maximum_protocol_version not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_minimum_ssl_protocol()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_minimum_ssl_protocol";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_minimum_ssl_protocol";
      v3 = "%{public}s nw_tls_set_minimum_ssl_protocol not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_minimum_ssl_protocol";
      v3 = "%{public}s nw_tls_set_minimum_ssl_protocol not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_minimum_ssl_protocol";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_minimum_ssl_protocol not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_minimum_ssl_protocol";
      v3 = "%{public}s nw_tls_set_minimum_ssl_protocol not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_minimum_ssl_protocol()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_minimum_ssl_protocol";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_minimum_ssl_protocol";
      v3 = "%{public}s nw_tls_get_minimum_ssl_protocol not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_minimum_ssl_protocol";
      v3 = "%{public}s nw_tls_get_minimum_ssl_protocol not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_minimum_ssl_protocol";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_minimum_ssl_protocol not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_minimum_ssl_protocol";
      v3 = "%{public}s nw_tls_get_minimum_ssl_protocol not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_maximum_ssl_protocol()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_maximum_ssl_protocol";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_maximum_ssl_protocol";
      v3 = "%{public}s nw_tls_set_maximum_ssl_protocol not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_maximum_ssl_protocol";
      v3 = "%{public}s nw_tls_set_maximum_ssl_protocol not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_maximum_ssl_protocol";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_maximum_ssl_protocol not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_maximum_ssl_protocol";
      v3 = "%{public}s nw_tls_set_maximum_ssl_protocol not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_maximum_ssl_protocol()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_maximum_ssl_protocol";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_maximum_ssl_protocol";
      v3 = "%{public}s nw_tls_get_maximum_ssl_protocol not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_maximum_ssl_protocol";
      v3 = "%{public}s nw_tls_get_maximum_ssl_protocol not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_maximum_ssl_protocol";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_maximum_ssl_protocol not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_maximum_ssl_protocol";
      v3 = "%{public}s nw_tls_get_maximum_ssl_protocol not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_peer_hostname()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_peer_hostname";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_hostname";
      v3 = "%{public}s nw_tls_get_peer_hostname not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_hostname";
      v3 = "%{public}s nw_tls_get_peer_hostname not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_peer_hostname";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_peer_hostname not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_peer_hostname";
      v3 = "%{public}s nw_tls_get_peer_hostname not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_peer_hostname()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_peer_hostname";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_hostname";
      v3 = "%{public}s nw_tls_set_peer_hostname not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_hostname";
      v3 = "%{public}s nw_tls_set_peer_hostname not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_peer_hostname";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_peer_hostname not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_peer_hostname";
      v3 = "%{public}s nw_tls_set_peer_hostname not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_psk_secret()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_psk_secret";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_psk_secret";
      v3 = "%{public}s nw_tls_set_psk_secret not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_psk_secret";
      v3 = "%{public}s nw_tls_set_psk_secret not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_psk_secret";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_psk_secret not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_psk_secret";
      v3 = "%{public}s nw_tls_set_psk_secret not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_psk_identity()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_psk_identity";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_psk_identity";
      v3 = "%{public}s nw_tls_set_psk_identity not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_psk_identity";
      v3 = "%{public}s nw_tls_set_psk_identity not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_psk_identity";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_psk_identity not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_psk_identity";
      v3 = "%{public}s nw_tls_set_psk_identity not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_psk_identity_hint()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_psk_identity_hint";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_psk_identity_hint";
      v3 = "%{public}s nw_tls_set_psk_identity_hint not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_psk_identity_hint";
      v3 = "%{public}s nw_tls_set_psk_identity_hint not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_psk_identity_hint";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_psk_identity_hint not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_psk_identity_hint";
      v3 = "%{public}s nw_tls_set_psk_identity_hint not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_ciphersuites()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_ciphersuites";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_ciphersuites";
      v3 = "%{public}s nw_tls_set_ciphersuites not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_ciphersuites";
      v3 = "%{public}s nw_tls_set_ciphersuites not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_ciphersuites";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_ciphersuites not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_ciphersuites";
      v3 = "%{public}s nw_tls_set_ciphersuites not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_negotiated_cipher_spec()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_negotiated_cipher_spec";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_cipher_spec";
      v3 = "%{public}s nw_tls_get_negotiated_cipher_spec not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_cipher_spec";
      v3 = "%{public}s nw_tls_get_negotiated_cipher_spec not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_negotiated_cipher_spec";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_negotiated_cipher_spec not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_cipher_spec";
      v3 = "%{public}s nw_tls_get_negotiated_cipher_spec not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_dh_parameters()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_dh_parameters";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_dh_parameters";
      v3 = "%{public}s nw_tls_set_dh_parameters not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_dh_parameters";
      v3 = "%{public}s nw_tls_set_dh_parameters not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_dh_parameters";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_dh_parameters not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_dh_parameters";
      v3 = "%{public}s nw_tls_set_dh_parameters not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_alpn_data()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_alpn_data";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_alpn_data";
      v3 = "%{public}s nw_tls_set_alpn_data not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_alpn_data";
      v3 = "%{public}s nw_tls_set_alpn_data not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_alpn_data";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_alpn_data not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_alpn_data";
      v3 = "%{public}s nw_tls_set_alpn_data not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_peer_alpn_data()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_peer_alpn_data";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_alpn_data";
      v3 = "%{public}s nw_tls_get_peer_alpn_data not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_alpn_data";
      v3 = "%{public}s nw_tls_get_peer_alpn_data not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_peer_alpn_data";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_peer_alpn_data not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_peer_alpn_data";
      v3 = "%{public}s nw_tls_get_peer_alpn_data not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_npn_data()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_npn_data";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_npn_data";
      v3 = "%{public}s nw_tls_set_npn_data not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_npn_data";
      v3 = "%{public}s nw_tls_set_npn_data not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_npn_data";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_npn_data not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_npn_data";
      v3 = "%{public}s nw_tls_set_npn_data not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_peer_npn_data()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_peer_npn_data";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_npn_data";
      v3 = "%{public}s nw_tls_get_peer_npn_data not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_npn_data";
      v3 = "%{public}s nw_tls_get_peer_npn_data not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_peer_npn_data";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_peer_npn_data not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_peer_npn_data";
      v3 = "%{public}s nw_tls_get_peer_npn_data not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_copy_peer_certificates()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_copy_peer_certificates";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_copy_peer_certificates";
      v3 = "%{public}s nw_tls_copy_peer_certificates not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_copy_peer_certificates";
      v3 = "%{public}s nw_tls_copy_peer_certificates not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_copy_peer_certificates";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_copy_peer_certificates not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_copy_peer_certificates";
      v3 = "%{public}s nw_tls_copy_peer_certificates not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_peer_rsa_public_key()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_peer_rsa_public_key";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_rsa_public_key";
      v3 = "%{public}s nw_tls_set_peer_rsa_public_key not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_rsa_public_key";
      v3 = "%{public}s nw_tls_set_peer_rsa_public_key not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_peer_rsa_public_key";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_peer_rsa_public_key not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_peer_rsa_public_key";
      v3 = "%{public}s nw_tls_set_peer_rsa_public_key not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}
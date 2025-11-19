BOOL ___ZL43nw_http_capsule_framer_process_capsule_bodyP22nw_http_capsule_framerP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + 32);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  v8 = nw_frame_unclaimed_length(a2);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  if (v10 >= v8)
  {
    *(a2 + 32) = 0;
    v14 = *(v9 + 48);
    *(a2 + 40) = v14;
    *v14 = a2;
    *(v9 + 48) = v6;
    *(v9 + 16) = v10 - v8;
    return v10 != v8;
  }

  v28 = a2;
  v11 = nw_frame_split(&v28, v10);
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v30 = "nw_http_capsule_framer_process_capsule_body_block_invoke";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v16, &type, &v26))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v30 = "nw_http_capsule_framer_process_capsule_body_block_invoke";
      v19 = "%{public}s nw_frame_split returned NULL frame";
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v30 = "nw_http_capsule_framer_process_capsule_body_block_invoke";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s nw_frame_split returned NULL frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v23)
        {
LABEL_20:
          if (v16)
          {
            free(v16);
          }

          return 0;
        }

        *buf = 136446210;
        v30 = "nw_http_capsule_framer_process_capsule_body_block_invoke";
        v19 = "%{public}s nw_frame_split returned NULL frame, no backtrace";
        v24 = v21;
        v25 = v22;
LABEL_19:
        _os_log_impl(&dword_181A37000, v24, v25, v19, buf, 0xCu);
        goto LABEL_20;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v30 = "nw_http_capsule_framer_process_capsule_body_block_invoke";
      v19 = "%{public}s nw_frame_split returned NULL frame, backtrace limit exceeded";
    }

    v24 = v17;
    v25 = v18;
    goto LABEL_19;
  }

  v12 = *(a1 + 32);
  *(v11 + 32) = 0;
  v13 = *(v12 + 48);
  *(v11 + 40) = v13;
  *v13 = v11;
  *(v12 + 48) = v11 + 32;
  nw_frame_array_prepend((v12 + 24), 1, v28);
  *(*(a1 + 32) + 16) = 0;
  return 0;
}

uint64_t nw_http_capsule_framer_get_output_frames(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, uint64_t a6, void *a7)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_capsule_framer_get_output_frames";
    v30 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (!__nwlog_fault(v30, type, &v59))
    {
      goto LABEL_68;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v59 != 1)
      {
        v31 = __nwlog_obj();
        v32 = type[0];
        if (!os_log_type_enabled(v31, type[0]))
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_capsule_framer_get_output_frames";
        v33 = "%{public}s called with null framer, backtrace limit exceeded";
        goto LABEL_67;
      }

      backtrace_string = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type[0];
      v35 = os_log_type_enabled(v31, type[0]);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_capsule_framer_get_output_frames";
        v33 = "%{public}s called with null framer, no backtrace";
        goto LABEL_67;
      }

      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_capsule_framer_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v36 = "%{public}s called with null framer, dumping backtrace:%{public}s";
LABEL_50:
        _os_log_impl(&dword_181A37000, v31, v32, v36, buf, 0x16u);
      }

LABEL_51:
      free(backtrace_string);
      goto LABEL_68;
    }

    v31 = __nwlog_obj();
    v32 = type[0];
    if (!os_log_type_enabled(v31, type[0]))
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_capsule_framer_get_output_frames";
    v33 = "%{public}s called with null framer";
LABEL_67:
    _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
LABEL_68:
    if (v30)
    {
      free(v30);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_capsule_framer_get_output_frames";
    v30 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (!__nwlog_fault(v30, type, &v59))
    {
      goto LABEL_68;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (!os_log_type_enabled(v31, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_get_output_frames";
      v33 = "%{public}s called with null protocol";
      goto LABEL_67;
    }

    if (v59 != 1)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (!os_log_type_enabled(v31, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_get_output_frames";
      v33 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_67;
    }

    backtrace_string = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type[0];
    v37 = os_log_type_enabled(v31, type[0]);
    if (backtrace_string)
    {
      if (v37)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_capsule_framer_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v37)
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_capsule_framer_get_output_frames";
    v33 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_67;
  }

  v8 = *(a2 + 32);
  if (!v8 || (v9 = v8[3]) == 0 || !*(v9 + 88))
  {
    v28 = *(a2 + 32);
    v29 = __nwlog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_capsule_framer_get_output_frames";
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s Output handler (%p)'s get_output_frames callback is not properly set", buf, 0x16u);
    }

    return 0;
  }

  v11 = type;
  *type = 0;
  v56 = type;
  v57 = 0x2000000000;
  if (a3 < 0x40)
  {
    v12 = 9;
LABEL_16:
    v58 = v12;
    v20 = *(v11 + 6);
    v21 = (a4 + v20);
    if (__CFADD__(a4, v20))
    {
      if (gLogDatapath == 1)
      {
        v38 = a5;
        v39 = v8;
        v40 = a6;
        v41 = __nwlog_obj();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
        v11 = v56;
        if (v42)
        {
          v43 = *(v56 + 6);
          *buf = 136446978;
          *&buf[4] = "nw_http_capsule_framer_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = "minimum_bytes";
          *&buf[22] = 2048;
          v61 = v43;
          v62 = 2048;
          v63 = v21;
          _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
          v21 = 0xFFFFFFFFLL;
          v11 = v56;
        }

        else
        {
          v21 = 0xFFFFFFFFLL;
        }

        a6 = v40;
        v8 = v39;
        a5 = v38;
      }

      else
      {
        v21 = 0xFFFFFFFFLL;
      }
    }

    v22 = *(v11 + 6);
    v23 = (a5 + v22);
    if (__CFADD__(a5, v22))
    {
      if (gLogDatapath == 1)
      {
        v44 = v8;
        v45 = a6;
        v46 = __nwlog_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v47 = *(v56 + 6);
          *buf = 136446978;
          *&buf[4] = "nw_http_capsule_framer_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_bytes";
          *&buf[22] = 2048;
          v61 = v47;
          v62 = 2048;
          v63 = v23;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        v23 = 0xFFFFFFFFLL;
        a6 = v45;
        v8 = v44;
      }

      else
      {
        v23 = 0xFFFFFFFFLL;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v61) = nw_protocol_get_output_frames(v8, a2, v21, v23, a6, a7);
    if (*(*&buf[8] + 24))
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 0x40000000;
      v49 = __nw_http_capsule_framer_get_output_frames_block_invoke;
      v50 = &unk_1E6A34930;
      v51 = type;
      v52 = buf;
      v53 = a7;
      v54 = a2;
      v24 = *a7;
      do
      {
        if (!v24)
        {
          break;
        }

        v25 = *(v24 + 32);
        v26 = v49(v48);
        v24 = v25;
      }

      while ((v26 & 1) != 0);
      v27 = *(*&buf[8] + 24);
    }

    else
    {
      v27 = 0;
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(type, 8);
    return v27;
  }

  if (a3 < 0x4000)
  {
    v12 = 10;
    v11 = type;
    goto LABEL_16;
  }

  if (!(a3 >> 30))
  {
    v12 = 12;
    v11 = type;
    goto LABEL_16;
  }

  if (!(a3 >> 62))
  {
    v12 = 16;
    v11 = type;
    goto LABEL_16;
  }

  v13 = a4;
  v14 = a5;
  v15 = v8;
  v16 = a6;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  *&buf[4] = "_http_vle_length";
  *&buf[12] = 2048;
  *&buf[14] = a3;
  v18 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v18);
  if (!result)
  {
    free(v18);
    v12 = 8;
    v11 = v56;
    a6 = v16;
    v8 = v15;
    a5 = v14;
    a4 = v13;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_capsule_framer_get_output_frames_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1[4] + 8) + 24);
  if (v4 < nw_frame_unclaimed_length(a2))
  {
    nw_frame_claim(a2, v5, *(*(a1[4] + 8) + 24), 0);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v23 = "nw_http_capsule_framer_get_output_frames_block_invoke";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v23 = "nw_http_capsule_framer_get_output_frames_block_invoke";
        v9 = "%{public}s Received frame contains less than minimum unclaimed bytes";
LABEL_14:
        v14 = v7;
        v15 = v8;
LABEL_15:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v23 = "nw_http_capsule_framer_get_output_frames_block_invoke";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Received frame contains less than minimum unclaimed bytes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_16;
      }

      if (v13)
      {
        *buf = 136446210;
        v23 = "nw_http_capsule_framer_get_output_frames_block_invoke";
        v9 = "%{public}s Received frame contains less than minimum unclaimed bytes, no backtrace";
        v14 = v11;
        v15 = v12;
        goto LABEL_15;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v23 = "nw_http_capsule_framer_get_output_frames_block_invoke";
        v9 = "%{public}s Received frame contains less than minimum unclaimed bytes, backtrace limit exceeded";
        goto LABEL_14;
      }
    }
  }

LABEL_16:
  if (v6)
  {
    free(v6);
  }

  v16 = (a1[6] + 8);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  if (v17)
  {
    v16 = (v17 + 40);
  }

  *v16 = v18;
  *v18 = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  --*(*(a1[5] + 8) + 24);
  return 1;
}

uint64_t nw_http_capsule_framer_finalize_output_frames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_capsule_framer_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &v27, &v26))
    {
      goto LABEL_51;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = v27;
      if (!os_log_type_enabled(v12, v27))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null framer";
      goto LABEL_50;
    }

    if (v26 != 1)
    {
      v12 = __nwlog_obj();
      v13 = v27;
      if (!os_log_type_enabled(v12, v27))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null framer, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = v27;
    v16 = os_log_type_enabled(v12, v27);
    if (!backtrace_string)
    {
      if (!v16)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null framer, no backtrace";
      goto LABEL_50;
    }

    if (!v16)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v29 = "nw_http_capsule_framer_finalize_output_frames";
    v30 = 2082;
    v31 = backtrace_string;
    v17 = "%{public}s called with null framer, dumping backtrace:%{public}s";
LABEL_36:
    _os_log_impl(&dword_181A37000, v12, v13, v17, buf, 0x16u);
    goto LABEL_37;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_capsule_framer_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &v27, &v26))
    {
      goto LABEL_51;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = v27;
      if (!os_log_type_enabled(v12, v27))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null protocol";
      goto LABEL_50;
    }

    if (v26 != 1)
    {
      v12 = __nwlog_obj();
      v13 = v27;
      if (!os_log_type_enabled(v12, v27))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = v27;
    v18 = os_log_type_enabled(v12, v27);
    if (!backtrace_string)
    {
      if (!v18)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_50;
    }

    if (!v18)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v29 = "nw_http_capsule_framer_finalize_output_frames";
    v30 = 2082;
    v31 = backtrace_string;
    v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_capsule_framer_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &v27, &v26))
    {
      goto LABEL_51;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = v27;
      if (!os_log_type_enabled(v12, v27))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null frames";
      goto LABEL_50;
    }

    if (v26 != 1)
    {
      v12 = __nwlog_obj();
      v13 = v27;
      if (!os_log_type_enabled(v12, v27))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v29 = "nw_http_capsule_framer_finalize_output_frames";
      v14 = "%{public}s called with null frames, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = v27;
    v19 = os_log_type_enabled(v12, v27);
    if (backtrace_string)
    {
      if (v19)
      {
        *buf = 136446466;
        v29 = "nw_http_capsule_framer_finalize_output_frames";
        v30 = 2082;
        v31 = backtrace_string;
        v17 = "%{public}s called with null frames, dumping backtrace:%{public}s";
        goto LABEL_36;
      }

LABEL_37:
      free(backtrace_string);
      goto LABEL_51;
    }

    if (!v19)
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v29 = "nw_http_capsule_framer_finalize_output_frames";
    v14 = "%{public}s called with null frames, no backtrace";
LABEL_50:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_51:
    if (v11)
    {
      free(v11);
    }

    return 0;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[3];
  if (!v6 || !*(v6 + 96))
  {
    return 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v21 = __nw_http_capsule_framer_finalize_output_frames_block_invoke;
  v22 = &__block_descriptor_tmp_9_51584;
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v7 = *a4;
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 32);
    v9 = (v21)(v20);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return nw_protocol_finalize_output_frames(v5, a4);
}

uint64_t __nw_http_capsule_framer_finalize_output_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4 == 420171067 && (nw_frame_is_metadata_complete(a2) & 1) != 0)
  {
    v4 = 420171068;
  }

  if (!*(a1 + 48))
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_http_capsule_framer_write_capsule_header";
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v13, type, &v36))
    {
      goto LABEL_40;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s called with null protocol";
      goto LABEL_38;
    }

    if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type[0];
      v32 = os_log_type_enabled(v14, type[0]);
      if (backtrace_string)
      {
        if (!v32)
        {
          goto LABEL_77;
        }

        *buf = 136446466;
        v38 = "nw_http_capsule_framer_write_capsule_header";
        v39 = 2082;
        v40 = backtrace_string;
        v33 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_76;
      }

      if (!v32)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_38:
    v21 = v14;
    v22 = v15;
LABEL_39:
    _os_log_impl(&dword_181A37000, v21, v22, v16, buf, 0xCu);
    goto LABEL_40;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_http_capsule_framer_write_capsule_header";
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v13, type, &v36))
    {
      goto LABEL_40;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s called with null frame";
      goto LABEL_38;
    }

    if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type[0];
      v34 = os_log_type_enabled(v14, type[0]);
      if (backtrace_string)
      {
        if (!v34)
        {
          goto LABEL_77;
        }

        *buf = 136446466;
        v38 = "nw_http_capsule_framer_write_capsule_header";
        v39 = 2082;
        v40 = backtrace_string;
        v33 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_76:
        _os_log_impl(&dword_181A37000, v14, v15, v33, buf, 0x16u);
LABEL_77:
        free(backtrace_string);
        if (!v13)
        {
          return 1;
        }

        goto LABEL_41;
      }

      if (!v34)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    goto LABEL_38;
  }

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
          *buf = 136446466;
          v38 = "_http_vle_length";
          v39 = 2048;
          v40 = v4;
          v6 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v6);
          if (result)
          {
            goto LABEL_87;
          }

          free(v6);
          v5 = 8;
        }

        else
        {
          v5 = 16;
        }
      }

      else
      {
        v5 = 12;
      }
    }

    else
    {
      v5 = 10;
    }
  }

  else
  {
    v5 = 9;
  }

  nw_frame_unclaim(a2, a2, v5, 0);
  if (!*(a2 + 112) || (*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
    goto LABEL_25;
  }

  v8 = *(a2 + 52);
  v9 = *(a2 + 56);
  if (!v8)
  {
    v10 = 0;
    v11 = *(a2 + 112);
    if (v11)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v10 = v8 - (v9 + *(a2 + 60));
  v11 = *(a2 + 112);
  if (!v11)
  {
LABEL_25:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v38 = "nw_http_capsule_framer_write_capsule_header";
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v13, type, &v36))
    {
      goto LABEL_40;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s Unable to fillout capsule header because nw_frame_unclaimed_bytes() returned NULL";
      goto LABEL_38;
    }

    if (v36 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s Unable to fillout capsule header because nw_frame_unclaimed_bytes() returned NULL, backtrace limit exceeded";
      goto LABEL_38;
    }

    v17 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type[0];
    v20 = os_log_type_enabled(gLogObj, type[0]);
    if (v17)
    {
      if (v20)
      {
        *buf = 136446466;
        v38 = "nw_http_capsule_framer_write_capsule_header";
        v39 = 2082;
        v40 = v17;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Unable to fillout capsule header because nw_frame_unclaimed_bytes() returned NULL, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
    }

    else if (v20)
    {
      *buf = 136446210;
      v38 = "nw_http_capsule_framer_write_capsule_header";
      v16 = "%{public}s Unable to fillout capsule header because nw_frame_unclaimed_bytes() returned NULL, no backtrace";
      v21 = v18;
      v22 = v19;
      goto LABEL_39;
    }

LABEL_40:
    if (!v13)
    {
      return 1;
    }

LABEL_41:
    free(v13);
    return 1;
  }

LABEL_22:
  *type = 0;
  if (v4 <= 0x3F)
  {
    *type = v4;
    v12 = 1;
LABEL_50:
    v24 = (v11 + v9);
    v25 = v10 - v5;
    v26 = v12;
    memcpy(v24, type, v12);
    if (v25 > 0x3F)
    {
      if (v25 >> 14)
      {
        if (v25 >> 30)
        {
          *type = bswap64(v25 | 0xC000000000000000);
          v27 = 8;
        }

        else
        {
          *type = bswap32(v25 | 0x80000000);
          v27 = 4;
        }
      }

      else
      {
        *type = bswap32(v25 | 0x4000) >> 16;
        v27 = 2;
      }
    }

    else
    {
      *type = v10 - v5;
      v27 = 1;
    }

    memcpy(&v24[v26], type, v27);
    v28 = v27 + v26;
    v29 = v5 - (v27 + v26);
    if (v5 > v28)
    {
      memmove(&v24[v28], &v24[v5], v25);
      nw_frame_claim(a2, v30, 0, v29);
    }

    return 1;
  }

  if (!(v4 >> 14))
  {
    *type = bswap32(v4 | 0x4000) >> 16;
    v12 = 2;
    goto LABEL_50;
  }

  if (!(v4 >> 30))
  {
    *type = bswap32(v4 | 0x80000000);
    v12 = 4;
    goto LABEL_50;
  }

  if (!(v4 >> 62))
  {
    *type = bswap64(v4 | 0xC000000000000000);
    v12 = 8;
    goto LABEL_50;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v38 = "_http_vle_encode";
  v39 = 2048;
  v40 = v4;
  v23 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v23);
  if (!result)
  {
    free(v23);
    v12 = 0;
    goto LABEL_50;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t nw_http_capsule_framer_parse_vle_value(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_capsule_framer_parse_vle_value";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v16 = "nw_http_capsule_framer_parse_vle_value";
      v7 = "%{public}s called with null framer";
LABEL_45:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_46;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_capsule_framer_parse_vle_value";
        v7 = "%{public}s called with null framer, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
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
        v16 = "nw_http_capsule_framer_parse_vle_value";
        v7 = "%{public}s called with null framer, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (!v9)
    {
      goto LABEL_32;
    }

    *buf = 136446466;
    v16 = "nw_http_capsule_framer_parse_vle_value";
    v17 = 2082;
    v18 = backtrace_string;
    v10 = "%{public}s called with null framer, dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    goto LABEL_32;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_capsule_framer_parse_vle_value";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v16 = "nw_http_capsule_framer_parse_vle_value";
      v7 = "%{public}s called with null value";
      goto LABEL_45;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_capsule_framer_parse_vle_value";
        v7 = "%{public}s called with null value, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
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
        v16 = "nw_http_capsule_framer_parse_vle_value";
        v7 = "%{public}s called with null value, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (!v11)
    {
      goto LABEL_32;
    }

    *buf = 136446466;
    v16 = "nw_http_capsule_framer_parse_vle_value";
    v17 = 2082;
    v18 = backtrace_string;
    v10 = "%{public}s called with null value, dumping backtrace:%{public}s";
    goto LABEL_31;
  }

  if (*a1 != -1 && a1[1] != -1)
  {
    buf[0] = 0;
    return nw_http_vle_decode_from_frames((a1 + 7), a2, a1 + 5, a3, buf, 0);
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http_capsule_framer_parse_vle_value";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_46;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_capsule_framer_parse_vle_value";
        v7 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_http_capsule_framer_parse_vle_value";
        v7 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_http_capsule_framer_parse_vle_value";
      v17 = 2082;
      v18 = backtrace_string;
      v10 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), dumping backtrace:%{public}s";
      goto LABEL_31;
    }

LABEL_32:
    free(backtrace_string);
    goto LABEL_46;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v16 = "nw_http_capsule_framer_parse_vle_value";
    v7 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer)";
    goto LABEL_45;
  }

LABEL_46:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

char *nw_service_connector_copy_connection_description(NWConcrete_nw_connection *a1)
{
  v1 = a1;
  v2 = nw_connection_copy_description(&v1->super);
  if (v2)
  {
    v3 = nw_connection_copy_current_path(&v1->super);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = _nw_path_copy_effective_local_endpoint(v5);

      if (v6)
      {
        v6 = v6;
        logging_description = _nw_endpoint_get_logging_description(v6);

        if (logging_description)
        {
          v9 = 0;
          asprintf(&v9, "%s local %s", v2, logging_description);
          free(v2);
          v2 = v9;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v2;
}

uint64_t nwsc_get_identifier(void *a1, unsigned __int8 *a2, _BYTE *a3, size_t a4)
{
  v7 = a1;
  endpoint_identifier = nwsc_get_endpoint_identifier(v7, a3, a4);
  if ((endpoint_identifier & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!a3)
  {
    v19 = __nwlog_obj();
    os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    v20 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v20);
    if (result)
    {
      goto LABEL_38;
    }

    free(v20);
  }

  v9 = &a3[a4];
  v10 = &asc_182C183DA[a4 - 2];
  v11 = a3;
  v12 = a4;
  while (*v11)
  {
    ++v11;
    --v10;
    if (!--v12)
    {
      if (v9)
      {
        goto LABEL_12;
      }

      v13 = __nwlog_obj();
      os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      v14 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v14);
      if (!result)
      {
        free(v14);
        goto LABEL_12;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  if (v12 >= 2)
  {
    *v11++ = 64;
  }

  *v11 = 0;
LABEL_12:
  if (a3)
  {
    if (a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = __nwlog_obj();
    os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    v22 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v22);
    if (result)
    {
      goto LABEL_38;
    }

    free(v22);
    if (a2)
    {
      goto LABEL_14;
    }
  }

  v23 = __nwlog_obj();
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  v24 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v24);
  if (result)
  {
    goto LABEL_38;
  }

  free(v24);
  do
  {
LABEL_14:
    if (!*a3)
    {
      if (a2)
      {
        if (a4 >= 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
        v26 = _os_log_send_and_compose_impl();

        result = __nwlog_should_abort(v26);
        if (result)
        {
          goto LABEL_38;
        }

        free(v26);
        if (a4 >= 2)
        {
LABEL_22:
          do
          {
            v18 = *a2;
            *a3 = v18;
            if (!v18)
            {
              goto LABEL_25;
            }

            ++a3;
            ++a2;
          }

          while (--a4 > 1);
        }
      }

      *a3 = 0;
      goto LABEL_25;
    }

    ++a3;
    --a4;
  }

  while (a4);
  if (!v9)
  {
    v27 = __nwlog_obj();
    os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    v28 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v28);
    if (!result)
    {
      free(v28);
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (a2)
  {
    goto LABEL_25;
  }

LABEL_18:
  v16 = __nwlog_obj();
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  v17 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v17);
  if (result)
  {
    goto LABEL_38;
  }

  free(v17);
LABEL_25:

  return endpoint_identifier;
}

uint64_t nwsc_get_endpoint_identifier(void *a1, _BYTE *a2, size_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1;
  bzero(a2, a3);
  if (nw_endpoint_get_type(v5) != (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    v8 = nw_endpoint_copy_address_string(v5);
    if (!v8)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v55 = "nwsc_get_endpoint_identifier";
        v56 = 2112;
        v57 = v5;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s Could not get address string from endpoint %@", buf, 0x16u);
      }

      goto LABEL_74;
    }

    if (!a2)
    {
      v38 = v8;
      v39 = __nwlog_obj();
      os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v55 = "_strict_strlcat";
      v40 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v40);
      if (result)
      {
        goto LABEL_101;
      }

      free(v40);
      v8 = v38;
    }

    v9 = &a2[a3];
    v10 = a2;
    v11 = a3;
    while (*v10)
    {
      ++v10;
      if (!--v11)
      {
        if (!v9)
        {
          v52 = v8;
          v12 = __nwlog_obj();
          os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          v55 = "_strict_strlcpy";
          v13 = _os_log_send_and_compose_impl();

          result = __nwlog_should_abort(v13);
          if (result)
          {
            goto LABEL_101;
          }

          free(v13);
          v8 = v52;
        }

        goto LABEL_33;
      }
    }

    if (v11 < 2)
    {
LABEL_32:
      *v10 = 0;
    }

    else
    {
      v21 = v8;
      while (1)
      {
        v22 = *v21;
        *v10 = v22;
        if (!v22)
        {
          break;
        }

        ++v10;
        ++v21;
        if (--v11 <= 1)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    free(v8);
    if (nw_endpoint_get_address_family(v5) == 30)
    {
      if (!a2)
      {
        v48 = __nwlog_obj();
        os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v55 = "_strict_strlcat";
        v49 = _os_log_send_and_compose_impl();

        result = __nwlog_should_abort(v49);
        if (result)
        {
          goto LABEL_101;
        }

        free(v49);
      }

      v23 = &asc_182C02BD9[a3 - 2];
      v24 = a2;
      v25 = a3;
      while (*v24)
      {
        ++v24;
        --v23;
        if (!--v25)
        {
          if (!v9)
          {
LABEL_45:
            v28 = __nwlog_obj();
            os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v55 = "_strict_strlcpy";
            v29 = _os_log_send_and_compose_impl();

            result = __nwlog_should_abort(v29);
            if (result)
            {
              goto LABEL_101;
            }

            free(v29);
          }

LABEL_65:
          v19 = nw_endpoint_copy_port_string(v5);
          if (v19)
          {
            if (!a2)
            {
              v53 = v19;
              v46 = __nwlog_obj();
              os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
              *buf = 136446210;
              v55 = "_strict_strlcat";
              v47 = _os_log_send_and_compose_impl();

              result = __nwlog_should_abort(v47);
              if (result)
              {
                goto LABEL_101;
              }

              free(v47);
              v19 = v53;
            }

            while (*a2)
            {
              ++a2;
              if (!--a3)
              {
                if (!v9)
                {
                  v32 = v19;
                  v33 = __nwlog_obj();
                  os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
                  *buf = 136446210;
                  v55 = "_strict_strlcpy";
                  v34 = _os_log_send_and_compose_impl();

                  result = __nwlog_should_abort(v34);
                  if (result)
                  {
                    goto LABEL_101;
                  }

                  free(v34);
                  v19 = v32;
                }

                goto LABEL_80;
              }
            }

            if (a3 < 2)
            {
LABEL_79:
              *a2 = 0;
            }

            else
            {
              v36 = v19;
              while (1)
              {
                v37 = *v36;
                *a2 = v37;
                if (!v37)
                {
                  break;
                }

                ++a2;
                ++v36;
                if (--a3 <= 1)
                {
                  goto LABEL_79;
                }
              }
            }

LABEL_80:
            free(v19);
LABEL_81:
            v35 = 1;
LABEL_82:

            return v35;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v55 = "nwsc_get_endpoint_identifier";
            v56 = 2112;
            v57 = v5;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s Could not get port string from endpoint %@", buf, 0x16u);
          }

LABEL_74:

          bzero(a2, a3);
          v35 = 0;
          goto LABEL_82;
        }
      }

      if (v25 >= 2)
      {
        v31 = 46;
LABEL_63:
        *v24++ = v31;
      }
    }

    else
    {
      if (!a2)
      {
        v50 = __nwlog_obj();
        os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v55 = "_strict_strlcat";
        v51 = _os_log_send_and_compose_impl();

        result = __nwlog_should_abort(v51);
        if (result)
        {
          goto LABEL_101;
        }

        free(v51);
      }

      v26 = &asc_182C04593[a3 - 2];
      v24 = a2;
      v27 = a3;
      while (*v24)
      {
        ++v24;
        --v26;
        if (!--v27)
        {
          if (!v9)
          {
            goto LABEL_45;
          }

          goto LABEL_65;
        }
      }

      if (v27 >= 2)
      {
        v31 = 58;
        goto LABEL_63;
      }
    }

    *v24 = 0;
    goto LABEL_65;
  }

  device_id = nw_endpoint_get_device_id(v5);
  if (device_id && *device_id)
  {
    if (!a2)
    {
      v43 = device_id;
      v44 = __nwlog_obj();
      os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v55 = "_strict_strlcat";
      v45 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v45);
      if (result)
      {
        goto LABEL_101;
      }

      free(v45);
      device_id = v43;
    }

    v7 = &a2[a3];
    while (*a2)
    {
      ++a2;
      if (!--a3)
      {
        if (v7)
        {
          goto LABEL_81;
        }

        goto LABEL_23;
      }
    }

    if (a3 < 2)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v30 = *device_id;
      *a2 = v30;
      if (!v30)
      {
        goto LABEL_81;
      }

      ++a2;
      ++device_id;
      if (--a3 <= 1)
      {
        goto LABEL_58;
      }
    }
  }

  if (!a2)
  {
    v41 = __nwlog_obj();
    os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v55 = "_strict_strlcat";
    v42 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v42);
    if (result)
    {
      goto LABEL_101;
    }

    free(v42);
  }

  v15 = &a2[a3];
  v16 = &aDefault_0[a3 - 2];
  do
  {
    if (!*a2)
    {
      if (a3 >= 2)
      {
        *a2 = 100;
        if (v16 == "default")
        {
          a2[1] = 0;
          goto LABEL_81;
        }

        a2[1] = 101;
        if (v16 == "efault")
        {
          a2[2] = 0;
          goto LABEL_81;
        }

        a2[2] = 102;
        if (v16 == "fault")
        {
          a2[3] = 0;
          goto LABEL_81;
        }

        a2[3] = 97;
        if (v16 == "ault")
        {
          a2[4] = 0;
          goto LABEL_81;
        }

        a2[4] = 117;
        if (v16 == "ult")
        {
          a2[5] = 0;
          goto LABEL_81;
        }

        a2[5] = 108;
        if (v16 == "lt")
        {
          a2[6] = 0;
          goto LABEL_81;
        }

        a2[6] = 116;
        a2 += 7;
      }

LABEL_58:
      *a2 = 0;
      goto LABEL_81;
    }

    ++a2;
    --v16;
    --a3;
  }

  while (a3);
  if (v15)
  {
    goto LABEL_81;
  }

LABEL_23:
  v17 = __nwlog_obj();
  os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v55 = "_strict_strlcpy";
  v18 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v18);
  if (!result)
  {
    v19 = v18;
    goto LABEL_80;
  }

LABEL_101:
  __break(1u);
  return result;
}

void sub_18281DB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = NWConcrete_nw_unique_connection_request;
  [(_Unwind_Exception *)&a14 dealloc];
  _Unwind_Resume(a1);
}

void sub_18281E58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = NWConcrete_nw_unique_connection;
  [(_Unwind_Exception *)&a14 dealloc];
  _Unwind_Resume(a1);
}

void sub_18281ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_service_connector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id nw_service_connector_create(int a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = nw_service_connector_create_inner(a1, v5, v6, 0);
    goto LABEL_3;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_service_connector_create";
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
        v20 = "nw_service_connector_create";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null (localPort != 0)", buf, 0xCu);
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
          v20 = "nw_service_connector_create";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null (localPort != 0), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_service_connector_create";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null (localPort != 0), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_service_connector_create";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null (localPort != 0), backtrace limit exceeded", buf, 0xCu);
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

id nw_service_connector_create_inner(unsigned __int16 a1, void *a2, void *a3, void *a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = objc_alloc_init(NWConcrete_nw_service_connector);
    v11 = v10;
    if (v10)
    {
      v10->uniqueID = atomic_fetch_add(&nw_service_connector_create_inner(unsigned short,NSObject  {objcproto16OS_nw_parameters}*,NSObject {objcproto17OS_dispatch_queue}*,NSObject {objcproto14OS_nw_endpoint}*)::sNWSCUniqueID, 1uLL);
      v10->state = 1;
      v10->localPortHBO = a1;
      objc_storeStrong(&v10->serviceConnectorQueue, a3);
      if (v7)
      {
        v12 = _nw_parameters_copy(v7);
      }

      else
      {
        v12 = 0;
      }

      clientParameters = v11->clientParameters;
      v11->clientParameters = v12;

      objc_storeStrong(&v11->endpoint, a4);
      v18 = _nw_array_create();
      pendingUnverifiedIncomingRequests = v11->pendingUnverifiedIncomingRequests;
      v11->pendingUnverifiedIncomingRequests = v18;

      v20 = nw_dictionary_create();
      pendingIncomingRequests = v11->pendingIncomingRequests;
      v11->pendingIncomingRequests = v20;

      if (v11->pendingIncomingRequests)
      {
        v22 = nw_dictionary_create();
        activeConnections = v11->activeConnections;
        v11->activeConnections = v22;

        if (!v11->activeConnections)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_create_inner";
          v14 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v94[0] = 0;
          if (!__nwlog_fault(v14, type, v94))
          {
            goto LABEL_78;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            v47 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_service_connector_create_inner";
              _os_log_impl(&dword_181A37000, v15, v47, "%{public}s nw_dictionary_create failed", buf, 0xCu);
            }
          }

          else if (v94[0] == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            if (backtrace_string)
            {
              v54 = backtrace_string;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v55 = gLogObj;
              v56 = type[0];
              if (os_log_type_enabled(v55, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_service_connector_create_inner";
                *&buf[12] = 2082;
                *&buf[14] = v54;
                _os_log_impl(&dword_181A37000, v55, v56, "%{public}s nw_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v54);
              if (!v14)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            v15 = __nwlog_obj();
            v73 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_service_connector_create_inner";
              _os_log_impl(&dword_181A37000, v15, v73, "%{public}s nw_dictionary_create failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            v62 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_service_connector_create_inner";
              _os_log_impl(&dword_181A37000, v15, v62, "%{public}s nw_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
            }
          }

          goto LABEL_77;
        }

        v24 = nw_dictionary_create();
        activeOutgoingRequests = v11->activeOutgoingRequests;
        v11->activeOutgoingRequests = v24;

        if (v11->activeOutgoingRequests)
        {
          v26 = nw_dictionary_create();
          activeListeners = v11->activeListeners;
          v11->activeListeners = v26;

          if (v11->activeListeners)
          {
            v28 = xpc_dictionary_create(0, 0, 0);
            remotePubKeys = v11->remotePubKeys;
            v11->remotePubKeys = v28;

            if (v11->remotePubKeys)
            {
              v30 = v11;
              error = 0;
              v31 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697AC10], 0x40000000uLL, &error);
              v32 = v31;
              if (v31)
              {
                v33 = *MEMORY[0x1E697AD88];
                v34 = *MEMORY[0x1E697AEC8];
                *type = *MEMORY[0x1E697AD68];
                v92 = v34;
                v35 = *MEMORY[0x1E697AED0];
                *buf = v33;
                *&buf[8] = v35;
                v93 = *MEMORY[0x1E697B2D0];
                v36 = *MEMORY[0x1E697ABC8];
                v89[0] = *MEMORY[0x1E697AD18];
                v89[1] = v36;
                v90[0] = MEMORY[0x1E695E110];
                v90[1] = v31;
                v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
                *&buf[16] = v37;
                v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:type count:3];

                CFRelease(v32);
                v39 = SecKeyCreateRandomKey(v38, &error);
                v30->localPrivKey = v39;
                if (v39)
                {
                  v40 = SecKeyCopyPublicBytes();
                  v84 = v40;
                  v85 = __nwlog_obj();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    *v94 = 136446466;
                    v95 = "nwsc_generate_keys";
                    v96 = 1024;
                    LODWORD(v97) = v84;
                    _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s SecKeyCopyPublicBytes failed with error %d", v94, 0x12u);
                  }

                  localPrivKey = v30->localPrivKey;
                  if (localPrivKey)
                  {
                    CFRelease(localPrivKey);
                    v30->localPrivKey = 0;
                  }
                }

                else
                {
                  v83 = __nwlog_obj();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    *v94 = 136446466;
                    v95 = "nwsc_generate_keys";
                    v96 = 2112;
                    v97 = error;
                    _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s SecKeyCreateRandomKey failed with error %@", v94, 0x16u);
                  }
                }
              }

              else
              {
                v38 = __nwlog_obj();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *v94 = 136446466;
                  v95 = "nwsc_generate_keys";
                  v96 = 2112;
                  v97 = error;
                  _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s SecAccessControlCreateWithFlags failed with error %@", v94, 0x16u);
                }
              }

              goto LABEL_80;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v63 = gLogObj;
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            v14 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v94[0] = 0;
            if (!__nwlog_fault(v14, type, v94))
            {
LABEL_78:
              if (!v14)
              {
LABEL_80:

                goto LABEL_81;
              }

LABEL_79:
              free(v14);
              goto LABEL_80;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v15 = __nwlog_obj();
              v64 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_service_connector_create_inner";
                _os_log_impl(&dword_181A37000, v15, v64, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
              }

LABEL_77:

              goto LABEL_78;
            }

            if (v94[0] != 1)
            {
              v15 = __nwlog_obj();
              v74 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_service_connector_create_inner";
                _os_log_impl(&dword_181A37000, v15, v74, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_77;
            }

            v66 = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v70 = type[0];
            v71 = os_log_type_enabled(v15, type[0]);
            if (!v66)
            {
              if (v71)
              {
                *buf = 136446210;
                *&buf[4] = "nw_service_connector_create_inner";
                _os_log_impl(&dword_181A37000, v15, v70, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
              }

              goto LABEL_77;
            }

            if (v71)
            {
              *buf = 136446466;
              *&buf[4] = "nw_service_connector_create_inner";
              *&buf[12] = 2082;
              *&buf[14] = v66;
              _os_log_impl(&dword_181A37000, v15, v70, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v58 = gLogObj;
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            v14 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v94[0] = 0;
            if (!__nwlog_fault(v14, type, v94))
            {
              goto LABEL_78;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              v59 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_service_connector_create_inner";
                _os_log_impl(&dword_181A37000, v15, v59, "%{public}s nw_dictionary_create failed", buf, 0xCu);
              }

              goto LABEL_77;
            }

            if (v94[0] != 1)
            {
              v15 = __nwlog_obj();
              v72 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_service_connector_create_inner";
                _os_log_impl(&dword_181A37000, v15, v72, "%{public}s nw_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_77;
            }

            v66 = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v67 = type[0];
            v68 = os_log_type_enabled(v15, type[0]);
            if (!v66)
            {
              if (v68)
              {
                *buf = 136446210;
                *&buf[4] = "nw_service_connector_create_inner";
                _os_log_impl(&dword_181A37000, v15, v67, "%{public}s nw_dictionary_create failed, no backtrace", buf, 0xCu);
              }

              goto LABEL_77;
            }

            if (v68)
            {
              *buf = 136446466;
              *&buf[4] = "nw_service_connector_create_inner";
              *&buf[12] = 2082;
              *&buf[14] = v66;
              _os_log_impl(&dword_181A37000, v15, v67, "%{public}s nw_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }
          }

          free(v66);
          if (!v14)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_create_inner";
        v14 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v94[0] = 0;
        if (!__nwlog_fault(v14, type, v94))
        {
          goto LABEL_78;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v52 = type[0];
          if (os_log_type_enabled(v15, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            _os_log_impl(&dword_181A37000, v15, v52, "%{public}s nw_dictionary_create failed", buf, 0xCu);
          }

          goto LABEL_77;
        }

        if (v94[0] != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v69 = type[0];
          if (os_log_type_enabled(v15, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            _os_log_impl(&dword_181A37000, v15, v69, "%{public}s nw_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_77;
        }

        v43 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v60 = type[0];
        v61 = os_log_type_enabled(v15, type[0]);
        if (!v43)
        {
          if (v61)
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            _os_log_impl(&dword_181A37000, v15, v60, "%{public}s nw_dictionary_create failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_77;
        }

        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_service_connector_create_inner";
          *&buf[12] = 2082;
          *&buf[14] = v43;
          _os_log_impl(&dword_181A37000, v15, v60, "%{public}s nw_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_create_inner";
        v14 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v94[0] = 0;
        if (!__nwlog_fault(v14, type, v94))
        {
          goto LABEL_78;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v42 = type[0];
          if (os_log_type_enabled(v15, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            _os_log_impl(&dword_181A37000, v15, v42, "%{public}s nw_dictionary_create failed", buf, 0xCu);
          }

          goto LABEL_77;
        }

        if (v94[0] != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v57 = type[0];
          if (os_log_type_enabled(v15, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            _os_log_impl(&dword_181A37000, v15, v57, "%{public}s nw_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_77;
        }

        v43 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v48 = type[0];
        v49 = os_log_type_enabled(v15, type[0]);
        if (!v43)
        {
          if (v49)
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_create_inner";
            _os_log_impl(&dword_181A37000, v15, v48, "%{public}s nw_dictionary_create failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_77;
        }

        if (v49)
        {
          *buf = 136446466;
          *&buf[4] = "nw_service_connector_create_inner";
          *&buf[12] = 2082;
          *&buf[14] = v43;
          _os_log_impl(&dword_181A37000, v15, v48, "%{public}s nw_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_service_connector_create_inner";
      v14 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v94[0] = 0;
      if (!__nwlog_fault(v14, type, v94))
      {
        goto LABEL_78;
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
          *&buf[4] = "nw_service_connector_create_inner";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [nw_service_connector_t init:] failed", buf, 0xCu);
        }

        goto LABEL_77;
      }

      if (v94[0] != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v50 = type[0];
        if (os_log_type_enabled(v15, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_create_inner";
          _os_log_impl(&dword_181A37000, v15, v50, "%{public}s [nw_service_connector_t init:] failed, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_77;
      }

      v43 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v44 = type[0];
      v45 = os_log_type_enabled(v15, type[0]);
      if (!v43)
      {
        if (v45)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_create_inner";
          _os_log_impl(&dword_181A37000, v15, v44, "%{public}s [nw_service_connector_t init:] failed, no backtrace", buf, 0xCu);
        }

        goto LABEL_77;
      }

      if (v45)
      {
        *buf = 136446466;
        *&buf[4] = "nw_service_connector_create_inner";
        *&buf[12] = 2082;
        *&buf[14] = v43;
        _os_log_impl(&dword_181A37000, v15, v44, "%{public}s [nw_service_connector_t init:] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v43);
    if (!v14)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v75 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_service_connector_create_inner";
  v76 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v94[0] = 0;
  if (__nwlog_fault(v76, type, v94))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (os_log_type_enabled(v77, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_create_inner";
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null queue", buf, 0xCu);
      }
    }

    else if (v94[0] == 1)
    {
      v79 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v80 = type[0];
      v81 = os_log_type_enabled(v77, type[0]);
      if (v79)
      {
        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_service_connector_create_inner";
          *&buf[12] = 2082;
          *&buf[14] = v79;
          _os_log_impl(&dword_181A37000, v77, v80, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        goto LABEL_135;
      }

      if (v81)
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_create_inner";
        _os_log_impl(&dword_181A37000, v77, v80, "%{public}s called with null queue, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v77 = __nwlog_obj();
      v82 = type[0];
      if (os_log_type_enabled(v77, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_create_inner";
        _os_log_impl(&dword_181A37000, v77, v82, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_135:
  if (v76)
  {
    free(v76);
  }

LABEL_81:

  return 0;
}

id nw_service_connector_create_with_endpoint(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_service_connector_create_with_endpoint";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v20, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v30 = "nw_service_connector_create_with_endpoint";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null local_endpoint", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v30 = "nw_service_connector_create_with_endpoint";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null local_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (v25)
        {
          *buf = 136446210;
          v30 = "nw_service_connector_create_with_endpoint";
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null local_endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v30 = "nw_service_connector_create_with_endpoint";
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null local_endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_31:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_11;
  }

  v8 = v5;
  v9 = _nw_endpoint_get_type(v8);

  if (v9 == 1 || (v10 = v8, v11 = _nw_endpoint_get_type(v10), v10, v11 == 6))
  {
    v12 = v8;
    v13 = _nw_endpoint_get_type(v12);

    if (v13 == 1)
    {
      v14 = v12;
      port = _nw_endpoint_get_port(v14);

      nw_service_connector_create(port, v6, v7);
    }

    else
    {
      nw_service_connector_create_inner(0, v6, v7, v12);
    }
    v16 = ;
    goto LABEL_12;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v30 = "nw_service_connector_create_with_endpoint";
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s invalid endpoint %@", buf, 0x16u);
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  return v16;
}

void nw_service_connector_set_service_available_block(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_service_connector_set_service_available_block";
    v8 = _os_log_send_and_compose_impl();

    v25 = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &v25, &v24))
    {
      goto LABEL_38;
    }

    if (v25 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nw_service_connector_set_service_available_block";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = v25;
      v15 = os_log_type_enabled(v9, v25);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_service_connector_set_service_available_block";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v8);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nw_service_connector_set_service_available_block";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nw_service_connector_set_service_available_block";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = v3[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_service_connector_set_service_available_block_block_invoke;
    block[3] = &unk_1E6A3D710;
    v22 = v3;
    v23 = v5;
    dispatch_async(v6, block);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_service_connector_set_service_available_block";
  v8 = _os_log_send_and_compose_impl();

  v25 = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &v25, &v24))
  {
    goto LABEL_38;
  }

  if (v25 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nw_service_connector_set_service_available_block";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null serviceAvailableBlock", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v9 = __nwlog_obj();
    v20 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nw_service_connector_set_service_available_block";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null serviceAvailableBlock, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = v25;
  v18 = os_log_type_enabled(v9, v25);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nw_service_connector_set_service_available_block";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null serviceAvailableBlock, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nw_service_connector_set_service_available_block";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null serviceAvailableBlock, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_service_connector_set_service_available_block_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void nw_service_connector_start(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_service_connector_start_block_invoke;
    block[3] = &unk_1E6A3D868;
    v13 = v1;
    dispatch_async(v3, block);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_service_connector_start";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_service_connector_start";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_service_connector_start";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_service_connector_start";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_service_connector_start";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void __nw_service_connector_start_block_invoke(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16) != 4)
  {
    v9 = *(v2 + 50);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = *(a1 + 32);
      *buf = 136446466;
      v99 = "nw_service_connector_start_block_invoke";
      v100 = 2114;
      v101 = v12;
      v13 = "%{public}s %{public}@ restarting";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      v18 = *(a1 + 32);
      *buf = 136446466;
      v99 = "nw_service_connector_start_block_invoke";
      v100 = 2114;
      v101 = v18;
      v13 = "%{public}s Client starting %{public}@";
    }

    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
LABEL_19:

    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    if (v20 != 1)
    {
      if (v20 == 2)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 32);
          *buf = 136446466;
          v99 = "nw_service_connector_start_block_invoke";
          v100 = 2114;
          v101 = v22;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Service connector already started", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1 + 32);
          *buf = 136446466;
          v99 = "nw_service_connector_start_block_invoke";
          v100 = 2114;
          v101 = v35;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Service connector could not be started", buf, 0x16u);
        }
      }

      return;
    }

    v23 = *(v19 + 136);
    if (v23)
    {
      v24 = v23;
      v25 = _nw_endpoint_get_type(v24);

      if (v25 == 6)
      {
        v26 = objc_alloc_init(NWConcrete_nw_unique_connection_request);
        objc_storeStrong(&v26->endpoint, *(*(a1 + 32) + 136));
        objc_storeStrong(&v26->userParameters, *(*(a1 + 32) + 24));
        if (!v26->userParameters)
        {
          application_service_quic = nw_parameters_create_application_service_quic();
          userParameters = v26->userParameters;
          v26->userParameters = application_service_quic;
        }

        nwsc_start_asquic_listener_for_request(*(a1 + 32), v26);
        *(*(a1 + 32) + 16) = 2;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 32);
          v31 = v30[152];
          v32 = v30[153];
          v33 = v30[154];
          v34 = v30[155];
          *buf = 136447490;
          v99 = "nw_service_connector_start_block_invoke";
          v100 = 2114;
          v101 = v30;
          v102 = 1024;
          *v103 = v31;
          *&v103[4] = 1024;
          *&v103[6] = v32;
          LOWORD(v104) = 1024;
          *(&v104 + 2) = v33;
          HIWORD(v104) = 1024;
          v105 = v34;
          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Listener started, localPubKeyStart %02x%02x%02x%02x", buf, 0x2Eu);
        }

        return;
      }

      v19 = *(a1 + 32);
    }

    *type = 7708;
    v93 = bswap32(*(v19 + 48)) >> 16;
    v94 = 0;
    v95 = *MEMORY[0x1E69E99B8];
    v96 = 0;
    address = _nw_endpoint_create_address(type);
    if (address)
    {
      v39 = *(*(a1 + 32) + 24);
      if (v39)
      {
        v40 = v39;
        _nw_parameters_set_data_mode(v40, 2);
        _nw_parameters_set_allow_socket_access(v40, 1);
        _nw_parameters_set_tfo(v40, 1);
        goto LABEL_52;
      }

      v46 = &__block_literal_global_51928;
      v47 = _Block_copy(&__block_literal_global_51928);
      legacy_tcp_socket = _nw_parameters_create_legacy_tcp_socket(v47);

      v40 = legacy_tcp_socket;
      if (legacy_tcp_socket)
      {
LABEL_52:
        _nw_parameters_set_local_endpoint(v40, address);
        _nw_parameters_set_always_open_listener_socket(v40, 1);
        v49 = *(*(a1 + 32) + 8);
        if (v49)
        {
          nw_listener_cancel(v49);
          v50 = *(a1 + 32);
          v51 = *(v50 + 8);
          *(v50 + 8) = 0;
        }

        v52 = nw_listener_create(v40);
        if (v52)
        {
          objc_storeStrong((*(a1 + 32) + 8), v52);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = *(a1 + 32);
            v55 = v54[1];
            *buf = 136446978;
            v99 = "nw_service_connector_start_block_invoke";
            v100 = 2114;
            v101 = v54;
            v102 = 2048;
            *v103 = v55;
            *&v103[8] = 2112;
            v104 = v55;
            _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Created listener<%p> %@", buf, 0x2Au);
          }

          v56 = *(a1 + 32);
          v57 = v56[1];
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __nw_service_connector_start_block_invoke_105;
          handler[3] = &unk_1E6A34998;
          v89 = v56;
          v58 = v52;
          v90 = v58;
          nw_listener_set_new_connection_handler(v57, handler);
          v59 = *(a1 + 32);
          v60 = v59[1];
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __nw_service_connector_start_block_invoke_107;
          v85[3] = &unk_1E6A3D958;
          v86 = v59;
          v87 = v58;
          nw_listener_set_state_changed_handler(v60, v85);
          nw_listener_set_queue(*(*(a1 + 32) + 8), *(*(a1 + 32) + 32));
          nw_listener_start(*(*(a1 + 32) + 8));
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v61 = gLogObj;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = *(a1 + 32);
            v63 = v62[152];
            v64 = v62[153];
            v65 = v62[154];
            v66 = v62[155];
            *buf = 136447490;
            v99 = "nw_service_connector_start_block_invoke";
            v100 = 2114;
            v101 = v62;
            v102 = 1024;
            *v103 = v63;
            *&v103[4] = 1024;
            *&v103[6] = v64;
            LOWORD(v104) = 1024;
            *(&v104 + 2) = v65;
            HIWORD(v104) = 1024;
            v105 = v66;
            _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Listener started, localPubKeyStart %02x%02x%02x%02x", buf, 0x2Eu);
          }

LABEL_103:
LABEL_109:

          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        *buf = 136446210;
        v99 = "nw_service_connector_start_block_invoke";
        v68 = _os_log_send_and_compose_impl();

        v97 = OS_LOG_TYPE_ERROR;
        v91 = 0;
        if (__nwlog_fault(v68, &v97, &v91))
        {
          if (v97 == OS_LOG_TYPE_FAULT)
          {
            v69 = __nwlog_obj();
            v70 = v97;
            if (os_log_type_enabled(v69, v97))
            {
              *buf = 136446210;
              v99 = "nw_service_connector_start_block_invoke";
              _os_log_impl(&dword_181A37000, v69, v70, "%{public}s nw_listener_create failed", buf, 0xCu);
            }
          }

          else if (v91 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v69 = __nwlog_obj();
            v75 = v97;
            v76 = os_log_type_enabled(v69, v97);
            if (backtrace_string)
            {
              if (v76)
              {
                *buf = 136446466;
                v99 = "nw_service_connector_start_block_invoke";
                v100 = 2082;
                v101 = backtrace_string;
                _os_log_impl(&dword_181A37000, v69, v75, "%{public}s nw_listener_create failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_101;
            }

            if (v76)
            {
              *buf = 136446210;
              v99 = "nw_service_connector_start_block_invoke";
              _os_log_impl(&dword_181A37000, v69, v75, "%{public}s nw_listener_create failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v69 = __nwlog_obj();
            v80 = v97;
            if (os_log_type_enabled(v69, v97))
            {
              *buf = 136446210;
              v99 = "nw_service_connector_start_block_invoke";
              _os_log_impl(&dword_181A37000, v69, v80, "%{public}s nw_listener_create failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_101:
        if (v68)
        {
          free(v68);
        }

        goto LABEL_103;
      }

      v78 = __nwlog_obj();
      *buf = 136446210;
      v99 = "nw_service_connector_start_block_invoke_2";
      v43 = _os_log_send_and_compose_impl();

      v97 = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v43, &v97, &v91))
      {
        goto LABEL_107;
      }

      if (v97 == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v79 = v97;
        if (os_log_type_enabled(v44, v97))
        {
          *buf = 136446210;
          v99 = "nw_service_connector_start_block_invoke";
          _os_log_impl(&dword_181A37000, v44, v79, "%{public}s nw_parameters_create failed", buf, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        v81 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v82 = v97;
        v83 = os_log_type_enabled(v44, v97);
        if (v81)
        {
          if (v83)
          {
            *buf = 136446466;
            v99 = "nw_service_connector_start_block_invoke";
            v100 = 2082;
            v101 = v81;
            _os_log_impl(&dword_181A37000, v44, v82, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v81);
          if (!v43)
          {
            goto LABEL_109;
          }

          goto LABEL_108;
        }

        if (v83)
        {
          *buf = 136446210;
          v99 = "nw_service_connector_start_block_invoke";
          _os_log_impl(&dword_181A37000, v44, v82, "%{public}s nw_parameters_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v84 = v97;
        if (os_log_type_enabled(v44, v97))
        {
          *buf = 136446210;
          v99 = "nw_service_connector_start_block_invoke";
          _os_log_impl(&dword_181A37000, v44, v84, "%{public}s nw_parameters_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      *buf = 136446210;
      v99 = "nw_service_connector_start_block_invoke";
      v43 = _os_log_send_and_compose_impl();

      v97 = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v43, &v97, &v91))
      {
        goto LABEL_107;
      }

      if (v97 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = v97;
        if (os_log_type_enabled(v44, v97))
        {
          *buf = 136446210;
          v99 = "nw_service_connector_start_block_invoke";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s nw_endpoint_create_address failed", buf, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        v71 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v72 = v97;
        v73 = os_log_type_enabled(v44, v97);
        if (v71)
        {
          if (v73)
          {
            *buf = 136446466;
            v99 = "nw_service_connector_start_block_invoke";
            v100 = 2082;
            v101 = v71;
            _os_log_impl(&dword_181A37000, v44, v72, "%{public}s nw_endpoint_create_address failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v71);
LABEL_107:
          if (!v43)
          {
            goto LABEL_109;
          }

LABEL_108:
          free(v43);
          goto LABEL_109;
        }

        if (v73)
        {
          *buf = 136446210;
          v99 = "nw_service_connector_start_block_invoke";
          _os_log_impl(&dword_181A37000, v44, v72, "%{public}s nw_endpoint_create_address failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v77 = v97;
        if (os_log_type_enabled(v44, v97))
        {
          *buf = 136446210;
          v99 = "nw_service_connector_start_block_invoke";
          _os_log_impl(&dword_181A37000, v44, v77, "%{public}s nw_endpoint_create_address failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_107;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = *(a1 + 32);
  *buf = 136446466;
  v99 = "nw_service_connector_start_block_invoke";
  v100 = 2114;
  v101 = v4;
  v5 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v97 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v5, type, &v97))
  {
    goto LABEL_44;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type[0];
    if (os_log_type_enabled(v6, type[0]))
    {
      v8 = *(a1 + 32);
      *buf = 136446466;
      v99 = "nw_service_connector_start_block_invoke";
      v100 = 2114;
      v101 = v8;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s %{public}@ already cancelled", buf, 0x16u);
    }

LABEL_43:

LABEL_44:
    if (!v5)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v97 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v36 = type[0];
    if (os_log_type_enabled(v6, type[0]))
    {
      v37 = *(a1 + 32);
      *buf = 136446466;
      v99 = "nw_service_connector_start_block_invoke";
      v100 = 2114;
      v101 = v37;
      _os_log_impl(&dword_181A37000, v6, v36, "%{public}s %{public}@ already cancelled, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_43;
  }

  v14 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v15 = type[0];
  v16 = os_log_type_enabled(v6, type[0]);
  if (!v14)
  {
    if (v16)
    {
      v41 = *(a1 + 32);
      *buf = 136446466;
      v99 = "nw_service_connector_start_block_invoke";
      v100 = 2114;
      v101 = v41;
      _os_log_impl(&dword_181A37000, v6, v15, "%{public}s %{public}@ already cancelled, no backtrace", buf, 0x16u);
    }

    goto LABEL_43;
  }

  if (v16)
  {
    v17 = *(a1 + 32);
    *buf = 136446722;
    v99 = "nw_service_connector_start_block_invoke";
    v100 = 2114;
    v101 = v17;
    v102 = 2082;
    *v103 = v14;
    _os_log_impl(&dword_181A37000, v6, v15, "%{public}s %{public}@ already cancelled, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v14);
  if (v5)
  {
LABEL_45:
    free(v5);
  }
}

void nwsc_start_asquic_listener_for_request(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nwsc_start_asquic_listener_for_request";
    v19 = _os_log_send_and_compose_impl();

    LOBYTE(location) = 16;
    v52 = 0;
    if (!__nwlog_fault(v19, &location, &v52))
    {
      goto LABEL_60;
    }

    if (location == 17)
    {
      v20 = __nwlog_obj();
      v21 = location;
      if (os_log_type_enabled(v20, location))
      {
        *buf = 136446210;
        v54 = "nwsc_start_asquic_listener_for_request";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v25 = location;
      v26 = os_log_type_enabled(v20, location);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v54 = "nwsc_start_asquic_listener_for_request";
          v55 = 2082;
          v56 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_60:
        if (!v19)
        {
          goto LABEL_16;
        }

LABEL_61:
        free(v19);
        goto LABEL_16;
      }

      if (v26)
      {
        *buf = 136446210;
        v54 = "nwsc_start_asquic_listener_for_request";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v34 = location;
      if (os_log_type_enabled(v20, location))
      {
        *buf = 136446210;
        v54 = "nwsc_start_asquic_listener_for_request";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_59:

    goto LABEL_60;
  }

  if (v4)
  {
    v6 = v4->endpoint;
    application_service_name = nw_endpoint_get_application_service_name(v6);
    v8 = nw_dictionary_copy_value(v3->activeListeners, application_service_name);
    if (v8)
    {
      v9 = v8;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v54 = "nwsc_start_asquic_listener_for_request";
        v55 = 2114;
        v56 = v3;
        v57 = 2112;
        v58 = v5;
        v59 = 2112;
        v60 = v9;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ request %@ already has a listener %@", buf, 0x2Au);
      }

LABEL_15:

      goto LABEL_16;
    }

    v41 = xpc_string_create(application_service_name);
    v11 = _nw_parameters_copy(v5->userParameters);
    v12 = v11;
    if (v11)
    {
      nwsc_add_preferred_agent_to_parameters(v11, "ASListener");
      _nw_parameters_set_local_only(v12, 0);
      _nw_parameters_set_multipath_service(v12, 1);
LABEL_8:

      v9 = nw_listener_create(v12);
      device_id = nw_endpoint_get_device_id(v5->endpoint);
      if (device_id)
      {
        nw_listener_set_device_id(v9, device_id);
      }

      nw_listener_set_queue(v9, v3->serviceConnectorQueue);
      if (nw_utilities_get_self_name::onceToken != -1)
      {
        dispatch_once(&nw_utilities_get_self_name::onceToken, &__block_literal_global_11_47232);
      }

      v40 = nw_advertise_descriptor_create_application_service_with_bundle_id(application_service_name, nw_utilities_get_self_name::name);
      nw_listener_set_advertise_descriptor(v9, v40);
      objc_initWeak(buf, v3);
      objc_initWeak(&location, v9);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL38nwsc_start_asquic_listener_for_requestP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke;
      handler[3] = &unk_1E6A34BF0;
      objc_copyWeak(&v49, buf);
      v14 = v41;
      v48 = v14;
      objc_copyWeak(&v50, &location);
      nw_listener_set_new_connection_group_handler(v9, handler);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = ___ZL38nwsc_start_asquic_listener_for_requestP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_228;
      v42[3] = &unk_1E6A34BC8;
      objc_copyWeak(&v45, buf);
      objc_copyWeak(&v46, &location);
      v10 = v14;
      v43 = v10;
      v15 = v3;
      v44 = v15;
      nw_listener_set_state_changed_handler(v9, v42);
      nw_listener_set_require_authorized_keys_for_inbound(v9, 1);
      nw_listener_start(v9);
      nw_dictionary_set_value(v3->activeListeners, application_service_name, v9);
      if (!v15->activeConnectionGroups)
      {
        v16 = _nw_array_create();
        activeConnectionGroups = v15->activeConnectionGroups;
        v15->activeConnectionGroups = v16;
      }

      objc_destroyWeak(&v46);
      objc_destroyWeak(&v45);
      objc_destroyWeak(&v50);

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      goto LABEL_15;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nwsc_update_parameters_for_asquic_listener";
    v31 = _os_log_send_and_compose_impl();

    LOBYTE(location) = 16;
    v52 = 0;
    if (__nwlog_fault(v31, &location, &v52))
    {
      if (location == 17)
      {
        v32 = __nwlog_obj();
        v33 = location;
        if (os_log_type_enabled(v32, location))
        {
          *buf = 136446210;
          v54 = "nwsc_update_parameters_for_asquic_listener";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        type = location;
        v37 = os_log_type_enabled(v32, location);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446466;
            v54 = "nwsc_update_parameters_for_asquic_listener";
            v55 = 2082;
            v56 = v36;
            _os_log_impl(&dword_181A37000, v32, type, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_68;
        }

        if (v37)
        {
          *buf = 136446210;
          v54 = "nwsc_update_parameters_for_asquic_listener";
          _os_log_impl(&dword_181A37000, v32, type, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v38 = location;
        if (os_log_type_enabled(v32, location))
        {
          *buf = 136446210;
          v54 = "nwsc_update_parameters_for_asquic_listener";
          _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_68:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_8;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v54 = "nwsc_start_asquic_listener_for_request";
  v19 = _os_log_send_and_compose_impl();

  LOBYTE(location) = 16;
  v52 = 0;
  if (!__nwlog_fault(v19, &location, &v52))
  {
    goto LABEL_60;
  }

  if (location == 17)
  {
    v20 = __nwlog_obj();
    v23 = location;
    if (os_log_type_enabled(v20, location))
    {
      *buf = 136446210;
      v54 = "nwsc_start_asquic_listener_for_request";
      _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null request", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (v52 != 1)
  {
    v20 = __nwlog_obj();
    v35 = location;
    if (os_log_type_enabled(v20, location))
    {
      *buf = 136446210;
      v54 = "nwsc_start_asquic_listener_for_request";
      _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v27 = __nw_create_backtrace_string();
  v20 = __nwlog_obj();
  v28 = location;
  v29 = os_log_type_enabled(v20, location);
  if (!v27)
  {
    if (v29)
    {
      *buf = 136446210;
      v54 = "nwsc_start_asquic_listener_for_request";
      _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null request, no backtrace", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (v29)
  {
    *buf = 136446466;
    v54 = "nwsc_start_asquic_listener_for_request";
    v55 = 2082;
    v56 = v27;
    _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v27);
  if (v19)
  {
    goto LABEL_61;
  }

LABEL_16:
}

void sub_18282302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v37 + 56));
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak((v35 + 48));

  objc_destroyWeak((v35 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v38 - 176));

  _Unwind_Resume(a1);
}

void __nw_service_connector_start_block_invoke_105(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 16) == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v15 = 136446722;
      v16 = "nw_service_connector_start_block_invoke";
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v4;
      v8 = "%{public}s %{public}@ already cancelled, ignoring new connection %{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
LABEL_7:
      _os_log_impl(&dword_181A37000, v9, v10, v8, &v15, v11);
    }
  }

  else
  {
    if (*(v5 + 8) == *(a1 + 40))
    {
      nw_connection_set_state_changed_handler(v3, 0);
      nw_connection_set_queue(v4, *(*(a1 + 32) + 32));
      nw_connection_start(v4);
      nw_service_connector_should_accept_connection(*(a1 + 32), v4, 1, 0);
      goto LABEL_9;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(v12 + 8);
      v15 = 136447234;
      v16 = "nw_service_connector_start_block_invoke";
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v4;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v13;
      v8 = "%{public}s %{public}@ Ignoring new connection %{public}@ for stale listener (%p != %p)";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 52;
      goto LABEL_7;
    }
  }

  nw_connection_cancel(v4);
LABEL_9:
}

void __nw_service_connector_start_block_invoke_107(uint64_t a1, unsigned int a2, void *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    if (a2 > 4)
    {
      v8 = "<unknown>";
    }

    else
    {
      v8 = off_1E6A2E220[a2];
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 136447234;
    *&buf[4] = "nw_service_connector_start_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v84 = v10;
    *v85 = 2082;
    *&v85[2] = v8;
    *&v85[10] = 2114;
    *&v85[12] = v5;
    v12 = "%{public}s %{public}@ Listener(%p) entered state %{public}s with error %{public}@";
    v13 = v6;
    v14 = 52;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    if (a2 > 4)
    {
      v9 = "<unknown>";
    }

    else
    {
      v9 = off_1E6A2E220[a2];
    }

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 136446978;
    *&buf[4] = "nw_service_connector_start_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    v84 = v15;
    *v85 = 2082;
    *&v85[2] = v9;
    v12 = "%{public}s %{public}@ Listener(%p) entered state %{public}s";
    v13 = v6;
    v14 = 42;
  }

  _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_13:

  v17 = *(a1 + 32);
  v18 = *(v17 + 16);
  if (v18 == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 136446466;
      *&buf[4] = "nw_service_connector_start_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, ignoring listener state change", buf, 0x16u);
    }

LABEL_16:

    goto LABEL_60;
  }

  if (*(v17 + 8) != *(a1 + 40))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(v21 + 8);
      *buf = 136446978;
      *&buf[4] = "nw_service_connector_start_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      v84 = v23;
      *v85 = 2048;
      *&v85[2] = v22;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Ignoring state update for stale listener (%p != %p)", buf, 0x2Au);
    }

    goto LABEL_16;
  }

  if (a2 == 4)
  {
    v40 = 4;
LABEL_59:
    *(v17 + 16) = v40;
    goto LABEL_60;
  }

  if (a2 == 3)
  {
    error_code = nw_error_get_error_code(v5);
    v17 = *(a1 + 32);
    if (error_code != 48)
    {
LABEL_58:
      v40 = 3;
      goto LABEL_59;
    }

    v30 = *(v17 + 50);
    if (v30 <= 4)
    {
      *(v17 + 50) = v30 + 1;
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 32);
        *buf = 136446466;
        *&buf[4] = "nw_service_connector_start_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ scheduling a retry as the address is in use", buf, 0x16u);
      }

      v34 = *(a1 + 32);
      v35 = v34[7];
      if (v35)
      {
        nw_queue_cancel_source(v35, v33);
        *(*(a1 + 32) + 56) = 0;
        v34 = *(a1 + 32);
      }

      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __nw_service_connector_start_block_invoke_108;
      v73[3] = &unk_1E6A3D868;
      v74 = v34;
      *(*(a1 + 32) + 56) = nw_queue_context_create_source(0, 2, 3, 0, v73, 0);
      v36 = *(a1 + 32);
      v37 = *(v36 + 56);
      v38 = dispatch_time(0x8000000000000000, 200000000 * *(v36 + 50));
      nw_queue_set_timer_values(v37, v38, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      nw_queue_activate_source(*(*(a1 + 32) + 56), v39);

      goto LABEL_60;
    }

    v41 = __nwlog_obj();
    v42 = *(a1 + 32);
    v43 = *(v42 + 50);
    *buf = 136446978;
    *&buf[4] = "nw_service_connector_start_block_invoke_2";
    *&buf[12] = 2114;
    *&buf[14] = v42;
    *&buf[22] = 2114;
    v84 = v5;
    *v85 = 1024;
    *&v85[2] = v43;
    v44 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock[0]) = 0;
    if (__nwlog_fault(v44, type, aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (os_log_type_enabled(v45, type[0]))
        {
          v47 = *(a1 + 32);
          v48 = *(v47 + 50);
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_start_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v47;
          *&buf[22] = 2114;
          v84 = v5;
          *v85 = 1024;
          *&v85[2] = v48;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s %{public}@ Listener failed to become ready due to error %{public}@ after %d retries", buf, 0x26u);
        }
      }

      else if (LOBYTE(aBlock[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v50 = type[0];
        v51 = os_log_type_enabled(v45, type[0]);
        if (backtrace_string)
        {
          if (v51)
          {
            v52 = *(a1 + 32);
            v53 = *(v52 + 50);
            *buf = 136447234;
            *&buf[4] = "nw_service_connector_start_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v52;
            *&buf[22] = 2114;
            v84 = v5;
            *v85 = 1024;
            *&v85[2] = v53;
            *&v85[6] = 2082;
            *&v85[8] = backtrace_string;
            _os_log_impl(&dword_181A37000, v45, v50, "%{public}s %{public}@ Listener failed to become ready due to error %{public}@ after %d retries, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(backtrace_string);
          goto LABEL_55;
        }

        if (v51)
        {
          v57 = *(a1 + 32);
          v58 = *(v57 + 50);
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_start_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v57;
          *&buf[22] = 2114;
          v84 = v5;
          *v85 = 1024;
          *&v85[2] = v58;
          _os_log_impl(&dword_181A37000, v45, v50, "%{public}s %{public}@ Listener failed to become ready due to error %{public}@ after %d retries, no backtrace", buf, 0x26u);
        }
      }

      else
      {
        v45 = __nwlog_obj();
        v54 = type[0];
        if (os_log_type_enabled(v45, type[0]))
        {
          v55 = *(a1 + 32);
          v56 = *(v55 + 50);
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_start_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v55;
          *&buf[22] = 2114;
          v84 = v5;
          *v85 = 1024;
          *&v85[2] = v56;
          _os_log_impl(&dword_181A37000, v45, v54, "%{public}s %{public}@ Listener failed to become ready due to error %{public}@ after %d retries, backtrace limit exceeded", buf, 0x26u);
        }
      }
    }

LABEL_55:
    if (v44)
    {
      free(v44);
    }

    v17 = *(a1 + 32);
    goto LABEL_58;
  }

  if (a2 == 2 && v18 != 2)
  {
    *(v17 + 16) = 2;
    v24 = *(a1 + 32);
    v25 = v24;
    if (v24)
    {
      v26 = v24[12];
      if (v26)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v84 = __Block_byref_object_copy__51955;
        *v85 = __Block_byref_object_dispose__51956;
        *&v85[8] = 0;
        *type = MEMORY[0x1E69E9820];
        v78 = 3221225472;
        v79 = ___ZL49nwsc_start_outgoing_requests_waiting_for_listenerP31NWConcrete_nw_service_connector_block_invoke;
        v80 = &unk_1E6A3BF70;
        v27 = v24;
        v81 = v27;
        v82 = buf;
        nw_dictionary_apply(v26, type);
        v28 = *(*&buf[8] + 40);
        if (v28)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___ZL49nwsc_start_outgoing_requests_waiting_for_listenerP31NWConcrete_nw_service_connector_block_invoke_189;
          aBlock[3] = &unk_1E6A3CCB8;
          v76 = v27;
          _nw_array_apply(v28, aBlock);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_30;
      }

      v63 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
      v60 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(aBlock[0]) = 0;
      if (__nwlog_fault(v60, type, aBlock))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v61 = __nwlog_obj();
          v64 = type[0];
          if (os_log_type_enabled(v61, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
            _os_log_impl(&dword_181A37000, v61, v64, "%{public}s called with null serviceConnector->activeOutgoingRequests", buf, 0xCu);
          }
        }

        else if (LOBYTE(aBlock[0]) == 1)
        {
          v68 = __nw_create_backtrace_string();
          v61 = __nwlog_obj();
          v69 = type[0];
          v70 = os_log_type_enabled(v61, type[0]);
          if (v68)
          {
            if (v70)
            {
              *buf = 136446466;
              *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
              *&buf[12] = 2082;
              *&buf[14] = v68;
              _os_log_impl(&dword_181A37000, v61, v69, "%{public}s called with null serviceConnector->activeOutgoingRequests, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v68);
            if (!v60)
            {
              goto LABEL_30;
            }

            goto LABEL_95;
          }

          if (v70)
          {
            *buf = 136446210;
            *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
            _os_log_impl(&dword_181A37000, v61, v69, "%{public}s called with null serviceConnector->activeOutgoingRequests, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v61 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v61, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
            _os_log_impl(&dword_181A37000, v61, v72, "%{public}s called with null serviceConnector->activeOutgoingRequests, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_93;
      }

LABEL_94:
      if (!v60)
      {
LABEL_30:

        goto LABEL_60;
      }

LABEL_95:
      free(v60);
      goto LABEL_30;
    }

    v59 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
    v60 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock[0]) = 0;
    if (!__nwlog_fault(v60, type, aBlock))
    {
      goto LABEL_94;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
        _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (LOBYTE(aBlock[0]) == 1)
    {
      v65 = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v66 = type[0];
      v67 = os_log_type_enabled(v61, type[0]);
      if (v65)
      {
        if (v67)
        {
          *buf = 136446466;
          *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
          *&buf[12] = 2082;
          *&buf[14] = v65;
          _os_log_impl(&dword_181A37000, v61, v66, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v65);
        goto LABEL_94;
      }

      if (v67)
      {
        *buf = 136446210;
        *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
        _os_log_impl(&dword_181A37000, v61, v66, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v61 = __nwlog_obj();
      v71 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nwsc_start_outgoing_requests_waiting_for_listener";
        _os_log_impl(&dword_181A37000, v61, v71, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_93:

    goto LABEL_94;
  }

LABEL_60:
}

uint64_t __Block_byref_object_copy__51955(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZL49nwsc_start_outgoing_requests_waiting_for_listenerP31NWConcrete_nw_service_connector_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v4[616] &= ~8u;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v15 = 136446722;
    v16 = "nwsc_start_outgoing_requests_waiting_for_listener_block_invoke";
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ starting connection for request %{public}@ due to listener ready", &v15, 0x20u);
  }

  v7 = nwsc_request_create_and_start_connection_inner(*(a1 + 32), v4, 0);
  v8 = v7 == 0;

  if (v8)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (!v9)
    {
      v10 = _nw_array_create();
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 40) + 8) + 40);
    }

    if (v9)
    {
      v13 = v4 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      _nw_array_append(v9, v4);
    }
  }

  return 1;
}

uint64_t ___ZL49nwsc_start_outgoing_requests_waiting_for_listenerP31NWConcrete_nw_service_connector_block_invoke_189(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  nw_service_connector_trigger_request_complete_block_inner(*(a1 + 32), v4, 0, 0, 12);
  nw_service_connector_remove_active_outgoing_request(*(a1 + 32), v4);

  return 1;
}

void nw_service_connector_trigger_request_complete_block_inner(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (v10 && v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446722;
    v49 = "nw_service_connector_trigger_request_complete_block_inner";
    v50 = 2114;
    *v51 = v9;
    *&v51[8] = 2114;
    *&v51[10] = v10;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v14, &type, &v46))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446722;
        v49 = "nw_service_connector_trigger_request_complete_block_inner";
        v50 = 2114;
        *v51 = v9;
        *&v51[8] = 2114;
        *&v51[10] = v10;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s %{public}@ cannot call this with both request %{public}@ and otherRequestBlock", buf, 0x20u);
      }
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v23 = type;
      v24 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446978;
          v49 = "nw_service_connector_trigger_request_complete_block_inner";
          v50 = 2114;
          *v51 = v9;
          *&v51[8] = 2114;
          *&v51[10] = v10;
          v52 = 2082;
          v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s %{public}@ cannot call this with both request %{public}@ and otherRequestBlock, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
        if (v14)
        {
          goto LABEL_56;
        }

        goto LABEL_64;
      }

      if (v24)
      {
        *buf = 136446722;
        v49 = "nw_service_connector_trigger_request_complete_block_inner";
        v50 = 2114;
        *v51 = v9;
        *&v51[8] = 2114;
        *&v51[10] = v10;
        _os_log_impl(&dword_181A37000, v15, v23, "%{public}s %{public}@ cannot call this with both request %{public}@ and otherRequestBlock, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446722;
        v49 = "nw_service_connector_trigger_request_complete_block_inner";
        v50 = 2114;
        *v51 = v9;
        *&v51[8] = 2114;
        *&v51[10] = v10;
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s %{public}@ cannot call this with both request %{public}@ and otherRequestBlock, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_54;
  }

  if (!v10 || (v10[616] & 1) == 0)
  {
    if (a5)
    {
      posix_error = nw_error_create_posix_error(a5);
      if (posix_error)
      {
LABEL_63:
        v38 = v9[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZL57nw_service_connector_trigger_request_complete_block_innerP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestU13block_pointerFvP24NWConcrete_nw_connectionP9__CFErrorES4_i_block_invoke;
        block[3] = &unk_1E6A356D0;
        v45 = v11;
        v41 = v10;
        v42 = posix_error;
        v43 = v12;
        v44 = v9;
        v39 = posix_error;
        dispatch_async(v38, block);

        goto LABEL_64;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      *buf = 136446466;
      v49 = "nw_service_connector_trigger_request_complete_block_inner";
      v50 = 1024;
      *v51 = a5;
      v19 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v46 = 0;
      if (__nwlog_fault(v19, &type, &v46))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446466;
            v49 = "nw_service_connector_trigger_request_complete_block_inner";
            v50 = 1024;
            *v51 = a5;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s nw_error_create_posix_error(%d) failed", buf, 0x12u);
          }
        }

        else if (v46 == 1)
        {
          v32 = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v33 = type;
          v34 = os_log_type_enabled(v20, type);
          if (v32)
          {
            if (v34)
            {
              *buf = 136446722;
              v49 = "nw_service_connector_trigger_request_complete_block_inner";
              v50 = 1024;
              *v51 = a5;
              *&v51[4] = 2082;
              *&v51[6] = v32;
              _os_log_impl(&dword_181A37000, v20, v33, "%{public}s nw_error_create_posix_error(%d) failed, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v32);
            if (!v19)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          if (v34)
          {
            *buf = 136446466;
            v49 = "nw_service_connector_trigger_request_complete_block_inner";
            v50 = 1024;
            *v51 = a5;
            _os_log_impl(&dword_181A37000, v20, v33, "%{public}s nw_error_create_posix_error(%d) failed, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v36 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446466;
            v49 = "nw_service_connector_trigger_request_complete_block_inner";
            v50 = 1024;
            *v51 = a5;
            _os_log_impl(&dword_181A37000, v20, v36, "%{public}s nw_error_create_posix_error(%d) failed, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

      if (v19)
      {
LABEL_61:
        free(v19);
      }
    }

LABEL_62:
    posix_error = 0;
    goto LABEL_63;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  *buf = 136446722;
  v49 = "nw_service_connector_trigger_request_complete_block_inner";
  v50 = 2114;
  *v51 = v9;
  *&v51[8] = 2114;
  *&v51[10] = v10;
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v46 = 0;
  if (!__nwlog_fault(v14, &type, &v46))
  {
    goto LABEL_55;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v26 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446722;
      v49 = "nw_service_connector_trigger_request_complete_block_inner";
      v50 = 2114;
      *v51 = v9;
      *&v51[8] = 2114;
      *&v51[10] = v10;
      _os_log_impl(&dword_181A37000, v15, v26, "%{public}s %{public}@ Cannot trigger request complete block on incoming request %{public}@", buf, 0x20u);
    }
  }

  else if (v46 == 1)
  {
    v28 = __nw_create_backtrace_string();
    if (v28)
    {
      v29 = v28;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446978;
        v49 = "nw_service_connector_trigger_request_complete_block_inner";
        v50 = 2114;
        *v51 = v9;
        *&v51[8] = 2114;
        *&v51[10] = v10;
        v52 = 2082;
        v53 = v29;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s %{public}@ Cannot trigger request complete block on incoming request %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v29);
      if (v14)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    v37 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446722;
      v49 = "nw_service_connector_trigger_request_complete_block_inner";
      v50 = 2114;
      *v51 = v9;
      *&v51[8] = 2114;
      *&v51[10] = v10;
      _os_log_impl(&dword_181A37000, v15, v37, "%{public}s %{public}@ Cannot trigger request complete block on incoming request %{public}@, no backtrace", buf, 0x20u);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v35 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446722;
      v49 = "nw_service_connector_trigger_request_complete_block_inner";
      v50 = 2114;
      *v51 = v9;
      *&v51[8] = 2114;
      *&v51[10] = v10;
      _os_log_impl(&dword_181A37000, v15, v35, "%{public}s %{public}@ Cannot trigger request complete block on incoming request %{public}@, backtrace limit exceeded", buf, 0x20u);
    }
  }

LABEL_54:

LABEL_55:
  if (v14)
  {
LABEL_56:
    free(v14);
  }

LABEL_64:
}

void nw_service_connector_remove_active_outgoing_request(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v19 = __nwlog_obj();
    *v47 = 136446210;
    *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
    v8 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, buf, &type))
    {
      goto LABEL_23;
    }

    if (buf[0] == 17)
    {
      v20 = __nwlog_obj();
      v21 = buf[0];
      if (os_log_type_enabled(v20, buf[0]))
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null serviceConnector", v47, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = buf[0];
      v28 = os_log_type_enabled(v20, buf[0]);
      if (backtrace_string)
      {
        if (v28)
        {
          *v47 = 136446466;
          *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
          *&v47[12] = 2082;
          *&v47[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v47, 0x16u);
        }

        free(backtrace_string);
LABEL_23:
        if (!v8)
        {
          goto LABEL_25;
        }

LABEL_24:
        free(v8);
        goto LABEL_25;
      }

      if (v28)
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null serviceConnector, no backtrace", v47, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v34 = buf[0];
      if (os_log_type_enabled(v20, buf[0]))
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null serviceConnector, backtrace limit exceeded", v47, 0xCu);
      }
    }

LABEL_74:

    goto LABEL_23;
  }

  if (!v3->activeOutgoingRequests)
  {
    v22 = __nwlog_obj();
    *v47 = 136446210;
    *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
    v8 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, buf, &type))
    {
      goto LABEL_23;
    }

    if (buf[0] == 17)
    {
      v20 = __nwlog_obj();
      v23 = buf[0];
      if (os_log_type_enabled(v20, buf[0]))
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null serviceConnector->activeOutgoingRequests", v47, 0xCu);
      }

      goto LABEL_74;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v35 = buf[0];
      if (os_log_type_enabled(v20, buf[0]))
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null serviceConnector->activeOutgoingRequests, backtrace limit exceeded", v47, 0xCu);
      }

      goto LABEL_74;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v30 = buf[0];
    v31 = os_log_type_enabled(v20, buf[0]);
    if (!v29)
    {
      if (v31)
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null serviceConnector->activeOutgoingRequests, no backtrace", v47, 0xCu);
      }

      goto LABEL_74;
    }

    if (v31)
    {
      *v47 = 136446466;
      *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
      *&v47[12] = 2082;
      *&v47[14] = v29;
      _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null serviceConnector->activeOutgoingRequests, dumping backtrace:%{public}s", v47, 0x16u);
    }

    goto LABEL_55;
  }

  if (!v4)
  {
    v24 = __nwlog_obj();
    *v47 = 136446210;
    *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
    v8 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, buf, &type))
    {
      goto LABEL_23;
    }

    if (buf[0] == 17)
    {
      v20 = __nwlog_obj();
      v25 = buf[0];
      if (os_log_type_enabled(v20, buf[0]))
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null request", v47, 0xCu);
      }

      goto LABEL_74;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v36 = buf[0];
      if (os_log_type_enabled(v20, buf[0]))
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null request, backtrace limit exceeded", v47, 0xCu);
      }

      goto LABEL_74;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v32 = buf[0];
    v33 = os_log_type_enabled(v20, buf[0]);
    if (!v29)
    {
      if (v33)
      {
        *v47 = 136446210;
        *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null request, no backtrace", v47, 0xCu);
      }

      goto LABEL_74;
    }

    if (v33)
    {
      *v47 = 136446466;
      *&v47[4] = "nw_service_connector_remove_active_outgoing_request";
      *&v47[12] = 2082;
      *&v47[14] = v29;
      _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null request, dumping backtrace:%{public}s", v47, 0x16u);
    }

LABEL_55:

    free(v29);
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  nwsc_request_stop_path_watcher(v4);
  *(v5 + 616) &= 0xE7u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  if (nwsc_get_identifier(v5->endpoint, v5->service, v47, 0x1B4uLL))
  {
    nw_dictionary_set_value(v3->activeOutgoingRequests, v47, 0);
    goto LABEL_25;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  endpoint = v5->endpoint;
  *buf = 136446722;
  v40 = "nw_service_connector_remove_active_outgoing_request";
  v41 = 2114;
  v42 = endpoint;
  v43 = 2082;
  service = v5->service;
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v8, &type, &v37))
  {
    goto LABEL_23;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      v11 = v5->endpoint;
      *buf = 136446722;
      v40 = "nw_service_connector_remove_active_outgoing_request";
      v41 = 2114;
      v42 = v11;
      v43 = 2082;
      service = v5->service;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 0x20u);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v37 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v16 = type;
    if (os_log_type_enabled(v9, type))
    {
      v17 = v5->endpoint;
      *buf = 136446722;
      v40 = "nw_service_connector_remove_active_outgoing_request";
      v41 = 2114;
      v42 = v17;
      v43 = 2082;
      service = v5->service;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_22;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v13 = type;
  v14 = os_log_type_enabled(v9, type);
  if (!v12)
  {
    if (v14)
    {
      v18 = v5->endpoint;
      *buf = 136446722;
      v40 = "nw_service_connector_remove_active_outgoing_request";
      v41 = 2114;
      v42 = v18;
      v43 = 2082;
      service = v5->service;
      _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_22;
  }

  if (v14)
  {
    v15 = v5->endpoint;
    *buf = 136446978;
    v40 = "nw_service_connector_remove_active_outgoing_request";
    v41 = 2114;
    v42 = v15;
    v43 = 2082;
    service = v5->service;
    v45 = 2082;
    v46 = v12;
    _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v12);
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_25:
}

void nwsc_request_stop_path_watcher(NWConcrete_nw_unique_connection_request *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "nwsc_request_stop_path_watcher";
    v7 = 2114;
    v8 = v1;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s stopping path watcher request %{public}@", &v5, 0x16u);
  }

  pathEvaluator = v1->pathEvaluator;
  if (pathEvaluator)
  {
    nw_path_evaluator_cancel(pathEvaluator);
    v4 = v1->pathEvaluator;
    v1->pathEvaluator = 0;
  }

  *(v1 + 616) &= ~0x80u;
}

void ___ZL57nw_service_connector_trigger_request_complete_block_innerP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestU13block_pointerFvP24NWConcrete_nw_connectionP9__CFErrorES4_i_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = _Block_copy(*(a1 + 64));
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = _Block_copy(*(v4 + 592));

    v6 = *(a1 + 32);
    v7 = *(v6 + 592);
    *(v6 + 592) = 0;

    v8 = *(a1 + 32);
    nwsc_request_stop_path_watcher(v8);
    *(v8 + 616) &= 0xE7u;

    v9 = *(a1 + 40);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = v2;
    v9 = *(a1 + 40);
    if (v9)
    {
LABEL_3:
      v10 = nw_error_copy_cf_error(v9);
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v10 = 0;
  if (v5)
  {
LABEL_4:
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = v11;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_connection_allow_reset_queue_block_invoke;
      v52 = &unk_1E6A3D868;
      v13 = v12;
      *v53 = v13;
      os_unfair_lock_lock(v12 + 34);
      __nw_connection_allow_reset_queue_block_invoke(buf);
      os_unfair_lock_unlock(v12 + 34);

      nw_connection_set_state_changed_handler(*(a1 + 48), 0);
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = v14[2];
        if (v15)
        {
          if (!v10)
          {
            nw_service_connector_apply_user_parameters(*(a1 + 56), v14, *(a1 + 48), v15);
          }
        }
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 48);
      v17 = *(a1 + 56);
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 136447234;
      *&buf[4] = "nw_service_connector_trigger_request_complete_block_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2114;
      v52 = v18;
      *v53 = 2114;
      *&v53[2] = v19;
      v54 = 2114;
      v55 = v20;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ calling request completion block with connection %{public}@ error %{public}@ for %{public}@", buf, 0x34u);
    }

    v5[2](v5, *(a1 + 48), v10);
    goto LABEL_21;
  }

LABEL_14:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v25 = *(a1 + 32);
  v24 = *(a1 + 40);
  *buf = 136447234;
  *&buf[4] = "nw_service_connector_trigger_request_complete_block_inner_block_invoke";
  *&buf[12] = 2114;
  *&buf[14] = v22;
  *&buf[22] = 2114;
  v52 = v23;
  *v53 = 2114;
  *&v53[2] = v24;
  v54 = 2114;
  v55 = v25;
  v26 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (!__nwlog_fault(v26, &type, &v49))
  {
    goto LABEL_19;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    v28 = type;
    if (os_log_type_enabled(v27, type))
    {
      v30 = *(a1 + 48);
      v29 = *(a1 + 56);
      v32 = *(a1 + 32);
      v31 = *(a1 + 40);
      *buf = 136447234;
      *&buf[4] = "nw_service_connector_trigger_request_complete_block_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v29;
      *&buf[22] = 2114;
      v52 = v30;
      *v53 = 2114;
      *&v53[2] = v31;
      v54 = 2114;
      v55 = v32;
      _os_log_impl(&dword_181A37000, v27, v28, "%{public}s %{public}@ tried to call missing request completion block with connection %{public}@ error %{public}@ for %{public}@", buf, 0x34u);
    }

LABEL_18:

LABEL_19:
    if (!v26)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v49 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    v40 = type;
    if (os_log_type_enabled(v27, type))
    {
      v42 = *(a1 + 48);
      v41 = *(a1 + 56);
      v44 = *(a1 + 32);
      v43 = *(a1 + 40);
      *buf = 136447234;
      *&buf[4] = "nw_service_connector_trigger_request_complete_block_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v41;
      *&buf[22] = 2114;
      v52 = v42;
      *v53 = 2114;
      *&v53[2] = v43;
      v54 = 2114;
      v55 = v44;
      _os_log_impl(&dword_181A37000, v27, v40, "%{public}s %{public}@ tried to call missing request completion block with connection %{public}@ error %{public}@ for %{public}@, backtrace limit exceeded", buf, 0x34u);
    }

    goto LABEL_18;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v27 = gLogObj;
  v34 = type;
  v35 = os_log_type_enabled(v27, type);
  if (!backtrace_string)
  {
    if (v35)
    {
      v46 = *(a1 + 48);
      v45 = *(a1 + 56);
      v48 = *(a1 + 32);
      v47 = *(a1 + 40);
      *buf = 136447234;
      *&buf[4] = "nw_service_connector_trigger_request_complete_block_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v45;
      *&buf[22] = 2114;
      v52 = v46;
      *v53 = 2114;
      *&v53[2] = v47;
      v54 = 2114;
      v55 = v48;
      _os_log_impl(&dword_181A37000, v27, v34, "%{public}s %{public}@ tried to call missing request completion block with connection %{public}@ error %{public}@ for %{public}@, no backtrace", buf, 0x34u);
    }

    goto LABEL_18;
  }

  if (v35)
  {
    v37 = *(a1 + 48);
    v36 = *(a1 + 56);
    v39 = *(a1 + 32);
    v38 = *(a1 + 40);
    *buf = 136447490;
    *&buf[4] = "nw_service_connector_trigger_request_complete_block_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v36;
    *&buf[22] = 2114;
    v52 = v37;
    *v53 = 2114;
    *&v53[2] = v38;
    v54 = 2114;
    v55 = v39;
    v56 = 2082;
    v57 = backtrace_string;
    _os_log_impl(&dword_181A37000, v27, v34, "%{public}s %{public}@ tried to call missing request completion block with connection %{public}@ error %{public}@ for %{public}@, dumping backtrace:%{public}s", buf, 0x3Eu);
  }

  free(backtrace_string);
  if (v26)
  {
LABEL_20:
    free(v26);
  }

LABEL_21:
  if (v10)
  {
    CFRelease(v10);
  }
}

void nw_service_connector_apply_user_parameters(void *a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_service_connector_apply_user_parameters";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_service_connector_apply_user_parameters";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v34 = "nw_service_connector_apply_user_parameters";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v18)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v18);
        goto LABEL_11;
      }

      if (v25)
      {
        *buf = 136446210;
        v34 = "nw_service_connector_apply_user_parameters";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_service_connector_apply_user_parameters";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v9)
  {
    v11 = nw_connection_copy_current_path(v9);
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      effective_traffic_class = _nw_path_get_effective_traffic_class(v13);
    }

    else
    {
      effective_traffic_class = 0;
    }

    traffic_class = nw_parameters_get_traffic_class(v10);
    if (traffic_class != effective_traffic_class)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v34 = "nw_service_connector_apply_user_parameters";
        v35 = 2114;
        v36 = v7;
        v37 = 1024;
        v38 = traffic_class;
        v39 = 2114;
        v40 = v9;
        v41 = 2114;
        v42 = v8;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ resetting traffic class to %u for connection %{public}@ for %{public}@", buf, 0x30u);
      }

      nw_connection_reset_traffic_class(v9, traffic_class);
    }

    goto LABEL_11;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_service_connector_apply_user_parameters";
  v18 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v18, &type, &v31))
  {
    goto LABEL_45;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v34 = "nw_service_connector_apply_user_parameters";
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null acceptedConnection", buf, 0xCu);
    }

    goto LABEL_44;
  }

  if (v31 != 1)
  {
    v19 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v34 = "nw_service_connector_apply_user_parameters";
      _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null acceptedConnection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v26 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v27 = type;
  v28 = os_log_type_enabled(v19, type);
  if (!v26)
  {
    if (v28)
    {
      *buf = 136446210;
      v34 = "nw_service_connector_apply_user_parameters";
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null acceptedConnection, no backtrace", buf, 0xCu);
    }

    goto LABEL_44;
  }

  if (v28)
  {
    *buf = 136446466;
    v34 = "nw_service_connector_apply_user_parameters";
    v35 = 2082;
    v36 = v26;
    _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null acceptedConnection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v26);
  if (v18)
  {
    goto LABEL_46;
  }

LABEL_11:
}

NSObject *nwsc_request_create_and_start_connection_inner(void *a1, void *a2, void *a3)
{
  v152 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v136 = v5;
  if (!(v6 | v7))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446466;
    v150 = "nwsc_request_create_and_start_connection_inner";
    LOWORD(v151[0]) = 2114;
    *(v151 + 2) = v5;
    v10 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(error) = 0;
    if (!__nwlog_fault(v10, type, &error))
    {
      goto LABEL_97;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446466;
        v150 = "nwsc_request_create_and_start_connection_inner";
        LOWORD(v151[0]) = 2114;
        *(v151 + 2) = v136;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %{public}@ tried to start connection on without request nor endpoint", buf, 0x16u);
      }
    }

    else if (error == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v25 = type[0];
      v26 = os_log_type_enabled(v11, type[0]);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446722;
          v150 = "nwsc_request_create_and_start_connection_inner";
          LOWORD(v151[0]) = 2114;
          *(v151 + 2) = v136;
          WORD5(v151[0]) = 2082;
          *(v151 + 12) = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v25, "%{public}s %{public}@ tried to start connection on without request nor endpoint, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        if (!v10)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      if (v26)
      {
        *buf = 136446466;
        v150 = "nwsc_request_create_and_start_connection_inner";
        LOWORD(v151[0]) = 2114;
        *(v151 + 2) = v136;
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s %{public}@ tried to start connection on without request nor endpoint, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v33 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446466;
        v150 = "nwsc_request_create_and_start_connection_inner";
        LOWORD(v151[0]) = 2114;
        *(v151 + 2) = v136;
        _os_log_impl(&dword_181A37000, v11, v33, "%{public}s %{public}@ tried to start connection on without request nor endpoint, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_96;
  }

  v13 = v7;
  if (v6)
  {
    if (*(v6 + 616))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      *buf = 136446722;
      v150 = "nwsc_request_create_and_start_connection_inner";
      LOWORD(v151[0]) = 2114;
      *(v151 + 2) = v5;
      WORD5(v151[0]) = 2114;
      *(v151 + 12) = v6;
      v10 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(error) = 0;
      if (!__nwlog_fault(v10, type, &error))
      {
        goto LABEL_97;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v28 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446722;
          v150 = "nwsc_request_create_and_start_connection_inner";
          LOWORD(v151[0]) = 2114;
          *(v151 + 2) = v136;
          WORD5(v151[0]) = 2114;
          *(v151 + 12) = v6;
          _os_log_impl(&dword_181A37000, v11, v28, "%{public}s %{public}@ tried to start connection on incoming request %{public}@", buf, 0x20u);
        }
      }

      else if (error == 1)
      {
        v42 = __nw_create_backtrace_string();
        if (v42)
        {
          v43 = v42;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          v45 = type[0];
          if (os_log_type_enabled(v44, type[0]))
          {
            *buf = 136446978;
            v150 = "nwsc_request_create_and_start_connection_inner";
            LOWORD(v151[0]) = 2114;
            *(v151 + 2) = v136;
            WORD5(v151[0]) = 2114;
            *(v151 + 12) = v6;
            WORD2(v151[1]) = 2082;
            *(&v151[1] + 6) = v43;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s %{public}@ tried to start connection on incoming request %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v43);
          if (!v10)
          {
            goto LABEL_99;
          }

          goto LABEL_98;
        }

        v11 = __nwlog_obj();
        v66 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446722;
          v150 = "nwsc_request_create_and_start_connection_inner";
          LOWORD(v151[0]) = 2114;
          *(v151 + 2) = v136;
          WORD5(v151[0]) = 2114;
          *(v151 + 12) = v6;
          _os_log_impl(&dword_181A37000, v11, v66, "%{public}s %{public}@ tried to start connection on incoming request %{public}@, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v56 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446722;
          v150 = "nwsc_request_create_and_start_connection_inner";
          LOWORD(v151[0]) = 2114;
          *(v151 + 2) = v136;
          WORD5(v151[0]) = 2114;
          *(v151 + 12) = v6;
          _os_log_impl(&dword_181A37000, v11, v56, "%{public}s %{public}@ tried to start connection on incoming request %{public}@, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_96:

LABEL_97:
      if (!v10)
      {
LABEL_99:
        v67 = 0;
        goto LABEL_231;
      }

LABEL_98:
      free(v10);
      goto LABEL_99;
    }

    if (*(v6 + 576))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v150 = "nwsc_request_create_and_start_connection_inner";
        LOWORD(v151[0]) = 2114;
        *(v151 + 2) = v136;
        WORD5(v151[0]) = 2114;
        *(v151 + 12) = v6;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ cancelling previous connection on request %{public}@", buf, 0x20u);
      }

      nw_connection_cancel(*(v6 + 576));
      v15 = *(v6 + 576);
      *(v6 + 576) = 0;

      v5 = v136;
    }

    v13 = *(v6 + 8);
  }

  endpoint = v13;
  v16 = v5;
  v17 = v6;
  v135 = v17;
  if (!v16)
  {
    v127 = __nwlog_obj();
    *buf = 136446210;
    v150 = "nw_service_connector_create_initial_payload_for_request";
    v30 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(error) = 0;
    if (!__nwlog_fault(v30, type, &error))
    {
      goto LABEL_109;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v128 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        v150 = "nw_service_connector_create_initial_payload_for_request";
        _os_log_impl(&dword_181A37000, v31, v128, "%{public}s called with null serviceConnector", buf, 0xCu);
      }

      goto LABEL_250;
    }

    if (error != 1)
    {
      v31 = __nwlog_obj();
      v132 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        v150 = "nw_service_connector_create_initial_payload_for_request";
        _os_log_impl(&dword_181A37000, v31, v132, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_250;
    }

    v49 = __nw_create_backtrace_string();
    v50 = __nwlog_obj();
    v129 = type[0];
    v130 = os_log_type_enabled(v50, type[0]);
    if (!v49)
    {
      if (v130)
      {
        *buf = 136446210;
        v150 = "nw_service_connector_create_initial_payload_for_request";
        _os_log_impl(&dword_181A37000, v50, v129, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }

      goto LABEL_109;
    }

    if (v130)
    {
      *buf = 136446466;
      v150 = "nw_service_connector_create_initial_payload_for_request";
      LOWORD(v151[0]) = 2082;
      *(v151 + 2) = v49;
      _os_log_impl(&dword_181A37000, v50, v129, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  if (!v16[24])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    *buf = 136446210;
    v150 = "nw_service_connector_create_initial_payload_for_request";
    v30 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(error) = 0;
    if (!__nwlog_fault(v30, type, &error))
    {
      goto LABEL_109;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      v32 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        v150 = "nw_service_connector_create_initial_payload_for_request";
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s Bad local port", buf, 0xCu);
      }

LABEL_250:

      goto LABEL_109;
    }

    if (error != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      v61 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        v150 = "nw_service_connector_create_initial_payload_for_request";
        _os_log_impl(&dword_181A37000, v31, v61, "%{public}s Bad local port, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_250;
    }

    v48 = __nw_create_backtrace_string();
    if (!v48)
    {
      v31 = __nwlog_obj();
      v69 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        v150 = "nw_service_connector_create_initial_payload_for_request";
        _os_log_impl(&dword_181A37000, v31, v69, "%{public}s Bad local port, no backtrace", buf, 0xCu);
      }

      goto LABEL_250;
    }

    v49 = v48;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    v51 = type[0];
    if (os_log_type_enabled(v50, type[0]))
    {
      *buf = 136446466;
      v150 = "nw_service_connector_create_initial_payload_for_request";
      LOWORD(v151[0]) = 2082;
      *(v151 + 2) = v49;
      _os_log_impl(&dword_181A37000, v50, v51, "%{public}s Bad local port, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(v49);
    goto LABEL_109;
  }

  v18 = v17;
  if (nw_service_connector_get_new_sequence_number(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_service_connector_get_new_sequence_number(void)::onceToken, &__block_literal_global_199_52039);
  }

    ;
  }

  if (v6)
  {
    *(v18 + 58) = i;
    v20 = strnlen(v18 + 24, 0x100uLL);
    v21 = v20;
    if (v20 < 0x100)
    {
      v22 = v20 + 91;
      v23 = v20;
      goto LABEL_43;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    *buf = 136446466;
    v150 = "nw_service_connector_create_initial_payload_for_request";
    LOWORD(v151[0]) = 2048;
    *(v151 + 2) = v21;
    v30 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(error) = 0;
    if (__nwlog_fault(v30, type, &error))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v47 = type[0];
        if (os_log_type_enabled(v31, type[0]))
        {
          *buf = 136446466;
          v150 = "nw_service_connector_create_initial_payload_for_request";
          LOWORD(v151[0]) = 2048;
          *(v151 + 2) = v21;
          _os_log_impl(&dword_181A37000, v31, v47, "%{public}s Service name too long %zu", buf, 0x16u);
        }
      }

      else
      {
        if (error == 1)
        {
          v57 = __nw_create_backtrace_string();
          v58 = __nwlog_obj();
          v59 = type[0];
          v60 = os_log_type_enabled(v58, type[0]);
          if (v57)
          {
            if (v60)
            {
              *buf = 136446722;
              v150 = "nw_service_connector_create_initial_payload_for_request";
              LOWORD(v151[0]) = 2048;
              *(v151 + 2) = v21;
              WORD5(v151[0]) = 2082;
              *(v151 + 12) = v57;
              _os_log_impl(&dword_181A37000, v58, v59, "%{public}s Service name too long %zu, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v57);
          }

          else
          {
            if (v60)
            {
              *buf = 136446466;
              v150 = "nw_service_connector_create_initial_payload_for_request";
              LOWORD(v151[0]) = 2048;
              *(v151 + 2) = v21;
              _os_log_impl(&dword_181A37000, v58, v59, "%{public}s Service name too long %zu, no backtrace", buf, 0x16u);
            }
          }

          goto LABEL_109;
        }

        v31 = __nwlog_obj();
        v65 = type[0];
        if (os_log_type_enabled(v31, type[0]))
        {
          *buf = 136446466;
          v150 = "nw_service_connector_create_initial_payload_for_request";
          LOWORD(v151[0]) = 2048;
          *(v151 + 2) = v21;
          _os_log_impl(&dword_181A37000, v31, v65, "%{public}s Service name too long %zu, backtrace limit exceeded", buf, 0x16u);
        }
      }

      goto LABEL_250;
    }

LABEL_109:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_124;
  }

  v23 = 0;
  v22 = 79;
LABEL_43:
  memset(v151, 0, sizeof(v151));
  *buf = bswap32(v22) >> 16;
  *&buf[2] = bswap32(v16[24]) >> 16;
  v150 = bswap64(i);
  if (v6)
  {
    v151[0] = *(v18 + 30);
    LOBYTE(v151[1]) = v23;
    memcpy(&v151[1] + 1, v18 + 24, v23);
  }

  v34 = v22;
  v35 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:buf length:v22 + 2 freeWhenDone:0];
  error = 0;
  v36 = SecKeyCreateSignature(*(v16 + 18), *MEMORY[0x1E697B148], v35, &error);
  v37 = v36;
  if (v36)
  {
    if (v6)
    {
      v38 = &v151[1] + v23 + 1;
    }

    else
    {
      v38 = v151 + 4;
    }

    [(__CFData *)v36 getBytes:v38 length:64];
    v39 = dispatch_data_create(buf, v34 + 2, 0, 0);
    content = v39;
    if (v39)
    {
      v40 = v39;
      v41 = v39;
LABEL_118:

      goto LABEL_119;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v52 = gLogObj;
    *type = 136446210;
    v146 = "nw_service_connector_create_initial_payload_for_request";
    v53 = _os_log_send_and_compose_impl();

    v143 = OS_LOG_TYPE_ERROR;
    v142 = 0;
    if (__nwlog_fault(v53, &v143, &v142))
    {
      if (v143 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v54 = gLogObj;
        v55 = v143;
        if (os_log_type_enabled(v54, v143))
        {
          *type = 136446210;
          v146 = "nw_service_connector_create_initial_payload_for_request";
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s dispatch_data_create failed", type, 0xCu);
        }
      }

      else if (v142 == 1)
      {
        v62 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v63 = v143;
        v64 = os_log_type_enabled(v54, v143);
        if (v62)
        {
          if (v64)
          {
            *type = 136446466;
            v146 = "nw_service_connector_create_initial_payload_for_request";
            v147 = 2082;
            v148 = v62;
            _os_log_impl(&dword_181A37000, v54, v63, "%{public}s dispatch_data_create failed, dumping backtrace:%{public}s", type, 0x16u);
          }

          free(v62);
          goto LABEL_115;
        }

        if (v64)
        {
          *type = 136446210;
          v146 = "nw_service_connector_create_initial_payload_for_request";
          _os_log_impl(&dword_181A37000, v54, v63, "%{public}s dispatch_data_create failed, no backtrace", type, 0xCu);
        }
      }

      else
      {
        v54 = __nwlog_obj();
        v68 = v143;
        if (os_log_type_enabled(v54, v143))
        {
          *type = 136446210;
          v146 = "nw_service_connector_create_initial_payload_for_request";
          _os_log_impl(&dword_181A37000, v54, v68, "%{public}s dispatch_data_create failed, backtrace limit exceeded", type, 0xCu);
        }
      }
    }

LABEL_115:
    if (v53)
    {
      free(v53);
    }

    v40 = 0;
    goto LABEL_118;
  }

  v131 = __nwlog_obj();
  if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
  {
    *type = 136446466;
    v146 = "nw_service_connector_create_initial_payload_for_request";
    v147 = 2112;
    v148 = error;
    _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s SecKeyCreateSignature failed with error %@", type, 0x16u);
  }

  if (error)
  {
    CFRelease(error);
    content = 0;
    error = 0;
  }

  else
  {
    content = 0;
  }

LABEL_119:

  if (content)
  {
    v70 = v135;
    if (nw_endpoint_get_type(endpoint) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      if (v6)
      {
        userParameters = v135->userParameters;
        if (userParameters)
        {
          v72 = _nw_parameters_copy(userParameters);
          nwsc_update_parameters_for_asquic_browser(v72);
          goto LABEL_142;
        }

        v99 = __nwlog_obj();
        *buf = 136446722;
        v150 = "nwsc_request_create_and_start_connection_inner";
        LOWORD(v151[0]) = 2114;
        *(v151 + 2) = v16;
        WORD5(v151[0]) = 2112;
        *(v151 + 12) = v135;
        v100 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(error) = 0;
        if (__nwlog_fault(v100, type, &error))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v101 = __nwlog_obj();
            v102 = type[0];
            if (os_log_type_enabled(v101, type[0]))
            {
              *buf = 136446722;
              v150 = "nwsc_request_create_and_start_connection_inner";
              LOWORD(v151[0]) = 2114;
              *(v151 + 2) = v16;
              WORD5(v151[0]) = 2112;
              *(v151 + 12) = v135;
              _os_log_impl(&dword_181A37000, v101, v102, "%{public}s %{public}@ failed to start request %@ with invalid parameters", buf, 0x20u);
            }

LABEL_168:

            goto LABEL_220;
          }

          if (error != 1)
          {
            v101 = __nwlog_obj();
            v123 = type[0];
            if (os_log_type_enabled(v101, type[0]))
            {
              *buf = 136446722;
              v150 = "nwsc_request_create_and_start_connection_inner";
              LOWORD(v151[0]) = 2114;
              *(v151 + 2) = v16;
              WORD5(v151[0]) = 2112;
              *(v151 + 12) = v135;
              _os_log_impl(&dword_181A37000, v101, v123, "%{public}s %{public}@ failed to start request %@ with invalid parameters, backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_168;
          }

          v114 = __nw_create_backtrace_string();
          v115 = __nwlog_obj();
          v116 = type[0];
          v117 = os_log_type_enabled(v115, type[0]);
          if (v114)
          {
            if (v117)
            {
              *buf = 136446978;
              v150 = "nwsc_request_create_and_start_connection_inner";
              LOWORD(v151[0]) = 2114;
              *(v151 + 2) = v16;
              WORD5(v151[0]) = 2112;
              *(v151 + 12) = v135;
              WORD2(v151[1]) = 2082;
              *(&v151[1] + 6) = v114;
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s %{public}@ failed to start request %@ with invalid parameters, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v114);
          }

          else
          {
            if (v117)
            {
              *buf = 136446722;
              v150 = "nwsc_request_create_and_start_connection_inner";
              LOWORD(v151[0]) = 2114;
              *(v151 + 2) = v16;
              WORD5(v151[0]) = 2112;
              *(v151 + 12) = v135;
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s %{public}@ failed to start request %@ with invalid parameters, no backtrace", buf, 0x20u);
            }
          }
        }

LABEL_220:
        if (v100)
        {
          v125 = v100;
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      v95 = __nwlog_obj();
      *buf = 136446466;
      v150 = "nwsc_request_create_and_start_connection_inner";
      LOWORD(v151[0]) = 2114;
      *(v151 + 2) = v16;
      v96 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(error) = 0;
      if (__nwlog_fault(v96, type, &error))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v97 = __nwlog_obj();
          v98 = type[0];
          if (os_log_type_enabled(v97, type[0]))
          {
            *buf = 136446466;
            v150 = "nwsc_request_create_and_start_connection_inner";
            LOWORD(v151[0]) = 2114;
            *(v151 + 2) = v16;
            _os_log_impl(&dword_181A37000, v97, v98, "%{public}s %{public}@ failed to start with invalid request", buf, 0x16u);
          }

LABEL_163:

          goto LABEL_215;
        }

        if (error != 1)
        {
          v97 = __nwlog_obj();
          v122 = type[0];
          if (os_log_type_enabled(v97, type[0]))
          {
            *buf = 136446466;
            v150 = "nwsc_request_create_and_start_connection_inner";
            LOWORD(v151[0]) = 2114;
            *(v151 + 2) = v16;
            _os_log_impl(&dword_181A37000, v97, v122, "%{public}s %{public}@ failed to start with invalid request, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_163;
        }

        v110 = __nw_create_backtrace_string();
        v111 = __nwlog_obj();
        v112 = type[0];
        v113 = os_log_type_enabled(v111, type[0]);
        if (v110)
        {
          if (v113)
          {
            *buf = 136446722;
            v150 = "nwsc_request_create_and_start_connection_inner";
            LOWORD(v151[0]) = 2114;
            *(v151 + 2) = v16;
            WORD5(v151[0]) = 2082;
            *(v151 + 12) = v110;
            _os_log_impl(&dword_181A37000, v111, v112, "%{public}s %{public}@ failed to start with invalid request, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v110);
        }

        else
        {
          if (v113)
          {
            *buf = 136446466;
            v150 = "nwsc_request_create_and_start_connection_inner";
            LOWORD(v151[0]) = 2114;
            *(v151 + 2) = v16;
            _os_log_impl(&dword_181A37000, v111, v112, "%{public}s %{public}@ failed to start with invalid request, no backtrace", buf, 0x16u);
          }
        }
      }

LABEL_215:
      if (v96)
      {
        v125 = v96;
LABEL_227:
        free(v125);
      }

LABEL_228:
      v67 = 0;
      goto LABEL_229;
    }

    if (v6)
    {
      v81 = v135->userParameters;
      if (v81)
      {
        v82 = _nw_parameters_copy(v81);
        nw_parameters_set_data_mode(v82, 2);
        nw_parameters_set_allow_socket_access(v82, 1);
        v72 = v82;
        nw_parameters_set_tfo(v82, 1);
        goto LABEL_142;
      }
    }

    v83 = &__block_literal_global_191;
    v84 = _Block_copy(&__block_literal_global_191);
    legacy_tcp_socket = _nw_parameters_create_legacy_tcp_socket(v84);

    v72 = legacy_tcp_socket;
    v70 = v135;
    if (legacy_tcp_socket)
    {
LABEL_142:
      nw_parameters_set_fast_open_enabled(v72, 1);
      nw_parameters_set_fast_open_force_enable(v72, 1);
      nw_parameters_set_no_proxy(v72, 1);
      v67 = nw_connection_create_without_parameters_copy(endpoint, v72);
      if (v67)
      {
        if (v6)
        {
          nwsc_request_stop_path_watcher(v70);
          objc_storeStrong(&v70->connection, v67);
          v70 = v135;
        }

        nw_connection_set_queue(v67, *(v16 + 4));
        nw_connection_send(v67, content, &__block_literal_global_44658, 1, &__block_literal_global_24512);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___ZL46nwsc_request_create_and_start_connection_innerP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestPU25objcproto14OS_nw_endpoint8NSObject21nwsc_operation_code_e_block_invoke_192;
        handler[3] = &unk_1E6A34A10;
        v86 = v16;
        v138 = v86;
        v87 = v67;
        v139 = v87;
        v88 = v70;
        v140 = v88;
        v141 = 0;
        nw_connection_set_state_changed_handler(v87, handler);
        nw_connection_start(v87);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v89 = gLogObj;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v150 = "nwsc_request_create_and_start_connection_inner";
          LOWORD(v151[0]) = 2114;
          *(v151 + 2) = v86;
          WORD5(v151[0]) = 2114;
          *(v151 + 12) = v88;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ sending connection request %{public}@", buf, 0x20u);
        }

        v90 = v87;
LABEL_211:

LABEL_229:
        goto LABEL_230;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v91 = gLogObj;
      *buf = 136446210;
      v150 = "nwsc_request_create_and_start_connection_inner";
      v92 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(error) = 0;
      if (__nwlog_fault(v92, type, &error))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v93 = __nwlog_obj();
          v94 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            *buf = 136446210;
            v150 = "nwsc_request_create_and_start_connection_inner";
            _os_log_impl(&dword_181A37000, v93, v94, "%{public}s nw_connection_create failed", buf, 0xCu);
          }
        }

        else if (error == 1)
        {
          v107 = __nw_create_backtrace_string();
          v93 = __nwlog_obj();
          v108 = type[0];
          v109 = os_log_type_enabled(v93, type[0]);
          if (v107)
          {
            if (v109)
            {
              *buf = 136446466;
              v150 = "nwsc_request_create_and_start_connection_inner";
              LOWORD(v151[0]) = 2082;
              *(v151 + 2) = v107;
              _os_log_impl(&dword_181A37000, v93, v108, "%{public}s nw_connection_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v107);
            goto LABEL_209;
          }

          if (v109)
          {
            *buf = 136446210;
            v150 = "nwsc_request_create_and_start_connection_inner";
            _os_log_impl(&dword_181A37000, v93, v108, "%{public}s nw_connection_create failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v93 = __nwlog_obj();
          v121 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            *buf = 136446210;
            v150 = "nwsc_request_create_and_start_connection_inner";
            _os_log_impl(&dword_181A37000, v93, v121, "%{public}s nw_connection_create failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_209:
      if (v92)
      {
        free(v92);
      }

      goto LABEL_211;
    }

    v103 = __nwlog_obj();
    *buf = 136446210;
    v150 = "nwsc_request_create_and_start_connection_inner";
    v104 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(error) = 0;
    if (__nwlog_fault(v104, type, &error))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v105 = __nwlog_obj();
        v106 = type[0];
        if (os_log_type_enabled(v105, type[0]))
        {
          *buf = 136446210;
          v150 = "nwsc_request_create_and_start_connection_inner";
          _os_log_impl(&dword_181A37000, v105, v106, "%{public}s nw_parameters_create failed", buf, 0xCu);
        }

LABEL_224:

        goto LABEL_225;
      }

      if (error != 1)
      {
        v105 = __nwlog_obj();
        v124 = type[0];
        if (os_log_type_enabled(v105, type[0]))
        {
          *buf = 136446210;
          v150 = "nwsc_request_create_and_start_connection_inner";
          _os_log_impl(&dword_181A37000, v105, v124, "%{public}s nw_parameters_create failed, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_224;
      }

      v118 = __nw_create_backtrace_string();
      v105 = __nwlog_obj();
      v119 = type[0];
      v120 = os_log_type_enabled(v105, type[0]);
      if (!v118)
      {
        if (v120)
        {
          *buf = 136446210;
          v150 = "nwsc_request_create_and_start_connection_inner";
          _os_log_impl(&dword_181A37000, v105, v119, "%{public}s nw_parameters_create failed, no backtrace", buf, 0xCu);
        }

        goto LABEL_224;
      }

      if (v120)
      {
        *buf = 136446466;
        v150 = "nwsc_request_create_and_start_connection_inner";
        LOWORD(v151[0]) = 2082;
        *(v151 + 2) = v118;
        _os_log_impl(&dword_181A37000, v105, v119, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v118);
    }

LABEL_225:
    if (v104)
    {
      v125 = v104;
      goto LABEL_227;
    }

    goto LABEL_228;
  }

LABEL_124:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v73 = gLogObj;
  *buf = 136446210;
  v150 = "nwsc_request_create_and_start_connection_inner";
  v74 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(error) = 0;
  if (__nwlog_fault(v74, type, &error))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v76 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *buf = 136446210;
        v150 = "nwsc_request_create_and_start_connection_inner";
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s nw_service_connector_create_initial_payload_for_request failed", buf, 0xCu);
      }
    }

    else if (error == 1)
    {
      v77 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v78 = type[0];
      v79 = os_log_type_enabled(v75, type[0]);
      if (v77)
      {
        if (v79)
        {
          *buf = 136446466;
          v150 = "nwsc_request_create_and_start_connection_inner";
          LOWORD(v151[0]) = 2082;
          *(v151 + 2) = v77;
          _os_log_impl(&dword_181A37000, v75, v78, "%{public}s nw_service_connector_create_initial_payload_for_request failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v77);
        if (!v74)
        {
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      if (v79)
      {
        *buf = 136446210;
        v150 = "nwsc_request_create_and_start_connection_inner";
        _os_log_impl(&dword_181A37000, v75, v78, "%{public}s nw_service_connector_create_initial_payload_for_request failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v80 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *buf = 136446210;
        v150 = "nwsc_request_create_and_start_connection_inner";
        _os_log_impl(&dword_181A37000, v75, v80, "%{public}s nw_service_connector_create_initial_payload_for_request failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v74)
  {
LABEL_152:
    free(v74);
  }

LABEL_153:
  v67 = 0;
LABEL_230:

LABEL_231:

  return v67;
}

void nwsc_update_parameters_for_asquic_browser(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nwsc_add_preferred_agent_to_parameters(v1, "ASResolver");
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nwsc_update_parameters_for_asquic_browser";
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
        v14 = "nwsc_update_parameters_for_asquic_browser";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters", buf, 0xCu);
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
          v14 = "nwsc_update_parameters_for_asquic_browser";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nwsc_update_parameters_for_asquic_browser";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nwsc_update_parameters_for_asquic_browser";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void ___ZL46nwsc_request_create_and_start_connection_innerP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestPU25objcproto14OS_nw_endpoint8NSObject21nwsc_operation_code_e_block_invoke_192(uint64_t a1, unsigned int a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v8 = v7;
  if (v6 == 4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (a2 > 5)
      {
        v9 = "unknown";
      }

      else
      {
        v9 = off_1E6A2F020[a2];
      }

      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 136447746;
      v50 = "nwsc_request_create_and_start_connection_inner_block_invoke";
      v51 = 2114;
      v52 = v12;
      v53 = 2114;
      v54 = v11;
      v55 = 2082;
      v56 = v9;
      v57 = 2114;
      v58 = v5;
      v59 = 2114;
      v60 = v13;
      v61 = 1024;
      v62 = v14;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, ignoring connection %{public}@ received state %{public}s error %{public}@ for request %{public}@ opCode %u", buf, 0x44u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 5)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = off_1E6A2F020[a2];
    }

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *buf = 136447746;
    v50 = "nwsc_request_create_and_start_connection_inner_block_invoke";
    v51 = 2114;
    v52 = v16;
    v53 = 2114;
    v54 = v15;
    v55 = 2082;
    v56 = v10;
    v57 = 2114;
    v58 = v5;
    v59 = 2114;
    v60 = v17;
    v61 = 1024;
    v62 = v18;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ connection %{public}@ received state %{public}s error %{public}@ for request %{public}@ opCode %u", buf, 0x44u);
  }

  if ((a2 & 0xFFFFFFFE) == 2)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      nwsc_request_stop_path_watcher(v19);
    }

    if (a2 == 3)
    {
      v20 = *(a1 + 48);
      if (v20 && (*(v20 + 617) & 4) != 0)
      {
        v30 = *(a1 + 40);
        if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
        }

        v22 = nw_protocol_copy_quic_stream_definition_quic_definition;
        v23 = nw_connection_copy_protocol_metadata(v30, v22);
      }

      else
      {
        v21 = *(a1 + 40);
        if (nw_protocol_setup_tcp_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
        }

        v22 = g_tcp_definition;
        v23 = nw_connection_copy_protocol_metadata(v21, v22);
      }

      v31 = v23;

      if (v31)
      {
        if (nw_context_copy_implicit_context::onceToken[0] != -1)
        {
          dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
        }

        v32 = nw_context_copy_implicit_context::implicit_context;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = ___ZL46nwsc_request_create_and_start_connection_innerP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestPU25objcproto14OS_nw_endpoint8NSObject21nwsc_operation_code_e_block_invoke_193;
        v44[3] = &unk_1E6A3C038;
        v45 = *(a1 + 32);
        v46 = *(a1 + 48);
        v47 = v31;
        v48 = *(a1 + 40);
        nw_queue_context_async_if_needed(v32, v44);

        v33 = v45;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          v35 = *(a1 + 40);
          v36 = *(a1 + 48);
          *buf = 136446978;
          v50 = "nwsc_request_create_and_start_connection_inner_block_invoke";
          v51 = 2114;
          v52 = v34;
          v53 = 2114;
          v54 = v35;
          v55 = 2114;
          v56 = v36;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ metadata for connection %{public}@ is nil -- unable to enable keep alives for request %{public}@", buf, 0x2Au);
        }
      }

      nw_connection_set_state_changed_handler(*(a1 + 40), 0);
      nw_connection_set_path_changed_handler(*(a1 + 40), 0);
      nw_service_connector_should_accept_connection(*(a1 + 32), *(a1 + 40), 0, 0);
    }
  }

  else if (a2 == 4 || a2 == 1)
  {
    if (!*(a1 + 48))
    {
LABEL_11:
      nw_connection_cancel(*(a1 + 40));
      goto LABEL_12;
    }

    if (nwsc_is_error_allowlisted(v5, a2 == 1))
    {
      if (a2 == 4)
      {
        nwsc_request_start_path_watcher(*(a1 + 32), *(a1 + 48), *(a1 + 40), 1);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 32);
          v39 = *(a1 + 40);
          v40 = *(a1 + 48);
          *buf = 136446978;
          v50 = "nwsc_request_create_and_start_connection_inner_block_invoke";
          v51 = 2114;
          v52 = v38;
          v53 = 2114;
          v54 = v39;
          v55 = 2114;
          v56 = v40;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ connection %{public}@ in waiting state for request %{public}@", buf, 0x2Au);
        }

        *(*(a1 + 48) + 616) |= 0x80u;
        if (*(*(a1 + 48) + 617))
        {
          v41 = __nwlog_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 32);
            v43 = *(a1 + 48);
            *buf = 136446722;
            v50 = "nwsc_request_create_and_start_connection_inner_block_invoke";
            v51 = 2114;
            v52 = v42;
            v53 = 2114;
            v54 = v43;
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ retrying request %{public}@", buf, 0x20u);
          }

          *(*(a1 + 48) + 617) &= ~1u;
          nwsc_request_start_connection(*(a1 + 32), *(a1 + 48));
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        *buf = 136446978;
        v50 = "nwsc_request_create_and_start_connection_inner_block_invoke";
        v51 = 2114;
        v52 = v25;
        v53 = 2114;
        v54 = v5;
        v55 = 2114;
        v56 = v26;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received unrecoverable error %{public}@, cancelling request %{public}@", buf, 0x2Au);
      }

      nw_service_connector_cancel_request_inner(*(a1 + 32), *(*(a1 + 48) + 8), (*(a1 + 48) + 24), *(a1 + 40), 0);
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      error_code = nw_error_get_error_code(v5);
      nw_service_connector_trigger_request_complete_block_inner(v27, v28, 0, 0, error_code);
    }
  }

LABEL_12:
}

void ___ZL46nwsc_request_create_and_start_connection_innerP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestPU25objcproto14OS_nw_endpoint8NSObject21nwsc_operation_code_e_block_invoke_193(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136446722;
    v35 = "nwsc_request_create_and_start_connection_inner_block_invoke";
    v36 = 2114;
    v37 = v3;
    v38 = 2114;
    v39 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ enabling keep alives for request %{public}@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5 && (*(v5 + 617) & 4) != 0)
  {
    v11 = nw_quic_stream_copy_connection_metadata(*(a1 + 48));
    nw_quic_connection_set_keepalive(v11, 5u);

    v12 = nw_connection_copy_parameters(*(a1 + 56));
    v13 = v12;
    if (v12)
    {
      v14 = _nw_parameters_copy_default_protocol_stack(v12);
      nw_protocol_stack_iterate_application_protocols(v14, &__block_literal_global_196_52598);
    }
  }

  else
  {
    if (!nw_tcp_reset_keepalives(*(a1 + 48), 1, 5, 5, 5))
    {
      return;
    }

    v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = v7;
    if (v6 == 22)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        *buf = 136446978;
        v35 = "nwsc_request_create_and_start_connection_inner_block_invoke_2";
        v36 = 2114;
        v37 = v9;
        v38 = 2114;
        v39 = v10;
        v40 = 1024;
        v41 = 22;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error enabling keep alives for request %{public}@ %{darwin.errno}d", buf, 0x26u);
      }

      return;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *buf = 136446978;
    v35 = "nwsc_request_create_and_start_connection_inner_block_invoke";
    v36 = 2114;
    v37 = v15;
    v38 = 2114;
    v39 = v16;
    v40 = 1024;
    v41 = v6;
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v17, &type, &v32))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        *buf = 136446978;
        v35 = "nwsc_request_create_and_start_connection_inner_block_invoke";
        v36 = 2114;
        v37 = v20;
        v38 = 2114;
        v39 = v21;
        v40 = 1024;
        v41 = v6;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s %{public}@ error enabling keep alives for request %{public}@ %{darwin.errno}d", buf, 0x26u);
      }

LABEL_17:

LABEL_18:
      if (!v17)
      {
        return;
      }

      goto LABEL_19;
    }

    if (v32 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v18, type))
      {
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        *buf = 136446978;
        v35 = "nwsc_request_create_and_start_connection_inner_block_invoke";
        v36 = 2114;
        v37 = v28;
        v38 = 2114;
        v39 = v29;
        v40 = 1024;
        v41 = v6;
        _os_log_impl(&dword_181A37000, v18, v27, "%{public}s %{public}@ error enabling keep alives for request %{public}@ %{darwin.errno}d, backtrace limit exceeded", buf, 0x26u);
      }

      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v23 = type;
    v24 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        v30 = *(a1 + 32);
        v31 = *(a1 + 40);
        *buf = 136446978;
        v35 = "nwsc_request_create_and_start_connection_inner_block_invoke";
        v36 = 2114;
        v37 = v30;
        v38 = 2114;
        v39 = v31;
        v40 = 1024;
        v41 = v6;
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s %{public}@ error enabling keep alives for request %{public}@ %{darwin.errno}d, no backtrace", buf, 0x26u);
      }

      goto LABEL_17;
    }

    if (v24)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 136447234;
      v35 = "nwsc_request_create_and_start_connection_inner_block_invoke";
      v36 = 2114;
      v37 = v25;
      v38 = 2114;
      v39 = v26;
      v40 = 1024;
      v41 = v6;
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v18, v23, "%{public}s %{public}@ error enabling keep alives for request %{public}@ %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x30u);
    }

    free(backtrace_string);
    if (v17)
    {
LABEL_19:
      free(v17);
    }
  }
}

void nw_service_connector_should_accept_connection(void *a1, void *a2, int a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "outgoing";
    *buf = 136446978;
    v21 = "nw_service_connector_should_accept_connection";
    v22 = 2114;
    v23 = v7;
    if (a3)
    {
      v11 = "incoming";
    }

    v24 = 2082;
    v25 = v11;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ performing first read on %{public}s connection %{public}@", buf, 0x2Au);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  v15[3] = &unk_1E6A34AB0;
  v12 = v7;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  v19 = a3;
  v14 = v9;
  v18 = v14;
  nw_connection_receive_internal(v13, 0, 2u, 2u, v15);
}

uint64_t nwsc_is_error_allowlisted(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = v5[3];

    if ((a2 & 1) == 0 && v6 == 60 || ((v7 = 1, v6 <= 0x3D) ? (v8 = ((1 << v6) & 0x30FF000100001061) == 0) : (v8 = 1), v8 && (v6 - 64 <= 0x20 ? (v10 = ((1 << (v6 - 64)) & 0x100000003) == 0) : (v10 = 1), v10)))
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void nwsc_request_start_path_watcher(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2, NWConcrete_nw_connection *a3, int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  p_super = &v9->super;
  if ((*(v8 + 616) & 1) == 0)
  {
    if (v8->pathEvaluator)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v47 = "nwsc_request_start_path_watcher";
        v48 = 2114;
        v49 = v7;
        v50 = 2114;
        v51 = v8;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ path watcher already started for request %{public}@", buf, 0x20u);
      }

      goto LABEL_40;
    }

    v19 = nw_connection_copy_endpoint(&v9->super);
    v20 = nw_connection_copy_parameters(p_super);
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v19, v20);

    if (evaluator_for_endpoint)
    {
      objc_storeStrong(&v8->pathEvaluator, evaluator_for_endpoint);
      *(v8 + 616) |= 0x80u;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL31nwsc_request_start_path_watcherP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestP24NWConcrete_nw_connectionb_block_invoke;
      aBlock[3] = &unk_1E6A34A38;
      v22 = v7;
      v41 = v22;
      v23 = v8;
      v42 = v23;
      v24 = evaluator_for_endpoint;
      v43 = v24;
      v25 = _Block_copy(aBlock);
      nw_path_evaluator_set_update_handler(v24, v22[4], v25);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v47 = "nwsc_request_start_path_watcher";
        v48 = 2114;
        v49 = v22;
        v50 = 2114;
        v51 = v23;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ registered for path updates for request %{public}@", buf, 0x20u);
      }

      if (a4)
      {
        v27 = nw_connection_copy_current_path(p_super);
        if (nw_path_get_status(v27) == nw_path_status_unsatisfied)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v47 = "nwsc_request_start_path_watcher";
            v48 = 2114;
            v49 = v22;
            v50 = 2114;
            v51 = v23;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ forcing a path update for request %{public}@", buf, 0x20u);
          }

          v29 = v24;
          os_unfair_lock_lock(v24 + 24);
          v30 = v29[6];
          os_unfair_lock_unlock(v24 + 24);

          (*(v25 + 2))(v25, v30);
        }
      }

      goto LABEL_39;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136446210;
    v47 = "nwsc_request_start_path_watcher";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v33, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v47 = "nwsc_request_start_path_watcher";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s nw_path_create_evaluator_for_endpoint failed", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v34, type);
        if (backtrace_string)
        {
          if (v38)
          {
            *buf = 136446466;
            v47 = "nwsc_request_start_path_watcher";
            v48 = 2082;
            v49 = backtrace_string;
            _os_log_impl(&dword_181A37000, v34, v37, "%{public}s nw_path_create_evaluator_for_endpoint failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v33)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (v38)
        {
          *buf = 136446210;
          v47 = "nwsc_request_start_path_watcher";
          _os_log_impl(&dword_181A37000, v34, v37, "%{public}s nw_path_create_evaluator_for_endpoint failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v34 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v47 = "nwsc_request_start_path_watcher";
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s nw_path_create_evaluator_for_endpoint failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v33)
    {
LABEL_39:

      goto LABEL_40;
    }

LABEL_38:
    free(v33);
    goto LABEL_39;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446722;
  v47 = "nwsc_request_start_path_watcher";
  v48 = 2114;
  v49 = v7;
  v50 = 2114;
  v51 = v8;
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (!__nwlog_fault(v13, &type, &v44))
  {
    goto LABEL_11;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446722;
      v47 = "nwsc_request_start_path_watcher";
      v48 = 2114;
      v49 = v7;
      v50 = 2114;
      v51 = v8;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ tried to start path watcher on incoming request %{public}@", buf, 0x20u);
    }

LABEL_10:

LABEL_11:
    if (!v13)
    {
      goto LABEL_40;
    }

LABEL_12:
    free(v13);
    goto LABEL_40;
  }

  if (v44 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446722;
      v47 = "nwsc_request_start_path_watcher";
      v48 = 2114;
      v49 = v7;
      v50 = 2114;
      v51 = v8;
      _os_log_impl(&dword_181A37000, v14, v31, "%{public}s %{public}@ tried to start path watcher on incoming request %{public}@, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v14, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446722;
      v47 = "nwsc_request_start_path_watcher";
      v48 = 2114;
      v49 = v7;
      v50 = 2114;
      v51 = v8;
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s %{public}@ tried to start path watcher on incoming request %{public}@, no backtrace", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (v18)
  {
    *buf = 136446978;
    v47 = "nwsc_request_start_path_watcher";
    v48 = 2114;
    v49 = v7;
    v50 = 2114;
    v51 = v8;
    v52 = 2082;
    v53 = v16;
    _os_log_impl(&dword_181A37000, v14, v17, "%{public}s %{public}@ tried to start path watcher on incoming request %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v16);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_40:
}

void nwsc_request_start_connection(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2)
{
  v2 = nwsc_request_create_and_start_connection_inner(a1, a2, 0);
}

void nw_service_connector_cancel_request_inner(void *a1, void *a2, unsigned __int8 *a3, void *a4, int a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = nw_service_connector_copy_active_outgoing_request(v9, v10, a3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 136446722;
      *&buf[4] = "nw_service_connector_cancel_request_inner";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v65 = v12;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ cancelling active request %{public}@", buf, 0x20u);
    }

    v15 = *(v12 + 72);
    if (!v15 || v15 == v11)
    {
      goto LABEL_31;
    }

    if (!v11)
    {
LABEL_30:
      nw_connection_cancel(v15);
      v15 = *(v12 + 72);
LABEL_31:
      *(v12 + 72) = 0;

      *(v12 + 616) &= ~0x10u;
      v27 = *(v12 + 76);
      if (v27)
      {
        nw_queue_cancel_source(v27, v26);
        *(v12 + 76) = 0;
      }

      nw_service_connector_remove_active_outgoing_request(v9, v12);
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446978;
    *&buf[4] = "nw_service_connector_cancel_request_inner";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v65 = v12;
    *v66 = 2114;
    *&v66[2] = v11;
    v17 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v63 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v17, type, &v63))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_cancel_request_inner";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2114;
          v65 = v12;
          *v66 = 2114;
          *&v66[2] = v11;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s %{public}@ trying to cancel mismatched connections %{public}@ %{public}@", buf, 0x2Au);
        }
      }

      else if (v63 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v21 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v23 = type[0];
          if (os_log_type_enabled(v22, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_service_connector_cancel_request_inner";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2114;
            v65 = v12;
            *v66 = 2114;
            *&v66[2] = v11;
            *&v66[10] = 2082;
            *&v66[12] = v21;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s %{public}@ trying to cancel mismatched connections %{public}@ %{public}@, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v21);
          if (!v17)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v18 = __nwlog_obj();
        v25 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_cancel_request_inner";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2114;
          v65 = v12;
          *v66 = 2114;
          *&v66[2] = v11;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s %{public}@ trying to cancel mismatched connections %{public}@ %{public}@, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_cancel_request_inner";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2114;
          v65 = v12;
          *v66 = 2114;
          *&v66[2] = v11;
          _os_log_impl(&dword_181A37000, v18, v24, "%{public}s %{public}@ trying to cancel mismatched connections %{public}@ %{public}@, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    if (!v17)
    {
LABEL_29:
      v15 = *(v12 + 72);
      goto LABEL_30;
    }

LABEL_28:
    free(v17);
    goto LABEL_29;
  }

  if (v14)
  {
    *buf = 136447234;
    *&buf[4] = "nw_service_connector_cancel_request_inner";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v65 = v10;
    *v66 = 2082;
    *&v66[2] = a3;
    *&v66[10] = 2114;
    *&v66[12] = v11;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ no active request to cancel for %{public}@ %{public}s %{public}@", buf, 0x34u);
  }

LABEL_34:
  if (v11)
  {
    v28 = v9;
    v29 = v11;
    v30 = v29;
    if (!v28)
    {
      v42 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
      v43 = _os_log_send_and_compose_impl();

      v63 = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (!__nwlog_fault(v43, &v63, &v62))
      {
        goto LABEL_87;
      }

      if (v63 == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = v63;
        if (os_log_type_enabled(v44, v63))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null serviceConnector", buf, 0xCu);
        }
      }

      else if (v62 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v54 = v63;
        v49 = os_log_type_enabled(v44, v63);
        if (v48)
        {
          if (v49)
          {
            *buf = 136446466;
            *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
            *&buf[12] = 2082;
            *&buf[14] = v48;
            _os_log_impl(&dword_181A37000, v44, v54, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          if (!v43)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if (v49)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
          _os_log_impl(&dword_181A37000, v44, v54, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v52 = v63;
        if (os_log_type_enabled(v44, v63))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
          _os_log_impl(&dword_181A37000, v44, v52, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_86;
    }

    activeConnections = v28->activeConnections;
    if (activeConnections)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v65 = __Block_byref_object_copy__51955;
      *v66 = __Block_byref_object_dispose__51956;
      *&v66[8] = 0;
      *type = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = ___ZL58nw_service_connector_copy_active_connection_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke;
      v59 = &unk_1E6A3BF70;
      v32 = v29;
      v60 = v32;
      v61 = buf;
      nw_dictionary_apply(activeConnections, type);
      v33 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
      if (v33)
      {
        nw_service_connector_remove_active_connection(v28, v33);
      }

      goto LABEL_39;
    }

    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
    v43 = _os_log_send_and_compose_impl();

    v63 = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v43, &v63, &v62))
    {
      if (v63 == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v47 = v63;
        if (os_log_type_enabled(v44, v63))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null serviceConnector->activeConnections", buf, 0xCu);
        }

LABEL_86:

        goto LABEL_87;
      }

      if (v62 != 1)
      {
        v44 = __nwlog_obj();
        v53 = v63;
        if (os_log_type_enabled(v44, v63))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s called with null serviceConnector->activeConnections, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_86;
      }

      v50 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v55 = v63;
      v51 = os_log_type_enabled(v44, v63);
      if (!v50)
      {
        if (v51)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
          _os_log_impl(&dword_181A37000, v44, v55, "%{public}s called with null serviceConnector->activeConnections, no backtrace", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v51)
      {
        *buf = 136446466;
        *&buf[4] = "nw_service_connector_copy_active_connection_for_connection";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_181A37000, v44, v55, "%{public}s called with null serviceConnector->activeConnections, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
    }

LABEL_87:
    if (!v43)
    {
LABEL_89:

      v33 = 0;
LABEL_39:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = "";
        *buf = 136447234;
        *&buf[4] = "nw_service_connector_cancel_request_inner";
        *&buf[14] = v28;
        *&buf[12] = 2114;
        if (a5)
        {
          v35 = "force-";
        }

        *&buf[22] = 2082;
        v65 = v35;
        *v66 = 2114;
        *&v66[2] = v30;
        *&v66[10] = 2114;
        *&v66[12] = v12;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ %{public}scancelling connection %{public}@ for request %{public}@", buf, 0x34u);
      }

      if (a5)
      {
        nw_connection_cancel_current_endpoint(v30);
      }

      else
      {
        nw_connection_cancel(v30);
      }

      goto LABEL_53;
    }

LABEL_88:
    free(v43);
    goto LABEL_89;
  }

  v36 = nw_service_connector_copy_active_connection_with_endpoint_and_service(v9, v10, a3);
  v33 = v36;
  if (v36)
  {
    connection = v36->connection;
    if (connection && (v38 = connection, *type = 0, v57 = type, v58 = 0x2020000000, LOBYTE(v59) = 0, *buf = MEMORY[0x1E69E9820], *&buf[8] = 3221225472, *&buf[16] = __nw_connection_is_cancelled_or_failed_block_invoke, v65 = &unk_1E6A3D738, *&v66[8] = type, v39 = v38, *v66 = v39, os_unfair_lock_lock(v38 + 34), (*&buf[16])(buf), os_unfair_lock_unlock(v38 + 34), LODWORD(v38) = *(v57 + 24), *v66, _Block_object_dispose(type, 8), v39, v38))
    {
      nw_service_connector_remove_active_connection(v9, v33);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v33->connection;
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_cancel_request_inner";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2114;
        v65 = v41;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ did not remove connection %{public}@ as it is active", buf, 0x20u);
      }
    }
  }

LABEL_53:
}

void *nw_service_connector_copy_active_outgoing_request(void *a1, void *a2, unsigned __int8 *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v19 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null serviceConnector", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v38 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null serviceConnector, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v30 = buf[0];
    v31 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v31)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v31)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v52, 0x16u);
    }

LABEL_68:

    free(backtrace_string);
    goto LABEL_93;
  }

  if (!v5[12])
  {
    v23 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v24 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null serviceConnector->activeOutgoingRequests", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v39 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v39, "%{public}s called with null serviceConnector->activeOutgoingRequests, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v32 = buf[0];
    v33 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v33)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->activeOutgoingRequests, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v33)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->activeOutgoingRequests, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!v6)
  {
    v25 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v26 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null endpoint", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v40 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v40, "%{public}s called with null endpoint, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v34 = buf[0];
    v35 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v35)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!a3)
  {
    v27 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v20, buf, &type))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
          _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null service", v52, 0xCu);
        }

LABEL_92:

        goto LABEL_93;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v21 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
          _os_log_impl(&dword_181A37000, v21, v41, "%{public}s called with null service, backtrace limit exceeded", v52, 0xCu);
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v36 = buf[0];
      v37 = os_log_type_enabled(v21, buf[0]);
      if (!backtrace_string)
      {
        if (v37)
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
          _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, no backtrace", v52, 0xCu);
        }

        goto LABEL_92;
      }

      if (v37)
      {
        *v52 = 136446466;
        *&v52[4] = "nw_service_connector_copy_active_outgoing_request";
        *&v52[12] = 2082;
        *&v52[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, dumping backtrace:%{public}s", v52, 0x16u);
      }

      goto LABEL_68;
    }

LABEL_93:
    if (!v20)
    {
      goto LABEL_27;
    }

    v17 = v20;
    goto LABEL_26;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  memset(v52, 0, sizeof(v52));
  if ((nwsc_get_identifier(v6, a3, v52, 0x1B4uLL) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446722;
    v45 = "nw_service_connector_copy_active_outgoing_request";
    v46 = 2114;
    v47 = v7;
    v48 = 2082;
    v49 = a3;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v10, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_outgoing_request";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 0x20u);
        }
      }

      else if (v42 == 1)
      {
        v13 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v11, type);
        if (v13)
        {
          if (v15)
          {
            *buf = 136446978;
            v45 = "nw_service_connector_copy_active_outgoing_request";
            v46 = 2114;
            v47 = v7;
            v48 = 2082;
            v49 = a3;
            v50 = 2082;
            v51 = v13;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v13);
          if (!v10)
          {
            goto LABEL_27;
          }

LABEL_25:
          v17 = v10;
LABEL_26:
          free(v17);
          goto LABEL_27;
        }

        if (v15)
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_outgoing_request";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_outgoing_request";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v10)
    {
LABEL_27:
      v8 = 0;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = nw_dictionary_copy_value(v5[12], v52);
LABEL_28:

  return v8;
}

BOOL ___ZL58nw_service_connector_copy_active_connection_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5[61];
  v7 = *(a1 + 32);
  if (v6 == v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return v6 != v7;
}

void nw_service_connector_remove_active_connection(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v20 = __nwlog_obj();
    *v48 = 136446210;
    *&v48[4] = "nw_service_connector_remove_active_connection";
    v9 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, buf, &type))
    {
      goto LABEL_25;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null serviceConnector", v48, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v28 = buf[0];
      v29 = os_log_type_enabled(v21, buf[0]);
      if (backtrace_string)
      {
        if (v29)
        {
          *v48 = 136446466;
          *&v48[4] = "nw_service_connector_remove_active_connection";
          *&v48[12] = 2082;
          *&v48[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v48, 0x16u);
        }

        free(backtrace_string);
LABEL_25:
        if (!v9)
        {
          goto LABEL_27;
        }

LABEL_26:
        free(v9);
        goto LABEL_27;
      }

      if (v29)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null serviceConnector, no backtrace", v48, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v35 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v35, "%{public}s called with null serviceConnector, backtrace limit exceeded", v48, 0xCu);
      }
    }

LABEL_76:

    goto LABEL_25;
  }

  if (!v3->activeConnections)
  {
    v23 = __nwlog_obj();
    *v48 = 136446210;
    *&v48[4] = "nw_service_connector_remove_active_connection";
    v9 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, buf, &type))
    {
      goto LABEL_25;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v24 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null serviceConnector->activeConnections", v48, 0xCu);
      }

      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v36 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null serviceConnector->activeConnections, backtrace limit exceeded", v48, 0xCu);
      }

      goto LABEL_76;
    }

    v30 = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v31 = buf[0];
    v32 = os_log_type_enabled(v21, buf[0]);
    if (!v30)
    {
      if (v32)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v31, "%{public}s called with null serviceConnector->activeConnections, no backtrace", v48, 0xCu);
      }

      goto LABEL_76;
    }

    if (v32)
    {
      *v48 = 136446466;
      *&v48[4] = "nw_service_connector_remove_active_connection";
      *&v48[12] = 2082;
      *&v48[14] = v30;
      _os_log_impl(&dword_181A37000, v21, v31, "%{public}s called with null serviceConnector->activeConnections, dumping backtrace:%{public}s", v48, 0x16u);
    }

    goto LABEL_57;
  }

  if (!v4)
  {
    v25 = __nwlog_obj();
    *v48 = 136446210;
    *&v48[4] = "nw_service_connector_remove_active_connection";
    v9 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, buf, &type))
    {
      goto LABEL_25;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v26 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null activeConnection", v48, 0xCu);
      }

      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v37 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v37, "%{public}s called with null activeConnection, backtrace limit exceeded", v48, 0xCu);
      }

      goto LABEL_76;
    }

    v30 = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v33 = buf[0];
    v34 = os_log_type_enabled(v21, buf[0]);
    if (!v30)
    {
      if (v34)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_service_connector_remove_active_connection";
        _os_log_impl(&dword_181A37000, v21, v33, "%{public}s called with null activeConnection, no backtrace", v48, 0xCu);
      }

      goto LABEL_76;
    }

    if (v34)
    {
      *v48 = 136446466;
      *&v48[4] = "nw_service_connector_remove_active_connection";
      *&v48[12] = 2082;
      *&v48[14] = v30;
      _os_log_impl(&dword_181A37000, v21, v33, "%{public}s called with null activeConnection, dumping backtrace:%{public}s", v48, 0x16u);
    }

LABEL_57:

    free(v30);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  nwsc_unique_connection_shutdown_socket(v3, v4);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  if (nwsc_get_identifier(v5->endpoint, v5->service, v48, 0x1B4uLL))
  {
    nw_dictionary_set_value(v3->activeConnections, v48, 0);
    if ((~*(v5 + 500) & 3) == 0)
    {
      connection = v5->connection;
      if (connection)
      {
        nwsc_cancel_connection_group_for_connection(v3, connection);
      }
    }

    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  endpoint = v5->endpoint;
  *buf = 136446722;
  v41 = "nw_service_connector_remove_active_connection";
  v42 = 2114;
  v43 = endpoint;
  v44 = 2082;
  service = v5->service;
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v9, &type, &v38))
  {
    goto LABEL_25;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      v12 = v5->endpoint;
      *buf = 136446722;
      v41 = "nw_service_connector_remove_active_connection";
      v42 = 2114;
      v43 = v12;
      v44 = 2082;
      service = v5->service;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 0x20u);
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v17 = type;
    if (os_log_type_enabled(v10, type))
    {
      v18 = v5->endpoint;
      *buf = 136446722;
      v41 = "nw_service_connector_remove_active_connection";
      v42 = 2114;
      v43 = v18;
      v44 = 2082;
      service = v5->service;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(v10, type);
  if (!v13)
  {
    if (v15)
    {
      v19 = v5->endpoint;
      *buf = 136446722;
      v41 = "nw_service_connector_remove_active_connection";
      v42 = 2114;
      v43 = v19;
      v44 = 2082;
      service = v5->service;
      _os_log_impl(&dword_181A37000, v10, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_24;
  }

  if (v15)
  {
    v16 = v5->endpoint;
    *buf = 136446978;
    v41 = "nw_service_connector_remove_active_connection";
    v42 = 2114;
    v43 = v16;
    v44 = 2082;
    service = v5->service;
    v46 = 2082;
    v47 = v13;
    _os_log_impl(&dword_181A37000, v10, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v13);
  if (v9)
  {
    goto LABEL_26;
  }

LABEL_27:
}

void *nw_service_connector_copy_active_connection_with_endpoint_and_service(void *a1, void *a2, unsigned __int8 *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v19 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null serviceConnector", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v38 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null serviceConnector, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v30 = buf[0];
    v31 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v31)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v31)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v52, 0x16u);
    }

LABEL_68:

    free(backtrace_string);
    goto LABEL_93;
  }

  if (!v5[11])
  {
    v23 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v24 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null serviceConnector->activeConnections", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v39 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v39, "%{public}s called with null serviceConnector->activeConnections, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v32 = buf[0];
    v33 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v33)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->activeConnections, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v33)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->activeConnections, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!v6)
  {
    v25 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v26 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null endpoint", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v40 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v40, "%{public}s called with null endpoint, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v34 = buf[0];
    v35 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v35)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!a3)
  {
    v27 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v20, buf, &type))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null service", v52, 0xCu);
        }

LABEL_92:

        goto LABEL_93;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v21 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          _os_log_impl(&dword_181A37000, v21, v41, "%{public}s called with null service, backtrace limit exceeded", v52, 0xCu);
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v36 = buf[0];
      v37 = os_log_type_enabled(v21, buf[0]);
      if (!backtrace_string)
      {
        if (v37)
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, no backtrace", v52, 0xCu);
        }

        goto LABEL_92;
      }

      if (v37)
      {
        *v52 = 136446466;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        *&v52[12] = 2082;
        *&v52[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, dumping backtrace:%{public}s", v52, 0x16u);
      }

      goto LABEL_68;
    }

LABEL_93:
    if (!v20)
    {
      goto LABEL_27;
    }

    v17 = v20;
    goto LABEL_26;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  memset(v52, 0, sizeof(v52));
  if ((nwsc_get_identifier(v6, a3, v52, 0x1B4uLL) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446722;
    v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v46 = 2114;
    v47 = v7;
    v48 = 2082;
    v49 = a3;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v10, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 0x20u);
        }
      }

      else if (v42 == 1)
      {
        v13 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v11, type);
        if (v13)
        {
          if (v15)
          {
            *buf = 136446978;
            v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
            v46 = 2114;
            v47 = v7;
            v48 = 2082;
            v49 = a3;
            v50 = 2082;
            v51 = v13;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v13);
          if (!v10)
          {
            goto LABEL_27;
          }

LABEL_25:
          v17 = v10;
LABEL_26:
          free(v17);
          goto LABEL_27;
        }

        if (v15)
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v10)
    {
LABEL_27:
      v8 = 0;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = nw_dictionary_copy_value(v5[11], v52);
LABEL_28:

  return v8;
}
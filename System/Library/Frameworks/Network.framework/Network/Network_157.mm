BOOL __nw_frame_cache_create_frame_block_invoke(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v65 = "nw_frame_cache_create_frame_block_invoke";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v12, &type, &v62))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v15 = "%{public}s foreach gave null candidate_frame";
    }

    else
    {
      if (v62 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v65 = "nw_frame_cache_create_frame_block_invoke";
            v66 = 2082;
            *v67 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s foreach gave null candidate_frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (!v19)
        {
LABEL_44:
          if (v12)
          {
            free(v12);
          }

          return 0;
        }

        *buf = 136446210;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        v15 = "%{public}s foreach gave null candidate_frame, no backtrace";
        v26 = v17;
        v27 = v18;
LABEL_43:
        _os_log_impl(&dword_181A37000, v26, v27, v15, buf, 0xCu);
        goto LABEL_44;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v15 = "%{public}s foreach gave null candidate_frame, backtrace limit exceeded";
    }

    v26 = v13;
    v27 = v14;
    goto LABEL_43;
  }

  if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 112);
  }

  if (gLogDatapath == 1)
  {
    v56 = __nwlog_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v66 = 2048;
      *v67 = a2;
      *&v67[8] = 2048;
      v68 = v5;
      v69 = 1024;
      LODWORD(v70) = v4;
      _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s existing frame %p found, buffer %p, length %u", buf, 0x26u);
    }
  }

  v6 = *(a2 + 52);
  if (v6)
  {
    v6 -= *(a2 + 56) + *(a2 + 60);
  }

  if (v6 != v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v65 = "nw_frame_cache_create_frame_block_invoke";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v8, &type, &v62))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v11 = "%{public}s candidate frame is not fully unclaimed, destroying";
      goto LABEL_70;
    }

    if (v62 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v11 = "%{public}s candidate frame is not fully unclaimed, destroying, backtrace limit exceeded";
      goto LABEL_70;
    }

    v22 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    v25 = os_log_type_enabled(gLogObj, type);
    if (v22)
    {
      if (v25)
      {
        *buf = 136446466;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        v66 = 2082;
        *v67 = v22;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s candidate frame is not fully unclaimed, destroying, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v22);
    }

    else if (v25)
    {
      *buf = 136446210;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v11 = "%{public}s candidate frame is not fully unclaimed, destroying, no backtrace";
LABEL_83:
      v44 = v23;
      v45 = v24;
      goto LABEL_71;
    }

LABEL_72:
    if (!v8)
    {
LABEL_74:
      frame_cache_remove_from_cache(*(a1 + 48), a2);
      return 1;
    }

LABEL_73:
    free(v8);
    goto LABEL_74;
  }

  if (!v5 && v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v66 = 2048;
      *v67 = a2;
      *&v67[8] = 1024;
      LODWORD(v68) = v4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s candidate frame %p has length %u, but buffer is NULL, removing", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v65 = "nw_frame_cache_create_frame_block_invoke";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v8, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_72;
        }

        *buf = 136446210;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        v11 = "%{public}s candidate frame has length > 0, but buffer is NULL";
LABEL_70:
        v44 = v9;
        v45 = v10;
LABEL_71:
        _os_log_impl(&dword_181A37000, v44, v45, v11, buf, 0xCu);
        goto LABEL_72;
      }

      if (v62 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_72;
        }

        *buf = 136446210;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        v11 = "%{public}s candidate frame has length > 0, but buffer is NULL, backtrace limit exceeded";
        goto LABEL_70;
      }

      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      v32 = os_log_type_enabled(gLogObj, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v65 = "nw_frame_cache_create_frame_block_invoke";
          v66 = 2082;
          *v67 = v31;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s candidate frame has length > 0, but buffer is NULL, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        if (!v8)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if (v32)
      {
        *buf = 136446210;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        v11 = "%{public}s candidate frame has length > 0, but buffer is NULL, no backtrace";
        goto LABEL_83;
      }
    }

    goto LABEL_72;
  }

  v20 = *(a1 + 56);
  if (*MEMORY[0x1E69E9AC8] + v20 < v4)
  {
    if (gLogDatapath == 1)
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v65 = "frame_cache_candidate_frame_length_is_match";
        v66 = 1024;
        *v67 = v4;
        *&v67[4] = 1024;
        *&v67[6] = v20;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s candidate frame (%u bytes) is too much larger than requested (%u bytes), skipping", buf, 0x18u);
      }
    }

    goto LABEL_48;
  }

  if (v4 < v20)
  {
LABEL_48:
    if (!v5)
    {
      v29 = *(*(a1 + 40) + 8);
      if (!*(v29 + 24))
      {
        *(v29 + 24) = a2;
        if (gLogDatapath == 1)
        {
          v30 = __nwlog_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v65 = "nw_frame_cache_create_frame_block_invoke";
            v66 = 2048;
            *v67 = a2;
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s reserving bufferless frame %p if better candidate not found", buf, 0x16u);
          }
        }
      }
    }

    return 1;
  }

  v33 = (*(a1 + 48) + 8);
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  if (v34)
  {
    v33 = (v34 + 24);
  }

  *v33 = v35;
  *v35 = v34;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v36 = *(a1 + 48);
  v37 = *(v36 + 24);
  *(v36 + 24) = v37 - 1;
  if (!v37)
  {
    __nwlog_obj();
    v38 = *(*(a1 + 48) + 24);
    *buf = 136446978;
    v65 = "nw_frame_cache_create_frame_block_invoke";
    v66 = 2082;
    *v67 = "frame_cache->empty_frames_count";
    *&v67[8] = 2048;
    v68 = 1;
    v69 = 2048;
    v70 = v38;
    v39 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v39, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          v42 = *(*(a1 + 48) + 24);
          *buf = 136446978;
          v65 = "nw_frame_cache_create_frame_block_invoke";
          v66 = 2082;
          *v67 = "frame_cache->empty_frames_count";
          *&v67[8] = 2048;
          v68 = 1;
          v69 = 2048;
          v70 = v42;
          v43 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_93:
          _os_log_impl(&dword_181A37000, v40, v41, v43, buf, 0x2Au);
        }
      }

      else if (v62 == 1)
      {
        v46 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v47 = os_log_type_enabled(v40, type);
        if (v46)
        {
          if (v47)
          {
            v48 = *(*(a1 + 48) + 24);
            *buf = 136447234;
            v65 = "nw_frame_cache_create_frame_block_invoke";
            v66 = 2082;
            *v67 = "frame_cache->empty_frames_count";
            *&v67[8] = 2048;
            v68 = 1;
            v69 = 2048;
            v70 = v48;
            v71 = 2082;
            v72 = v46;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v46);
          goto LABEL_94;
        }

        if (v47)
        {
          v50 = *(*(a1 + 48) + 24);
          *buf = 136446978;
          v65 = "nw_frame_cache_create_frame_block_invoke";
          v66 = 2082;
          *v67 = "frame_cache->empty_frames_count";
          *&v67[8] = 2048;
          v68 = 1;
          v69 = 2048;
          v70 = v50;
          v43 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_93;
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          v49 = *(*(a1 + 48) + 24);
          *buf = 136446978;
          v65 = "nw_frame_cache_create_frame_block_invoke";
          v66 = 2082;
          *v67 = "frame_cache->empty_frames_count";
          *&v67[8] = 2048;
          v68 = 1;
          v69 = 2048;
          v70 = v49;
          v43 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_93;
        }
      }
    }

LABEL_94:
    if (v39)
    {
      free(v39);
    }

    *(*(a1 + 48) + 24) = 0;
  }

  if (gLogDatapath == 1)
  {
    v57 = __nwlog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(a1 + 56);
      *buf = 136446722;
      v65 = "nw_frame_cache_create_frame_block_invoke";
      v66 = 1024;
      *v67 = v4;
      *&v67[4] = 1024;
      *&v67[6] = v58;
      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s reusing frame of length %u, adjusting to %u", buf, 0x18u);
    }
  }

  v51 = *(a1 + 56);
  v52 = v4 - v51;
  if (v4 == v51)
  {
    if (gLogDatapath)
    {
      v53 = __nwlog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s frame was exact match, not modifying", buf, 0xCu);
      }
    }
  }

  else
  {
    if (gLogDatapath)
    {
      v59 = v4 - v51;
      v60 = __nwlog_obj();
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);
      v52 = v59;
      if (v61)
      {
        *buf = 136446466;
        v65 = "nw_frame_cache_create_frame_block_invoke";
        v66 = 1024;
        *v67 = v59;
        _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s claiming %u bytes off end of frame", buf, 0x12u);
        v52 = v59;
      }
    }

    nw_frame_claim(a2, a2, 0, v52);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (gLogDatapath != 1)
  {
    return 0;
  }

  v54 = __nwlog_obj();
  result = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v55 = nw_frame_unclaimed_length(*(*(*(a1 + 32) + 8) + 24));
    *buf = 136446466;
    v65 = "nw_frame_cache_create_frame_block_invoke";
    v66 = 1024;
    *v67 = v55;
    _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s returning frame with unclaimed bytes %u", buf, 0x12u);
    return 0;
  }

  return result;
}

void nw_frame_cache_return_frame(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_frame_cache_return_frame";
    v55 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v55, &type, &v72))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (!os_log_type_enabled(v56, type))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      v75 = "nw_frame_cache_return_frame";
      v58 = "%{public}s called with null frame_cache";
    }

    else if (v72 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v68 = os_log_type_enabled(v56, type);
      if (backtrace_string)
      {
        if (v68)
        {
          *buf = 136446466;
          v75 = "nw_frame_cache_return_frame";
          v76 = 2082;
          *v77 = backtrace_string;
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_120:
        if (!v55)
        {
          return;
        }

LABEL_121:
        free(v55);
        return;
      }

      if (!v68)
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      v75 = "nw_frame_cache_return_frame";
      v58 = "%{public}s called with null frame_cache, no backtrace";
    }

    else
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (!os_log_type_enabled(v56, type))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      v75 = "nw_frame_cache_return_frame";
      v58 = "%{public}s called with null frame_cache, backtrace limit exceeded";
    }

LABEL_119:
    _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
    goto LABEL_120;
  }

  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v59 = __nwlog_obj();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v75 = "nw_frame_cache_return_frame";
        v76 = 2048;
        *v77 = a2;
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s caching frame %p", buf, 0x16u);
      }
    }

    if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)) || (v4 = *(a2 + 112)) == 0)
    {
      if (gLogDatapath == 1)
      {
        v71 = __nwlog_obj();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v75 = "nw_frame_cache_return_frame";
          v76 = 2048;
          *v77 = a2;
          _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s frame %p no longer has buffer, setting length to 0", buf, 0x16u);
        }
      }

      v5 = 0;
      v4 = 0;
    }

    else
    {
      v5 = *(a2 + 48);
    }

    v6 = *(a2 + 88);
    if (gLogDatapath == 1)
    {
      v60 = v4;
      v61 = *(a2 + 88);
      v62 = __nwlog_obj();
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
      v6 = v61;
      v4 = v60;
      if (v63)
      {
        *buf = 136447234;
        v75 = "nw_frame_cache_return_frame";
        v76 = 2048;
        *v77 = a2;
        *&v77[8] = 2048;
        *&v77[10] = v60;
        *&v77[18] = 1024;
        *v78 = v5;
        *&v78[4] = 2048;
        *&v78[6] = v61;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s resetting frame %p to buffer %p, length %u, context %p", buf, 0x30u);
        v6 = v61;
        v4 = v60;
      }
    }

    nw_frame_reset(a2, v4, v5, 0, v6);
    nw_frame_array_prepend(a1, 0, a2);
    v7 = *(a1 + 24) + 1;
    *(a1 + 24) = v7;
    if (v7 == v7 << 31 >> 31)
    {
LABEL_30:
      if (gLogDatapath == 1)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v75 = "nw_frame_cache_return_frame";
          v76 = 1024;
          *v77 = v5;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s reset frame of length %u, eligible for reuse", buf, 0x12u);
        }
      }

      if (gLogDatapath == 1)
      {
        v65 = __nwlog_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v66 = *(a1 + 24);
          *buf = 136446466;
          v75 = "frame_cache_purge_if_necessary";
          v76 = 1024;
          *v77 = v66;
          _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s total %u empty frames in cache (initial)", buf, 0x12u);
        }
      }

      if (*(a1 + 24) > *(a1 + 28))
      {
        while (1)
        {
          if (gLogDatapath == 1)
          {
            v20 = __nwlog_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = *(a1 + 24);
              v22 = *(a1 + 28);
              *buf = 136446722;
              v75 = "frame_cache_purge_if_necessary";
              v76 = 1024;
              *v77 = v21;
              *&v77[4] = 1024;
              *&v77[6] = v22;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s too many frames in frame cache (%u > %u), pruning", buf, 0x18u);
            }
          }

          v19 = **(*(a1 + 8) + 8);
          if (!v19)
          {
            break;
          }

          frame_cache_remove_from_cache(a1, v19);
          if (*(a1 + 24) <= *(a1 + 28))
          {
            goto LABEL_39;
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = *(a1 + 24);
        *buf = 136446466;
        v75 = "frame_cache_purge_if_necessary";
        v76 = 1024;
        *v77 = v29;
        v30 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        if (!__nwlog_fault(v30, &type, &v72))
        {
          goto LABEL_78;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v33 = *(a1 + 24);
            *buf = 136446466;
            v75 = "frame_cache_purge_if_necessary";
            v76 = 1024;
            *v77 = v33;
            v34 = "%{public}s no more frames in frame cache, we thought we had %u frames";
LABEL_73:
            v51 = v31;
            v52 = v32;
            v53 = 18;
LABEL_77:
            _os_log_impl(&dword_181A37000, v51, v52, v34, buf, v53);
            goto LABEL_78;
          }

          goto LABEL_78;
        }

        if (v72 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v48 = *(a1 + 24);
            *buf = 136446466;
            v75 = "frame_cache_purge_if_necessary";
            v76 = 1024;
            *v77 = v48;
            v34 = "%{public}s no more frames in frame cache, we thought we had %u frames, backtrace limit exceeded";
            goto LABEL_73;
          }

LABEL_78:
          if (v30)
          {
            free(v30);
          }

          *(a1 + 24) = 0;
          return;
        }

        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        v40 = os_log_type_enabled(gLogObj, type);
        if (!v39)
        {
          if (v40)
          {
            v50 = *(a1 + 24);
            *buf = 136446466;
            v75 = "frame_cache_purge_if_necessary";
            v76 = 1024;
            *v77 = v50;
            v34 = "%{public}s no more frames in frame cache, we thought we had %u frames, no backtrace";
            goto LABEL_73;
          }

          goto LABEL_78;
        }

        if (v40)
        {
          v41 = *(a1 + 24);
          *buf = 136446722;
          v75 = "frame_cache_purge_if_necessary";
          v76 = 1024;
          *v77 = v41;
          *&v77[4] = 2082;
          *&v77[6] = v39;
          v42 = "%{public}s no more frames in frame cache, we thought we had %u frames, dumping backtrace:%{public}s";
          v43 = v31;
          v44 = v32;
          v45 = 28;
LABEL_65:
          _os_log_impl(&dword_181A37000, v43, v44, v42, buf, v45);
          goto LABEL_66;
        }

        goto LABEL_66;
      }

LABEL_39:
      *buf = 0;
      nw_frame_array_get_frame_count(a1, 0, buf);
      v23 = *buf;
      if (*buf <= *(a1 + 32))
      {
LABEL_46:
        if (gLogDatapath == 1)
        {
          v27 = __nwlog_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = *(a1 + 24);
            *buf = 136446466;
            v75 = "frame_cache_purge_if_necessary";
            v76 = 1024;
            *v77 = v28;
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s total %u empty frames in cache (final)", buf, 0x12u);
          }
        }

        return;
      }

      while (1)
      {
        if (gLogDatapath == 1)
        {
          v25 = __nwlog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(a1 + 32);
            *buf = 136446722;
            v75 = "frame_cache_purge_if_necessary";
            v76 = 1024;
            *v77 = v23;
            *&v77[4] = 1024;
            *&v77[6] = v26;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s too many bytes in frame cache (%u > %u), pruning", buf, 0x18u);
          }
        }

        v24 = **(*(a1 + 8) + 8);
        if (!v24)
        {
          break;
        }

        frame_cache_remove_from_cache(a1, v24);
        *buf = 0;
        nw_frame_array_get_frame_count(a1, 0, buf);
        v23 = *buf;
        if (*buf <= *(a1 + 32))
        {
          goto LABEL_46;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = *(a1 + 24);
      *buf = 136446722;
      v75 = "frame_cache_purge_if_necessary";
      v76 = 1024;
      *v77 = v23;
      *&v77[4] = 1024;
      *&v77[6] = v35;
      v30 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (!__nwlog_fault(v30, &type, &v72))
      {
        goto LABEL_78;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v38 = *(a1 + 24);
        *buf = 136446722;
        v75 = "frame_cache_purge_if_necessary";
        v76 = 1024;
        *v77 = v23;
        *&v77[4] = 1024;
        *&v77[6] = v38;
        v34 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames";
      }

      else if (v72 == 1)
      {
        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        v46 = os_log_type_enabled(gLogObj, type);
        if (v39)
        {
          if (v46)
          {
            v47 = *(a1 + 24);
            *buf = 136446978;
            v75 = "frame_cache_purge_if_necessary";
            v76 = 1024;
            *v77 = v23;
            *&v77[4] = 1024;
            *&v77[6] = v47;
            *&v77[10] = 2082;
            *&v77[12] = v39;
            v42 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, dumping backtrace:%{public}s";
            v43 = v36;
            v44 = v37;
            v45 = 34;
            goto LABEL_65;
          }

LABEL_66:
          free(v39);
          goto LABEL_78;
        }

        if (!v46)
        {
          goto LABEL_78;
        }

        v54 = *(a1 + 24);
        *buf = 136446722;
        v75 = "frame_cache_purge_if_necessary";
        v76 = 1024;
        *v77 = v23;
        *&v77[4] = 1024;
        *&v77[6] = v54;
        v34 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v49 = *(a1 + 24);
        *buf = 136446722;
        v75 = "frame_cache_purge_if_necessary";
        v76 = 1024;
        *v77 = v23;
        *&v77[4] = 1024;
        *&v77[6] = v49;
        v34 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, backtrace limit exceeded";
      }

      v51 = v36;
      v52 = v37;
      v53 = 24;
      goto LABEL_77;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = *(a1 + 24);
    *buf = 136446978;
    v75 = "frame_cache_add_to_cache";
    v76 = 2082;
    *v77 = "frame_cache->empty_frames_count";
    *&v77[8] = 2048;
    *&v77[10] = 1;
    *&v77[18] = 2048;
    *v78 = v8;
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (__nwlog_fault(v9, &type, &v72))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(a1 + 24);
          *buf = 136446978;
          v75 = "frame_cache_add_to_cache";
          v76 = 2082;
          *v77 = "frame_cache->empty_frames_count";
          *&v77[8] = 2048;
          *&v77[10] = 1;
          *&v77[18] = 2048;
          *v78 = v12;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_26:
          _os_log_impl(&dword_181A37000, v10, v11, v13, buf, 0x2Au);
        }
      }

      else if (v72 == 1)
      {
        v14 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        v15 = os_log_type_enabled(gLogObj, type);
        if (v14)
        {
          if (v15)
          {
            v16 = *(a1 + 24);
            *buf = 136447234;
            v75 = "frame_cache_add_to_cache";
            v76 = 2082;
            *v77 = "frame_cache->empty_frames_count";
            *&v77[8] = 2048;
            *&v77[10] = 1;
            *&v77[18] = 2048;
            *v78 = v16;
            *&v78[8] = 2082;
            *&v78[10] = v14;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v14);
          goto LABEL_27;
        }

        if (v15)
        {
          v18 = *(a1 + 24);
          *buf = 136446978;
          v75 = "frame_cache_add_to_cache";
          v76 = 2082;
          *v77 = "frame_cache->empty_frames_count";
          *&v77[8] = 2048;
          *&v77[10] = 1;
          *&v77[18] = 2048;
          *v78 = v18;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_26;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v17 = *(a1 + 24);
          *buf = 136446978;
          v75 = "frame_cache_add_to_cache";
          v76 = 2082;
          *v77 = "frame_cache->empty_frames_count";
          *&v77[8] = 2048;
          *&v77[10] = 1;
          *&v77[18] = 2048;
          *v78 = v17;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    if (v9)
    {
      free(v9);
    }

    *(a1 + 24) = -1;
    goto LABEL_30;
  }

  __nwlog_obj();
  *buf = 136446210;
  v75 = "nw_frame_cache_return_frame";
  v55 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v72 = 0;
  if (!__nwlog_fault(v55, &type, &v72))
  {
    goto LABEL_120;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v56 = __nwlog_obj();
    v57 = type;
    if (!os_log_type_enabled(v56, type))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    v75 = "nw_frame_cache_return_frame";
    v58 = "%{public}s called with null frame";
    goto LABEL_119;
  }

  if (v72 != 1)
  {
    v56 = __nwlog_obj();
    v57 = type;
    if (!os_log_type_enabled(v56, type))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    v75 = "nw_frame_cache_return_frame";
    v58 = "%{public}s called with null frame, backtrace limit exceeded";
    goto LABEL_119;
  }

  v69 = __nw_create_backtrace_string();
  v56 = __nwlog_obj();
  v57 = type;
  v70 = os_log_type_enabled(v56, type);
  if (!v69)
  {
    if (!v70)
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    v75 = "nw_frame_cache_return_frame";
    v58 = "%{public}s called with null frame, no backtrace";
    goto LABEL_119;
  }

  if (v70)
  {
    *buf = 136446466;
    v75 = "nw_frame_cache_return_frame";
    v76 = 2082;
    *v77 = v69;
    _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v69);
  if (v55)
  {
    goto LABEL_121;
  }
}

uint64_t nw_masque_listener_add_client_demux_pattern(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((nw_protocol_metadata_is_masque_listener(a1) & 1) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
    v8 = _os_log_send_and_compose_impl();
    out[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v21) = 0;
    if (!__nwlog_fault(v8, out, &v21))
    {
      goto LABEL_27;
    }

    if (out[0] == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = out[0];
      if (!os_log_type_enabled(v9, out[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
      v11 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata)";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = out[0];
      v13 = os_log_type_enabled(v9, out[0]);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v13)
      {
LABEL_27:
        if (v8)
        {
          free(v8);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
      v11 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = out[0];
      if (!os_log_type_enabled(v9, out[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_add_client_demux_pattern";
      v11 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_27;
  }

  if (a2 && !uuid_is_null(a3))
  {
    memset(out, 0, 37);
    uuid_unparse(a3, out);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __nw_masque_listener_add_client_demux_pattern_block_invoke;
    v20[3] = &unk_1E6A2F4A0;
    v20[4] = &v21;
    v20[5] = out;
    nw_protocol_metadata_access_handle(a1, v20);
    v6 = v22[3];
    if (!v6)
    {
LABEL_7:
      _Block_object_dispose(&v21, 8);
      return 0;
    }

    if (nw_protocol_metadata_is_masque_listener(a1))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke;
      v29 = &__block_descriptor_tmp_33_27434;
      v30 = a2;
      v31 = v6;
      nw_protocol_metadata_access_handle(a1, buf);
      goto LABEL_7;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v14, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
        v17 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata)";
        goto LABEL_38;
      }

      if (v25 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
        v17 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), backtrace limit exceeded";
        goto LABEL_38;
      }

      v18 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v19 = os_log_type_enabled(v15, type);
      if (v18)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_39;
      }

      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_add_demux_pattern_for_endpoint";
        v17 = "%{public}s called with null nw_protocol_metadata_is_masque_listener(metadata), no backtrace";
LABEL_38:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

LABEL_39:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t nw_protocol_metadata_is_masque_listener(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
    {
      v8 = a1;
      dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
      a1 = v8;
    }

    if (nw_protocol_masque_listener_get_definition(void)::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
      a1 = v1;
    }

    else
    {
      v2 = 0;
    }

    return nw_protocol_metadata_matches_definition(a1, v2);
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_metadata_is_masque_listener";
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
        v14 = "nw_protocol_metadata_is_masque_listener";
        v7 = "%{public}s called with null metadata";
LABEL_23:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v11 == 1)
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
          v14 = "nw_protocol_metadata_is_masque_listener";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_metadata_is_masque_listener";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_23;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_metadata_is_masque_listener";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t __nw_masque_listener_add_client_demux_pattern_block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 2);
  v4 = *(*&a2->_os_unfair_lock_opaque + 472);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_dictionary_copy_value(v4, *(a1 + 40));
  }

  os_unfair_lock_unlock(a2 + 2);
  return 1;
}

uint64_t ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a2 + 8));
  v4 = *a2;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v5 = *(a1 + 32);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 0x40000000;
  v58[2] = ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_2;
  v58[3] = &unk_1E6A2F678;
  v58[4] = &v59;
  nw_demux_options_enumerate_patterns(v5, v58);
  v6 = v60[3];
  if (!v6)
  {
    v7 = 1;
LABEL_39:
    _Block_object_dispose(&v59, 8);
    return v7;
  }

  memset(__src, 0, sizeof(__src));
  v57 = 0;
  v7 = nw_endpoint_fillout_v4v6_address(*(a1 + 40), __src);
  if ((v7 & 1) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
    v33 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v64 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v33, type, &v64))
    {
      goto LABEL_73;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
      v36 = "%{public}s called with null success_masque";
    }

    else if (v64 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type[0];
      v44 = os_log_type_enabled(v34, type[0]);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
          v67 = 2082;
          v68 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null success_masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_73;
      }

      if (!v44)
      {
LABEL_73:
        if (v33)
        {
          free(v33);
        }

        goto LABEL_39;
      }

      *buf = 136446210;
      v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
      v36 = "%{public}s called with null success_masque, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
      v36 = "%{public}s called with null success_masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    goto LABEL_73;
  }

  v8 = 28;
  if (BYTE1(__src[0]) != 30)
  {
    v8 = 0;
  }

  if (BYTE1(__src[0]) == 2)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = v6 + v9;
  v11 = v6 + v9 + 8;
  if (v6 + v9 == -8)
  {
    v37 = __nwlog_obj();
    os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
    v38 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v38);
    if (result)
    {
      goto LABEL_77;
    }

    free(v38);
  }

  v12 = malloc_type_calloc(1uLL, v11, 0x39E4D7DBuLL);
  if (v12)
  {
    goto LABEL_12;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
  v67 = 2048;
  v68 = 1;
  v69 = 2048;
  v70 = v11;
  v13 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v13);
  if (!result)
  {
    free(v13);
LABEL_12:
    *type = 0;
    v53 = type;
    v54 = 0x2000000000;
    *v12 = bswap32(v10 + 6) >> 16;
    v12[2] = 2;
    *(v12 + 3) = v9 << 8;
    memcpy(v12 + 5, __src, v9);
    v15 = &v12[v9 + 5];
    *v15 = 1;
    *(v15 + 1) = bswap32(*(v60 + 12)) >> 16;
    v55 = v15 + 3;
    v16 = *(a1 + 32);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 0x40000000;
    v51[2] = ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_31;
    v51[3] = &unk_1E6A2F6A0;
    v51[4] = type;
    nw_demux_options_enumerate_patterns(v16, v51);
    v17 = dispatch_data_create(v12, v11, 0, 0);
    metadata_for_capsule = nw_http_create_metadata_for_capsule(16770306, v17);
    if (v4)
    {
      v19 = nw_masque_send_metadata(v4, metadata_for_capsule, *(v4 - 64));
      v20 = *(v4 + 503);
      if (v19)
      {
        if ((v20 & 0x10000) == 0)
        {
LABEL_15:
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v21 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_34;
          }

          v22 = " ";
          v23 = *(a1 + 40);
          v66 = "nw_masque_listener_add_demux_pattern_for_endpoint_block_invoke";
          v67 = 2082;
          v24 = (v4 + 507);
          *buf = 136446978;
          if (!v4)
          {
            v24 = "";
          }

          v68 = v24;
          if (!v4)
          {
            v22 = "";
          }

          v69 = 2080;
          v70 = v22;
          v71 = 2112;
          v72 = v23;
          v25 = "%{public}s %{public}s%sSent REGISTER_LISTENER_DEMUX_PATTERN capsule for endpoint %@";
          v26 = v21;
          v27 = OS_LOG_TYPE_DEBUG;
          v28 = 42;
          goto LABEL_33;
        }

LABEL_34:
        free(v12);
        if (v17)
        {
          dispatch_release(v17);
        }

        if (metadata_for_capsule)
        {
          os_release(metadata_for_capsule);
        }

        os_unfair_lock_unlock((a2 + 8));
        _Block_object_dispose(type, 8);
        goto LABEL_39;
      }

      if ((v20 & 0x10000) != 0)
      {
        goto LABEL_34;
      }

LABEL_25:
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v29 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v30 = (v4 + 507);
      if (!v4)
      {
        v30 = "";
      }

      v31 = *(a1 + 40);
      *buf = 136446722;
      v66 = v30;
      v32 = " ";
      if (!v4)
      {
        v32 = "";
      }

      v67 = 2080;
      v68 = v32;
      v69 = 2112;
      v70 = v31;
      v25 = "%{public}s%sFailed to send REGISTER_LISTENER_DEMUX_PATTERN capsule for endpoint %@";
      v26 = v29;
      v27 = OS_LOG_TYPE_ERROR;
      v28 = 32;
LABEL_33:
      _os_log_impl(&dword_181A37000, v26, v27, v25, buf, v28);
      goto LABEL_34;
    }

    __nwlog_obj();
    *buf = 136446210;
    v66 = "__nw_protocol_get_output_handler";
    v39 = _os_log_send_and_compose_impl();
    v64 = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v39, &v64, &v63))
    {
      if (v64 == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = v64;
        if (!os_log_type_enabled(v40, v64))
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v66 = "__nw_protocol_get_output_handler";
        v42 = "%{public}s called with null protocol";
LABEL_64:
        v48 = v40;
        v49 = v41;
LABEL_65:
        _os_log_impl(&dword_181A37000, v48, v49, v42, buf, 0xCu);
        goto LABEL_66;
      }

      if (v63 != 1)
      {
        v40 = __nwlog_obj();
        v41 = v64;
        if (!os_log_type_enabled(v40, v64))
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v66 = "__nw_protocol_get_output_handler";
        v42 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_64;
      }

      v45 = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v50 = v64;
      v47 = os_log_type_enabled(v46, v64);
      if (v45)
      {
        if (v47)
        {
          *buf = 136446466;
          v66 = "__nw_protocol_get_output_handler";
          v67 = 2082;
          v68 = v45;
          _os_log_impl(&dword_181A37000, v46, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v45);
      }

      else if (v47)
      {
        *buf = 136446210;
        v66 = "__nw_protocol_get_output_handler";
        v42 = "%{public}s called with null protocol, no backtrace";
        v48 = v46;
        v49 = v50;
        goto LABEL_65;
      }
    }

LABEL_66:
    if (v39)
    {
      free(v39);
    }

    if (nw_masque_send_metadata(0, metadata_for_capsule, 0))
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 32) + 8) + 24) += a2 + 4;
  if (a5)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v5;
  return 1;
}

uint64_t ___ZL49nw_masque_listener_add_demux_pattern_for_endpointP20nw_protocol_metadataP19nw_protocol_optionsP11nw_endpoint_block_invoke_31(uint64_t a1, size_t __n, __int16 a3, void *__src, const void *a5)
{
  **(*(*(a1 + 32) + 8) + 24) = __n;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  **(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  v7 = __n;
  memcpy(*(*(*(a1 + 32) + 8) + 24), __src, __n);
  *(*(*(a1 + 32) + 8) + 24) += v7;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (a5)
  {
    *v8 = 1;
    memcpy(++*(*(*(a1 + 32) + 8) + 24), a5, v7);
  }

  else
  {
    *v8 = 0;
    v7 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v7;
  return 1;
}

uint64_t nw_protocol_masque_listener_accept(nw_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_masque_listener_accept";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
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
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null many_to_one_handler";
LABEL_45:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_46;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null many_to_one_handler, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null many_to_one_handler, no backtrace";
      goto LABEL_45;
    }

    if (v9)
    {
      *buf = 136446466;
      v17 = "nw_protocol_masque_listener_accept";
      v18 = 2082;
      v19 = backtrace_string;
      v10 = "%{public}s called with null many_to_one_handler, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_masque_listener_accept";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
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
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null endpoint";
      goto LABEL_45;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null endpoint, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v11)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null endpoint, no backtrace";
      goto LABEL_45;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_masque_listener_accept";
      v18 = 2082;
      v19 = backtrace_string;
      v10 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_masque_listener_accept";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v4, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null parameters";
      goto LABEL_45;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_45;
    }

    v12 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v13 = os_log_type_enabled(v5, type);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v17 = "nw_protocol_masque_listener_accept";
      v7 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_45;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_masque_listener_accept";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
  }

LABEL_46:
  if (v4)
  {
LABEL_47:
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_masque_listener_create(const nw_protocol_identifier *a1, nw_object *a2, nw_endpoint *a3, nw_parameters *a4)
{
  if (nw_protocol_masque_listener_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_identifier(void)::onceToken, &__block_literal_global_195);
  }

  if (nw_protocol_masque_listener_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_callbacks(void)::onceToken, &__block_literal_global_199);
  }

  v6 = nw_protocol_new(600, a4, &nw_protocol_masque_listener_identifier(void)::g_masque_protocol_identifier, &nw_protocol_masque_listener_get_callbacks(void)::g_masque_listener_callbacks);
  v7 = v6;
  v8 = v6 - 96;
  if (v6)
  {
    v9 = (v6 - 96);
  }

  else
  {
    v9 = 0;
  }

  v10 = nw_protocol_ref_counted::additional::additional(v6, v9);
  nw_protocol_ref_counted::additional::additional(v10 + 80, v9);
  nw_protocol_ref_counted::additional::additional(v7 + 160, v9);
  *(v7 + 240) = 0;
  *(v7 + 248) = v7 + 240;
  if (a3)
  {
    v11 = os_retain(a3);
  }

  else
  {
    v11 = 0;
  }

  *(v7 + 288) = v11;
  *(v7 + 480) = 1;
  *(v7 + 488) = 0;
  *(v7 + 503) |= 0x10u;
  if (!*(v7 + 464))
  {
    internal = nw_hash_table_create_internal(5u, 24, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
    if (internal)
    {
      *(internal + 56) &= ~2u;
    }

    *(v7 + 464) = internal;
  }

  if (nw_parameters_get_logging_disabled(a4))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  *(v7 + 503) = *(v7 + 503) & 0xFFFEFFFF | v13;
  if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
  }

  if (nw_protocol_masque_listener_get_definition(void)::definition)
  {
    os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  *(v7 + 448) = singleton;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZL32nw_masque_listener_set_callbacksP20nw_protocol_metadataPv_block_invoke;
  v16[3] = &__block_descriptor_tmp_56_27485;
  v16[4] = v7;
  nw_protocol_metadata_access_handle(singleton, v16);
  return v8;
}

uint64_t nw_protocol_ref_counted::additional::additional(uint64_t this, nw_protocol *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(this + 72) = 0;
  if (a2)
  {
    *(this + 40) = &nw_protocol_ref_counted_additional_handle;
    *(this + 64) = a2;
    *(this + 72) = a2[1].identifier;
    a2[1].identifier = this;
    return this;
  }

  v2 = this;
  __nwlog_obj();
  *buf = 136446210;
  v12 = "additional";
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
        v12 = "additional";
        v6 = "%{public}s called with null protocol";
LABEL_17:
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
          v12 = "additional";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        v12 = "additional";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "additional";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return v2;
}

uint64_t ___ZL32nw_masque_listener_set_callbacksP20nw_protocol_metadataPv_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 8));
  *a2 = *(a1 + 32);
  os_unfair_lock_unlock((a2 + 8));
  return 1;
}

void ___ZL41nw_protocol_masque_listener_get_callbacksv_block_invoke()
{
  qword_1EA841BE0 = nw_protocol_default_output_available;
  qword_1EA841C58 = nw_protocol_default_output_finished;
  qword_1EA841CA0 = nw_protocol_default_input_flush;
  qword_1EA841C90 = nw_protocol_default_get_message_properties;
  qword_1EA841C00 = nw_protocol_default_link_state;
  qword_1EA841C18 = nw_protocol_default_get_local;
  qword_1EA841C10 = nw_protocol_default_get_path;
  qword_1EA841C40 = nw_protocol_default_updated_path;
  qword_1EA841C68 = nw_protocol_default_get_output_interface;
  qword_1EA841C98 = nw_protocol_default_reset;
  qword_1EA841C28 = nw_protocol_default_register_notification;
  qword_1EA841C30 = nw_protocol_default_unregister_notification;
  nw_protocol_masque_listener_get_callbacks(void)::g_masque_listener_callbacks = nw_protocol_masque_listener_add_input_handler;
  qword_1EA841BA8 = nw_protocol_masque_replace_input_handler;
  qword_1EA841BA0 = nw_protocol_masque_remove_input_handler;
  qword_1EA841BB0 = nw_protocol_masque_connect;
  qword_1EA841BC0 = nw_protocol_masque_connected;
  qword_1EA841BB8 = nw_protocol_masque_disconnect;
  qword_1EA841BC8 = nw_protocol_masque_disconnected;
  qword_1EA841BD0 = nw_protocol_masque_error;
  qword_1EA841C48 = nw_protocol_masque_supports_external_data;
  qword_1EA841C70 = nw_protocol_masque_waiting_for_output;
  qword_1EA841BF0 = nw_protocol_masque_listener_get_output_frames;
  qword_1EA841BF8 = nw_protocol_masque_listener_finalize_output_frames;
  qword_1EA841BE8 = nw_protocol_masque_listener_get_input_frames;
  qword_1EA841BD8 = nw_protocol_masque_input_available;
  qword_1EA841C50 = nw_protocol_masque_input_finished;
  qword_1EA841C20 = nw_protocol_masque_get_remote_endpoint;
  qword_1EA841C08 = nw_protocol_masque_get_parameters;
  qword_1EA841C60 = nw_protocol_masque_get_output_local_endpoint;
  qword_1EA841C78 = nw_protocol_masque_copy_info;
  qword_1EA841C38 = nw_protocol_masque_notify;
  qword_1EA841C80 = nw_protocol_masque_add_listen_handler;
  qword_1EA841C88 = nw_protocol_masque_remove_listen_handler;
}

uint64_t nw_protocol_masque_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_masque_remove_listen_handler";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v25, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_masque_remove_listen_handler";
          v28 = "%{public}s called with null protocol";
LABEL_73:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v34 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_protocol_masque_remove_listen_handler";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_74;
        }

        if (v34)
        {
          *buf = 136446210;
          v38 = "nw_protocol_masque_remove_listen_handler";
          v28 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_masque_remove_listen_handler";
          v28 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v25)
    {
      free(v25);
    }

    return 0;
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
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      v29 = a2;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v30 = gprivacy_proxyLogObj;
      v31 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v29;
      if (v31)
      {
        *buf = 136446978;
        v38 = "nw_protocol_masque_remove_listen_handler";
        v39 = 2082;
        v40 = &v7[9].callbacks + 3;
        v41 = 2080;
        v42 = " ";
        v43 = 2048;
        v44 = v29;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with listen_protocol %p", buf, 0x2Au);
        a2 = v29;
      }
    }

    if (*&v7[8].flow_id[8] == a2)
    {
      *&v7[8].flow_id[8] = 0;
      a2->protocol_handler = 0;
    }

    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v32 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v38 = "nw_protocol_masque_remove_listen_handler";
        v39 = 2082;
        v40 = &v7[9].callbacks + 3;
        v41 = 2080;
        v42 = " ";
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sremoved protocol listen handler", buf, 0x20u);
      }
    }

    result = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_38;
    }

    return result;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v38 = "nw_protocol_masque_remove_listen_handler";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v8, &type, &v35))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v38 = "nw_protocol_masque_remove_listen_handler";
    v11 = "%{public}s called with null masque";
LABEL_33:
    v17 = v9;
    v18 = v10;
LABEL_34:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_35;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v38 = "nw_protocol_masque_remove_listen_handler";
    v11 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_33;
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
      v38 = "nw_protocol_masque_remove_listen_handler";
      v39 = 2082;
      v40 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

  else if (v16)
  {
    *buf = 136446210;
    v38 = "nw_protocol_masque_remove_listen_handler";
    v11 = "%{public}s called with null masque, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_34;
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_38:
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = result;
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

          free(v2);
          return v22;
        }
      }
    }
  }

  return result;
}

BOOL nw_protocol_masque_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_masque_add_listen_handler";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v28, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v45 = "nw_protocol_masque_add_listen_handler";
          v31 = "%{public}s called with null protocol";
LABEL_83:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v37 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v37)
          {
            *buf = 136446466;
            v45 = "nw_protocol_masque_add_listen_handler";
            v46 = 2082;
            v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_84;
        }

        if (v37)
        {
          *buf = 136446210;
          v45 = "nw_protocol_masque_add_listen_handler";
          v31 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_83;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v45 = "nw_protocol_masque_add_listen_handler";
          v31 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_83;
        }
      }
    }

LABEL_84:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v5 = *a1[1].flow_id;
    if (!v5)
    {
      v6 = 1;
LABEL_10:
      handle = a1->handle;
      goto LABEL_11;
    }

LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:
  v8 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v45 = "nw_protocol_masque_add_listen_handler";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v42 = 0;
      if (__nwlog_fault(v9, &type, &v42))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446210;
            v45 = "nw_protocol_masque_add_listen_handler";
            v12 = "%{public}s called with null masque";
LABEL_40:
            v20 = v10;
            v21 = v11;
LABEL_41:
            _os_log_impl(&dword_181A37000, v20, v21, v12, buf, 0xCu);
          }
        }

        else if (v42 == 1)
        {
          v16 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          v19 = os_log_type_enabled(gLogObj, type);
          if (v16)
          {
            if (v19)
            {
              *buf = 136446466;
              v45 = "nw_protocol_masque_add_listen_handler";
              v46 = 2082;
              v47 = v16;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v16);
            goto LABEL_42;
          }

          if (v19)
          {
            *buf = 136446210;
            v45 = "nw_protocol_masque_add_listen_handler";
            v12 = "%{public}s called with null masque, no backtrace";
            v20 = v17;
            v21 = v18;
            goto LABEL_41;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446210;
            v45 = "nw_protocol_masque_add_listen_handler";
            v12 = "%{public}s called with null masque, backtrace limit exceeded";
            goto LABEL_40;
          }
        }
      }

LABEL_42:
      if (v9)
      {
        free(v9);
      }

      result = 0;
LABEL_45:
      if (v6)
      {
        return result;
      }

      goto LABEL_46;
    }

    v8 = *a1[1].flow_id;
  }

  if ((BYTE1(v8[9].callbacks) & 1) == 0 && gLogDatapath == 1)
  {
    v32 = a2;
    v33 = a3;
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v34 = gprivacy_proxyLogObj;
    v35 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
    a3 = v33;
    a2 = v32;
    if (v35)
    {
      *buf = 136446978;
      v45 = "nw_protocol_masque_add_listen_handler";
      v46 = 2082;
      v47 = &v8[9].callbacks + 3;
      v48 = 2080;
      v49 = " ";
      v50 = 2048;
      v51 = v32;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with listen_protocol %p", buf, 0x2Au);
      a2 = v32;
      a3 = v33;
    }
  }

  v13 = *(&v8[9].identifier + 7);
  if (*&v8[8].flow_id[8])
  {
    if ((v13 & 0x10000) != 0)
    {
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_46;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v14 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v45 = &v8[9].callbacks + 3;
    v46 = 2080;
    v47 = " ";
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s%salready have a listen handler, ignoring add", buf, 0x16u);
    result = 0;
    if (v6)
    {
      return result;
    }

LABEL_46:
    v22 = v3->handle;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v23 = v3[1].callbacks;
      if (v23)
      {
        v24 = (v23 - 1);
        v3[1].callbacks = v24;
        if (!v24)
        {
          v25 = result;
          v26 = *v3[1].flow_id;
          if (v26)
          {
            *v3[1].flow_id = 0;
            v26[2](v26);
            _Block_release(v26);
          }

          if (v3[1].flow_id[8])
          {
            v27 = *v3[1].flow_id;
            if (v27)
            {
              _Block_release(v27);
            }
          }

          free(v3);
          return v25;
        }
      }
    }

    return result;
  }

  if ((v13 & 0x10000) == 0 && gLogDatapath == 1)
  {
    v38 = a2;
    v39 = a3;
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v40 = gprivacy_proxyLogObj;
    v41 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
    a3 = v39;
    a2 = v38;
    if (v41)
    {
      *buf = 136446722;
      v45 = "nw_protocol_masque_add_listen_handler";
      v46 = 2082;
      v47 = &v8[9].callbacks + 3;
      v48 = 2080;
      v49 = " ";
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sadded protocol listen handler", buf, 0x20u);
      a2 = v38;
      a3 = v39;
    }
  }

  *&v8[8].flow_id[8] = a2;
  a2->protocol_handler = v3;
  if (a3)
  {
    nw_protocol_remove_instance(v3);
  }

  result = 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_46;
  }

  return result;
}

BOOL nw_masque_setup_demux(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_masque_setup_demux";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_masque_setup_demux";
      v16 = "%{public}s called with null masque";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_masque_setup_demux";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v18)
      {
LABEL_45:
        if (v13)
        {
          free(v13);
        }

        return 0;
      }

      *buf = 136446210;
      v24 = "nw_masque_setup_demux";
      v16 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_masque_setup_demux";
      v16 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_45;
  }

  if ((*(a1 + 506) & 2) != 0)
  {
    return 1;
  }

  v2 = *(a1 + 416);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    if (*(a1 + 368))
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 376))
  {
    goto LABEL_9;
  }

  if (!*(a1 + 432))
  {
    return 0;
  }

LABEL_9:
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!v4)
  {
    return 0;
  }

  v5 = (a1 + 503);
  v7 = 160;
  if (a2)
  {
    v7 = 80;
  }

  v9 = v4(*(a1 + 416), a1 + v7);
  v10 = *v5;
  if (v9)
  {
    if ((v10 & 0x10000) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v19 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v24 = "nw_masque_setup_demux";
        v25 = 2082;
        v26 = (a1 + 507);
        v27 = 2080;
        v28 = " ";
        if (a2)
        {
          v20 = "input";
        }

        else
        {
          v20 = "output";
        }

        v29 = 2082;
        v30 = v20;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdded %{public}s demux protocol", buf, 0x2Au);
      }
    }

    return 1;
  }

  if ((v10 & 0x10000) != 0)
  {
    return 0;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v12 = gprivacy_proxyLogObj;
  result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v24 = (a1 + 507);
    v25 = 2080;
    v26 = " ";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to add demux protocol", buf, 0x16u);
    return 0;
  }

  return result;
}

uint64_t nw_masque_setup_reverse_proxy(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_setup_reverse_proxy";
    v72 = _os_log_send_and_compose_impl();
    v84[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v72, v84, &type))
    {
      goto LABEL_155;
    }

    if (v84[0] == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = v84[0];
      if (!os_log_type_enabled(v73, v84[0]))
      {
        goto LABEL_155;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_setup_reverse_proxy";
      v75 = "%{public}s called with null masque";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = v84[0];
      v77 = os_log_type_enabled(v73, v84[0]);
      if (backtrace_string)
      {
        if (v77)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_setup_reverse_proxy";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_155;
      }

      if (!v77)
      {
LABEL_155:
        if (v72)
        {
          free(v72);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_setup_reverse_proxy";
      v75 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v73 = __nwlog_obj();
      v74 = v84[0];
      if (!os_log_type_enabled(v73, v84[0]))
      {
        goto LABEL_155;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_setup_reverse_proxy";
      v75 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
    goto LABEL_155;
  }

  result = nw_http_connection_metadata_get_secondary_certificate_count(*(a1 + 440));
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 503);
  if ((v3 & 0x1000000) != 0)
  {
    v5 = a1 - 96;
    while (1)
    {
      v6 = *(v5 + 16);
      if (nw_protocol_http_messaging_identifier::onceToken != -1)
      {
        v8 = *(v5 + 16);
        dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
        v6 = v8;
      }

      v7 = nw_protocols_are_equal(v6, &nw_protocol_http_messaging_identifier::protocol_identifier);
      if (v7)
      {
        break;
      }

      v5 = *(v5 + 48);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v78 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_masque_setup_reverse_proxy";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 507;
        *&buf[22] = 2080;
        v91 = " ";
        LOWORD(v92) = 2048;
        *(&v92 + 2) = v5;
        _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound HTTP Messaging protocol %p", buf, 0x2Au);
      }
    }

LABEL_18:
    v9 = *(a1 - 64);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 2);
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v81 = *(v9 + 2);
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v10 = v81;
        }

        if (nw_protocols_are_equal(v10, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          break;
        }

        v9 = *(v9 + 4);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v79 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_masque_setup_reverse_proxy";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 507;
          *&buf[22] = 2080;
          v91 = " ";
          LOWORD(v92) = 2048;
          *(&v92 + 2) = v9;
          _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound HTTP protocol %p", buf, 0x2Au);
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_23:
      v11 = 1;
    }

    v12 = !v7;
    v13 = *(a1 + 304);
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v14 = nw_parameters_copy_protocol_options_for_definition(v13, nw_protocol_copy_http_messaging_definition_definition);
    v15 = v14;
    if (((v11 | v12) & 1) != 0 || !v14)
    {
      if ((*(a1 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v32 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to find HTTP protocol, proceeding without attempting to reverse proxy", buf, 0x16u);
        }
      }

      result = 0;
      if (!v15)
      {
        return result;
      }

LABEL_126:
      v70 = result;
      os_release(v15);
      return v70;
    }

    v16 = *(a1 + 296);
    if (!v16)
    {
      if (*(a1 + 505))
      {
        result = 0;
      }

      else
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v33 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s%sNo target endpoint, not attempting to reverse proxy", buf, 0x16u);
          result = 0;
        }
      }

      goto LABEL_126;
    }

    v17 = v16;
    hostname = _nw_endpoint_get_hostname(v17);

    port = nw_endpoint_get_port(*(a1 + 288));
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, port);
    *v84 = 0;
    v85 = v84;
    v86 = 0x2000000000;
    v87 = 0;
    v21 = *(a1 + 440);
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 0x40000000;
    v83[2] = ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke;
    v83[3] = &unk_1E6A2F878;
    v83[5] = a1;
    v83[6] = host_with_numeric_port;
    v83[4] = v84;
    nw_http_connection_metadata_enumerate_secondary_certificates(v21, v83);
    if (host_with_numeric_port)
    {
      os_release(host_with_numeric_port);
    }

    v23 = *(a1 + 503);
    if ((v85[24] & 1) == 0)
    {
      if ((v23 & 0x10000) != 0)
      {
        goto LABEL_119;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v34 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_119;
      }

      v35 = v17;
      v36 = _nw_endpoint_get_hostname(v35);

      *buf = 136446722;
      *&buf[4] = a1 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v91 = v36;
      v37 = "%{public}s%sNo matching secondary certificates found for %s, not reverse-proxying";
      v38 = v34;
      v39 = OS_LOG_TYPE_INFO;
      v40 = 32;
      goto LABEL_118;
    }

    if ((v23 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v24 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v25 = v17;
        v26 = _nw_endpoint_get_hostname(v25);

        *buf = 136446722;
        *&buf[4] = a1 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v91 = v26;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s%sFound secondary certificate for %s, attempting TLS termination and restart for reverse proxy", buf, 0x20u);
      }
    }

    v27 = *(a1 + 336);
    if (v27)
    {
      nw_queue_cancel_source(v27, v22);
      *(a1 + 336) = 0;
    }

    if (!v9)
    {
      __nwlog_obj();
      v30 = 0;
      v41 = "invalid";
      goto LABEL_65;
    }

    v28 = *(v9 + 5);
    v29 = v9;
    if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = *(v9 + 8)) != 0)
    {
      v51 = *(v29 + 11);
      if (v51)
      {
        *(v29 + 11) = v51 + 1;
      }

      v30 = -1;
      v31 = *(v9 + 3);
      if (v31)
      {
LABEL_84:
        v52 = *(v31 + 224);
        if (v52)
        {
          v53 = v52(v9, 253, 0) != 0;
LABEL_96:
          if (v30)
          {
            if (v9)
            {
              v57 = *(v9 + 5);
              v58 = v9;
              if (v57 == &nw_protocol_ref_counted_handle || v57 == &nw_protocol_ref_counted_additional_handle && (v58 = *(v9 + 8)) != 0)
              {
                v59 = *(v58 + 11);
                if (v59)
                {
                  v60 = v59 - 1;
                  *(v58 + 11) = v60;
                  if (!v60)
                  {
                    v61 = *(v58 + 8);
                    if (v61)
                    {
                      *(v58 + 8) = 0;
                      v61[2](v61);
                      _Block_release(v61);
                    }

                    if (*(v58 + 72))
                    {
                      v62 = *(v58 + 8);
                      if (v62)
                      {
                        _Block_release(v62);
                      }
                    }

                    free(v58);
                  }
                }
              }
            }
          }

          if ((nw_http_messaging_options_override_version_specific_protocol(v15, v9, *(a1 + 440)) | v53))
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v91 = __Block_byref_object_copy__65;
            *&v92 = __Block_byref_object_dispose__66;
            v63 = *(a1 - 56);
            v64 = a1 - 96;
            if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v64 = *(a1 - 32)) != 0)
            {
              v68 = *(v64 + 88);
              if (v68)
              {
                *(v64 + 88) = v68 + 1;
              }

              *(&v92 + 1) = a1 - 96;
              v65 = v93 | 1;
            }

            else
            {
              *(&v92 + 1) = a1 - 96;
              v65 = v93 & 0xFE;
            }

            v93 = v65;
            v69 = *(a1 + 312);
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 0x40000000;
            v82[2] = ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke_67;
            v82[3] = &unk_1E6A2F8A0;
            v82[4] = buf;
            v82[5] = a1;
            nw_queue_context_async(v69, v82);
            _Block_object_dispose(buf, 8);
            nw::retained_ptr<nw_protocol *>::~retained_ptr(&v92 + 1);
            v67 = 1;
            goto LABEL_125;
          }

          if (*(a1 + 505))
          {
            goto LABEL_119;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v66 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
LABEL_119:
            v67 = 0;
LABEL_125:
            _Block_object_dispose(v84, 8);
            result = v67;
            goto LABEL_126;
          }

          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v37 = "%{public}s%sFailed to override persistent stack HTTP with reverse-proxying HTTP";
          v38 = v66;
          v39 = OS_LOG_TYPE_ERROR;
          v40 = 22;
LABEL_118:
          _os_log_impl(&dword_181A37000, v38, v39, v37, buf, v40);
          goto LABEL_119;
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = *(v9 + 3);
      if (v31)
      {
        goto LABEL_84;
      }
    }

    __nwlog_obj();
    v41 = *(v9 + 2);
    if (!v41)
    {
      v41 = "invalid";
    }

LABEL_65:
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_copy_info";
    *&buf[12] = 2082;
    *&buf[14] = v41;
    *&buf[22] = 2048;
    v91 = v9;
    v42 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (__nwlog_fault(v42, &type, &v88))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          v45 = "invalid";
          if (v9 && *(v9 + 2))
          {
            v45 = *(v9 + 2);
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v91 = v9;
          v46 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback";
LABEL_91:
          v55 = v43;
          v56 = v44;
LABEL_92:
          _os_log_impl(&dword_181A37000, v55, v56, v46, buf, 0x20u);
        }
      }

      else if (v88 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v80 = type;
        v49 = os_log_type_enabled(v48, type);
        if (v47)
        {
          if (v49)
          {
            v50 = "invalid";
            if (v9 && *(v9 + 2))
            {
              v50 = *(v9 + 2);
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_copy_info";
            *&buf[12] = 2082;
            *&buf[14] = v50;
            *&buf[22] = 2048;
            v91 = v9;
            LOWORD(v92) = 2082;
            *(&v92 + 2) = v47;
            _os_log_impl(&dword_181A37000, v48, v80, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v47);
          goto LABEL_93;
        }

        if (v49)
        {
          v71 = "invalid";
          if (v9 && *(v9 + 2))
          {
            v71 = *(v9 + 2);
          }

          v56 = v80;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          *&buf[22] = 2048;
          v91 = v9;
          v46 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, no backtrace";
          v55 = v48;
          goto LABEL_92;
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          v54 = "invalid";
          if (v9 && *(v9 + 2))
          {
            v54 = *(v9 + 2);
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v54;
          *&buf[22] = 2048;
          v91 = v9;
          v46 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, backtrace limit exceeded";
          goto LABEL_91;
        }
      }
    }

LABEL_93:
    if (v42)
    {
      free(v42);
    }

    v53 = 0;
    goto LABEL_96;
  }

  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v4 = gprivacy_proxyLogObj;
  result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446466;
    *&buf[4] = a1 + 507;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sHave certificates, but no HTTP in the stack identified for forwarding", buf, 0x16u);
    return 0;
  }

  return result;
}

void nw_masque_report_error_to_proxy_agent(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_masque_report_error_to_proxy_agent";
    v11 = _os_log_send_and_compose_impl();
    uu[0] = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v11, uu, &v19))
    {
      goto LABEL_46;
    }

    if (uu[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = uu[0];
      if (!os_log_type_enabled(v12, uu[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "nw_masque_report_error_to_proxy_agent";
      v14 = "%{public}s called with null masque";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = uu[0];
      v16 = os_log_type_enabled(v12, uu[0]);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_masque_report_error_to_proxy_agent";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v11)
        {
          return;
        }

LABEL_47:
        free(v11);
        return;
      }

      if (!v16)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "nw_masque_report_error_to_proxy_agent";
      v14 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = uu[0];
      if (!os_log_type_enabled(v12, uu[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "nw_masque_report_error_to_proxy_agent";
      v14 = "%{public}s called with null masque, backtrace limit exceeded";
    }

LABEL_45:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_46;
  }

  v3 = *(a1 + 304);
  if (v3)
  {
    memset(uu, 0, 16);
    v5 = _nw_parameters_copy_effective_proxy_config(v3);
    if (v5)
    {
      v6 = v5;
      *uu = *(v6 + 56);

      os_release(v6);
    }

    is_null = uuid_is_null(uu);
    v8 = *(a1 + 503);
    if (is_null)
    {
      if ((v8 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v9 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v21 = (a1 + 507);
          v22 = 2080;
          v23 = " ";
          v24 = 1024;
          v25 = a2;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s%sCannot report error %d, no proxy agent", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if ((v8 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v10 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136447234;
          v21 = (a1 + 507);
          v22 = 2080;
          v23 = " ";
          v24 = 1024;
          v25 = a2;
          v26 = 1042;
          v27 = 16;
          v28 = 2098;
          v29 = uu;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s%sReporting error %d to proxy agent %{public, uuid_t}.16P", buf, 0x2Cu);
        }
      }

      nw_path_report_error_to_agent(*(a1 + 320), uu, a2);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_masque_report_error_to_proxy_agent";
  v11 = _os_log_send_and_compose_impl();
  uu[0] = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v11, uu, &v19))
  {
    goto LABEL_46;
  }

  if (uu[0] == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = uu[0];
    if (!os_log_type_enabled(v12, uu[0]))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v21 = "nw_masque_report_error_to_proxy_agent";
    v14 = "%{public}s called with null masque->parameters";
    goto LABEL_45;
  }

  if (v19 != 1)
  {
    v12 = __nwlog_obj();
    v13 = uu[0];
    if (!os_log_type_enabled(v12, uu[0]))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v21 = "nw_masque_report_error_to_proxy_agent";
    v14 = "%{public}s called with null masque->parameters, backtrace limit exceeded";
    goto LABEL_45;
  }

  v17 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = uu[0];
  v18 = os_log_type_enabled(v12, uu[0]);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v21 = "nw_masque_report_error_to_proxy_agent";
    v14 = "%{public}s called with null masque->parameters, no backtrace";
    goto LABEL_45;
  }

  if (v18)
  {
    *buf = 136446466;
    v21 = "nw_masque_report_error_to_proxy_agent";
    v22 = 2082;
    v23 = v17;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null masque->parameters, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v11)
  {
    goto LABEL_47;
  }
}

uint64_t ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if ((!v4 || (*(v4 + 505) & 1) == 0) && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v7 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = v8 == 0;
      if (v8)
      {
        v10 = (v8 + 507);
      }

      else
      {
        v10 = "";
      }

      v12 = 136446978;
      v13 = "nw_masque_setup_reverse_proxy_block_invoke";
      v14 = 2082;
      v15 = v10;
      if (v9)
      {
        v11 = "";
      }

      else
      {
        v11 = " ";
      }

      v16 = 2080;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sChecking secondary certificate %@ to join for reverse-proxying", &v12, 0x2Au);
    }
  }

  is_equal = nw_endpoint_is_equal(a2, *(a1 + 48), 0);
  if (is_equal)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

void ___ZL29nw_masque_setup_reverse_proxyP9nw_masque_block_invoke_67(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (nw_protocol_is_zombie(*(*(*(a1 + 32) + 8) + 40)))
  {
    return;
  }

  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 505) & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v35 = gprivacy_proxyLogObj;
      v36 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v2 = *(a1 + 40);
      if (v36)
      {
        v37 = "";
        v38 = (v2 + 507);
        if (!v2)
        {
          v38 = "";
        }

        *buf = 136446722;
        v54 = "nw_masque_setup_reverse_proxy_block_invoke";
        if (v2)
        {
          v37 = " ";
        }

        v55 = 2082;
        v56 = v38;
        v57 = 2080;
        v58 = v37;
        _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRestarting HTTP request stack for reverse proxy", buf, 0x20u);
        v2 = *(a1 + 40);
      }
    }

    if (!v2)
    {
      __nwlog_obj();
      *buf = 136446210;
      v54 = "__nw_protocol_get_input_handler";
      v31 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v51 = 0;
      if (!__nwlog_fault(v31, &type, &v51))
      {
        goto LABEL_97;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (!os_log_type_enabled(v32, type))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v54 = "__nw_protocol_get_input_handler";
        v34 = "%{public}s called with null protocol";
      }

      else if (v51 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type;
        v43 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v43)
          {
            *buf = 136446466;
            v54 = "__nw_protocol_get_input_handler";
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_97;
        }

        if (!v43)
        {
LABEL_97:
          if (v31)
          {
            free(v31);
          }

LABEL_99:
          __nwlog_obj();
          *buf = 136446210;
          v54 = "__nw_protocol_notify";
          v3 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v51 = 0;
          if (!__nwlog_fault(v3, &type, &v51))
          {
            goto LABEL_114;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v46 = __nwlog_obj();
            v47 = type;
            if (!os_log_type_enabled(v46, type))
            {
              goto LABEL_114;
            }

            *buf = 136446210;
            v54 = "__nw_protocol_notify";
            v48 = "%{public}s called with null protocol";
          }

          else if (v51 == 1)
          {
            v49 = __nw_create_backtrace_string();
            v46 = __nwlog_obj();
            v47 = type;
            v50 = os_log_type_enabled(v46, type);
            if (v49)
            {
              if (v50)
              {
                *buf = 136446466;
                v54 = "__nw_protocol_notify";
                v55 = 2082;
                v56 = v49;
                _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v49);
              if (v3)
              {
                goto LABEL_47;
              }

              return;
            }

            if (!v50)
            {
LABEL_114:
              if (!v3)
              {
                return;
              }

              goto LABEL_47;
            }

            *buf = 136446210;
            v54 = "__nw_protocol_notify";
            v48 = "%{public}s called with null protocol, no backtrace";
          }

          else
          {
            v46 = __nwlog_obj();
            v47 = type;
            if (!os_log_type_enabled(v46, type))
            {
              goto LABEL_114;
            }

            *buf = 136446210;
            v54 = "__nw_protocol_notify";
            v48 = "%{public}s called with null protocol, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
          goto LABEL_114;
        }

        *buf = 136446210;
        v54 = "__nw_protocol_get_input_handler";
        v34 = "%{public}s called with null protocol, no backtrace";
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (!os_log_type_enabled(v32, type))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v54 = "__nw_protocol_get_input_handler";
        v34 = "%{public}s called with null protocol, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
      goto LABEL_97;
    }
  }

  v3 = *(v2 - 48);
  if (!v3)
  {
    goto LABEL_99;
  }

  v4 = v2 - 96;
  v5 = *(v3 + 40);
  v6 = *(v2 - 48);
  if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v3 + 64)) != 0)
  {
    v8 = *(v6 + 88);
    v7 = 0;
    if (v8)
    {
      *(v6 + 88) = v8 + 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *(v2 - 56);
  v10 = v2 - 96;
  if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v2 - 32)) != 0)
  {
    v13 = *(v10 + 88);
    if (v13)
    {
      v11 = 0;
      *(v10 + 88) = v13 + 1;
      v12 = *(v3 + 24);
      if (!v12)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v3 + 24);
      if (!v12)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    v11 = 1;
    v12 = *(v3 + 24);
    if (!v12)
    {
      goto LABEL_49;
    }
  }

  v14 = *(v12 + 160);
  if (v14)
  {
    v14(v3, v2 - 96, 25, 0, 1);
    goto LABEL_24;
  }

LABEL_49:
  __nwlog_obj();
  v25 = *(v3 + 16);
  *buf = 136446722;
  v54 = "__nw_protocol_notify";
  if (!v25)
  {
    v25 = "invalid";
  }

  v55 = 2082;
  v56 = v25;
  v57 = 2048;
  v58 = v3;
  v26 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (!__nwlog_fault(v26, &type, &v51))
  {
    goto LABEL_92;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_92;
    }

    v29 = *(v3 + 16);
    if (!v29)
    {
      v29 = "invalid";
    }

    *buf = 136446722;
    v54 = "__nw_protocol_notify";
    v55 = 2082;
    v56 = v29;
    v57 = 2048;
    v58 = v3;
    v30 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
    goto LABEL_91;
  }

  if (v51 != 1)
  {
    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_92;
    }

    v44 = *(v3 + 16);
    if (!v44)
    {
      v44 = "invalid";
    }

    *buf = 136446722;
    v54 = "__nw_protocol_notify";
    v55 = 2082;
    v56 = v44;
    v57 = 2048;
    v58 = v3;
    v30 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
    goto LABEL_91;
  }

  v39 = __nw_create_backtrace_string();
  v27 = __nwlog_obj();
  v28 = type;
  v40 = os_log_type_enabled(v27, type);
  if (v39)
  {
    if (v40)
    {
      v41 = *(v3 + 16);
      if (!v41)
      {
        v41 = "invalid";
      }

      *buf = 136446978;
      v54 = "__nw_protocol_notify";
      v55 = 2082;
      v56 = v41;
      v57 = 2048;
      v58 = v3;
      v59 = 2082;
      v60 = v39;
      _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v39);
    goto LABEL_92;
  }

  if (v40)
  {
    v45 = *(v3 + 16);
    if (!v45)
    {
      v45 = "invalid";
    }

    *buf = 136446722;
    v54 = "__nw_protocol_notify";
    v55 = 2082;
    v56 = v45;
    v57 = 2048;
    v58 = v3;
    v30 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
LABEL_91:
    _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x20u);
  }

LABEL_92:
  if (v26)
  {
    free(v26);
  }

LABEL_24:
  if ((v11 & 1) == 0)
  {
    v15 = *(v2 - 56);
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v2 - 32)) != 0)
    {
      v16 = *(v4 + 88);
      if (v16)
      {
        v17 = v16 - 1;
        *(v4 + 88) = v17;
        if (!v17)
        {
          v18 = *(v4 + 64);
          if (v18)
          {
            *(v4 + 64) = 0;
            v18[2](v18);
            _Block_release(v18);
          }

          if (*(v4 + 72))
          {
            v19 = *(v4 + 64);
            if (v19)
            {
              _Block_release(v19);
            }
          }

          free(v4);
        }
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    v20 = *(v3 + 40);
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
    {
      v21 = *(v3 + 88);
      if (v21)
      {
        v22 = v21 - 1;
        *(v3 + 88) = v22;
        if (!v22)
        {
          v23 = *(v3 + 64);
          if (v23)
          {
            *(v3 + 64) = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (*(v3 + 72))
          {
            v24 = *(v3 + 64);
            if (v24)
            {
              _Block_release(v24);
            }
          }

LABEL_47:
          free(v3);
        }
      }
    }
  }
}

BOOL ___ZL39nw_protocol_masque_reset_demux_protocolP11nw_protocol_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 432);
    *(*(a1 + 32) + 432) = nw_protocol_options_copy(*(a1 + 40));
    if (v3)
    {
      os_release(v3);
    }
  }

  return a2 == 0;
}

void nw_masque_setup_server_connect(uint64_t a1)
{
  v121 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v112 = "nw_masque_setup_server_connect";
    v71 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v71, &type, &v109))
    {
      goto LABEL_244;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "nw_masque_setup_server_connect";
      v74 = "%{public}s called with null masque";
    }

    else if (v109 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type;
      v76 = os_log_type_enabled(v72, type);
      if (backtrace_string)
      {
        if (v76)
        {
          *buf = 136446466;
          v112 = "nw_masque_setup_server_connect";
          v113 = 2082;
          v114 = backtrace_string;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_244:
        if (!v71)
        {
          return;
        }

LABEL_245:
        v70 = v71;
LABEL_139:
        free(v70);
        return;
      }

      if (!v76)
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "nw_masque_setup_server_connect";
      v74 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "nw_masque_setup_server_connect";
      v74 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    goto LABEL_243;
  }

  v1 = a1;
  if (!*(a1 + 304))
  {
    __nwlog_obj();
    *buf = 136446210;
    v112 = "nw_masque_setup_server_connect";
    v71 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v71, &type, &v109))
    {
      goto LABEL_244;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "nw_masque_setup_server_connect";
      v74 = "%{public}s called with null masque->parameters";
    }

    else if (v109 == 1)
    {
      v77 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type;
      v78 = os_log_type_enabled(v72, type);
      if (v77)
      {
        if (!v78)
        {
          goto LABEL_158;
        }

        *buf = 136446466;
        v112 = "nw_masque_setup_server_connect";
        v113 = 2082;
        v114 = v77;
        v79 = "%{public}s called with null masque->parameters, dumping backtrace:%{public}s";
        goto LABEL_157;
      }

      if (!v78)
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "nw_masque_setup_server_connect";
      v74 = "%{public}s called with null masque->parameters, no backtrace";
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "nw_masque_setup_server_connect";
      v74 = "%{public}s called with null masque->parameters, backtrace limit exceeded";
    }

LABEL_243:
    _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
    goto LABEL_244;
  }

  if (!*(a1 + 376) || *(a1 + 488))
  {
    return;
  }

  v2 = *(a1 - 64);
  if (!v2)
  {
LABEL_15:
    if (*(v1 + 505))
    {
      return;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v5 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v112 = v1 + 507;
    v113 = 2080;
    v114 = " ";
    v6 = "%{public}s%sFailed to find HTTP protocol";
    goto LABEL_102;
  }

  v107 = (a1 - 96);
  while (1)
  {
    v3 = *(v2 + 16);
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v105 = *(v2 + 16);
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v3 = v105;
    }

    if (nw_protocols_are_equal(v3, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      break;
    }

    v4 = *(v2 + 16);
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v106 = *(v2 + 16);
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v4 = v106;
    }

    if (nw_protocols_are_equal(v4, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      break;
    }

    v2 = *(v2 + 32);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  if ((*(v1 + 505) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v85 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v112 = "nw_masque_setup_server_connect";
      v113 = 2082;
      v114 = v1 + 507;
      v115 = 2080;
      v116 = " ";
      v117 = 2048;
      v118 = v2;
      _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound HTTP protocol %p", buf, 0x2Au);
    }
  }

  v7 = *(v2 + 24);
  if (!v7 || !*v7 || !v7[3])
  {
    return;
  }

  if (!v1[50])
  {
    v8 = v7[14];
    if (v8)
    {
      v9 = *(v2 + 40);
      v10 = v2;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v2 + 64)) != 0)
      {
        v12 = *(v10 + 88);
        if (v12)
        {
          *(v10 + 88) = v12 + 1;
        }

        v11 = v8(v2);
        v13 = *(v2 + 40);
        v14 = v2;
        if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *(v2 + 64)) != 0)
        {
          v15 = *(v14 + 88);
          if (v15)
          {
            v16 = v15 - 1;
            *(v14 + 88) = v16;
            if (!v16)
            {
              v17 = v11;
              v18 = *(v14 + 64);
              if (v18)
              {
                *(v14 + 64) = 0;
                v18[2](v18);
                _Block_release(v18);
              }

              if (*(v14 + 72))
              {
                v19 = *(v14 + 64);
                if (v19)
                {
                  _Block_release(v19);
                }
              }

              free(v14);
              v11 = v17;
            }
          }
        }
      }

      else
      {
        v11 = v8(v2);
      }

      v1[50] = _nw_parameters_shallow_copy(v11, 1);
    }
  }

  v20 = *(v1 - 6);
  v21 = v1[6];
  if (v21 != v20)
  {
    nw_protocol_release(v21);
    v1[6] = v20;
    if (v20)
    {
      v22 = v20[5];
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v20 = v20[8]) != 0)
      {
        v23 = v20[11];
        if (v23)
        {
          v20[11] = v23 + 1;
        }
      }
    }
  }

  *v1 = *v107;
  v24 = *(v2 + 40);
  v25 = v2;
  if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *(v2 + 64)) != 0)
  {
    v27 = *(v25 + 88);
    v26 = 0;
    if (v27)
    {
      *(v25 + 88) = v27 + 1;
    }
  }

  else
  {
    v26 = 1;
  }

  v28 = v1[5];
  v29 = v1;
  if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = v1[8]) != 0)
  {
    v31 = v29[11];
    v30 = 0;
    if (v31)
    {
      v29[11] = v31 + 1;
    }
  }

  else
  {
    v30 = 1;
  }

  v32 = *(v2 + 24);
  if (v32)
  {
    v33 = *v32;
    if (v33)
    {
      v34 = v33(v2, v1);
      if (v30)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }
  }

  __nwlog_obj();
  v80 = *(v2 + 16);
  *buf = 136446722;
  v112 = "__nw_protocol_add_input_handler";
  if (!v80)
  {
    v80 = "invalid";
  }

  v113 = 2082;
  v114 = v80;
  v115 = 2048;
  v116 = v2;
  type = OS_LOG_TYPE_ERROR;
  v109 = 0;
  v108 = _os_log_send_and_compose_impl();
  if (__nwlog_fault(v108, &type, &v109))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_228;
      }

      v83 = *(v2 + 16);
      if (!v83)
      {
        v83 = "invalid";
      }

      *buf = 136446722;
      v112 = "__nw_protocol_add_input_handler";
      v113 = 2082;
      v114 = v83;
      v115 = 2048;
      v116 = v2;
      v84 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback";
LABEL_227:
      _os_log_impl(&dword_181A37000, v81, v82, v84, buf, 0x20u);
      goto LABEL_228;
    }

    if (v109 != 1)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_228;
      }

      v97 = *(v2 + 16);
      if (!v97)
      {
        v97 = "invalid";
      }

      *buf = 136446722;
      v112 = "__nw_protocol_add_input_handler";
      v113 = 2082;
      v114 = v97;
      v115 = 2048;
      v116 = v2;
      v84 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded";
      goto LABEL_227;
    }

    v92 = __nw_create_backtrace_string();
    v81 = __nwlog_obj();
    v82 = type;
    v93 = os_log_type_enabled(v81, type);
    if (!v92)
    {
      if (!v93)
      {
        goto LABEL_228;
      }

      v103 = *(v2 + 16);
      if (!v103)
      {
        v103 = "invalid";
      }

      *buf = 136446722;
      v112 = "__nw_protocol_add_input_handler";
      v113 = 2082;
      v114 = v103;
      v115 = 2048;
      v116 = v2;
      v84 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace";
      goto LABEL_227;
    }

    if (v93)
    {
      if (*(v2 + 16))
      {
        v94 = *(v2 + 16);
      }

      else
      {
        v94 = "invalid";
      }

      *buf = 136446978;
      v112 = "__nw_protocol_add_input_handler";
      v113 = 2082;
      v114 = v94;
      v115 = 2048;
      v116 = v2;
      v117 = 2082;
      v118 = v92;
      _os_log_impl(&dword_181A37000, v81, v82, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v92);
  }

LABEL_228:
  if (v108)
  {
    free(v108);
  }

  v34 = 0;
  if ((v30 & 1) == 0)
  {
LABEL_67:
    v35 = v1[5];
    v36 = v1;
    if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = v1[8]) != 0)
    {
      v37 = v36[11];
      if (v37)
      {
        v38 = v37 - 1;
        v36[11] = v38;
        if (!v38)
        {
          v39 = v34;
          v40 = v36[8];
          if (v40)
          {
            v36[8] = 0;
            v40[2](v40);
            _Block_release(v40);
          }

          if (v36[9])
          {
            v41 = v36[8];
            if (v41)
            {
              _Block_release(v41);
            }
          }

          free(v36);
          v34 = v39;
        }
      }
    }
  }

LABEL_78:
  if ((v26 & 1) == 0)
  {
    v42 = *(v2 + 40);
    if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
    {
      v43 = *(v2 + 88);
      if (v43)
      {
        v44 = v43 - 1;
        *(v2 + 88) = v44;
        if (!v44)
        {
          v45 = v34;
          v46 = *(v2 + 64);
          if (v46)
          {
            *(v2 + 64) = 0;
            v46[2](v46);
            _Block_release(v46);
          }

          if (*(v2 + 72))
          {
            v47 = *(v2 + 64);
            if (v47)
            {
              _Block_release(v47);
            }
          }

          free(v2);
          v34 = v45;
        }
      }
    }
  }

  v48 = *(v1 + 503);
  if ((v34 & 1) == 0)
  {
    if ((v48 & 0x10000) != 0)
    {
      return;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v5 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v112 = v1 + 507;
    v113 = 2080;
    v114 = " ";
    v6 = "%{public}s%sFailed to add server connect stream";
LABEL_102:
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x16u);
    return;
  }

  if ((v48 & 0x10000) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v95 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      v96 = v1[4];
      *buf = 136447234;
      v112 = "nw_masque_setup_server_connect";
      v113 = 2082;
      v114 = v1 + 507;
      v115 = 2080;
      v116 = " ";
      v117 = 2048;
      v118 = v1;
      v119 = 2048;
      v120 = v96;
      _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sserver_connect_protocol %p output_handler %p", buf, 0x34u);
    }
  }

  v49 = v1[4];
  if (!v49)
  {
    __nwlog_obj();
    *buf = 136446210;
    v112 = "__nw_protocol_connect";
    v71 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v71, &type, &v109))
    {
      goto LABEL_244;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "__nw_protocol_connect";
      v74 = "%{public}s called with null protocol";
      goto LABEL_243;
    }

    if (v109 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "__nw_protocol_connect";
      v74 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_243;
    }

    v77 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type;
    v101 = os_log_type_enabled(v72, type);
    if (!v77)
    {
      if (!v101)
      {
        goto LABEL_244;
      }

      *buf = 136446210;
      v112 = "__nw_protocol_connect";
      v74 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_243;
    }

    if (!v101)
    {
LABEL_158:
      free(v77);
      if (!v71)
      {
        return;
      }

      goto LABEL_245;
    }

    *buf = 136446466;
    v112 = "__nw_protocol_connect";
    v113 = 2082;
    v114 = v77;
    v79 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_157:
    _os_log_impl(&dword_181A37000, v72, v73, v79, buf, 0x16u);
    goto LABEL_158;
  }

  v50 = *(v49 + 40);
  v51 = v1[4];
  if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (v51 = *(v49 + 64)) != 0)
  {
    v53 = *(v51 + 88);
    v52 = 0;
    if (v53)
    {
      *(v51 + 88) = v53 + 1;
    }
  }

  else
  {
    v52 = 1;
  }

  v54 = v1[5];
  v55 = v1;
  if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v55 = v1[8]) != 0)
  {
    v57 = v55[11];
    v56 = 0;
    if (v57)
    {
      v55[11] = v57 + 1;
    }
  }

  else
  {
    v56 = 1;
  }

  v58 = *(v49 + 24);
  if (v58)
  {
    v59 = *(v58 + 24);
    if (v59)
    {
      v59(v49, v1);
      goto LABEL_115;
    }
  }

  __nwlog_obj();
  v86 = *(v49 + 16);
  *buf = 136446722;
  v112 = "__nw_protocol_connect";
  if (!v86)
  {
    v86 = "invalid";
  }

  v113 = 2082;
  v114 = v86;
  v115 = 2048;
  v116 = v49;
  v87 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v109 = 0;
  if (__nwlog_fault(v87, &type, &v109))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v88 = __nwlog_obj();
      v89 = type;
      if (!os_log_type_enabled(v88, type))
      {
        goto LABEL_239;
      }

      v90 = *(v49 + 16);
      if (!v90)
      {
        v90 = "invalid";
      }

      *buf = 136446722;
      v112 = "__nw_protocol_connect";
      v113 = 2082;
      v114 = v90;
      v115 = 2048;
      v116 = v49;
      v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
      goto LABEL_238;
    }

    if (v109 != 1)
    {
      v88 = __nwlog_obj();
      v89 = type;
      if (!os_log_type_enabled(v88, type))
      {
        goto LABEL_239;
      }

      v102 = *(v49 + 16);
      if (!v102)
      {
        v102 = "invalid";
      }

      *buf = 136446722;
      v112 = "__nw_protocol_connect";
      v113 = 2082;
      v114 = v102;
      v115 = 2048;
      v116 = v49;
      v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
      goto LABEL_238;
    }

    v98 = __nw_create_backtrace_string();
    v88 = __nwlog_obj();
    v89 = type;
    v99 = os_log_type_enabled(v88, type);
    if (v98)
    {
      if (v99)
      {
        v100 = *(v49 + 16);
        if (!v100)
        {
          v100 = "invalid";
        }

        *buf = 136446978;
        v112 = "__nw_protocol_connect";
        v113 = 2082;
        v114 = v100;
        v115 = 2048;
        v116 = v49;
        v117 = 2082;
        v118 = v98;
        _os_log_impl(&dword_181A37000, v88, v89, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v98);
      goto LABEL_239;
    }

    if (v99)
    {
      v104 = *(v49 + 16);
      if (!v104)
      {
        v104 = "invalid";
      }

      *buf = 136446722;
      v112 = "__nw_protocol_connect";
      v113 = 2082;
      v114 = v104;
      v115 = 2048;
      v116 = v49;
      v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
LABEL_238:
      _os_log_impl(&dword_181A37000, v88, v89, v91, buf, 0x20u);
    }
  }

LABEL_239:
  if (v87)
  {
    free(v87);
  }

LABEL_115:
  if ((v56 & 1) == 0)
  {
    v60 = v1[5];
    if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v61 = v1[11];
      if (v61)
      {
        v62 = v61 - 1;
        v1[11] = v62;
        if (!v62)
        {
          v63 = v1[8];
          if (v63)
          {
            v1[8] = 0;
            v63[2](v63);
            _Block_release(v63);
          }

          if (v1[9])
          {
            v64 = v1[8];
            if (v64)
            {
              _Block_release(v64);
            }
          }

          free(v1);
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
    v65 = *(v49 + 40);
    if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v49 = *(v49 + 64)) != 0)
    {
      v66 = *(v49 + 88);
      if (v66)
      {
        v67 = v66 - 1;
        *(v49 + 88) = v67;
        if (!v67)
        {
          v68 = *(v49 + 64);
          if (v68)
          {
            *(v49 + 64) = 0;
            v68[2](v68);
            _Block_release(v68);
          }

          if (*(v49 + 72))
          {
            v69 = *(v49 + 64);
            if (v69)
            {
              _Block_release(v69);
            }
          }

          v70 = v49;
          goto LABEL_139;
        }
      }
    }
  }
}

uint64_t nw_masque_create_connection_id_capsule(NSObject *a1, dispatch_data_s *a2, dispatch_data_s *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  size = dispatch_data_get_size(a1);
  v5 = size;
  __src = 0;
  if (size > 0x3F)
  {
    if (size >> 14)
    {
      if (size >> 30)
      {
        if (size >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *applier = 136446466;
          *&applier[4] = "_http_vle_encode";
          *&applier[12] = 2048;
          *&applier[14] = v5;
          v7 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v7);
          if (result)
          {
            __break(1u);
            return result;
          }

          free(v7);
          v6 = 0;
        }

        else
        {
          __src = bswap64(size | 0xC000000000000000);
          v6 = 8;
        }
      }

      else
      {
        __src = bswap32(size | 0x80000000);
        v6 = 4;
      }
    }

    else
    {
      __src = bswap32(size | 0x4000) >> 16;
      v6 = 2;
    }
  }

  else
  {
    __src = size;
    v6 = 1;
  }

  alloc = dispatch_data_create_alloc();
  memcpy(0, &__src, v6);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = v6;
  if (a1)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
    v15 = &unk_1E6A34348;
    v17 = v12;
    v18 = v5;
    v16 = v13;
    dispatch_data_apply(a1, applier);
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  *(v6 + v5) = 0;
  result = nw_http_create_metadata_for_capsule(16770049, alloc);
  if (alloc)
  {
    v10 = result;
    dispatch_release(alloc);
    return v10;
  }

  return result;
}

uint64_t ___ZL35nw_protocol_masque_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_139(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &v18);
  if (v3)
  {
    v4 = v18;
    if (v18)
    {
      v5 = *(a1 + 32);
      if (*(v5 + 368))
      {
        v6 = *(v5 + 384);
        if (v6)
        {
          v7 = v3;
          size = dispatch_data_get_size(*(v5 + 368));
          if (size + 1 < v4)
          {
            v9 = size;
            if (dispatch_data_get_size(v6) == size && *v7 >= 64)
            {
              v10 = dispatch_data_create(v7 + 1, v9, 0, *MEMORY[0x1E69E9658]);
              if (nw_dispatch_data_is_equal(v10, *(*(a1 + 32) + 384)))
              {
                nw_dispatch_data_copyout(*(*(a1 + 32) + 368), (v7 + 1), v9);
                v11 = *(a1 + 32);
                if ((!v11 || (*(v11 + 505) & 1) == 0) && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v13 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    v14 = *(a1 + 32);
                    v15 = "";
                    v16 = v14 == 0;
                    if (v14)
                    {
                      v17 = (v14 + 507);
                    }

                    else
                    {
                      v17 = "";
                    }

                    *buf = 136446722;
                    v20 = "nw_protocol_masque_get_input_frames_block_invoke";
                    if (!v16)
                    {
                      v15 = " ";
                    }

                    v21 = 2082;
                    v22 = v17;
                    v23 = 2080;
                    v24 = v15;
                    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing with real client CID before processing", buf, 0x20u);
                  }
                }
              }

              if (v10)
              {
                dispatch_release(v10);
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

void nw_masque_handle_capsule(uint64_t a1, void *a2)
{
  v242 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v207 = _os_log_send_and_compose_impl();
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) == 17)
    {
      v208 = __nwlog_obj();
      v209 = length[0];
      if (!os_log_type_enabled(v208, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null masque";
    }

    else if (__src == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v208 = __nwlog_obj();
      v209 = length[0];
      v212 = os_log_type_enabled(v208, length[0]);
      if (backtrace_string)
      {
        if (v212)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_526:
        if (!v207)
        {
          return;
        }

        goto LABEL_527;
      }

      if (!v212)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v208 = __nwlog_obj();
      v209 = length[0];
      if (!os_log_type_enabled(v208, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    goto LABEL_525;
  }

  v3 = a1;
  if ((nw_protocol_metadata_is_http(a2) & 1) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v207 = _os_log_send_and_compose_impl();
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) != 17)
    {
      if (__src != 1)
      {
        v208 = __nwlog_obj();
        v209 = length[0];
        if (!os_log_type_enabled(v208, length[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_handle_capsule";
        v210 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
        goto LABEL_525;
      }

      v213 = __nw_create_backtrace_string();
      v208 = __nwlog_obj();
      v209 = length[0];
      v214 = os_log_type_enabled(v208, length[0]);
      if (!v213)
      {
        if (!v214)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_handle_capsule";
        v210 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
        goto LABEL_525;
      }

      if (!v214)
      {
        goto LABEL_507;
      }

      *buf = 136446466;
      *&buf[4] = "nw_masque_handle_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v213;
      v215 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s";
      goto LABEL_506;
    }

    v208 = __nwlog_obj();
    v209 = length[0];
    if (!os_log_type_enabled(v208, length[0]))
    {
      goto LABEL_526;
    }

    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v210 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
LABEL_525:
    _os_log_impl(&dword_181A37000, v208, v209, v210, buf, 0xCu);
    goto LABEL_526;
  }

  if (!nw_http_metadata_is_capsule(a2))
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v207 = _os_log_send_and_compose_impl();
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) == 17)
    {
      v208 = __nwlog_obj();
      v209 = length[0];
      if (!os_log_type_enabled(v208, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null nw_http_metadata_is_capsule(metadata)";
      goto LABEL_525;
    }

    if (__src != 1)
    {
      v208 = __nwlog_obj();
      v209 = length[0];
      if (!os_log_type_enabled(v208, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null nw_http_metadata_is_capsule(metadata), backtrace limit exceeded";
      goto LABEL_525;
    }

    v213 = __nw_create_backtrace_string();
    v208 = __nwlog_obj();
    v209 = length[0];
    v216 = os_log_type_enabled(v208, length[0]);
    if (!v213)
    {
      if (!v216)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null nw_http_metadata_is_capsule(metadata), no backtrace";
      goto LABEL_525;
    }

    if (!v216)
    {
      goto LABEL_507;
    }

    *buf = 136446466;
    *&buf[4] = "nw_masque_handle_capsule";
    *&buf[12] = 2082;
    *&buf[14] = v213;
    v215 = "%{public}s called with null nw_http_metadata_is_capsule(metadata), dumping backtrace:%{public}s";
LABEL_506:
    _os_log_impl(&dword_181A37000, v208, v209, v215, buf, 0x16u);
    goto LABEL_507;
  }

  capsule_type = nw_http_metadata_get_capsule_type(a2);
  v5 = nw_http_metadata_copy_capsule_data(a2);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_handle_capsule";
    v207 = _os_log_send_and_compose_impl();
    LOBYTE(length[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, length, &__src))
    {
      goto LABEL_526;
    }

    if (LOBYTE(length[0]) == 17)
    {
      v208 = __nwlog_obj();
      v209 = length[0];
      if (!os_log_type_enabled(v208, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null capsule_data";
      goto LABEL_525;
    }

    if (__src != 1)
    {
      v208 = __nwlog_obj();
      v209 = length[0];
      if (!os_log_type_enabled(v208, length[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null capsule_data, backtrace limit exceeded";
      goto LABEL_525;
    }

    v213 = __nw_create_backtrace_string();
    v208 = __nwlog_obj();
    v209 = length[0];
    v217 = os_log_type_enabled(v208, length[0]);
    if (!v213)
    {
      if (!v217)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_handle_capsule";
      v210 = "%{public}s called with null capsule_data, no backtrace";
      goto LABEL_525;
    }

    if (v217)
    {
      *buf = 136446466;
      *&buf[4] = "nw_masque_handle_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v213;
      v215 = "%{public}s called with null capsule_data, dumping backtrace:%{public}s";
      goto LABEL_506;
    }

LABEL_507:
    free(v213);
    if (!v207)
    {
      return;
    }

LABEL_527:
    free(v207);
    return;
  }

  v6 = v5;
  if (capsule_type > 16770049)
  {
    if (capsule_type > 16770052)
    {
      if (capsule_type <= 16770304)
      {
        if (capsule_type == 16770053)
        {
          if ((*(v3 + 505) & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v218 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "nw_masque_handle_capsule";
              *&buf[12] = 2082;
              *&buf[14] = v3 + 507;
              *&buf[22] = 2080;
              v233 = " ";
              _os_log_impl(&dword_181A37000, v218, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived CLOSE_TARGET_CID capsule", buf, 0x20u);
            }
          }

          v15 = *(v3 + 376);
          if (v15)
          {
            dispatch_release(v15);
            *(v3 + 376) = 0;
          }

          goto LABEL_465;
        }

        if (capsule_type == 16770304)
        {
          if (*(v3 + 505))
          {
            goto LABEL_372;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v7 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_372;
          }

          *buf = 136446466;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v8 = "%{public}s%sReceived unexpected REGISTER_DEMUX_PATTERN capsule";
LABEL_371:
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
LABEL_372:
          nw_masque_mark_failed_with_error(v3, 94);
          goto LABEL_465;
        }

        goto LABEL_373;
      }

      if (capsule_type != 16770305)
      {
        if (capsule_type == 16770307)
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v11 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = v3 + 507;
          *&buf[22] = 2080;
          v233 = " ";
          v12 = "%{public}s %{public}s%sReceived ACK_LISTENER_DEMUX capsule, ignoring";
LABEL_47:
          v13 = v11;
          v14 = OS_LOG_TYPE_DEBUG;
LABEL_422:
          _os_log_impl(&dword_181A37000, v13, v14, v12, buf, 0x20u);
          goto LABEL_465;
        }

LABEL_373:
        if (*(v3 + 505))
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v197 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_465;
        }

        *buf = 136446722;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        v233 = capsule_type;
        v12 = "%{public}s%sUnknown capsule type %llx";
LABEL_378:
        v13 = v197;
LABEL_421:
        v14 = OS_LOG_TYPE_ERROR;
        goto LABEL_422;
      }

      if ((*(v3 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v16 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = v3 + 507;
          *&buf[22] = 2080;
          v233 = " ";
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_DEMUX capsule", buf, 0x20u);
        }
      }

      v17 = *(v3 + 432);
      if (v17)
      {
        if (dispatch_data_get_size(v6))
        {
          length[0] = 0;
          length[1] = length;
          *&length[2] = 0x2000000000uLL;
          v228[0] = MEMORY[0x1E69E9820];
          v228[1] = 0x40000000;
          v228[2] = ___ZL24nw_masque_handle_capsuleP9nw_masqueP20nw_protocol_metadata_block_invoke;
          v228[3] = &unk_1E6A2FB88;
          v228[4] = length;
          v228[5] = v6;
          v228[6] = v3;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = __nw_demux_options_enumerate_patterns_block_invoke;
          v233 = &unk_1E6A2F0D8;
          *&v234 = v228;
          nw_protocol_options_access_handle(v17, buf);
          *(v3 + 503) |= 0x100400u;
          _Block_object_dispose(length, 8);
          goto LABEL_465;
        }

        if ((*(v3 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v203 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = v3 + 507;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2048;
            v233 = 0;
            v12 = "%{public}s%sReceived short ACK_DEMUX_PATTERN capsule (%zu bytes)";
LABEL_420:
            v13 = v203;
            goto LABEL_421;
          }
        }

        goto LABEL_465;
      }

      if (*(v3 + 505))
      {
        goto LABEL_465;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v9 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_465;
      }

      *buf = 136446466;
      *&buf[4] = v3 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = "%{public}s%sReceived ACK_DEMUX_PATTERN capsule without a stored client demux options, ignoring";
      goto LABEL_451;
    }

    if (capsule_type != 16770050)
    {
      if (capsule_type != 16770051)
      {
        if ((*(v3 + 505) & 1) != 0 || gLogDatapath != 1)
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v11 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_465;
        }

        *buf = 136446722;
        *&buf[4] = "nw_masque_handle_capsule";
        *&buf[12] = 2082;
        *&buf[14] = v3 + 507;
        *&buf[22] = 2080;
        v233 = " ";
        v12 = "%{public}s %{public}s%sReceived CLOSE_CLIENT_CID capsule, ignoring";
        goto LABEL_47;
      }

      if (*(v3 + 376))
      {
        size = dispatch_data_get_size(v5);
        if (!size)
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v203 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v233 = 0;
          v12 = "%{public}s%sReceived short ACK_TARGET_CID capsule (%zu bytes)";
          goto LABEL_420;
        }

        v24 = size;
        v237[0] = 0;
        length[0] = 0;
        length[1] = length;
        *&length[2] = 0x2000000000uLL;
        __src = 0;
        *&v240 = &__src;
        *(&v240 + 1) = 0x2000000000;
        v241 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
        v233 = &unk_1E6A34370;
        *&v234 = &__src;
        *(&v234 + 1) = length;
        v235 = 1;
        v236 = v237;
        dispatch_data_apply(v6, buf);
        _Block_object_dispose(&__src, 8);
        _Block_object_dispose(length, 8);
        if (v24 <= v237[0])
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v197 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v233 = v24;
          v12 = "%{public}s%sReceived short ACK_TARGET_CID capsule (%zu bytes)";
          goto LABEL_378;
        }

        subrange = dispatch_data_create_subrange(v6, 1uLL, v237[0]);
        if (!subrange)
        {
          if (*(v3 + 505))
          {
            goto LABEL_465;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v197 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 136446722;
          *&buf[4] = v3 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v233 = v24;
          v12 = "%{public}s%sFailed to parse ACK_TARGET_CID capsule (%zu bytes)";
          goto LABEL_378;
        }

        v26 = subrange;
        is_equal = nw_dispatch_data_is_equal(*(v3 + 376), subrange);
        dispatch_release(v26);
        v28 = *(v3 + 503);
        if (is_equal)
        {
          if ((v28 & 0x10000) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v29 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "nw_masque_handle_capsule";
              *&buf[12] = 2082;
              *&buf[14] = v3 + 507;
              *&buf[22] = 2080;
              v233 = " ";
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_TARGET_CID capsule, forwarding allowed", buf, 0x20u);
            }
          }

          *(v3 + 503) |= 0x100u;
          LOBYTE(length[0]) = 0;
          nw_dispatch_data_copyout_from_offset(v6, length, 1, v237[0] + 1);
          v30 = v237[0] + 2;
          v31 = LOBYTE(length[0]);
          if (v24 >= v30 + LOBYTE(length[0]))
          {
            v32 = *(v3 + 392);
            if (v32)
            {
              dispatch_release(v32);
              *(v3 + 392) = 0;
              v31 = LOBYTE(length[0]);
              v30 = v237[0] + 2;
            }

            *(v3 + 392) = dispatch_data_create_subrange(v6, v30, v31);
            if ((*(v3 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v33 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "nw_masque_handle_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v3 + 507;
                *&buf[22] = 2080;
                v233 = " ";
                LOWORD(v234) = 1024;
                *(&v234 + 2) = LOBYTE(length[0]);
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_TARGET_CID virtual CID of length %u", buf, 0x26u);
              }
            }
          }

          goto LABEL_465;
        }

        if ((v28 & 0x10000) != 0)
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v9 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
LABEL_465:
          dispatch_release(v6);
          goto LABEL_466;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v10 = "%{public}s%sReceived ACK_TARGET_CID capsule with mismatched CID, ignoring";
      }

      else
      {
        if (*(v3 + 505))
        {
          goto LABEL_465;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v9 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_465;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v10 = "%{public}s%sReceived ACK_TARGET_CID capsule without a stored server CID, ignoring";
      }

LABEL_451:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
      goto LABEL_465;
    }

    v18 = *(v3 + 368);
    if (!v18)
    {
      if (*(v3 + 505))
      {
        goto LABEL_465;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v9 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_465;
      }

      *buf = 136446466;
      *&buf[4] = v3 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = "%{public}s%sReceived ACK_CLIENT_CID capsule without a stored client CID, ignoring";
      goto LABEL_451;
    }

    if (v18 != v5)
    {
      v19 = dispatch_data_get_size(*(v3 + 368));
      if (v19 == dispatch_data_get_size(v6))
      {
        length[0] = 0;
        length[1] = length;
        length[2] = 0x2000000000;
        LOBYTE(length[3]) = 1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_is_equal_block_invoke;
        v233 = &unk_1E6A343E0;
        *(&v234 + 1) = v6;
        *&v234 = length;
        dispatch_data_apply(v18, buf);
        v20 = *(length[1] + 24);
        _Block_object_dispose(length, 8);
        v21 = (v3 + 503);
        v22 = *(v3 + 503);
        if (v20)
        {
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_414;
          }

          goto LABEL_410;
        }

        if ((v22 & 0x10000) != 0)
        {
          goto LABEL_465;
        }
      }

      else if (*(v3 + 505))
      {
        goto LABEL_465;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v9 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_465;
      }

      *buf = 136446466;
      *&buf[4] = v3 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v10 = "%{public}s%sReceived ACK_CLIENT_CID capsule with mismatched CID, ignoring";
      goto LABEL_451;
    }

    v21 = (v3 + 503);
    if (*(v3 + 505))
    {
LABEL_414:
      *v21 |= 0x80u;
      goto LABEL_465;
    }

LABEL_410:
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v204 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_handle_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v3 + 507;
      *&buf[22] = 2080;
      v233 = " ";
      _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived ACK_CLIENT_CID capsule, server supports forwarding", buf, 0x20u);
    }

    goto LABEL_414;
  }

  if (capsule_type > 2)
  {
    switch(capsule_type)
    {
      case 3:
        v231 = 0;
        v225 = (v3 + 507);
        memset(length, 0, sizeof(length));
        while (1)
        {
          v38 = dispatch_data_get_size(v6);
          if (v38 <= 9)
          {
            break;
          }

          __src = 0;
          *&v240 = &__src;
          *(&v240 + 1) = 0x2000000000;
          v241 = 0;
          *v237 = 0;
          *&v237[8] = v237;
          *&v237[16] = 0x2000000000;
          v238 = length;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
          v233 = &unk_1E6A34348;
          v235 = 1;
          *&v234 = &__src;
          *(&v234 + 1) = v237;
          dispatch_data_apply(v6, buf);
          _Block_object_dispose(v237, 8);
          _Block_object_dispose(&__src, 8);
          if (LOBYTE(length[0]) == 6)
          {
            if (v38 <= 0x21)
            {
              if (*(v3 + 505))
              {
                goto LABEL_464;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v202 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_464;
              }

              goto LABEL_445;
            }

            __src = 0;
            *&v240 = &__src;
            *(&v240 + 1) = 0x2000000000;
            v241 = 0;
            *v237 = 0;
            *&v237[8] = v237;
            *&v237[16] = 0x2000000000;
            v238 = length;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
            v233 = &unk_1E6A34348;
            v235 = 34;
            *&v234 = &__src;
            *(&v234 + 1) = v237;
            dispatch_data_apply(v6, buf);
            _Block_object_dispose(v237, 8);
            _Block_object_dispose(&__src, 8);
            __src = 7708;
            v240 = *(length + 1);
            LODWORD(v241) = 0;
            *v237 = 7708;
            *&v237[8] = *(length + 1);
            LODWORD(v238) = 0;
            v46 = _nw_endpoint_create_address(&__src);
            address = _nw_endpoint_create_address(v237);
            if ((*(v3 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v48 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                v49 = v46;
                v50 = v49;
                v51 = v6;
                if (v49)
                {
                  logging_description = _nw_endpoint_get_logging_description(v49);
                  v53 = v3;
                }

                else
                {
                  v53 = v3;
                  logging_description = "<NULL>";
                }

                v59 = address;
                v60 = v59;
                if (v59)
                {
                  v61 = _nw_endpoint_get_logging_description(v59);
                }

                else
                {
                  v61 = "<NULL>";
                }

                *buf = 136446978;
                *&buf[4] = v225;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2082;
                v233 = logging_description;
                LOWORD(v234) = 2082;
                *(&v234 + 2) = v61;
                _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s%sReceived ROUTE_ADVERTISEMENT capsule for %{public}s-%{public}s", buf, 0x2Au);
                v3 = v53;
                v6 = v51;
              }
            }

            if (v46)
            {
              v62 = *(v3 + 352);
              if (v62)
              {
                os_release(v62);
              }

              *(v3 + 352) = v46;
            }

            if (address)
            {
              v63 = *(v3 + 360);
              if (v63)
              {
                os_release(v63);
              }

              *(v3 + 360) = address;
            }

            v34 = v38 - 34;
            if (v38 == 34)
            {
              goto LABEL_464;
            }

            v35 = v6;
            v36 = 34;
          }

          else
          {
            if (LOBYTE(length[0]) != 4)
            {
              if (*(v3 + 505))
              {
                goto LABEL_464;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v206 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_464;
              }

              *buf = 136446722;
              *&buf[4] = v225;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 1024;
              LODWORD(v233) = LOBYTE(length[0]);
              v199 = "%{public}s%sUnknown ROUTE_ADVERTISEMENT version %u";
              v200 = v206;
              v201 = 28;
              goto LABEL_463;
            }

            __src = 0;
            *&v240 = &__src;
            *(&v240 + 1) = 0x2000000000;
            v241 = 0;
            *v237 = 0;
            *&v237[8] = v237;
            *&v237[16] = 0x2000000000;
            v238 = length;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
            v233 = &unk_1E6A34348;
            v235 = 10;
            *&v234 = &__src;
            *(&v234 + 1) = v237;
            dispatch_data_apply(v6, buf);
            _Block_object_dispose(v237, 8);
            _Block_object_dispose(&__src, 8);
            LODWORD(__src) = 528;
            HIDWORD(__src) = *(length + 1);
            *&v240 = 0;
            *v237 = 528;
            *&v237[4] = *(length + 1);
            *&v237[8] = 0;
            v39 = _nw_endpoint_create_address(&__src);
            v40 = _nw_endpoint_create_address(v237);
            if ((*(v3 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v41 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                v42 = v39;
                v43 = v42;
                if (v42)
                {
                  v44 = _nw_endpoint_get_logging_description(v42);
                  v45 = v3;
                }

                else
                {
                  v45 = v3;
                  v44 = "<NULL>";
                }

                v54 = v40;
                v55 = v54;
                if (v54)
                {
                  v56 = _nw_endpoint_get_logging_description(v54);
                }

                else
                {
                  v56 = "<NULL>";
                }

                *buf = 136446978;
                *&buf[4] = v225;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2082;
                v233 = v44;
                LOWORD(v234) = 2082;
                *(&v234 + 2) = v56;
                _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_INFO, "%{public}s%sReceived ROUTE_ADVERTISEMENT capsule for %{public}s-%{public}s", buf, 0x2Au);
                v3 = v45;
              }
            }

            if (v39)
            {
              v57 = *(v3 + 352);
              if (v57)
              {
                os_release(v57);
              }

              *(v3 + 352) = v39;
            }

            if (v40)
            {
              v58 = *(v3 + 360);
              if (v58)
              {
                os_release(v58);
              }

              *(v3 + 360) = v40;
            }

            v34 = v38 - 10;
            if (v38 == 10)
            {
              goto LABEL_464;
            }

            v35 = v6;
            v36 = 10;
          }

          v37 = dispatch_data_create_subrange(v35, v36, v34);
          dispatch_release(v6);
          v6 = v37;
          if (!v37)
          {
            goto LABEL_464;
          }
        }

        if (*(v3 + 505))
        {
          goto LABEL_464;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v202 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_464;
        }

LABEL_445:
        *buf = 136446722;
        *&buf[4] = v225;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        v233 = v38;
        v199 = "%{public}s%sROUTE_ADVERTISEMENT capsule too short: %zu bytes";
        v200 = v202;
LABEL_462:
        v201 = 32;
LABEL_463:
        _os_log_impl(&dword_181A37000, v200, OS_LOG_TYPE_ERROR, v199, buf, v201);
        goto LABEL_464;
      case 16770048:
        if (*(v3 + 505))
        {
          goto LABEL_372;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v7 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_372;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "%{public}s%sReceived unexpected REGISTER_CLIENT_CID capsule";
        goto LABEL_371;
      case 16770049:
        if (*(v3 + 505))
        {
          goto LABEL_372;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v7 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_372;
        }

        *buf = 136446466;
        *&buf[4] = v3 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "%{public}s%sReceived unexpected REGISTER_TARGET_CID capsule";
        goto LABEL_371;
    }

    goto LABEL_373;
  }

  if (!capsule_type)
  {
    if ((*(v3 + 505) & 1) != 0 || gLogDatapath != 1)
    {
      goto LABEL_465;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v11 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_465;
    }

    *buf = 136446722;
    *&buf[4] = "nw_masque_handle_capsule";
    *&buf[12] = 2082;
    *&buf[14] = v3 + 507;
    *&buf[22] = 2080;
    v233 = " ";
    v12 = "%{public}s %{public}s%sReceived DATAGRAM capsule";
    goto LABEL_47;
  }

  if (capsule_type != 1)
  {
    if (capsule_type != 2)
    {
      goto LABEL_373;
    }

    if (*(v3 + 505))
    {
      goto LABEL_465;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v9 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_465;
    }

    *buf = 136446466;
    *&buf[4] = v3 + 507;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = "%{public}s%sADDRESS_REQUEST capsules not supported";
    goto LABEL_451;
  }

  memset(v237, 0, 18);
  v224 = MEMORY[0x1E69E9820];
  v226 = (v3 - 96);
  v223 = v3 + 507;
  while (1)
  {
    while (1)
    {
      v227 = 0;
      length[0] = 0;
      length[1] = length;
      *&length[2] = 0x2000000000uLL;
      __src = 0;
      *&v240 = &__src;
      *(&v240 + 1) = 0x2000000000;
      v241 = &v227;
      *buf = v224;
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
      v233 = &unk_1E6A34348;
      v235 = 8;
      *&v234 = length;
      *(&v234 + 1) = &__src;
      dispatch_data_apply(v6, buf);
      v65 = *(length[1] + 24);
      _Block_object_dispose(&__src, 8);
      _Block_object_dispose(length, 8);
      if (!v65)
      {
LABEL_394:
        if ((*(v3 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v198 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = v223;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v199 = "%{public}s%sADDRESS_ASSIGN capsule failed to decode request ID";
            v200 = v198;
            v201 = 22;
            goto LABEL_463;
          }
        }

        goto LABEL_464;
      }

      v66 = v227;
      if (v227 > 0x3Fu)
      {
        if (v227 >> 6 == 2)
        {
          if (v65 < 4)
          {
            goto LABEL_394;
          }

          v66 = bswap32(v227 & 0xFFFFFF7F);
          v67 = 4;
        }

        else if (v227 >> 6 == 1)
        {
          if (v65 == 1)
          {
            goto LABEL_394;
          }

          v66 = bswap32(v227 & 0xFFBF) >> 16;
          v67 = 2;
        }

        else
        {
          if (v65 < 8)
          {
            goto LABEL_394;
          }

          v66 = bswap64(v227 & 0xFFFFFFFFFFFFFF3FLL);
          v67 = 8;
        }
      }

      else
      {
        v67 = 1;
      }

      if ((*(v3 + 505) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v139 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_masque_handle_capsule";
          *&buf[12] = 2082;
          *&buf[14] = v223;
          *&buf[22] = 2080;
          v233 = " ";
          LOWORD(v234) = 2048;
          *(&v234 + 2) = v66;
          _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sADDRESS_ASSIGN capsule contains request ID %llu", buf, 0x2Au);
        }
      }

      v68 = dispatch_data_get_size(v6);
      v69 = v67 + 6;
      if (v68 < v67 + 6)
      {
        if ((*(v3 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v205 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_461;
          }
        }

        goto LABEL_464;
      }

      length[0] = 0;
      length[1] = length;
      *&length[2] = 0x2000000000uLL;
      __src = 0;
      *&v240 = &__src;
      *(&v240 + 1) = 0x2000000000;
      v241 = v67;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
      v233 = &unk_1E6A34370;
      *&v234 = &__src;
      *(&v234 + 1) = length;
      v235 = 1;
      v236 = v237;
      dispatch_data_apply(v6, buf);
      _Block_object_dispose(&__src, 8);
      _Block_object_dispose(length, 8);
      if (v237[0] == 6)
      {
        break;
      }

      if (v237[0] == 4)
      {
        length[0] = 0;
        length[1] = length;
        *&length[2] = 0x2000000000uLL;
        __src = 0;
        *&v240 = &__src;
        *(&v240 + 1) = 0x2000000000;
        v241 = v67;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
        v233 = &unk_1E6A34370;
        *&v234 = &__src;
        *(&v234 + 1) = length;
        v235 = 6;
        v236 = v237;
        dispatch_data_apply(v6, buf);
        _Block_object_dispose(&__src, 8);
        _Block_object_dispose(length, 8);
        LODWORD(length[0]) = 528;
        HIDWORD(length[0]) = *&v237[1];
        length[1] = 0;
        v70 = _nw_endpoint_create_address(length);
        v71 = v3;
        v72 = v70;
        v73 = v71;
        if ((*(v71 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v74 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
          {
            v75 = v72;
            v76 = v75;
            if (v75)
            {
              v77 = _nw_endpoint_get_logging_description(v75);
            }

            else
            {
              v77 = "<NULL>";
            }

            *buf = 136446722;
            *&buf[4] = v223;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2082;
            v233 = v77;
            _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s%sReceived ADDRESS_ASSIGN capsule for %{public}s", buf, 0x20u);
          }
        }

        v86 = v73;
        if (v72)
        {
          v87 = *(v73 + 344);
          if (v87)
          {
            os_release(v87);
          }

          v86 = v73;
          *(v73 + 344) = v72;
        }

        v88 = *(v86 - 48);
        if (v88)
        {
          v89 = *(v88 + 40);
          v90 = *(v86 - 48);
          if (v89 == &nw_protocol_ref_counted_handle || v89 == &nw_protocol_ref_counted_additional_handle && (v90 = *(v88 + 64)) != 0)
          {
            v92 = *(v90 + 88);
            v91 = 0;
            if (v92)
            {
              *(v90 + 88) = v92 + 1;
            }
          }

          else
          {
            v91 = 1;
          }

          v93 = *(v73 - 56);
          v94 = v226;
          if (v93 == &nw_protocol_ref_counted_handle || v93 == &nw_protocol_ref_counted_additional_handle && (v94 = *(v73 - 32)) != 0)
          {
            v97 = v94[11];
            if (v97)
            {
              v95 = 0;
              v94[11] = v97 + 1;
              v96 = *(v88 + 24);
              if (!v96)
              {
                goto LABEL_282;
              }
            }

            else
            {
              v95 = 0;
              v96 = *(v88 + 24);
              if (!v96)
              {
                goto LABEL_282;
              }
            }
          }

          else
          {
            v95 = 1;
            v96 = *(v88 + 24);
            if (!v96)
            {
              goto LABEL_282;
            }
          }

          v98 = *(v96 + 160);
          if (v98)
          {
            v98(v88, v226, 17, 0, 0);
LABEL_200:
            if ((v95 & 1) == 0)
            {
              v99 = *(v73 - 56);
              v100 = v226;
              if (v99 == &nw_protocol_ref_counted_handle || v99 == &nw_protocol_ref_counted_additional_handle && (v100 = *(v73 - 32)) != 0)
              {
                v101 = v100[11];
                if (v101)
                {
                  v102 = v101 - 1;
                  v100[11] = v102;
                  if (!v102)
                  {
                    v103 = v100[8];
                    if (v103)
                    {
                      v100[8] = 0;
                      v103[2](v103);
                      _Block_release(v103);
                    }

                    if (v100[9])
                    {
                      v104 = v100[8];
                      if (v104)
                      {
                        _Block_release(v104);
                      }
                    }

                    free(v100);
                  }
                }
              }
            }

            if (v91)
            {
              goto LABEL_225;
            }

            v105 = *(v88 + 40);
            if (v105 != &nw_protocol_ref_counted_handle)
            {
              if (v105 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_225;
              }

              v88 = *(v88 + 64);
              if (!v88)
              {
                goto LABEL_225;
              }
            }

            v106 = *(v88 + 88);
            if (!v106)
            {
              goto LABEL_225;
            }

            v107 = v106 - 1;
            *(v88 + 88) = v107;
            if (v107)
            {
              goto LABEL_225;
            }

            v108 = *(v88 + 64);
            if (v108)
            {
              *(v88 + 64) = 0;
              v108[2](v108);
              _Block_release(v108);
            }

            if (*(v88 + 72))
            {
              v109 = *(v88 + 64);
              if (v109)
              {
                _Block_release(v109);
              }
            }

            v110 = v88;
            goto LABEL_224;
          }

LABEL_282:
          __nwlog_obj();
          v140 = *(v88 + 16);
          if (!v140)
          {
            v140 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_notify";
          *&buf[12] = 2082;
          *&buf[14] = v140;
          *&buf[22] = 2048;
          v233 = v88;
          v141 = _os_log_send_and_compose_impl();
          LOBYTE(__src) = 16;
          v229[0] = 0;
          v221 = v141;
          if (!__nwlog_fault(v141, &__src, v229))
          {
            goto LABEL_347;
          }

          if (__src == 17)
          {
            v142 = __nwlog_obj();
            v143 = __src;
            if (!os_log_type_enabled(v142, __src))
            {
              goto LABEL_347;
            }

            v144 = *(v88 + 16);
            if (!v144)
            {
              v144 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v144;
            *&buf[22] = 2048;
            v233 = v88;
            v145 = v142;
            v146 = v143;
            v147 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
          }

          else if (v229[0] == 1)
          {
            v162 = __nw_create_backtrace_string();
            v163 = __nwlog_obj();
            v164 = __src;
            log = v163;
            v165 = os_log_type_enabled(v163, __src);
            if (v162)
            {
              if (v165)
              {
                v166 = *(v88 + 16);
                if (!v166)
                {
                  v166 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_notify";
                *&buf[12] = 2082;
                *&buf[14] = v166;
                *&buf[22] = 2048;
                v233 = v88;
                LOWORD(v234) = 2082;
                *(&v234 + 2) = v162;
                _os_log_impl(&dword_181A37000, log, v164, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v162);
              goto LABEL_347;
            }

            if (!v165)
            {
LABEL_347:
              if (v221)
              {
                free(v221);
              }

              goto LABEL_200;
            }

            v195 = *(v88 + 16);
            if (!v195)
            {
              v195 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v195;
            *&buf[22] = 2048;
            v233 = v88;
            v145 = log;
            v146 = v164;
            v147 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
          }

          else
          {
            v181 = __nwlog_obj();
            v182 = __src;
            if (!os_log_type_enabled(v181, __src))
            {
              goto LABEL_347;
            }

            v183 = *(v88 + 16);
            if (!v183)
            {
              v183 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v183;
            *&buf[22] = 2048;
            v233 = v88;
            v145 = v181;
            v146 = v182;
            v147 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v145, v146, v147, buf, 0x20u);
          goto LABEL_347;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_notify";
        v156 = _os_log_send_and_compose_impl();
        LOBYTE(__src) = 16;
        v229[0] = 0;
        if (__nwlog_fault(v156, &__src, v229))
        {
          if (__src == 17)
          {
            v157 = __nwlog_obj();
            v158 = __src;
            if (os_log_type_enabled(v157, __src))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_notify";
              v159 = v157;
              v160 = v158;
              v161 = "%{public}s called with null protocol";
LABEL_358:
              _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0xCu);
            }
          }

          else if (v229[0] == 1)
          {
            v177 = __nw_create_backtrace_string();
            v178 = __nwlog_obj();
            v179 = __src;
            v180 = os_log_type_enabled(v178, __src);
            if (v177)
            {
              if (v180)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_protocol_notify";
                *&buf[12] = 2082;
                *&buf[14] = v177;
                _os_log_impl(&dword_181A37000, v178, v179, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v177);
              goto LABEL_359;
            }

            if (v180)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_notify";
              v159 = v178;
              v160 = v179;
              v161 = "%{public}s called with null protocol, no backtrace";
              goto LABEL_358;
            }
          }

          else
          {
            v191 = __nwlog_obj();
            v192 = __src;
            if (os_log_type_enabled(v191, __src))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_notify";
              v159 = v191;
              v160 = v192;
              v161 = "%{public}s called with null protocol, backtrace limit exceeded";
              goto LABEL_358;
            }
          }
        }

LABEL_359:
        if (!v156)
        {
          goto LABEL_225;
        }

        v110 = v156;
LABEL_224:
        free(v110);
LABEL_225:
        v111 = v68 - v69;
        if (v68 <= v69)
        {
          goto LABEL_435;
        }

        v112 = v6;
        v113 = v69;
        goto LABEL_139;
      }

      if ((*(v3 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v85 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = v223;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 1024;
          LODWORD(v233) = v237[0];
          _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s%sUnknown ADDRESS_ASSIGN version %u", buf, 0x1Cu);
        }
      }

      if (!v6)
      {
        goto LABEL_464;
      }
    }

    if (v68 <= 0x11)
    {
      break;
    }

    length[0] = 0;
    length[1] = length;
    *&length[2] = 0x2000000000uLL;
    __src = 0;
    *&v240 = &__src;
    *(&v240 + 1) = 0x2000000000;
    v241 = v67;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
    v233 = &unk_1E6A34370;
    *&v234 = &__src;
    *(&v234 + 1) = length;
    v235 = 18;
    v236 = v237;
    dispatch_data_apply(v6, buf);
    _Block_object_dispose(&__src, 8);
    _Block_object_dispose(length, 8);
    length[0] = 7708;
    *&length[1] = *&v237[1];
    LODWORD(length[3]) = 0;
    v78 = _nw_endpoint_create_address(length);
    v79 = v3;
    v80 = v78;
    v73 = v79;
    if ((*(v79 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v81 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v82 = v80;
        v83 = v82;
        if (v82)
        {
          v84 = _nw_endpoint_get_logging_description(v82);
        }

        else
        {
          v84 = "<NULL>";
        }

        *buf = 136446722;
        *&buf[4] = v223;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2082;
        v233 = v84;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_INFO, "%{public}s%sReceived ADDRESS_ASSIGN capsule for %{public}s", buf, 0x20u);
      }
    }

    v114 = v73;
    if (v80)
    {
      v115 = *(v73 + 344);
      if (v115)
      {
        os_release(v115);
      }

      v114 = v73;
      *(v73 + 344) = v80;
    }

    v116 = *(v114 - 48);
    if (v116)
    {
      v117 = *(v116 + 40);
      v118 = *(v114 - 48);
      if (v117 == &nw_protocol_ref_counted_handle || v117 == &nw_protocol_ref_counted_additional_handle && (v118 = *(v116 + 64)) != 0)
      {
        v120 = *(v118 + 88);
        v119 = 0;
        if (v120)
        {
          *(v118 + 88) = v120 + 1;
        }
      }

      else
      {
        v119 = 1;
      }

      v121 = *(v73 - 56);
      v122 = v226;
      if (v121 == &nw_protocol_ref_counted_handle || v121 == &nw_protocol_ref_counted_additional_handle && (v122 = *(v73 - 32)) != 0)
      {
        v125 = v122[11];
        if (v125)
        {
          v123 = 0;
          v122[11] = v125 + 1;
          v124 = *(v116 + 24);
          if (!v124)
          {
LABEL_290:
            __nwlog_obj();
            v148 = *(v116 + 16);
            if (!v148)
            {
              v148 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v148;
            *&buf[22] = 2048;
            v233 = v116;
            v149 = _os_log_send_and_compose_impl();
            LOBYTE(__src) = 16;
            v229[0] = 0;
            v222 = v149;
            if (__nwlog_fault(v149, &__src, v229))
            {
              if (__src != 17)
              {
                if (v229[0] == 1)
                {
                  v173 = __nw_create_backtrace_string();
                  v174 = __nwlog_obj();
                  loga = __src;
                  v175 = os_log_type_enabled(v174, __src);
                  if (v173)
                  {
                    if (v175)
                    {
                      v176 = *(v116 + 16);
                      if (!v176)
                      {
                        v176 = "invalid";
                      }

                      *buf = 136446978;
                      *&buf[4] = "__nw_protocol_notify";
                      *&buf[12] = 2082;
                      *&buf[14] = v176;
                      *&buf[22] = 2048;
                      v233 = v116;
                      LOWORD(v234) = 2082;
                      *(&v234 + 2) = v173;
                      _os_log_impl(&dword_181A37000, v174, loga, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v173);
                    goto LABEL_354;
                  }

                  if (!v175)
                  {
                    goto LABEL_354;
                  }

                  v196 = *(v116 + 16);
                  if (!v196)
                  {
                    v196 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_notify";
                  *&buf[12] = 2082;
                  *&buf[14] = v196;
                  *&buf[22] = 2048;
                  v233 = v116;
                  v153 = v174;
                  v154 = loga;
                  v155 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
                }

                else
                {
                  v188 = __nwlog_obj();
                  v189 = __src;
                  if (!os_log_type_enabled(v188, __src))
                  {
                    goto LABEL_354;
                  }

                  v190 = *(v116 + 16);
                  if (!v190)
                  {
                    v190 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_notify";
                  *&buf[12] = 2082;
                  *&buf[14] = v190;
                  *&buf[22] = 2048;
                  v233 = v116;
                  v153 = v188;
                  v154 = v189;
                  v155 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
                }

LABEL_353:
                _os_log_impl(&dword_181A37000, v153, v154, v155, buf, 0x20u);
                goto LABEL_354;
              }

              v150 = __nwlog_obj();
              v151 = __src;
              if (os_log_type_enabled(v150, __src))
              {
                v152 = *(v116 + 16);
                if (!v152)
                {
                  v152 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_notify";
                *&buf[12] = 2082;
                *&buf[14] = v152;
                *&buf[22] = 2048;
                v233 = v116;
                v153 = v150;
                v154 = v151;
                v155 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
                goto LABEL_353;
              }
            }

LABEL_354:
            if (v222)
            {
              free(v222);
            }

LABEL_251:
            if ((v123 & 1) == 0)
            {
              v127 = *(v73 - 56);
              v128 = v226;
              if (v127 == &nw_protocol_ref_counted_handle || v127 == &nw_protocol_ref_counted_additional_handle && (v128 = *(v73 - 32)) != 0)
              {
                v129 = v128[11];
                if (v129)
                {
                  v130 = v129 - 1;
                  v128[11] = v130;
                  if (!v130)
                  {
                    v131 = v128[8];
                    if (v131)
                    {
                      v128[8] = 0;
                      v131[2](v131);
                      _Block_release(v131);
                    }

                    if (v128[9])
                    {
                      v132 = v128[8];
                      if (v132)
                      {
                        _Block_release(v132);
                      }
                    }

                    free(v128);
                  }
                }
              }
            }

            if (v119)
            {
              goto LABEL_276;
            }

            v133 = *(v116 + 40);
            if (v133 != &nw_protocol_ref_counted_handle)
            {
              if (v133 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_276;
              }

              v116 = *(v116 + 64);
              if (!v116)
              {
                goto LABEL_276;
              }
            }

            v134 = *(v116 + 88);
            if (!v134)
            {
              goto LABEL_276;
            }

            v135 = v134 - 1;
            *(v116 + 88) = v135;
            if (v135)
            {
              goto LABEL_276;
            }

            v136 = *(v116 + 64);
            if (v136)
            {
              *(v116 + 64) = 0;
              v136[2](v136);
              _Block_release(v136);
            }

            if (*(v116 + 72))
            {
              v137 = *(v116 + 64);
              if (v137)
              {
                _Block_release(v137);
              }
            }

            v138 = v116;
            goto LABEL_275;
          }
        }

        else
        {
          v123 = 0;
          v124 = *(v116 + 24);
          if (!v124)
          {
            goto LABEL_290;
          }
        }
      }

      else
      {
        v123 = 1;
        v124 = *(v116 + 24);
        if (!v124)
        {
          goto LABEL_290;
        }
      }

      v126 = *(v124 + 160);
      if (!v126)
      {
        goto LABEL_290;
      }

      v126(v116, v226, 17, 0, 0);
      goto LABEL_251;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_notify";
    v167 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    v229[0] = 0;
    if (__nwlog_fault(v167, &__src, v229))
    {
      if (__src == 17)
      {
        v168 = __nwlog_obj();
        v169 = __src;
        if (os_log_type_enabled(v168, __src))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_notify";
          v170 = v168;
          v171 = v169;
          v172 = "%{public}s called with null protocol";
LABEL_363:
          _os_log_impl(&dword_181A37000, v170, v171, v172, buf, 0xCu);
        }
      }

      else if (v229[0] == 1)
      {
        v184 = __nw_create_backtrace_string();
        v185 = __nwlog_obj();
        v186 = __src;
        v187 = os_log_type_enabled(v185, __src);
        if (v184)
        {
          if (v187)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_notify";
            *&buf[12] = 2082;
            *&buf[14] = v184;
            _os_log_impl(&dword_181A37000, v185, v186, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v184);
          goto LABEL_364;
        }

        if (v187)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_notify";
          v170 = v185;
          v171 = v186;
          v172 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_363;
        }
      }

      else
      {
        v193 = __nwlog_obj();
        v194 = __src;
        if (os_log_type_enabled(v193, __src))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_notify";
          v170 = v193;
          v171 = v194;
          v172 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_363;
        }
      }
    }

LABEL_364:
    if (!v167)
    {
      goto LABEL_276;
    }

    v138 = v167;
LABEL_275:
    free(v138);
LABEL_276:
    v113 = v67 + 18;
    v111 = v68 - (v67 + 18);
    if (v68 <= v67 + 18)
    {
LABEL_435:
      v3 = v73;
      goto LABEL_464;
    }

    v112 = v6;
LABEL_139:
    v64 = dispatch_data_create_subrange(v112, v113, v111);
    dispatch_release(v6);
    v6 = v64;
    v3 = v73;
    if (!v64)
    {
      goto LABEL_464;
    }
  }

  if ((*(v3 + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v205 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
LABEL_461:
      *buf = 136446722;
      *&buf[4] = v223;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v233 = v68;
      v199 = "%{public}s%sADDRESS_ASSIGN capsule too short: %zu bytes";
      v200 = v205;
      goto LABEL_462;
    }
  }

LABEL_464:
  if (v6)
  {
    goto LABEL_465;
  }

LABEL_466:
  nw_masque_mark_connected(v3);
}

void nw_masque_mark_failed_with_error(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 484) == 5)
    {
      return;
    }

    if ((*(a1 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v4 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        *&buf[4] = a1 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 1024;
        LODWORD(v51) = a2;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sClosing connection with error %{darwin.errno}d", buf, 0x1Cu);
      }
    }

    *(a1 + 484) = 5;
    v5 = *(a1 + 240);
    if (v5)
    {
      *(v5 + 24) = type;
      v6 = *(a1 + 248);
      *type = v5;
      v49 = v6;
      *(a1 + 240) = 0;
      *(a1 + 248) = a1 + 240;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v51 = &__block_descriptor_tmp_21_49595;
      v52 = 0;
      do
      {
        v7 = *type;
        if (!*type)
        {
          break;
        }

        v8 = *(*type + 16);
        v9 = *(*type + 24);
        v10 = (v8 + 24);
        if (!v8)
        {
          v10 = &v49;
        }

        *v10 = v9;
        *v9 = v8;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v11 = *(a1 - 48);
    if (v11)
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        v13 = *(v12 + 56);
        if (!v13 || (v13(), (v14 = *(a1 - 48)) != 0) && (v12 = *(v14 + 24)) != 0)
        {
          v15 = *(v12 + 48);
          if (v15)
          {
            v15();
          }
        }
      }
    }

    v16 = *(a1 - 64);
    if (v16)
    {
      v17 = *(v16 + 24);
      if (v17)
      {
        v18 = *(v17 + 32);
        if (v18)
        {
          v18();
          return;
        }
      }
    }

    __nwlog_obj();
    v19 = *(a1 - 64);
    v20 = "invalid";
    if (v19)
    {
      v21 = *(v19 + 16);
      if (v21)
      {
        v20 = v21;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_masque_mark_failed_with_error";
    *&buf[12] = 2082;
    *&buf[14] = v20;
    v22 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v22, type, &v47))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type[0];
        if (!os_log_type_enabled(v23, type[0]))
        {
          goto LABEL_66;
        }

        v25 = *(a1 - 64);
        v26 = "invalid";
        if (v25)
        {
          v27 = *(v25 + 16);
          if (v27)
          {
            v26 = v27;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v26;
        v28 = "%{public}s protocol %{public}s has invalid disconnect callback";
LABEL_65:
        _os_log_impl(&dword_181A37000, v23, v24, v28, buf, 0x16u);
        goto LABEL_66;
      }

      if (v47 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type[0];
        if (!os_log_type_enabled(v23, type[0]))
        {
          goto LABEL_66;
        }

        v40 = *(a1 - 64);
        v41 = "invalid";
        if (v40)
        {
          v42 = *(v40 + 16);
          if (v42)
          {
            v41 = v42;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v41;
        v28 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
        goto LABEL_65;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type[0];
      v34 = os_log_type_enabled(v23, type[0]);
      if (!backtrace_string)
      {
        if (!v34)
        {
          goto LABEL_66;
        }

        v43 = *(a1 - 64);
        v44 = "invalid";
        if (v43)
        {
          v45 = *(v43 + 16);
          if (v45)
          {
            v44 = v45;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v44;
        v28 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
        goto LABEL_65;
      }

      if (v34)
      {
        v35 = *(a1 - 64);
        v36 = "invalid";
        if (v35)
        {
          v37 = *(v35 + 16);
          if (v37)
          {
            v36 = v37;
          }
        }

        *buf = 136446722;
        *&buf[4] = "nw_masque_mark_failed_with_error";
        *&buf[12] = 2082;
        *&buf[14] = v36;
        *&buf[22] = 2082;
        v51 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
    }

LABEL_66:
    if (v22)
    {
      v46 = v22;
LABEL_73:
      free(v46);
      return;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_mark_failed_with_error";
  v29 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (__nwlog_fault(v29, type, &v47))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (!os_log_type_enabled(v30, type[0]))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      v32 = "%{public}s called with null masque";
LABEL_70:
      _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
      goto LABEL_71;
    }

    if (v47 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (!os_log_type_enabled(v30, type[0]))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      v32 = "%{public}s called with null masque, backtrace limit exceeded";
      goto LABEL_70;
    }

    v38 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type[0];
    v39 = os_log_type_enabled(v30, type[0]);
    if (!v38)
    {
      if (!v39)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      v32 = "%{public}s called with null masque, no backtrace";
      goto LABEL_70;
    }

    if (v39)
    {
      *buf = 136446466;
      *&buf[4] = "nw_masque_mark_failed_with_error";
      *&buf[12] = 2082;
      *&buf[14] = v38;
      _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v38);
  }

LABEL_71:
  if (v29)
  {
    v46 = v29;
    goto LABEL_73;
  }
}

BOOL ___ZL24nw_masque_handle_capsuleP9nw_masqueP20nw_protocol_metadata_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, const void *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v46 = 0;
  nw_dispatch_data_copyout_from_offset(*(a1 + 40), &v46, 2, *(*(*(a1 + 32) + 8) + 24));
  if (v46 != a2)
  {
    v18 = *(a1 + 48);
    if (v18 && (*(v18 + 505) & 1) != 0)
    {
      return 0;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v19 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v20 = *(a1 + 48);
    v21 = (v20 + 507);
    v22 = "";
    if (!v20)
    {
      v21 = "";
    }

    *buf = 136446978;
    if (v20)
    {
      v22 = " ";
    }

    v48 = v21;
    v49 = 2080;
    v50 = v22;
    v51 = 1024;
    v52 = v46;
    v53 = 1024;
    v54 = a2;
    v23 = "%{public}s%sReceived pattern length (%u bytes) does not match actual pattern length (%u bytes)";
    goto LABEL_37;
  }

  *(*(*(a1 + 32) + 8) + 24) += 2;
  v45 = 0;
  nw_dispatch_data_copyout_from_offset(*(a1 + 40), &v45, 2, *(*(*(a1 + 32) + 8) + 24));
  if (v45 != a3)
  {
    v24 = *(a1 + 48);
    if (v24 && (*(v24 + 505) & 1) != 0)
    {
      return 0;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v19 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v25 = *(a1 + 48);
    v26 = (v25 + 507);
    v27 = "";
    if (!v25)
    {
      v26 = "";
    }

    *buf = 136446978;
    if (v25)
    {
      v27 = " ";
    }

    v48 = v26;
    v49 = 2080;
    v50 = v27;
    v51 = 1024;
    v52 = v45;
    v53 = 1024;
    v54 = a3;
    v23 = "%{public}s%sReceived pattern offset (%u bytes) does not match actual pattern offset (%u bytes)";
LABEL_37:
    v28 = v19;
    v29 = 34;
LABEL_72:
    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v23, buf, v29);
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += 2;
  subrange = dispatch_data_create_subrange(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24), a2);
  v11 = *MEMORY[0x1E69E9658];
  v12 = dispatch_data_create(a4, a2, 0, *MEMORY[0x1E69E9658]);
  is_equal = nw_dispatch_data_is_equal(subrange, v12);
  if (subrange)
  {
    dispatch_release(subrange);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (is_equal)
  {
    *(*(*(a1 + 32) + 8) + 24) += a2;
    v44 = 0;
    nw_dispatch_data_copyout_from_offset(*(a1 + 40), &v44, 1, *(*(*(a1 + 32) + 8) + 24));
    if (v44 == (a5 != 0))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
      if (!a5)
      {
        return 1;
      }

      v14 = dispatch_data_create_subrange(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24), a2);
      v15 = dispatch_data_create(a5, a2, 0, v11);
      v16 = nw_dispatch_data_is_equal(v14, v15);
      if (v14)
      {
        dispatch_release(v14);
      }

      if (v15)
      {
        dispatch_release(v15);
      }

      if (v16)
      {
        *(*(*(a1 + 32) + 8) + 24) += a2;
        return 1;
      }

      v41 = *(a1 + 48);
      if (v41 && (*(v41 + 505) & 1) != 0)
      {
        return 0;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v31 = gprivacy_proxyLogObj;
      result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v42 = *(a1 + 48);
        v43 = v42 == 0;
        if (v42)
        {
          v39 = (v42 + 507);
        }

        else
        {
          v39 = "";
        }

        v40 = " ";
        if (v43)
        {
          v40 = "";
        }

LABEL_70:
        *buf = 136446466;
        v48 = v39;
        v49 = 2080;
        v50 = v40;
        v23 = "%{public}s%sReceived pattern mask does not match actual pattern mask";
LABEL_71:
        v28 = v31;
        v29 = 22;
        goto LABEL_72;
      }
    }

    else
    {
      v36 = *(a1 + 48);
      if (v36 && (*(v36 + 505) & 1) != 0)
      {
        return 0;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v31 = gprivacy_proxyLogObj;
      result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v37 = *(a1 + 48);
        v38 = v37 == 0;
        if (v37)
        {
          v39 = (v37 + 507);
        }

        else
        {
          v39 = "";
        }

        v40 = " ";
        if (v38)
        {
          v40 = "";
        }

        goto LABEL_70;
      }
    }
  }

  else
  {
    v30 = *(a1 + 48);
    if (v30 && (*(v30 + 505) & 1) != 0)
    {
      return 0;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v31 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v32 = *(a1 + 48);
      v33 = v32 == 0;
      if (v32)
      {
        v34 = (v32 + 507);
      }

      else
      {
        v34 = "";
      }

      v35 = " ";
      if (v33)
      {
        v35 = "";
      }

      *buf = 136446466;
      v48 = v34;
      v49 = 2080;
      v50 = v35;
      v23 = "%{public}s%sReceived pattern does not match actual pattern";
      goto LABEL_71;
    }
  }

  return result;
}

BOOL nw_masque_send_demux_options(uint64_t a1, void *a2, char a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v21 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v30[0]) = 0;
    if (!__nwlog_fault(v21, type, v30))
    {
      goto LABEL_62;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v30[0]) != 1)
      {
        v22 = __nwlog_obj();
        v23 = type[0];
        if (!os_log_type_enabled(v22, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_send_demux_options";
        v24 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_61;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type[0];
      v26 = os_log_type_enabled(v22, type[0]);
      if (!backtrace_string)
      {
        if (!v26)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_send_demux_options";
        v24 = "%{public}s called with null masque, no backtrace";
        goto LABEL_61;
      }

      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_masque_send_demux_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v27 = "%{public}s called with null masque, dumping backtrace:%{public}s";
LABEL_51:
        _os_log_impl(&dword_181A37000, v22, v23, v27, buf, 0x16u);
      }

LABEL_52:
      free(backtrace_string);
      goto LABEL_62;
    }

    v22 = __nwlog_obj();
    v23 = type[0];
    if (!os_log_type_enabled(v22, type[0]))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v24 = "%{public}s called with null masque";
LABEL_61:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
LABEL_62:
    if (v21)
    {
      free(v21);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v21 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v30[0]) = 0;
    if (!__nwlog_fault(v21, type, v30))
    {
      goto LABEL_62;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_demux_options";
      v24 = "%{public}s called with null demux_options";
      goto LABEL_61;
    }

    if (LOBYTE(v30[0]) != 1)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_demux_options";
      v24 = "%{public}s called with null demux_options, backtrace limit exceeded";
      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type[0];
    v28 = os_log_type_enabled(v22, type[0]);
    if (backtrace_string)
    {
      if (v28)
      {
        *buf = 136446466;
        *&buf[4] = "nw_masque_send_demux_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v27 = "%{public}s called with null demux_options, dumping backtrace:%{public}s";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v28)
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_masque_send_demux_options";
    v24 = "%{public}s called with null demux_options, no backtrace";
    goto LABEL_61;
  }

  v4 = *(a1 + 484);
  if (a3)
  {
    if (v4 == 5)
    {
      if ((*(a1 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v5 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = a1 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s%sCannot send demux options in disconnected state", buf, 0x16u);
          return 0;
        }

        return result;
      }

      return 0;
    }
  }

  else if (v4 != 4)
  {
    return 0;
  }

  v7 = (a1 + 503);
  v8 = *(a1 + 503);
  if ((v8 & 8) == 0)
  {
    return 0;
  }

  if ((v8 & 0x2000000) == 0 && nw_masque_setup_demux(a1, 1) && nw_masque_setup_demux(a1, 0))
  {
    *v7 |= 0x2000000u;
  }

  *type = 0;
  v33 = type;
  v34 = 0x2000000000;
  v35 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke;
  v31[3] = &unk_1E6A2F710;
  v31[4] = type;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_demux_options_enumerate_patterns_block_invoke;
  v37 = &unk_1E6A2F0D8;
  v38 = v31;
  nw_protocol_options_access_handle(a2, buf);
  v30[4] = 0;
  alloc = dispatch_data_create_alloc();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v30[3] = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 0x40000000;
  v29[2] = ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke_2;
  v29[3] = &unk_1E6A2F738;
  v29[4] = v30;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_demux_options_enumerate_patterns_block_invoke;
  v37 = &unk_1E6A2F0D8;
  v38 = v29;
  nw_protocol_options_access_handle(a2, buf);
  metadata_for_capsule = nw_http_create_metadata_for_capsule(16770304, alloc);
  v12 = nw_masque_send_metadata(a1, metadata_for_capsule, *(a1 - 64));
  v13 = *v7;
  v14 = v12;
  if (v12)
  {
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_29;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v15 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    *&buf[4] = "nw_masque_send_demux_options";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 507;
    *&buf[22] = 2080;
    v37 = " ";
    v16 = "%{public}s %{public}s%sSent REGISTER_DEMUX_PATTERN capsule";
    v17 = v15;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 32;
  }

  else
  {
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_29;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v20 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    *&buf[4] = a1 + 507;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v16 = "%{public}s%sFailed to send REGISTER_DEMUX_PATTERN capsule";
    v17 = v20;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 22;
  }

  _os_log_impl(&dword_181A37000, v17, v18, v16, buf, v19);
LABEL_29:
  if (alloc)
  {
    dispatch_release(alloc);
  }

  if (metadata_for_capsule)
  {
    os_release(metadata_for_capsule);
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(type, 8);
  return v14;
}

uint64_t ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 32) + 8) + 24) += a2 + 4;
  if (a5)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v5;
  return 1;
}

uint64_t ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke_2(uint64_t a1, size_t __n, __int16 a3, void *__src, const void *a5)
{
  **(*(*(a1 + 32) + 8) + 24) = __n;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  **(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  v7 = __n;
  memcpy(*(*(*(a1 + 32) + 8) + 24), __src, __n);
  *(*(*(a1 + 32) + 8) + 24) += v7;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (a5)
  {
    *v8 = 1;
    memcpy(++*(*(*(a1 + 32) + 8) + 24), a5, v7);
  }

  else
  {
    *v8 = 0;
    v7 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v7;
  return 1;
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_120(uint64_t a1, uint64_t a2)
{
  v163 = *MEMORY[0x1E69E9840];
  v137 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v137);
  finalizer_context = nw_frame_get_finalizer_context(a2);
  v6 = *(a1 + 32);
  if (finalizer_context == v6)
  {
    *v155 = 0;
    *&v155[8] = v155;
    v21 = *(a1 + 40);
    v22 = *(*(a1 + 48) + 32);
    if (*(v6 + 192))
    {
      v23 = *(v6 + 376);
      if (v23)
      {
        size = dispatch_data_get_size(v23);
        if (size + 1 < v137)
        {
          v25 = size;
          v26 = *(v6 + 392);
          if ((!v26 || dispatch_data_get_size(v26) == v25) && *v4 >= 64)
          {
            v27 = dispatch_data_create(v4 + 1, v25, 0, *MEMORY[0x1E69E9658]);
            if (nw_dispatch_data_is_equal(v27, *(*(a1 + 32) + 376)))
            {
              v28 = *(a1 + 32);
              if ((!v28 || (*(v28 + 505) & 1) == 0) && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v89 = gprivacy_proxyLogObj;
                v90 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                v28 = *(a1 + 32);
                if (v90)
                {
                  v91 = v28 == 0;
                  if (v28)
                  {
                    v92 = (v28 + 507);
                  }

                  else
                  {
                    v92 = "";
                  }

                  *v158 = 136446978;
                  *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                  *&v158[12] = 2082;
                  *&v158[14] = v92;
                  if (v91)
                  {
                    v93 = "";
                  }

                  else
                  {
                    v93 = " ";
                  }

                  *&v158[22] = 2080;
                  v159 = v93;
                  LOWORD(v160) = 1024;
                  *(&v160 + 2) = v137;
                  _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux", v158, 0x26u);
                  v28 = *(a1 + 32);
                }
              }

              v29 = *(v28 + 392);
              if (v29)
              {
                nw_dispatch_data_copyout(v29, (v4 + 1), v25);
                v28 = *(a1 + 32);
                if ((!v28 || (*(v28 + 505) & 1) == 0) && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v99 = gprivacy_proxyLogObj;
                  v100 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                  v28 = *(a1 + 32);
                  if (v100)
                  {
                    v101 = "";
                    v102 = v28 == 0;
                    if (v28)
                    {
                      v103 = (v28 + 507);
                    }

                    else
                    {
                      v103 = "";
                    }

                    *v158 = 136446722;
                    *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                    if (!v102)
                    {
                      v101 = " ";
                    }

                    *&v158[12] = 2082;
                    *&v158[14] = v103;
                    *&v158[22] = 2080;
                    v159 = v101;
                    _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing with virtual CID before forwarding", v158, 0x20u);
                    v28 = *(a1 + 32);
                  }
                }
              }

              v22 = *(v28 + 192);
              v21 = *(a1 + 56);
            }

            if (v27)
            {
              dispatch_release(v27);
            }
          }
        }
      }

      else if ((*(v6 + 504) & 4) != 0)
      {
        v42 = *(v6 + 432);
        if (v42)
        {
          if (v4)
          {
            if (v137)
            {
              *type = 0;
              v139 = type;
              v140 = 0x2000000000;
              LOBYTE(v141) = 0;
              *v158 = MEMORY[0x1E69E9820];
              *&v158[8] = 0x40000000;
              *&v158[16] = ___ZL29nw_masque_match_demux_patternPKhmP19nw_protocol_options_block_invoke;
              v159 = &unk_1E6A2FAC8;
              v161 = v137;
              v162 = v4;
              v160 = type;
              nw_demux_options_enumerate_patterns(v42, v158);
              v43 = *(v139 + 24);
              _Block_object_dispose(type, 8);
              if (v43 == 1)
              {
                v44 = *(a1 + 32);
                if ((!v44 || (*(v44 + 505) & 1) == 0) && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v104 = gprivacy_proxyLogObj;
                  v105 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                  v44 = *(a1 + 32);
                  if (v105)
                  {
                    v106 = v44 == 0;
                    if (v44)
                    {
                      v107 = (v44 + 507);
                    }

                    else
                    {
                      v107 = "";
                    }

                    *v158 = 136446978;
                    *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                    *&v158[12] = 2082;
                    *&v158[14] = v107;
                    if (v106)
                    {
                      v108 = "";
                    }

                    else
                    {
                      v108 = " ";
                    }

                    *&v158[22] = 2080;
                    v159 = v108;
                    LOWORD(v160) = 1024;
                    *(&v160 + 2) = v137;
                    _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux (fast path)", v158, 0x26u);
                    v44 = *(a1 + 32);
                  }
                }

                v22 = *(v44 + 192);
                v21 = *(a1 + 56);
              }
            }
          }
        }
      }
    }

    if ((*(*(v22 + 24) + 88))(v22, *(a1 + 48), v137, v137, 1, v155))
    {
      *v158 = 0;
      *&v158[8] = v158;
      *&v158[16] = 0x2000000000;
      LOBYTE(v159) = 0;
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 0x40000000;
      v128 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_121;
      v129 = &unk_1E6A2FA30;
      v136 = v137;
      v45 = *(a1 + 32);
      v130 = v158;
      v131 = v155;
      v132 = v45;
      v133 = v4;
      v134 = *(a1 + 48);
      v135 = v21;
      v46 = *v155;
      do
      {
        if (!v46)
        {
          break;
        }

        v47 = *(v46 + 32);
        v48 = (v128)(v127);
        v46 = v47;
      }

      while ((v48 & 1) != 0);
      goto LABEL_102;
    }

    v49 = *(a1 + 32);
    if (v49 && (*(v49 + 505) & 1) != 0)
    {
      goto LABEL_114;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v50 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v51 = *(a1 + 32);
    v52 = "";
    v53 = v51 == 0;
    if (v51)
    {
      v54 = (v51 + 507);
    }

    else
    {
      v54 = "";
    }

    v55 = v137;
    *v158 = 136446722;
    if (!v53)
    {
      v52 = " ";
    }

LABEL_113:
    *&v158[4] = v54;
    *&v158[12] = 2080;
    *&v158[14] = v52;
    *&v158[22] = 1024;
    LODWORD(v159) = v55;
    _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u bytes", v158, 0x1Cu);
    goto LABEL_114;
  }

  v7 = *(v6 + 503);
  if ((v7 & 0x800000) == 0)
  {
    if ((*(v6 + 503) & 0x6000) != 0x2000)
    {
      goto LABEL_156;
    }

    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v8 = nw_protocol_copy_http_definition_http_definition;
    v9 = nw_frame_copy_metadata_for_protocol(a2, v8);
    if (v8)
    {
      os_release(v8);
    }

    if (!v9)
    {
      goto LABEL_156;
    }

    v10 = *(a1 + 32);
    if ((!v10 || (*(v10 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v82 = gprivacy_proxyLogObj;
      v83 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v10 = *(a1 + 32);
      if (v83)
      {
        v84 = "";
        v85 = v10 == 0;
        if (v10)
        {
          v86 = (v10 + 507);
        }

        else
        {
          v86 = "";
        }

        *v158 = 136446722;
        *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
        if (!v85)
        {
          v84 = " ";
        }

        *&v158[12] = 2082;
        *&v158[14] = v86;
        *&v158[22] = 2080;
        v159 = v84;
        _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSending oblivious HTTP message to proxy", v158, 0x20u);
        v10 = *(a1 + 32);
      }
    }

    *(v10 + 503) |= 0x4000u;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = mach_continuous_time();
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      *(v11 + 272) = v13;
      v14 = nw_http_metadata_copy_request(v9);
      if (!v14)
      {
        if ((*(v11 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v68 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *v158 = 136446466;
            *&v158[4] = v11 + 507;
            *&v158[12] = 2080;
            *&v158[14] = " ";
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s%sHTTP message is not a request", v158, 0x16u);
          }
        }

        nw_masque_mark_failed_with_error(v11, 22);
        goto LABEL_155;
      }

      v15 = v14;
      has_method = _nw_http_request_has_method(v15);

      if ((has_method & 1) == 0)
      {
        if ((*(v11 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v69 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *v158 = 136446466;
            *&v158[4] = v11 + 507;
            *&v158[12] = 2080;
            *&v158[14] = " ";
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s%sUnsupported method", v158, 0x16u);
          }
        }

        nw_masque_mark_failed_with_error(v11, 45);
        goto LABEL_154;
      }

      v17 = *(v11 + 328);
      if (v17)
      {
        v18 = _nw_protocol_options_copy_proxy_endpoint(v17);
        if (v18)
        {
          v19 = v18;
          if (nw_endpoint_get_type(v18) == nw_endpoint_type_url)
          {
            *v158 = 0;
            *&v158[8] = v158;
            *&v158[16] = 0x3802000000;
            v159 = __Block_byref_object_copy__129;
            v160 = __Block_byref_object_dispose__130;
            v161 = 0;
            LOBYTE(v162) = -1;
            v145 = 0;
            v146 = &v145;
            v147 = 0x2000000000;
            v148 = 0;
            *type = MEMORY[0x1E69E9820];
            v139 = 0x40000000;
            v140 = ___ZL42nw_masque_modify_proxied_oblivious_messageP9nw_masqueP20nw_protocol_metadata_block_invoke;
            v141 = &unk_1E6A2FAF0;
            v143 = v158;
            v144 = v19;
            v142 = &v145;
            nw_http_request_access_path(v15, type);
            if (v146[3])
            {
              *v155 = MEMORY[0x1E69E9820];
              *&v155[8] = 0x40000000;
              *&v155[16] = ___ZL42nw_masque_modify_proxied_oblivious_messageP9nw_masqueP20nw_protocol_metadata_block_invoke_135;
              v156 = &unk_1E6A2FB18;
              v157 = v158;
              nw_http_request_access_extended_connect_protocol(v15, v155);
              nw_http_request_set_header_fields(*(*&v158[8] + 40), v15);
              if (nw_masque_add_extra_headers_to_request(v11, *(*&v158[8] + 40), 0, 0))
              {
                nw_http_metadata_set_request(v9, *(*&v158[8] + 40));
                os_release(v19);
                if ((*(v11 + 505) & 1) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v20 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446722;
                    v150 = "nw_masque_modify_proxied_oblivious_message";
                    v151 = 2082;
                    v152 = v11 + 507;
                    v153 = 2080;
                    v154 = " ";
                    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sModified oblivious request", buf, 0x20u);
                  }
                }
              }
            }

            else
            {
              if ((*(v11 + 505) & 1) == 0)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v75 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
                {
                  *v155 = 136446466;
                  *&v155[4] = v11 + 507;
                  *&v155[12] = 2080;
                  *&v155[14] = " ";
                  _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_ERROR, "%{public}s%sPath missing from message", v155, 0x16u);
                }
              }

              nw_masque_mark_failed_with_error(v11, 22);
              os_release(v19);
            }

            _Block_object_dispose(&v145, 8);
            _Block_object_dispose(v158, 8);
            if ((v162 & 1) == 0)
            {
              goto LABEL_154;
            }

            v74 = v161;
            if (!v161)
            {
              goto LABEL_154;
            }
          }

          else
          {
            if ((*(v11 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v72 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                logging_description = nw_endpoint_get_logging_description(v19);
                *v158 = 136446722;
                *&v158[4] = v11 + 507;
                *&v158[12] = 2080;
                *&v158[14] = " ";
                *&v158[22] = 2082;
                v159 = logging_description;
                _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s%sProxy endpoint %{public}s is not of type URL", v158, 0x20u);
              }
            }

            nw_masque_mark_failed_with_error(v11, 22);
            v74 = v19;
          }

          os_release(v74);
LABEL_154:
          os_release(v15);
LABEL_155:
          os_release(v9);
LABEL_156:
          v59 = *(a1 + 40);
LABEL_157:
          *(a2 + 32) = 0;
          v76 = *(v59 + 8);
          *(a2 + 40) = v76;
          *v76 = a2;
          *(v59 + 8) = a2 + 32;
          return 1;
        }

        if (*(v11 + 505))
        {
          goto LABEL_138;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v70 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
LABEL_138:
          nw_masque_mark_failed_with_error(v11, 22);
          goto LABEL_154;
        }

        *v158 = 136446466;
        *&v158[4] = v11 + 507;
        *&v158[12] = 2080;
        *&v158[14] = " ";
        v71 = "%{public}s%sProxy endpoint not found";
      }

      else
      {
        if (*(v11 + 505))
        {
          goto LABEL_138;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v70 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_138;
        }

        *v158 = 136446466;
        *&v158[4] = v11 + 507;
        *&v158[12] = 2080;
        *&v158[14] = " ";
        v71 = "%{public}s%sOptions not found";
      }

      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, v71, v158, 0x16u);
      goto LABEL_138;
    }

    __nwlog_obj();
    *v158 = 136446210;
    *&v158[4] = "nw_masque_modify_proxied_oblivious_message";
    v78 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v155[0] = 0;
    if (__nwlog_fault(v78, type, v155))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (!os_log_type_enabled(v79, type[0]))
        {
          goto LABEL_202;
        }

        *v158 = 136446210;
        *&v158[4] = "nw_masque_modify_proxied_oblivious_message";
        v81 = "%{public}s called with null masque";
        goto LABEL_201;
      }

      if (v155[0] != 1)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (!os_log_type_enabled(v79, type[0]))
        {
          goto LABEL_202;
        }

        *v158 = 136446210;
        *&v158[4] = "nw_masque_modify_proxied_oblivious_message";
        v81 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v80 = type[0];
      v88 = os_log_type_enabled(v79, type[0]);
      if (backtrace_string)
      {
        if (v88)
        {
          *v158 = 136446466;
          *&v158[4] = "nw_masque_modify_proxied_oblivious_message";
          *&v158[12] = 2082;
          *&v158[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null masque, dumping backtrace:%{public}s", v158, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_202;
      }

      if (v88)
      {
        *v158 = 136446210;
        *&v158[4] = "nw_masque_modify_proxied_oblivious_message";
        v81 = "%{public}s called with null masque, no backtrace";
LABEL_201:
        _os_log_impl(&dword_181A37000, v79, v80, v81, v158, 0xCu);
      }
    }

LABEL_202:
    if (v78)
    {
      free(v78);
    }

    goto LABEL_155;
  }

  if (!*(v6 + 192))
  {
    goto LABEL_98;
  }

  v30 = *(v6 + 376);
  if (!v30)
  {
    if ((v7 & 0x400) != 0)
    {
      v56 = *(v6 + 432);
      if (v56)
      {
        if (v4)
        {
          if (v137)
          {
            *type = 0;
            v139 = type;
            v140 = 0x2000000000;
            LOBYTE(v141) = 0;
            *v158 = MEMORY[0x1E69E9820];
            *&v158[8] = 0x40000000;
            *&v158[16] = ___ZL29nw_masque_match_demux_patternPKhmP19nw_protocol_options_block_invoke;
            v159 = &unk_1E6A2FAC8;
            v161 = v137;
            v162 = v4;
            v160 = type;
            nw_demux_options_enumerate_patterns(v56, v158);
            v57 = *(v139 + 24);
            _Block_object_dispose(type, 8);
            if (v57 == 1)
            {
              v58 = *(a1 + 32);
              if ((!v58 || (*(v58 + 505) & 1) == 0) && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v114 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v115 = *(a1 + 32);
                  v116 = (v115 + 507);
                  v117 = "";
                  if (!v115)
                  {
                    v116 = "";
                  }

                  *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                  *&v158[12] = 2082;
                  *v158 = 136446978;
                  if (v115)
                  {
                    v117 = " ";
                  }

                  *&v158[14] = v116;
                  *&v158[22] = 2080;
                  v159 = v117;
                  LOWORD(v160) = 1024;
                  *(&v160 + 2) = v137;
                  _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux (fast path)", v158, 0x26u);
                }
              }

              v59 = *(a1 + 56);
              goto LABEL_157;
            }
          }
        }
      }
    }

    goto LABEL_98;
  }

  v31 = dispatch_data_get_size(v30);
  if (v31 + 1 >= v137)
  {
    goto LABEL_98;
  }

  v32 = v31;
  v33 = *(v6 + 392);
  if (v33)
  {
    if (dispatch_data_get_size(v33) != v32)
    {
      goto LABEL_98;
    }
  }

  if (*v4 < 64)
  {
    goto LABEL_98;
  }

  v34 = dispatch_data_create(v4 + 1, v32, 0, *MEMORY[0x1E69E9658]);
  is_equal = nw_dispatch_data_is_equal(v34, *(*(a1 + 32) + 376));
  v36 = is_equal;
  if (is_equal)
  {
    v37 = *(a1 + 32);
    if ((!v37 || (*(v37 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v94 = gprivacy_proxyLogObj;
      v95 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v37 = *(a1 + 32);
      if (v95)
      {
        v96 = v37 == 0;
        if (v37)
        {
          v97 = (v37 + 507);
        }

        else
        {
          v97 = "";
        }

        *v158 = 136446978;
        *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
        *&v158[12] = 2082;
        *&v158[14] = v97;
        if (v96)
        {
          v98 = "";
        }

        else
        {
          v98 = " ";
        }

        *&v158[22] = 2080;
        v159 = v98;
        LOWORD(v160) = 1024;
        *(&v160 + 2) = v137;
        _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux (fast path)", v158, 0x26u);
        v37 = *(a1 + 32);
      }
    }

    v38 = *(v37 + 392);
    if (v38)
    {
      nw_dispatch_data_copyout(v38, (v4 + 1), v32);
      v39 = *(a1 + 32);
      if ((!v39 || (*(v39 + 505) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v109 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          v110 = *(a1 + 32);
          v111 = "";
          v112 = v110 == 0;
          if (v110)
          {
            v113 = (v110 + 507);
          }

          else
          {
            v113 = "";
          }

          *v158 = 136446722;
          *&v158[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
          if (!v112)
          {
            v111 = " ";
          }

          *&v158[12] = 2082;
          *&v158[14] = v113;
          *&v158[22] = 2080;
          v159 = v111;
          _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing with virtual CID before forwarding", v158, 0x20u);
        }
      }
    }

    v40 = *(a1 + 56);
    *(a2 + 32) = 0;
    v41 = *(v40 + 8);
    *(a2 + 40) = v41;
    *v41 = a2;
    *(v40 + 8) = a2 + 32;
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  if ((v36 & 1) == 0)
  {
LABEL_98:
    v60 = *(*(a1 + 48) + 32);
    *type = 0;
    v139 = type;
    if ((*(*(v60 + 24) + 88))())
    {
      *v158 = 0;
      *&v158[8] = v158;
      *&v158[16] = 0x2000000000;
      LOBYTE(v159) = 0;
      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 0x40000000;
      v119 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_123;
      v120 = &unk_1E6A2FA58;
      v126 = v137;
      v61 = *(a1 + 32);
      v121 = v158;
      v122 = type;
      v123 = v61;
      v124 = v4;
      v125 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v62 = *type;
      do
      {
        if (!v62)
        {
          break;
        }

        v63 = *(v62 + 32);
        v64 = (v119)(v118);
        v62 = v63;
      }

      while ((v64 & 1) != 0);
LABEL_102:
      _Block_object_dispose(v158, 8);
LABEL_114:
      nw_frame_finalize(a2);
      return 1;
    }

    v65 = *(a1 + 32);
    if (v65 && (*(v65 + 505) & 1) != 0)
    {
      goto LABEL_114;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v50 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v66 = *(a1 + 32);
    v52 = "";
    v67 = v66 == 0;
    if (v66)
    {
      v54 = (v66 + 507);
    }

    else
    {
      v54 = "";
    }

    v55 = v137;
    *v158 = 136446722;
    if (!v67)
    {
      v52 = " ";
    }

    goto LABEL_113;
  }

  return 1;
}
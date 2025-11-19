void sub_181E944BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_redirect_options_copy_handler_block_invoke(uint64_t a1, const void **a2)
{
  v3 = _Block_copy(*a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t nw_http_redirect_options_get_limit(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_redirect_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_redirect_definition_http_redirect_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_redirect_options_get_limit_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_get_limit";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http redirect", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http redirect, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http redirect, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http redirect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_get_limit";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E94AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_encoding_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x228uLL, 0x74EAECDAuLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x228uLL);
LABEL_6:
    if (gLogDatapath == 1)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v42 = "nw_protocol_http_encoding_create";
        v43 = 2082;
        v44 = v7 + 114;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v42 = "nw_protocol_http_encoding_create";
  v43 = 2048;
  v44 = 1;
  v45 = 2048;
  v46 = 552;
  v8 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v8) || (free(v8), bzero(0, 0x228uLL), MEMORY[0xD8] = 0, MEMORY[0xE0] &= ~1u, MEMORY[0xE8] = 0, MEMORY[0xF0] &= ~1u, MEMORY[0x110] = 0, MEMORY[0x118] &= ~1u, MEMORY[0x178] = 0, MEMORY[0x180] &= ~1u, MEMORY[0x188] = 0, MEMORY[0x190] &= ~1u, MEMORY[0x198] = 0, MEMORY[0x1A0] &= ~1u, MEMORY[0x1A8] = 0, MEMORY[0x1B0] &= ~1u, MEMORY[0x1C0] = 0, MEMORY[0x1B8] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, v42 = "nw_protocol_http_encoding_create", v9 = _os_log_send_and_compose_impl(), __nwlog_should_abort(v9)))
  {
    __break(1u);
    goto LABEL_58;
  }

  free(v9);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (nw_protocol_http_encoding_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_encoding_identifier::onceToken, &__block_literal_global_35744);
  }

  *(v7 + 16) = nw_protocol_http_encoding_identifier::protocol_identifier;
  if (nw_protocol_http_encoding_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_encoding_get_callbacks(void)::onceToken, &__block_literal_global_20_35745);
  }

  *(v7 + 24) = &nw_protocol_http_encoding_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v10 = *(v7 + 416);
  if (v10)
  {
    v11 = *(v7 + 408);
    if (v11)
    {
      os_release(v11);
      v10 = *(v7 + 416);
    }
  }

  *(v7 + 408) = a3;
  *(v7 + 416) = v10 | 1;
  if (a4)
  {
    v12 = os_retain(a4);
    v13 = *(v7 + 432);
    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(v7 + 432);
    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v14 = *(v7 + 424);
  if (v14)
  {
    os_release(v14);
    v13 = *(v7 + 432);
  }

LABEL_22:
  *(v7 + 424) = v12;
  *(v7 + 432) = v13 | 1;
  *(v7 + 544) = *(v7 + 544) & 0xFFFE | nw_parameters_get_server_mode(a4);
  *(v7 + 456) = 0;
  *(v7 + 464) = v7 + 456;
  *(v7 + 472) = 0;
  *(v7 + 480) = v7 + 472;
  *(v7 + 488) = 0;
  *(v7 + 496) = v7 + 488;
  *(v7 + 504) = 0;
  *(v7 + 512) = v7 + 504;
  *(v7 + 520) = 0;
  *(v7 + 528) = v7 + 520;
  nw_frame_cache_init(v7 + 336, v7, 256, 0x40000, 0);
  if (nw_protocol_copy_http_encoding_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_encoding_definition_onceToken, &__block_literal_global_40_76731);
  }

  v15 = nw_protocol_copy_http_encoding_definition_http_encoding_definition;
  v16 = nw_parameters_copy_protocol_options_for_definition(a4, v15);
  type = nw_http_encoding_options_get_type(v16);
  v18 = 0;
  *(v7 + 536) = type;
  if (type <= 3)
  {
    if (type == 2)
    {
      v30 = malloc_type_calloc(1uLL, 0x80uLL, 0xB8B427E0uLL);
      if (!v30)
      {
        v37 = __nwlog_obj();
        os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v42 = "nw_encoder_create_gzip";
        v43 = 2048;
        v44 = 1;
        v45 = 2048;
        v46 = 128;
        goto LABEL_64;
      }

      v18 = v30;
      *v30 = &unk_1EEFDA0B0;
      *(v30 + 30) = 31;
      v25 = (v30 + 8);
      v26 = 31;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_46;
      }

      v24 = malloc_type_calloc(1uLL, 0x80uLL, 0x362F5EF9uLL);
      if (!v24)
      {
        v38 = __nwlog_obj();
        os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v42 = "nw_encoder_create_deflate";
        v43 = 2048;
        v44 = 1;
        v45 = 2048;
        v46 = 128;
        goto LABEL_64;
      }

      v18 = v24;
      *v24 = &unk_1EEFDA0B0;
      *(v24 + 30) = 15;
      v25 = (v24 + 8);
      v26 = 15;
    }

LABEL_45:
    deflateInit2_(v25, -1, 8, v26, 8, 0, "1.2.12", 112);
    goto LABEL_46;
  }

  switch(type)
  {
    case 4:
      v27 = malloc_type_calloc(1uLL, 0x80uLL, 0x5D1DB915uLL);
      if (v27)
      {
        v18 = v27;
        *v27 = &unk_1EEFDA0B0;
        *(v27 + 30) = -15;
        v25 = (v27 + 8);
        v26 = -15;
        goto LABEL_45;
      }

LABEL_58:
      v34 = __nwlog_obj();
      os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v42 = "nw_encoder_create_raw_deflate";
      v43 = 2048;
      v44 = 1;
      v45 = 2048;
      v46 = 128;
      goto LABEL_64;
    case 5:
      v28 = malloc_type_calloc(1uLL, 0x30uLL, 0xF03B68C5uLL);
      if (v28)
      {
        v18 = v28;
        *v28 = &unk_1EEFDA0D8;
        if (compression_stream_init((v28 + 8), COMPRESSION_STREAM_ENCODE, COMPRESSION_BROTLI))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v42 = "brotli_encoder";
            _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s init failed", buf, 0xCu);
          }
        }

        break;
      }

      v35 = __nwlog_obj();
      os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v42 = "nw_encoder_create_brotli";
      v43 = 2048;
      v44 = 1;
      v45 = 2048;
      v46 = 48;
      goto LABEL_64;
    case 6:
      v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x6AD94E8EuLL);
      if (v19)
      {
        v18 = v19;
        *v19 = &unk_1EEFDA100;
        v20 = malloc_type_calloc(1uLL, 8uLL, 0xBFC633F2uLL);
        if (v20)
        {
          v21 = v20;
          *v20 = 0;
          v22 = malloc_type_malloc(0x1478uLL, 0xB2223D72uLL);
          v23 = v22;
          if (v22)
          {
            bzero(v22, 0x1478uLL);
            *(v23 + 465) = 0;
            *(v23 + 3688) = 0u;
            *(v23 + 3704) = 0u;
            *(v23 + 3656) = 0u;
            *(v23 + 3672) = 0u;
            *(v23 + 1) = 0u;
            *(v23 + 2) = 0u;
            *(v23 + 3) = 0u;
            *(v23 + 4) = 0u;
            *(v23 + 5) = 0u;
            *(v23 + 6) = 0u;
            *(v23 + 7) = 0u;
            *(v23 + 8) = 0u;
            *(v23 + 9) = 0u;
            *(v23 + 10) = 0u;
            *(v23 + 11) = 0u;
            *(v23 + 12) = 0u;
            *(v23 + 13) = 0u;
            *(v23 + 28) = 0;
            *(v23 + 15) = 3;
            *(v23 + 12) = 1;
          }

          *v21 = v23;
          *(v18 + 1) = v21;
          break;
        }

        v39 = __nwlog_obj();
        os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v42 = "nw_encoder_zstd_create";
        v43 = 2048;
        v44 = 1;
        v45 = 2048;
        v46 = 8;
      }

      else
      {
        v36 = __nwlog_obj();
        os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v42 = "nw_encoder_create_zstd";
        v43 = 2048;
        v44 = 1;
        v45 = 2048;
        v46 = 16;
      }

LABEL_64:
      v40 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v40);
      __break(1u);
      return result;
  }

LABEL_46:
  v31 = *(v7 + 448);
  if (v31 != v18)
  {
    if (v31)
    {
      (**v31)(*(v7 + 448));
      free(v31);
    }

    *(v7 + 448) = v18;
  }

  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_encoding_create::$_0::__invoke);
  *(v7 + 80) = v7 + 200;
  nw_protocol_plugin_reset_set_callbacks(v7, nw_protocol_http_encoding_create::$_1::__invoke);
  *(v7 + 88) = v7 + 216;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_encoding_create::$_2::__invoke, nw_protocol_http_encoding_create::$_3::__invoke, nw_protocol_http_encoding_create::$_4::__invoke);
  if (v16)
  {
    os_release(v16);
  }

  if (v15)
  {
    os_release(v15);
  }

  return v7;
}

void nw_frame_cache_init(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_frame_cache_init";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null frame_cache";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_frame_cache_init";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_62:
        if (!v5)
        {
          return;
        }

        goto LABEL_63;
      }

      if (!v14)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null frame_cache, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null frame_cache, backtrace limit exceeded";
    }

    goto LABEL_61;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_frame_cache_init";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
    {
      goto LABEL_62;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        v23 = "nw_frame_cache_init";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_61;
      }

      v15 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v16 = os_log_type_enabled(v6, type);
      if (!v15)
      {
        if (!v16)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        v23 = "nw_frame_cache_init";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_61;
      }

      if (!v16)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v23 = "nw_frame_cache_init";
      v24 = 2082;
      v25 = v15;
      v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    v23 = "nw_frame_cache_init";
    v8 = "%{public}s called with null protocol";
LABEL_61:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_62;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_frame_cache_init";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null max_frame_count";
      goto LABEL_61;
    }

    if (v20 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null max_frame_count, backtrace limit exceeded";
      goto LABEL_61;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v18 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (!v18)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null max_frame_count, no backtrace";
      goto LABEL_61;
    }

    if (!v18)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v23 = "nw_frame_cache_init";
    v24 = 2082;
    v25 = v15;
    v17 = "%{public}s called with null max_frame_count, dumping backtrace:%{public}s";
LABEL_42:
    _os_log_impl(&dword_181A37000, v6, v7, v17, buf, 0x16u);
    goto LABEL_43;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_frame_cache_init";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null max_byte_count";
      goto LABEL_61;
    }

    if (v20 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null max_byte_count, backtrace limit exceeded";
      goto LABEL_61;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (!v19)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v23 = "nw_frame_cache_init";
      v8 = "%{public}s called with null max_byte_count, no backtrace";
      goto LABEL_61;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_frame_cache_init";
      v24 = 2082;
      v25 = v15;
      v17 = "%{public}s called with null max_byte_count, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

LABEL_43:
    free(v15);
    if (!v5)
    {
      return;
    }

LABEL_63:
    free(v5);
    return;
  }

  *a1 = 0;
  *(a1 + 8) = a1;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 28) = a3;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  if (gLogDatapath == 1)
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a2 + 16);
      *buf = 136446722;
      v23 = "nw_frame_cache_init";
      v24 = 2048;
      v25 = a1;
      v26 = 2080;
      v27 = v12;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s initialized frame cache %p for protocol %s", buf, 0x20u);
    }
  }
}

uint64_t nw_protocol_http_authentication_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v129 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x3C0uLL, 0x23F00F0EuLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x3C0uLL);
    nw_protocol_http_authentication::nw_protocol_http_authentication(v7);
    if (*(v7 + 198))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_authentication_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v126 = 960;
  v8 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v8);
  if (result || (free(v8), bzero(0, 0x3C0uLL), nw_protocol_http_authentication::nw_protocol_http_authentication(0), pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, *&buf[4] = "nw_protocol_http_authentication_create", v10 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v10), result))
  {
    __break(1u);
    return result;
  }

  free(v10);
  if ((MEMORY[0xC6] & 1) == 0)
  {
LABEL_7:
    if (gLogDatapath == 1)
    {
      v75 = __nwlog_obj();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_authentication_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 114;
        *&buf[22] = 2080;
        v126 = " ";
        _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }
  }

LABEL_8:
  if (nw_protocol_http_authentication_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_authentication_identifier::onceToken, &__block_literal_global_14501);
  }

  *(v7 + 16) = &nw_protocol_http_authentication_identifier::protocol_identifier;
  if (nw_protocol_http_authentication_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_authentication_get_callbacks(void)::onceToken, &__block_literal_global_128_14502);
  }

  *(v7 + 24) = &nw_protocol_http_authentication_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  v11 = nw_parameters_copy_url_endpoint(a4);
  if (v11)
  {
    v12 = (v7 + 688);
    v13 = *(v7 + 688);
    if ((v13 & 1) != 0 && *(v7 + 680))
    {
      v14 = v11;
      os_release(*(v7 + 680));
      v11 = v14;
      v13 = *v12;
    }

    *(v7 + 680) = v11;
  }

  else
  {
    if (a3)
    {
      a3 = os_retain(a3);
    }

    v12 = (v7 + 688);
    v13 = *(v7 + 688);
    if (v13)
    {
      v15 = *(v7 + 680);
      if (v15)
      {
        os_release(v15);
        v13 = *v12;
      }
    }

    *(v7 + 680) = a3;
  }

  *v12 = v13 | 1;
  if (a4)
  {
    v16 = os_retain(a4);
    v17 = *(v7 + 720);
    if ((v17 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v16 = 0;
    v17 = *(v7 + 720);
    if ((v17 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v18 = *(v7 + 712);
  if (v18)
  {
    os_release(v18);
    v17 = *(v7 + 720);
  }

LABEL_29:
  *(v7 + 712) = v16;
  *(v7 + 720) = v17 | 1;
  v19 = nw_parameters_copy_context(a4);
  v20 = *(v7 + 736);
  if ((v20 & 1) != 0 && *(v7 + 728))
  {
    v21 = v19;
    os_release(*(v7 + 728));
    v19 = v21;
    v20 = *(v7 + 736);
  }

  *(v7 + 728) = v19;
  *(v7 + 736) = v20 | 1;
  v22 = *(v7 + 752);
  if (v22)
  {
    v23 = *(v7 + 744);
    if (v23)
    {
      os_release(v23);
      v22 = *(v7 + 752);
    }
  }

  *(v7 + 744) = 0;
  *(v7 + 752) = v22 | 1;
  *(v7 + 958) &= ~1u;
  if (nw_parameters_get_server_mode(a4))
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  *(v7 + 958) = *(v7 + 958) & 0xFFFD | v24;
  v25 = *(v7 + 592);
  if (v25)
  {
    v26 = *(v7 + 584);
    if (v26)
    {
      os_release(v26);
      v25 = *(v7 + 592);
    }
  }

  *(v7 + 584) = 0;
  *(v7 + 592) = v25 | 1;
  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  object = nw_protocol_copy_http_authentication_definition_http_authentication_definition;
  v27 = nw_parameters_copy_protocol_options_for_definition(a4, object);
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    v30 = nw_protocol_copy_http_authentication_definition_onceToken;
    v31 = v29;
    if (v30 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
    }

    v32 = nw_protocol_options_matches_definition(v31, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

    if (v32)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v126 = __Block_byref_object_copy__7;
      v127 = __Block_byref_object_dispose__8;
      v128 = 0;
      *type = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __nw_http_authentication_options_copy_challenge_handler_block_invoke;
      v122 = &unk_1E6A3A858;
      v123 = buf;
      nw_protocol_options_access_handle(v31, type);
      v33 = _Block_copy(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);

      goto LABEL_48;
    }

    v76 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
    v115 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v124 = 0;
    v77 = v115;
    if (!__nwlog_fault(v115, type, &v124))
    {
LABEL_188:
      if (v77)
      {
        free(v77);
      }

      v33 = 0;
LABEL_48:

      v34 = *(v7 + 656);
      if (v34)
      {
        v35 = *(v7 + 648);
        if (v35)
        {
          _Block_release(v35);
          v34 = *(v7 + 656);
        }
      }

      *(v7 + 648) = v33;
      *(v7 + 656) = v34 | 1;
      v36 = v31;
      v37 = nw_protocol_copy_http_authentication_definition_onceToken;
      v38 = v36;
      if (v37 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
      }

      v39 = nw_protocol_options_matches_definition(v38, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

      if (v39)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v126 = __Block_byref_object_copy__75915;
        v127 = __Block_byref_object_dispose__75916;
        v128 = 0;
        *type = MEMORY[0x1E69E9820];
        v120 = 3221225472;
        v121 = __nw_http_authentication_options_copy_challenge_queue_block_invoke;
        v122 = &unk_1E6A3A858;
        v123 = buf;
        nw_protocol_options_access_handle(v38, type);
        v40 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        goto LABEL_55;
      }

      v80 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
      v116 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v124 = 0;
      v81 = v116;
      if (!__nwlog_fault(v116, type, &v124))
      {
LABEL_195:
        if (v81)
        {
          free(v81);
        }

        v40 = 0;
LABEL_55:

        v41 = *(v7 + 672);
        if (v41)
        {
          v42 = *(v7 + 664);
          if (v42)
          {
            dispatch_release(v42);
            v41 = *(v7 + 672);
          }
        }

        *(v7 + 664) = v40;
        *(v7 + 672) = v41 | 1;
        v43 = v38;
        v44 = nw_protocol_copy_http_authentication_definition_onceToken;
        v45 = v43;
        if (v44 != -1)
        {
          dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
        }

        v46 = nw_protocol_options_matches_definition(v45, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

        if (v46)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v126 = __Block_byref_object_copy__75915;
          v127 = __Block_byref_object_dispose__75916;
          v128 = 0;
          *type = MEMORY[0x1E69E9820];
          v120 = 3221225472;
          v121 = __nw_http_authentication_options_copy_credential_storage_block_invoke;
          v122 = &unk_1E6A3A858;
          v123 = buf;
          nw_protocol_options_access_handle(v45, type);
          v47 = *(*&buf[8] + 40);
          _Block_object_dispose(buf, 8);

          goto LABEL_62;
        }

        v84 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
        v117 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v124 = 0;
        v85 = v117;
        if (!__nwlog_fault(v117, type, &v124))
        {
LABEL_202:
          if (v85)
          {
            free(v85);
          }

          v47 = 0;
LABEL_62:

          v48 = *(v7 + 592);
          if (v48)
          {
            v49 = *(v7 + 584);
            if (v49)
            {
              os_release(v49);
              v48 = *(v7 + 592);
            }
          }

          *(v7 + 584) = v47;
          *(v7 + 592) = v48 | 1;
          v50 = nw_http_authentication_options_copy_credential_cache(v45);
          v51 = *(v7 + 608);
          if ((v51 & 1) != 0 && *(v7 + 600))
          {
            v52 = v50;
            os_release(*(v7 + 600));
            v50 = v52;
            v51 = *(v7 + 608);
          }

          *(v7 + 600) = v50;
          *(v7 + 608) = v51 | 1;
          v53 = v45;
          v54 = nw_protocol_copy_http_authentication_definition_onceToken;
          v55 = v53;
          if (v54 != -1)
          {
            dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
          }

          v56 = nw_protocol_options_matches_definition(v55, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

          if (v56)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v126 = __Block_byref_object_copy__75915;
            v127 = __Block_byref_object_dispose__75916;
            v128 = 0;
            *type = MEMORY[0x1E69E9820];
            v120 = 3221225472;
            v121 = __nw_http_authentication_options_copy_h1_fallback_cache_block_invoke;
            v122 = &unk_1E6A3A858;
            v123 = buf;
            nw_protocol_options_access_handle(v55, type);
            v57 = *(*&buf[8] + 40);
            _Block_object_dispose(buf, 8);

LABEL_72:
            v58 = *(v7 + 624);
            if (v58)
            {
              v59 = *(v7 + 616);
              if (v59)
              {
                os_release(v59);
                v58 = *(v7 + 624);
              }
            }

            *(v7 + 616) = v57;
            *(v7 + 624) = v58 | 1;
            v60 = nw_http_authentication_options_copy_appsso_h1_fallback_headers(v55);
            v61 = *(v7 + 640);
            if ((v61 & 1) != 0 && *(v7 + 632))
            {
              v62 = v60;
              os_release(*(v7 + 632));
              v60 = v62;
              v61 = *(v7 + 640);
            }

            *(v7 + 632) = v60;
            *(v7 + 640) = v61 | 1;
            goto LABEL_79;
          }

          v88 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
          v89 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v124 = 0;
          if (__nwlog_fault(v89, type, &v124))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v90 = __nwlog_obj();
              v91 = type[0];
              if (os_log_type_enabled(v90, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                _os_log_impl(&dword_181A37000, v90, v91, "%{public}s protocol options are not http_authentication", buf, 0xCu);
              }
            }

            else if (v124 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v90 = __nwlog_obj();
              v106 = type[0];
              v107 = os_log_type_enabled(v90, type[0]);
              if (backtrace_string)
              {
                if (v107)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v90, v106, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_208;
              }

              if (v107)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                _os_log_impl(&dword_181A37000, v90, v106, "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v90 = __nwlog_obj();
              v111 = type[0];
              if (os_log_type_enabled(v90, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                _os_log_impl(&dword_181A37000, v90, v111, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_208:
          if (v89)
          {
            free(v89);
          }

          v57 = 0;
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v86 = __nwlog_obj();
          v87 = type[0];
          if (os_log_type_enabled(v86, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
            _os_log_impl(&dword_181A37000, v86, v87, "%{public}s protocol options are not http_authentication", buf, 0xCu);
          }
        }

        else
        {
          if (v124 == 1)
          {
            v102 = __nw_create_backtrace_string();
            v103 = __nwlog_obj();
            v114 = type[0];
            v104 = os_log_type_enabled(v103, type[0]);
            if (v102)
            {
              if (v104)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
                *&buf[12] = 2082;
                *&buf[14] = v102;
                _os_log_impl(&dword_181A37000, v103, v114, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v102);
            }

            else
            {
              if (v104)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
                _os_log_impl(&dword_181A37000, v103, v114, "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_201;
          }

          v86 = __nwlog_obj();
          v110 = type[0];
          if (os_log_type_enabled(v86, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
            _os_log_impl(&dword_181A37000, v86, v110, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_201:
        v85 = v117;
        goto LABEL_202;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type[0];
        if (os_log_type_enabled(v82, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s protocol options are not http authentication", buf, 0xCu);
        }
      }

      else
      {
        if (v124 == 1)
        {
          v99 = __nw_create_backtrace_string();
          v100 = __nwlog_obj();
          v113 = type[0];
          v101 = os_log_type_enabled(v100, type[0]);
          if (v99)
          {
            if (v101)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
              *&buf[12] = 2082;
              *&buf[14] = v99;
              _os_log_impl(&dword_181A37000, v100, v113, "%{public}s protocol options are not http authentication, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v99);
          }

          else
          {
            if (v101)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
              _os_log_impl(&dword_181A37000, v100, v113, "%{public}s protocol options are not http authentication, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_194;
        }

        v82 = __nwlog_obj();
        v109 = type[0];
        if (os_log_type_enabled(v82, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
          _os_log_impl(&dword_181A37000, v82, v109, "%{public}s protocol options are not http authentication, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_194:
      v81 = v116;
      goto LABEL_195;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v78 = __nwlog_obj();
      v79 = type[0];
      if (os_log_type_enabled(v78, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
        _os_log_impl(&dword_181A37000, v78, v79, "%{public}s protocol options are not http authentication", buf, 0xCu);
      }
    }

    else
    {
      if (v124 == 1)
      {
        v96 = __nw_create_backtrace_string();
        v97 = __nwlog_obj();
        v112 = type[0];
        v98 = os_log_type_enabled(v97, type[0]);
        if (v96)
        {
          if (v98)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
            *&buf[12] = 2082;
            *&buf[14] = v96;
            _os_log_impl(&dword_181A37000, v97, v112, "%{public}s protocol options are not http authentication, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v96);
        }

        else
        {
          if (v98)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
            _os_log_impl(&dword_181A37000, v97, v112, "%{public}s protocol options are not http authentication, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_187;
      }

      v78 = __nwlog_obj();
      v108 = type[0];
      if (os_log_type_enabled(v78, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
        _os_log_impl(&dword_181A37000, v78, v108, "%{public}s protocol options are not http authentication, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_187:
    v77 = v115;
    goto LABEL_188;
  }

LABEL_79:
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v63 = nw_protocol_copy_http_client_definition_definition;
  v64 = nw_parameters_copy_protocol_options_for_definition(a4, v63);
  v65 = nw_http_client_options_copy_retry_with_h1_handler(v64);
  v66 = *(v7 + 512);
  if ((v66 & 1) != 0 && *(v7 + 504))
  {
    v67 = v65;
    _Block_release(*(v7 + 504));
    v65 = v67;
    v66 = *(v7 + 512);
  }

  *(v7 + 200) = 0;
  *(v7 + 504) = v65;
  *(v7 + 512) = v66 | 1;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v68 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v68, nw_protocol_http_authentication_create::$_0::__invoke, nw_protocol_http_authentication_create::$_1::__invoke);
  if (v68)
  {
    os_release(v68);
  }

  v69 = *(v7 + 40);
  if (!v69)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
    v71 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v124 = 0;
    if (!__nwlog_fault(v71, type, &v124))
    {
      goto LABEL_182;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_182;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v74 = "%{public}s called with null protocol->handle";
      goto LABEL_181;
    }

    if (v124 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_182;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v74 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_181;
    }

    v92 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type[0];
    v93 = os_log_type_enabled(v72, type[0]);
    if (!v92)
    {
      if (!v93)
      {
        goto LABEL_182;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v74 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_181;
    }

    if (v93)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      *&buf[12] = 2082;
      *&buf[14] = v92;
      _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v92);
LABEL_182:
    if (!v71)
    {
      goto LABEL_91;
    }

LABEL_183:
    free(v71);
    goto LABEL_91;
  }

  v70 = *(v69 + 72);
  if (!v70)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
    v71 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v124 = 0;
    if (!__nwlog_fault(v71, type, &v124))
    {
      goto LABEL_182;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_182;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v74 = "%{public}s called with null metadata_plugin";
      goto LABEL_181;
    }

    if (v124 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (!os_log_type_enabled(v72, type[0]))
      {
        goto LABEL_182;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v74 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_181;
    }

    v94 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type[0];
    v95 = os_log_type_enabled(v72, type[0]);
    if (v94)
    {
      if (v95)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
        *&buf[12] = 2082;
        *&buf[14] = v94;
        _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v94);
      if (!v71)
      {
        goto LABEL_91;
      }

      goto LABEL_183;
    }

    if (v95)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v74 = "%{public}s called with null metadata_plugin, no backtrace";
LABEL_181:
      _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
      goto LABEL_182;
    }

    goto LABEL_182;
  }

  *(v70 + 120) = nw_http_authentication_reissue;
LABEL_91:
  *(v7 + 88) = v7 + 344;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_authentication_create::$_2::__invoke, nw_protocol_http_authentication_create::$_3::__invoke, nw_protocol_http_authentication_create::$_4::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_authentication_create::$_5::__invoke);
  if (v64)
  {
    os_release(v64);
  }

  if (v63)
  {
    os_release(v63);
  }

  if (v28)
  {
    os_release(v28);
  }

  if (object)
  {
    os_release(object);
  }

  return v7;
}

void sub_181E975BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_http_authentication::nw_protocol_http_authentication(nw_protocol_http_authentication *this)
{
  *(this + 31) = 0;
  *(this + 256) &= ~1u;
  *(this + 33) = 0;
  *(this + 272) &= ~1u;
  *(this + 35) = 0;
  *(this + 288) &= ~1u;
  *(this + 43) = 0;
  *(this + 352) &= ~1u;
  *(this + 45) = 0;
  *(this + 368) &= ~1u;
  *(this + 50) = 0;
  *(this + 408) &= ~1u;
  *(this + 57) = 0;
  *(this + 464) &= ~1u;
  *(this + 59) = 0;
  *(this + 480) &= ~1u;
  *(this + 61) = 0;
  *(this + 496) &= ~1u;
  *(this + 63) = 0;
  *(this + 512) &= ~1u;
  *(this + 65) = 0;
  *(this + 528) &= ~1u;
  *(this + 67) = 0;
  *(this + 544) &= ~1u;
  *(this + 69) = 0;
  *(this + 560) &= ~1u;
  *(this + 71) = 0;
  *(this + 576) &= ~1u;
  *(this + 73) = 0;
  *(this + 592) &= ~1u;
  *(this + 75) = 0;
  *(this + 608) &= ~1u;
  *(this + 77) = 0;
  *(this + 624) &= ~1u;
  *(this + 79) = 0;
  *(this + 640) &= ~1u;
  *(this + 81) = 0;
  *(this + 656) &= ~1u;
  *(this + 83) = 0;
  *(this + 672) &= ~1u;
  *(this + 85) = 0;
  *(this + 688) &= ~1u;
  *(this + 87) = 0;
  *(this + 704) &= ~1u;
  *(this + 89) = 0;
  *(this + 720) &= ~1u;
  *(this + 91) = 0;
  *(this + 736) &= ~1u;
  *(this + 93) = 0;
  *(this + 752) &= ~1u;
  *(this + 95) = 0;
  *(this + 768) &= ~1u;
  *(this + 97) = 0;
  *(this + 784) &= ~1u;
  *(this + 99) = 0;
  *(this + 800) &= ~1u;
  *(this + 101) = 0;
  *(this + 816) &= ~1u;
  *(this + 103) = 0;
  *(this + 832) &= ~1u;
  *(this + 105) = 0;
  *(this + 848) &= ~1u;
  *(this + 107) = 0;
  *(this + 864) &= ~1u;
  *(this + 109) = 0;
  *(this + 880) &= ~1u;
  *(this + 111) = 0;
  *(this + 896) &= ~1u;
  *(this + 113) = 0;
  *(this + 912) &= ~1u;
  *(this + 115) = 0;
  *(this + 928) &= ~1u;
}

id nw_http_authentication_options_copy_credential_cache(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_authentication_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v25 = __Block_byref_object_copy__75915;
      v26 = __Block_byref_object_dispose__75916;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_authentication_options_copy_credential_cache_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_authentication", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E97E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_retry_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x240uLL, 0xADFA0540uLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x240uLL);
LABEL_6:
    if (gLogDatapath == 1)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v29 = "nw_protocol_http_retry_create";
        v30 = 2082;
        v31 = v7 + 114;
        v32 = 2080;
        v33 = " ";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v29 = "nw_protocol_http_retry_create";
  v30 = 2048;
  v31 = 1;
  v32 = 2048;
  v33 = 576;
  v8 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v8);
  if (result || (free(v8), bzero(0, 0x240uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x178] = 0, MEMORY[0x180] &= ~1u, MEMORY[0x1A0] = 0, MEMORY[0x1A8] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, MEMORY[0x228] = 0, MEMORY[0x230] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, v29 = "nw_protocol_http_retry_create", v10 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v10), result))
  {
    __break(1u);
    return result;
  }

  free(v10);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (nw_protocol_http_retry_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_retry_identifier::onceToken, &__block_literal_global_44478);
  }

  *(v7 + 16) = &nw_protocol_http_retry_identifier::protocol_identifier;
  if (nw_protocol_http_retry_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_retry_get_callbacks(void)::onceToken, &__block_literal_global_34);
  }

  *(v7 + 24) = &nw_protocol_http_retry_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v11 = *(v7 + 528);
  if (v11)
  {
    v12 = *(v7 + 520);
    if (v12)
    {
      os_release(v12);
      v11 = *(v7 + 528);
    }
  }

  *(v7 + 520) = a3;
  *(v7 + 528) = v11 | 1;
  if (!a4)
  {
    v13 = 0;
    v14 = *(v7 + 544);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v15 = *(v7 + 536);
    if (v15)
    {
      os_release(v15);
      v14 = *(v7 + 544);
    }

    goto LABEL_22;
  }

  v13 = os_retain(a4);
  v14 = *(v7 + 544);
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_22:
  *(v7 + 536) = v13;
  *(v7 + 544) = v14 | 1;
  v16 = nw_parameters_copy_context(a4);
  v17 = *(v7 + 560);
  if ((v17 & 1) != 0 && *(v7 + 552))
  {
    v18 = v16;
    os_release(*(v7 + 552));
    v16 = v18;
    v17 = *(v7 + 560);
  }

  *(v7 + 552) = v16;
  *(v7 + 560) = v17 | 1;
  *(v7 + 572) = *(v7 + 572) & 0xFE | nw_parameters_get_server_mode(a4);
  if (nw_protocol_copy_http_retry_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_retry_definition_onceToken, &__block_literal_global_46_76999);
  }

  v19 = nw_protocol_copy_http_retry_definition_http_retry_definition;
  v20 = nw_parameters_copy_protocol_options_for_definition(a4, v19);
  *(v7 + 568) = nw_http_retry_options_get_limit(v20);
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v21 = nw_protocol_copy_http_client_definition_definition;
  v22 = nw_parameters_copy_protocol_options_for_definition(a4, v21);
  v23 = nw_http_client_options_copy_retry_with_h1_handler(v22);
  v24 = *(v7 + 512);
  if ((v24 & 1) != 0 && *(v7 + 504))
  {
    v25 = v23;
    _Block_release(*(v7 + 504));
    v23 = v25;
    v24 = *(v7 + 512);
  }

  *(v7 + 200) = 0;
  *(v7 + 504) = v23;
  *(v7 + 512) = v24 | 1;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v26 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v26, nw_protocol_http_retry_create::$_0::__invoke, nw_protocol_http_retry_create::$_1::__invoke);
  if (v26)
  {
    os_release(v26);
  }

  *(v7 + 80) = v7 + 344;
  nw_protocol_plugin_reset_set_callbacks(v7, nw_protocol_http_retry_create::$_2::__invoke);
  *(v7 + 88) = v7 + 360;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_retry_create::$_3::__invoke, nw_protocol_http_retry_create::$_4::__invoke, nw_protocol_http_retry_create::$_5::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_retry_create::$_6::__invoke);
  if (v22)
  {
    os_release(v22);
  }

  if (v21)
  {
    os_release(v21);
  }

  if (v20)
  {
    os_release(v20);
  }

  if (v19)
  {
    os_release(v19);
  }

  return v7;
}

uint64_t nw_http_retry_options_get_limit(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_retry_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_retry_definition_onceToken, &__block_literal_global_46_76999);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_retry_definition_http_retry_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_retry_options_get_limit_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_retry_options_get_limit";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http retry", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http retry, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http retry, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_retry_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http retry, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_retry_options_get_limit";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_retry_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E98B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_cookie_create()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x1C0uLL, 0x822486DAuLL);
  v1 = v0;
  if (v0)
  {
    v0[26] = 0u;
    v0[27] = 0u;
    v0[24] = 0u;
    v0[25] = 0u;
    v0[22] = 0u;
    v0[23] = 0u;
    v0[20] = 0u;
    v0[21] = 0u;
    v0[18] = 0u;
    v0[19] = 0u;
    v0[16] = 0u;
    v0[17] = 0u;
    v0[14] = 0u;
    v0[15] = 0u;
    v0[12] = 0u;
    v0[13] = 0u;
    v0[10] = 0u;
    v0[11] = 0u;
    v0[8] = 0u;
    v0[9] = 0u;
    v0[6] = 0u;
    v0[7] = 0u;
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v9 = "nw_protocol_http_cookie_create";
    v10 = 2048;
    v11 = 1;
    v12 = 2048;
    v13 = 448;
    v2 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v2);
    if (result || (free(v2), MEMORY[0x1B0] = 0u, MEMORY[0x1A0] = 0u, MEMORY[0x190] = 0u, MEMORY[0x180] = 0u, MEMORY[0x170] = 0u, MEMORY[0x160] = 0u, MEMORY[0x150] = 0u, MEMORY[0x140] = 0u, MEMORY[0x130] = 0u, MEMORY[0x120] = 0u, MEMORY[0x110] = 0u, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0xA0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, MEMORY[0xF8] = 0, MEMORY[0x108] = 0, MEMORY[0x118] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, v9 = "nw_protocol_http_cookie_create", v4 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v4), result))
    {
      __break(1u);
      return result;
    }

    free(v4);
  }

  if (nw_protocol_http_cookie_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http_cookie_identifier::onceToken, &__block_literal_global_16341);
  }

  *(v1 + 16) = &nw_protocol_http_cookie_identifier::http_cookie_protocol_identifier;
  if (nw_protocol_http_cookie_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_cookie_get_callbacks(void)::onceToken, &__block_literal_global_28);
  }

  *(v1 + 24) = &nw_protocol_http_cookie_get_callbacks(void)::protocol_callbacks;
  *(v1 + 40) = v1;
  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v9 = "nw_protocol_http_cookie_create";
      v10 = 2082;
      v11 = v1 + 114;
      v12 = 2080;
      v13 = " ";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  if (nw_protocol_copy_http_cookie_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
  }

  v5 = nw_protocol_copy_http_cookie_definition_http_cookie_definition;
  *(v1 + 64) = v1 + 104;
  nw_protocol_plugin_name_set_callbacks(v1, nw_protocol_http_cookie_create::$_0::__invoke);
  *(v1 + 200) = 0;
  *(v1 + 72) = v1 + 200;
  *(v1 + 208) = v1 + 200;
  *(v1 + 216) = 0;
  *(v1 + 224) = v1 + 216;
  *(v1 + 232) = 0;
  *(v1 + 240) = v1 + 232;
  *(v1 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v6 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v1, v6, nw_protocol_http_cookie_create::$_1::__invoke, nw_protocol_http_cookie_create::$_2::__invoke);
  if (v6)
  {
    os_release(v6);
  }

  *(v1 + 80) = v1 + 344;
  if (v5)
  {
    os_release(v5);
  }

  return v1;
}

uint64_t nw_protocol_common_get_parameters(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 40);
      v3 = *(a1 + 48);
      if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v1 + 64)) != 0)
      {
        v14 = *(v3 + 88);
        if (v14)
        {
          v4 = 0;
          *(v3 + 88) = v14 + 1;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v4 = 0;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v4 = 1;
        v5 = *(v1 + 24);
        if (!v5)
        {
          goto LABEL_44;
        }
      }

      v15 = *(v5 + 112);
      if (v15)
      {
        result = v15(v1);
        if (v4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_44:
      __nwlog_obj();
      v25 = *(v1 + 16);
      *buf = 136446722;
      v41 = "__nw_protocol_get_parameters";
      if (!v25)
      {
        v25 = "invalid";
      }

      v42 = 2082;
      v43 = v25;
      v44 = 2048;
      v45 = v1;
      v26 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v26, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_80;
          }

          v29 = *(v1 + 16);
          if (!v29)
          {
            v29 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_parameters";
          v42 = 2082;
          v43 = v29;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_79:
          _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x20u);
          goto LABEL_80;
        }

        if (v38 != 1)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_80;
          }

          v36 = *(v1 + 16);
          if (!v36)
          {
            v36 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_parameters";
          v42 = 2082;
          v43 = v36;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
          goto LABEL_79;
        }

        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v32 = os_log_type_enabled(v27, type);
        if (!backtrace_string)
        {
          if (!v32)
          {
            goto LABEL_80;
          }

          v37 = *(v1 + 16);
          if (!v37)
          {
            v37 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_parameters";
          v42 = 2082;
          v43 = v37;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
          goto LABEL_79;
        }

        if (v32)
        {
          if (*(v1 + 16))
          {
            v33 = *(v1 + 16);
          }

          else
          {
            v33 = "invalid";
          }

          *buf = 136446978;
          v41 = "__nw_protocol_get_parameters";
          v42 = 2082;
          v43 = v33;
          v44 = 2048;
          v45 = v1;
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
      }

LABEL_80:
      if (v26)
      {
        free(v26);
      }

      result = 0;
      if (v4)
      {
        return result;
      }

LABEL_23:
      v17 = *(v1 + 40);
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
      {
        v18 = *(v1 + 88);
        if (v18)
        {
          v19 = v18 - 1;
          *(v1 + 88) = v19;
          if (!v19)
          {
            v20 = result;
            v21 = *(v1 + 64);
            if (v21)
            {
              *(v1 + 64) = 0;
              v21[2](v21);
              _Block_release(v21);
            }

            if (*(v1 + 72))
            {
              v22 = *(v1 + 64);
              if (v22)
              {
                _Block_release(v22);
              }
            }

            free(v1);
            return v20;
          }
        }
      }

      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v41 = "nw_protocol_common_get_parameters";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v6, &type, &v38))
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
          v41 = "nw_protocol_common_get_parameters";
          v9 = "%{public}s get_parameters requires a default input handler";
LABEL_36:
          v23 = v7;
          v24 = v8;
LABEL_37:
          _os_log_impl(&dword_181A37000, v23, v24, v9, buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v10 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(gLogObj, type);
        if (v10)
        {
          if (v13)
          {
            *buf = 136446466;
            v41 = "nw_protocol_common_get_parameters";
            v42 = 2082;
            v43 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_parameters requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v41 = "nw_protocol_common_get_parameters";
          v9 = "%{public}s get_parameters requires a default input handler, no backtrace";
          v23 = v11;
          v24 = v12;
          goto LABEL_37;
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
          v41 = "nw_protocol_common_get_parameters";
          v9 = "%{public}s get_parameters requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_common_get_parameters";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v6, &type, &v38))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v41 = "nw_protocol_common_get_parameters";
      v9 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v38 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v41 = "nw_protocol_common_get_parameters";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    v34 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v35 = os_log_type_enabled(v7, type);
    if (v34)
    {
      if (v35)
      {
        *buf = 136446466;
        v41 = "nw_protocol_common_get_parameters";
        v42 = 2082;
        v43 = v34;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v34);
      goto LABEL_38;
    }

    if (v35)
    {
      *buf = 136446210;
      v41 = "nw_protocol_common_get_parameters";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_http_joining_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v26 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v37 = 0;
    if (!__nwlog_fault(v26, buf, &v37))
    {
      goto LABEL_100;
    }

    if (buf[0] != 17)
    {
      if (v37 != 1)
      {
        v27 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v27, buf[0]))
        {
          *v46 = 136446210;
          *&v46[4] = "nw_protocol_http_joining_add_input_handler";
          v29 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = buf[0];
      v31 = os_log_type_enabled(v27, buf[0]);
      if (!backtrace_string)
      {
        if (v31)
        {
          *v46 = 136446210;
          *&v46[4] = "nw_protocol_http_joining_add_input_handler";
          v29 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (!v31)
      {
        goto LABEL_84;
      }

      *v46 = 136446466;
      *&v46[4] = "nw_protocol_http_joining_add_input_handler";
      *&v46[12] = 2082;
      *&v46[14] = backtrace_string;
      v32 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    v27 = __nwlog_obj();
    v28 = buf[0];
    if (!os_log_type_enabled(v27, buf[0]))
    {
      goto LABEL_100;
    }

    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v29 = "%{public}s called with null protocol";
LABEL_99:
    _os_log_impl(&dword_181A37000, v27, v28, v29, v46, 0xCu);
    goto LABEL_100;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v26 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v37 = 0;
    if (!__nwlog_fault(v26, buf, &v37))
    {
      goto LABEL_100;
    }

    if (buf[0] != 17)
    {
      if (v37 != 1)
      {
        v27 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v27, buf[0]))
        {
          *v46 = 136446210;
          *&v46[4] = "nw_protocol_http_joining_add_input_handler";
          v29 = "%{public}s called with null http_joining, backtrace limit exceeded";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = buf[0];
      v33 = os_log_type_enabled(v27, buf[0]);
      if (!backtrace_string)
      {
        if (v33)
        {
          *v46 = 136446210;
          *&v46[4] = "nw_protocol_http_joining_add_input_handler";
          v29 = "%{public}s called with null http_joining, no backtrace";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (!v33)
      {
        goto LABEL_84;
      }

      *v46 = 136446466;
      *&v46[4] = "nw_protocol_http_joining_add_input_handler";
      *&v46[12] = 2082;
      *&v46[14] = backtrace_string;
      v32 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    v27 = __nwlog_obj();
    v28 = buf[0];
    if (!os_log_type_enabled(v27, buf[0]))
    {
      goto LABEL_100;
    }

    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v29 = "%{public}s called with null http_joining";
    goto LABEL_99;
  }

  if (!a2)
  {
    __nwlog_obj();
    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v26 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v37 = 0;
    if (!__nwlog_fault(v26, buf, &v37))
    {
      goto LABEL_100;
    }

    if (buf[0] != 17)
    {
      if (v37 != 1)
      {
        v27 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v27, buf[0]))
        {
          *v46 = 136446210;
          *&v46[4] = "nw_protocol_http_joining_add_input_handler";
          v29 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = buf[0];
      v34 = os_log_type_enabled(v27, buf[0]);
      if (!backtrace_string)
      {
        if (v34)
        {
          *v46 = 136446210;
          *&v46[4] = "nw_protocol_http_joining_add_input_handler";
          v29 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (!v34)
      {
        goto LABEL_84;
      }

      *v46 = 136446466;
      *&v46[4] = "nw_protocol_http_joining_add_input_handler";
      *&v46[12] = 2082;
      *&v46[14] = backtrace_string;
      v32 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    v27 = __nwlog_obj();
    v28 = buf[0];
    if (!os_log_type_enabled(v27, buf[0]))
    {
      goto LABEL_100;
    }

    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v29 = "%{public}s called with null input_protocol";
    goto LABEL_99;
  }

  if (*(handle + 17))
  {
    v5 = a1->handle;

    return nw_http_joining_add_to_messaging(v5, a2);
  }

  parameters = nw_protocol_get_parameters(a2);
  if (!parameters)
  {
    __nwlog_obj();
    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v26 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v37 = 0;
    if (!__nwlog_fault(v26, buf, &v37))
    {
      goto LABEL_100;
    }

    if (buf[0] == 17)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (!os_log_type_enabled(v27, buf[0]))
      {
        goto LABEL_100;
      }

      *v46 = 136446210;
      *&v46[4] = "nw_protocol_http_joining_add_input_handler";
      v29 = "%{public}s called with null parameters";
      goto LABEL_99;
    }

    if (v37 != 1)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v46 = 136446210;
        *&v46[4] = "nw_protocol_http_joining_add_input_handler";
        v29 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = buf[0];
    v35 = os_log_type_enabled(v27, buf[0]);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v46 = 136446210;
        *&v46[4] = "nw_protocol_http_joining_add_input_handler";
        v29 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    if (!v35)
    {
      goto LABEL_84;
    }

    *v46 = 136446466;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    *&v46[12] = 2082;
    *&v46[14] = backtrace_string;
    v32 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_83:
    _os_log_impl(&dword_181A37000, v27, v28, v32, v46, 0x16u);
    goto LABEL_84;
  }

  v8 = parameters;
  v9 = _nw_parameters_copy_protocol_options_with_level(v8, a1);

  if (!v9)
  {
    __nwlog_obj();
    *v46 = 136446210;
    *&v46[4] = "nw_protocol_http_joining_add_input_handler";
    v26 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v37 = 0;
    if (!__nwlog_fault(v26, buf, &v37))
    {
      goto LABEL_100;
    }

    if (buf[0] == 17)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v46 = 136446210;
        *&v46[4] = "nw_protocol_http_joining_add_input_handler";
        v29 = "%{public}s called with null options";
        goto LABEL_99;
      }

LABEL_100:
      if (v26)
      {
        free(v26);
      }

      return 0;
    }

    if (v37 != 1)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v46 = 136446210;
        *&v46[4] = "nw_protocol_http_joining_add_input_handler";
        v29 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = buf[0];
    v36 = os_log_type_enabled(v27, buf[0]);
    if (!backtrace_string)
    {
      if (v36)
      {
        *v46 = 136446210;
        *&v46[4] = "nw_protocol_http_joining_add_input_handler";
        v29 = "%{public}s called with null options, no backtrace";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    if (v36)
    {
      *v46 = 136446466;
      *&v46[4] = "nw_protocol_http_joining_add_input_handler";
      *&v46[12] = 2082;
      *&v46[14] = backtrace_string;
      v32 = "%{public}s called with null options, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

LABEL_84:
    free(backtrace_string);
    goto LABEL_100;
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  memset(v46, 0, sizeof(v46));
  v10 = v9;
  _nw_protocol_options_get_log_id_str(v10, v46);

  if (*(handle + 6))
  {
    v12 = *(handle + 24);
    v11 = *(handle + 25);
    if (v12 >= v11)
    {
      v17 = *(handle + 23);
      v18 = v12 - v17;
      v19 = (v12 - v17) >> 4;
      v20 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v21 = v11 - v17;
      if (v21 >> 3 > v20)
      {
        v20 = v21 >> 3;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v23 = 16 * v19;
      *v23 = a2;
      *(v23 + 8) = 0;
      v13 = 16 * v19 + 16;
      memcpy(0, v17, v18);
      *(handle + 23) = 0;
      *(handle + 24) = v13;
      *(handle + 25) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v12 = a2;
      *(v12 + 8) = 0;
      v13 = v12 + 16;
    }

    *(handle + 24) = v13;
    if ((handle[294] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v39 = "nw_protocol_http_joining_add_input_handler";
        v40 = 2082;
        v41 = handle + 208;
        v42 = 2080;
        v43 = " ";
        v44 = 2082;
        v45 = v46;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sjoined by %{public}s", buf, 0x2Au);
      }
    }
  }

  else
  {
    nw_protocol_set_input_handler(handle, a2);
    v14 = 0;
    *handle = *a2->flow_id;
    v15 = handle + 208;
    while (1)
    {
      v16 = v46[v14];
      *v15 = v16;
      if (!v16)
      {
        break;
      }

      ++v15;
      if (++v14 == 83)
      {
        *v15 = 0;
        break;
      }
    }
  }

  if (a2->output_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "nw_protocol_http_joining_add_input_handler";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
    }
  }

  else
  {
    nw_protocol_set_output_handler(a2, a1);
  }

  os_release(v10);
  return 1;
}

uint64_t nw_protocol_plugin_retry_connect(nw_protocol *a1, nw_protocol *a2)
{
  v133 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v126 = "nw_protocol_plugin_retry_connect";
    v81 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v123 = 0;
    if (!__nwlog_fault(v81, &type, &v123))
    {
      goto LABEL_249;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v123 != 1)
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (os_log_type_enabled(v82, type))
        {
          *buf = 136446210;
          v126 = "nw_protocol_plugin_retry_connect";
          v84 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      backtrace_string = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = type;
      v97 = os_log_type_enabled(v82, type);
      if (!backtrace_string)
      {
        if (v97)
        {
          *buf = 136446210;
          v126 = "nw_protocol_plugin_retry_connect";
          v84 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      if (!v97)
      {
        goto LABEL_193;
      }

      *buf = 136446466;
      v126 = "nw_protocol_plugin_retry_connect";
      v127 = 2082;
      v128 = backtrace_string;
      v98 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_192;
    }

    v82 = __nwlog_obj();
    v83 = type;
    if (!os_log_type_enabled(v82, type))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v126 = "nw_protocol_plugin_retry_connect";
    v84 = "%{public}s called with null protocol";
LABEL_248:
    _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
    goto LABEL_249;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v126 = "nw_protocol_plugin_retry_connect";
    v81 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v123 = 0;
    if (!__nwlog_fault(v81, &type, &v123))
    {
      goto LABEL_249;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v123 != 1)
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (os_log_type_enabled(v82, type))
        {
          *buf = 136446210;
          v126 = "nw_protocol_plugin_retry_connect";
          v84 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      backtrace_string = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = type;
      v99 = os_log_type_enabled(v82, type);
      if (!backtrace_string)
      {
        if (v99)
        {
          *buf = 136446210;
          v126 = "nw_protocol_plugin_retry_connect";
          v84 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      if (!v99)
      {
        goto LABEL_193;
      }

      *buf = 136446466;
      v126 = "nw_protocol_plugin_retry_connect";
      v127 = 2082;
      v128 = backtrace_string;
      v98 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_192;
    }

    v82 = __nwlog_obj();
    v83 = type;
    if (!os_log_type_enabled(v82, type))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v126 = "nw_protocol_plugin_retry_connect";
    v84 = "%{public}s called with null protocol->handle";
    goto LABEL_248;
  }

  v4 = handle[11];
  if (!v4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v126 = "nw_protocol_plugin_retry_connect";
    v81 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v123 = 0;
    if (!__nwlog_fault(v81, &type, &v123))
    {
      goto LABEL_249;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v82 = __nwlog_obj();
      v83 = type;
      if (!os_log_type_enabled(v82, type))
      {
        goto LABEL_249;
      }

      *buf = 136446210;
      v126 = "nw_protocol_plugin_retry_connect";
      v84 = "%{public}s called with null retry_plugin";
      goto LABEL_248;
    }

    if (v123 != 1)
    {
      v82 = __nwlog_obj();
      v83 = type;
      if (os_log_type_enabled(v82, type))
      {
        *buf = 136446210;
        v126 = "nw_protocol_plugin_retry_connect";
        v84 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    backtrace_string = __nw_create_backtrace_string();
    v82 = __nwlog_obj();
    v83 = type;
    v100 = os_log_type_enabled(v82, type);
    if (!backtrace_string)
    {
      if (v100)
      {
        *buf = 136446210;
        v126 = "nw_protocol_plugin_retry_connect";
        v84 = "%{public}s called with null retry_plugin, no backtrace";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    if (!v100)
    {
      goto LABEL_193;
    }

    *buf = 136446466;
    v126 = "nw_protocol_plugin_retry_connect";
    v127 = 2082;
    v128 = backtrace_string;
    v98 = "%{public}s called with null retry_plugin, dumping backtrace:%{public}s";
LABEL_192:
    _os_log_impl(&dword_181A37000, v82, v83, v98, buf, 0x16u);
    goto LABEL_193;
  }

  v5 = a2;
  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v85 = __nwlog_obj();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v126 = "nw_protocol_plugin_retry_connect";
        v127 = 2048;
        v128 = v2;
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s called %p", buf, 0x16u);
      }
    }

    if (!*(v4 + 56))
    {
      if (!(*(v4 + 32))(v2, v5))
      {
        return 1;
      }

LABEL_51:
      output_handler = v2->output_handler;
      if (output_handler)
      {
        v32 = output_handler->handle;
        v33 = v2->output_handler;
        if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *output_handler[1].flow_id) != 0)
        {
          callbacks = v33[1].callbacks;
          v34 = 0;
          if (callbacks)
          {
            v33[1].callbacks = (&callbacks->add_input_handler + 1);
          }
        }

        else
        {
          v34 = 1;
        }

        v39 = v2->handle;
        v40 = v2;
        if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v40 = *v2[1].flow_id) != 0)
        {
          v43 = v40[1].callbacks;
          if (v43)
          {
            v41 = 0;
            v40[1].callbacks = (&v43->add_input_handler + 1);
            v42 = output_handler->callbacks;
            if (!v42)
            {
              goto LABEL_161;
            }
          }

          else
          {
            v41 = 0;
            v42 = output_handler->callbacks;
            if (!v42)
            {
              goto LABEL_161;
            }
          }
        }

        else
        {
          v41 = 1;
          v42 = output_handler->callbacks;
          if (!v42)
          {
            goto LABEL_161;
          }
        }

        connect = v42->connect;
        if (connect)
        {
          result = connect(output_handler, v2);
          if (v41)
          {
LABEL_83:
            if ((v34 & 1) == 0)
            {
              v52 = output_handler->handle;
              if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
              {
                v53 = output_handler[1].callbacks;
                if (v53)
                {
                  v54 = (v53 - 1);
                  output_handler[1].callbacks = v54;
                  if (!v54)
                  {
                    v55 = result;
                    v56 = *output_handler[1].flow_id;
                    if (v56)
                    {
                      *output_handler[1].flow_id = 0;
                      v56[2](v56);
                      _Block_release(v56);
                    }

                    if (output_handler[1].flow_id[8])
                    {
                      v57 = *output_handler[1].flow_id;
                      if (v57)
                      {
                        _Block_release(v57);
                      }
                    }

                    free(output_handler);
                    return v55;
                  }
                }
              }
            }

            return result;
          }

LABEL_72:
          v46 = v2->handle;
          if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v47 = v2[1].callbacks;
            if (v47)
            {
              v48 = (v47 - 1);
              v2[1].callbacks = v48;
              if (!v48)
              {
                v49 = result;
                v50 = *v2[1].flow_id;
                if (v50)
                {
                  *v2[1].flow_id = 0;
                  v50[2](v50);
                  _Block_release(v50);
                }

                if (v2[1].flow_id[8])
                {
                  v51 = *v2[1].flow_id;
                  if (v51)
                  {
                    _Block_release(v51);
                  }
                }

                free(v2);
                result = v49;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_161:
        __nwlog_obj();
        name = output_handler->identifier->name;
        *buf = 136446722;
        v126 = "__nw_protocol_connect";
        if (!name)
        {
          name = "invalid";
        }

        v127 = 2082;
        v128 = name;
        v129 = 2048;
        v130 = output_handler;
        v87 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v123 = 0;
        if (__nwlog_fault(v87, &type, &v123))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v88 = __nwlog_obj();
            v89 = type;
            if (!os_log_type_enabled(v88, type))
            {
              goto LABEL_261;
            }

            v90 = output_handler->identifier->name;
            if (!v90)
            {
              v90 = "invalid";
            }

            *buf = 136446722;
            v126 = "__nw_protocol_connect";
            v127 = 2082;
            v128 = v90;
            v129 = 2048;
            v130 = output_handler;
            v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
LABEL_260:
            _os_log_impl(&dword_181A37000, v88, v89, v91, buf, 0x20u);
            goto LABEL_261;
          }

          if (v123 != 1)
          {
            v88 = __nwlog_obj();
            v89 = type;
            if (!os_log_type_enabled(v88, type))
            {
              goto LABEL_261;
            }

            v116 = output_handler->identifier->name;
            if (!v116)
            {
              v116 = "invalid";
            }

            *buf = 136446722;
            v126 = "__nw_protocol_connect";
            v127 = 2082;
            v128 = v116;
            v129 = 2048;
            v130 = output_handler;
            v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
            goto LABEL_260;
          }

          v108 = __nw_create_backtrace_string();
          v88 = __nwlog_obj();
          v89 = type;
          v109 = os_log_type_enabled(v88, type);
          if (!v108)
          {
            if (!v109)
            {
              goto LABEL_261;
            }

            v119 = output_handler->identifier->name;
            if (!v119)
            {
              v119 = "invalid";
            }

            *buf = 136446722;
            v126 = "__nw_protocol_connect";
            v127 = 2082;
            v128 = v119;
            v129 = 2048;
            v130 = output_handler;
            v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
            goto LABEL_260;
          }

          if (v109)
          {
            v110 = output_handler->identifier->name;
            if (!v110)
            {
              v110 = "invalid";
            }

            *buf = 136446978;
            v126 = "__nw_protocol_connect";
            v127 = 2082;
            v128 = v110;
            v129 = 2048;
            v130 = output_handler;
            v131 = 2082;
            v132 = v108;
            _os_log_impl(&dword_181A37000, v88, v89, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v108);
        }

LABEL_261:
        if (v87)
        {
          free(v87);
        }

        result = 0;
        if (v41)
        {
          goto LABEL_83;
        }

        goto LABEL_72;
      }

      v122 = 0;
      v35 = v5->handle;
      v36 = v5;
      if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *v5[1].flow_id) != 0)
      {
        v58 = v36[1].callbacks;
        v37 = 0;
        if (v58)
        {
          v36[1].callbacks = (&v58->add_input_handler + 1);
        }
      }

      else
      {
        v37 = 1;
      }

      v59 = v2->handle;
      v60 = v2;
      if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v60 = *v2[1].flow_id) != 0)
      {
        v63 = v60[1].callbacks;
        if (v63)
        {
          v61 = 0;
          v60[1].callbacks = (&v63->add_input_handler + 1);
          v62 = v5->callbacks;
          if (!v62)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v61 = 0;
          v62 = v5->callbacks;
          if (!v62)
          {
            goto LABEL_194;
          }
        }
      }

      else
      {
        v61 = 1;
        v62 = v5->callbacks;
        if (!v62)
        {
          goto LABEL_194;
        }
      }

      notify = v62->notify;
      if (notify)
      {
        notify(v5, v2, 23, &v122, 1);
LABEL_109:
        if ((v61 & 1) == 0)
        {
          v65 = v2->handle;
          if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v66 = v2[1].callbacks;
            if (v66)
            {
              v67 = (v66 - 1);
              v2[1].callbacks = v67;
              if (!v67)
              {
                v68 = *v2[1].flow_id;
                if (v68)
                {
                  *v2[1].flow_id = 0;
                  v68[2](v68);
                  _Block_release(v68);
                }

                if (v2[1].flow_id[8])
                {
                  v69 = *v2[1].flow_id;
                  if (v69)
                  {
                    _Block_release(v69);
                  }
                }

                free(v2);
              }
            }
          }
        }

        if ((v37 & 1) == 0)
        {
          v70 = v5->handle;
          if (v70 == &nw_protocol_ref_counted_handle || v70 == &nw_protocol_ref_counted_additional_handle && (v5 = *v5[1].flow_id) != 0)
          {
            v71 = v5[1].callbacks;
            if (v71)
            {
              v72 = (v71 - 1);
              v5[1].callbacks = v72;
              if (!v72)
              {
                v73 = *v5[1].flow_id;
                if (v73)
                {
                  *v5[1].flow_id = 0;
                  v73[2](v73);
                  _Block_release(v73);
                }

                if (v5[1].flow_id[8])
                {
                  v74 = *v5[1].flow_id;
                  if (v74)
                  {
                    _Block_release(v74);
                  }
                }

                free(v5);
              }
            }
          }
        }

        return 1;
      }

LABEL_194:
      __nwlog_obj();
      v102 = v5->identifier->name;
      *buf = 136446722;
      v126 = "__nw_protocol_notify";
      if (!v102)
      {
        v102 = "invalid";
      }

      v127 = 2082;
      v128 = v102;
      v129 = 2048;
      v130 = v5;
      v103 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v123 = 0;
      if (!__nwlog_fault(v103, &type, &v123))
      {
        goto LABEL_270;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v104 = __nwlog_obj();
        v105 = type;
        if (!os_log_type_enabled(v104, type))
        {
          goto LABEL_270;
        }

        v106 = v5->identifier->name;
        if (!v106)
        {
          v106 = "invalid";
        }

        *buf = 136446722;
        v126 = "__nw_protocol_notify";
        v127 = 2082;
        v128 = v106;
        v129 = 2048;
        v130 = v5;
        v107 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
      }

      else if (v123 == 1)
      {
        v113 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        v105 = type;
        v114 = os_log_type_enabled(v104, type);
        if (v113)
        {
          if (v114)
          {
            v115 = v5->identifier->name;
            if (!v115)
            {
              v115 = "invalid";
            }

            *buf = 136446978;
            v126 = "__nw_protocol_notify";
            v127 = 2082;
            v128 = v115;
            v129 = 2048;
            v130 = v5;
            v131 = 2082;
            v132 = v113;
            _os_log_impl(&dword_181A37000, v104, v105, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v113);
          goto LABEL_270;
        }

        if (!v114)
        {
LABEL_270:
          if (v103)
          {
            free(v103);
          }

          goto LABEL_109;
        }

        v120 = v5->identifier->name;
        if (!v120)
        {
          v120 = "invalid";
        }

        *buf = 136446722;
        v126 = "__nw_protocol_notify";
        v127 = 2082;
        v128 = v120;
        v129 = 2048;
        v130 = v5;
        v107 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
      }

      else
      {
        v104 = __nwlog_obj();
        v105 = type;
        if (!os_log_type_enabled(v104, type))
        {
          goto LABEL_270;
        }

        v118 = v5->identifier->name;
        if (!v118)
        {
          v118 = "invalid";
        }

        *buf = 136446722;
        v126 = "__nw_protocol_notify";
        v127 = 2082;
        v128 = v118;
        v129 = 2048;
        v130 = v5;
        v107 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v104, v105, v107, buf, 0x20u);
      goto LABEL_270;
    }

    v122 = 1;
    v6 = v5->handle;
    v7 = v5;
    if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *v5[1].flow_id) != 0)
    {
      v9 = v7[1].callbacks;
      v8 = 0;
      if (v9)
      {
        v7[1].callbacks = (&v9->add_input_handler + 1);
      }
    }

    else
    {
      v8 = 1;
    }

    v10 = v2->handle;
    v11 = v2;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *v2[1].flow_id) != 0)
    {
      v14 = v11[1].callbacks;
      if (v14)
      {
        v12 = 0;
        v11[1].callbacks = (&v14->add_input_handler + 1);
        v13 = v5->callbacks;
        if (!v13)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v12 = 0;
        v13 = v5->callbacks;
        if (!v13)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = v5->callbacks;
      if (!v13)
      {
        goto LABEL_135;
      }
    }

    v15 = v13->notify;
    if (v15)
    {
      v15(v5, v2, 23, &v122, 1);
      goto LABEL_26;
    }

LABEL_135:
    __nwlog_obj();
    v75 = v5->identifier->name;
    *buf = 136446722;
    v126 = "__nw_protocol_notify";
    if (!v75)
    {
      v75 = "invalid";
    }

    v127 = 2082;
    v128 = v75;
    v129 = 2048;
    v130 = v5;
    v76 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v123 = 0;
    if (!__nwlog_fault(v76, &type, &v123))
    {
      goto LABEL_215;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_215;
      }

      v79 = v5->identifier->name;
      if (!v79)
      {
        v79 = "invalid";
      }

      *buf = 136446722;
      v126 = "__nw_protocol_notify";
      v127 = 2082;
      v128 = v79;
      v129 = 2048;
      v130 = v5;
      v80 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
    }

    else
    {
      if (v123 == 1)
      {
        v92 = __nw_create_backtrace_string();
        v93 = __nwlog_obj();
        v78 = type;
        log = v93;
        v94 = os_log_type_enabled(v93, type);
        if (v92)
        {
          if (v94)
          {
            v95 = v5->identifier->name;
            if (!v95)
            {
              v95 = "invalid";
            }

            *buf = 136446978;
            v126 = "__nw_protocol_notify";
            v127 = 2082;
            v128 = v95;
            v129 = 2048;
            v130 = v5;
            v131 = 2082;
            v132 = v92;
            _os_log_impl(&dword_181A37000, log, v78, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v92);
          goto LABEL_215;
        }

        if (!v94)
        {
LABEL_215:
          if (v76)
          {
            free(v76);
          }

LABEL_26:
          if ((v12 & 1) == 0)
          {
            v16 = v2->handle;
            v17 = v2;
            if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v2[1].flow_id) != 0)
            {
              v18 = v17[1].callbacks;
              if (v18)
              {
                v19 = (v18 - 1);
                v17[1].callbacks = v19;
                if (!v19)
                {
                  v20 = *v17[1].flow_id;
                  if (v20)
                  {
                    *v17[1].flow_id = 0;
                    v20[2](v20);
                    _Block_release(v20);
                  }

                  if (v17[1].flow_id[8])
                  {
                    v21 = *v17[1].flow_id;
                    if (v21)
                    {
                      _Block_release(v21);
                    }
                  }

                  free(v17);
                }
              }
            }
          }

          if ((v8 & 1) == 0)
          {
            v22 = v5->handle;
            v23 = v5;
            if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *v5[1].flow_id) != 0)
            {
              v24 = v23[1].callbacks;
              if (v24)
              {
                v25 = (v24 - 1);
                v23[1].callbacks = v25;
                if (!v25)
                {
                  v26 = *v23[1].flow_id;
                  if (v26)
                  {
                    *v23[1].flow_id = 0;
                    v26[2](v26);
                    _Block_release(v26);
                  }

                  if (v23[1].flow_id[8])
                  {
                    v27 = *v23[1].flow_id;
                    if (v27)
                    {
                      _Block_release(v27);
                    }
                  }

                  free(v23);
                }
              }
            }
          }

          v28 = *(v4 + 56);
          v29 = *(v4 + 64);
          *(v4 + 56) = 0;
          *(v4 + 64) = v29 | 1;
          v30 = v28[2](v28);
          _Block_release(v28);
          if ((v30 & 1) == 0)
          {
            return 1;
          }

          goto LABEL_51;
        }

        v117 = v5->identifier->name;
        if (!v117)
        {
          v117 = "invalid";
        }

        *buf = 136446722;
        v126 = "__nw_protocol_notify";
        v127 = 2082;
        v128 = v117;
        v129 = 2048;
        v130 = v5;
        v80 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
        v112 = log;
LABEL_214:
        _os_log_impl(&dword_181A37000, v112, v78, v80, buf, 0x20u);
        goto LABEL_215;
      }

      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_215;
      }

      v111 = v5->identifier->name;
      if (!v111)
      {
        v111 = "invalid";
      }

      *buf = 136446722;
      v126 = "__nw_protocol_notify";
      v127 = 2082;
      v128 = v111;
      v129 = 2048;
      v130 = v5;
      v80 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
    }

    v112 = v77;
    goto LABEL_214;
  }

  __nwlog_obj();
  *buf = 136446210;
  v126 = "nw_protocol_plugin_retry_connect";
  v81 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v123 = 0;
  if (!__nwlog_fault(v81, &type, &v123))
  {
    goto LABEL_249;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v123 != 1)
    {
      v82 = __nwlog_obj();
      v83 = type;
      if (os_log_type_enabled(v82, type))
      {
        *buf = 136446210;
        v126 = "nw_protocol_plugin_retry_connect";
        v84 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    backtrace_string = __nw_create_backtrace_string();
    v82 = __nwlog_obj();
    v83 = type;
    v101 = os_log_type_enabled(v82, type);
    if (!backtrace_string)
    {
      if (v101)
      {
        *buf = 136446210;
        v126 = "nw_protocol_plugin_retry_connect";
        v84 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    if (v101)
    {
      *buf = 136446466;
      v126 = "nw_protocol_plugin_retry_connect";
      v127 = 2082;
      v128 = backtrace_string;
      v98 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_192;
    }

LABEL_193:
    free(backtrace_string);
    goto LABEL_249;
  }

  v82 = __nwlog_obj();
  v83 = type;
  if (os_log_type_enabled(v82, type))
  {
    *buf = 136446210;
    v126 = "nw_protocol_plugin_retry_connect";
    v84 = "%{public}s called with null other_protocol";
    goto LABEL_248;
  }

LABEL_249:
  if (v81)
  {
    free(v81);
  }

  return 0;
}

uint64_t nw_protocol_http_security_create::$_3::__invoke(nw_protocol_http_security_create::$_3 *this, nw_protocol *a2, nw_protocol *a3)
{
  v134 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "operator()";
    v66 = _os_log_send_and_compose_impl();
    v129[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, v129, type))
    {
      goto LABEL_178;
    }

    if (v129[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = v129[0];
      if (!os_log_type_enabled(v67, v129[0]))
      {
        goto LABEL_178;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "operator()";
      v69 = "%{public}s called with null protocol";
LABEL_177:
      _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0xCu);
      goto LABEL_178;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v67 = __nwlog_obj();
      v68 = v129[0];
      if (os_log_type_enabled(v67, v129[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v69 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    backtrace_string = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = v129[0];
    v71 = os_log_type_enabled(v67, v129[0]);
    if (!backtrace_string)
    {
      if (v71)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v69 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    if (!v71)
    {
      goto LABEL_145;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "operator()";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v72 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_144:
    _os_log_impl(&dword_181A37000, v67, v68, v72, buf, 0x16u);
    goto LABEL_145;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "operator()";
    v66 = _os_log_send_and_compose_impl();
    v129[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, v129, type))
    {
      goto LABEL_178;
    }

    if (v129[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = v129[0];
      if (!os_log_type_enabled(v67, v129[0]))
      {
        goto LABEL_178;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "operator()";
      v69 = "%{public}s called with null http_security";
      goto LABEL_177;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v67 = __nwlog_obj();
      v68 = v129[0];
      if (os_log_type_enabled(v67, v129[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v69 = "%{public}s called with null http_security, backtrace limit exceeded";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    backtrace_string = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = v129[0];
    v73 = os_log_type_enabled(v67, v129[0]);
    if (!backtrace_string)
    {
      if (v73)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v69 = "%{public}s called with null http_security, no backtrace";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    if (!v73)
    {
      goto LABEL_145;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "operator()";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v72 = "%{public}s called with null http_security, dumping backtrace:%{public}s";
    goto LABEL_144;
  }

  if (a2)
  {
    v5 = *(v3 + 552);
    if ((v5 & 2) != 0)
    {
      return (v5 >> 1) & 1;
    }

    *(v3 + 552) = v5 | 2;
    parameters = nw_protocol_get_parameters(a2);
    v7 = nw_parameters_copy_url_endpoint(parameters);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = _nw_endpoint_copy_cfurl(v9);

      v11 = *(v3 + 464);
      if (v11)
      {
        v12 = *(v3 + 456);
        if (v12)
        {
          CFRelease(v12);
          v11 = *(v3 + 464);
        }
      }

      *(v3 + 456) = v10;
      *(v3 + 464) = v11 | 1;
      v13 = v9;
      hostname = _nw_endpoint_get_hostname(v13);

      v15 = v13;
      is_secure = _nw_endpoint_url_scheme_is_secure(v15);

      v17 = is_secure ^ 1;
    }

    else
    {
      hostname = 0;
      v17 = 1;
    }

    v18 = nw_parameters_copy_protocol_options_legacy(parameters, v3);
    if (v18)
    {
      v19 = v18;
      v20 = nw_http_security_options_copy_hsts_storage(v18);
      v21 = *(v3 + 480);
      if ((v21 & 1) != 0 && *(v3 + 472))
      {
        v22 = v20;
        os_release(*(v3 + 472));
        v20 = v22;
        v21 = *(v3 + 480);
      }

      *(v3 + 472) = v20;
      *(v3 + 480) = v21 | 1;
      v23 = nw_http_security_options_copy_connection_state_storage(v19);
      v24 = *(v3 + 496);
      object = v19;
      v111 = hostname;
      v109 = v17;
      if ((v24 & 1) != 0 && *(v3 + 488))
      {
        v25 = v23;
        os_release(*(v3 + 488));
        v23 = v25;
        v24 = *(v3 + 496);
      }

      v107 = a2;
      v108 = parameters;
      *(v3 + 488) = v23;
      *(v3 + 496) = v24 | 1;
      v26 = nw_parameters_copy_default_protocol_stack(parameters);
      application_protocol_count = nw_protocol_stack_get_application_protocol_count(v26);
      if (!application_protocol_count)
      {
        v41 = 0;
        v42 = hostname;
        goto LABEL_50;
      }

      v105 = v8;
      v28 = v5;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = application_protocol_count - 1;
      while (1)
      {
        v35 = nw_protocol_stack_copy_application_protocol_at_index(v26, v29);
        protocol_handle = nw_protocol_options_get_protocol_handle(v35);
        if ((v30 & 1) == 0)
        {
LABEL_35:
          v38 = 0;
          v30 |= protocol_handle == v3;
          goto LABEL_36;
        }

        if (nw_protocol_options_is_tls(v35))
        {
          break;
        }

        if (nw_protocol_options_is_quic(v35))
        {
          v37 = nw_quic_copy_sec_protocol_options(v35);
          if (!v31)
          {
            goto LABEL_28;
          }

LABEL_27:
          os_release(v31);
LABEL_28:
          v30 = 0;
          v38 = 1;
          v31 = v37;
          goto LABEL_36;
        }

        if (!nw_protocol_options_is_tcp(v35) && (nw_protocol_options_is_masque(v35) & 1) == 0)
        {
          goto LABEL_35;
        }

        v30 = 0;
        v38 = 1;
LABEL_36:
        if (v35)
        {
          os_release(v35);
        }

        if (v32 == v29++)
        {
          v34 = 1;
        }

        else
        {
          v34 = v38;
        }

        if (v34 == 1)
        {
          v5 = v28;
          if (v30)
          {
            v39 = nw_protocol_stack_copy_transport_protocol(v26);
            if (nw_protocol_options_is_tls(v39))
            {
              v40 = v39;
              goto LABEL_45;
            }

            if (nw_protocol_options_is_quic(v39))
            {
              v40 = nw_quic_copy_sec_protocol_options(v39);
LABEL_45:
              v41 = v40;
              v42 = v111;
              if (v31)
              {
                os_release(v31);
              }

              if (v39)
              {
LABEL_48:
                os_release(v39);
              }
            }

            else
            {
              v41 = v31;
              v42 = v111;
              if (v39)
              {
                goto LABEL_48;
              }
            }

            v8 = v105;
          }

          else
          {
            v41 = v31;
            v8 = v105;
            v42 = v111;
          }

LABEL_50:
          v43 = v109;
          if (!v42)
          {
            v43 = 0;
          }

          if (v43 != 1)
          {
            goto LABEL_220;
          }

          v44 = v8;
          v45 = sec_protocol_configuration_copy_singleton();
          host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v42, 0);
          if (nw_endpoint_get_type(host_with_numeric_port) == nw_endpoint_type_address)
          {
            memset(buf, 0, sizeof(buf));
            LODWORD(v123) = 0;
            if (nw_endpoint_fillout_v4v6_address(host_with_numeric_port, buf))
            {
              if (BYTE1(buf[0]) == 2 && LOBYTE(buf[0]) >= 0x10u)
              {
                v47 = bswap32(HIDWORD(buf[0]));
                if ((v47 & 0xFF000000) == 0x7F000000 || (v47 & 0xFFFF0000) == 0xC0A80000 || (v47 & 0xFFF00000) == 0xAC100000 || (v47 & 0xFFFF0000) == 0xA9FE0000 || (v47 & 0xFF000000) == 0xA000000)
                {
                  goto LABEL_93;
                }

LABEL_74:
                input_handler = nw_protocol_get_input_handler(v3);
                path = nw_protocol_get_path(input_handler);
                if ((nw_path_is_direct(path) & 1) == 0)
                {
                  nw_path_is_local(path);
                }
              }

              else if (BYTE1(buf[0]) != 30 || LOBYTE(buf[0]) < 0x1Cu || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*&buf[1], xmmword_182B08D30)))) & 1) != 0 && LOBYTE(buf[1]) - 252 >= 2 && (LOBYTE(buf[1]) != 254 || (buf[1] & 0xC000) != 0x8000))
              {
                goto LABEL_74;
              }

LABEL_93:
              if ((sec_protocol_configuration_tls_required_for_address() & 1) == 0)
              {
LABEL_94:
                if (!*(v3 + 472) || (nw_http_security_options_get_skip_hsts_lookup(object) & 1) != 0)
                {
                  goto LABEL_216;
                }

                v110 = v45;
                v106 = v5;
                v57 = *(v3 + 472);
                if (v57)
                {
                  v58 = v57;
                  v59 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v42, 0x600u);
                  LOBYTE(buf[0]) = 0;
                  v60 = [v58[1] shouldPromoteHostToHTTPS:v59 isPreload:buf];
                  v112 = LOBYTE(buf[0]);

                  if (v60)
                  {
                    if ((*(v3 + 198) & 1) == 0)
                    {
                      v61 = __nwlog_obj();
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http_security_connect";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v3 + 114;
                        HIWORD(buf[2]) = 2080;
                        v123 = " ";
                        LOWORD(v124) = 1024;
                        *(&v124 + 2) = v112;
                        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sperforming HSTS upgrade, preload=%{BOOL}d", buf, 0x26u);
                      }
                    }

                    secure_url = nw_http_security_create_secure_url(v3, *(v3 + 456));
                    *v129 = 0;
                    *&v129[8] = v129;
                    *&v129[16] = 0x3802000000;
                    v130 = __Block_byref_object_copy__36;
                    v131 = __Block_byref_object_dispose__37;
                    v132 = nw_endpoint_create_with_cfurl(secure_url);
                    v133 |= 1u;
                    *type = 0;
                    v115 = type;
                    v116 = 0x3802000000;
                    v117 = __Block_byref_object_copy__38;
                    v118 = __Block_byref_object_dispose__39;
                    aBlock = nw_http_security_options_copy_handler(object);
                    v120 |= 1u;
                    v63 = nw_http_security_options_copy_handler_queue(object);
                    v64 = *(v115 + 5);
                    nw_protocol_plugin_retry_begin_async(v3 + 344);
                    if (v64 && v63)
                    {
                      buf[0] = MEMORY[0x1E69E9820];
                      buf[1] = 0x40000000;
                      buf[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke;
                      v123 = &unk_1E6A30278;
                      v124 = type;
                      v125 = v129;
                      v128 = v112;
                      v126 = v108;
                      v127 = v3;
                      dispatch_async(v63, buf);
                      goto LABEL_107;
                    }

                    v65 = *(v3 + 520);
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_47;
                    v123 = &unk_1E6A302A0;
                    v124 = v129;
                    v125 = v3;
                    nw_queue_context_async(v65, buf);
                    if (v63)
                    {
LABEL_107:
                      dispatch_release(v63);
                    }

                    _Block_object_dispose(type, 8);
                    v5 = v106;
                    if ((v120 & 1) != 0 && aBlock)
                    {
                      _Block_release(aBlock);
                    }

                    _Block_object_dispose(v129, 8);
                    if ((v133 & 1) != 0 && v132)
                    {
                      os_release(v132);
                    }

                    if (secure_url)
                    {
                      CFRelease(secure_url);
                    }

                    if (host_with_numeric_port)
                    {
                      os_release(host_with_numeric_port);
                    }

                    v8 = v44;
                    v56 = v110;
                    if (!v110)
                    {
LABEL_221:
                      if (v26)
                      {
                        os_release(v26);
                      }

                      if (v41)
                      {
                        os_release(v41);
                      }

                      os_release(object);
                      goto LABEL_226;
                    }

LABEL_87:
                    os_release(v56);
                    goto LABEL_221;
                  }

LABEL_216:
                  if (host_with_numeric_port)
                  {
                    os_release(host_with_numeric_port);
                  }

                  v8 = v44;
                  if (v45)
                  {
                    os_release(v45);
                  }

LABEL_220:
                  buf[0] = MEMORY[0x1E69E9820];
                  buf[1] = 0x40000000;
                  buf[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_2_49;
                  v123 = &__block_descriptor_tmp_50;
                  v124 = v107;
                  nw_http_security_perform_url_filter_check(COERCE_DOUBLE(0x40000000), v3, v8, v108, buf);
                  goto LABEL_221;
                }

                v93 = __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_hsts_storage_should_upgrade";
                v94 = _os_log_send_and_compose_impl();

                v129[0] = 16;
                type[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v94, v129, type))
                {
                  if (v129[0] == 17)
                  {
                    v95 = __nwlog_obj();
                    v96 = v129[0];
                    if (os_log_type_enabled(v95, v129[0]))
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_hsts_storage_should_upgrade";
                      _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null storage", buf, 0xCu);
                    }

                    goto LABEL_192;
                  }

                  if (type[0] == OS_LOG_TYPE_INFO)
                  {
                    v99 = __nw_create_backtrace_string();
                    v100 = __nwlog_obj();
                    v101 = v129[0];
                    v102 = os_log_type_enabled(v100, v129[0]);
                    if (v99)
                    {
                      if (v102)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_hsts_storage_should_upgrade";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v99;
                        _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null storage, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v99);
                    }

                    else
                    {
                      if (v102)
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_hsts_storage_should_upgrade";
                        _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null storage, no backtrace", buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v95 = __nwlog_obj();
                    v103 = v129[0];
                    if (os_log_type_enabled(v95, v129[0]))
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_hsts_storage_should_upgrade";
                      _os_log_impl(&dword_181A37000, v95, v103, "%{public}s called with null storage, backtrace limit exceeded", buf, 0xCu);
                    }

LABEL_192:
                  }
                }

                if (v94)
                {
                  free(v94);
                }

                v5 = v106;
                goto LABEL_216;
              }

LABEL_79:
              v51 = v45;
              if ((*(v3 + 198) & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v52 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http_security_connect";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v3 + 114;
                  HIWORD(buf[2]) = 2080;
                  v123 = " ";
                  _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sATS requires TLS", buf, 0x20u);
                }
              }

              nw_protocol_error(*(v3 + 48), v3);
              client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(v108, v3);
              if (client_metadata_in_parameters)
              {
                v54 = client_metadata_in_parameters;
                nw_http_client_metadata_set_client_error(client_metadata_in_parameters, 4);
                nw_protocol_disconnected(*(v3 + 48), v3);
                os_release(v54);
                v55 = v51;
                if (host_with_numeric_port)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                nw_protocol_disconnected(*(v3 + 48), v3);
                v55 = v51;
                if (host_with_numeric_port)
                {
LABEL_84:
                  os_release(host_with_numeric_port);
                }
              }

              v8 = v44;
              if (!v55)
              {
                goto LABEL_221;
              }

              v56 = v55;
              goto LABEL_87;
            }

            __nwlog_obj();
            *v129 = 136446210;
            *&v129[4] = "nw_http_security_is_local_ip_address";
            type[0] = OS_LOG_TYPE_ERROR;
            v121 = 0;
            v83 = _os_log_send_and_compose_impl();
            if (!__nwlog_fault(v83, type, &v121))
            {
              goto LABEL_197;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v84 = __nwlog_obj();
              v85 = type[0];
              if (os_log_type_enabled(v84, type[0]))
              {
                *v129 = 136446210;
                *&v129[4] = "nw_http_security_is_local_ip_address";
                v86 = "%{public}s called with null success";
                goto LABEL_195;
              }

              goto LABEL_197;
            }

            if (v121 == 1)
            {
              v90 = __nw_create_backtrace_string();
              v91 = __nwlog_obj();
              v104 = type[0];
              v92 = os_log_type_enabled(v91, type[0]);
              if (v90)
              {
                if (v92)
                {
                  *v129 = 136446466;
                  *&v129[4] = "nw_http_security_is_local_ip_address";
                  *&v129[12] = 2082;
                  *&v129[14] = v90;
                  _os_log_impl(&dword_181A37000, v91, v104, "%{public}s called with null success, dumping backtrace:%{public}s", v129, 0x16u);
                }

                free(v90);
                goto LABEL_197;
              }

              if (!v92)
              {
LABEL_197:
                if (v83)
                {
                  free(v83);
                }

                v42 = v111;
                goto LABEL_93;
              }

              *v129 = 136446210;
              *&v129[4] = "nw_http_security_is_local_ip_address";
              v86 = "%{public}s called with null success, no backtrace";
              v97 = v91;
              v98 = v104;
            }

            else
            {
              v84 = __nwlog_obj();
              v85 = type[0];
              if (!os_log_type_enabled(v84, type[0]))
              {
                goto LABEL_197;
              }

              *v129 = 136446210;
              *&v129[4] = "nw_http_security_is_local_ip_address";
              v86 = "%{public}s called with null success, backtrace limit exceeded";
LABEL_195:
              v97 = v84;
              v98 = v85;
            }

            _os_log_impl(&dword_181A37000, v97, v98, v86, v129, 0xCu);
            goto LABEL_197;
          }

          v48 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v42, 0x8000100u);
          if (CFStringGetLength(v48))
          {
            if (CFStringHasSuffix(v48, @".local") || CFStringHasSuffix(v48, @".local."))
            {
              if (!v48)
              {
                goto LABEL_78;
              }
            }

            else
            {
              CFStringFind(v48, @".", 4uLL);
              if (!v48)
              {
LABEL_78:
                if (!sec_protocol_configuration_tls_required_for_host())
                {
                  goto LABEL_94;
                }

                goto LABEL_79;
              }
            }
          }

          else if (!v48)
          {
            goto LABEL_78;
          }

          CFRelease(v48);
          goto LABEL_78;
        }
      }

      v37 = v35;
      if (v31)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http_security_connect";
    v75 = _os_log_send_and_compose_impl();
    v129[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v75, v129, type))
    {
      if (v129[0] == 17)
      {
        v76 = __nwlog_obj();
        v77 = v129[0];
        if (os_log_type_enabled(v76, v129[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http_security_connect";
          v78 = "%{public}s called with null protocol_options";
LABEL_167:
          v87 = v76;
          v88 = v77;
LABEL_168:
          _os_log_impl(&dword_181A37000, v87, v88, v78, buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        v79 = __nw_create_backtrace_string();
        v80 = __nwlog_obj();
        v81 = v129[0];
        v82 = os_log_type_enabled(v80, v129[0]);
        if (!v79)
        {
          if (!v82)
          {
            goto LABEL_169;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http_security_connect";
          v78 = "%{public}s called with null protocol_options, no backtrace";
          v87 = v80;
          v88 = v81;
          goto LABEL_168;
        }

        if (v82)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http_security_connect";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v79;
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null protocol_options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
      }

      else
      {
        v76 = __nwlog_obj();
        v77 = v129[0];
        if (os_log_type_enabled(v76, v129[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http_security_connect";
          v78 = "%{public}s called with null protocol_options, backtrace limit exceeded";
          goto LABEL_167;
        }
      }
    }

LABEL_169:
    if (v75)
    {
      free(v75);
    }

LABEL_226:
    if (v8)
    {
      os_release(v8);
    }

    return (v5 >> 1) & 1;
  }

  __nwlog_obj();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "operator()";
  v66 = _os_log_send_and_compose_impl();
  v129[0] = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v66, v129, type))
  {
    goto LABEL_178;
  }

  if (v129[0] != 17)
  {
    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v67 = __nwlog_obj();
      v68 = v129[0];
      if (os_log_type_enabled(v67, v129[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v69 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    backtrace_string = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = v129[0];
    v74 = os_log_type_enabled(v67, v129[0]);
    if (!backtrace_string)
    {
      if (v74)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v69 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    if (v74)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "operator()";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      v72 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_144;
    }

LABEL_145:
    free(backtrace_string);
    goto LABEL_178;
  }

  v67 = __nwlog_obj();
  v68 = v129[0];
  if (os_log_type_enabled(v67, v129[0]))
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "operator()";
    v69 = "%{public}s called with null other_protocol";
    goto LABEL_177;
  }

LABEL_178:
  if (v66)
  {
    free(v66);
  }

  return 0;
}

id nw_http_security_options_copy_hsts_storage(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_security_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_security_definition_http_security_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__75915;
    v20 = __Block_byref_object_dispose__75916;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_security_options_copy_hsts_storage_block_invoke;
    v15[3] = &unk_1E6A3A858;
    v15[4] = buf;
    nw_protocol_options_access_handle(v3, v15);
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_security_options_copy_hsts_storage";
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
        *&buf[4] = "nw_http_security_options_copy_hsts_storage";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol options are not http security", buf, 0xCu);
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
          *&buf[4] = "nw_http_security_options_copy_hsts_storage";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_hsts_storage";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_hsts_storage";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s protocol options are not http security, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void sub_181E9D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_http_security_options_copy_connection_state_storage(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_security_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_security_definition_http_security_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__75915;
    v20 = __Block_byref_object_dispose__75916;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_security_options_copy_connection_state_storage_block_invoke;
    v15[3] = &unk_1E6A3A858;
    v15[4] = buf;
    nw_protocol_options_access_handle(v3, v15);
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
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
        *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol options are not http security", buf, 0xCu);
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
          *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s protocol options are not http security, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void sub_181E9D494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sec_protocol_options_t nw_quic_copy_sec_protocol_options(nw_protocol_options_t options)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = options;
  if (nw_protocol_options_is_quic(v1))
  {
    if (nw_protocol_options_is_quic_stream(v1))
    {
      v2 = nw_quic_stream_copy_shared_connection_options(v1);

      v1 = v2;
    }

    v3 = _nw_quic_connection_copy_sec_protocol_options(v1);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_copy_sec_protocol_options";
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
        v15 = "nw_quic_copy_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_19:
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
            v15 = "nw_quic_copy_sec_protocol_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v15 = "nw_quic_copy_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_copy_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void nw_http_security_perform_url_filter_check(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_40;
      }

      buf[0].i32[0] = 136446210;
      *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
      v20 = "%{public}s called with null endpoint";
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v22 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v22)
        {
          buf[0].i32[0] = 136446466;
          *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
          buf[0].i16[6] = 2082;
          *(&buf[0].i64[1] + 6) = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v17)
        {
          return;
        }

LABEL_41:
        free(v17);
        return;
      }

      if (!v22)
      {
        goto LABEL_40;
      }

      buf[0].i32[0] = 136446210;
      *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
      v20 = "%{public}s called with null endpoint, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_40;
      }

      buf[0].i32[0] = 136446210;
      *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
      v20 = "%{public}s called with null endpoint, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_40;
  }

  if (a5)
  {
    v9.n128_f64[0] = gotLoadHelper_x8__ne_url_filter_check(a1);
    if (*(v10 + 2216))
    {
      parameters = v8;
      v12 = v7;
      v13 = v6;
      if (!v8)
      {
        parameters = nw_protocol_get_parameters(v6);
      }

      v14 = nw_context_copy_cached_targeted_dispatch_queue(v13[65]);
      nw_parameters_get_effective_bundle_id(parameters);
      memset(buf, 0, sizeof(buf));
      nw_parameters_get_effective_audit_token(parameters, buf);
      nw_protocol_plugin_retry_begin_async((v13 + 43));
      v15 = v12;
      _nw_endpoint_get_url(v15);

      nw_parameters_get_sensitive_redacted(parameters);
      ne_url_filter_check_delayInitStub(COERCE_DOUBLE(0x40000000));
      if (v14)
      {
        dispatch_release(v14);
      }
    }

    else
    {
      v16 = *(a5 + 16);

      v16(a5, v9);
    }

    return;
  }

  __nwlog_obj();
  buf[0].i32[0] = 136446210;
  *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
  v17 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v17, &type, &v25))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_40;
    }

    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v20 = "%{public}s called with null allowed_handler";
    goto LABEL_39;
  }

  if (v25 != 1)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_40;
    }

    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v20 = "%{public}s called with null allowed_handler, backtrace limit exceeded";
    goto LABEL_39;
  }

  v23 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v19 = type;
  v24 = os_log_type_enabled(v18, type);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_40;
    }

    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v20 = "%{public}s called with null allowed_handler, no backtrace";
    goto LABEL_39;
  }

  if (v24)
  {
    buf[0].i32[0] = 136446466;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    buf[0].i16[6] = 2082;
    *(&buf[0].i64[1] + 6) = v23;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null allowed_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v17)
  {
    goto LABEL_41;
  }
}

id nw_context_copy_cached_targeted_dispatch_queue(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[8];
    if (!v3)
    {
      v4 = dispatch_queue_create("com.apple.network.context_cached_queue", 0);
      v5 = v2[8];
      v2[8] = v4;

      nw_queue_context_target_dispatch_queue(v2, v2[8]);
      v3 = v2[8];
    }

    v6 = v3;
    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_context_copy_cached_targeted_dispatch_queue";
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
        v19 = "nw_context_copy_cached_targeted_dispatch_queue";
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
          v19 = "nw_context_copy_cached_targeted_dispatch_queue";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_context_copy_cached_targeted_dispatch_queue";
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
        v19 = "nw_context_copy_cached_targeted_dispatch_queue";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_5:

  return v6;
}

void nw_protocol_plugin_retry_begin_async(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 104) + 1;
    *(a1 + 104) = v2;
    if (v2 == v2 << 31 >> 31)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 104);
    *buf = 136446978;
    v23 = "nw_protocol_plugin_retry_begin_async";
    v24 = 2082;
    v25 = "retry->async_count";
    v26 = 2048;
    v27 = 1;
    v28 = 2048;
    v29 = v3;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v4, &type, &v20))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v7 = *(a1 + 104);
        *buf = 136446978;
        v23 = "nw_protocol_plugin_retry_begin_async";
        v24 = 2082;
        v25 = "retry->async_count";
        v26 = 2048;
        v27 = 1;
        v28 = 2048;
        v29 = v7;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_16:
        _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      v10 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v10)
        {
          v11 = *(a1 + 104);
          *buf = 136447234;
          v23 = "nw_protocol_plugin_retry_begin_async";
          v24 = 2082;
          v25 = "retry->async_count";
          v26 = 2048;
          v27 = 1;
          v28 = 2048;
          v29 = v11;
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(backtrace_string);
        goto LABEL_17;
      }

      if (v10)
      {
        v13 = *(a1 + 104);
        *buf = 136446978;
        v23 = "nw_protocol_plugin_retry_begin_async";
        v24 = 2082;
        v25 = "retry->async_count";
        v26 = 2048;
        v27 = 1;
        v28 = 2048;
        v29 = v13;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_16;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v12 = *(a1 + 104);
        *buf = 136446978;
        v23 = "nw_protocol_plugin_retry_begin_async";
        v24 = 2082;
        v25 = "retry->async_count";
        v26 = 2048;
        v27 = 1;
        v28 = 2048;
        v29 = v12;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 104) = -1;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_plugin_retry_begin_async";
  v14 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_plugin_retry_begin_async";
      v17 = "%{public}s called with null retry";
      goto LABEL_34;
    }

    if (v20 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_plugin_retry_begin_async";
      v17 = "%{public}s called with null retry, backtrace limit exceeded";
      goto LABEL_34;
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
        v23 = "nw_protocol_plugin_retry_begin_async";
        v24 = 2082;
        v25 = v18;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null retry, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v18);
      goto LABEL_35;
    }

    if (v19)
    {
      *buf = 136446210;
      v23 = "nw_protocol_plugin_retry_begin_async";
      v17 = "%{public}s called with null retry, no backtrace";
LABEL_34:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    }
  }

LABEL_35:
  if (v14)
  {
    free(v14);
  }
}

BOOL nw_protocol_plugin_retry_end_async(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 104);
    *(a1 + 104) = v2 - 1;
    if (v2)
    {
      return (*(a1 + 108) & 0x40) == 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 104);
    *buf = 136446978;
    v24 = "nw_protocol_plugin_retry_end_async";
    v25 = 2082;
    v26 = "retry->async_count";
    v27 = 2048;
    v28 = 1;
    v29 = 2048;
    v30 = v3;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v4, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v7 = *(a1 + 104);
          *buf = 136446978;
          v24 = "nw_protocol_plugin_retry_end_async";
          v25 = 2082;
          v26 = "retry->async_count";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v7;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_16:
          _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        v10 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v10)
          {
            v11 = *(a1 + 104);
            *buf = 136447234;
            v24 = "nw_protocol_plugin_retry_end_async";
            v25 = 2082;
            v26 = "retry->async_count";
            v27 = 2048;
            v28 = 1;
            v29 = 2048;
            v30 = v11;
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_17;
        }

        if (v10)
        {
          v13 = *(a1 + 104);
          *buf = 136446978;
          v24 = "nw_protocol_plugin_retry_end_async";
          v25 = 2082;
          v26 = "retry->async_count";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v13;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_16;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(a1 + 104);
          *buf = 136446978;
          v24 = "nw_protocol_plugin_retry_end_async";
          v25 = 2082;
          v26 = "retry->async_count";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v12;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_16;
        }
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 104) = 0;
    return (*(a1 + 108) & 0x40) == 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_plugin_retry_end_async";
  v15 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_plugin_retry_end_async";
        v18 = "%{public}s called with null retry";
LABEL_35:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v20 = os_log_type_enabled(v16, type);
      if (v19)
      {
        if (v20)
        {
          *buf = 136446466;
          v24 = "nw_protocol_plugin_retry_end_async";
          v25 = 2082;
          v26 = v19;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null retry, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_protocol_plugin_retry_end_async";
        v18 = "%{public}s called with null retry, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_plugin_retry_end_async";
        v18 = "%{public}s called with null retry, backtrace limit exceeded";
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

uint64_t nw_protocol_common_connect(void *a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_common_connect";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v7, &type, &v52))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v52 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v47 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v47)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (v47)
    {
      *buf = 136446466;
      v55 = "nw_protocol_common_connect";
      v56 = 2082;
      v57 = backtrace_string;
      v48 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_94:
      _os_log_impl(&dword_181A37000, v8, v9, v48, buf, 0x16u);
    }

LABEL_95:
    free(backtrace_string);
    goto LABEL_57;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_common_connect";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v7, &type, &v52))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_55;
    }

    if (v52 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v49 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v49)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_55;
    }

    if (v49)
    {
      *buf = 136446466;
      v55 = "nw_protocol_common_connect";
      v56 = 2082;
      v57 = backtrace_string;
      v48 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v2 = a1;
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 40);
    v5 = a1[4];
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
    {
      v15 = *(v5 + 88);
      v6 = 0;
      if (v15)
      {
        *(v5 + 88) = v15 + 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v16 = a1[5];
    v17 = a1;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = a1[8]) != 0)
    {
      v20 = v17[11];
      if (v20)
      {
        v18 = 0;
        v17[11] = v20 + 1;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v3 + 24);
      if (!v19)
      {
        goto LABEL_63;
      }
    }

    v21 = *(v19 + 24);
    if (v21)
    {
      result = v21(v3, a1);
      if (v18)
      {
LABEL_41:
        if ((v6 & 1) == 0)
        {
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
                return v32;
              }
            }
          }
        }

        return result;
      }

LABEL_30:
      v23 = v2[5];
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
      {
        v24 = v2[11];
        if (v24)
        {
          v25 = v24 - 1;
          v2[11] = v25;
          if (!v25)
          {
            v26 = result;
            v27 = v2[8];
            if (v27)
            {
              v2[8] = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (v2[9])
            {
              v28 = v2[8];
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v2);
            result = v26;
          }
        }
      }

      goto LABEL_41;
    }

LABEL_63:
    __nwlog_obj();
    v37 = *(v3 + 16);
    *buf = 136446722;
    v55 = "__nw_protocol_connect";
    if (!v37)
    {
      v37 = "invalid";
    }

    v56 = 2082;
    v57 = v37;
    v58 = 2048;
    v59 = v3;
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v38, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_109;
        }

        v41 = *(v3 + 16);
        if (!v41)
        {
          v41 = "invalid";
        }

        *buf = 136446722;
        v55 = "__nw_protocol_connect";
        v56 = 2082;
        v57 = v41;
        v58 = 2048;
        v59 = v3;
        v42 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
LABEL_108:
        _os_log_impl(&dword_181A37000, v39, v40, v42, buf, 0x20u);
        goto LABEL_109;
      }

      if (v52 != 1)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_109;
        }

        v50 = *(v3 + 16);
        if (!v50)
        {
          v50 = "invalid";
        }

        *buf = 136446722;
        v55 = "__nw_protocol_connect";
        v56 = 2082;
        v57 = v50;
        v58 = 2048;
        v59 = v3;
        v42 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
        goto LABEL_108;
      }

      v43 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v44 = os_log_type_enabled(v39, type);
      if (!v43)
      {
        if (!v44)
        {
          goto LABEL_109;
        }

        v51 = *(v3 + 16);
        if (!v51)
        {
          v51 = "invalid";
        }

        *buf = 136446722;
        v55 = "__nw_protocol_connect";
        v56 = 2082;
        v57 = v51;
        v58 = 2048;
        v59 = v3;
        v42 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
        goto LABEL_108;
      }

      if (v44)
      {
        v45 = *(v3 + 16);
        if (!v45)
        {
          v45 = "invalid";
        }

        *buf = 136446978;
        v55 = "__nw_protocol_connect";
        v56 = 2082;
        v57 = v45;
        v58 = 2048;
        v59 = v3;
        v60 = 2082;
        v61 = v43;
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v43);
    }

LABEL_109:
    if (v38)
    {
      free(v38);
    }

    result = 0;
    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v55 = "nw_protocol_common_connect";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v7, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v55 = "nw_protocol_common_connect";
        v10 = "%{public}s connect requires an output handler";
LABEL_55:
        v35 = v8;
        v36 = v9;
LABEL_56:
        _os_log_impl(&dword_181A37000, v35, v36, v10, buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v11 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(gLogObj, type);
      if (v11)
      {
        if (v14)
        {
          *buf = 136446466;
          v55 = "nw_protocol_common_connect";
          v56 = 2082;
          v57 = v11;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s connect requires an output handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v11);
        goto LABEL_57;
      }

      if (v14)
      {
        *buf = 136446210;
        v55 = "nw_protocol_common_connect";
        v10 = "%{public}s connect requires an output handler, no backtrace";
        v35 = v12;
        v36 = v13;
        goto LABEL_56;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v55 = "nw_protocol_common_connect";
        v10 = "%{public}s connect requires an output handler, backtrace limit exceeded";
        goto LABEL_55;
      }
    }
  }

LABEL_57:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_protocol_http_joining_connect(nw_protocol *a1, nw_protocol *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_connect";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v13, &type, &v46))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null protocol";
      goto LABEL_103;
    }

    if (v46 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v40 = os_log_type_enabled(v37, type);
    if (!backtrace_string)
    {
      if (!v40)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_103;
    }

    if (!v40)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v41 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_connect";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v13, &type, &v46))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null http_joining";
      goto LABEL_103;
    }

    if (v46 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v42 = os_log_type_enabled(v37, type);
    if (!backtrace_string)
    {
      if (!v42)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_103;
    }

    if (!v42)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v41 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_89:
    _os_log_impl(&dword_181A37000, v37, v38, v41, buf, 0x16u);
    goto LABEL_90;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_connect";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v13, &type, &v46))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null other_protocol";
      goto LABEL_103;
    }

    if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v43 = os_log_type_enabled(v37, type);
      if (backtrace_string)
      {
        if (v43)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_joining_connect";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v41 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
          goto LABEL_89;
        }

LABEL_90:
        free(backtrace_string);
        goto LABEL_61;
      }

      if (!v43)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_103:
    v33 = v37;
    v34 = v38;
    v35 = 12;
    goto LABEL_60;
  }

  if (!*(handle + 12))
  {
    v4 = mach_continuous_approximate_time();
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    *(handle + 12) = v5;
  }

  v6 = *(handle + 6);
  if (v6 != a2)
  {
    v7 = *(handle + 23);
    v8 = *(handle + 24);
    if (v7 != v8)
    {
      while (*v7 != a2)
      {
        v7 += 16;
        if (v7 == v8)
        {
          goto LABEL_19;
        }
      }
    }

    if (v7 != v8)
    {
      v9 = 1;
      *(v7 + 8) = 1;
      return v9;
    }

LABEL_19:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_connect";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v13, &type, &v46))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v16 = "%{public}s Protocol %p isn't an input handler of http joining";
LABEL_59:
        v33 = v14;
        v34 = v15;
        v35 = 22;
LABEL_60:
        _os_log_impl(&dword_181A37000, v33, v34, v16, buf, v35);
      }
    }

    else if (v46 == 1)
    {
      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      v18 = os_log_type_enabled(gLogObj, type);
      if (v17)
      {
        if (v18)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http_joining_connect";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2082;
          v49 = v17;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Protocol %p isn't an input handler of http joining, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v17);
        goto LABEL_61;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v16 = "%{public}s Protocol %p isn't an input handler of http joining, no backtrace";
        goto LABEL_59;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v16 = "%{public}s Protocol %p isn't an input handler of http joining, backtrace limit exceeded";
        goto LABEL_59;
      }
    }

LABEL_61:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  parameters = nw_protocol_get_parameters(v6);
  if (parameters)
  {
    v11 = os_retain(parameters);
    v12 = handle[112];
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 0;
    v12 = handle[112];
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v19 = *(handle + 13);
  if (v19)
  {
    os_release(v19);
    v12 = handle[112];
  }

LABEL_31:
  *(handle + 13) = v11;
  handle[112] = v12 | 1;
  remote_endpoint = nw_protocol_get_remote_endpoint(*(handle + 6));
  if (remote_endpoint)
  {
    v21 = os_retain(remote_endpoint);
    v22 = handle[128];
    if ((v22 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v21 = 0;
    v22 = handle[128];
    if ((v22 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v23 = *(handle + 15);
  if (v23)
  {
    os_release(v23);
    v22 = handle[128];
  }

LABEL_37:
  *(handle + 15) = v21;
  handle[128] = v22 | 1;
  http_messaging_options = nw_parameters_find_http_messaging_options(*(handle + 13), handle);
  v25 = http_messaging_options;
  if (http_messaging_options)
  {
    v26 = *(handle + 22);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v45[2] = ___ZL32nw_protocol_http_joining_connectP11nw_protocolS0__block_invoke;
    v45[3] = &unk_1E6A2E608;
    v45[4] = v26;
    v27 = http_messaging_options;
    v28 = v45;
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    if (nw_protocol_options_matches_definition(v27, nw_protocol_copy_http_messaging_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_messaging_options_set_override_protocol_handler_block_invoke;
      v49 = &unk_1E6A3A978;
      v50 = v28;
      nw_protocol_options_access_handle(v27, buf);
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = ___ZL32nw_protocol_http_joining_connectP11nw_protocolS0__block_invoke_2;
    v44[3] = &unk_1E6A2E630;
    v44[4] = v26;
    v44[5] = handle;
    v29 = v27;
    v30 = v44;
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    if (nw_protocol_options_matches_definition(v29, nw_protocol_copy_http_messaging_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_messaging_options_set_can_accept_handler_block_invoke;
      v49 = &unk_1E6A3A978;
      v50 = v30;
      nw_protocol_options_access_handle(v29, buf);
    }
  }

  v31 = *(handle + 4);
  if (v31)
  {
    v9 = nw_protocol_connect(v31, handle);
    if (!v25)
    {
      return v9;
    }

    goto LABEL_54;
  }

  if ((handle[294] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_joining_connect";
      *&buf[12] = 2082;
      *&buf[14] = handle + 208;
      *&buf[22] = 2080;
      v49 = " ";
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sconnect bottom protocol, resuming child handler", buf, 0x20u);
    }
  }

  buf[0] = 0;
  v9 = 1;
  nw_protocol_notify(*(handle + 6), handle, 23);
  if (v25)
  {
LABEL_54:
    os_release(v25);
  }

  return v9;
}

uint64_t __nw_http_messaging_options_set_override_protocol_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && !*(a2 + 32))
  {
    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a2 + 32);
    *(a2 + 32) = v4;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446210;
      v8 = "nw_http_messaging_options_set_override_protocol_handler_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring duplicate setting of http_messaging override_protocol handler", &v7, 0xCu);
    }
  }

  return 1;
}

uint64_t __nw_http_messaging_options_set_can_accept_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && !*(a2 + 40))
  {
    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a2 + 40);
    *(a2 + 40) = v4;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446210;
      v8 = "nw_http_messaging_options_set_can_accept_handler_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring duplicate setting of http_messaging can_accept handler", &v7, 0xCu);
    }
  }

  return 1;
}

uint64_t nw_protocol_http_joining_get_remote_endpoint(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_joining_get_remote_endpoint";
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
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_remote_endpoint";
      v7 = "%{public}s called with null protocol";
    }

    else
    {
      if (v12 != 1)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v15 = "nw_protocol_http_joining_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "nw_protocol_http_joining_get_remote_endpoint";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v4)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (!v9)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_remote_endpoint";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_joining_get_remote_endpoint";
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
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_remote_endpoint";
      v7 = "%{public}s called with null http_joining";
      goto LABEL_34;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_remote_endpoint";
      v7 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_34;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_remote_endpoint";
      v7 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_http_joining_get_remote_endpoint";
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http_joining, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
LABEL_35:
    if (!v4)
    {
      return 0;
    }

LABEL_36:
    free(v4);
    return 0;
  }

  result = handle[15];
  if (!result)
  {
    v3 = handle[6];

    return nw_protocol_get_remote_endpoint(v3);
  }

  return result;
}

uint64_t nw_http_connection_state_finish_lookup(uint64_t a1, char *a2, void *a3, void *a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v23 = a3;
    v24 = a5;
    v25 = __nwlog_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    LOBYTE(a5) = v24;
    a3 = v23;
    if (v26)
    {
      *buf = 136446978;
      *&buf[4] = "nw_http_connection_state_finish_lookup";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 114;
      *&buf[22] = 2080;
      v46 = " ";
      LOWORD(v47) = 1024;
      *(&v47 + 2) = v24;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound alternative %{BOOL}d", buf, 0x26u);
      LOBYTE(a5) = v24;
      a3 = v23;
    }
  }

  if ((a5 & 1) == 0)
  {
    v9 = a3;
    v10 = v9;
    if (v9)
    {
      v11 = nw_protocol_copy_http_connection_state_definition_onceToken;
      v12 = v9;
      if (v11 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_connection_state_definition_onceToken, &__block_literal_global_21_76499);
      }

      v13 = nw_protocol_options_matches_definition(v12, nw_protocol_copy_http_connection_state_definition_http_connection_state_definition);

      if (v13)
      {
        *v48 = 0;
        *&v48[8] = v48;
        *&v48[16] = 0x2020000000;
        v49 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_connection_state_options_get_assumes_http3_capable_block_invoke;
        v46 = &unk_1E6A3A858;
        v47 = v48;
        nw_protocol_options_access_handle(v12, buf);
        v14 = *(*&v48[8] + 24);
        _Block_object_dispose(v48, 8);

        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      v31 = __nwlog_obj();
      *v48 = 136446210;
      *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v28, &type, &v43))
      {
LABEL_66:
        if (!v28)
        {
LABEL_68:

LABEL_9:
          if (nw_get_http3_override_onceToken != -1)
          {
            dispatch_once(&nw_get_http3_override_onceToken, &__block_literal_global_11_76433);
          }

          if (nw_get_http3_override_value != 1 && nw_get_http3_override_value != 2 && nw_parameters_has_transforms(a2))
          {
            if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
            }

            v15 = nw_protocol_copy_quic_stream_definition_quic_definition;
            nw_endpoint_add_alternative(a4, &__block_literal_global_7016, v15);
            if (v15)
            {
              os_release(v15);
            }
          }

          goto LABEL_18;
        }

LABEL_67:
        free(v28);
        goto LABEL_68;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s protocol options are not http_connection_state", v48, 0xCu);
        }

LABEL_59:

        goto LABEL_66;
      }

      if (v43 != 1)
      {
        v29 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v42, "%{public}s protocol options are not http_connection_state, backtrace limit exceeded", v48, 0xCu);
        }

        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v35, type);
      if (backtrace_string)
      {
        if (v40)
        {
          *v48 = 136446466;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          *&v48[12] = 2082;
          *&v48[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v39, "%{public}s protocol options are not http_connection_state, dumping backtrace:%{public}s", v48, 0x16u);
        }

        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        free(backtrace_string);
        goto LABEL_66;
      }

      if (v40)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
        _os_log_impl(&dword_181A37000, v35, v39, "%{public}s protocol options are not http_connection_state, no backtrace", v48, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *v48 = 136446210;
      *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v28, &type, &v43))
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null options", v48, 0xCu);
        }

        goto LABEL_59;
      }

      if (v43 != 1)
      {
        v29 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v41, "%{public}s called with null options, backtrace limit exceeded", v48, 0xCu);
        }

        goto LABEL_59;
      }

      v34 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v35, type);
      if (v34)
      {
        if (v37)
        {
          *v48 = 136446466;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          *&v48[12] = 2082;
          *&v48[14] = v34;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null options, dumping backtrace:%{public}s", v48, 0x16u);
        }

        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        free(v34);
        if (!v28)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v37)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null options, no backtrace", v48, 0xCu);
      }
    }

    v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    goto LABEL_66;
  }

LABEL_18:
  v16 = nw_parameters_copy_context(a2);
  v17 = nw_context_copy_registered_endpoint(v16, a4);
  v18 = *(a1 + 208);
  if ((v18 & 1) != 0 && *(a1 + 200))
  {
    v19 = v17;
    os_release(*(a1 + 200));
    v17 = v19;
    v18 = *(a1 + 208);
  }

  *(a1 + 200) = v17;
  *(a1 + 208) = v18 | 1;
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = nw_protocol_connect(v20, a1);
    if (v16)
    {
LABEL_23:
      os_release(v16);
    }
  }

  else
  {
    if ((*(a1 + 198) & 1) == 0 && BYTE1(v8[82].isa) == 1)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connection_state_finish_lookup";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 114;
        *&buf[22] = 2080;
        v46 = " ";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sconnect bottom protocol, resuming child handler", buf, 0x20u);
      }
    }

    buf[0] = 0;
    v21 = 1;
    nw_protocol_notify(*(a1 + 48), a1, 23);
    if (v16)
    {
      goto LABEL_23;
    }
  }

  return v21;
}

void sub_181EA0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_client_copy_options(void *a1, const void **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_client_copy_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v13, &type, &v19))
    {
LABEL_22:
      if (v13)
      {
        free(v13);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_http_client_copy_options";
        v16 = "%{public}s called with null existing_handle";
LABEL_20:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
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
            v22 = "nw_http_client_copy_options";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v18)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v22 = "nw_http_client_copy_options";
        v16 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_http_client_copy_options";
        v16 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x509ABE18uLL);
  if (v4)
  {
LABEL_5:
    v8 = _Block_copy(*a2);
    v9 = *v4;
    *v4 = v8;

    v10 = _Block_copy(a2[1]);
    v11 = v4[1];
    v4[1] = v10;

LABEL_6:
    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v22 = "nw_http_client_copy_options";
  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 16;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_sniffing_copy_options(void *a1, _BYTE *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_sniffing_copy_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
LABEL_22:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_sniffing_copy_options";
        v12 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v18 = "nw_http_sniffing_copy_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v18 = "nw_http_sniffing_copy_options";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_sniffing_copy_options";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0x15281C35uLL);
  if (v4)
  {
LABEL_5:
    *v4 = *a2;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_http_sniffing_copy_options";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 4;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_redirect_copy_options(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_redirect_copy_options";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v11, &type, &v17))
    {
LABEL_22:
      if (v11)
      {
        free(v11);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_http_redirect_copy_options";
        v14 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v20 = "nw_http_redirect_copy_options";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v20 = "nw_http_redirect_copy_options";
        v14 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_http_redirect_copy_options";
        v14 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xEEF03373uLL);
  if (v4)
  {
LABEL_5:
    *(v4 + 4) = *(a2 + 16);
    *(v4 + 20) = *(v4 + 20) & 0xFE | *(a2 + 20) & 1;
    v8 = _Block_copy(*a2);
    v9 = *v4;
    *v4 = v8;

    objc_storeStrong(v4 + 1, *(a2 + 8));
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v20 = "nw_http_redirect_copy_options";
  v21 = 2048;
  v22 = 1;
  v23 = 2048;
  v24 = 24;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_security_copy_options(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_security_copy_options";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v12, &type, &v18))
    {
LABEL_22:
      if (v12)
      {
        free(v12);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_http_security_copy_options";
        v15 = "%{public}s called with null existing_handle";
LABEL_20:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_http_security_copy_options";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v17)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v21 = "nw_http_security_copy_options";
        v15 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_http_security_copy_options";
        v15 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0xBDF5687DuLL);
  if (v4)
  {
LABEL_5:
    objc_storeStrong(v4, *a2);
    objc_storeStrong(v4 + 1, *(a2 + 8));
    v8 = _Block_copy(*(a2 + 16));
    v9 = v4[2];
    v4[2] = v8;

    objc_storeStrong(v4 + 3, *(a2 + 24));
    v10 = v4[4] & 0xFE | *(a2 + 32) & 1;
    *(v4 + 32) = v10;
    *(v4 + 32) = v10 & 0xFD | *(a2 + 32) & 2;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v21 = "nw_http_security_copy_options";
  v22 = 2048;
  v23 = 1;
  v24 = 2048;
  v25 = 40;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_encoding_copy_options(void *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_encoding_copy_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
LABEL_22:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_encoding_copy_options";
        v12 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v18 = "nw_http_encoding_copy_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v18 = "nw_http_encoding_copy_options";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_encoding_copy_options";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0xA1365E8EuLL);
  if (v4)
  {
LABEL_5:
    *v4 = *a2;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_http_encoding_copy_options";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 4;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_authentication_copy_options(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_authentication_copy_options";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v11, &type, &v17))
    {
LABEL_22:
      if (v11)
      {
        free(v11);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_copy_options";
        v14 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v20 = "nw_http_authentication_copy_options";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v20 = "nw_http_authentication_copy_options";
        v14 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_copy_options";
        v14 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0xA6CFD144uLL);
  if (v4)
  {
LABEL_5:
    objc_storeStrong(v4 + 5, *(a2 + 40));
    v8 = _Block_copy(*a2);
    v9 = *v4;
    *v4 = v8;

    objc_storeStrong(v4 + 1, *(a2 + 8));
    objc_storeStrong(v4 + 2, *(a2 + 16));
    objc_storeStrong(v4 + 3, *(a2 + 24));
    objc_storeStrong(v4 + 4, *(a2 + 32));
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v20 = "nw_http_authentication_copy_options";
  v21 = 2048;
  v22 = 1;
  v23 = 2048;
  v24 = 48;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_retry_copy_options(void *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_retry_copy_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
LABEL_22:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_retry_copy_options";
        v12 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v18 = "nw_http_retry_copy_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v18 = "nw_http_retry_copy_options";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_retry_copy_options";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0x1B2E3097uLL);
  if (v4)
  {
LABEL_5:
    *v4 = *a2;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_http_retry_copy_options";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 4;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_cookie_copy_options(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_http_cookie_copy_options";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v16, &type, &v24))
    {
LABEL_27:
      if (v16)
      {
        free(v16);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v27 = "nw_http_cookie_copy_options";
        v19 = "%{public}s called with null existing_handle";
LABEL_25:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v23 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v27 = "nw_http_cookie_copy_options";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (!v23)
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v27 = "nw_http_cookie_copy_options";
        v19 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_25;
      }

      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v27 = "nw_http_cookie_copy_options";
        v19 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_25;
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0xBDDFCF31uLL);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v27 = "nw_http_cookie_copy_options";
    v28 = 2048;
    v29 = 1;
    v30 = 2048;
    v31 = 40;
    v6 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v6);
    if (result)
    {
      goto LABEL_30;
    }

    free(v6);
  }

  objc_storeStrong(v4, *a2);
  v8 = _Block_copy(*(a2 + 8));
  v9 = v4[1];
  v4[1] = v8;

  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_8:
    objc_storeStrong(v4 + 3, *(a2 + 24));
    v12 = v4[4] & 0xFE | *(a2 + 32) & 1;
    *(v4 + 32) = v12;
    v13 = v12 & 0xFFFFFFFD | (2 * ((*(a2 + 32) >> 1) & 1));
    *(v4 + 32) = v13;
    v14 = v13 & 0xFFFFFFFB | (4 * ((*(a2 + 32) >> 2) & 1));
    *(v4 + 32) = v14;
    *(v4 + 32) = v14 & 0xF7 | *(a2 + 32) & 8;
LABEL_9:

    return v4;
  }

  v11 = strdup(v10);
  if (v11)
  {
LABEL_7:
    v4[2] = v11;
    goto LABEL_8;
  }

  v20 = __nwlog_obj();
  os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v27 = "strict_strdup";
  v21 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v21);
  if (!result)
  {
    free(v21);
    v11 = 0;
    goto LABEL_7;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t nw_http_joining_copy_options(void *a1, _BYTE *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_joining_copy_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
LABEL_22:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_joining_copy_options";
        v12 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v18 = "nw_http_joining_copy_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v18 = "nw_http_joining_copy_options";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_joining_copy_options";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0x1242A03BuLL);
  if (v4)
  {
LABEL_5:
    *v4 = *v4 & 0xFE | *a2 & 1;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_http_joining_copy_options";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 4;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_connection_state_copy_options(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_connection_state_copy_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
LABEL_22:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_connection_state_copy_options";
        v12 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v18 = "nw_http_connection_state_copy_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v18 = "nw_http_connection_state_copy_options";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http_connection_state_copy_options";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xB1AB55DCuLL);
  if (v4)
  {
LABEL_5:
    objc_storeStrong(v4, *a2);
    *(v4 + 8) = v4[1] & 0xFE | *(a2 + 8) & 1;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_http_connection_state_copy_options";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 16;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void nw_http_client_deallocate_options(uint64_t a1, void **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    free(a2);
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http_client_deallocate_options";
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
        v15 = "nw_http_client_deallocate_options";
        v9 = "%{public}s called with null allocated_handle";
LABEL_18:
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
            v15 = "nw_http_client_deallocate_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v15 = "nw_http_client_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_http_client_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }
}
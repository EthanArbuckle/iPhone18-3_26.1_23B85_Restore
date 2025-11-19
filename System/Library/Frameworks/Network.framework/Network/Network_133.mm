uint64_t nw_txt_record_set_key_data_value(void *a1, const char *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  size = dispatch_data_get_size(v6);
  if (strlen(a2) + 2 * size >= 0x100)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446722;
    v31 = "nw_txt_record_set_key_data_value";
    v32 = 2080;
    v33 = a2;
    v34 = 2048;
    v35 = dispatch_data_get_size(v6);
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v9, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          v12 = dispatch_data_get_size(v6);
          *buf = 136446722;
          v31 = "nw_txt_record_set_key_data_value";
          v32 = 2080;
          v33 = a2;
          v34 = 2048;
          v35 = v12;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Key %s + data value length %zu too large", buf, 0x20u);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v19 = type;
        v20 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v20)
          {
            v21 = dispatch_data_get_size(v6);
            *buf = 136446978;
            v31 = "nw_txt_record_set_key_data_value";
            v32 = 2080;
            v33 = a2;
            v34 = 2048;
            v35 = v21;
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v19, "%{public}s Key %s + data value length %zu too large, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (v20)
        {
          v24 = dispatch_data_get_size(v6);
          *buf = 136446722;
          v31 = "nw_txt_record_set_key_data_value";
          v32 = 2080;
          v33 = a2;
          v34 = 2048;
          v35 = v24;
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s Key %s + data value length %zu too large, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v10, type))
        {
          v23 = dispatch_data_get_size(v6);
          *buf = 136446722;
          v31 = "nw_txt_record_set_key_data_value";
          v32 = 2080;
          v33 = a2;
          v34 = 2048;
          v35 = v23;
          _os_log_impl(&dword_181A37000, v10, v22, "%{public}s Key %s + data value length %zu too large, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v9)
    {
LABEL_9:
      v13 = 0;
LABEL_16:

      return v13;
    }

LABEL_8:
    free(v9);
    goto LABEL_9;
  }

  if (!(2 * size))
  {
    v25 = __nwlog_obj();
    os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v31 = "nw_txt_record_set_key_data_value";
    v26 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v26);
    if (result)
    {
      goto LABEL_31;
    }

    free(v26);
  }

  v14 = malloc_type_calloc(1uLL, 2 * size, 0x80954E54uLL);
  if (v14)
  {
    goto LABEL_14;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v31 = "nw_txt_record_set_key_data_value";
  v32 = 2048;
  v33 = 1;
  v34 = 2048;
  v35 = 2 * size;
  v16 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
LABEL_14:
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___ZL32nw_txt_record_set_key_data_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPU27objcproto16OS_dispatch_dataS__block_invoke;
    applier[3] = &__block_descriptor_48_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
    applier[4] = size;
    applier[5] = v14;
    dispatch_data_apply(v6, applier);
    v13 = nw_txt_record_set_key(v5, a2, v14, 2 * size);
    if (v14)
    {
      free(v14);
    }

    goto LABEL_16;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t ___ZL32nw_txt_record_set_key_data_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPU27objcproto16OS_dispatch_dataS__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a5)
  {
    v5 = 2 * a3;
    do
    {
      if (a3 >= *(a1 + 32))
      {
        break;
      }

      *(*(a1 + 40) + v5) = nw_printf_write_data::hex_chars[*a4 >> 4];
      v6 = *a4++;
      *(*(a1 + 40) + v5 + 1) = nw_printf_write_data::hex_chars[v6 & 0xF];
      v5 += 2;
      ++a3;
      --a5;
    }

    while (a5);
  }

  return 1;
}

uint64_t nw_protocol_fulfill_frame_request(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, unsigned int *a6, _BYTE *a7)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v78[0] = 0;
    if (!__nwlog_fault(v35, type, v78))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      v38 = "%{public}s called with null source_array";
LABEL_90:
      _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
      goto LABEL_91;
    }

    if (v78[0] != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null source_array, backtrace limit exceeded";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v45 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v45)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null source_array, no backtrace";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (!v45)
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v46 = "%{public}s called with null source_array, dumping backtrace:%{public}s";
LABEL_74:
    _os_log_impl(&dword_181A37000, v36, v37, v46, buf, 0x16u);
    goto LABEL_75;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v78[0] = 0;
    if (!__nwlog_fault(v35, type, v78))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      v38 = "%{public}s called with null destination_array";
      goto LABEL_90;
    }

    if (v78[0] != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null destination_array, backtrace limit exceeded";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v47 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null destination_array, no backtrace";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (!v47)
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v46 = "%{public}s called with null destination_array, dumping backtrace:%{public}s";
    goto LABEL_74;
  }

  if (!a7)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v78[0] = 0;
    if (!__nwlog_fault(v35, type, v78))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null metadata_complete";
        goto LABEL_90;
      }

LABEL_91:
      if (!v35)
      {
        return 0;
      }

      v33 = v35;
      goto LABEL_45;
    }

    if (v78[0] != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null metadata_complete, backtrace limit exceeded";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v48 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v48)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_fulfill_frame_request";
        v38 = "%{public}s called with null metadata_complete, no backtrace";
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (v48)
    {
      *buf = 136446466;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v46 = "%{public}s called with null metadata_complete, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

LABEL_75:
    free(backtrace_string);
    goto LABEL_91;
  }

  if (gLogDatapath == 1)
  {
    v39 = a1;
    v40 = a7;
    v41 = __nwlog_obj();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
    a7 = v40;
    v43 = v42;
    a1 = v39;
    if (v43)
    {
      *buf = 136446978;
      *&buf[4] = "__nw_protocol_fulfill_frame_request";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = a4;
      LOWORD(v84) = 1024;
      *(&v84 + 2) = a5;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s called with minimum bytes: %u, maximum bytes: %u, maximum frames: %u", buf, 0x1Eu);
      a7 = v40;
      a1 = v39;
    }
  }

  if (a4 < a3 || !a5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "__nw_protocol_fulfill_frame_request";
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    LOWORD(v84) = 1024;
    *(&v84 + 2) = a5;
    v27 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v78[0] = 0;
    if (__nwlog_fault(v27, type, v78))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "__nw_protocol_fulfill_frame_request";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          LOWORD(v84) = 1024;
          *(&v84 + 2) = a5;
          v30 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u";
LABEL_42:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0x1Eu);
        }
      }

      else if (v78[0] == 1)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v31)
        {
          if (v32)
          {
            *buf = 136447234;
            *&buf[4] = "__nw_protocol_fulfill_frame_request";
            *&buf[12] = 1024;
            *&buf[14] = a4;
            *&buf[18] = 1024;
            *&buf[20] = a3;
            LOWORD(v84) = 1024;
            *(&v84 + 2) = a5;
            HIWORD(v84) = 2082;
            v85 = v31;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s invalid values for frame request, max %u, min %u, max frame %u, dumping backtrace:%{public}s", buf, 0x28u);
          }

          free(v31);
          goto LABEL_43;
        }

        if (v32)
        {
          *buf = 136446978;
          *&buf[4] = "__nw_protocol_fulfill_frame_request";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          LOWORD(v84) = 1024;
          *(&v84 + 2) = a5;
          v30 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, no backtrace";
          goto LABEL_42;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "__nw_protocol_fulfill_frame_request";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          LOWORD(v84) = 1024;
          *(&v84 + 2) = a5;
          v30 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, backtrace limit exceeded";
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    if (!v27)
    {
      return 0;
    }

    v33 = v27;
LABEL_45:
    free(v33);
    return 0;
  }

  *type = 0;
  v63 = type;
  v64 = 0x3802000000;
  v65 = __Block_byref_object_copy__3805;
  v66 = __Block_byref_object_dispose__3806;
  v67[0] = 0;
  v67[1] = v67;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke;
  v84 = &unk_1E6A2BDE0;
  v85 = &v58;
  v86 = &v54;
  v90 = a5;
  v91 = a4;
  v88 = a7;
  v89 = a1;
  v92 = 1;
  v12 = a7;
  v87 = type;
  v93 = 1;
  v13 = a1;
  v14 = *a1;
  do
  {
    if (!v14)
    {
      break;
    }

    v15 = *(v14 + 32);
    v16 = (*&buf[16])(buf);
    v14 = v15;
  }

  while ((v16 & 1) != 0);
  v17 = *(v55 + 6);
  if (v17 < a3 && *(v63 + 5) && (*v12 & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v52 = __nwlog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(v55 + 6);
        *v78 = 136446722;
        *&v78[4] = "__nw_protocol_fulfill_frame_request";
        *&v78[12] = 1024;
        *&v78[14] = a3;
        *&v78[18] = 1024;
        *&v78[20] = v53;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s could not meet minimum byte count %u with %u bytes from source array", v78, 0x18u);
      }
    }

    v18 = v63;
    v19 = v63 + 40;
    if (*v13)
    {
      v20 = *(v63 + 6);
      *v20 = *v13;
      *(*v13 + 40) = v20;
      *(v18 + 6) = v13[1];
      *v13 = 0;
      v13[1] = v13;
    }

    if (*v19)
    {
      v21 = v13[1];
      *v21 = *v19;
      *(*(v18 + 5) + 40) = v21;
      v13[1] = *(v18 + 6);
      *(v18 + 5) = 0;
      *(v18 + 6) = v19;
    }

    v17 = 0;
    v22 = v63;
    *(v63 + 5) = 0;
    *(v22 + 6) = v22 + 40;
    *(v59 + 6) = 0;
    *(v55 + 6) = 0;
  }

  if (a6)
  {
    *a6 = v17;
  }

  v23 = *(v63 + 5);
  if (v23)
  {
    *v78 = MEMORY[0x1E69E9820];
    *&v78[8] = 0x40000000;
    *&v78[16] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke_27;
    v79 = &unk_1E6A2BE08;
    v82 = 1;
    v80 = type;
    v81 = a2;
    do
    {
      if (!v23)
      {
        break;
      }

      v24 = *(v23 + 32);
      v25 = (*&v78[16])(v78);
      v23 = v24;
    }

    while ((v25 & 1) != 0);
  }

  if (gLogDatapath == 1)
  {
    v49 = __nwlog_obj();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(v59 + 6);
      v51 = *(v55 + 6);
      *v68 = 136447234;
      v69 = "__nw_protocol_fulfill_frame_request";
      v70 = 1024;
      v71 = v50;
      v72 = 1024;
      v73 = v51;
      v74 = 2048;
      v75 = v13;
      v76 = 2048;
      v77 = a2;
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s moved (%u frames, %u bytes) from %p to %p", v68, 0x2Cu);
    }
  }

  v26 = *(v59 + 6);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(type, 8);
  return v26;
}

__n128 __Block_byref_object_copy__3805(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke(uint64_t a1, _DWORD *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if ((*(*(*(a1 + 32) + 8) + 24) + 1) > *(a1 + 72))
  {
    return 0;
  }

  v6 = v4;
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = v7 + v4;
  if (__CFADD__(v7, v4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v115 = 2082;
    *v116 = "bytes_count_with_this_frame";
    *&v116[8] = 2048;
    v117 = v6;
    *v118 = 2048;
    *&v118[2] = v8;
    v9 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v112 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v9, type, &v112))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "bytes_count_with_this_frame";
          *&v116[8] = 2048;
          v117 = v6;
          *v118 = 2048;
          *&v118[2] = v8;
          v12 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_18:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x2Au);
        }
      }

      else if (v112 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        v14 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136447234;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "bytes_count_with_this_frame";
            *&v116[8] = 2048;
            v117 = v6;
            *v118 = 2048;
            *&v118[2] = v8;
            v119 = 2082;
            v120 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (v14)
        {
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "bytes_count_with_this_frame";
          *&v116[8] = 2048;
          v117 = v6;
          *v118 = 2048;
          *&v118[2] = v8;
          v12 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_18;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "bytes_count_with_this_frame";
          *&v116[8] = 2048;
          v117 = v6;
          *v118 = 2048;
          *&v118[2] = v8;
          v12 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    if (v9)
    {
      free(v9);
    }

    LODWORD(v8) = -1;
  }

  v15 = *(a1 + 76);
  if (v8 <= v15)
  {
    v34 = *(*(a1 + 40) + 8);
    v35 = *(v34 + 24);
    *(v34 + 24) = v35 + v6;
    if (!__CFADD__(v35, v6))
    {
      goto LABEL_75;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 136446978;
    v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v115 = 2082;
    *v116 = "bytes_count";
    *&v116[8] = 2048;
    v117 = v6;
    *v118 = 2048;
    *&v118[2] = v36;
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v112 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v37, type, &v112))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v40 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "bytes_count";
          *&v116[8] = 2048;
          v117 = v6;
          *v118 = 2048;
          *&v118[2] = v40;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_71:
          _os_log_impl(&dword_181A37000, v38, v39, v41, buf, 0x2Au);
        }
      }

      else if (v112 == OS_LOG_TYPE_INFO)
      {
        v43 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        v44 = os_log_type_enabled(gLogObj, type[0]);
        if (v43)
        {
          if (v44)
          {
            v45 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136447234;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "bytes_count";
            *&v116[8] = 2048;
            v117 = v6;
            *v118 = 2048;
            *&v118[2] = v45;
            v119 = 2082;
            v120 = v43;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v43);
          goto LABEL_72;
        }

        if (v44)
        {
          v58 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "bytes_count";
          *&v116[8] = 2048;
          v117 = v6;
          *v118 = 2048;
          *&v118[2] = v58;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_71;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v51 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "bytes_count";
          *&v116[8] = 2048;
          v117 = v6;
          *v118 = 2048;
          *&v118[2] = v51;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_72:
    if (v37)
    {
      free(v37);
    }

    *(*(*(a1 + 40) + 8) + 24) = -1;
LABEL_75:
    if (nw_frame_is_metadata_complete(a2))
    {
      **(a1 + 56) = 1;
    }

    v59 = (*(a1 + 64) + 8);
    v60 = 4;
    if (*(a1 + 80))
    {
      v60 = 8;
    }

    v61 = 6;
    if (*(a1 + 80))
    {
      v61 = 10;
    }

    v62 = &a2[v60];
    v63 = *v62;
    v64 = *&a2[v61];
    v65 = (*v62 + v61 * 4);
    if (*v62)
    {
      v59 = v65;
    }

    *v59 = v64;
    *v64 = v63;
    *v62 = 0;
    v62[1] = 0;
    if (gLogDatapath == 1)
    {
      v105 = __nwlog_obj();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v115 = 1024;
        *v116 = v6;
        _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s Moving entire frame (%u bytes)", buf, 0x12u);
      }
    }

    v66 = *(*(a1 + 32) + 8);
    v67 = *(v66 + 24) + 1;
    *(v66 + 24) = v67;
    if (v67 == v67 << 31 >> 31)
    {
      goto LABEL_104;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 136446978;
    v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v115 = 2082;
    *v116 = "frame_count";
    *&v116[8] = 2048;
    v117 = 1;
    *v118 = 2048;
    *&v118[2] = v68;
    v69 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v112 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v69, type, &v112))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v72 = *(*(*(a1 + 32) + 8) + 24);
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "frame_count";
          *&v116[8] = 2048;
          v117 = 1;
          *v118 = 2048;
          *&v118[2] = v72;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_100:
          _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x2Au);
        }
      }

      else if (v112 == OS_LOG_TYPE_INFO)
      {
        v74 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type[0];
        v75 = os_log_type_enabled(gLogObj, type[0]);
        if (v74)
        {
          if (v75)
          {
            v76 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136447234;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "frame_count";
            *&v116[8] = 2048;
            v117 = 1;
            *v118 = 2048;
            *&v118[2] = v76;
            v119 = 2082;
            v120 = v74;
            _os_log_impl(&dword_181A37000, v70, v71, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v74);
          goto LABEL_101;
        }

        if (v75)
        {
          v78 = *(*(*(a1 + 32) + 8) + 24);
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "frame_count";
          *&v116[8] = 2048;
          v117 = 1;
          *v118 = 2048;
          *&v118[2] = v78;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_100;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v77 = *(*(*(a1 + 32) + 8) + 24);
          *buf = 136446978;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = "frame_count";
          *&v116[8] = 2048;
          v117 = 1;
          *v118 = 2048;
          *&v118[2] = v77;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_100;
        }
      }
    }

LABEL_101:
    if (v69)
    {
      free(v69);
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
LABEL_104:
    v79 = *(*(a1 + 48) + 8);
    v80 = 4;
    if (*(a1 + 80))
    {
      v80 = 8;
    }

    v81 = 6;
    if (*(a1 + 80))
    {
      v81 = 10;
    }

    v82 = &a2[v80];
    *v82 = 0;
    v83 = *(v79 + 48);
    *&a2[v81] = v83;
    *v83 = a2;
    *(v79 + 48) = v82;
    return 1;
  }

  if (*(a1 + 81))
  {
    v16 = v15 - *(*(*(a1 + 40) + 8) + 24);
    v17 = (*(a1 + 64) + 8);
    v18 = 4;
    if (*(a1 + 80))
    {
      v18 = 8;
    }

    v19 = 6;
    if (*(a1 + 80))
    {
      v19 = 10;
    }

    v20 = &a2[v18];
    v21 = *v20;
    v22 = *&a2[v19];
    v23 = (*v20 + v19 * 4);
    if (*v20)
    {
      v17 = v23;
    }

    *v17 = v22;
    *v22 = v21;
    *v20 = 0;
    v20[1] = 0;
    *type = a2;
    v24 = nw_frame_split(type, v16);
    if (v24)
    {
      v25 = v24;
      nw_frame_array_prepend(*(a1 + 64), *(a1 + 80), *type);
      v26 = *(*(a1 + 40) + 8);
      v27 = *(v26 + 24);
      *(v26 + 24) = v27 + v16;
      if (!__CFADD__(v27, v16))
      {
        goto LABEL_117;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 136446978;
      v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
      v115 = 2082;
      *v116 = "bytes_count";
      *&v116[8] = 2048;
      v117 = v16;
      *v118 = 2048;
      *&v118[2] = v28;
      v29 = _os_log_send_and_compose_impl();
      v112 = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (__nwlog_fault(v29, &v112, &v110))
      {
        if (v112 == OS_LOG_TYPE_FAULT)
        {
          v30 = __nwlog_obj();
          v31 = v112;
          if (os_log_type_enabled(v30, v112))
          {
            v32 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "bytes_count";
            *&v116[8] = 2048;
            v117 = v16;
            *v118 = 2048;
            *&v118[2] = v32;
            v33 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_112:
            v85 = v30;
LABEL_113:
            _os_log_impl(&dword_181A37000, v85, v31, v33, buf, 0x2Au);
          }
        }

        else if (v110 == 1)
        {
          v54 = __nw_create_backtrace_string();
          v55 = __nwlog_obj();
          v31 = v112;
          log = v55;
          v56 = os_log_type_enabled(v55, v112);
          if (v54)
          {
            if (v56)
            {
              v57 = *(*(*(a1 + 40) + 8) + 24);
              *buf = 136447234;
              v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
              v115 = 2082;
              *v116 = "bytes_count";
              *&v116[8] = 2048;
              v117 = v16;
              *v118 = 2048;
              *&v118[2] = v57;
              v119 = 2082;
              v120 = v54;
              _os_log_impl(&dword_181A37000, log, v31, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v54);
            goto LABEL_114;
          }

          if (v56)
          {
            v98 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "bytes_count";
            *&v116[8] = 2048;
            v117 = v16;
            *v118 = 2048;
            *&v118[2] = v98;
            v33 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            v85 = log;
            goto LABEL_113;
          }
        }

        else
        {
          v30 = __nwlog_obj();
          v31 = v112;
          if (os_log_type_enabled(v30, v112))
          {
            v84 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "bytes_count";
            *&v116[8] = 2048;
            v117 = v16;
            *v118 = 2048;
            *&v118[2] = v84;
            v33 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_112;
          }
        }
      }

LABEL_114:
      if (v29)
      {
        free(v29);
      }

      *(*(*(a1 + 40) + 8) + 24) = -1;
LABEL_117:
      if (gLogDatapath == 1)
      {
        v106 = __nwlog_obj();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          v107 = nw_frame_unclaimed_length(*type);
          v108 = v25[13];
          if (v108)
          {
            v108 -= v25[14] + v25[15];
          }

          *buf = 136447234;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 1024;
          *v116 = v16;
          *&v116[4] = 1024;
          *&v116[6] = v6;
          LOWORD(v117) = 1024;
          *(&v117 + 2) = v107;
          HIWORD(v117) = 1024;
          *v118 = v108;
          _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEBUG, "%{public}s Moving split frame (%u bytes of %u, %u bytes remaining, delivering %u bytes)", buf, 0x24u);
        }
      }

      v86 = *(*(a1 + 32) + 8);
      v87 = *(v86 + 24) + 1;
      *(v86 + 24) = v87;
      if (v87 == v87 << 31 >> 31)
      {
        goto LABEL_143;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v88 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
      v115 = 2082;
      *v116 = "frame_count";
      *&v116[8] = 2048;
      v117 = 1;
      *v118 = 2048;
      *&v118[2] = v88;
      v89 = _os_log_send_and_compose_impl();
      v112 = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (__nwlog_fault(v89, &v112, &v110))
      {
        if (v112 == OS_LOG_TYPE_FAULT)
        {
          v90 = __nwlog_obj();
          v91 = v112;
          if (os_log_type_enabled(v90, v112))
          {
            v92 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "frame_count";
            *&v116[8] = 2048;
            v117 = 1;
            *v118 = 2048;
            *&v118[2] = v92;
            v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_139:
            _os_log_impl(&dword_181A37000, v90, v91, v93, buf, 0x2Au);
          }
        }

        else if (v110 == 1)
        {
          v94 = __nw_create_backtrace_string();
          v90 = __nwlog_obj();
          v91 = v112;
          v95 = os_log_type_enabled(v90, v112);
          if (v94)
          {
            if (v95)
            {
              v96 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
              v115 = 2082;
              *v116 = "frame_count";
              *&v116[8] = 2048;
              v117 = 1;
              *v118 = 2048;
              *&v118[2] = v96;
              v119 = 2082;
              v120 = v94;
              _os_log_impl(&dword_181A37000, v90, v91, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v94);
            goto LABEL_140;
          }

          if (v95)
          {
            v99 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "frame_count";
            *&v116[8] = 2048;
            v117 = 1;
            *v118 = 2048;
            *&v118[2] = v99;
            v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_139;
          }
        }

        else
        {
          v90 = __nwlog_obj();
          v91 = v112;
          if (os_log_type_enabled(v90, v112))
          {
            v97 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
            v115 = 2082;
            *v116 = "frame_count";
            *&v116[8] = 2048;
            v117 = 1;
            *v118 = 2048;
            *&v118[2] = v97;
            v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_139;
          }
        }
      }

LABEL_140:
      if (v89)
      {
        free(v89);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
LABEL_143:
      v100 = *(*(a1 + 48) + 8);
      v101 = 4;
      if (*(a1 + 80))
      {
        v101 = 8;
      }

      v102 = 6;
      if (*(a1 + 80))
      {
        v102 = 10;
      }

      v103 = &v25[v101];
      *v103 = 0;
      v104 = *(v100 + 48);
      *&v25[v102] = v104;
      *v104 = v25;
      *(v100 + 48) = v103;
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
      v115 = 2048;
      *v116 = a2;
      *&v116[8] = 1024;
      LODWORD(v117) = v16;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s failed to split frame %p at offset %u", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
    v47 = _os_log_send_and_compose_impl();
    v112 = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (__nwlog_fault(v47, &v112, &v110))
    {
      if (v112 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v49 = v112;
        if (!os_log_type_enabled(gLogObj, v112))
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v50 = "%{public}s nw_frame_split with partial frame failed";
        goto LABEL_132;
      }

      if (v110 != 1)
      {
        v48 = __nwlog_obj();
        v49 = v112;
        if (!os_log_type_enabled(v48, v112))
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v50 = "%{public}s nw_frame_split with partial frame failed, backtrace limit exceeded";
        goto LABEL_132;
      }

      v52 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = v112;
      v53 = os_log_type_enabled(v48, v112);
      if (v52)
      {
        if (v53)
        {
          *buf = 136446466;
          v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
          v115 = 2082;
          *v116 = v52;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s nw_frame_split with partial frame failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v52);
        goto LABEL_133;
      }

      if (v53)
      {
        *buf = 136446210;
        v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
        v50 = "%{public}s nw_frame_split with partial frame failed, no backtrace";
LABEL_132:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

LABEL_133:
    if (v47)
    {
      free(v47);
    }

    return 0;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v42 = __nwlog_obj();
  result = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446210;
    v114 = "__nw_protocol_fulfill_frame_request_block_invoke";
    _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s skipping partial frame, split frames not allowed", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke_27(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (*(*(a1 + 32) + 8) + 48);
    v3 = 16;
    if (*(a1 + 48))
    {
      v4 = 32;
    }

    else
    {
      v4 = 16;
    }

    if (*(a1 + 48))
    {
      v5 = 40;
    }

    else
    {
      v5 = 24;
    }

    v6 = (a2 + v4);
    v7 = *v6;
    v8 = *(a2 + v5);
    v9 = (*v6 + v5);
    if (*v6)
    {
      v2 = v9;
    }

    *v2 = v8;
    *v8 = v7;
    *v6 = 0;
    v6[1] = 0;
    v10 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v3 = 32;
      v11 = 40;
    }

    else
    {
      v11 = 24;
    }

    v12 = (a2 + v3);
    *v12 = 0;
    v13 = *(v10 + 8);
    *(a2 + v11) = v13;
    *v13 = a2;
    *(v10 + 8) = v12;
  }

  return 1;
}

void nw_protocol_plugin_metadata_get_and_process_frames(uint64_t a1, void *a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6, int *a7, unsigned int *a8, _DWORD *a9, uint64_t a10, uint64_t *a11)
{
  v130 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v70 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v111) = 0;
    if (!__nwlog_fault(v70, type, &v111))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = type[0];
      if (!os_log_type_enabled(v71, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v73 = "%{public}s called with null input_protocol";
    }

    else if (v111 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v72 = type[0];
      v81 = os_log_type_enabled(v71, type[0]);
      if (backtrace_string)
      {
        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_174:
        if (!v70)
        {
          return;
        }

        goto LABEL_175;
      }

      if (!v81)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v73 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v71 = __nwlog_obj();
      v72 = type[0];
      if (!os_log_type_enabled(v71, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v73 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    goto LABEL_173;
  }

  if (!a10)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v70 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v111) = 0;
    if (!__nwlog_fault(v70, type, &v111))
    {
      goto LABEL_174;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v111 != 1)
      {
        v71 = __nwlog_obj();
        v72 = type[0];
        if (!os_log_type_enabled(v71, type[0]))
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        v73 = "%{public}s called with null processor, backtrace limit exceeded";
        goto LABEL_173;
      }

      v82 = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v72 = type[0];
      v83 = os_log_type_enabled(v71, type[0]);
      if (!v82)
      {
        if (!v83)
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        v73 = "%{public}s called with null processor, no backtrace";
        goto LABEL_173;
      }

      if (v83)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        *&buf[12] = 2082;
        *&buf[14] = v82;
        v84 = "%{public}s called with null processor, dumping backtrace:%{public}s";
LABEL_131:
        _os_log_impl(&dword_181A37000, v71, v72, v84, buf, 0x16u);
      }

LABEL_132:
      free(v82);
      if (!v70)
      {
        return;
      }

LABEL_175:
      free(v70);
      return;
    }

    v71 = __nwlog_obj();
    v72 = type[0];
    if (!os_log_type_enabled(v71, type[0]))
    {
      goto LABEL_174;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v73 = "%{public}s called with null processor";
LABEL_173:
    _os_log_impl(&dword_181A37000, v71, v72, v73, buf, 0xCu);
    goto LABEL_174;
  }

  if (!a11)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
    v70 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v111) = 0;
    if (!__nwlog_fault(v70, type, &v111))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = type[0];
      if (!os_log_type_enabled(v71, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v73 = "%{public}s called with null destination_array";
      goto LABEL_173;
    }

    if (v111 != 1)
    {
      v71 = __nwlog_obj();
      v72 = type[0];
      if (!os_log_type_enabled(v71, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v73 = "%{public}s called with null destination_array, backtrace limit exceeded";
      goto LABEL_173;
    }

    v82 = __nw_create_backtrace_string();
    v71 = __nwlog_obj();
    v72 = type[0];
    v93 = os_log_type_enabled(v71, type[0]);
    if (!v82)
    {
      if (!v93)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      v73 = "%{public}s called with null destination_array, no backtrace";
      goto LABEL_173;
    }

    if (v93)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      *&buf[12] = 2082;
      *&buf[14] = v82;
      v84 = "%{public}s called with null destination_array, dumping backtrace:%{public}s";
      goto LABEL_131;
    }

    goto LABEL_132;
  }

  if ((*(a1 + 142) & 0x10) == 0)
  {
    if (*(a1 + 140) == 3)
    {
      *a5 = 0;
      *a6 = -1;
      *a7 = -1;
    }

    v17 = a9;
    if (gLogDatapath == 1)
    {
      v85 = __nwlog_obj();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        v86 = *a5;
        v87 = *a6;
        v88 = *a7;
        *buf = 136446978;
        *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
        *&buf[12] = 1024;
        *&buf[14] = v86;
        *&buf[18] = 1024;
        *&buf[20] = v87;
        LOWORD(v119) = 1024;
        *(&v119 + 2) = v88;
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Getting new frames from below with minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u", buf, 0x1Eu);
      }
    }

    v111 = 0;
    v112 = &v111;
    v18 = a2[4];
    v110 = a5;
    if (v18)
    {
      v19 = *a5;
      v20 = *a6;
      v21 = *a7;
      v22 = *(v18 + 40);
      v23 = a2[4];
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *(v18 + 64)) != 0)
      {
        v26 = *(v23 + 88);
        v108 = 0;
        if (v26)
        {
          *(v23 + 88) = v26 + 1;
        }
      }

      else
      {
        v108 = 1;
      }

      v27 = a2[5];
      v28 = a2;
      if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v28 = a2[8]) != 0)
      {
        v30 = v28[11];
        v29 = 0;
        if (v30)
        {
          v28[11] = v30 + 1;
        }
      }

      else
      {
        v29 = 1;
      }

      v31 = *(v18 + 24);
      if (v31)
      {
        v32 = *(v31 + 80);
        if (v32)
        {
          v33 = v32(v18, a2, v19, v20, v21, &v111) == 0;
          goto LABEL_30;
        }
      }

      __nwlog_obj();
      v74 = *(v18 + 16);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      if (!v74)
      {
        v74 = "invalid";
      }

      *&buf[12] = 2082;
      *&buf[14] = v74;
      *&buf[22] = 2048;
      v119 = v18;
      v75 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v113 = 0;
      v106 = v75;
      if (__nwlog_fault(v75, type, &v113))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v76 = __nwlog_obj();
          v77 = type[0];
          if (os_log_type_enabled(v76, type[0]))
          {
            v78 = *(v18 + 16);
            if (!v78)
            {
              v78 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v78;
            *&buf[22] = 2048;
            v119 = v18;
            v79 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
LABEL_160:
            v101 = v76;
            v102 = v77;
LABEL_161:
            _os_log_impl(&dword_181A37000, v101, v102, v79, buf, 0x20u);
          }
        }

        else if (v113 == 1)
        {
          v94 = __nw_create_backtrace_string();
          log = __nwlog_obj();
          v105 = type[0];
          v95 = os_log_type_enabled(log, type[0]);
          if (v94)
          {
            if (v95)
            {
              v96 = *(v18 + 16);
              if (!v96)
              {
                v96 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v96;
              *&buf[22] = 2048;
              v119 = v18;
              *v120 = 2082;
              *&v120[2] = v94;
              _os_log_impl(&dword_181A37000, log, v105, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v94);
            goto LABEL_162;
          }

          if (v95)
          {
            v103 = *(v18 + 16);
            if (!v103)
            {
              v103 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v103;
            *&buf[22] = 2048;
            v119 = v18;
            v79 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
            v101 = log;
            v102 = v105;
            goto LABEL_161;
          }
        }

        else
        {
          v76 = __nwlog_obj();
          v77 = type[0];
          if (os_log_type_enabled(v76, type[0]))
          {
            v100 = *(v18 + 16);
            if (!v100)
            {
              v100 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v100;
            *&buf[22] = 2048;
            v119 = v18;
            v79 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
            goto LABEL_160;
          }
        }
      }

LABEL_162:
      if (v106)
      {
        free(v106);
      }

      v33 = 1;
LABEL_30:
      if ((v29 & 1) == 0)
      {
        v34 = a2[5];
        v35 = a2;
        if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v35 = a2[8]) != 0)
        {
          v36 = v35[11];
          if (v36)
          {
            v37 = v36 - 1;
            v35[11] = v37;
            if (!v37)
            {
              v38 = v35[8];
              if (v38)
              {
                v35[8] = 0;
                v38[2](v38);
                _Block_release(v38);
              }

              if (v35[9])
              {
                v39 = v35[8];
                if (v39)
                {
                  _Block_release(v39);
                }
              }

              free(v35);
            }
          }
        }
      }

      v17 = a9;
      if ((v108 & 1) == 0)
      {
        v40 = *(v18 + 40);
        if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v18 = *(v18 + 64)) != 0)
        {
          v41 = *(v18 + 88);
          if (v41)
          {
            v42 = v41 - 1;
            *(v18 + 88) = v42;
            if (!v42)
            {
              v43 = *(v18 + 64);
              if (v43)
              {
                *(v18 + 64) = 0;
                v43[2](v43);
                _Block_release(v43);
              }

              if (*(v18 + 72))
              {
                v44 = *(v18 + 64);
                if (v44)
                {
                  _Block_release(v44);
                }
              }

              free(v18);
            }
          }
        }
      }

      v45 = a8;
      if (v33 || *(a1 + 140) == 2)
      {
        goto LABEL_78;
      }

      *type = 0;
      v115 = type;
      v116 = 0x2000000000;
      v117 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
      v119 = &unk_1E6A2BE58;
      *&v120[16] = a1;
      v121 = a6;
      v129 = 1;
      v122 = &v111;
      v123 = a11;
      v124 = v110;
      v125 = a9;
      v126 = a2;
      *v120 = type;
      *&v120[8] = a7;
      v127 = a10;
      v128 = a3;
      v46 = v111;
      do
      {
        if (!v46)
        {
          break;
        }

        v47 = *(v46 + 32);
        v48 = (*&buf[16])(buf);
        v46 = v47;
      }

      while ((v48 & 1) != 0);
      v49 = *(v115 + 6);
      _Block_object_dispose(type, 8);
      v50 = __CFADD__(*a8, v49);
      *a8 += v49;
      if (!v50)
      {
        goto LABEL_78;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = *a8;
      *buf = 136446978;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      *&buf[12] = 2082;
      *&buf[14] = "count";
      *&buf[22] = 2048;
      v119 = v49;
      *v120 = 2048;
      *&v120[2] = v51;
      v52 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v113 = 0;
      if (__nwlog_fault(v52, type, &v113))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          v54 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v55 = *a8;
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v119 = v49;
            *v120 = 2048;
            *&v120[2] = v55;
            v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_74:
            _os_log_impl(&dword_181A37000, v53, v54, v56, buf, 0x2Au);
          }
        }

        else if (v113 == 1)
        {
          v57 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v54 = type[0];
          v58 = os_log_type_enabled(v53, type[0]);
          if (v57)
          {
            if (v58)
            {
              v59 = *a8;
              *buf = 136447234;
              *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
              *&buf[12] = 2082;
              *&buf[14] = "count";
              *&buf[22] = 2048;
              v119 = v49;
              *v120 = 2048;
              *&v120[2] = v59;
              *&v120[10] = 2082;
              *&v120[12] = v57;
              _os_log_impl(&dword_181A37000, v53, v54, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v57);
            v45 = a8;
            goto LABEL_75;
          }

          v45 = a8;
          if (v58)
          {
            v61 = *a8;
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v119 = v49;
            *v120 = 2048;
            *&v120[2] = v61;
            v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_74;
          }
        }

        else
        {
          v53 = __nwlog_obj();
          v54 = type[0];
          if (os_log_type_enabled(v53, type[0]))
          {
            v60 = *a8;
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v119 = v49;
            *v120 = 2048;
            *&v120[2] = v60;
            v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_74;
          }
        }
      }

LABEL_75:
      if (v52)
      {
        free(v52);
      }

      *v45 = -1;
      v17 = a9;
LABEL_78:
      v62 = v111;
      if (v111)
      {
        if (gLogDatapath != 1)
        {
          goto LABEL_80;
        }

        v97 = __nwlog_obj();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
          _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s new_input_array is not empty after processing input frames, moving to saved_input_frames for later", buf, 0xCu);
        }

        v62 = v111;
        if (v111)
        {
LABEL_80:
          v63 = *(a1 + 8);
          *v63 = v62;
          v64 = v112;
          *(v111 + 40) = v63;
          *(a1 + 8) = v64;
        }

        v111 = 0;
        v112 = &v111;
      }

      if (*v45 && *v110)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v65 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          nw_frame_array_get_frame_count(a11, 1, buf);
          v66 = *buf;
          v67 = *v45;
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 1024;
          *&buf[20] = v66;
          LOWORD(v119) = 1024;
          *(&v119 + 2) = v67;
          _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s could not fulfill minimum byte requirement of %u bytes (have %u bytes in %u frames), saving in input_frames_pending_delivery for later", buf, 0x1Eu);
        }

        if (*a11)
        {
          v68 = *(a1 + 24);
          *v68 = *a11;
          *(*a11 + 40) = v68;
          *(a1 + 24) = a11[1];
        }

        v69 = 0;
        *a11 = 0;
        a11[1] = a11;
        *v45 = 0;
        *v17 = 0;
      }

      else
      {
        v69 = *v17;
      }

      nw_protocol_plugin_metadata_report_transfer(a1, a2, *(a1 + 48), v69, 1);
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_input_frames";
    v89 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v113 = 0;
    v45 = a8;
    if (__nwlog_fault(v89, type, &v113))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v90 = __nwlog_obj();
        v91 = type[0];
        if (!os_log_type_enabled(v90, type[0]))
        {
          goto LABEL_183;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v92 = "%{public}s called with null protocol";
        goto LABEL_182;
      }

      if (v113 != 1)
      {
        v90 = __nwlog_obj();
        v91 = type[0];
        if (!os_log_type_enabled(v90, type[0]))
        {
          goto LABEL_183;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v92 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_182;
      }

      v98 = __nw_create_backtrace_string();
      v90 = __nwlog_obj();
      v91 = type[0];
      v99 = os_log_type_enabled(v90, type[0]);
      if (v98)
      {
        if (v99)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v98;
          _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v98);
        v45 = a8;
        goto LABEL_183;
      }

      v45 = a8;
      if (v99)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v92 = "%{public}s called with null protocol, no backtrace";
LABEL_182:
        _os_log_impl(&dword_181A37000, v90, v91, v92, buf, 0xCu);
      }
    }

LABEL_183:
    if (v89)
    {
      free(v89);
    }

    goto LABEL_78;
  }

  if (gLogDatapath == 1)
  {
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = "invalid";
      if (a2 && a2[2])
      {
        v25 = a2[2];
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_plugin_metadata_get_and_process_frames";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2080;
      v119 = v25;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s short circuiting because protocol %p:%s has already handled eof", buf, 0x20u);
    }
  }
}

uint64_t __nw_protocol_plugin_metadata_process_frames_block_invoke(uint64_t a1, void *a2)
{
  v285 = *MEMORY[0x1E69E9840];
  v278 = a2;
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    v209 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v276 = 0;
    if (!__nwlog_fault(v209, &type, &v276))
    {
      goto LABEL_353;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v210 = __nwlog_obj();
      v211 = type;
      if (!os_log_type_enabled(v210, type))
      {
        goto LABEL_353;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v212 = "%{public}s called with null frame";
    }

    else if (v276 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v210 = __nwlog_obj();
      v211 = type;
      v249 = os_log_type_enabled(v210, type);
      if (backtrace_string)
      {
        if (v249)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v210, v211, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_353;
      }

      if (!v249)
      {
LABEL_353:
        if (v209)
        {
          free(v209);
        }

        goto LABEL_24;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v212 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v210 = __nwlog_obj();
      v211 = type;
      if (!os_log_type_enabled(v210, type))
      {
        goto LABEL_353;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v212 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v210, v211, v212, buf, 0xCu);
    goto LABEL_353;
  }

  if (!**(a1 + 40))
  {
    if (!gLogDatapath)
    {
      goto LABEL_24;
    }

    v250 = __nwlog_obj();
    if (!os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    v77 = "%{public}s stopping after reaching maximum frame count";
    v78 = v250;
    v79 = 12;
    goto LABEL_332;
  }

  if (gLogDatapath)
  {
    v246 = a2;
    v247 = __nwlog_obj();
    if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v246;
      _os_log_impl(&dword_181A37000, v247, OS_LOG_TYPE_DEBUG, "%{public}s processing frame %p", buf, 0x16u);
      a2 = v278;
    }

    else
    {
      a2 = v246;
    }
  }

  v3 = nw_frame_copy_metadata_for_protocol(a2, *(*(a1 + 48) + 80));
  if (!v3)
  {
    v28 = nw_frame_unclaimed_length(v278);
    if (v28 > **(a1 + 56))
    {
      if (*(a1 + 120) == 1)
      {
        if (gLogDatapath)
        {
          v261 = __nwlog_obj();
          if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
          {
            v262 = **(a1 + 56);
            *buf = 136446722;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v278;
            *&buf[22] = 1024;
            LODWORD(v280) = v262;
            _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_DEBUG, "%{public}s splitting frame %p with unknown metadata by offset %u", buf, 0x1Cu);
          }
        }

        v29 = v278;
        v30 = (*(a1 + 64) + 8);
        v31 = v278[4];
        v32 = v278[5];
        if (v31)
        {
          v30 = (v31 + 40);
        }

        *v30 = v32;
        *v32 = v31;
        v29[4] = 0;
        v29[5] = 0;
        v33 = nw_frame_split(&v278, **(a1 + 56));
        nw_frame_array_prepend(*(a1 + 64), 1, v278);
        v34 = *(a1 + 72);
        *(v33 + 32) = 0;
        v35 = *(v34 + 8);
        *(v33 + 40) = v35;
        *v35 = v33;
        *(v34 + 8) = v33 + 32;
        **(a1 + 80) = 0;
        **(a1 + 56) = 0;
        v36 = *(a1 + 40);
        if ((*v36)--)
        {
LABEL_188:
          v150 = *(a1 + 88);
          v151 = **(a1 + 56);
          v62 = __CFADD__(*v150, v151);
          *v150 += v151;
          if (!v62)
          {
            goto LABEL_207;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v152 = **(a1 + 56);
          v153 = **(a1 + 88);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "moved_bytes";
          *&buf[22] = 2048;
          v280 = v152;
          v281 = 2048;
          v282 = v153;
          v154 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v276 = 0;
          if (__nwlog_fault(v154, &type, &v276))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v155 = __nwlog_obj();
              v156 = type;
              if (os_log_type_enabled(v155, type))
              {
                v157 = **(a1 + 56);
                v158 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v280 = v157;
                v281 = 2048;
                v282 = v158;
                v159 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_203:
                _os_log_impl(&dword_181A37000, v155, v156, v159, buf, 0x2Au);
              }
            }

            else if (v276 == 1)
            {
              v160 = __nw_create_backtrace_string();
              v155 = __nwlog_obj();
              v156 = type;
              v161 = os_log_type_enabled(v155, type);
              if (v160)
              {
                if (v161)
                {
                  v162 = **(a1 + 56);
                  v163 = **(a1 + 88);
                  *buf = 136447234;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "moved_bytes";
                  *&buf[22] = 2048;
                  v280 = v162;
                  v281 = 2048;
                  v282 = v163;
                  v283 = 2082;
                  v284 = v160;
                  _os_log_impl(&dword_181A37000, v155, v156, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v160);
                goto LABEL_204;
              }

              if (v161)
              {
                v166 = **(a1 + 56);
                v167 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v280 = v166;
                v281 = 2048;
                v282 = v167;
                v159 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_203;
              }
            }

            else
            {
              v155 = __nwlog_obj();
              v156 = type;
              if (os_log_type_enabled(v155, type))
              {
                v164 = **(a1 + 56);
                v165 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v280 = v164;
                v281 = 2048;
                v282 = v165;
                v159 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_203;
              }
            }
          }

LABEL_204:
          if (v154)
          {
            free(v154);
          }

          **(a1 + 88) = -1;
LABEL_207:
          v168 = *(*(a1 + 32) + 8);
          v169 = *(v168 + 24) + 1;
          *(v168 + 24) = v169;
          if (v169 != v169 << 31 >> 31)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v170 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v280 = 1;
            v281 = 2048;
            v282 = v170;
            v171 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v276 = 0;
            if (__nwlog_fault(v171, &type, &v276))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v172 = __nwlog_obj();
                v173 = type;
                if (os_log_type_enabled(v172, type))
                {
                  v174 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v174;
                  v175 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_221:
                  _os_log_impl(&dword_181A37000, v172, v173, v175, buf, 0x2Au);
                }
              }

              else if (v276 == 1)
              {
                v176 = __nw_create_backtrace_string();
                v172 = __nwlog_obj();
                v173 = type;
                v177 = os_log_type_enabled(v172, type);
                if (v176)
                {
                  if (v177)
                  {
                    v178 = *(*(*(a1 + 32) + 8) + 24);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "count";
                    *&buf[22] = 2048;
                    v280 = 1;
                    v281 = 2048;
                    v282 = v178;
                    v283 = 2082;
                    v284 = v176;
                    _os_log_impl(&dword_181A37000, v172, v173, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v176);
                  goto LABEL_222;
                }

                if (v177)
                {
                  v180 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v180;
                  v175 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_221;
                }
              }

              else
              {
                v172 = __nwlog_obj();
                v173 = type;
                if (os_log_type_enabled(v172, type))
                {
                  v179 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v179;
                  v175 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_221;
                }
              }
            }

LABEL_222:
            if (v171)
            {
              free(v171);
            }

            v27 = 0;
            *(*(*(a1 + 32) + 8) + 24) = -1;
            return v27 & 1;
          }

LABEL_24:
          v27 = 0;
          return v27 & 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = **(a1 + 40);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "maximum_frame_count";
        *&buf[22] = 2048;
        v280 = 1;
        v281 = 2048;
        v282 = v38;
        v39 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v276 = 0;
        if (__nwlog_fault(v39, &type, &v276))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v40 = __nwlog_obj();
            v41 = type;
            if (os_log_type_enabled(v40, type))
            {
              v42 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v42;
              v43 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_184:
              _os_log_impl(&dword_181A37000, v40, v41, v43, buf, 0x2Au);
            }
          }

          else if (v276 == 1)
          {
            v110 = __nw_create_backtrace_string();
            v40 = __nwlog_obj();
            v41 = type;
            v111 = os_log_type_enabled(v40, type);
            if (v110)
            {
              if (v111)
              {
                v112 = **(a1 + 40);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "maximum_frame_count";
                *&buf[22] = 2048;
                v280 = 1;
                v281 = 2048;
                v282 = v112;
                v283 = 2082;
                v284 = v110;
                _os_log_impl(&dword_181A37000, v40, v41, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v110);
              goto LABEL_185;
            }

            if (v111)
            {
              v149 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v149;
              v43 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_184;
            }
          }

          else
          {
            v40 = __nwlog_obj();
            v41 = type;
            if (os_log_type_enabled(v40, type))
            {
              v114 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v114;
              v43 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_184;
            }
          }
        }

LABEL_185:
        if (v39)
        {
          free(v39);
        }

        **(a1 + 40) = 0;
        goto LABEL_188;
      }

      if (!gLogDatapath)
      {
        goto LABEL_24;
      }

      v75 = __nwlog_obj();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v76 = **(a1 + 56);
      *buf = 136446722;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v28;
      *&buf[18] = 1024;
      *&buf[20] = v76;
      v77 = "%{public}s not delivering frame with length %u maximum bytes %u";
      v78 = v75;
      v79 = 24;
LABEL_332:
      _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, v77, buf, v79);
      v27 = 0;
      return v27 & 1;
    }

    if (gLogDatapath == 1)
    {
      v260 = __nwlog_obj();
      if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v278;
        _os_log_impl(&dword_181A37000, v260, OS_LOG_TYPE_DEBUG, "%{public}s delivering frame %p with unknown metadata", buf, 0x16u);
      }
    }

    v53 = v278;
    v54 = (*(a1 + 64) + 8);
    v55 = v278[4];
    v56 = v278[5];
    if (v55)
    {
      v54 = (v55 + 40);
    }

    *v54 = v56;
    *v56 = v55;
    v53[4] = 0;
    v53[5] = 0;
    v57 = *(a1 + 72);
    v58 = v278;
    v59 = v278;
    v278[4] = 0;
    v60 = *(v57 + 8);
    v58[5] = v60;
    *v60 = v58;
    *(v57 + 8) = v59 + 4;
    v61 = *(a1 + 80);
    v62 = *v61 >= v28;
    *v61 -= v28;
    if (!v62)
    {
      if (gLogDatapath == 1)
      {
        v263 = __nwlog_obj();
        if (os_log_type_enabled(v263, OS_LOG_TYPE_DEBUG))
        {
          v264 = **(a1 + 80);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "minimum_bytes";
          *&buf[22] = 2048;
          v280 = v28;
          v281 = 2048;
          v282 = v264;
          _os_log_impl(&dword_181A37000, v263, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 80) = 0;
    }

    v63 = *(a1 + 56);
    v62 = *v63 >= v28;
    *v63 -= v28;
    if (!v62)
    {
      if (gLogDatapath == 1)
      {
        v265 = __nwlog_obj();
        if (os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
        {
          v266 = **(a1 + 56);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_bytes";
          *&buf[22] = 2048;
          v280 = v28;
          v281 = 2048;
          v282 = v266;
          _os_log_impl(&dword_181A37000, v265, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 56) = 0;
    }

    v64 = *(a1 + 40);
    if ((*v64)--)
    {
LABEL_135:
      v119 = *(a1 + 88);
      v62 = __CFADD__(*v119, v28);
      *v119 += v28;
      if (!v62)
      {
        goto LABEL_154;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v120 = v28;
      v121 = **(a1 + 88);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = "moved_bytes";
      *&buf[22] = 2048;
      v280 = v28;
      v281 = 2048;
      v282 = v121;
      v122 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v276 = 0;
      if (__nwlog_fault(v122, &type, &v276))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v123 = gLogObj;
          v124 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v125 = **(a1 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "moved_bytes";
            *&buf[22] = 2048;
            v280 = v120;
            v281 = 2048;
            v282 = v125;
            v126 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_150:
            _os_log_impl(&dword_181A37000, v123, v124, v126, buf, 0x2Au);
          }
        }

        else if (v276 == 1)
        {
          v127 = __nw_create_backtrace_string();
          v123 = __nwlog_obj();
          v124 = type;
          v128 = os_log_type_enabled(v123, type);
          if (v127)
          {
            if (v128)
            {
              v129 = **(a1 + 88);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "moved_bytes";
              *&buf[22] = 2048;
              v280 = v120;
              v281 = 2048;
              v282 = v129;
              v283 = 2082;
              v284 = v127;
              _os_log_impl(&dword_181A37000, v123, v124, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v127);
            goto LABEL_151;
          }

          if (v128)
          {
            v131 = **(a1 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "moved_bytes";
            *&buf[22] = 2048;
            v280 = v120;
            v281 = 2048;
            v282 = v131;
            v126 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_150;
          }
        }

        else
        {
          v123 = __nwlog_obj();
          v124 = type;
          if (os_log_type_enabled(v123, type))
          {
            v130 = **(a1 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "moved_bytes";
            *&buf[22] = 2048;
            v280 = v120;
            v281 = 2048;
            v282 = v130;
            v126 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_150;
          }
        }
      }

LABEL_151:
      if (v122)
      {
        free(v122);
      }

      **(a1 + 88) = -1;
LABEL_154:
      v132 = *(*(a1 + 32) + 8);
      v133 = *(v132 + 24) + 1;
      *(v132 + 24) = v133;
      if (v133 == v133 << 31 >> 31)
      {
LABEL_172:
        if (nw_frame_is_metadata_complete(v278))
        {
          **(a1 + 80) = 0;
        }

        v27 = 1;
        return v27 & 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v134 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = "count";
      *&buf[22] = 2048;
      v280 = 1;
      v281 = 2048;
      v282 = v134;
      v135 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v276 = 0;
      if (__nwlog_fault(v135, &type, &v276))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v136 = gLogObj;
          v137 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v138 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v280 = 1;
            v281 = 2048;
            v282 = v138;
            v139 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_168:
            _os_log_impl(&dword_181A37000, v136, v137, v139, buf, 0x2Au);
          }
        }

        else if (v276 == 1)
        {
          v140 = __nw_create_backtrace_string();
          v136 = __nwlog_obj();
          v137 = type;
          v141 = os_log_type_enabled(v136, type);
          if (v140)
          {
            if (v141)
            {
              v142 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v142;
              v283 = 2082;
              v284 = v140;
              _os_log_impl(&dword_181A37000, v136, v137, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v140);
            goto LABEL_169;
          }

          if (v141)
          {
            v144 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v280 = 1;
            v281 = 2048;
            v282 = v144;
            v139 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_168;
          }
        }

        else
        {
          v136 = __nwlog_obj();
          v137 = type;
          if (os_log_type_enabled(v136, type))
          {
            v143 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v280 = 1;
            v281 = 2048;
            v282 = v143;
            v139 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_168;
          }
        }
      }

LABEL_169:
      if (v135)
      {
        free(v135);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_172;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v66 = **(a1 + 40);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = "maximum_frame_count";
    *&buf[22] = 2048;
    v280 = 1;
    v281 = 2048;
    v282 = v66;
    v67 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v276 = 0;
    if (__nwlog_fault(v67, &type, &v276))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v68 = gLogObj;
        v69 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v70 = **(a1 + 40);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_frame_count";
          *&buf[22] = 2048;
          v280 = 1;
          v281 = 2048;
          v282 = v70;
          v71 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_131:
          _os_log_impl(&dword_181A37000, v68, v69, v71, buf, 0x2Au);
        }
      }

      else if (v276 == 1)
      {
        v105 = __nw_create_backtrace_string();
        v68 = __nwlog_obj();
        v69 = type;
        v106 = os_log_type_enabled(v68, type);
        if (v105)
        {
          if (v106)
          {
            v107 = **(a1 + 40);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "maximum_frame_count";
            *&buf[22] = 2048;
            v280 = 1;
            v281 = 2048;
            v282 = v107;
            v283 = 2082;
            v284 = v105;
            _os_log_impl(&dword_181A37000, v68, v69, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v105);
          goto LABEL_132;
        }

        if (v106)
        {
          v118 = **(a1 + 40);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_frame_count";
          *&buf[22] = 2048;
          v280 = 1;
          v281 = 2048;
          v282 = v118;
          v71 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_131;
        }
      }

      else
      {
        v68 = __nwlog_obj();
        v69 = type;
        if (os_log_type_enabled(v68, type))
        {
          v113 = **(a1 + 40);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_frame_count";
          *&buf[22] = 2048;
          v280 = 1;
          v281 = 2048;
          v282 = v113;
          v71 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_131;
        }
      }
    }

LABEL_132:
    if (v67)
    {
      free(v67);
    }

    **(a1 + 40) = 0;
    goto LABEL_135;
  }

  v4 = v3;
  v5 = *(a1 + 120);
  v6 = *(a1 + 48);
  v7 = 64;
  if (*(a1 + 120))
  {
    v7 = 48;
  }

  if (*(v6 + v7) != v3 && (*(v6 + 142) & 1) != 0)
  {
    if (gLogDatapath == 1)
    {
      v257 = __nwlog_obj();
      v258 = os_log_type_enabled(v257, OS_LOG_TYPE_DEBUG);
      LOBYTE(v5) = *(a1 + 120);
      if (v258)
      {
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *buf = 136446722;
        if (v5)
        {
          v259 = "input";
        }

        else
        {
          v259 = "output";
        }

        *&buf[12] = 2048;
        *&buf[14] = v278;
        *&buf[22] = 2080;
        v280 = v259;
        _os_log_impl(&dword_181A37000, v257, OS_LOG_TYPE_DEBUG, "%{public}s frame %p begins a %s new message", buf, 0x20u);
        LOBYTE(v5) = *(a1 + 120);
      }
    }

    v50 = *(a1 + 48);
    if (v5)
    {
      v51 = *(v50 + 56);
      if (v51)
      {
        v52 = *(v50 + 48);
        if (v52)
        {
          os_release(v52);
          v51 = *(v50 + 56);
        }
      }

      *(v50 + 48) = v4;
      *(v50 + 56) = v51 | 1;
      *(*(a1 + 48) + 140) = 0;
    }

    else
    {
      v72 = *(v50 + 72);
      if (v72)
      {
        v73 = *(v50 + 64);
        if (v73)
        {
          os_release(v73);
          v72 = *(v50 + 72);
        }
      }

      *(v50 + 64) = v4;
      *(v50 + 72) = v72 | 1;
      *(*(a1 + 48) + 141) = 0;
    }

    v4 = 0;
  }

  else
  {
    v8 = v5 == 0;
    v9 = 140;
    if (v8)
    {
      v9 = 141;
    }

    v10 = *(v6 + v9);
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = nw_frame_unclaimed_length(v278);
        if (v11 > **(a1 + 56))
        {
          if (*(a1 + 120) == 1)
          {
            if (gLogDatapath)
            {
              v269 = __nwlog_obj();
              if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
              {
                v270 = **(a1 + 56);
                *buf = 136446722;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2048;
                *&buf[14] = v278;
                *&buf[22] = 1024;
                LODWORD(v280) = v270;
                _os_log_impl(&dword_181A37000, v269, OS_LOG_TYPE_DEBUG, "%{public}s splitting frame %p that is part of handled message by offset %u", buf, 0x1Cu);
              }
            }

            v12 = v278;
            v13 = (*(a1 + 64) + 8);
            v14 = v278[4];
            v15 = v278[5];
            if (v14)
            {
              v13 = (v14 + 40);
            }

            *v13 = v15;
            *v15 = v14;
            v12[4] = 0;
            v12[5] = 0;
            v16 = nw_frame_split(&v278, **(a1 + 56));
            nw_frame_array_prepend(*(a1 + 64), 1, v278);
            v17 = *(a1 + 72);
            *(v16 + 32) = 0;
            v18 = *(v17 + 8);
            *(v16 + 40) = v18;
            *v18 = v16;
            *(v17 + 8) = v16 + 32;
            **(a1 + 80) = 0;
            **(a1 + 56) = 0;
            v19 = *(a1 + 40);
            if ((*v19)--)
            {
LABEL_283:
              v214 = *(a1 + 88);
              v215 = **(a1 + 56);
              v62 = __CFADD__(*v214, v215);
              *v214 += v215;
              if (!v62)
              {
                goto LABEL_302;
              }

              __nwlog_obj();
              v216 = **(a1 + 56);
              v217 = **(a1 + 88);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "moved_bytes";
              *&buf[22] = 2048;
              v280 = v216;
              v281 = 2048;
              v282 = v217;
              v218 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v276 = 0;
              if (__nwlog_fault(v218, &type, &v276))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v219 = __nwlog_obj();
                  v220 = type;
                  if (os_log_type_enabled(v219, type))
                  {
                    v221 = **(a1 + 56);
                    v222 = **(a1 + 88);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "moved_bytes";
                    *&buf[22] = 2048;
                    v280 = v221;
                    v281 = 2048;
                    v282 = v222;
                    v223 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_298:
                    _os_log_impl(&dword_181A37000, v219, v220, v223, buf, 0x2Au);
                  }
                }

                else if (v276 == 1)
                {
                  v224 = __nw_create_backtrace_string();
                  v219 = __nwlog_obj();
                  v220 = type;
                  v225 = os_log_type_enabled(v219, type);
                  if (v224)
                  {
                    if (v225)
                    {
                      v226 = **(a1 + 56);
                      v227 = **(a1 + 88);
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "moved_bytes";
                      *&buf[22] = 2048;
                      v280 = v226;
                      v281 = 2048;
                      v282 = v227;
                      v283 = 2082;
                      v284 = v224;
                      _os_log_impl(&dword_181A37000, v219, v220, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v224);
                    goto LABEL_299;
                  }

                  if (v225)
                  {
                    v230 = **(a1 + 56);
                    v231 = **(a1 + 88);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "moved_bytes";
                    *&buf[22] = 2048;
                    v280 = v230;
                    v281 = 2048;
                    v282 = v231;
                    v223 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_298;
                  }
                }

                else
                {
                  v219 = __nwlog_obj();
                  v220 = type;
                  if (os_log_type_enabled(v219, type))
                  {
                    v228 = **(a1 + 56);
                    v229 = **(a1 + 88);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "moved_bytes";
                    *&buf[22] = 2048;
                    v280 = v228;
                    v281 = 2048;
                    v282 = v229;
                    v223 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_298;
                  }
                }
              }

LABEL_299:
              if (v218)
              {
                free(v218);
              }

              **(a1 + 88) = -1;
LABEL_302:
              v232 = *(*(a1 + 32) + 8);
              v233 = *(v232 + 24) + 1;
              *(v232 + 24) = v233;
              if (v233 != v233 << 31 >> 31)
              {
                __nwlog_obj();
                v234 = *(*(*(a1 + 32) + 8) + 24);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v280 = 1;
                v281 = 2048;
                v282 = v234;
                v235 = _os_log_send_and_compose_impl();
                type = OS_LOG_TYPE_ERROR;
                v276 = 0;
                if (__nwlog_fault(v235, &type, &v276))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v236 = __nwlog_obj();
                    v237 = type;
                    if (os_log_type_enabled(v236, type))
                    {
                      v238 = *(*(*(a1 + 32) + 8) + 24);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "count";
                      *&buf[22] = 2048;
                      v280 = 1;
                      v281 = 2048;
                      v282 = v238;
                      v239 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_319:
                      _os_log_impl(&dword_181A37000, v236, v237, v239, buf, 0x2Au);
                    }
                  }

                  else if (v276 == 1)
                  {
                    v241 = __nw_create_backtrace_string();
                    v236 = __nwlog_obj();
                    v237 = type;
                    v242 = os_log_type_enabled(v236, type);
                    if (v241)
                    {
                      if (v242)
                      {
                        v243 = *(*(*(a1 + 32) + 8) + 24);
                        *buf = 136447234;
                        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                        *&buf[12] = 2082;
                        *&buf[14] = "count";
                        *&buf[22] = 2048;
                        v280 = 1;
                        v281 = 2048;
                        v282 = v243;
                        v283 = 2082;
                        v284 = v241;
                        _os_log_impl(&dword_181A37000, v236, v237, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v241);
                      goto LABEL_320;
                    }

                    if (v242)
                    {
                      v245 = *(*(*(a1 + 32) + 8) + 24);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "count";
                      *&buf[22] = 2048;
                      v280 = 1;
                      v281 = 2048;
                      v282 = v245;
                      v239 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                      goto LABEL_319;
                    }
                  }

                  else
                  {
                    v236 = __nwlog_obj();
                    v237 = type;
                    if (os_log_type_enabled(v236, type))
                    {
                      v244 = *(*(*(a1 + 32) + 8) + 24);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "count";
                      *&buf[22] = 2048;
                      v280 = 1;
                      v281 = 2048;
                      v282 = v244;
                      v239 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                      goto LABEL_319;
                    }
                  }
                }

LABEL_320:
                if (v235)
                {
                  free(v235);
                }

                v27 = 0;
                *(*(*(a1 + 32) + 8) + 24) = -1;
                goto LABEL_308;
              }

              goto LABEL_307;
            }

            __nwlog_obj();
            v21 = **(a1 + 40);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "maximum_frame_count";
            *&buf[22] = 2048;
            v280 = 1;
            v281 = 2048;
            v282 = v21;
            v22 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v276 = 0;
            if (__nwlog_fault(v22, &type, &v276))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v23 = __nwlog_obj();
                v24 = type;
                if (os_log_type_enabled(v23, type))
                {
                  v25 = **(a1 + 40);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "maximum_frame_count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v25;
                  v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_279:
                  _os_log_impl(&dword_181A37000, v23, v24, v26, buf, 0x2Au);
                }
              }

              else if (v276 == 1)
              {
                v145 = __nw_create_backtrace_string();
                v23 = __nwlog_obj();
                v24 = type;
                v146 = os_log_type_enabled(v23, type);
                if (v145)
                {
                  if (v146)
                  {
                    v147 = **(a1 + 40);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "maximum_frame_count";
                    *&buf[22] = 2048;
                    v280 = 1;
                    v281 = 2048;
                    v282 = v147;
                    v283 = 2082;
                    v284 = v145;
                    _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v145);
                  goto LABEL_280;
                }

                if (v146)
                {
                  v213 = **(a1 + 40);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "maximum_frame_count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v213;
                  v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                  goto LABEL_279;
                }
              }

              else
              {
                v23 = __nwlog_obj();
                v24 = type;
                if (os_log_type_enabled(v23, type))
                {
                  v181 = **(a1 + 40);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "maximum_frame_count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v181;
                  v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_279;
                }
              }
            }

LABEL_280:
            if (v22)
            {
              free(v22);
            }

            **(a1 + 40) = 0;
            goto LABEL_283;
          }

          if (gLogDatapath)
          {
            v108 = __nwlog_obj();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
            {
              v109 = **(a1 + 56);
              *buf = 136446722;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 1024;
              *&buf[14] = v11;
              *&buf[18] = 1024;
              *&buf[20] = v109;
              _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s not delivering frame with length %u maximum bytes %u", buf, 0x18u);
            }
          }

LABEL_307:
          v27 = 0;
          goto LABEL_308;
        }

        if (gLogDatapath == 1)
        {
          v268 = __nwlog_obj();
          if (os_log_type_enabled(v268, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v278;
            _os_log_impl(&dword_181A37000, v268, OS_LOG_TYPE_DEBUG, "%{public}s delivering frame %p that is part of handled message", buf, 0x16u);
          }
        }

        v84 = v278;
        v85 = (*(a1 + 64) + 8);
        v86 = v278[4];
        v87 = v278[5];
        if (v86)
        {
          v85 = (v86 + 40);
        }

        *v85 = v87;
        *v87 = v86;
        v84[4] = 0;
        v84[5] = 0;
        v88 = *(a1 + 72);
        v89 = v278;
        v90 = v278;
        v278[4] = 0;
        v91 = *(v88 + 8);
        v89[5] = v91;
        *v91 = v89;
        *(v88 + 8) = v90 + 4;
        v92 = *(a1 + 80);
        v93 = &unk_182B08000;
        v62 = *v92 >= v11;
        *v92 -= v11;
        if (!v62)
        {
          if (gLogDatapath == 1)
          {
            v271 = __nwlog_obj();
            if (os_log_type_enabled(v271, OS_LOG_TYPE_DEBUG))
            {
              v272 = **(a1 + 80);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "minimum_bytes";
              *&buf[22] = 2048;
              v280 = v11;
              v281 = 2048;
              v282 = v272;
              _os_log_impl(&dword_181A37000, v271, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          **(a1 + 80) = 0;
        }

        v94 = *(a1 + 56);
        v62 = *v94 >= v11;
        *v94 -= v11;
        if (!v62)
        {
          if (gLogDatapath == 1)
          {
            v273 = __nwlog_obj();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG))
            {
              v274 = **(a1 + 56);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_bytes";
              *&buf[22] = 2048;
              v280 = v11;
              v281 = 2048;
              v282 = v274;
              _os_log_impl(&dword_181A37000, v273, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          **(a1 + 56) = 0;
        }

        v95 = *(a1 + 40);
        if ((*v95)--)
        {
LABEL_233:
          v183 = *(a1 + 88);
          v62 = __CFADD__(*v183, v11);
          *v183 += v11;
          if (!v62)
          {
            goto LABEL_252;
          }

          __nwlog_obj();
          v184 = v11;
          v185 = **(a1 + 88);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "moved_bytes";
          *&buf[22] = 2048;
          v280 = v11;
          v281 = 2048;
          v282 = v185;
          v186 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v276 = 0;
          if (__nwlog_fault(v186, &type, &v276))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v187 = __nwlog_obj();
              v188 = type;
              if (os_log_type_enabled(v187, type))
              {
                v189 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v280 = v184;
                v281 = 2048;
                v282 = v189;
                v190 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_248:
                _os_log_impl(&dword_181A37000, v187, v188, v190, buf, 0x2Au);
              }
            }

            else if (v276 == 1)
            {
              v191 = __nw_create_backtrace_string();
              v187 = __nwlog_obj();
              v188 = type;
              v192 = os_log_type_enabled(v187, type);
              if (v191)
              {
                if (v192)
                {
                  v193 = **(a1 + 88);
                  *buf = 136447234;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "moved_bytes";
                  *&buf[22] = 2048;
                  v280 = v184;
                  v281 = 2048;
                  v282 = v193;
                  v283 = 2082;
                  v284 = v191;
                  _os_log_impl(&dword_181A37000, v187, v188, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v191);
                v93 = &unk_182B08000;
                goto LABEL_249;
              }

              v93 = &unk_182B08000;
              if (v192)
              {
                v195 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v280 = v184;
                v281 = 2048;
                v282 = v195;
                v190 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_248;
              }
            }

            else
            {
              v187 = __nwlog_obj();
              v188 = type;
              if (os_log_type_enabled(v187, type))
              {
                v194 = **(a1 + 88);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "moved_bytes";
                *&buf[22] = 2048;
                v280 = v184;
                v281 = 2048;
                v282 = v194;
                v190 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_248;
              }
            }
          }

LABEL_249:
          if (v186)
          {
            free(v186);
          }

          **(a1 + 88) = -1;
LABEL_252:
          v196 = *(*(a1 + 32) + 8);
          v197 = *(v196 + 24) + 1;
          *(v196 + 24) = v197;
          if (v197 == v197 << 31 >> 31)
          {
LABEL_270:
            if (nw_frame_is_metadata_complete(v278))
            {
              **(a1 + 80) = 0;
            }

LABEL_272:
            v27 = 1;
LABEL_308:
            os_release(v4);
            return v27 & 1;
          }

          __nwlog_obj();
          v198 = *(*(*(a1 + 32) + 8) + 24);
          v275 = v93[296];
          *buf = v275;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v280 = 1;
          v281 = 2048;
          v282 = v198;
          v199 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v276 = 0;
          if (__nwlog_fault(v199, &type, &v276))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v200 = __nwlog_obj();
              v201 = type;
              if (os_log_type_enabled(v200, type))
              {
                v202 = *(*(*(a1 + 32) + 8) + 24);
                *buf = v275;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v280 = 1;
                v281 = 2048;
                v282 = v202;
                v203 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_266:
                _os_log_impl(&dword_181A37000, v200, v201, v203, buf, 0x2Au);
              }
            }

            else if (v276 == 1)
            {
              v204 = __nw_create_backtrace_string();
              v200 = __nwlog_obj();
              v201 = type;
              v205 = os_log_type_enabled(v200, type);
              if (v204)
              {
                if (v205)
                {
                  v206 = *(*(*(a1 + 32) + 8) + 24);
                  *buf = 136447234;
                  *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = "count";
                  *&buf[22] = 2048;
                  v280 = 1;
                  v281 = 2048;
                  v282 = v206;
                  v283 = 2082;
                  v284 = v204;
                  _os_log_impl(&dword_181A37000, v200, v201, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v204);
                goto LABEL_267;
              }

              if (v205)
              {
                v208 = *(*(*(a1 + 32) + 8) + 24);
                *buf = v275;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v280 = 1;
                v281 = 2048;
                v282 = v208;
                v203 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_266;
              }
            }

            else
            {
              v200 = __nwlog_obj();
              v201 = type;
              if (os_log_type_enabled(v200, type))
              {
                v207 = *(*(*(a1 + 32) + 8) + 24);
                *buf = v275;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "count";
                *&buf[22] = 2048;
                v280 = 1;
                v281 = 2048;
                v282 = v207;
                v203 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_266;
              }
            }
          }

LABEL_267:
          if (v199)
          {
            free(v199);
          }

          *(*(*(a1 + 32) + 8) + 24) = -1;
          goto LABEL_270;
        }

        __nwlog_obj();
        v97 = **(a1 + 40);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "maximum_frame_count";
        *&buf[22] = 2048;
        v280 = 1;
        v281 = 2048;
        v282 = v97;
        v98 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v276 = 0;
        if (__nwlog_fault(v98, &type, &v276))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v99 = __nwlog_obj();
            v100 = type;
            if (os_log_type_enabled(v99, type))
            {
              v101 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v101;
              v102 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_229:
              _os_log_impl(&dword_181A37000, v99, v100, v102, buf, 0x2Au);
            }
          }

          else if (v276 == 1)
          {
            v115 = __nw_create_backtrace_string();
            v99 = __nwlog_obj();
            v100 = type;
            v116 = os_log_type_enabled(v99, type);
            if (v115)
            {
              if (v116)
              {
                v117 = **(a1 + 40);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = "maximum_frame_count";
                *&buf[22] = 2048;
                v280 = 1;
                v281 = 2048;
                v282 = v117;
                v283 = 2082;
                v284 = v115;
                _os_log_impl(&dword_181A37000, v99, v100, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v115);
              goto LABEL_230;
            }

            if (v116)
            {
              v182 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v182;
              v102 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_229;
            }
          }

          else
          {
            v99 = __nwlog_obj();
            v100 = type;
            if (os_log_type_enabled(v99, type))
            {
              v148 = **(a1 + 40);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = "maximum_frame_count";
              *&buf[22] = 2048;
              v280 = 1;
              v281 = 2048;
              v282 = v148;
              v102 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_229;
            }
          }
        }

LABEL_230:
        if (v98)
        {
          free(v98);
        }

        **(a1 + 40) = 0;
        v93 = &unk_182B08000;
        goto LABEL_233;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v80 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v276 = 0;
      if (__nwlog_fault(v80, &type, &v276))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v81 = gLogObj;
          v82 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v83 = "%{public}s current metadata processor result must not be unknown";
          goto LABEL_126;
        }

        if (v276 != 1)
        {
          v81 = __nwlog_obj();
          v82 = type;
          if (!os_log_type_enabled(v81, type))
          {
            goto LABEL_127;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v83 = "%{public}s current metadata processor result must not be unknown, backtrace limit exceeded";
          goto LABEL_126;
        }

        v103 = __nw_create_backtrace_string();
        v81 = __nwlog_obj();
        v82 = type;
        v104 = os_log_type_enabled(v81, type);
        if (v103)
        {
          if (v104)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v103;
            _os_log_impl(&dword_181A37000, v81, v82, "%{public}s current metadata processor result must not be unknown, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v103);
          goto LABEL_127;
        }

        if (v104)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v83 = "%{public}s current metadata processor result must not be unknown, no backtrace";
LABEL_126:
          _os_log_impl(&dword_181A37000, v81, v82, v83, buf, 0xCu);
        }
      }

LABEL_127:
      if (v80)
      {
        free(v80);
      }

      goto LABEL_272;
    }

    if (v10 == 2)
    {
      goto LABEL_307;
    }

    if (v10 == 3)
    {
      is_metadata_complete = nw_frame_is_metadata_complete(v278);
      if (gLogDatapath == 1)
      {
        v267 = __nwlog_obj();
        if (os_log_type_enabled(v267, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = v278;
          _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_DEBUG, "%{public}s discarding frame %p that is part of handled message", buf, 0x16u);
        }
      }

      v45 = v278;
      v46 = (*(a1 + 64) + 8);
      v47 = v278[4];
      v48 = v278[5];
      if (v47)
      {
        v46 = (v47 + 40);
      }

      *v46 = v48;
      *v48 = v47;
      v45[4] = 0;
      v45[5] = 0;
      nw_frame_finalize(v278);
      if (is_metadata_complete)
      {
        v49 = *(*(a1 + 48) + 120);
        if (v49)
        {
          v49(*(a1 + 96));
        }
      }

      goto LABEL_272;
    }
  }

  if (nw_frame_unclaimed_length(v278))
  {
    v74 = 0;
  }

  else
  {
    v74 = nw_frame_is_metadata_complete(v278);
  }

  if (gLogDatapath == 1)
  {
    v251 = v74;
    v252 = __nwlog_obj();
    if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
    {
      v253 = *(a1 + 96);
      v254 = "invalid";
      if (v253)
      {
        v255 = *(v253 + 16);
        if (v255)
        {
          v254 = v255;
        }
      }

      v256 = "output";
      if (*(a1 + 120))
      {
        v256 = "input";
      }

      *buf = 136447234;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v254;
      *&buf[22] = 2080;
      v280 = v256;
      v281 = 2048;
      v282 = v278;
      v283 = 1024;
      LODWORD(v284) = v251;
      _os_log_impl(&dword_181A37000, v252, OS_LOG_TYPE_DEBUG, "%{public}s calling %s processor with %s frame %p metadata_only %{BOOL}d", buf, 0x30u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v280) = 1;
  (*(a1 + 104))();
  v27 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if (v4)
  {
    goto LABEL_308;
  }

  return v27 & 1;
}

void nw_protocol_plugin_metadata_report_transfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return;
  }

  if (a3)
  {
    v5 = *(a1 + 112);
    if (v5)
    {

      v5(a2, a3, a4, a5);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_plugin_metadata_report_transfer";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "nw_protocol_plugin_metadata_report_transfer";
      v9 = "%{public}s called with null metadata";
      goto LABEL_20;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "nw_protocol_plugin_metadata_report_transfer";
      v9 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_plugin_metadata_report_transfer";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_plugin_metadata_report_transfer";
      v9 = "%{public}s called with null metadata, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }
}

void __nw_protocol_plugin_metadata_process_frames_block_invoke_32(uint64_t a1, int a2)
{
  v152 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v124 = a2;
    v125 = __nwlog_obj();
    v126 = os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG);
    a2 = v124;
    if (v126)
    {
      v127 = *(a1 + 48);
      v128 = "invalid";
      if (v127)
      {
        v129 = *(v127 + 16);
        if (v129)
        {
          v128 = v129;
        }
      }

      if (v124 > 3)
      {
        v130 = "invalid";
      }

      else
      {
        v130 = off_1E6A2BED8[v124];
      }

      v131 = "output";
      v132 = *(a1 + 56);
      if (*(a1 + 120))
      {
        v131 = "input";
      }

      *buf = 136447234;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v145 = 2080;
      *v146 = v128;
      *&v146[8] = 2080;
      v147 = v130;
      v148 = 2080;
      v149 = v131;
      v150 = 2048;
      v151 = v132;
      _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s %s processor returned result %s for %s frame %p", buf, 0x34u);
      a2 = v124;
    }
  }

  v3 = *(a1 + 64);
  if (*(a1 + 120) == 1)
  {
    *(v3 + 140) = a2;
    if (a2 > 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(v3 + 141) = a2;
    if (a2 > 1)
    {
LABEL_4:
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          is_metadata_complete = nw_frame_is_metadata_complete(*(a1 + 56));
          v5 = *(a1 + 56);
          v6 = (*(a1 + 80) + 8);
          v7 = *(v5 + 32);
          v8 = *(v5 + 40);
          if (v7)
          {
            v6 = (v7 + 40);
          }

          *v6 = v8;
          *v8 = v7;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          nw_frame_finalize(*(a1 + 56));
          if (is_metadata_complete)
          {
            v9 = *(*(a1 + 64) + 120);
            if (v9)
            {
              v9(*(a1 + 48));
            }
          }
        }

        return;
      }

LABEL_159:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      return;
    }
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v10 = nw_frame_unclaimed_length(*(a1 + 56));
    v11 = v10;
    if (v10 > **(a1 + 72))
    {
      if (*(a1 + 120) != 1)
      {
        if (gLogDatapath)
        {
          v53 = __nwlog_obj();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v54 = **(a1 + 72);
            *buf = 136446722;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 1024;
            *v146 = v11;
            *&v146[4] = 1024;
            *&v146[6] = v54;
            _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s not delivering frame with length %u maximum bytes %u", buf, 0x18u);
          }
        }

        goto LABEL_159;
      }

      if (gLogDatapath)
      {
        v133 = __nwlog_obj();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          v134 = *(a1 + 56);
          v135 = **(a1 + 72);
          *buf = 136446722;
          v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v145 = 2048;
          *v146 = v134;
          *&v146[8] = 1024;
          LODWORD(v147) = v135;
          _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s splitting frame %p by offset %u", buf, 0x1Cu);
        }
      }

      v12 = *(a1 + 56);
      v13 = (*(a1 + 80) + 8);
      v14 = *(v12 + 32);
      v15 = *(v12 + 40);
      if (v14)
      {
        v13 = (v14 + 40);
      }

      *v13 = v15;
      *v15 = v14;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *v141 = *(a1 + 56);
      v16 = nw_frame_split(v141, **(a1 + 72));
      nw_frame_array_prepend(*(a1 + 80), 1, *v141);
      v17 = *(a1 + 88);
      *(v16 + 32) = 0;
      v18 = *(v17 + 8);
      *(v16 + 40) = v18;
      *v18 = v16;
      *(v17 + 8) = v16 + 32;
      **(a1 + 96) = 0;
      **(a1 + 72) = 0;
      v19 = *(a1 + 104);
      if ((*v19)--)
      {
LABEL_122:
        v93 = *(a1 + 112);
        v94 = **(a1 + 72);
        v39 = __CFADD__(*v93, v94);
        *v93 += v94;
        if (!v39)
        {
          goto LABEL_141;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v95 = **(a1 + 72);
        v96 = **(a1 + 112);
        *buf = 136446978;
        v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        v145 = 2082;
        *v146 = "moved_bytes";
        *&v146[8] = 2048;
        v147 = v95;
        v148 = 2048;
        v149 = v96;
        v97 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v140 = 0;
        if (__nwlog_fault(v97, &type, &v140))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v98 = __nwlog_obj();
            v99 = type;
            if (os_log_type_enabled(v98, type))
            {
              v100 = **(a1 + 72);
              v101 = **(a1 + 112);
              *buf = 136446978;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "moved_bytes";
              *&v146[8] = 2048;
              v147 = v100;
              v148 = 2048;
              v149 = v101;
              v102 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_137:
              _os_log_impl(&dword_181A37000, v98, v99, v102, buf, 0x2Au);
            }
          }

          else if (v140 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v98 = __nwlog_obj();
            v99 = type;
            v104 = os_log_type_enabled(v98, type);
            if (backtrace_string)
            {
              if (v104)
              {
                v105 = **(a1 + 72);
                v106 = **(a1 + 112);
                *buf = 136447234;
                v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                v145 = 2082;
                *v146 = "moved_bytes";
                *&v146[8] = 2048;
                v147 = v105;
                v148 = 2048;
                v149 = v106;
                v150 = 2082;
                v151 = backtrace_string;
                _os_log_impl(&dword_181A37000, v98, v99, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(backtrace_string);
              goto LABEL_138;
            }

            if (v104)
            {
              v109 = **(a1 + 72);
              v110 = **(a1 + 112);
              *buf = 136446978;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "moved_bytes";
              *&v146[8] = 2048;
              v147 = v109;
              v148 = 2048;
              v149 = v110;
              v102 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_137;
            }
          }

          else
          {
            v98 = __nwlog_obj();
            v99 = type;
            if (os_log_type_enabled(v98, type))
            {
              v107 = **(a1 + 72);
              v108 = **(a1 + 112);
              *buf = 136446978;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "moved_bytes";
              *&v146[8] = 2048;
              v147 = v107;
              v148 = 2048;
              v149 = v108;
              v102 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_137;
            }
          }
        }

LABEL_138:
        if (v97)
        {
          free(v97);
        }

        **(a1 + 112) = -1;
LABEL_141:
        v111 = *(*(a1 + 32) + 8);
        v112 = *(v111 + 24) + 1;
        *(v111 + 24) = v112;
        if (v112 == v112 << 31 >> 31)
        {
          goto LABEL_159;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v113 = *(*(*(a1 + 32) + 8) + 24);
        *buf = 136446978;
        v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        v145 = 2082;
        *v146 = "count";
        *&v146[8] = 2048;
        v147 = 1;
        v148 = 2048;
        v149 = v113;
        v114 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v140 = 0;
        if (__nwlog_fault(v114, &type, &v140))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v115 = __nwlog_obj();
            v116 = type;
            if (os_log_type_enabled(v115, type))
            {
              v117 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136446978;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "count";
              *&v146[8] = 2048;
              v147 = 1;
              v148 = 2048;
              v149 = v117;
              v118 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_155:
              _os_log_impl(&dword_181A37000, v115, v116, v118, buf, 0x2Au);
            }
          }

          else if (v140 == 1)
          {
            v119 = __nw_create_backtrace_string();
            v115 = __nwlog_obj();
            v116 = type;
            v120 = os_log_type_enabled(v115, type);
            if (v119)
            {
              if (v120)
              {
                v121 = *(*(*(a1 + 32) + 8) + 24);
                *buf = 136447234;
                v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
                v145 = 2082;
                *v146 = "count";
                *&v146[8] = 2048;
                v147 = 1;
                v148 = 2048;
                v149 = v121;
                v150 = 2082;
                v151 = v119;
                _os_log_impl(&dword_181A37000, v115, v116, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v119);
              goto LABEL_156;
            }

            if (v120)
            {
              v123 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136446978;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "count";
              *&v146[8] = 2048;
              v147 = 1;
              v148 = 2048;
              v149 = v123;
              v118 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_155;
            }
          }

          else
          {
            v115 = __nwlog_obj();
            v116 = type;
            if (os_log_type_enabled(v115, type))
            {
              v122 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136446978;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "count";
              *&v146[8] = 2048;
              v147 = 1;
              v148 = 2048;
              v149 = v122;
              v118 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

LABEL_156:
        if (v114)
        {
          free(v114);
        }

        *(*(*(a1 + 32) + 8) + 24) = -1;
        goto LABEL_159;
      }

      __nwlog_obj();
      v21 = **(a1 + 104);
      *buf = 136446978;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v145 = 2082;
      *v146 = "maximum_frame_count";
      *&v146[8] = 2048;
      v147 = 1;
      v148 = 2048;
      v149 = v21;
      v22 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v140 = 0;
      if (__nwlog_fault(v22, &type, &v140))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v23 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            v25 = **(a1 + 104);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "maximum_frame_count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v25;
            v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_118:
            _os_log_impl(&dword_181A37000, v23, v24, v26, buf, 0x2Au);
          }
        }

        else if (v140 == 1)
        {
          v60 = __nw_create_backtrace_string();
          v23 = __nwlog_obj();
          v24 = type;
          v61 = os_log_type_enabled(v23, type);
          if (v60)
          {
            if (v61)
            {
              v62 = **(a1 + 104);
              *buf = 136447234;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "maximum_frame_count";
              *&v146[8] = 2048;
              v147 = 1;
              v148 = 2048;
              v149 = v62;
              v150 = 2082;
              v151 = v60;
              _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v60);
            goto LABEL_119;
          }

          if (v61)
          {
            v92 = **(a1 + 104);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "maximum_frame_count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v92;
            v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_118;
          }
        }

        else
        {
          v23 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            v64 = **(a1 + 104);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "maximum_frame_count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v64;
            v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_118;
          }
        }
      }

LABEL_119:
      if (v22)
      {
        free(v22);
      }

      **(a1 + 104) = 0;
      goto LABEL_122;
    }

    v31 = *(a1 + 56);
    v32 = (*(a1 + 80) + 8);
    v33 = *(v31 + 32);
    v34 = *(v31 + 40);
    if (v33)
    {
      v32 = (v33 + 40);
    }

    *v32 = v34;
    *v34 = v33;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;
    v35 = *(a1 + 88);
    v36 = *(a1 + 56);
    *(v36 + 32) = 0;
    v37 = *(v35 + 8);
    *(v36 + 40) = v37;
    *v37 = v36;
    *(v35 + 8) = v36 + 32;
    v38 = *(a1 + 96);
    v39 = *v38 >= v10;
    *v38 -= v10;
    if (!v39)
    {
      if (gLogDatapath == 1)
      {
        v136 = __nwlog_obj();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
        {
          v137 = **(a1 + 96);
          *buf = 136446978;
          v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v145 = 2082;
          *v146 = "minimum_bytes";
          *&v146[8] = 2048;
          v147 = v11;
          v148 = 2048;
          v149 = v137;
          _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 96) = 0;
    }

    v40 = *(a1 + 72);
    v39 = *v40 >= v11;
    *v40 -= v11;
    if (!v39)
    {
      if (gLogDatapath == 1)
      {
        v138 = __nwlog_obj();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
        {
          v139 = **(a1 + 72);
          *buf = 136446978;
          v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v145 = 2082;
          *v146 = "maximum_bytes";
          *&v146[8] = 2048;
          v147 = v11;
          v148 = 2048;
          v149 = v139;
          _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      **(a1 + 72) = 0;
    }

    v41 = *(a1 + 104);
    if ((*v41)--)
    {
LABEL_77:
      v66 = *(a1 + 112);
      v39 = __CFADD__(*v66, v11);
      *v66 += v11;
      if (!v39)
      {
        goto LABEL_96;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v67 = v11;
      v68 = **(a1 + 112);
      *buf = 136446978;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v145 = 2082;
      *v146 = "moved_bytes";
      *&v146[8] = 2048;
      v147 = v11;
      v148 = 2048;
      v149 = v68;
      v69 = _os_log_send_and_compose_impl();
      v141[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v69, v141, &type))
      {
        if (v141[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v70 = gLogObj;
          v71 = v141[0];
          if (os_log_type_enabled(gLogObj, v141[0]))
          {
            v72 = **(a1 + 112);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "moved_bytes";
            *&v146[8] = 2048;
            v147 = v67;
            v148 = 2048;
            v149 = v72;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_92:
            _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x2Au);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v74 = __nw_create_backtrace_string();
          v70 = __nwlog_obj();
          v71 = v141[0];
          v75 = os_log_type_enabled(v70, v141[0]);
          if (v74)
          {
            if (v75)
            {
              v76 = **(a1 + 112);
              *buf = 136447234;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "moved_bytes";
              *&v146[8] = 2048;
              v147 = v67;
              v148 = 2048;
              v149 = v76;
              v150 = 2082;
              v151 = v74;
              _os_log_impl(&dword_181A37000, v70, v71, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v74);
            goto LABEL_93;
          }

          if (v75)
          {
            v78 = **(a1 + 112);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "moved_bytes";
            *&v146[8] = 2048;
            v147 = v67;
            v148 = 2048;
            v149 = v78;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_92;
          }
        }

        else
        {
          v70 = __nwlog_obj();
          v71 = v141[0];
          if (os_log_type_enabled(v70, v141[0]))
          {
            v77 = **(a1 + 112);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "moved_bytes";
            *&v146[8] = 2048;
            v147 = v67;
            v148 = 2048;
            v149 = v77;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_92;
          }
        }
      }

LABEL_93:
      if (v69)
      {
        free(v69);
      }

      **(a1 + 112) = -1;
LABEL_96:
      v79 = *(*(a1 + 32) + 8);
      v80 = *(v79 + 24) + 1;
      *(v79 + 24) = v80;
      if (v80 == v80 << 31 >> 31)
      {
LABEL_114:
        if (nw_frame_is_metadata_complete(*(a1 + 56)))
        {
          **(a1 + 96) = 0;
        }

        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v81 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v145 = 2082;
      *v146 = "count";
      *&v146[8] = 2048;
      v147 = 1;
      v148 = 2048;
      v149 = v81;
      v82 = _os_log_send_and_compose_impl();
      v141[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v82, v141, &type))
      {
        if (v141[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v83 = gLogObj;
          v84 = v141[0];
          if (os_log_type_enabled(gLogObj, v141[0]))
          {
            v85 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v85;
            v86 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_110:
            _os_log_impl(&dword_181A37000, v83, v84, v86, buf, 0x2Au);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v87 = __nw_create_backtrace_string();
          v83 = __nwlog_obj();
          v84 = v141[0];
          v88 = os_log_type_enabled(v83, v141[0]);
          if (v87)
          {
            if (v88)
            {
              v89 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
              v145 = 2082;
              *v146 = "count";
              *&v146[8] = 2048;
              v147 = 1;
              v148 = 2048;
              v149 = v89;
              v150 = 2082;
              v151 = v87;
              _os_log_impl(&dword_181A37000, v83, v84, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v87);
            goto LABEL_111;
          }

          if (v88)
          {
            v91 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v91;
            v86 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_110;
          }
        }

        else
        {
          v83 = __nwlog_obj();
          v84 = v141[0];
          if (os_log_type_enabled(v83, v141[0]))
          {
            v90 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v90;
            v86 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_110;
          }
        }
      }

LABEL_111:
      if (v82)
      {
        free(v82);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_114;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = **(a1 + 104);
    *buf = 136446978;
    v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
    v145 = 2082;
    *v146 = "maximum_frame_count";
    *&v146[8] = 2048;
    v147 = 1;
    v148 = 2048;
    v149 = v43;
    v44 = _os_log_send_and_compose_impl();
    v141[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v44, v141, &type))
    {
      if (v141[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = v141[0];
        if (os_log_type_enabled(v45, v141[0]))
        {
          v47 = **(a1 + 104);
          *buf = 136446978;
          v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v145 = 2082;
          *v146 = "maximum_frame_count";
          *&v146[8] = 2048;
          v147 = 1;
          v148 = 2048;
          v149 = v47;
          v48 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_73:
          _os_log_impl(&dword_181A37000, v45, v46, v48, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v57 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v46 = v141[0];
        v58 = os_log_type_enabled(v45, v141[0]);
        if (v57)
        {
          if (v58)
          {
            v59 = **(a1 + 104);
            *buf = 136447234;
            v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
            v145 = 2082;
            *v146 = "maximum_frame_count";
            *&v146[8] = 2048;
            v147 = 1;
            v148 = 2048;
            v149 = v59;
            v150 = 2082;
            v151 = v57;
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v57);
          goto LABEL_74;
        }

        if (v58)
        {
          v65 = **(a1 + 104);
          *buf = 136446978;
          v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v145 = 2082;
          *v146 = "maximum_frame_count";
          *&v146[8] = 2048;
          v147 = 1;
          v148 = 2048;
          v149 = v65;
          v48 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v45 = __nwlog_obj();
        v46 = v141[0];
        if (os_log_type_enabled(v45, v141[0]))
        {
          v63 = **(a1 + 104);
          *buf = 136446978;
          v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
          v145 = 2082;
          *v146 = "maximum_frame_count";
          *&v146[8] = 2048;
          v147 = 1;
          v148 = 2048;
          v149 = v63;
          v48 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v44)
    {
      free(v44);
    }

    **(a1 + 104) = 0;
    goto LABEL_77;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
  v27 = _os_log_send_and_compose_impl();
  v141[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v27, v141, &type))
  {
    if (v141[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = v141[0];
      if (!os_log_type_enabled(gLogObj, v141[0]))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v30 = "%{public}s metadata processor result must not be unknown";
LABEL_51:
      v55 = v28;
      v56 = v29;
LABEL_52:
      _os_log_impl(&dword_181A37000, v55, v56, v30, buf, 0xCu);
      goto LABEL_53;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = v141[0];
      if (!os_log_type_enabled(gLogObj, v141[0]))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v30 = "%{public}s metadata processor result must not be unknown, backtrace limit exceeded";
      goto LABEL_51;
    }

    v49 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    v51 = v141[0];
    v52 = os_log_type_enabled(gLogObj, v141[0]);
    if (v49)
    {
      if (v52)
      {
        *buf = 136446466;
        v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
        v145 = 2082;
        *v146 = v49;
        _os_log_impl(&dword_181A37000, v50, v51, "%{public}s metadata processor result must not be unknown, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v49);
      goto LABEL_53;
    }

    if (v52)
    {
      *buf = 136446210;
      v144 = "nw_protocol_plugin_metadata_process_frames_block_invoke";
      v30 = "%{public}s metadata processor result must not be unknown, no backtrace";
      v55 = v50;
      v56 = v51;
      goto LABEL_52;
    }
  }

LABEL_53:
  if (v27)
  {
    free(v27);
  }
}

uint64_t nw_protocol_plugin_metadata_get_input_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t *a6)
{
  v291 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v140, type, v277))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null protocol";
      goto LABEL_439;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v145 = os_log_type_enabled(v141, type[0]);
    if (!backtrace_string)
    {
      if (!v145)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_439;
    }

    if (!v145)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v146 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_343:
    _os_log_impl(&dword_181A37000, v141, v142, v146, buf, 0x16u);
    goto LABEL_344;
  }

  v6 = a1;
  v7 = *(a1 + 40);
  if (!v7)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v140, type, v277))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null protocol->handle";
      goto LABEL_439;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v147 = os_log_type_enabled(v141, type[0]);
    if (!backtrace_string)
    {
      if (!v147)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_439;
    }

    if (!v147)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v146 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
    goto LABEL_343;
  }

  v8 = *(v7 + 72);
  if (!v8)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v140, type, v277))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null metadata_plugin";
      goto LABEL_439;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v148 = os_log_type_enabled(v141, type[0]);
    if (!backtrace_string)
    {
      if (!v148)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null metadata_plugin, no backtrace";
      goto LABEL_439;
    }

    if (!v148)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v146 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
    goto LABEL_343;
  }

  v9 = a2;
  if (!a2)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v140, type, v277))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null input_protocol";
      goto LABEL_439;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v149 = os_log_type_enabled(v141, type[0]);
    if (!backtrace_string)
    {
      if (!v149)
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null input_protocol, no backtrace";
      goto LABEL_439;
    }

    if (!v149)
    {
      goto LABEL_344;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v146 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    goto LABEL_343;
  }

  if (!a6)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v140, type, v277))
    {
      goto LABEL_440;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null return_array";
      goto LABEL_439;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_440;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
      v143 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_439;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v155 = os_log_type_enabled(v141, type[0]);
    if (backtrace_string)
    {
      if (v155)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = backtrace_string;
        v146 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_343;
      }

LABEL_344:
      free(backtrace_string);
      goto LABEL_440;
    }

    if (!v155)
    {
      goto LABEL_440;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
    v143 = "%{public}s called with null return_array, no backtrace";
LABEL_439:
    _os_log_impl(&dword_181A37000, v141, v142, v143, buf, 0xCu);
LABEL_440:
    if (v140)
    {
      free(v140);
    }

    return 0;
  }

  if ((*(v8 + 142) & 2) != 0)
  {
    if (gLogDatapath == 1)
    {
      v154 = __nwlog_obj();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames";
        _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_DEBUG, "%{public}s get_input_frames called reentrantly, returning", buf, 0xCu);
        return 0;
      }
    }

    return 0;
  }

  *(v8 + 142) |= 2u;
  v11 = *(v7 + 88);
  if (v11)
  {
    v12 = *(v11 + 108);
    if ((v12 & 1) == 0)
    {
      *(v11 + 108) = v12 | 1;
    }
  }

  v251 = a4;
  v252 = a3;
  v250 = a5;
  v13 = *(a1 + 40);
  if (!v13)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v150 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v150, type, v277))
    {
      goto LABEL_484;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null protocol->handle";
      goto LABEL_483;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_483;
    }

    v162 = __nw_create_backtrace_string();
    v151 = __nwlog_obj();
    v152 = type[0];
    v163 = os_log_type_enabled(v151, type[0]);
    if (!v162)
    {
      if (!v163)
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_483;
    }

    if (!v163)
    {
      goto LABEL_394;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v162;
    v164 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
LABEL_393:
    _os_log_impl(&dword_181A37000, v151, v152, v164, buf, 0x16u);
    goto LABEL_394;
  }

  v14 = *(v13 + 72);
  if (!v14)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v150 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v150, type, v277))
    {
      goto LABEL_484;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null metadata_plugin";
      goto LABEL_483;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_483;
    }

    v162 = __nw_create_backtrace_string();
    v151 = __nwlog_obj();
    v152 = type[0];
    v171 = os_log_type_enabled(v151, type[0]);
    if (!v162)
    {
      if (!v171)
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null metadata_plugin, no backtrace";
      goto LABEL_483;
    }

    if (!v171)
    {
      goto LABEL_394;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v162;
    v164 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
    goto LABEL_393;
  }

  if ((*(v14 + 142) & 2) == 0)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v150 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (!__nwlog_fault(v150, type, v277))
    {
      goto LABEL_484;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null metadata_plugin->getting_input_frames";
      goto LABEL_483;
    }

    if (LOBYTE(v277[0]) != 1)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_484;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      v153 = "%{public}s called with null metadata_plugin->getting_input_frames, backtrace limit exceeded";
      goto LABEL_483;
    }

    v162 = __nw_create_backtrace_string();
    v151 = __nwlog_obj();
    v152 = type[0];
    v173 = os_log_type_enabled(v151, type[0]);
    if (v162)
    {
      if (v173)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v162;
        v164 = "%{public}s called with null metadata_plugin->getting_input_frames, dumping backtrace:%{public}s";
        goto LABEL_393;
      }

LABEL_394:
      free(v162);
      goto LABEL_484;
    }

    if (!v173)
    {
      goto LABEL_484;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v153 = "%{public}s called with null metadata_plugin->getting_input_frames, no backtrace";
LABEL_483:
    _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
LABEL_484:
    if (v150)
    {
      free(v150);
    }

    goto LABEL_15;
  }

  v248 = 0;
  v249 = 0;
  if (*(v14 + 140) == 2)
  {
    if (gLogDatapath == 1)
    {
      v172 = __nwlog_obj();
      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_DEBUG, "%{public}s cannot process frames, waiting for saved input frames to be resumed", buf, 0xCu);
        v15 = 0;
        goto LABEL_141;
      }
    }

LABEL_15:
    v15 = 0;
    goto LABEL_141;
  }

  if (!*(v14 + 16))
  {
    v15 = 0;
    goto LABEL_101;
  }

  v247 = 0;
  if (gLogDatapath == 1)
  {
    v178 = a5;
    v179 = a4;
    v180 = __nwlog_obj();
    v181 = os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG);
    a4 = v179;
    a5 = v178;
    if (v181)
    {
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "__nw_protocol_fulfill_frame_request";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = a3;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v179;
      LOWORD(v280) = 1024;
      *(&v280 + 2) = v178;
      _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_DEBUG, "%{public}s called with minimum bytes: %u, maximum bytes: %u, maximum frames: %u", buf, 0x1Eu);
      a4 = v179;
      a5 = v178;
    }
  }

  if (a4 >= a3 && a5)
  {
    v239 = v9;
    *type = 0;
    v262 = type;
    v263 = 0x3802000000;
    v264 = __Block_byref_object_copy__3805;
    v265 = __Block_byref_object_dispose__3806;
    v266[0] = 0;
    v266[1] = v266;
    v257 = 0;
    v258 = &v257;
    v259 = 0x2000000000;
    v260 = 0;
    v253 = 0;
    v254 = &v253;
    v255 = 0x2000000000;
    v256 = 0;
    buf[0] = MEMORY[0x1E69E9820];
    buf[1] = 0x40000000;
    buf[2] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke;
    v280 = &unk_1E6A2BDE0;
    v281[0] = &v257;
    v281[1] = &v253;
    v284 = __PAIR64__(a4, a5);
    v282 = &v247;
    v283 = v14 + 16;
    LOWORD(v285) = 257;
    v281[2] = type;
    v16 = *(v14 + 16);
    do
    {
      if (!v16)
      {
        break;
      }

      v17 = *(v16 + 32);
      v18 = (buf[2])(buf);
      v16 = v17;
    }

    while ((v18 & 1) != 0);
    v19 = *(v262 + 5);
    v20 = *(v254 + 6);
    if (v20 >= a3)
    {
      if (v19)
      {
LABEL_36:
        v277[0] = MEMORY[0x1E69E9820];
        v277[1] = 0x40000000;
        v277[2] = ___ZL35__nw_protocol_fulfill_frame_requestP16nw_frame_array_sS0_bbjjjPjPb_block_invoke_27;
        v277[3] = &unk_1E6A2BE08;
        v278 = 1;
        v277[4] = type;
        v277[5] = a6;
        do
        {
          if (!v19)
          {
            break;
          }

          v28 = *(v19 + 32);
          v29 = (v277[2])(v277);
          v19 = v28;
        }

        while ((v29 & 1) != 0);
      }
    }

    else if (v19)
    {
      if ((v247 & 1) == 0)
      {
        if (gLogDatapath == 1)
        {
          v225 = __nwlog_obj();
          if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
          {
            v226 = *(v254 + 6);
            LODWORD(v277[0]) = 136446722;
            *(v277 + 4) = "__nw_protocol_fulfill_frame_request";
            WORD2(v277[1]) = 1024;
            *(&v277[1] + 6) = a3;
            WORD1(v277[2]) = 1024;
            HIDWORD(v277[2]) = v226;
            _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_DEBUG, "%{public}s could not meet minimum byte count %u with %u bytes from source array", v277, 0x18u);
          }
        }

        nw_frame_array_prepend_array((v14 + 16), v262 + 5, 1);
        v20 = 0;
        v21 = v262;
        *(v262 + 5) = 0;
        *(v21 + 6) = v21 + 40;
        *(v258 + 6) = 0;
        *(v254 + 6) = 0;
        goto LABEL_39;
      }

      goto LABEL_36;
    }

LABEL_39:
    if (gLogDatapath == 1)
    {
      v200 = __nwlog_obj();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
      {
        v201 = *(v258 + 6);
        v202 = *(v254 + 6);
        v267 = 136447234;
        v268 = "__nw_protocol_fulfill_frame_request";
        v269 = 1024;
        v270 = v201;
        v271 = 1024;
        v272 = v202;
        v273 = 2048;
        v274 = v14 + 16;
        v275 = 2048;
        v276 = a6;
        _os_log_impl(&dword_181A37000, v200, OS_LOG_TYPE_DEBUG, "%{public}s moved (%u frames, %u bytes) from %p to %p", &v267, 0x2Cu);
      }
    }

    v15 = *(v258 + 6);
    _Block_object_dispose(&v253, 8);
    _Block_object_dispose(&v257, 8);
    _Block_object_dispose(type, 8);
    v30 = v20;
    v9 = v239;
    goto LABEL_54;
  }

  v22 = a5;
  v23 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "__nw_protocol_fulfill_frame_request";
  WORD2(buf[1]) = 1024;
  v236 = v23;
  *(&buf[1] + 6) = v23;
  WORD1(buf[2]) = 1024;
  HIDWORD(buf[2]) = a3;
  LOWORD(v280) = 1024;
  v240 = v22;
  *(&v280 + 2) = v22;
  v24 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v277[0]) = 0;
  if (__nwlog_fault(v24, type, v277))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "__nw_protocol_fulfill_frame_request";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v236;
        WORD1(buf[2]) = 1024;
        HIDWORD(buf[2]) = a3;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v240;
        v27 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u";
LABEL_50:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x1Eu);
      }
    }

    else if (LOBYTE(v277[0]) == 1)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      v32 = os_log_type_enabled(gLogObj, type[0]);
      if (v31)
      {
        if (v32)
        {
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "__nw_protocol_fulfill_frame_request";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = v236;
          WORD1(buf[2]) = 1024;
          HIDWORD(buf[2]) = a3;
          LOWORD(v280) = 1024;
          *(&v280 + 2) = v240;
          HIWORD(v280) = 2082;
          v281[0] = v31;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s invalid values for frame request, max %u, min %u, max frame %u, dumping backtrace:%{public}s", buf, 0x28u);
        }

        free(v31);
        goto LABEL_51;
      }

      if (v32)
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "__nw_protocol_fulfill_frame_request";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v236;
        WORD1(buf[2]) = 1024;
        HIDWORD(buf[2]) = a3;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v240;
        v27 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, no backtrace";
        goto LABEL_50;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "__nw_protocol_fulfill_frame_request";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v236;
        WORD1(buf[2]) = 1024;
        HIDWORD(buf[2]) = a3;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v240;
        v27 = "%{public}s invalid values for frame request, max %u, min %u, max frame %u, backtrace limit exceeded";
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if (v24)
  {
    free(v24);
  }

  v30 = 0;
  v15 = 0;
LABEL_54:
  v33 = v252 >= v30;
  v252 -= v30;
  if (!v33)
  {
    if (gLogDatapath == 1)
    {
      v198 = __nwlog_obj();
      if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "minimum_bytes";
        HIWORD(buf[2]) = 2048;
        v280 = v30;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v252;
        _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v252 = 0;
  }

  v33 = v251 >= v30;
  v251 -= v30;
  if (!v33)
  {
    if (gLogDatapath == 1)
    {
      v199 = __nwlog_obj();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "maximum_bytes";
        HIWORD(buf[2]) = 2048;
        v280 = v30;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v251;
        _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v251 = 0;
  }

  v33 = v250 >= v15;
  v250 -= v15;
  v241 = v15;
  v237 = v30;
  if (!v33)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = v15;
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "maximum_frame_count";
    HIWORD(buf[2]) = 2048;
    v280 = v15;
    LOWORD(v281[0]) = 2048;
    *(v281 + 2) = v250;
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (__nwlog_fault(v35, type, v277))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "maximum_frame_count";
          HIWORD(buf[2]) = 2048;
          v280 = v34;
          LOWORD(v281[0]) = 2048;
          *(v281 + 2) = v250;
          v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_72:
          v41 = v36;
LABEL_73:
          _os_log_impl(&dword_181A37000, v41, v37, v38, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v277[0]) == 1)
      {
        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = type[0];
        log = gLogObj;
        v40 = os_log_type_enabled(gLogObj, type[0]);
        if (v39)
        {
          if (v40)
          {
            LODWORD(buf[0]) = 136447234;
            *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "maximum_frame_count";
            HIWORD(buf[2]) = 2048;
            v280 = v34;
            LOWORD(v281[0]) = 2048;
            *(v281 + 2) = v250;
            WORD1(v281[1]) = 2082;
            *(&v281[1] + 4) = v39;
            _os_log_impl(&dword_181A37000, log, v37, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v39);
          goto LABEL_74;
        }

        if (v40)
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "maximum_frame_count";
          HIWORD(buf[2]) = 2048;
          v280 = v34;
          LOWORD(v281[0]) = 2048;
          *(v281 + 2) = v250;
          v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v41 = log;
          goto LABEL_73;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "maximum_frame_count";
          HIWORD(buf[2]) = 2048;
          v280 = v34;
          LOWORD(v281[0]) = 2048;
          *(v281 + 2) = v250;
          v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_72;
        }
      }
    }

LABEL_74:
    if (v35)
    {
      free(v35);
    }

    v250 = 0;
    v15 = v241;
    v30 = v237;
  }

  v33 = __CFADD__(v248, v30);
  v248 += v30;
  if (!v33)
  {
    goto LABEL_95;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = "received_bytes";
  HIWORD(buf[2]) = 2048;
  v280 = v30;
  LOWORD(v281[0]) = 2048;
  *(v281 + 2) = v248;
  v42 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v277[0]) = 0;
  if (__nwlog_fault(v42, type, v277))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      v44 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "received_bytes";
        HIWORD(buf[2]) = 2048;
        v280 = v30;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v248;
        v45 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_90:
        v48 = v43;
LABEL_91:
        _os_log_impl(&dword_181A37000, v48, v44, v45, buf, 0x2Au);
      }
    }

    else if (LOBYTE(v277[0]) == 1)
    {
      v46 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = type[0];
      loga = gLogObj;
      v47 = os_log_type_enabled(gLogObj, type[0]);
      if (v46)
      {
        if (v47)
        {
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "received_bytes";
          HIWORD(buf[2]) = 2048;
          v280 = v30;
          LOWORD(v281[0]) = 2048;
          *(v281 + 2) = v248;
          WORD1(v281[1]) = 2082;
          *(&v281[1] + 4) = v46;
          _os_log_impl(&dword_181A37000, loga, v44, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v46);
        goto LABEL_92;
      }

      if (v47)
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "received_bytes";
        HIWORD(buf[2]) = 2048;
        v280 = v30;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v248;
        v45 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        v48 = loga;
        goto LABEL_91;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      v44 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "received_bytes";
        HIWORD(buf[2]) = 2048;
        v280 = v30;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v248;
        v45 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_90;
      }
    }
  }

LABEL_92:
  if (v42)
  {
    free(v42);
  }

  v248 = -1;
  v15 = v241;
  v30 = v237;
LABEL_95:
  v249 = v15;
  if (v247 == 1)
  {
    v252 = 0;
  }

  if (gLogDatapath == 1)
  {
    v182 = __nwlog_obj();
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v30;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v15;
      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s moved (%u bytes, %u frames) from input_frames_pending_delivery", buf, 0x18u);
    }
  }

  if (v15 && (!v251 || !v250))
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_140;
    }

    v58 = __nwlog_obj();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_140;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v59 = "%{public}s returning frames only from input_frames_pending_delivery";
LABEL_490:
    _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, v59, buf, 0xCu);
    goto LABEL_140;
  }

LABEL_101:
  if (*v14)
  {
    if (gLogDatapath == 1)
    {
      v183 = __nwlog_obj();
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_DEBUG, "%{public}s resuming saved input frames", buf, 0xCu);
      }
    }

    v49 = *(v14 + 96);
    if (v49)
    {
      *type = 0;
      v262 = type;
      v263 = 0x2000000000;
      LODWORD(v264) = 0;
      buf[0] = MEMORY[0x1E69E9820];
      buf[1] = 0x40000000;
      buf[2] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
      v280 = &unk_1E6A2BE58;
      v281[2] = v14;
      v282 = &v251;
      v290 = 1;
      v283 = v14;
      v284 = a6;
      v285 = &v252;
      v286 = &v248;
      v281[0] = type;
      v281[1] = &v250;
      v287 = v6;
      v288 = v49;
      v289 = v9;
      v50 = *v14;
      do
      {
        if (!v50)
        {
          break;
        }

        v51 = *(v50 + 32);
        v52 = (buf[2])(buf);
        v50 = v51;
      }

      while ((v52 & 1) != 0);
      v53 = *(v262 + 6);
      _Block_object_dispose(type, 8);
      goto LABEL_108;
    }

    v243 = v15;
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
    v184 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (__nwlog_fault(v184, type, v277))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v185 = __nwlog_obj();
        v186 = type[0];
        if (os_log_type_enabled(v185, type[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
          v187 = "%{public}s called with null processor";
LABEL_501:
          v215 = v185;
LABEL_502:
          _os_log_impl(&dword_181A37000, v215, v186, v187, buf, 0xCu);
        }
      }

      else if (LOBYTE(v277[0]) == 1)
      {
        v203 = __nw_create_backtrace_string();
        v204 = __nwlog_obj();
        v186 = type[0];
        v235 = v204;
        v205 = os_log_type_enabled(v204, type[0]);
        if (v203)
        {
          if (v205)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v203;
            _os_log_impl(&dword_181A37000, v235, v186, "%{public}s called with null processor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v203);
          goto LABEL_503;
        }

        if (v205)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
          v187 = "%{public}s called with null processor, no backtrace";
          v215 = v235;
          goto LABEL_502;
        }
      }

      else
      {
        v185 = __nwlog_obj();
        v186 = type[0];
        if (os_log_type_enabled(v185, type[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_plugin_metadata_process_frames";
          v187 = "%{public}s called with null processor, backtrace limit exceeded";
          goto LABEL_501;
        }
      }
    }

LABEL_503:
    if (v184)
    {
      free(v184);
    }

    v53 = 0;
    LODWORD(v15) = v243;
LABEL_108:
    v33 = __CFADD__(v15, v53);
    v15 = v15 + v53;
    v249 = v15;
    if (!v33)
    {
      goto LABEL_114;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "count";
    HIWORD(buf[2]) = 2048;
    v280 = v53;
    LOWORD(v281[0]) = 2048;
    v242 = v15;
    *(v281 + 2) = v15;
    v54 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (__nwlog_fault(v54, type, v277))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v55 = gLogObj;
        v56 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_129;
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "count";
        HIWORD(buf[2]) = 2048;
        v280 = v53;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v242;
        v57 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_127:
        v62 = v55;
LABEL_128:
        _os_log_impl(&dword_181A37000, v62, v56, v57, buf, 0x2Au);
        goto LABEL_129;
      }

      if (LOBYTE(v277[0]) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v55 = gLogObj;
        v56 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_129;
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "count";
        HIWORD(buf[2]) = 2048;
        v280 = v53;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v242;
        v57 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_127;
      }

      v60 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v56 = type[0];
      v234 = gLogObj;
      v61 = os_log_type_enabled(gLogObj, type[0]);
      if (v60)
      {
        if (v61)
        {
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "count";
          HIWORD(buf[2]) = 2048;
          v280 = v53;
          LOWORD(v281[0]) = 2048;
          *(v281 + 2) = v242;
          WORD1(v281[1]) = 2082;
          *(&v281[1] + 4) = v60;
          _os_log_impl(&dword_181A37000, v234, v56, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v60);
      }

      else if (v61)
      {
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "count";
        HIWORD(buf[2]) = 2048;
        v280 = v53;
        LOWORD(v281[0]) = 2048;
        *(v281 + 2) = v242;
        v57 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        v62 = v234;
        goto LABEL_128;
      }
    }

LABEL_129:
    if (v54)
    {
      free(v54);
    }

    v15 = 0xFFFFFFFFLL;
    v249 = -1;
    if (*(v14 + 140) == 2)
    {
      goto LABEL_140;
    }

    goto LABEL_132;
  }

LABEL_114:
  if (*(v14 + 140) == 2)
  {
LABEL_140:
    nw_protocol_plugin_metadata_report_transfer(v14, v6, *(v14 + 48), v248, 1);
    goto LABEL_141;
  }

  if (!v15)
  {
    goto LABEL_134;
  }

LABEL_132:
  if (!v251 || !v250)
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_140;
    }

    v58 = __nwlog_obj();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_140;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v59 = "%{public}s returning frames from input_frames_pending_delivery and saved input frames";
    goto LABEL_490;
  }

LABEL_134:
  if (!*v14)
  {
    nw_protocol_plugin_metadata_get_and_process_frames(v14, v6, v9, a3, &v252, &v251, &v250, &v249, &v248, *(v14 + 96), a6);
    v15 = v249;
    goto LABEL_141;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
  v63 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v277[0]) = 0;
  if (!__nwlog_fault(v63, type, v277))
  {
    goto LABEL_218;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    v65 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_218;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v66 = "%{public}s Getting new input from below, but we still have saved input frames that we didn't use";
    goto LABEL_217;
  }

  if (LOBYTE(v277[0]) != 1)
  {
    v64 = __nwlog_obj();
    v65 = type[0];
    if (!os_log_type_enabled(v64, type[0]))
    {
      goto LABEL_218;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v66 = "%{public}s Getting new input from below, but we still have saved input frames that we didn't use, backtrace limit exceeded";
    goto LABEL_217;
  }

  v98 = __nw_create_backtrace_string();
  v64 = __nwlog_obj();
  v65 = type[0];
  v99 = os_log_type_enabled(v64, type[0]);
  if (v98)
  {
    if (v99)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v98;
      _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Getting new input from below, but we still have saved input frames that we didn't use, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v98);
    goto LABEL_218;
  }

  if (v99)
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_plugin_metadata_get_input_frames_internal";
    v66 = "%{public}s Getting new input from below, but we still have saved input frames that we didn't use, no backtrace";
LABEL_217:
    _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0xCu);
  }

LABEL_218:
  if (v63)
  {
    free(v63);
  }

LABEL_141:
  *(v8 + 142) &= ~2u;
  v67 = *(v7 + 88);
  if (v67)
  {
    nw_protocol_plugin_retry_set_getting_input_frames(v67, v6, 0);
  }

  if (*(v8 + 140) != 2)
  {
    if (!*(v8 + 136))
    {
      goto LABEL_192;
    }

    *(v8 + 136) = 0;
    v69 = *(v6 + 32);
    v68 = *(v6 + 40);
    v70 = v6;
    if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v70 = *(v6 + 64)) != 0)
    {
      v72 = *(v70 + 88);
      if (v72)
      {
        v71 = 0;
        *(v70 + 88) = v72 + 1;
        if (v69)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v71 = 0;
        if (v69)
        {
          goto LABEL_152;
        }
      }
    }

    else
    {
      v71 = 1;
      if (v69)
      {
LABEL_152:
        v73 = *(v69 + 40);
        v74 = v69;
        if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v74 = *(v69 + 64)) != 0)
        {
          v77 = *(v74 + 88);
          if (v77)
          {
            v75 = 0;
            *(v74 + 88) = v77 + 1;
            v76 = *(v6 + 24);
            if (!v76)
            {
              goto LABEL_353;
            }
          }

          else
          {
            v75 = 0;
            v76 = *(v6 + 24);
            if (!v76)
            {
              goto LABEL_353;
            }
          }
        }

        else
        {
          v75 = 1;
          v76 = *(v6 + 24);
          if (!v76)
          {
            goto LABEL_353;
          }
        }

        v81 = *(v76 + 56);
        if (v81)
        {
          v81(v6, v69);
          goto LABEL_168;
        }

LABEL_353:
        __nwlog_obj();
        v156 = *(v6 + 16);
        LODWORD(buf[0]) = 136446722;
        *(buf + 4) = "__nw_protocol_error";
        if (!v156)
        {
          v156 = "invalid";
        }

        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v156;
        HIWORD(buf[2]) = 2048;
        v280 = v6;
        v157 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v277[0]) = 0;
        v246 = v157;
        if (!__nwlog_fault(v157, type, v277))
        {
          goto LABEL_454;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v158 = __nwlog_obj();
          v159 = type[0];
          if (!os_log_type_enabled(v158, type[0]))
          {
            goto LABEL_454;
          }

          v160 = *(v6 + 16);
          if (!v160)
          {
            v160 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_error";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v160;
          HIWORD(buf[2]) = 2048;
          v280 = v6;
          v161 = "%{public}s protocol %{public}s (%p) has invalid error callback";
        }

        else
        {
          if (LOBYTE(v277[0]) == 1)
          {
            v174 = __nw_create_backtrace_string();
            v175 = __nwlog_obj();
            v159 = type[0];
            v238 = v175;
            v176 = os_log_type_enabled(v175, type[0]);
            if (v174)
            {
              if (v176)
              {
                v177 = *(v6 + 16);
                if (!v177)
                {
                  v177 = "invalid";
                }

                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "__nw_protocol_error";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v177;
                HIWORD(buf[2]) = 2048;
                v280 = v6;
                LOWORD(v281[0]) = 2082;
                *(v281 + 2) = v174;
                _os_log_impl(&dword_181A37000, v238, v159, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v174);
              goto LABEL_454;
            }

            if (!v176)
            {
LABEL_454:
              if (v246)
              {
                free(v246);
              }

LABEL_168:
              if ((v75 & 1) == 0)
              {
                v82 = *(v69 + 40);
                if (v82 == &nw_protocol_ref_counted_handle || v82 == &nw_protocol_ref_counted_additional_handle && (v69 = *(v69 + 64)) != 0)
                {
                  v83 = *(v69 + 88);
                  if (v83)
                  {
                    v84 = v83 - 1;
                    *(v69 + 88) = v84;
                    if (!v84)
                    {
                      v85 = *(v69 + 64);
                      if (v85)
                      {
                        *(v69 + 64) = 0;
                        v85[2](v85);
                        _Block_release(v85);
                      }

                      if (*(v69 + 72))
                      {
                        v86 = *(v69 + 64);
                        if (v86)
                        {
                          _Block_release(v86);
                        }
                      }

                      goto LABEL_179;
                    }
                  }
                }
              }

              goto LABEL_180;
            }

            v216 = *(v6 + 16);
            if (!v216)
            {
              v216 = "invalid";
            }

            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "__nw_protocol_error";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v216;
            HIWORD(buf[2]) = 2048;
            v280 = v6;
            v161 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
            v197 = v238;
LABEL_453:
            _os_log_impl(&dword_181A37000, v197, v159, v161, buf, 0x20u);
            goto LABEL_454;
          }

          v158 = __nwlog_obj();
          v159 = type[0];
          if (!os_log_type_enabled(v158, type[0]))
          {
            goto LABEL_454;
          }

          v196 = *(v6 + 16);
          if (!v196)
          {
            v196 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_error";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v196;
          HIWORD(buf[2]) = 2048;
          v280 = v6;
          v161 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
        }

        v197 = v158;
        goto LABEL_453;
      }
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "__nw_protocol_error";
    v69 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (__nwlog_fault(v69, type, v277))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = type[0];
        if (!os_log_type_enabled(v78, type[0]))
        {
          goto LABEL_533;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_error";
        v80 = "%{public}s called with null other_protocol";
        goto LABEL_532;
      }

      if (LOBYTE(v277[0]) != 1)
      {
        v78 = __nwlog_obj();
        v79 = type[0];
        if (!os_log_type_enabled(v78, type[0]))
        {
          goto LABEL_533;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_error";
        v80 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_532;
      }

      v194 = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v79 = type[0];
      v195 = os_log_type_enabled(v78, type[0]);
      if (v194)
      {
        if (v195)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "__nw_protocol_error";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v194;
          _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v194);
        if (!v69)
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (v195)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_error";
        v80 = "%{public}s called with null other_protocol, no backtrace";
LABEL_532:
        _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0xCu);
      }
    }

LABEL_533:
    if (v69)
    {
LABEL_179:
      free(v69);
    }

LABEL_180:
    if ((v71 & 1) == 0)
    {
      v87 = *(v6 + 40);
      v88 = v6;
      if (v87 == &nw_protocol_ref_counted_handle || v87 == &nw_protocol_ref_counted_additional_handle && (v88 = *(v6 + 64)) != 0)
      {
        v89 = *(v88 + 88);
        if (v89)
        {
          v90 = v89 - 1;
          *(v88 + 88) = v90;
          if (!v90)
          {
            v91 = *(v88 + 64);
            if (v91)
            {
              *(v88 + 64) = 0;
              v91[2](v91);
              _Block_release(v91);
            }

            if (*(v88 + 72))
            {
              v92 = *(v88 + 64);
              if (v92)
              {
                _Block_release(v92);
              }
            }

            free(v88);
          }
        }
      }
    }

LABEL_192:
    v93 = *(v8 + 142);
    if ((v93 & 4) == 0 || *v8 || *(v8 + 16))
    {
      goto LABEL_255;
    }

    *(v8 + 142) = v93 & 0xFB;
    v95 = *(v6 + 32);
    v94 = *(v6 + 40);
    v96 = v6;
    if (v94 == &nw_protocol_ref_counted_handle || v94 == &nw_protocol_ref_counted_additional_handle && (v96 = *(v6 + 64)) != 0)
    {
      v100 = *(v96 + 88);
      v97 = 0;
      if (v100)
      {
        *(v96 + 88) = v100 + 1;
      }
    }

    else
    {
      v97 = 1;
    }

    if (v95)
    {
      v101 = *(v95 + 40);
      v102 = v95;
      if (v101 == &nw_protocol_ref_counted_handle || v101 == &nw_protocol_ref_counted_additional_handle && (v102 = *(v95 + 64)) != 0)
      {
        v104 = *(v102 + 88);
        v103 = 0;
        if (v104)
        {
          *(v102 + 88) = v104 + 1;
        }
      }

      else
      {
        v103 = 1;
      }

      v105 = *(v6 + 24);
      if (v105)
      {
        v106 = *(v105 + 184);
        if (v106)
        {
          v106(v6, v95);
LABEL_230:
          if (v103)
          {
            goto LABEL_242;
          }

          v107 = *(v95 + 40);
          if (v107 != &nw_protocol_ref_counted_handle)
          {
            if (v107 != &nw_protocol_ref_counted_additional_handle)
            {
              goto LABEL_242;
            }

            v95 = *(v95 + 64);
            if (!v95)
            {
              goto LABEL_242;
            }
          }

          v108 = *(v95 + 88);
          if (!v108)
          {
            goto LABEL_242;
          }

          v109 = v108 - 1;
          *(v95 + 88) = v109;
          if (v109)
          {
            goto LABEL_242;
          }

          v110 = *(v95 + 64);
          if (v110)
          {
            *(v95 + 64) = 0;
            v110[2](v110);
            _Block_release(v110);
          }

          if (*(v95 + 72))
          {
            v111 = *(v95 + 64);
            if (v111)
            {
              _Block_release(v111);
            }
          }

          goto LABEL_241;
        }
      }

      __nwlog_obj();
      v209 = *(v6 + 16);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "__nw_protocol_input_finished";
      if (!v209)
      {
        v209 = "invalid";
      }

      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v209;
      HIWORD(buf[2]) = 2048;
      v280 = v6;
      v210 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v277[0]) = 0;
      if (__nwlog_fault(v210, type, v277))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v211 = __nwlog_obj();
          v212 = type[0];
          if (!os_log_type_enabled(v211, type[0]))
          {
            goto LABEL_556;
          }

          v213 = *(v6 + 16);
          if (!v213)
          {
            v213 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v213;
          HIWORD(buf[2]) = 2048;
          v280 = v6;
          v214 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback";
LABEL_554:
          v230 = v211;
LABEL_555:
          _os_log_impl(&dword_181A37000, v230, v212, v214, buf, 0x20u);
          goto LABEL_556;
        }

        if (LOBYTE(v277[0]) != 1)
        {
          v211 = __nwlog_obj();
          v212 = type[0];
          if (!os_log_type_enabled(v211, type[0]))
          {
            goto LABEL_556;
          }

          v229 = *(v6 + 16);
          if (!v229)
          {
            v229 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v229;
          HIWORD(buf[2]) = 2048;
          v280 = v6;
          v214 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded";
          goto LABEL_554;
        }

        v221 = __nw_create_backtrace_string();
        v222 = __nwlog_obj();
        v212 = type[0];
        v244 = v222;
        v223 = os_log_type_enabled(v222, type[0]);
        if (v221)
        {
          if (v223)
          {
            v224 = *(v6 + 16);
            if (!v224)
            {
              v224 = "invalid";
            }

            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "__nw_protocol_input_finished";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v224;
            HIWORD(buf[2]) = 2048;
            v280 = v6;
            LOWORD(v281[0]) = 2082;
            *(v281 + 2) = v221;
            _os_log_impl(&dword_181A37000, v244, v212, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v221);
          goto LABEL_556;
        }

        if (v223)
        {
          v231 = *(v6 + 16);
          if (!v231)
          {
            v231 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v231;
          HIWORD(buf[2]) = 2048;
          v280 = v6;
          v214 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace";
          v230 = v244;
          goto LABEL_555;
        }
      }

LABEL_556:
      if (v210)
      {
        free(v210);
      }

      goto LABEL_230;
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "__nw_protocol_input_finished";
    v95 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v277[0]) = 0;
    if (__nwlog_fault(v95, type, v277))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v218 = __nwlog_obj();
        v219 = type[0];
        if (!os_log_type_enabled(v218, type[0]))
        {
          goto LABEL_567;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_input_finished";
        v220 = "%{public}s called with null other_protocol";
        goto LABEL_566;
      }

      if (LOBYTE(v277[0]) != 1)
      {
        v218 = __nwlog_obj();
        v219 = type[0];
        if (!os_log_type_enabled(v218, type[0]))
        {
          goto LABEL_567;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_input_finished";
        v220 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_566;
      }

      v227 = __nw_create_backtrace_string();
      v218 = __nwlog_obj();
      v219 = type[0];
      v228 = os_log_type_enabled(v218, type[0]);
      if (v227)
      {
        if (v228)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "__nw_protocol_input_finished";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v227;
          _os_log_impl(&dword_181A37000, v218, v219, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v227);
        if (!v95)
        {
          goto LABEL_242;
        }

LABEL_241:
        free(v95);
LABEL_242:
        if ((v97 & 1) == 0)
        {
          v112 = *(v6 + 40);
          v113 = v6;
          if (v112 == &nw_protocol_ref_counted_handle || v112 == &nw_protocol_ref_counted_additional_handle && (v113 = *(v6 + 64)) != 0)
          {
            v114 = *(v113 + 88);
            if (v114)
            {
              v115 = v114 - 1;
              *(v113 + 88) = v115;
              if (!v115)
              {
                v116 = *(v113 + 64);
                if (v116)
                {
                  *(v113 + 64) = 0;
                  v116[2](v116);
                  _Block_release(v116);
                }

                if (*(v113 + 72))
                {
                  v117 = *(v113 + 64);
                  if (v117)
                  {
                    _Block_release(v117);
                  }
                }

                free(v113);
              }
            }
          }
        }

        v93 = *(v8 + 142);
LABEL_255:
        if ((v93 & 8) == 0)
        {
          return v15;
        }

        *(v8 + 142) = v93 & 0xF7;
        v119 = *(v6 + 32);
        v118 = *(v6 + 40);
        v120 = v6;
        if (v118 == &nw_protocol_ref_counted_handle || v118 == &nw_protocol_ref_counted_additional_handle && (v120 = *(v6 + 64)) != 0)
        {
          v122 = *(v120 + 88);
          v121 = 0;
          if (v122)
          {
            *(v120 + 88) = v122 + 1;
          }
        }

        else
        {
          v121 = 1;
        }

        if (v119)
        {
          v123 = *(v119 + 40);
          v124 = v119;
          if (v123 == &nw_protocol_ref_counted_handle || v123 == &nw_protocol_ref_counted_additional_handle && (v124 = *(v119 + 64)) != 0)
          {
            v126 = *(v124 + 88);
            v125 = 0;
            if (v126)
            {
              *(v124 + 88) = v126 + 1;
            }
          }

          else
          {
            v125 = 1;
          }

          v127 = *(v6 + 24);
          if (v127)
          {
            v128 = *(v127 + 48);
            if (v128)
            {
              v128(v6, v119);
              goto LABEL_272;
            }
          }

          __nwlog_obj();
          v165 = *(v6 + 16);
          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_disconnected";
          if (!v165)
          {
            v165 = "invalid";
          }

          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v165;
          HIWORD(buf[2]) = 2048;
          v280 = v6;
          v166 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v277[0]) = 0;
          if (__nwlog_fault(v166, type, v277))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v167 = __nwlog_obj();
              v168 = type[0];
              if (!os_log_type_enabled(v167, type[0]))
              {
                goto LABEL_517;
              }

              v169 = *(v6 + 16);
              if (!v169)
              {
                v169 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v169;
              HIWORD(buf[2]) = 2048;
              v280 = v6;
              v170 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
              goto LABEL_516;
            }

            if (LOBYTE(v277[0]) != 1)
            {
              v167 = __nwlog_obj();
              v168 = type[0];
              if (!os_log_type_enabled(v167, type[0]))
              {
                goto LABEL_517;
              }

              v208 = *(v6 + 16);
              if (!v208)
              {
                v208 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v208;
              HIWORD(buf[2]) = 2048;
              v280 = v6;
              v170 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
              goto LABEL_516;
            }

            v191 = __nw_create_backtrace_string();
            v167 = __nwlog_obj();
            v168 = type[0];
            v192 = os_log_type_enabled(v167, type[0]);
            if (v191)
            {
              if (v192)
              {
                v193 = *(v6 + 16);
                if (!v193)
                {
                  v193 = "invalid";
                }

                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "__nw_protocol_disconnected";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v193;
                HIWORD(buf[2]) = 2048;
                v280 = v6;
                LOWORD(v281[0]) = 2082;
                *(v281 + 2) = v191;
                _os_log_impl(&dword_181A37000, v167, v168, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v191);
              goto LABEL_517;
            }

            if (v192)
            {
              v217 = *(v6 + 16);
              if (!v217)
              {
                v217 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v217;
              HIWORD(buf[2]) = 2048;
              v280 = v6;
              v170 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
LABEL_516:
              _os_log_impl(&dword_181A37000, v167, v168, v170, buf, 0x20u);
            }
          }

LABEL_517:
          if (v166)
          {
            free(v166);
          }

LABEL_272:
          if ((v125 & 1) == 0)
          {
            v129 = *(v119 + 40);
            if (v129 == &nw_protocol_ref_counted_handle || v129 == &nw_protocol_ref_counted_additional_handle && (v119 = *(v119 + 64)) != 0)
            {
              v130 = *(v119 + 88);
              if (v130)
              {
                v131 = v130 - 1;
                *(v119 + 88) = v131;
                if (!v131)
                {
                  v132 = *(v119 + 64);
                  if (v132)
                  {
                    *(v119 + 64) = 0;
                    v132[2](v132);
                    _Block_release(v132);
                  }

                  if (*(v119 + 72))
                  {
                    v133 = *(v119 + 64);
                    if (v133)
                    {
                      _Block_release(v133);
                    }
                  }

                  goto LABEL_283;
                }
              }
            }
          }

          goto LABEL_284;
        }

        __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_disconnected";
        v119 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v277[0]) = 0;
        if (__nwlog_fault(v119, type, v277))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v188 = __nwlog_obj();
            v189 = type[0];
            if (!os_log_type_enabled(v188, type[0]))
            {
              goto LABEL_542;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "__nw_protocol_disconnected";
            v190 = "%{public}s called with null other_protocol";
            goto LABEL_541;
          }

          if (LOBYTE(v277[0]) != 1)
          {
            v188 = __nwlog_obj();
            v189 = type[0];
            if (!os_log_type_enabled(v188, type[0]))
            {
              goto LABEL_542;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "__nw_protocol_disconnected";
            v190 = "%{public}s called with null other_protocol, backtrace limit exceeded";
            goto LABEL_541;
          }

          v206 = __nw_create_backtrace_string();
          v188 = __nwlog_obj();
          v189 = type[0];
          v207 = os_log_type_enabled(v188, type[0]);
          if (v206)
          {
            if (v207)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "__nw_protocol_disconnected";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v206;
              _os_log_impl(&dword_181A37000, v188, v189, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v206);
            if (!v119)
            {
              goto LABEL_284;
            }

            goto LABEL_283;
          }

          if (v207)
          {
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "__nw_protocol_disconnected";
            v190 = "%{public}s called with null other_protocol, no backtrace";
LABEL_541:
            _os_log_impl(&dword_181A37000, v188, v189, v190, buf, 0xCu);
          }
        }

LABEL_542:
        if (v119)
        {
LABEL_283:
          free(v119);
        }

LABEL_284:
        if ((v121 & 1) == 0)
        {
          v135 = *(v6 + 40);
          if (v135 == &nw_protocol_ref_counted_handle || v135 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
          {
            v136 = *(v6 + 88);
            if (v136)
            {
              v137 = v136 - 1;
              *(v6 + 88) = v137;
              if (!v137)
              {
                v138 = *(v6 + 64);
                if (v138)
                {
                  *(v6 + 64) = 0;
                  v138[2](v138);
                  _Block_release(v138);
                }

                if (*(v6 + 72))
                {
                  v139 = *(v6 + 64);
                  if (v139)
                  {
                    _Block_release(v139);
                  }
                }

                free(v6);
              }
            }
          }
        }

        return v15;
      }

      if (v228)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_input_finished";
        v220 = "%{public}s called with null other_protocol, no backtrace";
LABEL_566:
        _os_log_impl(&dword_181A37000, v218, v219, v220, buf, 0xCu);
      }
    }

LABEL_567:
    if (!v95)
    {
      goto LABEL_242;
    }

    goto LABEL_241;
  }

  return v15;
}

uint64_t nw_protocol_plugin_retry_set_getting_input_frames(uint64_t a1, void *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_plugin_retry_set_getting_input_frames";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v17, &type, &v23))
    {
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugin_retry_set_getting_input_frames";
      v20 = "%{public}s called with null retry_plugin";
    }

    else if (v23 == 1)
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
          v26 = "nw_protocol_plugin_retry_set_getting_input_frames";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null retry_plugin, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (!v22)
      {
LABEL_29:
        if (v17)
        {
          free(v17);
        }

        return 0;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugin_retry_set_getting_input_frames";
      v20 = "%{public}s called with null retry_plugin, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugin_retry_set_getting_input_frames";
      v20 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_29;
  }

  v3 = *(a1 + 108);
  if ((v3 & 1) == a3)
  {
    return 0;
  }

  if (a3)
  {
    v4 = v3 | 1;
  }

  else
  {
    v5 = a1;
    if ((v3 & 4) != 0)
    {
      *(a1 + 108) = v3 & 0xFFFB;
      v6 = *(a1 + 48);
      if (!v6 || (v7 = a2, v8 = v6(a2, a2[4], *(a1 + 104) != 0), a2 = v7, v9 = v8, a1 = v5, (v9 & 1) == 0))
      {
        v10 = a2;
        nw_protocol_common_input_finished(a2, a2[4]);
        a2 = v10;
        a1 = v5;
      }
    }

    v11 = *(a1 + 108);
    if ((v11 & 2) != 0)
    {
      *(a1 + 108) = v11 & 0xFFFD;
      v12 = *(a1 + 48);
      if (!v12 || (v13 = a2, v14 = v12(a2, a2[4], *(a1 + 104) != 0), a2 = v13, v15 = v14, a1 = v5, (v15 & 1) == 0))
      {
        nw_protocol_common_disconnected(a2, a2[4]);
        a1 = v5;
      }
    }

    v4 = *(a1 + 108) & 0xFFFE;
  }

  *(a1 + 108) = v4;
  return 1;
}

void nw_protocol_plugin_metadata_deep_copy_input_frame_array(nw_frame_array_s *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *v28 = 0;
    *&v28[8] = v28;
    *&v28[16] = 0x3802000000;
    v29 = __Block_byref_object_copy__3805;
    v30 = __Block_byref_object_dispose__3806;
    v31[0] = 0;
    v31[1] = v31;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v23 = ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke;
    v24 = &unk_1E6A2BEA0;
    v25 = v28;
    tqh_first = a1->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v3 = *(tqh_first + 4);
      v4 = (v23)(v22);
      tqh_first = v3;
    }

    while ((v4 & 1) != 0);
    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
      }
    }

    v5 = a1->tqh_first;
    if (a1->tqh_first)
    {
      *(v5 + 5) = &v26;
      tqh_last = a1->tqh_last;
      v26 = v5;
      v27 = tqh_last;
      a1->tqh_first = 0;
      a1->tqh_last = &a1->tqh_first;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v33 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v34 = &__block_descriptor_tmp_21_49595;
      v35 = 1;
      do
      {
        v7 = v26;
        if (!v26)
        {
          break;
        }

        v8 = *(v26 + 4);
        v9 = *(v26 + 5);
        v10 = (v8 + 40);
        if (!v8)
        {
          v10 = &v27;
        }

        *v10 = v9;
        *v9 = v8;
        *(v7 + 4) = 0;
        *(v7 + 5) = 0;
      }

      while (((v33)(&buf) & 1) != 0);
    }

    v11 = *&v28[8];
    v12 = *&v28[8] + 40;
    v13 = *(*&v28[8] + 40);
    if (v13)
    {
      v14 = a1->tqh_last;
      *v14 = v13;
      *(*(v11 + 40) + 40) = v14;
      a1->tqh_last = *(v11 + 48);
      *(v11 + 40) = 0;
      *(v11 + 48) = v12;
    }

    _Block_object_dispose(v28, 8);
    return;
  }

  __nwlog_obj();
  *v28 = 136446210;
  *&v28[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
  v15 = _os_log_send_and_compose_impl();
  LOBYTE(buf) = 16;
  LOBYTE(v26) = 0;
  if (__nwlog_fault(v15, &buf, &v26))
  {
    if (buf == 17)
    {
      v16 = __nwlog_obj();
      v17 = buf;
      if (!os_log_type_enabled(v16, buf))
      {
        goto LABEL_32;
      }

      *v28 = 136446210;
      *&v28[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
      v18 = "%{public}s called with null frame_array";
      goto LABEL_31;
    }

    if (v26 != 1)
    {
      v16 = __nwlog_obj();
      v17 = buf;
      if (!os_log_type_enabled(v16, buf))
      {
        goto LABEL_32;
      }

      *v28 = 136446210;
      *&v28[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
      v18 = "%{public}s called with null frame_array, backtrace limit exceeded";
      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = buf;
    v21 = os_log_type_enabled(v16, buf);
    if (backtrace_string)
    {
      if (v21)
      {
        *v28 = 136446466;
        *&v28[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
        *&v28[12] = 2082;
        *&v28[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null frame_array, dumping backtrace:%{public}s", v28, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_32;
    }

    if (v21)
    {
      *v28 = 136446210;
      *&v28[4] = "nw_protocol_plugin_metadata_deep_copy_input_frame_array";
      v18 = "%{public}s called with null frame_array, no backtrace";
LABEL_31:
      _os_log_impl(&dword_181A37000, v16, v17, v18, v28, 0xCu);
    }
  }

LABEL_32:
  if (v15)
  {
    free(v15);
  }
}

uint64_t ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  LODWORD(size) = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &size);
  if (!size)
  {
    v8 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  v5 = malloc_type_malloc(size, 0x212A1ACDuLL);
  if (v5)
  {
LABEL_5:
    memcpy(v5, v4, size);
    v8 = size;
LABEL_7:
    v9 = nw_frame_create(0, v5, v8, nw_protocol_plugin_metadata_input_frame_finalizer, 0);
    nw_frame_set_buffer_used_malloc(v9, 1);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke_36;
    v12[3] = &__block_descriptor_tmp_38_3959;
    v12[4] = v9;
    v12[5] = a2;
    nw_frame_foreach_protocol_metadata(a2, 0, v12);
    v10 = *(*(a1 + 32) + 8);
    *(v9 + 32) = 0;
    v11 = *(v10 + 48);
    *(v9 + 40) = v11;
    *v11 = v9;
    *(v10 + 48) = v9 + 32;
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  HIDWORD(size) = 136446210;
  v14 = "nw_protocol_plugin_metadata_deep_copy_input_frame_array_block_invoke";
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

uint64_t ___ZL55nw_protocol_plugin_metadata_deep_copy_input_frame_arrayP16nw_frame_array_s_block_invoke_36(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  is_metadata_complete = nw_frame_is_metadata_complete(*(a1 + 40));
  nw_frame_set_metadata(v3, a2, 0, is_metadata_complete);
  return 1;
}

void nw_protocol_plugin_metadata_input_frame_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_frame_free_buffer(a1);
    nw_frame_reset(a1, 0, 0, 0, 0);

    os_release(a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_plugin_metadata_input_frame_finalizer";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v13 = "nw_protocol_plugin_metadata_input_frame_finalizer";
      v7 = "%{public}s called with null frame";
      goto LABEL_18;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v13 = "nw_protocol_plugin_metadata_input_frame_finalizer";
      v7 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_18;
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
        v13 = "nw_protocol_plugin_metadata_input_frame_finalizer";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_19;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "nw_protocol_plugin_metadata_input_frame_finalizer";
      v7 = "%{public}s called with null frame, no backtrace";
LABEL_18:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_19:
  if (v4)
  {
    free(v4);
  }
}

uint64_t nw_protocol_plugin_metadata_finalize_output_frames(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v11, type, v61))
    {
      goto LABEL_79;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v61[0]) != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v14 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v21 = os_log_type_enabled(v12, type[0]);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v14 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (!v21)
      {
        goto LABEL_54;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v22 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v14 = "%{public}s called with null protocol";
LABEL_78:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_79;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v11, type, v61))
    {
      goto LABEL_79;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v61[0]) != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v14 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v23 = os_log_type_enabled(v12, type[0]);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          v14 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (!v23)
      {
        goto LABEL_54;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v22 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v14 = "%{public}s called with null protocol->handle";
    goto LABEL_78;
  }

  v4 = *(v3 + 72);
  if (!v4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v11, type, v61))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      v14 = "%{public}s called with null metadata_plugin";
      goto LABEL_78;
    }

    if (LOBYTE(v61[0]) != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v14 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v24 = os_log_type_enabled(v12, type[0]);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v14 = "%{public}s called with null metadata_plugin, no backtrace";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (!v24)
    {
      goto LABEL_54;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v22 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
LABEL_53:
    _os_log_impl(&dword_181A37000, v12, v13, v22, buf, 0x16u);
    goto LABEL_54;
  }

  if (a2)
  {
    v62 = 0;
    v61[0] = 0;
    v61[1] = v61;
    if (*a2)
    {
      v5 = v4[5];
      *v5 = *a2;
      *(*a2 + 40) = v5;
      v4[5] = a2[1];
      *a2 = 0;
      a2[1] = a2;
    }

    if (!v4[4])
    {
LABEL_87:
      v10 = 0;
      if (!v61[0])
      {
LABEL_113:
        nw_protocol_plugin_metadata_report_transfer(v4, a1, v4[8], v62, 0);
        return 1;
      }

LABEL_88:
      if (gLogDatapath == 1)
      {
        v47 = __nwlog_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
          *&buf[12] = 1024;
          *&buf[14] = v10;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s sending %u frames to the below protocol", buf, 0x12u);
        }
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        v30 = *(v29 + 40);
        v31 = *(a1 + 32);
        if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *(v29 + 64)) != 0)
        {
          v34 = *(v31 + 88);
          if (v34)
          {
            v32 = 0;
            *(v31 + 88) = v34 + 1;
            v33 = *(v29 + 24);
            if (!v33)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v32 = 0;
            v33 = *(v29 + 24);
            if (!v33)
            {
              goto LABEL_114;
            }
          }
        }

        else
        {
          v32 = 1;
          v33 = *(v29 + 24);
          if (!v33)
          {
            goto LABEL_114;
          }
        }

        v35 = *(v33 + 96);
        if (v35)
        {
          v35(v29, v61);
LABEL_101:
          if (v32)
          {
            goto LABEL_113;
          }

          v36 = *(v29 + 40);
          if (v36 != &nw_protocol_ref_counted_handle)
          {
            if (v36 != &nw_protocol_ref_counted_additional_handle)
            {
              goto LABEL_113;
            }

            v29 = *(v29 + 64);
            if (!v29)
            {
              goto LABEL_113;
            }
          }

          v37 = *(v29 + 88);
          if (!v37)
          {
            goto LABEL_113;
          }

          v38 = v37 - 1;
          *(v29 + 88) = v38;
          if (v38)
          {
            goto LABEL_113;
          }

          v39 = *(v29 + 64);
          if (v39)
          {
            *(v29 + 64) = 0;
            v39[2](v39);
            _Block_release(v39);
          }

          if (*(v29 + 72))
          {
            v40 = *(v29 + 64);
            if (v40)
            {
              _Block_release(v40);
            }
          }

          goto LABEL_112;
        }

LABEL_114:
        __nwlog_obj();
        v41 = *(v29 + 16);
        *buf = 136446722;
        *&buf[4] = "__nw_protocol_finalize_output_frames";
        if (!v41)
        {
          v41 = "invalid";
        }

        *&buf[12] = 2082;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        v69 = v29;
        v42 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v60) = 0;
        if (!__nwlog_fault(v42, type, &v60))
        {
          goto LABEL_153;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (!os_log_type_enabled(v43, type[0]))
          {
            goto LABEL_153;
          }

          v45 = *(v29 + 16);
          if (!v45)
          {
            v45 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v69 = v29;
          v46 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
        }

        else if (v60 == 1)
        {
          v51 = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = type[0];
          v52 = os_log_type_enabled(v43, type[0]);
          if (v51)
          {
            if (v52)
            {
              if (*(v29 + 16))
              {
                v53 = *(v29 + 16);
              }

              else
              {
                v53 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_finalize_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v53;
              *&buf[22] = 2048;
              v69 = v29;
              LOWORD(v70) = 2082;
              *(&v70 + 2) = v51;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v51);
            goto LABEL_153;
          }

          if (!v52)
          {
LABEL_153:
            if (v42)
            {
              free(v42);
            }

            goto LABEL_101;
          }

          v57 = *(v29 + 16);
          if (!v57)
          {
            v57 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v57;
          *&buf[22] = 2048;
          v69 = v29;
          v46 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
        }

        else
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (!os_log_type_enabled(v43, type[0]))
          {
            goto LABEL_153;
          }

          v56 = *(v29 + 16);
          if (!v56)
          {
            v56 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v56;
          *&buf[22] = 2048;
          v69 = v29;
          v46 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x20u);
        goto LABEL_153;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_protocol_finalize_output_frames";
      v29 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v60) = 0;
      if (__nwlog_fault(v29, type, &v60))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v48 = __nwlog_obj();
          v49 = type[0];
          if (!os_log_type_enabled(v48, type[0]))
          {
            goto LABEL_158;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          v50 = "%{public}s called with null protocol";
          goto LABEL_157;
        }

        if (v60 != 1)
        {
          v48 = __nwlog_obj();
          v49 = type[0];
          if (!os_log_type_enabled(v48, type[0]))
          {
            goto LABEL_158;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          v50 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_157;
        }

        v54 = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v49 = type[0];
        v55 = os_log_type_enabled(v48, type[0]);
        if (v54)
        {
          if (v55)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v54;
            _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          if (!v29)
          {
            goto LABEL_113;
          }

LABEL_112:
          free(v29);
          goto LABEL_113;
        }

        if (v55)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          v50 = "%{public}s called with null protocol, no backtrace";
LABEL_157:
          _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
        }
      }

LABEL_158:
      if (!v29)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s resuming saved output frames", buf, 0xCu);
      }
    }

    v59 = -1;
    v60 = 0;
    v58 = -1;
    v6 = v4[13];
    if (v6)
    {
      *type = 0;
      v64 = type;
      v65 = 0x2000000000;
      v66 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
      v69 = &unk_1E6A2BE58;
      *(&v70 + 1) = &v58;
      v71 = v4;
      v80 = 0;
      v72 = &v59;
      v73 = v4 + 4;
      v74 = v61;
      v75 = &v60;
      *&v70 = type;
      v76 = &v62;
      v77 = a1;
      v78 = v6;
      v79 = 0;
      v7 = v4[4];
      do
      {
        if (!v7)
        {
          break;
        }

        v8 = *(v7 + 32);
        v9 = (*&buf[16])(buf);
        v7 = v8;
      }

      while ((v9 & 1) != 0);
      v10 = *(v64 + 6);
      _Block_object_dispose(type, 8);
      if (!v61[0])
      {
        goto LABEL_113;
      }

      goto LABEL_88;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
    v16 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (__nwlog_fault(v16, type, &v67))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type[0];
        if (!os_log_type_enabled(v17, type[0]))
        {
          goto LABEL_85;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v19 = "%{public}s called with null processor";
        goto LABEL_84;
      }

      if (v67 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type[0];
        if (!os_log_type_enabled(v17, type[0]))
        {
          goto LABEL_85;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v19 = "%{public}s called with null processor, backtrace limit exceeded";
        goto LABEL_84;
      }

      v26 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type[0];
      v27 = os_log_type_enabled(v17, type[0]);
      if (v26)
      {
        if (v27)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null processor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_85;
      }

      if (v27)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v19 = "%{public}s called with null processor, no backtrace";
LABEL_84:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

LABEL_85:
    if (v16)
    {
      free(v16);
    }

    goto LABEL_87;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
  v11 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v61[0]) = 0;
  if (!__nwlog_fault(v11, type, v61))
  {
    goto LABEL_79;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (LOBYTE(v61[0]) != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v14 = "%{public}s called with null frames, backtrace limit exceeded";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v25 = os_log_type_enabled(v12, type[0]);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
        v14 = "%{public}s called with null frames, no backtrace";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v25)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v22 = "%{public}s called with null frames, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

LABEL_54:
    free(backtrace_string);
    goto LABEL_79;
  }

  v12 = __nwlog_obj();
  v13 = type[0];
  if (os_log_type_enabled(v12, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_finalize_output_frames";
    v14 = "%{public}s called with null frames";
    goto LABEL_78;
  }

LABEL_79:
  if (v11)
  {
    free(v11);
  }

  return 0;
}
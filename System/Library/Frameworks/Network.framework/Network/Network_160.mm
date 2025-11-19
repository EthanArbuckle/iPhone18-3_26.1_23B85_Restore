void nw_ohttp_mark_failed_with_error(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 352) != 2)
  {
    if ((*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v16 = "nw_ohttp_mark_failed_with_error";
        v17 = 2082;
        v18 = a1 + 357;
        v19 = 2080;
        v20 = " ";
        v21 = 1024;
        v22 = a2;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFailing connection with error %{darwin.errno}d", buf, 0x26u);
      }
    }

    *(a1 + 352) = 2;
    *(a1 + 296) = 6;
    v5 = *(a1 + 304);
    if (v5)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL31nw_ohttp_mark_failed_with_errorP17nw_protocol_ohttpi_block_invoke;
      v13[3] = &__block_descriptor_tmp_17_29539;
      v13[4] = a1;
      v14 = a2;
      nw_hash_table_apply(v5, v13);
    }

    path = nw_protocol_get_path(a1);
    if (path)
    {
      v7 = path;
      v8 = _nw_path_copy_parameters(v7);

      if (v8)
      {
        memset(uu, 0, 16);
        v9 = _nw_parameters_copy_effective_proxy_config(v8);
        if (v9)
        {
          v10 = v9;
          *uu = *(v10 + 56);

          os_release(v10);
        }

        os_release(v8);
        if (uuid_is_null(uu))
        {
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v11 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              v16 = "nw_ohttp_report_error_to_proxy_agent";
              v17 = 2082;
              v18 = a1 + 357;
              v19 = 2080;
              v20 = " ";
              v21 = 1024;
              v22 = a2;
              _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCannot report error %d, no proxy agent", buf, 0x26u);
            }
          }
        }

        else
        {
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136447490;
              v16 = "nw_ohttp_report_error_to_proxy_agent";
              v17 = 2082;
              v18 = a1 + 357;
              v19 = 2080;
              v20 = " ";
              v21 = 1024;
              v22 = a2;
              v23 = 1042;
              v24 = 16;
              v25 = 2098;
              v26 = uu;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReporting error %d to proxy agent %{public, uuid_t}.16P", buf, 0x36u);
            }
          }

          nw_path_report_error_to_agent(v7, uu, a2);
        }
      }
    }

    nw_protocol_error(*(a1 + 48), a1);
    nw_protocol_disconnected(*(a1 + 48), a1);
    nw_protocol_disconnect(*(a1 + 32), a1);
  }
}

uint64_t ___ZL34nw_protocol_ohttp_process_responseP17nw_protocol_ohttp_block_invoke(uint64_t a1, uint64_t a2)
{
  LODWORD(__n) = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &__n);
  memcpy((*(a1 + 40) + *(*(*(a1 + 32) + 8) + 24)), v3, __n);
  *(*(*(a1 + 32) + 8) + 24) += __n;
  return 1;
}

BOOL ___ZL45nw_protocol_finalize_partial_temp_frame_arrayP16nw_frame_array_sjP11nw_protocolb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = nw_frame_unclaimed_length(a2);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v7 <= v5)
  {
    nw_frame_claim(a2, v4, *(v6 + 24), 0);
  }

  else
  {
    *(v6 + 24) = v7 - v5;
    v8 = (*(a1 + 40) + 8);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    if (v9)
    {
      v8 = (v9 + 40);
    }

    *v8 = v10;
    *v10 = v9;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
  }

  return v7 > v5;
}

void nw_protocol_ohttp_parse_binary_http_response(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_protocol_ohttp_parse_binary_http_response";
    v39 = _os_log_send_and_compose_impl();
    LOBYTE(size) = 16;
    LOBYTE(v49) = 0;
    if (!__nwlog_fault(v39, &size, &v49))
    {
      goto LABEL_92;
    }

    if (size == 17)
    {
      v40 = __nwlog_obj();
      v41 = size;
      if (!os_log_type_enabled(v40, size))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v42 = "%{public}s called with null response_bytes";
      goto LABEL_91;
    }

    if (v49 != 1)
    {
      v40 = __nwlog_obj();
      v41 = size;
      if (!os_log_type_enabled(v40, size))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v42 = "%{public}s called with null response_bytes, backtrace limit exceeded";
      goto LABEL_91;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = size;
    v44 = os_log_type_enabled(v40, size);
    if (!backtrace_string)
    {
      if (!v44)
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v42 = "%{public}s called with null response_bytes, no backtrace";
      goto LABEL_91;
    }

    if (v44)
    {
      *buf = 136446466;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v54 = 2082;
      v55 = backtrace_string;
      _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null response_bytes, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_92:
    if (!v39)
    {
      return;
    }

    goto LABEL_93;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_protocol_ohttp_parse_binary_http_response";
    v39 = _os_log_send_and_compose_impl();
    LOBYTE(size) = 16;
    LOBYTE(v49) = 0;
    if (!__nwlog_fault(v39, &size, &v49))
    {
      goto LABEL_92;
    }

    if (size == 17)
    {
      v40 = __nwlog_obj();
      v41 = size;
      if (!os_log_type_enabled(v40, size))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v42 = "%{public}s called with null response_length";
      goto LABEL_91;
    }

    if (v49 != 1)
    {
      v40 = __nwlog_obj();
      v41 = size;
      if (!os_log_type_enabled(v40, size))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v42 = "%{public}s called with null response_length, backtrace limit exceeded";
      goto LABEL_91;
    }

    v45 = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = size;
    v46 = os_log_type_enabled(v40, size);
    if (v45)
    {
      if (v46)
      {
        *buf = 136446466;
        v53 = "nw_protocol_ohttp_parse_binary_http_response";
        v54 = 2082;
        v55 = v45;
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null response_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v45);
      if (!v39)
      {
        return;
      }

LABEL_93:
      free(v39);
      return;
    }

    if (v46)
    {
      *buf = 136446210;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v42 = "%{public}s called with null response_length, no backtrace";
LABEL_91:
      _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
      goto LABEL_92;
    }

    goto LABEL_92;
  }

  v5 = a3;
  if (*(a2 + 80))
  {
    v8 = *(a2 + 236);
    if ((v8 & 0x10) == 0)
    {
LABEL_5:
      v9 = *(a2 + 176);
      size = v9;
      if (v9)
      {
        v10 = malloc_type_calloc(1uLL, v9, 0xFE73707AuLL);
        if (v10)
        {
          if (!nw_http_fillout_body_from_binary_message(v5, a4, v10, v9, &size))
          {
            free(v10);
LABEL_60:
            if ((*(a1 + 356) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v38 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v53 = "nw_protocol_ohttp_parse_binary_http_response";
                v54 = 2082;
                v55 = a1 + 357;
                v56 = 2080;
                v57 = " ";
                v33 = "%{public}s %{public}s%sFailed to fill out body content";
                v34 = v38;
                v35 = OS_LOG_TYPE_ERROR;
                goto LABEL_63;
              }
            }

            return;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v53 = "nw_protocol_ohttp_parse_binary_http_response";
          v54 = 2048;
          v55 = 1;
          v56 = 2048;
          v57 = v9;
          v36 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort(v36))
          {
LABEL_94:
            __break(1u);
            return;
          }

          free(v36);
          if (!nw_http_fillout_body_from_binary_message(v5, a4, 0, size, &size))
          {
            goto LABEL_60;
          }
        }

        *(a2 + 168) = v10;
        v8 = *(a2 + 236);
      }

      v8 |= 8u;
      *(a2 + 236) = v8;
      v37 = *(a2 + 216);
      if (v37)
      {
        dispatch_release(v37);
        *(a2 + 216) = 0;
        v8 = *(a2 + 236);
      }

LABEL_58:
      *(a2 + 236) = v8 | 0x40;
      return;
    }

LABEL_11:
    if ((v8 & 8) != 0)
    {
      goto LABEL_46;
    }

    v13 = a4;
    do
    {
      v50 = 0;
      size = 0;
      v48 = 0;
      v49 = 0;
      v14 = nw_http_access_body_chunk_from_indeterminate_binary_message(v5, v13, (v8 & 0x20) == 0, &size, &v50, &v49, &v48);
      v13 = v48;
      v5 = v49;
      if (v50 == 1)
      {
        *(a2 + 236) |= 8u;
        v15 = nw_http_copy_trailer_fields_from_indeterminate_binary_message(v5, v13);
        if (v15)
        {
          v16 = v15;
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v53 = "nw_protocol_ohttp_parse_binary_http_response";
              v54 = 2082;
              v55 = a1 + 357;
              v56 = 2080;
              v57 = " ";
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived trailer fields from binary HTTP", buf, 0x20u);
            }
          }

          nw_http_metadata_set_trailer_fields(*(a2 + 80), v16);
          os_release(v16);
        }
      }

      v18 = size;
      if ((v50 & 1) != 0 || size)
      {
        *(a2 + 236) |= 0x20u;
        if (v14)
        {
          if (v18)
          {
            v19 = *(a2 + 168);
            if (v19)
            {
              v20 = *(a2 + 176);
              v21 = v20 + v18;
              *(a2 + 176) = v20 + v18;
              if (!(v20 + v18))
              {
                v26 = __nwlog_obj();
                os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
                *buf = 136446210;
                v53 = "nw_protocol_ohttp_parse_binary_http_response";
                v27 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v27))
                {
                  goto LABEL_94;
                }

                free(v27);
                v19 = *(a2 + 168);
              }

              v22 = reallocf(v19, v21);
              if (!v22)
              {
                v47 = __nwlog_obj();
                os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
                *buf = 136446466;
                v53 = "nw_protocol_ohttp_parse_binary_http_response";
                v54 = 2048;
                v55 = v21;
                v28 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v28))
                {
                  goto LABEL_94;
                }

                free(v28);
              }

              *(a2 + 168) = v22;
              v23 = size;
              v24 = &v22[v20];
            }

            else
            {
              *(a2 + 176) = v18;
              v24 = malloc_type_malloc(v18, 0x8E033FF3uLL);
              if (!v24)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                *buf = 136446210;
                v53 = "nw_protocol_ohttp_parse_binary_http_response";
                v25 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v25))
                {
                  goto LABEL_94;
                }

                free(v25);
                v24 = 0;
              }

              *(a2 + 168) = v24;
              v23 = size;
            }

            memcpy(v24, v14, v23);
          }
        }
      }

      v8 = *(a2 + 236);
    }

    while ((v8 & 8) == 0 && v5 && v13);
    if ((v8 & 8) != 0 || !v13)
    {
LABEL_46:
      v31 = *(a2 + 216);
      if (!v31)
      {
LABEL_49:
        v8 |= 0x20u;
        goto LABEL_58;
      }

      dispatch_release(v31);
      *(a2 + 216) = 0;
    }

    else
    {
      if (a4 <= v13)
      {
        goto LABEL_58;
      }

      subrange = dispatch_data_create_subrange(*(a2 + 216), a4 - v13, v13);
      v30 = *(a2 + 216);
      if (v30)
      {
        dispatch_release(v30);
      }

      *(a2 + 216) = subrange;
    }

    v8 = *(a2 + 236);
    goto LABEL_49;
  }

  size = 0;
  LOBYTE(v49) = 0;
  v11 = nw_http_copy_metadata_from_binary_message(a3, a4, &size, &v49);
  if (v11)
  {
    *(a2 + 80) = v11;
    v12 = size;
    v8 = *(a2 + 236) & 0xFFEF | (16 * v49);
    *(a2 + 236) = v8;
    *(a2 + 232) = 4;
    *(a2 + 176) = v12;
    *(a2 + 184) = 0;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v53 = "nw_protocol_ohttp_parse_binary_http_response";
      v54 = 2082;
      v55 = a1 + 357;
      v56 = 2080;
      v57 = " ";
      v33 = "%{public}s %{public}s%sUnable to parse metadata";
      v34 = v32;
      v35 = OS_LOG_TYPE_DEBUG;
LABEL_63:
      _os_log_impl(&dword_181A37000, v34, v35, v33, buf, 0x20u);
    }
  }
}

void nw_protocol_ohttp_deliver_response(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_deliver_response";
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, type, &v21))
    {
      goto LABEL_46;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v16 = "%{public}s called with null ohttp";
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v16 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type[0];
    v18 = os_log_type_enabled(v14, type[0]);
    if (!backtrace_string)
    {
      if (!v18)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v16 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_45;
    }

    if (v18)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_46:
    if (!v13)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_deliver_response";
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, type, &v21))
    {
      goto LABEL_46;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v16 = "%{public}s called with null ohttp_context";
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v16 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
      goto LABEL_45;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type[0];
    v20 = os_log_type_enabled(v14, type[0]);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_deliver_response";
        *&buf[12] = 2082;
        *&buf[14] = v19;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null ohttp_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      if (!v13)
      {
        return;
      }

LABEL_47:
      free(v13);
      return;
    }

    if (v20)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v16 = "%{public}s called with null ohttp_context, no backtrace";
LABEL_45:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (*(a2 + 232) == 4)
  {
    if (a1 + 64 == a2)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
LABEL_7:
        nw_protocol_input_available(v4, a1);
        return;
      }
    }

    else
    {
      v3 = *(a1 + 304);
      if (v3)
      {
        *type = 0;
        v23 = type;
        v24 = 0x2000000000;
        v25 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
        v27 = &unk_1E6A30598;
        v28 = type;
        v29 = a2;
        nw_hash_table_apply(v3, buf);
        v4 = *(v23 + 3);
        _Block_object_dispose(type, 8);
        if (v4)
        {
          goto LABEL_7;
        }
      }
    }

    if ((*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_ohttp_deliver_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v27 = " ";
        v8 = "%{public}s %{public}s%sfailed to find protocol for delivering responses";
        v9 = v12;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 32;
        goto LABEL_16;
      }
    }
  }

  else if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a2 + 232);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v27 = " ";
      LOWORD(v28) = 1024;
      *(&v28 + 2) = v7;
      v8 = "%{public}s %{public}s%sskipping, state %u";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 38;
LABEL_16:
      _os_log_impl(&dword_181A37000, v9, v10, v8, buf, v11);
    }
  }
}

uint64_t ___ZL34nw_protocol_ohttp_process_responseP17nw_protocol_ohttp_block_invoke_14(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v4 = *(extra + 236);
  if ((v4 & 0x40) != 0)
  {
    *(extra + 236) = v4 & 0xFFBF;
    nw_protocol_ohttp_deliver_response(*(a1 + 32), extra);
  }

  return 1;
}

BOOL ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v5 = *(a1 + 40);
  if (v5 == extra)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_hash_node_get_object(a2);
  }

  return v5 != extra;
}

BOOL ___ZL44nw_protocol_ohttp_get_context_for_context_idP17nw_protocol_ohttpy_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v4 = *extra;
  v5 = *(a1 + 40);
  if (*extra == v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = extra;
  }

  return v4 != v5;
}

uint64_t ___ZL31nw_ohttp_mark_failed_with_errorP17nw_protocol_ohttpi_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  *(extra + 232) = 6;
  nw_protocol_error(object, *(a1 + 32));
  nw_protocol_disconnected(object, *(a1 + 32));
  return 1;
}

uint64_t nw_protocol_oblivious_http_create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_oblivious_http_create";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v9, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v18 = "nw_protocol_oblivious_http_create";
          v12 = "%{public}s called with null parameters";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }
      }

      else if (v15 == 1)
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
            v18 = "nw_protocol_oblivious_http_create";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v14)
        {
          *buf = 136446210;
          v18 = "nw_protocol_oblivious_http_create";
          v12 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_31;
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v18 = "nw_protocol_oblivious_http_create";
          v12 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_31;
        }
      }
    }

LABEL_32:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x1C0uLL, 0xFC7FA5BEuLL);
  if (v5)
  {
LABEL_5:
    if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
    }

    if (nw_protocols_are_equal(a1, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
    {
      if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
      {
        dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
      }

      v8 = nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier;
    }

    else
    {
      if (nw_protocol_oblivious_http_identifier::onceToken != -1)
      {
        dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
      }

      v8 = &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier;
    }

    v5[2] = v8;
    if (nw_protocol_ohttp_get_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ohttp_get_callbacks(void)::onceToken, &__block_literal_global_24);
    }

    v5[3] = &nw_protocol_ohttp_get_callbacks(void)::ohttp_protocol_callbacks;
    v5[42] = 0;
    v5[43] = v5 + 42;
    v5[9] = 0;
    v5[10] = v5 + 9;
    v5[11] = 0;
    v5[5] = v5;
    v5[12] = v5 + 11;
    v5[13] = 0;
    v5[14] = v5 + 13;
    return v5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_protocol_oblivious_http_create";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 448;
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

void ___ZL31nw_protocol_ohttp_get_callbacksv_block_invoke()
{
  qword_1EA83F3D8 = nw_protocol_common_replace_input_handler;
  qword_1EA83F438 = nw_protocol_common_get_parameters;
  qword_1EA83F440 = nw_protocol_common_get_path;
  qword_1EA83F450 = nw_protocol_common_get_remote_endpoint;
  qword_1EA83F448 = nw_protocol_common_get_local_endpoint;
  qword_1EA83F490 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA83F498 = nw_protocol_common_get_output_interface;
  qword_1EA83F488 = nw_protocol_common_output_finished;
  qword_1EA83F4D0 = nw_protocol_common_input_flush;
  qword_1EA83F4C8 = nw_protocol_common_reset;
  qword_1EA83F4C0 = nw_protocol_common_get_message_properties;
  qword_1EA83F478 = nw_protocol_common_supports_external_data;
  qword_1EA83F4A0 = nw_protocol_common_waiting_for_output;
  qword_1EA83F458 = nw_protocol_common_register_notification;
  qword_1EA83F460 = nw_protocol_common_unregister_notification;
  qword_1EA83F468 = nw_protocol_common_notify;
  qword_1EA83F470 = nw_protocol_common_updated_path;
  qword_1EA83F430 = nw_protocol_common_link_state;
  nw_protocol_ohttp_get_callbacks(void)::ohttp_protocol_callbacks = nw_protocol_ohttp_add_input_handler;
  qword_1EA83F3D0 = nw_protocol_ohttp_remove_input_handler;
  qword_1EA83F418 = nw_protocol_ohttp_get_input_frames;
  qword_1EA83F408 = nw_protocol_ohttp_input_available;
  qword_1EA83F480 = nw_protocol_ohttp_input_finished;
  qword_1EA83F420 = nw_protocol_ohttp_get_output_frames;
  qword_1EA83F428 = nw_protocol_ohttp_finalize_output_frames;
  qword_1EA83F410 = nw_protocol_ohttp_output_available;
  qword_1EA83F4A8 = nw_protocol_ohttp_copy_info;
  qword_1EA83F3E0 = nw_protocol_ohttp_connect;
  qword_1EA83F3F0 = nw_protocol_ohttp_connected;
  qword_1EA83F3E8 = nw_protocol_ohttp_disconnect;
  qword_1EA83F3F8 = nw_protocol_ohttp_disconnected;
  qword_1EA83F400 = nw_protocol_ohttp_error;
}

void nw_protocol_ohttp_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_ohttp_error";
    v7 = _os_log_send_and_compose_impl();
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &v18, &v17))
    {
      goto LABEL_34;
    }

    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_error";
      v10 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_protocol_ohttp_error";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          return;
        }

LABEL_35:
        free(v7);
        return;
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_error";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_error";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {
    nw_protocol_error(a1->default_input_handler->flow_id, a2);
    v6 = *(handle + 38);
    if (v6)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL23nw_protocol_ohttp_errorP11nw_protocolS0_i_block_invoke;
      v15[3] = &__block_descriptor_tmp_47_29572;
      v15[4] = a2;
      v16 = a3;
      nw_hash_table_apply(v6, v15);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_ohttp_error";
  v7 = _os_log_send_and_compose_impl();
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v7, &v18, &v17))
  {
    goto LABEL_34;
  }

  if (v18 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_error";
    v10 = "%{public}s called with null ohttp";
    goto LABEL_33;
  }

  if (v17 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_error";
    v10 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_33;
  }

  v13 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v18;
  v14 = os_log_type_enabled(v8, v18);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_error";
    v10 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_protocol_ohttp_error";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v7)
  {
    goto LABEL_35;
  }
}

uint64_t ___ZL23nw_protocol_ohttp_errorP11nw_protocolS0_i_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_error(object, *(a1 + 32));
  return 1;
}

void nw_protocol_ohttp_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnected";
    v5 = _os_log_send_and_compose_impl();
    v15 = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &v15, &v14))
    {
      goto LABEL_34;
    }

    if (v15 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v15;
      if (!os_log_type_enabled(v6, v15))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_disconnected";
      v8 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = v15;
      v10 = os_log_type_enabled(v6, v15);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v17 = "nw_protocol_ohttp_disconnected";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v5)
        {
          return;
        }

LABEL_35:
        free(v5);
        return;
      }

      if (!v10)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_disconnected";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = v15;
      if (!os_log_type_enabled(v6, v15))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_disconnected";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {
    nw_protocol_disconnected(a1->default_input_handler->flow_id, a1);
    v4 = *(handle + 38);
    if (v4)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL30nw_protocol_ohttp_disconnectedP11nw_protocolS0__block_invoke;
      v13[3] = &__block_descriptor_tmp_46_29583;
      v13[4] = a1;
      nw_hash_table_apply(v4, v13);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_ohttp_disconnected";
  v5 = _os_log_send_and_compose_impl();
  v15 = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &v15, &v14))
  {
    goto LABEL_34;
  }

  if (v15 == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = v15;
    if (!os_log_type_enabled(v6, v15))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnected";
    v8 = "%{public}s called with null ohttp";
    goto LABEL_33;
  }

  if (v14 != 1)
  {
    v6 = __nwlog_obj();
    v7 = v15;
    if (!os_log_type_enabled(v6, v15))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnected";
    v8 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_33;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = v15;
  v12 = os_log_type_enabled(v6, v15);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnected";
    v8 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v12)
  {
    *buf = 136446466;
    v17 = "nw_protocol_ohttp_disconnected";
    v18 = 2082;
    v19 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
    goto LABEL_35;
  }
}

uint64_t ___ZL30nw_protocol_ohttp_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_disconnected(object, *(a1 + 32));
  return 1;
}

void nw_protocol_ohttp_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_ohttp_disconnect";
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
      v15 = "nw_protocol_ohttp_disconnect";
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
          v15 = "nw_protocol_ohttp_disconnect";
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
      v15 = "nw_protocol_ohttp_disconnect";
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
      v15 = "nw_protocol_ohttp_disconnect";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_36;
  }

  if (a1->handle)
  {
    if (a1->default_input_handler == a2)
    {
      output_handler = a1->output_handler;

      nw_protocol_disconnect(output_handler, a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_ohttp_disconnect";
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
    v15 = "nw_protocol_ohttp_disconnect";
    v7 = "%{public}s called with null ohttp";
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
    v15 = "nw_protocol_ohttp_disconnect";
    v7 = "%{public}s called with null ohttp, backtrace limit exceeded";
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
    v15 = "nw_protocol_ohttp_disconnect";
    v7 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_35;
  }

  if (v11)
  {
    *buf = 136446466;
    v15 = "nw_protocol_ohttp_disconnect";
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v4)
  {
    goto LABEL_37;
  }
}

void nw_protocol_ohttp_connected(nw_protocol *a1, nw_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_ohttp_connected";
    v6 = _os_log_send_and_compose_impl();
    v16 = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &v16, &v15))
    {
      goto LABEL_36;
    }

    if (v16 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v16;
      if (!os_log_type_enabled(v7, v16))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_connected";
      v9 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v16;
      v11 = os_log_type_enabled(v7, v16);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v18 = "nw_protocol_ohttp_connected";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          return;
        }

LABEL_37:
        free(v6);
        return;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_connected";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = v16;
      if (!os_log_type_enabled(v7, v16))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_connected";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (handle)
  {
    *(handle + 356) |= 8u;
    nw_protocol_connected(a1->default_input_handler->flow_id, a2);
    if (a1->output_handler == a2)
    {
      nw_protocol_connected(a1->default_input_handler->flow_id, a1);
    }

    v5 = *(handle + 38);
    if (v5)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = ___ZL27nw_protocol_ohttp_connectedP11nw_protocolS0__block_invoke;
      v14[3] = &__block_descriptor_tmp_45_29604;
      v14[4] = a1;
      nw_hash_table_apply(v5, v14);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_ohttp_connected";
  v6 = _os_log_send_and_compose_impl();
  v16 = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &v16, &v15))
  {
    goto LABEL_36;
  }

  if (v16 == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = v16;
    if (!os_log_type_enabled(v7, v16))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_connected";
    v9 = "%{public}s called with null ohttp";
    goto LABEL_35;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = v16;
    if (!os_log_type_enabled(v7, v16))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_connected";
    v9 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = v16;
  v13 = os_log_type_enabled(v7, v16);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_connected";
    v9 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v18 = "nw_protocol_ohttp_connected";
    v19 = 2082;
    v20 = v12;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v6)
  {
    goto LABEL_37;
  }
}

uint64_t ___ZL27nw_protocol_ohttp_connectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_connected(object, *(a1 + 32));
  return 1;
}

uint64_t nw_protocol_ohttp_connect(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[356] & 8) != 0)
      {
        nw_protocol_connected(a2, a1);
        return 1;
      }

      else
      {
        output_handler = a1->output_handler;

        return nw_protocol_connect(output_handler, a1);
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_ohttp_connect";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_ohttp_connect";
        v9 = "%{public}s called with null ohttp";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_ohttp_connect";
        v9 = "%{public}s called with null ohttp, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v17 = "nw_protocol_ohttp_connect";
        v9 = "%{public}s called with null ohttp, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_ohttp_connect";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_ohttp_connect";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v6, &type, &v14))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_ohttp_connect";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_ohttp_connect";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_ohttp_connect";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v12, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_ohttp_connect";
    v9 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_36:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_ohttp_copy_info(uint64_t a1, int a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_ohttp_copy_info";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v11, &type, &v19))
    {
      goto LABEL_41;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v22 = "nw_protocol_ohttp_copy_info";
        v14 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v22 = "nw_protocol_ohttp_copy_info";
        v14 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_protocol_ohttp_copy_info";
        v23 = 2082;
        v24 = backtrace_string;
        v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
        _os_log_impl(&dword_181A37000, v12, v13, v17, buf, 0x16u);
      }

LABEL_31:
      free(backtrace_string);
      goto LABEL_41;
    }

    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_copy_info";
    v14 = "%{public}s called with null protocol";
LABEL_40:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_41:
    if (v11)
    {
      free(v11);
    }

    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_ohttp_copy_info";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v11, &type, &v19))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_copy_info";
      v14 = "%{public}s called with null ohttp";
      goto LABEL_40;
    }

    if (v19 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_copy_info";
      v14 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v18 = os_log_type_enabled(v12, type);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        v22 = "nw_protocol_ohttp_copy_info";
        v23 = 2082;
        v24 = backtrace_string;
        v17 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (!v18)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_copy_info";
    v14 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_40;
  }

  if (a2 == 253)
  {
    return 0;
  }

  result = nw_protocol_common_copy_info(a1, a2);
  if (a2 == 255 && a3)
  {
    v7 = result;
    context_for_protocol = nw_protocol_ohttp_get_context_for_protocol(v3, a3);
    if (context_for_protocol)
    {
      v9 = *(context_for_protocol + 88);
      result = v7;
      if (v9)
      {
        if (v7 || (result = _nw_array_create()) != 0)
        {
          v10 = result;
          _nw_array_append(result, v9);
          return v10;
        }
      }
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t nw_protocol_ohttp_get_context_for_protocol(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_ohttp_get_context_for_protocol";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v7, &type, &v13))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_get_context_for_protocol";
      v10 = "%{public}s called with null input_protocol";
    }

    else if (v13 == 1)
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
          v16 = "nw_protocol_ohttp_get_context_for_protocol";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (!v12)
      {
LABEL_25:
        if (v7)
        {
          free(v7);
        }

        return 0;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_get_context_for_protocol";
      v10 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_get_context_for_protocol";
      v10 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_25;
  }

  if (*(a1 + 48) == a2)
  {
    return a1 + 64;
  }

  result = *(a1 + 304);
  if (!result)
  {
    return result;
  }

  node = nw_hash_table_get_node(result, a2, 8);
  if (node && *(a2 + 56) == node)
  {
    return node + 32;
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "nw_protocol_ohttp_get_context_for_protocol";
      v17 = 2082;
      v18 = (a1 + 357);
      v19 = 2080;
      v20 = " ";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo valid node found", buf, 0x20u);
      return 0;
    }
  }

  return 0;
}

void nw_protocol_ohttp_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_ohttp_output_available";
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
      v14 = "nw_protocol_ohttp_output_available";
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
          v14 = "nw_protocol_ohttp_output_available";
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

        goto LABEL_35;
      }

      if (!v8)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_ohttp_output_available";
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
      v14 = "nw_protocol_ohttp_output_available";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {

    nw_protocol_ohttp_send_request(handle);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_ohttp_output_available";
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
    v14 = "nw_protocol_ohttp_output_available";
    v6 = "%{public}s called with null ohttp";
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
    v14 = "nw_protocol_ohttp_output_available";
    v6 = "%{public}s called with null ohttp, backtrace limit exceeded";
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
    v14 = "nw_protocol_ohttp_output_available";
    v6 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v10)
  {
    *buf = 136446466;
    v14 = "nw_protocol_ohttp_output_available";
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v3)
  {
LABEL_35:
    free(v3);
  }
}

void nw_protocol_ohttp_send_request(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 328);
  if (!v2)
  {
LABEL_6:
    if (*(a1 + 296) != 1 || (nw_protocol_ohttp_context_send_request(a1, a1 + 64), !*(a1 + 328)))
    {
      v5 = *(a1 + 304);
      if (v5)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 0x40000000;
        v7[2] = ___ZL30nw_protocol_ohttp_send_requestP17nw_protocol_ohttp_block_invoke;
        v7[3] = &__block_descriptor_tmp_41_29647;
        v7[4] = a1;
        nw_hash_table_apply(v5, v7);
      }
    }

    return;
  }

  if (a1 + 64 == v2)
  {
    if (*(a1 + 48))
    {
LABEL_5:
      nw_protocol_ohttp_context_send_request(a1, *(a1 + 328));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(a1 + 304);
    if (v3)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2000000000;
      v11 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
      v13 = &unk_1E6A30598;
      v14 = &v8;
      v15 = v2;
      nw_hash_table_apply(v3, buf);
      v4 = v9[3];
      _Block_object_dispose(&v8, 8);
      if (v4)
      {
        goto LABEL_5;
      }
    }
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v13 = " ";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPending request context is no longer valid", buf, 0x20u);
    }
  }

  nw_ohttp_mark_failed_with_error(a1, 22);
}

void nw_protocol_ohttp_context_send_request(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_protocol_ohttp_context_send_request";
    v20 = _os_log_send_and_compose_impl();
    LOBYTE(v48) = 16;
    LOBYTE(v44) = 0;
    if (!__nwlog_fault(v20, &v48, &v44))
    {
      goto LABEL_71;
    }

    if (v48 == 17)
    {
      v21 = __nwlog_obj();
      v22 = v48;
      if (!os_log_type_enabled(v21, v48))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_context_send_request";
      v23 = "%{public}s called with null ohttp";
    }

    else if (v44 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = v48;
      v25 = os_log_type_enabled(v21, v48);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v53 = "nw_protocol_ohttp_context_send_request";
          v54 = 2082;
          v55 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_71;
      }

      if (!v25)
      {
LABEL_71:
        if (v20)
        {
          free(v20);
        }

        return;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_context_send_request";
      v23 = "%{public}s called with null ohttp, no backtrace";
    }

    else
    {
      v21 = __nwlog_obj();
      v22 = v48;
      if (!os_log_type_enabled(v21, v48))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v53 = "nw_protocol_ohttp_context_send_request";
      v23 = "%{public}s called with null ohttp, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
    goto LABEL_71;
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (*(a2 + 144) == *(a2 + 152))
    {
      if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
      {
        v6 = __nwlog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v53 = "nw_protocol_ohttp_context_send_request";
          v54 = 2082;
          v55 = (a1 + 357);
          v56 = 2080;
          v57 = " ";
          v7 = "%{public}s %{public}s%signoring write, no pending bytes";
LABEL_16:
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 0x20u);
        }
      }
    }

    else
    {
      v48 = 0;
      v49 = &v48;
      v29 = a1 + 357;
      v50 = 0x2000000000;
      v51 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x2000000000;
      v47 = 0;
      while (1)
      {
        if (*(a2 + 232) != 1)
        {
          if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
          {
            v26 = __nwlog_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(a2 + 232);
              *buf = 136446978;
              v53 = "nw_protocol_ohttp_context_send_request";
              v54 = 2082;
              v55 = v29;
              v56 = 2080;
              v57 = " ";
              v58 = 1024;
              v59 = v27;
              _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
            }
          }

          goto LABEL_55;
        }

        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2000000000;
        v8 = *(a2 + 144);
        v9 = *(a2 + 152);
        v43 = v8 - v9;
        if (v8 == v9)
        {
          break;
        }

        v41[0] = 0;
        v41[1] = v41;
        output_frames = nw_protocol_get_output_frames(*(a1 + 32), a1, 1, (v8 - v9), 0xFFFFFFFFLL, v41);
        if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
        {
          v28 = output_frames;
          v15 = __nwlog_obj();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          output_frames = v28;
          if (v16)
          {
            *buf = 136446978;
            v53 = "nw_protocol_ohttp_context_send_request";
            v54 = 2082;
            v55 = v29;
            v56 = 2080;
            v57 = " ";
            v58 = 1024;
            v59 = v28;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot %u output frames", buf, 0x26u);
            output_frames = v28;
          }
        }

        if (!output_frames)
        {
          break;
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 0x40000000;
        v32 = ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
        v33 = &unk_1E6A30750;
        v34 = &v48;
        v35 = v42;
        v38 = a1;
        v39 = a2;
        v40 = a1;
        v36 = &v44;
        v37 = v41;
        v11 = v41[0];
        do
        {
          if (!v11)
          {
            break;
          }

          v12 = *(v11 + 32);
          v13 = v32(v31);
          v11 = v12;
        }

        while ((v13 & 1) != 0);
        nw_protocol_finalize_output_frames(*(a1 + 32), v41);
        if (*(v45 + 24) == 1 && !*(a1 + 352))
        {
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v53 = "nw_protocol_ohttp_context_send_request";
              v54 = 2082;
              v55 = v29;
              v56 = 2080;
              v57 = " ";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent outer request", buf, 0x20u);
            }
          }

          *(a1 + 352) = 1;
        }

        _Block_object_dispose(v42, 8);
        if (*(v49 + 24) == 1)
        {
          goto LABEL_36;
        }
      }

      _Block_object_dispose(v42, 8);
LABEL_36:
      if (*(a2 + 144) == *(a2 + 152))
      {
        *(a2 + 144) = 0;
        *(a2 + 152) = 0;
        v17 = *(a2 + 136);
        if (v17)
        {
          free(v17);
          *(a2 + 136) = 0;
        }
      }

      if (*(v49 + 24) == 1)
      {
        if ((*(a1 + 356) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v53 = "nw_protocol_ohttp_context_send_request";
            v54 = 2082;
            v55 = v29;
            v56 = 2080;
            v57 = " ";
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent complete request", buf, 0x20u);
          }
        }

        *(a1 + 328) = 0;
        if ((*(a2 + 236) & 0x104) == 4)
        {
          *(a2 + 232) = 2;
        }
      }

      else
      {
        if (*(v45 + 24) != 1)
        {
          goto LABEL_55;
        }

        *(a1 + 328) = a2;
      }

      nw_protocol_ohttp_read_response(a1, 0);
      if (v45[3])
      {
        if (*a2)
        {
          if ((*(a2 + 236) & 1) == 0 && (*(a1 + 356) & 0x20) == 0)
          {
            *(a1 + 356) |= 0x20u;
            v19 = *(a1 + 304);
            if (v19)
            {
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 0x40000000;
              v30[2] = ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_43;
              v30[3] = &__block_descriptor_tmp_44_29660;
              v30[4] = a1;
              nw_hash_table_apply(v19, v30);
            }
          }
        }
      }

LABEL_55:
      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v48, 8);
    }
  }

  else if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v53 = "nw_protocol_ohttp_context_send_request";
      v54 = 2082;
      v55 = (a1 + 357);
      v56 = 2080;
      v57 = " ";
      v7 = "%{public}s %{public}s%signoring write, pending finishing another context";
      goto LABEL_16;
    }
  }
}

BOOL ___ZL30nw_protocol_ohttp_send_requestP17nw_protocol_ohttp_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  result = 1;
  if (*(extra + 232) == 1)
  {
    nw_protocol_ohttp_context_send_request(*(a1 + 32), extra);
    if (*(*(a1 + 32) + 328))
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v4 = (a1[7] + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v7 = a1[8];
    if ((!v7 || (*(v7 + 356) & 1) == 0) && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = a1[8];
        v10 = "";
        v11 = v9 == 0;
        if (v9)
        {
          v12 = (v9 + 357);
        }

        else
        {
          v12 = "";
        }

        v22 = 136446722;
        v23 = "nw_protocol_ohttp_context_send_request_block_invoke";
        if (!v11)
        {
          v10 = " ";
        }

        v24 = 2082;
        v25 = v12;
        v26 = 2080;
        v27 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDropping unneeded output frame", &v22, 0x20u);
      }
    }
  }

  else
  {
    v22 = 0;
    v13 = nw_frame_unclaimed_bytes(a2, &v22);
    v14 = *(*(a1[5] + 8) + 24);
    if (v22 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v22;
    }

    memcpy(v13, (*(a1[9] + 136) + *(a1[9] + 152)), v15);
    nw_frame_claim(a2, v16, v15, 0);
    *(a1[9] + 152) += v15;
    *(*(a1[5] + 8) + 24) -= v15;
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v17, v15, 0);
    *(*(a1[4] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0;
    v18 = a1[8];
    v20 = (*(v18 + 356) & 4) == 0 && *(*(a1[4] + 8) + 24) == 1 && (v19 = *(a1[9] + 236), (v19 & 4) != 0) && (v19 & 0x100) == 0;
    *(*(a1[6] + 8) + 24) = 1;
    nw_frame_set_metadata(a2, *(v18 + 312), 0, v20);
  }

  return 1;
}

void nw_protocol_ohttp_read_response(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1 + 357;
  while (*(a1 + 352) == 1)
  {
    v21[0] = 0;
    v21[1] = v21;
    input_frames = nw_protocol_get_input_frames(*(a1 + 32), a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v21);
    if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
    {
      v15 = input_frames;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      input_frames = v15;
      if (v11)
      {
        *buf = 136446978;
        v23 = "nw_protocol_ohttp_read_response";
        v24 = 2082;
        v25 = v4;
        v26 = 2080;
        v27 = " ";
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot %u input frames", buf, 0x26u);
        input_frames = v15;
      }
    }

    if (!input_frames)
    {
      v5 = *(a1 + 356);
LABEL_18:
      if ((v5 & 0x10) == 0)
      {
        if (a2)
        {
          *(a1 + 356) = v5 | 0x10;
          if ((v5 & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v23 = "nw_protocol_ohttp_read_response";
              v24 = 2082;
              v25 = v4;
              v26 = 2080;
              v27 = " ";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sInferring complete response, received input finished", buf, 0x20u);
            }
          }
        }
      }

      if (*(a1 + 320))
      {
        if ((*(a1 + 356) & 0x12) != 0)
        {
          nw_protocol_ohttp_process_response(a1);
        }
      }

      return;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v17 = ___ZL31nw_protocol_ohttp_read_responseP17nw_protocol_ohttpb_block_invoke;
    v18 = &__block_descriptor_tmp_31_29790;
    v19 = v21;
    v20 = a1;
    v7 = v21[0];
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 32);
      v9 = (v17)(v16);
      v7 = v8;
    }

    while ((v9 & 1) != 0);
    v5 = *(a1 + 356);
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_18;
    }
  }

  if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 352);
      *buf = 136446978;
      v23 = "nw_protocol_ohttp_read_response";
      v24 = 2082;
      v25 = v4;
      v26 = 2080;
      v27 = " ";
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
    }
  }
}

uint64_t ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_43(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  if ((*(extra + 236) & 0x100) != 0 && *(extra + 232) == 1)
  {
    nw_protocol_ohttp_prepare_request(*(a1 + 32), extra);
  }

  return 1;
}

void nw_protocol_ohttp_prepare_request(uint64_t a1, uint64_t a2)
{
  v146 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_prepare_request";
    v84 = _os_log_send_and_compose_impl();
    LOBYTE(v139) = 16;
    LOBYTE(v138) = 0;
    if (!__nwlog_fault(v84, &v139, &v138))
    {
      goto LABEL_168;
    }

    if (v139 == 17)
    {
      v85 = __nwlog_obj();
      v86 = v139;
      if (!os_log_type_enabled(v85, v139))
      {
        goto LABEL_168;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      v87 = "%{public}s called with null ohttp";
    }

    else if (v138 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v86 = v139;
      v89 = os_log_type_enabled(v85, v139);
      if (backtrace_string)
      {
        if (v89)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_168;
      }

      if (!v89)
      {
LABEL_168:
        if (v84)
        {
          free(v84);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      v87 = "%{public}s called with null ohttp, no backtrace";
    }

    else
    {
      v85 = __nwlog_obj();
      v86 = v139;
      if (!os_log_type_enabled(v85, v139))
      {
        goto LABEL_168;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      v87 = "%{public}s called with null ohttp, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0xCu);
    goto LABEL_168;
  }

  v4 = *(a2 + 236);
  if ((v4 & 2) != 0)
  {
    if ((*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_ohttp_prepare_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v141 = " ";
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSkipping request, receive-only context", buf, 0x20u);
      }
    }

    *(a1 + 328) = 0;
    *(a2 + 236) |= 4u;
    *(a2 + 232) = 2;
    nw_protocol_ohttp_read_response(a1, 0);
    return;
  }

  v5 = *(a2 + 232);
  if ((*(a1 + 356) & 2) == 0)
  {
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_20:
    if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a2 + 232);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_ohttp_prepare_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v141 = " ";
        v142 = 1024;
        LODWORD(v143) = v16;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
      }
    }

    return;
  }

  if (v5 >= 2)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (*(a2 + 72) || (v4 & 1) != 0 || *(a2 + 224))
  {
    if (!(v4 & 4 | *(a1 + 356) & 2))
    {
      if (*(a1 + 356))
      {
        return;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v12 = __nwlog_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v141 = " ";
      v13 = "%{public}s %{public}s%sskipping, request not ready";
LABEL_28:
      v17 = v12;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_34:
      _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0x20u);
      return;
    }

    length = xpc_data_get_length(*(a2 + 96));
    bytes_ptr = xpc_data_get_bytes_ptr(*(a2 + 96));
    *buf = 0;
    nw_frame_array_get_frame_count((a2 + 24), 0, buf);
    v8 = *buf;
    v9 = *(a2 + 236);
    v117 = *buf;
    if ((v9 & 1) == 0 || (*(a1 + 356) & 0x20) != 0)
    {
      *(a2 + 236) = v9 & 0xFEFF;
    }

    else
    {
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_ohttp_standalone_aead_threshold, 3000);
      v11 = *(a2 + 160);
      if (v11 + v8 > int64_with_default)
      {
        *(a2 + 236) |= 0x100u;
        v8 = int64_with_default - v11;
        if (int64_with_default <= v11)
        {
          if (*(a1 + 356))
          {
            return;
          }

          if (gLogDatapath != 1)
          {
            return;
          }

          v12 = __nwlog_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v141 = " ";
          v13 = "%{public}s %{public}s%sskipping, nothing to send, hit threshold";
          goto LABEL_28;
        }
      }
    }

    v20 = *(a2 + 24);
    if (v8 == nw_frame_unclaimed_length(v20))
    {
      v21 = nw_frame_unclaimed_bytes(v20, 0);
    }

    else
    {
      if (v8)
      {
        v21 = malloc_type_calloc(1uLL, v8, 0x82D2F6A6uLL);
        if (!v21)
        {
          v22 = __nwlog_obj();
          os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          v141 = v8;
          v23 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort(v23))
          {
            goto LABEL_228;
          }

          free(v23);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v141 = 0;
        v130[0] = MEMORY[0x1E69E9820];
        v130[1] = 0x40000000;
        v131 = ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
        v132 = &unk_1E6A306C0;
        v133 = buf;
        v134 = v8;
        v135 = v21;
        v24 = *(a2 + 24);
        do
        {
          if (!v24)
          {
            break;
          }

          v25 = *(v24 + 16);
          v26 = v131(v130);
          v24 = v25;
        }

        while ((v26 & 1) != 0);
        _Block_object_dispose(buf, 8);
        v27 = v21;
LABEL_48:
        v129 = 0;
        v28 = *(a2 + 236);
        if ((v28 & 1) == 0)
        {
          v29 = nw_http_create_oblivious_request(a2, (*(a1 + 356) >> 1) & 1, (*(a1 + 356) >> 2) & 1, v21, v8, (v28 >> 2) & 1, bytes_ptr, length, &v129);
LABEL_125:
          if (v27)
          {
            free(v27);
          }

          if (!v29)
          {
            if ((*(a1 + 356) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v74 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_ohttp_prepare_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 357;
                *&buf[22] = 2080;
                v141 = " ";
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to prepare request", buf, 0x20u);
              }
            }

            nw_ohttp_mark_failed_with_error(a1, 22);
            return;
          }

          v69 = *(a2 + 136);
          if (!v69)
          {
            v75 = v129;
            *(a2 + 136) = v29;
            *(a2 + 144) = v75;
            *(a2 + 152) = 0;
            goto LABEL_137;
          }

          v70 = *(a2 + 144);
          v72 = v129 + v70;
          v71 = v129 + v70 == 0;
          *(a2 + 144) = v129 + v70;
          if (v71)
          {
            v95 = __nwlog_obj();
            os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_prepare_request";
            v96 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v96))
            {
              goto LABEL_228;
            }

            free(v96);
            v69 = *(a2 + 136);
          }

          v73 = reallocf(v69, v72);
          if (v73)
          {
LABEL_131:
            *(a2 + 136) = v73;
            memcpy(&v73[v70], v29, v129);
LABEL_137:
            if (v8 >= v117)
            {
              v118[0] = MEMORY[0x1E69E9820];
              v118[1] = 0x40000000;
              v119 = ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_2;
              v120 = &__block_descriptor_tmp_39_29706;
              v121 = a2;
              v80 = *(a2 + 24);
              do
              {
                if (!v80)
                {
                  break;
                }

                v81 = *(v80 + 16);
                v82 = v119(v118);
                v80 = v81;
              }

              while ((v82 & 1) != 0);
            }

            else
            {
              v76 = *(a2 + 160);
              *(a2 + 160) = v76 + v8;
              if (__CFADD__(v76, v8))
              {
                if (gLogDatapath == 1)
                {
                  v111 = __nwlog_obj();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                  {
                    v112 = *(a2 + 160);
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_ohttp_prepare_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->cumulative_request_length";
                    *&buf[22] = 2048;
                    v141 = v8;
                    v142 = 2048;
                    v143 = v112;
                    _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                  }
                }

                *(a2 + 160) = -1;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              LODWORD(v141) = 0;
              v122[0] = MEMORY[0x1E69E9820];
              v122[1] = 0x40000000;
              v123 = ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_37;
              v124 = &unk_1E6A306E8;
              v125 = buf;
              v126 = v8;
              v127 = a2;
              v128 = a1;
              v77 = *(a2 + 24);
              do
              {
                if (!v77)
                {
                  break;
                }

                v78 = *(v77 + 16);
                v79 = v123(v122);
                v77 = v78;
              }

              while ((v79 & 1) != 0);
              _Block_object_dispose(buf, 8);
            }

            if ((*(a1 + 356) & 2) == 0)
            {
              *buf = 0;
              *&buf[8] = 0;
              snprintf(buf, 0x10uLL, "%zu", *(a2 + 144));
              v83 = nw_http_metadata_copy_request(*(a1 + 312));
              nw_http_fields_append(v83, "Content-Length", buf);
              if (v83)
              {
                os_release(v83);
              }
            }

            *(a2 + 232) = 1;
            nw_protocol_ohttp_send_request(a1, v80);
            return;
          }

          v97 = __nwlog_obj();
          os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          *&buf[12] = 2048;
          *&buf[14] = v72;
          v98 = _os_log_send_and_compose_impl();
          if (!__nwlog_should_abort(v98))
          {
            free(v98);
            v73 = 0;
            goto LABEL_131;
          }

LABEL_228:
          __break(1u);
          return;
        }

        if (bytes_ptr)
        {
          if (length)
          {
            v115 = v27;
            if (!v8 || v21)
            {
              v30 = *a2;
              v139 = 0;
              if (v30 > 0x3F)
              {
                if (v30 >> 14)
                {
                  if (v30 >> 30)
                  {
                    if (v30 >> 62)
                    {
                      v31 = __nwlog_obj();
                      os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
                      *buf = 136446466;
                      *&buf[4] = "_http_vle_encode";
                      *&buf[12] = 2048;
                      *&buf[14] = v30;
                      v32 = _os_log_send_and_compose_impl();
                      if (__nwlog_should_abort(v32))
                      {
                        goto LABEL_228;
                      }

                      free(v32);
                      __n = 0;
                    }

                    else
                    {
                      v139 = bswap64(v30 | 0xC000000000000000);
                      __n = 8;
                    }
                  }

                  else
                  {
                    v139 = bswap32(v30 | 0x80000000);
                    __n = 4;
                  }
                }

                else
                {
                  v139 = bswap32(v30 | 0x4000) >> 16;
                  __n = 2;
                }
              }

              else
              {
                v139 = v30;
                __n = 1;
              }

              v33 = *(a2 + 192);
              if (!v33)
              {
                cchpke_params_x25519_AESGCM128_HKDF_SHA256();
                v34 = cchpke_params_sizeof_aead_nonce();
                *(a2 + 200) = v34;
                if (!v34)
                {
                  v109 = __nwlog_obj();
                  os_log_type_enabled(v109, OS_LOG_TYPE_ERROR);
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v110 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v110))
                  {
                    goto LABEL_228;
                  }

                  free(v110);
                  v34 = 0;
                }

                v35 = malloc_type_malloc(v34, 0xF835612DuLL);
                if (!v35)
                {
                  v36 = __nwlog_obj();
                  os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v37 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v37))
                  {
                    goto LABEL_228;
                  }

                  free(v37);
                  v35 = 0;
                }

                *(a2 + 192) = v35;
                arc4random_buf(v35, *(a2 + 200));
                *(a2 + 208) = 0;
              }

              v38 = v28 & 0x104;
              v138 = 0;
              if (v8)
              {
                v39 = nw_http_encrypt_standalone_aead_chunk(v21, v8, *(a2 + 208), v38 == 4, bytes_ptr, length, *(a2 + 192), *(a2 + 200), &v138);
                if (!v39)
                {
                  v40 = __nwlog_obj();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s Failed to fill out AEAD chunk", buf, 0xCu);
                  }

                  v29 = 0;
                  v27 = v115;
                  goto LABEL_125;
                }
              }

              else
              {
                v39 = 0;
              }

              v41 = *(a2 + 208);
              v42 = __CFADD__(v41, 1);
              v43 = v41 + 1;
              v44 = v42;
              *(a2 + 208) = v43;
              if (v44 << 63 >> 63 == v44)
              {
LABEL_97:
                if (v33)
                {
                  v56 = 0;
                }

                else
                {
                  v56 = *(a2 + 200) + 2;
                }

                v57 = v56 + __n + v138;
                __src = 0;
                if (v57 > 0x3F)
                {
                  if (v57 >> 14)
                  {
                    if (v57 >> 30)
                    {
                      if (v57 >> 62)
                      {
                        v59 = __nwlog_obj();
                        os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
                        *buf = 136446466;
                        *&buf[4] = "_http_vle_encode";
                        *&buf[12] = 2048;
                        *&buf[14] = v57;
                        v60 = _os_log_send_and_compose_impl();
                        if (__nwlog_should_abort(v60))
                        {
                          goto LABEL_228;
                        }

                        free(v60);
                        v58 = 0;
                      }

                      else
                      {
                        __src = bswap64(v57 | 0xC000000000000000);
                        v58 = 8;
                      }
                    }

                    else
                    {
                      __src = bswap32(v57 | 0x80000000);
                      v58 = 4;
                    }
                  }

                  else
                  {
                    __src = bswap32(v57 | 0x4000) >> 16;
                    v58 = 2;
                  }
                }

                else
                {
                  __src = v56 + __n + v138;
                  v58 = 1;
                }

                if (v38 == 4)
                {
                  v61 = v57 + 1;
                }

                else
                {
                  v61 = v57;
                }

                v62 = v61 + v58;
                v129 = v61 + v58;
                if (!(v61 + v58))
                {
                  v99 = __nwlog_obj();
                  os_log_type_enabled(v99, OS_LOG_TYPE_ERROR);
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v100 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v100))
                  {
                    goto LABEL_228;
                  }

                  free(v100);
                }

                v29 = malloc_type_calloc(1uLL, v62, 0x47FA503DuLL);
                if (!v29)
                {
                  v63 = __nwlog_obj();
                  os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
                  *buf = 136446722;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  *&buf[12] = 2048;
                  *&buf[14] = 1;
                  *&buf[22] = 2048;
                  v141 = v62;
                  v64 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v64))
                  {
                    goto LABEL_228;
                  }

                  free(v64);
                }

                v65 = v29;
                if (v38 == 4)
                {
                  *v29 = 0;
                  v65 = v29 + 1;
                }

                memcpy(v65, &__src, v58);
                v66 = &v65[v58];
                memcpy(v66, &v139, __n);
                v67 = &v66[__n];
                if (!v33)
                {
                  *v67 = 256;
                  v68 = v67 + 2;
                  memcpy(v68, *(a2 + 192), *(a2 + 200));
                  v67 = &v68[*(a2 + 200)];
                }

                v27 = v115;
                if (v138)
                {
                  memcpy(v67, v39, v138);
                }

                if (v39)
                {
                  free(v39);
                }

                goto LABEL_125;
              }

              __nwlog_obj();
              v45 = *(a2 + 208);
              *buf = 136446978;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              *&buf[12] = 2082;
              *&buf[14] = "ohttp_context->aead_chunk_index";
              *&buf[22] = 2048;
              v141 = 1;
              v142 = 2048;
              v143 = v45;
              v46 = _os_log_send_and_compose_impl();
              LOBYTE(__src) = 16;
              v137 = 0;
              if (__nwlog_fault(v46, &__src, &v137))
              {
                if (__src == 17)
                {
                  v47 = __nwlog_obj();
                  v48 = __src;
                  if (os_log_type_enabled(v47, __src))
                  {
                    v49 = *(a2 + 208);
                    *buf = 136446978;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->aead_chunk_index";
                    *&buf[22] = 2048;
                    v141 = 1;
                    v142 = 2048;
                    v143 = v49;
                    v50 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_93:
                    _os_log_impl(&dword_181A37000, v47, v48, v50, buf, 0x2Au);
                  }
                }

                else if (v137 == 1)
                {
                  v51 = __nw_create_backtrace_string();
                  v47 = __nwlog_obj();
                  v48 = __src;
                  v52 = os_log_type_enabled(v47, __src);
                  if (v51)
                  {
                    if (v52)
                    {
                      v53 = *(a2 + 208);
                      *buf = 136447234;
                      *&buf[4] = "nw_http_create_standalone_aead_request";
                      *&buf[12] = 2082;
                      *&buf[14] = "ohttp_context->aead_chunk_index";
                      *&buf[22] = 2048;
                      v141 = 1;
                      v142 = 2048;
                      v143 = v53;
                      v144 = 2082;
                      v145 = v51;
                      _os_log_impl(&dword_181A37000, v47, v48, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v51);
                    goto LABEL_94;
                  }

                  if (v52)
                  {
                    v55 = *(a2 + 208);
                    *buf = 136446978;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->aead_chunk_index";
                    *&buf[22] = 2048;
                    v141 = 1;
                    v142 = 2048;
                    v143 = v55;
                    v50 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_93;
                  }
                }

                else
                {
                  v47 = __nwlog_obj();
                  v48 = __src;
                  if (os_log_type_enabled(v47, __src))
                  {
                    v54 = *(a2 + 208);
                    *buf = 136446978;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->aead_chunk_index";
                    *&buf[22] = 2048;
                    v141 = 1;
                    v142 = 2048;
                    v143 = v54;
                    v50 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_93;
                  }
                }
              }

LABEL_94:
              if (v46)
              {
                free(v46);
              }

              *(a2 + 208) = -1;
              goto LABEL_97;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v103 = _os_log_send_and_compose_impl();
            LOBYTE(v139) = 16;
            LOBYTE(v138) = 0;
            if (__nwlog_fault(v103, &v139, &v138))
            {
              if (v139 == 17)
              {
                v104 = __nwlog_obj();
                v105 = v139;
                if (os_log_type_enabled(v104, v139))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v106 = "%{public}s called with null body_content";
LABEL_224:
                  _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0xCu);
                }
              }

              else if (v138 == 1)
              {
                v113 = __nw_create_backtrace_string();
                v104 = __nwlog_obj();
                v105 = v139;
                v114 = os_log_type_enabled(v104, v139);
                if (v113)
                {
                  if (v114)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = v113;
                    _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null body_content, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v113);
                  goto LABEL_225;
                }

                if (v114)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v106 = "%{public}s called with null body_content, no backtrace";
                  goto LABEL_224;
                }
              }

              else
              {
                v104 = __nwlog_obj();
                v105 = v139;
                if (os_log_type_enabled(v104, v139))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v106 = "%{public}s called with null body_content, backtrace limit exceeded";
                  goto LABEL_224;
                }
              }
            }

LABEL_225:
            if (v103)
            {
              free(v103);
            }

            v29 = 0;
            goto LABEL_125;
          }

          v90 = v27;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_create_standalone_aead_request";
          v91 = _os_log_send_and_compose_impl();
          LOBYTE(v139) = 16;
          LOBYTE(v138) = 0;
          if (__nwlog_fault(v91, &v139, &v138))
          {
            if (v139 == 17)
            {
              v92 = __nwlog_obj();
              v93 = v139;
              if (!os_log_type_enabled(v92, v139))
              {
                goto LABEL_219;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              v94 = "%{public}s called with null aead_key_length";
              goto LABEL_218;
            }

            if (v138 != 1)
            {
              v92 = __nwlog_obj();
              v93 = v139;
              if (!os_log_type_enabled(v92, v139))
              {
                goto LABEL_219;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              v94 = "%{public}s called with null aead_key_length, backtrace limit exceeded";
              goto LABEL_218;
            }

            v107 = __nw_create_backtrace_string();
            v92 = __nwlog_obj();
            v93 = v139;
            v108 = os_log_type_enabled(v92, v139);
            if (v107)
            {
              if (v108)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_create_standalone_aead_request";
                *&buf[12] = 2082;
                *&buf[14] = v107;
                _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null aead_key_length, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v107);
              if (!v91)
              {
                goto LABEL_221;
              }

              goto LABEL_220;
            }

            if (v108)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              v94 = "%{public}s called with null aead_key_length, no backtrace";
LABEL_218:
              _os_log_impl(&dword_181A37000, v92, v93, v94, buf, 0xCu);
            }
          }
        }

        else
        {
          v90 = v27;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_create_standalone_aead_request";
          v91 = _os_log_send_and_compose_impl();
          LOBYTE(v139) = 16;
          LOBYTE(v138) = 0;
          if (!__nwlog_fault(v91, &v139, &v138))
          {
            goto LABEL_219;
          }

          if (v139 == 17)
          {
            v92 = __nwlog_obj();
            v93 = v139;
            if (!os_log_type_enabled(v92, v139))
            {
              goto LABEL_219;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v94 = "%{public}s called with null aead_key_buffer";
            goto LABEL_218;
          }

          if (v138 != 1)
          {
            v92 = __nwlog_obj();
            v93 = v139;
            if (!os_log_type_enabled(v92, v139))
            {
              goto LABEL_219;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v94 = "%{public}s called with null aead_key_buffer, backtrace limit exceeded";
            goto LABEL_218;
          }

          v101 = __nw_create_backtrace_string();
          v92 = __nwlog_obj();
          v93 = v139;
          v102 = os_log_type_enabled(v92, v139);
          if (!v101)
          {
            if (!v102)
            {
              goto LABEL_219;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v94 = "%{public}s called with null aead_key_buffer, no backtrace";
            goto LABEL_218;
          }

          if (v102)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            *&buf[12] = 2082;
            *&buf[14] = v101;
            _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null aead_key_buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v101);
        }

LABEL_219:
        if (!v91)
        {
LABEL_221:
          v29 = 0;
          v27 = v90;
          goto LABEL_125;
        }

LABEL_220:
        free(v91);
        goto LABEL_221;
      }

      v21 = 0;
    }

    v27 = 0;
    goto LABEL_48;
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v141 = " ";
      v13 = "%{public}s %{public}s%sskipping, request doesn't have necessary metadata";
      v17 = v19;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_34;
    }
  }
}

BOOL ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke(void *a1, uint64_t a2)
{
  LODWORD(__n) = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &__n);
  v4 = a1[5];
  v5 = *(*(a1[4] + 8) + 24);
  v6 = v5 + __n;
  if (v6 <= v4)
  {
    memcpy((a1[6] + v5), v3, __n);
    v7 = __n;
LABEL_5:
    *(*(a1[4] + 8) + 24) += v7;
    return v6 <= v4;
  }

  v7 = v4 - v5;
  if (v4 != v5)
  {
    memcpy((a1[6] + v5), v3, v4 - v5);
    goto LABEL_5;
  }

  return v6 <= v4;
}

uint64_t nw_http_create_oblivious_request(uint64_t a1, int a2, int a3, const unsigned __int8 *a4, unint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, size_t *a9)
{
  v115 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 != 17)
    {
      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v73 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v73)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null ohttp_context, no backtrace";
        goto LABEL_310;
      }

      if (!v73)
      {
        goto LABEL_295;
      }

      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null ohttp_context, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

    v69 = __nwlog_obj();
    v70 = v108;
    if (!os_log_type_enabled(v69, v108))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v71 = "%{public}s called with null ohttp_context";
LABEL_310:
    _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0xCu);
    goto LABEL_311;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 224);
  if (!(v11 | v10))
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 != 17)
    {
      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v80 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v80)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_310;
      }

      if (!v80)
      {
        goto LABEL_295;
      }

      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

    v69 = __nwlog_obj();
    v70 = v108;
    if (!os_log_type_enabled(v69, v108))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v71 = "%{public}s called with null metadata";
    goto LABEL_310;
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = *a1;
  if ((a2 & 1) == 0 && (a6 & 1) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 != 17)
    {
      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null is_complete, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v81 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v81)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null is_complete, no backtrace";
        goto LABEL_310;
      }

      if (!v81)
      {
        goto LABEL_295;
      }

      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null is_complete, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

    v69 = __nwlog_obj();
    v70 = v108;
    if (!os_log_type_enabled(v69, v108))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v71 = "%{public}s called with null is_complete";
    goto LABEL_310;
  }

  if (!a7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 != 17)
    {
      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null oblivious_config_buffer, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v75 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v75)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null oblivious_config_buffer, no backtrace";
        goto LABEL_310;
      }

      if (!v75)
      {
        goto LABEL_295;
      }

      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null oblivious_config_buffer, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

    v69 = __nwlog_obj();
    v70 = v108;
    if (!os_log_type_enabled(v69, v108))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v71 = "%{public}s called with null oblivious_config_buffer";
    goto LABEL_310;
  }

  if (!a8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 != 17)
    {
      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null oblivious_config_length, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v76 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v76)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null oblivious_config_length, no backtrace";
        goto LABEL_310;
      }

      if (!v76)
      {
        goto LABEL_295;
      }

      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null oblivious_config_length, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

    v69 = __nwlog_obj();
    v70 = v108;
    if (!os_log_type_enabled(v69, v108))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v71 = "%{public}s called with null oblivious_config_length";
    goto LABEL_310;
  }

  v18 = a9;
  if (!a9)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 != 17)
    {
      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null out_message_length, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v77 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v77)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null out_message_length, no backtrace";
        goto LABEL_310;
      }

      if (!v77)
      {
        goto LABEL_295;
      }

      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null out_message_length, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

    v69 = __nwlog_obj();
    v70 = v108;
    if (!os_log_type_enabled(v69, v108))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v71 = "%{public}s called with null out_message_length";
    goto LABEL_310;
  }

  if (!a4 && a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 == 17)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null body_content";
      goto LABEL_310;
    }

    if (__n != 1)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null body_content, backtrace limit exceeded";
      goto LABEL_310;
    }

    backtrace_string = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v70 = v108;
    v82 = os_log_type_enabled(v69, v108);
    if (!backtrace_string)
    {
      if (!v82)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null body_content, no backtrace";
      goto LABEL_310;
    }

    if (!v82)
    {
      goto LABEL_295;
    }

    *buf = 136446466;
    v110 = "nw_http_create_oblivious_request";
    v111 = 2082;
    v112 = backtrace_string;
    v74 = "%{public}s called with null body_content, dumping backtrace:%{public}s";
LABEL_294:
    _os_log_impl(&dword_181A37000, v69, v70, v74, buf, 0x16u);
    goto LABEL_295;
  }

  if (v11)
  {
    v19 = 0;
    v20 = 0;
    if (a5 || (a2 & 1) != 0)
    {
      if (!a2)
      {
        goto LABEL_68;
      }

      goto LABEL_14;
    }

    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
LABEL_311:
      if (v68)
      {
        free(v68);
      }

      return 0;
    }

    if (v108 == 17)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null body_length";
      goto LABEL_310;
    }

    if (__n != 1)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null body_length, backtrace limit exceeded";
      goto LABEL_310;
    }

    backtrace_string = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v70 = v108;
    v86 = os_log_type_enabled(v69, v108);
    if (!backtrace_string)
    {
      if (!v86)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null body_length, no backtrace";
      goto LABEL_310;
    }

    if (v86)
    {
      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2082;
      v112 = backtrace_string;
      v74 = "%{public}s called with null body_length, dumping backtrace:%{public}s";
      goto LABEL_294;
    }

LABEL_295:
    free(backtrace_string);
    goto LABEL_311;
  }

  v22 = *(a1 + 120);
  v97 = a2;
  v98 = a3;
  if (!v22 && a6)
  {
    v104 = a6;
    binary_message_length_inner = nw_http_get_binary_message_length_inner(v10, 0, a5);
    if (binary_message_length_inner)
    {
      v24 = binary_message_length_inner;
      if (gLogDatapath == 1)
      {
        v83 = __nwlog_obj();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v110 = "nw_http_create_oblivious_request";
          v111 = 2048;
          v112 = v24;
          _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s Creating binary request with length %zu", buf, 0x16u);
        }
      }

      v19 = arc4random_uniform(0x10u);
      if (!(v24 + v19))
      {
        v84 = __nwlog_obj();
        os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v85 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v85);
        if (result)
        {
          goto LABEL_315;
        }

        free(v85);
      }

      v25 = malloc_type_calloc(1uLL, v24 + v19, 0xAA74833EuLL);
      if (v25)
      {
        v20 = v25;
        if (nw_http_fillout_binary_message_inner(v10, 0, v16, v15, v25, v24))
        {
          v11 = "message/bhttp";
          v15 = v24;
          v16 = v20;
LABEL_43:
          a2 = v97;
          a3 = v98;
          v14 = v104;
          goto LABEL_67;
        }

        free(v20);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v110 = "nw_http_create_oblivious_request";
        v111 = 2048;
        v112 = 1;
        v113 = 2048;
        v114 = v24 + v19;
        v31 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v31);
        if (result)
        {
          goto LABEL_315;
        }

        free(v31);
        if (nw_http_fillout_binary_message_inner(v10, 0, v16, v15, 0, v24))
        {
          v16 = 0;
          v20 = 0;
          v15 = v24;
          v11 = "message/bhttp";
          goto LABEL_43;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v34 = "%{public}s Failed to fill out binary message";
      goto LABEL_143;
    }

    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 == 17)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null encoded_body_length";
      goto LABEL_310;
    }

    if (__n != 1)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null encoded_body_length, backtrace limit exceeded";
      goto LABEL_310;
    }

    backtrace_string = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v70 = v108;
    v93 = os_log_type_enabled(v69, v108);
    if (!backtrace_string)
    {
      if (!v93)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null encoded_body_length, no backtrace";
      goto LABEL_310;
    }

    if (!v93)
    {
      goto LABEL_295;
    }

LABEL_293:
    *buf = 136446466;
    v110 = "nw_http_create_oblivious_request";
    v111 = 2082;
    v112 = backtrace_string;
    v74 = "%{public}s called with null encoded_body_length, dumping backtrace:%{public}s";
    goto LABEL_294;
  }

  if (!v22 && (a6 & 1) == 0)
  {
    v26 = nw_http_get_binary_message_length_inner(v10, 1, 0);
    indeterminate_binary_message_chunk_length = nw_http_get_indeterminate_binary_message_chunk_length(v15, 0, 0);
    v28 = indeterminate_binary_message_chunk_length + v26;
    if (!(indeterminate_binary_message_chunk_length + v26))
    {
      __nwlog_obj();
      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v68 = _os_log_send_and_compose_impl();
      LOBYTE(v108) = 16;
      LOBYTE(__n) = 0;
      if (!__nwlog_fault(v68, &v108, &__n))
      {
        goto LABEL_311;
      }

      if (v108 == 17)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null encoded_body_length";
        goto LABEL_310;
      }

      if (__n != 1)
      {
        v69 = __nwlog_obj();
        v70 = v108;
        if (!os_log_type_enabled(v69, v108))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null encoded_body_length, backtrace limit exceeded";
        goto LABEL_310;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = v108;
      v95 = os_log_type_enabled(v69, v108);
      if (!backtrace_string)
      {
        if (!v95)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v71 = "%{public}s called with null encoded_body_length, no backtrace";
        goto LABEL_310;
      }

      if (!v95)
      {
        goto LABEL_295;
      }

      goto LABEL_293;
    }

    v19 = indeterminate_binary_message_chunk_length;
    if (gLogDatapath == 1)
    {
      v92 = __nwlog_obj();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v110 = "nw_http_create_oblivious_request";
        v111 = 2048;
        v112 = v28;
        _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s Creating partial binary request with length %zu", buf, 0x16u);
      }
    }

    v20 = malloc_type_calloc(1uLL, v28, 0x33EBFB2BuLL);
    if (v20)
    {
      if ((nw_http_fillout_binary_message_inner(v10, 1, 0, 0, v20, v26) & 1) == 0)
      {
        free(v20);
LABEL_60:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v34 = "%{public}s Failed to fill out binary message header";
        goto LABEL_143;
      }
    }

    else
    {
      v96 = v19;
      v36 = v14;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2048;
      v112 = 1;
      v113 = 2048;
      v114 = v28;
      v37 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v37);
      if (result)
      {
        goto LABEL_315;
      }

      free(v37);
      v14 = v36;
      v19 = v96;
      if ((nw_http_fillout_binary_message_inner(v10, 1, 0, 0, 0, v26) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if (v19)
    {
      if ((nw_http_fillout_indeterminate_binary_message_body_chunk(v16, v15, 0, 0, &v20[v26], v19) & 1) == 0)
      {
        if (v20)
        {
          free(v20);
        }

        v33 = __nwlog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v110 = "nw_http_create_oblivious_request";
          v34 = "%{public}s Failed to fill out binary message chunk";
          goto LABEL_143;
        }

        return 0;
      }

      v19 = 0;
    }

    v15 = v28;
    v16 = v20;
    goto LABEL_65;
  }

  v29 = nw_http_get_indeterminate_binary_message_chunk_length(a5, a6, 0);
  if (!v29)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v68 = _os_log_send_and_compose_impl();
    LOBYTE(v108) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v68, &v108, &__n))
    {
      goto LABEL_311;
    }

    if (v108 == 17)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null encoded_body_length";
      goto LABEL_310;
    }

    if (__n != 1)
    {
      v69 = __nwlog_obj();
      v70 = v108;
      if (!os_log_type_enabled(v69, v108))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null encoded_body_length, backtrace limit exceeded";
      goto LABEL_310;
    }

    backtrace_string = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v70 = v108;
    v94 = os_log_type_enabled(v69, v108);
    if (!backtrace_string)
    {
      if (!v94)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v71 = "%{public}s called with null encoded_body_length, no backtrace";
      goto LABEL_310;
    }

    if (!v94)
    {
      goto LABEL_295;
    }

    goto LABEL_293;
  }

  v30 = v29;
  if (gLogDatapath == 1)
  {
    v89 = __nwlog_obj();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v110 = "nw_http_create_oblivious_request";
      v111 = 2048;
      v112 = v30;
      _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s Creating partial binary request with length %zu", buf, 0x16u);
    }
  }

  if (v14)
  {
    v19 = arc4random_uniform(0x10u);
  }

  else
  {
    v19 = 0;
  }

  if (!(v19 + v30))
  {
    v90 = __nwlog_obj();
    os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v91 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v91);
    if (result)
    {
      goto LABEL_315;
    }

    free(v91);
  }

  v35 = malloc_type_calloc(1uLL, v19 + v30, 0x4888376uLL);
  if (!v35)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v110 = "nw_http_create_oblivious_request";
    v111 = 2048;
    v112 = 1;
    v113 = 2048;
    v114 = v19 + v30;
    v38 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v38);
    if (result)
    {
      goto LABEL_315;
    }

    free(v38);
    if (nw_http_fillout_indeterminate_binary_message_body_chunk(v16, v15, v14, 0, 0, v30))
    {
      v16 = 0;
      v20 = 0;
      v15 = v30;
LABEL_65:
      v11 = "message/bhttp";
      goto LABEL_66;
    }

LABEL_93:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v34 = "%{public}s Failed to fill out binary message chunk";
    goto LABEL_143;
  }

  v20 = v35;
  if ((nw_http_fillout_indeterminate_binary_message_body_chunk(v16, v15, v14, 0, v35, v30) & 1) == 0)
  {
    free(v20);
    goto LABEL_93;
  }

  v11 = "message/bhttp";
  v15 = v30;
  v16 = v20;
LABEL_66:
  a2 = v97;
  a3 = v98;
LABEL_67:
  v18 = a9;
  v13 = a7;
  v12 = a8;
  if (!a2)
  {
LABEL_68:
    if (!a2)
    {
      v43 = nw_http_encrypt_oblivious_request(v16, v15 + v19, v11, v13, v12, (a1 + 120), (a1 + 128), (a1 + 104), (a1 + 112), v18);
      if (v20)
      {
        v44 = v20;
LABEL_161:
        free(v44);
      }

      return v43;
    }

    v39 = 0;
    v108 = 0;
    if (*(a1 + 120) || (v39 = nw_http_encrypt_chunked_oblivious_request_header(v11, v13, v12, (a1 + 120), (a1 + 128), (a1 + 104), (a1 + 112), &v108)) != 0)
    {
      __n = 0;
      if (!v15)
      {
        v42 = 0;
        v41 = 0;
LABEL_77:
        if (v14)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42;
        }

        v106 = 0;
        v46 = v18;
        if (v45 > 0x3F)
        {
          if (v45 >> 14)
          {
            if (v45 >> 30)
            {
              if (v45 >> 62)
              {
                v64 = __nwlog_obj();
                os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
                *buf = 136446466;
                v110 = "_http_vle_encode";
                v111 = 2048;
                v112 = v45;
                v65 = _os_log_send_and_compose_impl();
                result = __nwlog_should_abort(v65);
                if (result)
                {
                  goto LABEL_315;
                }

                free(v65);
                v47 = 0;
                v42 = __n;
                v46 = v18;
              }

              else
              {
                v106 = bswap64(v45 | 0xC000000000000000);
                v47 = 8;
              }
            }

            else
            {
              v106 = bswap32(v45 | 0x80000000);
              v47 = 4;
            }
          }

          else
          {
            v106 = bswap32(v45 | 0x4000) >> 16;
            v47 = 2;
          }
        }

        else
        {
          v106 = v45;
          v47 = 1;
        }

        v66 = v108 + v47 + v42;
        *v46 = v66;
        if (!v66)
        {
          v87 = __nwlog_obj();
          os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          v110 = "nw_http_create_oblivious_request";
          v88 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v88);
          if (result)
          {
            goto LABEL_315;
          }

          free(v88);
        }

        v43 = malloc_type_calloc(1uLL, v66, 0xFBA332F9uLL);
        if (!v43)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v110 = "nw_http_create_oblivious_request";
          v111 = 2048;
          v112 = 1;
          v113 = 2048;
          v114 = v66;
          v67 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v67);
          if (result)
          {
            goto LABEL_315;
          }

          free(v67);
        }

        if (v39)
        {
          memcpy(v43, v39, v108);
        }

        memcpy(&v43[v108], &v106, v47);
        v62 = __n;
        if (!__n)
        {
          goto LABEL_155;
        }

        v63 = &v43[v108 + v47];
        goto LABEL_154;
      }

      v40 = nw_http_encrypt_chunked_oblivious_request_chunk(v16, v15 + v19, v14, *(a1 + 120), *(a1 + 128), *(a1 + 104), *(a1 + 112), &__n);
      if (v40)
      {
        v41 = v40;
        v42 = __n;
        goto LABEL_77;
      }

      if (v20)
      {
        free(v20);
      }

      if (v39)
      {
        free(v39);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v34 = "%{public}s Failed to fill out OHTTP chunk";
    }

    else
    {
      if (v20)
      {
        free(v20);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v34 = "%{public}s Failed to fill out OHTTP header";
    }

LABEL_143:
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
    return 0;
  }

LABEL_14:
  if (!a3)
  {
    goto LABEL_68;
  }

  v108 = 0;
  v103 = v14;
  if (v17 > 0x3F)
  {
    if (v17 >> 14)
    {
      if (v17 >> 30)
      {
        if (v17 >> 62)
        {
          v100 = v13;
          v102 = v12;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          v110 = "_http_vle_encode";
          v111 = 2048;
          v112 = v17;
          v48 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v48);
          if (result)
          {
            goto LABEL_315;
          }

          free(v48);
          v21 = 0;
          v13 = v100;
          v12 = v102;
        }

        else
        {
          v108 = bswap64(v17 | 0xC000000000000000);
          v21 = 8;
        }
      }

      else
      {
        v108 = bswap32(v17 | 0x80000000);
        v21 = 4;
      }
    }

    else
    {
      v108 = bswap32(v17 | 0x4000) >> 16;
      v21 = 2;
    }
  }

  else
  {
    v108 = v17;
    v21 = 1;
  }

  v39 = 0;
  __n = 0;
  if (!*(a1 + 120))
  {
    v39 = nw_http_encrypt_chunked_oblivious_request_header(v11, v13, v12, (a1 + 120), (a1 + 128), (a1 + 104), (a1 + 112), &__n);
    if (!v39)
    {
      if (v20)
      {
        free(v20);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v110 = "nw_http_create_oblivious_request";
        v34 = "%{public}s Failed to fill out OHTTP header";
        goto LABEL_143;
      }

      return 0;
    }
  }

  v106 = 0;
  if (!v15)
  {
    v50 = 0;
    v41 = 0;
    goto LABEL_107;
  }

  v49 = nw_http_encrypt_chunked_oblivious_request_chunk(v16, v15 + v19, v103, *(a1 + 120), *(a1 + 128), *(a1 + 104), *(a1 + 112), &v106);
  if (!v49)
  {
    if (v20)
    {
      free(v20);
    }

    if (v39)
    {
      free(v39);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v110 = "nw_http_create_oblivious_request";
      v34 = "%{public}s Failed to fill out OHTTP chunk";
      goto LABEL_143;
    }

    return 0;
  }

  v41 = v49;
  v50 = v106;
LABEL_107:
  v51 = __n;
  v52 = __n + v21 + v50;
  __src = 0;
  v53 = v18;
  if (v52 > 0x3F)
  {
    if (v52 >> 14)
    {
      if (v52 >> 30)
      {
        if (v52 >> 62)
        {
          v55 = v18;
          v56 = __nwlog_obj();
          os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          v110 = "_http_vle_encode";
          v111 = 2048;
          v112 = v52;
          v57 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v57);
          if (result)
          {
            goto LABEL_315;
          }

          free(v57);
          v54 = 0;
          v50 = v106;
          v51 = __n;
          v53 = v55;
        }

        else
        {
          __src = bswap64(v52 | 0xC000000000000000);
          v54 = 8;
        }
      }

      else
      {
        __src = bswap32(v52 | 0x80000000);
        v54 = 4;
      }
    }

    else
    {
      __src = bswap32(v52 | 0x4000) >> 16;
      v54 = 2;
    }
  }

  else
  {
    __src = __n + v21 + v50;
    v54 = 1;
  }

  v58 = v21 + v103 + v54 + v51 + v50;
  *v53 = v58;
  if (!v58)
  {
    v78 = __nwlog_obj();
    os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v110 = "nw_http_create_oblivious_request";
    v79 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v79);
    if (result)
    {
      goto LABEL_315;
    }

    free(v79);
  }

  v43 = malloc_type_calloc(1uLL, v58, 0xCCFF4291uLL);
  if (v43)
  {
LABEL_133:
    v60 = v43;
    if (v103)
    {
      *v43 = 0;
      v60 = v43 + 1;
    }

    memcpy(v60, &__src, v54);
    memcpy(&v60[v54], &v108, v21);
    v61 = &v60[v54 + v21];
    if (v39)
    {
      memcpy(&v60[v54 + v21], v39, __n);
      v61 += __n;
    }

    v62 = v106;
    if (!v106)
    {
      goto LABEL_155;
    }

    v63 = v61;
LABEL_154:
    memcpy(v63, v41, v62);
LABEL_155:
    if (v20)
    {
      free(v20);
    }

    if (v39)
    {
      free(v39);
    }

    if (!v41)
    {
      return v43;
    }

    v44 = v41;
    goto LABEL_161;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v110 = "nw_http_create_oblivious_request";
  v111 = 2048;
  v112 = 1;
  v113 = 2048;
  v114 = v58;
  v59 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v59);
  if (!result)
  {
    free(v59);
    goto LABEL_133;
  }

LABEL_315:
  __break(1u);
  return result;
}

BOOL ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_37(void *a1, uint64_t a2)
{
  v4 = nw_frame_unclaimed_length(a2);
  v6 = a1[5];
  v7 = *(*(a1[4] + 8) + 24);
  v8 = (v7 + v4);
  if (v6 < v8)
  {
    v9 = v6 - v7;
    nw_frame_claim(a2, v5, v6 - v7, 0);
  }

  else
  {
    v9 = v4;
    v10 = (a1[6] + 32);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    if (v11)
    {
      v10 = (v11 + 24);
    }

    *v10 = v12;
    *v12 = v11;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    buffer = nw_frame_get_buffer(a2, 0);
    if (buffer)
    {
      free(buffer);
    }

    os_release(a2);
  }

  result = v6 >= v8;
  *(*(a1[4] + 8) + 24) += v9;
  return result;
}

uint64_t ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 32) + 32);
  v4 = a2[2];
  v5 = a2[3];
  if (v4)
  {
    v3 = (v4 + 24);
  }

  *v3 = v5;
  *v5 = v4;
  a2[2] = 0;
  a2[3] = 0;
  buffer = nw_frame_get_buffer(a2, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a2);
  return 1;
}

uint64_t ___ZL31nw_protocol_ohttp_read_responseP17nw_protocol_ohttpb_block_invoke(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = (a2 + 32);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v6;
  *v6 = v5;
  *v7 = 0;
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  if ((*(v8 + 356) & 0x10) == 0)
  {
    if (*(v8 + 320))
    {
      goto LABEL_5;
    }

    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v21 = nw_protocol_copy_http_definition_http_definition;
    v22 = nw_frame_copy_metadata_for_protocol(a2, v21);
    if (v21)
    {
      os_release(v21);
    }

    if (v22)
    {
      v23 = nw_http_metadata_copy_response(v22);
      if (v23)
      {
        v24 = v23;
        status_code = _nw_http_response_get_status_code(v24);

        v26 = *(a1 + 40);
        if ((!v26 || (*(v26 + 356) & 1) == 0) && gLogDatapath == 1)
        {
          v52 = __nwlog_obj();
          v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
          v26 = *(a1 + 40);
          if (v53)
          {
            v54 = v26 == 0;
            if (v26)
            {
              v55 = (v26 + 357);
            }

            else
            {
              v55 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v55;
            v56 = " ";
            if (v54)
            {
              v56 = "";
            }

            *&buf[22] = 2080;
            v66 = v56;
            LOWORD(v67) = 1024;
            *(&v67 + 2) = status_code;
            _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived status %u", buf, 0x26u);
            v26 = *(a1 + 40);
          }
        }

        if (status_code == 200)
        {
          *(v26 + 320) = v22;
          os_release(v24);
LABEL_5:
          is_metadata_complete = nw_frame_is_metadata_complete(a2);
          v10 = *(a1 + 40);
          if ((!v10 || (*(v10 + 356) & 1) == 0) && gLogDatapath == 1)
          {
            v45 = is_metadata_complete;
            v46 = __nwlog_obj();
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
            is_metadata_complete = v45;
            v10 = *(a1 + 40);
            if (v47)
            {
              if (v10)
              {
                v48 = (v10 + 357);
              }

              else
              {
                v48 = "";
              }

              if (v10)
              {
                v49 = " ";
              }

              else
              {
                v49 = "";
              }

              v50 = nw_frame_unclaimed_length(a2);
              *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
              *&buf[12] = 2082;
              v51 = ", complete";
              *buf = 136447234;
              if (!v45)
              {
                v51 = "";
              }

              *&buf[14] = v48;
              *&buf[22] = 2080;
              v66 = v49;
              LOWORD(v67) = 1024;
              *(&v67 + 2) = v50;
              HIWORD(v67) = 2080;
              v68 = v51;
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived %u bytes%s", buf, 0x30u);
              is_metadata_complete = v45;
              v10 = *(a1 + 40);
            }
          }

          *(a2 + 32) = 0;
          v11 = *(v10 + 344);
          *(a2 + 40) = v11;
          *v11 = a2;
          *(v10 + 344) = v7;
          if (is_metadata_complete)
          {
            *(v10 + 356) |= 0x10u;
            v12 = *(a1 + 40);
            if (!v12 || (*(v12 + 356) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v13 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v14 = *(a1 + 40);
                v15 = "";
                v16 = v14 == 0;
                if (v14)
                {
                  v17 = (v14 + 357);
                }

                else
                {
                  v17 = "";
                }

                *buf = 136446722;
                *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
                if (!v16)
                {
                  v15 = " ";
                }

                *&buf[12] = 2082;
                *&buf[14] = v17;
                *&buf[22] = 2080;
                v66 = v15;
                v18 = "%{public}s %{public}s%sReceived complete response";
LABEL_18:
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, v18, buf, 0x20u);
                return 1;
              }
            }
          }

          return 1;
        }

        *(v26 + 356) |= 0x10u;
        v39 = *(a1 + 40);
        if (v39)
        {
          *(v39 + 144) = os_retain(v22);
          *(v39 + 300) |= 8u;
          *(v39 + 296) = 4;
          nw_protocol_ohttp_deliver_response(v39, v39 + 64);
          v40 = *(v39 + 304);
          if (v40)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL41nw_protocol_ohttp_deliver_failure_messageP17nw_protocol_ohttpP20nw_protocol_metadata_block_invoke;
            v66 = &__block_descriptor_tmp_32_29802;
            v67 = v39;
            v68 = v22;
            nw_hash_table_apply(v40, buf);
          }

LABEL_57:
          os_release(v22);
          nw_frame_finalize(a2);
          os_release(v24);
          return 1;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
        v57 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (__nwlog_fault(v57, &type, &v63))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v58 = __nwlog_obj();
            v59 = type;
            if (!os_log_type_enabled(v58, type))
            {
              goto LABEL_96;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
            v60 = "%{public}s called with null ohttp";
            goto LABEL_95;
          }

          if (v63 != 1)
          {
            v58 = __nwlog_obj();
            v59 = type;
            if (!os_log_type_enabled(v58, type))
            {
              goto LABEL_96;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
            v60 = "%{public}s called with null ohttp, backtrace limit exceeded";
            goto LABEL_95;
          }

          backtrace_string = __nw_create_backtrace_string();
          v58 = __nwlog_obj();
          v59 = type;
          v62 = os_log_type_enabled(v58, type);
          if (backtrace_string)
          {
            if (v62)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_96;
          }

          if (v62)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
            v60 = "%{public}s called with null ohttp, no backtrace";
LABEL_95:
            _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
          }
        }

LABEL_96:
        if (v57)
        {
          free(v57);
        }

        goto LABEL_57;
      }

      v34 = *(a1 + 40);
      if (v34 && (*(v34 + 356) & 1) != 0 || (pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v28 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)))
      {
LABEL_53:
        nw_frame_finalize(a2);
        return 1;
      }

      v35 = *(a1 + 40);
      v36 = "";
      v37 = v35 == 0;
      if (v35)
      {
        v38 = (v35 + 357);
      }

      else
      {
        v38 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
      if (!v37)
      {
        v36 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v38;
      *&buf[22] = 2080;
      v66 = v36;
      v33 = "%{public}s %{public}s%sNo HTTP response in metadata";
    }

    else
    {
      v27 = *(a1 + 40);
      if (v27 && (*(v27 + 356) & 1) != 0)
      {
        goto LABEL_53;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v29 = *(a1 + 40);
      v30 = "";
      v31 = v29 == 0;
      if (v29)
      {
        v32 = (v29 + 357);
      }

      else
      {
        v32 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
      if (!v31)
      {
        v30 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v32;
      *&buf[22] = 2080;
      v66 = v30;
      v33 = "%{public}s %{public}s%sNo HTTP metadata in input frame";
    }

    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v33, buf, 0x20u);
    goto LABEL_53;
  }

  nw_frame_finalize(a2);
  v19 = *(a1 + 40);
  if ((!v19 || (*(v19 + 356) & 1) == 0) && gLogDatapath == 1)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 40);
      v42 = "";
      v43 = v41 == 0;
      if (v41)
      {
        v44 = (v41 + 357);
      }

      else
      {
        v44 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
      if (!v43)
      {
        v42 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v44;
      *&buf[22] = 2080;
      v66 = v42;
      v18 = "%{public}s %{public}s%sDropping unneeded input frame";
      goto LABEL_18;
    }
  }

  return 1;
}

void nw_protocol_ohttp_context_deliver_failure_message(uint64_t a1, uint64_t a2, void *object)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_deliver_failure_message";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_context_deliver_failure_message";
      v8 = "%{public}s called with null ohttp_context";
    }

    else if (v13 == 1)
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
          v16 = "nw_protocol_ohttp_context_deliver_failure_message";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null ohttp_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v5)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v10)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_context_deliver_failure_message";
      v8 = "%{public}s called with null ohttp_context, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_context_deliver_failure_message";
      v8 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_34;
  }

  if (object)
  {
    *(a2 + 80) = os_retain(object);
    *(a2 + 236) |= 8u;
    *(a2 + 232) = 4;

    nw_protocol_ohttp_deliver_response(a1, a2);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_ohttp_context_deliver_failure_message";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_deliver_failure_message";
    v8 = "%{public}s called with null http_metadata";
    goto LABEL_33;
  }

  if (v13 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_deliver_failure_message";
    v8 = "%{public}s called with null http_metadata, backtrace limit exceeded";
    goto LABEL_33;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v12 = os_log_type_enabled(v6, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_deliver_failure_message";
    v8 = "%{public}s called with null http_metadata, no backtrace";
    goto LABEL_33;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_ohttp_context_deliver_failure_message";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
LABEL_35:
    free(v5);
  }
}

uint64_t ___ZL41nw_protocol_ohttp_deliver_failure_messageP17nw_protocol_ohttpP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  nw_protocol_ohttp_context_deliver_failure_message(*(a1 + 32), extra, *(a1 + 40));
  return 1;
}

uint64_t nw_protocol_ohttp_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v16 = ___ZL40nw_protocol_ohttp_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v17 = &__block_descriptor_tmp_34_29837;
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
        v5 = v16(v15);
        tqh_first = v4;
      }

      while ((v5 & 1) != 0);
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_ohttp_finalize_output_frames";
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
        v23 = "nw_protocol_ohttp_finalize_output_frames";
        v10 = "%{public}s called with null ohttp";
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
        v23 = "nw_protocol_ohttp_finalize_output_frames";
        v10 = "%{public}s called with null ohttp, backtrace limit exceeded";
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
        v23 = "nw_protocol_ohttp_finalize_output_frames";
        v10 = "%{public}s called with null ohttp, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v23 = "nw_protocol_ohttp_finalize_output_frames";
      v24 = 2082;
      v25 = backtrace_string;
      v13 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_ohttp_finalize_output_frames";
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
        v23 = "nw_protocol_ohttp_finalize_output_frames";
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
        v23 = "nw_protocol_ohttp_finalize_output_frames";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446466;
      v23 = "nw_protocol_ohttp_finalize_output_frames";
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
    v23 = "nw_protocol_ohttp_finalize_output_frames";
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

uint64_t ___ZL40nw_protocol_ohttp_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32) + 8);
  v3 = a2[4];
  v4 = a2[5];
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  a2[4] = 0;
  a2[5] = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = a2[11];
    if (v7)
    {
      if (v5 + 64 == v7)
      {
        if (*(v5 + 48))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = *(v5 + 304);
        if (v8)
        {
          *uu = 0;
          *&uu[8] = uu;
          v41 = 0x2000000000;
          v42 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
          v37 = &unk_1E6A30598;
          v38 = uu;
          v39 = v7;
          nw_hash_table_apply(v8, buf);
          v9 = *(*&uu[8] + 24);
          _Block_object_dispose(uu, 8);
          if (v9)
          {
LABEL_8:
            v10 = *(v7 + 232);
            if ((*(v5 + 356) & 2) != 0)
            {
              if (v10 >= 2)
              {
LABEL_10:
                if (*(v5 + 356))
                {
                  goto LABEL_19;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v11 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_19;
                }

                v12 = *(v7 + 232);
                *buf = 136446978;
                *&buf[4] = "nw_ohttp_context_finalize_output_frame";
                *&buf[12] = 2082;
                *&buf[14] = v5 + 357;
                *&buf[22] = 2080;
                v37 = " ";
                LOWORD(v38) = 1024;
                *(&v38 + 2) = v12;
                v13 = "%{public}s %{public}s%sState is not valid for sending: %u";
                v14 = v11;
                v15 = 38;
LABEL_18:
                _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_19:
                nw_frame_finalize(a2);
                return 1;
              }
            }

            else if (v10)
            {
              goto LABEL_10;
            }

            v18 = *(v7 + 236);
            if ((v18 & 4) != 0)
            {
              if (*(v5 + 356))
              {
                goto LABEL_19;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v16 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_19;
              }

              *buf = 136446722;
              *&buf[4] = "nw_ohttp_context_finalize_output_frame";
              *&buf[12] = 2082;
              *&buf[14] = v5 + 357;
              *&buf[22] = 2080;
              v37 = " ";
              v13 = "%{public}s %{public}s%sRequest is already complete";
            }

            else
            {
              memset(uu, 0, sizeof(uu));
              v19 = a2[8];
              if (v19)
              {
                v20 = (*(v19 + 66) >> 6) & 1;
                if (*(v19 + 48))
                {
                  *uu = *(v19 + 16);
                }
              }

              else
              {
                LOWORD(v20) = 0;
              }

              if (*(v7 + 224) || (v18 & 1) != 0)
              {
LABEL_49:
                *(v7 + 236) = *(v7 + 236) & 0xFFFB | (4 * v20);
                v24 = (v7 + 16);
                v25 = a2 + 2;
                v26 = a2[2];
                v27 = a2[3];
                if (v26)
                {
                  v24 = (v26 + 24);
                }

                *v24 = v27;
                *v27 = v26;
                a2[3] = 0;
                *v25 = 0;
                v28 = *(v7 + 32);
                a2[3] = v28;
                *v28 = a2;
                *(v7 + 32) = v25;
                nw_protocol_ohttp_prepare_request(v5, v7);
                return 1;
              }

              if (uuid_is_null(uu))
              {
                if (*(v5 + 356))
                {
                  goto LABEL_19;
                }

                v16 = __nwlog_obj();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_19;
                }

                *buf = 136446722;
                *&buf[4] = "nw_ohttp_context_finalize_output_frame";
                *&buf[12] = 2082;
                *&buf[14] = v5 + 357;
                *&buf[22] = 2080;
                v37 = " ";
                v13 = "%{public}s %{public}s%sNo request UUID in output frame";
                goto LABEL_17;
              }

              v21 = nw_protocol_copy_http_definition();
              v22 = nw_frame_copy_metadata_for_protocol(a2, v21);
              if (v21)
              {
                os_release(v21);
              }

              if (v22)
              {
                v23 = *(v7 + 72);
                if (v23)
                {
                  os_release(v22);
                  if (v23 != v22 && !uuid_compare((v7 + 56), uu))
                  {
                    if (*(v5 + 356))
                    {
                      goto LABEL_19;
                    }

                    v16 = __nwlog_obj();
                    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_19;
                    }

                    *buf = 136446722;
                    *&buf[4] = "nw_ohttp_context_finalize_output_frame";
                    *&buf[12] = 2082;
                    *&buf[14] = v5 + 357;
                    *&buf[22] = 2080;
                    v37 = " ";
                    v13 = "%{public}s %{public}s%sInvalid request UUID in output frame";
                    goto LABEL_17;
                  }
                }

                else
                {
                  *(v7 + 72) = v22;
                  *(v7 + 56) = *uu;
                }

                goto LABEL_49;
              }

              if (*(v5 + 356))
              {
                goto LABEL_19;
              }

              v16 = __nwlog_obj();
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_19;
              }

              *buf = 136446722;
              *&buf[4] = "nw_ohttp_context_finalize_output_frame";
              *&buf[12] = 2082;
              *&buf[14] = v5 + 357;
              *&buf[22] = 2080;
              v37 = " ";
              v13 = "%{public}s %{public}s%sNo HTTP request in output frame";
            }

LABEL_17:
            v14 = v16;
            v15 = 32;
            goto LABEL_18;
          }
        }
      }
    }

    if (*(v5 + 356))
    {
      goto LABEL_19;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446722;
    *&buf[4] = "nw_ohttp_context_finalize_output_frame";
    *&buf[12] = 2082;
    *&buf[14] = v5 + 357;
    *&buf[22] = 2080;
    v37 = " ";
    v13 = "%{public}s %{public}s%sReceived invalid output frame";
    goto LABEL_17;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_ohttp_context_finalize_output_frame";
  v29 = _os_log_send_and_compose_impl();
  uu[0] = 16;
  v35 = 0;
  if (__nwlog_fault(v29, uu, &v35))
  {
    if (uu[0] == 17)
    {
      v30 = __nwlog_obj();
      v31 = uu[0];
      if (!os_log_type_enabled(v30, uu[0]))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      *&buf[4] = "nw_ohttp_context_finalize_output_frame";
      v32 = "%{public}s called with null ohttp";
      goto LABEL_65;
    }

    if (v35 != 1)
    {
      v30 = __nwlog_obj();
      v31 = uu[0];
      if (!os_log_type_enabled(v30, uu[0]))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      *&buf[4] = "nw_ohttp_context_finalize_output_frame";
      v32 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = uu[0];
    v34 = os_log_type_enabled(v30, uu[0]);
    if (backtrace_string)
    {
      if (v34)
      {
        *buf = 136446466;
        *&buf[4] = "nw_ohttp_context_finalize_output_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_66;
    }

    if (v34)
    {
      *buf = 136446210;
      *&buf[4] = "nw_ohttp_context_finalize_output_frame";
      v32 = "%{public}s called with null ohttp, no backtrace";
LABEL_65:
      _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
    }
  }

LABEL_66:
  if (v29)
  {
    free(v29);
  }

  return 1;
}

uint64_t nw_protocol_ohttp_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_ohttp_get_output_frames";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v17, &type, &v27))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null protocol";
      goto LABEL_50;
    }

    if (v27 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v22 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (!v22)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_50;
    }

    if (!v22)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v30 = "nw_protocol_ohttp_get_output_frames";
    v31 = 2082;
    v32 = backtrace_string;
    v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_36:
    _os_log_impl(&dword_181A37000, v18, v19, v23, buf, 0x16u);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_ohttp_get_output_frames";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v17, &type, &v27))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null ohttp";
      goto LABEL_50;
    }

    if (v27 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v24 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (!v24)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_50;
    }

    if (!v24)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v30 = "nw_protocol_ohttp_get_output_frames";
    v31 = 2082;
    v32 = backtrace_string;
    v23 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_ohttp_get_output_frames";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v17, &type, &v27))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null return_array";
      goto LABEL_50;
    }

    if (v27 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v30 = "nw_protocol_ohttp_get_output_frames";
      v20 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v25 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v25)
      {
        *buf = 136446466;
        v30 = "nw_protocol_ohttp_get_output_frames";
        v31 = 2082;
        v32 = backtrace_string;
        v23 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_36;
      }

LABEL_37:
      free(backtrace_string);
      goto LABEL_51;
    }

    if (!v25)
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v30 = "nw_protocol_ohttp_get_output_frames";
    v20 = "%{public}s called with null return_array, no backtrace";
LABEL_50:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_51:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  context_for_protocol = nw_protocol_ohttp_get_context_for_protocol(handle, a2);
  if (!context_for_protocol)
  {
    return 0;
  }

  v10 = context_for_protocol;
  if (a4 >= 0xFFFF)
  {
    v11 = 0xFFFFLL;
  }

  else
  {
    v11 = a4;
  }

  if (a4)
  {
    v12 = nw_calloc_type<unsigned char>(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = nw_frame_create(0, v12, v11, nw_protocol_ohttp_output_frame_finalizer, v10);
  v14 = 1;
  nw_frame_set_buffer_used_malloc(v13, 1);
  *(v13 + 16) = 0;
  v15 = *(v10 + 16);
  *(v13 + 24) = v15;
  *v15 = v13;
  *(v10 + 16) = v13 + 16;
  *(v13 + 32) = 0;
  tqh_last = a6->tqh_last;
  *(v13 + 40) = tqh_last;
  *tqh_last = v13;
  a6->tqh_last = (v13 + 32);
  return v14;
}

void nw_protocol_ohttp_output_frame_finalizer(nw_frame *a1, BOOL a2, char *a3)
{
  v4 = a3 + 16;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v4 = (v5 + 24);
  }

  *v4 = v6;
  *v6 = v5;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  buffer = nw_frame_get_buffer(a1, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a1);
}

void nw_protocol_ohttp_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_ohttp_input_finished";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_input_finished";
      v9 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
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
          v20 = "nw_protocol_ohttp_input_finished";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v6)
        {
          return;
        }

LABEL_43:
        free(v6);
        return;
      }

      if (!v11)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_input_finished";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_input_finished";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if (*(handle + 88) == 1)
    {
      if ((handle[356] & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v20 = "nw_protocol_ohttp_input_finished";
          v21 = 2082;
          v22 = handle + 357;
          v23 = 2080;
          v24 = " ";
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived input finished", buf, 0x20u);
        }
      }

      nw_protocol_ohttp_read_response(handle, 1);
      v5 = *(handle + 38);
      if (v5)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___ZL32nw_protocol_ohttp_input_finishedP11nw_protocolS0__block_invoke;
        v16[3] = &__block_descriptor_tmp_33_29881;
        v16[4] = a1;
        nw_hash_table_apply(v5, v16);
      }
    }

    else if ((handle[356] & 1) == 0 && gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(handle + 88);
        *buf = 136446978;
        v20 = "nw_protocol_ohttp_input_finished";
        v21 = 2082;
        v22 = handle + 357;
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v15;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_ohttp_input_finished";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_input_finished";
    v9 = "%{public}s called with null ohttp";
    goto LABEL_41;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_input_finished";
    v9 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_41;
  }

  v12 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v13 = os_log_type_enabled(v7, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_input_finished";
    v9 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_41;
  }

  if (v13)
  {
    *buf = 136446466;
    v20 = "nw_protocol_ohttp_input_finished";
    v21 = 2082;
    v22 = v12;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v6)
  {
    goto LABEL_43;
  }
}

uint64_t ___ZL32nw_protocol_ohttp_input_finishedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  v6 = *(extra + 236);
  if ((v6 & 8) == 0)
  {
    *(extra + 236) = v6 | 8;
    *(extra + 232) = 6;
    v7 = object;
    nw_protocol_error(object, *(a1 + 32));
    nw_protocol_disconnected(v7, *(a1 + 32));
  }

  return 1;
}

void nw_protocol_ohttp_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_ohttp_input_available";
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
      v14 = "nw_protocol_ohttp_input_available";
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
          v14 = "nw_protocol_ohttp_input_available";
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

        goto LABEL_35;
      }

      if (!v8)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_protocol_ohttp_input_available";
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
      v14 = "nw_protocol_ohttp_input_available";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {

    nw_protocol_ohttp_read_response(handle, 0);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_ohttp_input_available";
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
    v14 = "nw_protocol_ohttp_input_available";
    v6 = "%{public}s called with null ohttp";
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
    v14 = "nw_protocol_ohttp_input_available";
    v6 = "%{public}s called with null ohttp, backtrace limit exceeded";
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
    v14 = "nw_protocol_ohttp_input_available";
    v6 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v10)
  {
    *buf = 136446466;
    v14 = "nw_protocol_ohttp_input_available";
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v3)
  {
LABEL_35:
    free(v3);
  }
}

BOOL nw_protocol_ohttp_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v50 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v50, &type, &v62))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null protocol";
      goto LABEL_97;
    }

    if (v62 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type;
    v55 = os_log_type_enabled(v51, type);
    if (!backtrace_string)
    {
      if (!v55)
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_97;
    }

    if (!v55)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v66 = 2082;
    v67 = backtrace_string;
    v56 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_81:
    _os_log_impl(&dword_181A37000, v51, v52, v56, buf, 0x16u);
    goto LABEL_82;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v50 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v50, &type, &v62))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null ohttp";
      goto LABEL_97;
    }

    if (v62 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type;
    v57 = os_log_type_enabled(v51, type);
    if (!backtrace_string)
    {
      if (!v57)
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_97;
    }

    if (!v57)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v66 = 2082;
    v67 = backtrace_string;
    v56 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
    goto LABEL_81;
  }

  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v50 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v50, &type, &v62))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null return_array";
      goto LABEL_97;
    }

    if (v62 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v65 = "nw_protocol_ohttp_get_input_frames";
      v53 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type;
    v58 = os_log_type_enabled(v51, type);
    if (backtrace_string)
    {
      if (v58)
      {
        *buf = 136446466;
        v65 = "nw_protocol_ohttp_get_input_frames";
        v66 = 2082;
        v67 = backtrace_string;
        v56 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_81;
      }

LABEL_82:
      free(backtrace_string);
      goto LABEL_98;
    }

    if (!v58)
    {
      goto LABEL_98;
    }

    *buf = 136446210;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v53 = "%{public}s called with null return_array, no backtrace";
LABEL_97:
    _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
LABEL_98:
    if (v50)
    {
      free(v50);
    }

    return 0;
  }

  context_for_protocol = nw_protocol_ohttp_get_context_for_protocol(a1->handle, a2);
  if (!context_for_protocol)
  {
    if (handle[356])
    {
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446978;
    v65 = "nw_protocol_ohttp_get_input_frames";
    v66 = 2082;
    v67 = handle + 357;
    v68 = 2080;
    v69 = " ";
    v70 = 2048;
    v71 = a2;
    v22 = "%{public}s %{public}s%sfailed to find context for %p";
    v23 = v20;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 42;
LABEL_22:
    _os_log_impl(&dword_181A37000, v23, v24, v22, buf, v25);
    return 0;
  }

  if (*(context_for_protocol + 232) != 4)
  {
    if ((handle[356] & 1) != 0 || gLogDatapath != 1)
    {
      return 0;
    }

    v26 = context_for_protocol;
    v27 = __nwlog_obj();
    result = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v28 = *(v26 + 232);
    *buf = 136446978;
    v65 = "nw_ohttp_context_get_input_frames";
    v66 = 2082;
    v67 = handle + 357;
    v68 = 2080;
    v69 = " ";
    v70 = 1024;
    LODWORD(v71) = v28;
    v22 = "%{public}s %{public}s%sskipping, state %u";
    v23 = v27;
    v24 = OS_LOG_TYPE_DEBUG;
    v25 = 38;
    goto LABEL_22;
  }

  v12 = *(context_for_protocol + 176);
  v11 = *(context_for_protocol + 184);
  if ((*(context_for_protocol + 236) & 0x88) != 0x80 || v12 != v11)
  {
    v14 = a4;
    if (v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12 > a4;
    }

    if (v15)
    {
      v16 = v12 - v11;
      if (v12 - v11 <= a4)
      {
        v35 = context_for_protocol;
        if (v12 == v11)
        {
          v36 = 0;
        }

        else
        {
          v39 = nw_calloc_type<unsigned char>(v12 - v11);
          v36 = v39;
          if (v39)
          {
            memcpy(v39, (*(v35 + 168) + *(v35 + 184)), v16);
          }
        }

        v40 = nw_frame_create(0, v36, v16, nw_protocol_ohttp_input_frame_finalizer, v35);
        nw_frame_set_buffer_used_malloc(v40, 1);
        *(v35 + 184) += v16;
        nw_frame_set_metadata(v40, *(v35 + 80), 1, (*(v35 + 236) >> 3) & 1);
        *(v35 + 236) |= 0x80u;
        *(v40 + 16) = 0;
        v41 = *(v35 + 48);
        *(v40 + 24) = v41;
        *v41 = v40;
        *(v35 + 48) = v40 + 16;
        *(v40 + 32) = 0;
        tqh_last = a6->tqh_last;
        *(v40 + 40) = tqh_last;
        *tqh_last = v40;
        a6->tqh_last = (v40 + 32);
        if ((*(v35 + 236) & 8) != 0)
        {
          *(v35 + 232) = 5;
          if (handle[356])
          {
            return 1;
          }

          v46 = __nwlog_obj();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            return 1;
          }

          *buf = 136446722;
          v65 = "nw_ohttp_context_get_input_frames";
          v66 = 2082;
          v67 = handle + 357;
          v68 = 2080;
          v69 = " ";
          v34 = "%{public}s %{public}s%sDelivered end of response";
          v37 = v46;
          v38 = 32;
          goto LABEL_51;
        }

        if (handle[356])
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v43 = __nwlog_obj();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v45 = *(v35 + 176);
        v44 = *(v35 + 184);
        *buf = 136447234;
        v65 = "nw_ohttp_context_get_input_frames";
        v66 = 2082;
        v67 = handle + 357;
        v68 = 2080;
        v69 = " ";
        v70 = 2048;
        v71 = v44;
        v72 = 2048;
        v73 = v45;
        v34 = "%{public}s %{public}s%sDelivered partial response (%zu/%zu)";
      }

      else
      {
        v17 = context_for_protocol;
        if (a4)
        {
          v18 = nw_calloc_type<unsigned char>(a4);
          v19 = v18;
          if (v18)
          {
            memcpy(v18, (*(v17 + 168) + *(v17 + 184)), a4);
          }
        }

        else
        {
          v19 = 0;
        }

        v47 = nw_frame_create(0, v19, a4, nw_protocol_ohttp_input_frame_finalizer, v17);
        nw_frame_set_buffer_used_malloc(v47, 1);
        *(v17 + 184) += v14;
        nw_frame_set_metadata(v47, *(v17 + 80), 1, 0);
        *(v17 + 236) |= 0x80u;
        *(v47 + 16) = 0;
        v48 = *(v17 + 48);
        *(v47 + 24) = v48;
        *v48 = v47;
        *(v17 + 48) = v47 + 16;
        *(v47 + 32) = 0;
        v49 = a6->tqh_last;
        *(v47 + 40) = v49;
        *v49 = v47;
        a6->tqh_last = (v47 + 32);
        if (handle[356])
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v43 = __nwlog_obj();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v61 = *(v17 + 176);
        v60 = *(v17 + 184);
        *buf = 136447234;
        v65 = "nw_ohttp_context_get_input_frames";
        v66 = 2082;
        v67 = handle + 357;
        v68 = 2080;
        v69 = " ";
        v70 = 2048;
        v71 = v60;
        v72 = 2048;
        v73 = v61;
        v34 = "%{public}s %{public}s%sDelivered partial response (%zu/%zu)";
      }

      v37 = v43;
      v38 = 52;
    }

    else
    {
      v29 = context_for_protocol;
      v30 = nw_frame_create(0, *(context_for_protocol + 168), v12, nw_protocol_ohttp_input_frame_finalizer, context_for_protocol);
      nw_frame_set_buffer_used_malloc(v30, 1);
      *(v29 + 168) = 0;
      *(v29 + 176) = 0;
      *(v29 + 184) = 0;
      nw_frame_set_metadata(v30, *(v29 + 80), 1, (*(v29 + 236) >> 3) & 1);
      *(v29 + 236) |= 0x80u;
      *(v30 + 16) = 0;
      v31 = *(v29 + 48);
      *(v30 + 24) = v31;
      *v31 = v30;
      *(v29 + 48) = v30 + 16;
      *(v30 + 32) = 0;
      v32 = a6->tqh_last;
      *(v30 + 40) = v32;
      *v32 = v30;
      a6->tqh_last = (v30 + 32);
      if ((*(v29 + 236) & 8) != 0)
      {
        *(v29 + 232) = 5;
        if (handle[356])
        {
          return 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        *buf = 136446978;
        v65 = "nw_ohttp_context_get_input_frames";
        v66 = 2082;
        v67 = handle + 357;
        v68 = 2080;
        v69 = " ";
        v70 = 2048;
        v71 = v12;
        v34 = "%{public}s %{public}s%sDelivered complete response (%zu)";
      }

      else
      {
        if (handle[356])
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v33 = __nwlog_obj();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        *buf = 136446978;
        v65 = "nw_ohttp_context_get_input_frames";
        v66 = 2082;
        v67 = handle + 357;
        v68 = 2080;
        v69 = " ";
        v70 = 2048;
        v71 = v12;
        v34 = "%{public}s %{public}s%sDelivered partial response (%zu)";
      }

      v37 = v33;
      v38 = 42;
    }

LABEL_51:
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, v34, buf, v38);
    return 1;
  }

  if ((handle[356] & 1) != 0 || gLogDatapath != 1)
  {
    return 0;
  }

  v59 = __nwlog_obj();
  result = os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446722;
    v65 = "nw_ohttp_context_get_input_frames";
    v66 = 2082;
    v67 = handle + 357;
    v68 = 2080;
    v69 = " ";
    v22 = "%{public}s %{public}s%sskipping, no new bytes to read";
    v23 = v59;
    v24 = OS_LOG_TYPE_DEBUG;
    v25 = 32;
    goto LABEL_22;
  }

  return result;
}

void nw_protocol_ohttp_input_frame_finalizer(nw_frame *a1, BOOL a2, char *a3)
{
  v4 = a3 + 48;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v4 = (v5 + 24);
  }

  *v4 = v6;
  *v6 = v5;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  buffer = nw_frame_get_buffer(a1, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a1);
}

uint64_t nw_protocol_ohttp_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v19 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v19, type, &v29))
    {
      goto LABEL_56;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v29 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (!os_log_type_enabled(v20, type[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_55;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type[0];
      v24 = os_log_type_enabled(v20, type[0]);
      if (!backtrace_string)
      {
        if (!v24)
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_55;
      }

      if (v24)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_43:
        _os_log_impl(&dword_181A37000, v20, v21, v25, buf, 0x16u);
      }

LABEL_44:
      free(backtrace_string);
      goto LABEL_56;
    }

    v20 = __nwlog_obj();
    v21 = type[0];
    if (!os_log_type_enabled(v20, type[0]))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v22 = "%{public}s called with null protocol";
LABEL_55:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
LABEL_56:
    if (v19)
    {
      free(v19);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v19 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v19, type, &v29))
    {
      goto LABEL_56;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
      v22 = "%{public}s called with null ohttp";
      goto LABEL_55;
    }

    if (v29 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
      v22 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v26 = os_log_type_enabled(v20, type[0]);
    if (backtrace_string)
    {
      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v25 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (!v26)
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v22 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_55;
  }

  if (a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler == a2)
  {
    nw_protocol_set_input_handler(a1, 0);
    v9 = handle + 42;
    if (gLogDatapath == 1)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v10 = *v9;
    if (*v9)
    {
      *(v10 + 40) = type;
      v11 = handle[43];
      *type = v10;
      v31 = v11;
      handle[42] = 0;
      handle[43] = v9;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v33 = &__block_descriptor_tmp_21_49595;
      v34 = 0;
      do
      {
        v12 = *type;
        if (!*type)
        {
          break;
        }

        v13 = *(*type + 32);
        v14 = *(*type + 40);
        v15 = (v13 + 40);
        if (!v13)
        {
          v15 = &v31;
        }

        *v15 = v14;
        *v14 = v13;
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    nw_protocol_remove_input_handler(a1->output_handler->flow_id, a1);
    output_handler = a1->output_handler;
    if (output_handler)
    {
      nw_protocol_remove_input_handler(output_handler, a1);
      nw_protocol_set_output_handler(a1, 0);
    }

    if (!a3)
    {
      return 1;
    }

    v17 = handle[38];
    if (v17 && *(v17 + 48))
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = ___ZL38nw_protocol_ohttp_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v28[3] = &__block_descriptor_tmp_27_29925;
      v28[4] = handle;
      nw_hash_table_apply(v17, v28);
      return 1;
    }

LABEL_25:
    nw_protocol_ohttp_destroy(handle);
    return 1;
  }

  output_handler_context = a2->output_handler_context;
  if (output_handler_context)
  {
    a2->output_handler_context = 0;
    nw_protocol_set_output_handler(a2, 0);
    nw_protocol_ohttp_context_destroy_node(handle, output_handler_context);
    if (!a3)
    {
      return 1;
    }

    if (a1->default_input_handler)
    {
      return 1;
    }

    v8 = handle[38];
    if (v8)
    {
      if (*(v8 + 48))
      {
        return 1;
      }
    }

    goto LABEL_25;
  }

  return 0;
}

void nw_protocol_ohttp_destroy(void *a1)
{
  v2 = a1[39];
  if (v2)
  {
    os_release(v2);
    a1[39] = 0;
  }

  v3 = a1[40];
  if (v3)
  {
    os_release(v3);
    a1[40] = 0;
  }

  v4 = a1[38];
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZL25nw_protocol_ohttp_destroyP17nw_protocol_ohttp_block_invoke;
    v7[3] = &__block_descriptor_tmp_28_29954;
    v7[4] = a1;
    nw_hash_table_apply(v4, v7);
    v6 = a1[38];
    if (v6)
    {
      _nw_hash_table_release(v6, v5);
      a1[38] = 0;
    }
  }

  nw_protocol_ohttp_context_destroy(a1 + 8);
  free(a1);
}

uint64_t ___ZL38nw_protocol_ohttp_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_disconnected(object, *(a1 + 32));
  return 1;
}

void nw_protocol_ohttp_context_destroy_node(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_destroy_node";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_context_destroy_node";
      v8 = "%{public}s called with null ohttp";
    }

    else if (v13 == 1)
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
          v16 = "nw_protocol_ohttp_context_destroy_node";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          return;
        }

LABEL_37:
        free(v5);
        return;
      }

      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_context_destroy_node";
      v8 = "%{public}s called with null ohttp, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_context_destroy_node";
      v8 = "%{public}s called with null ohttp, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_36;
  }

  if (a2)
  {
    nw_protocol_ohttp_context_destroy((a2 + 32));
    if ((nw_hash_table_remove_node(*(a1 + 304), a2) & 1) == 0 && (*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v16 = "nw_protocol_ohttp_context_destroy_node";
        v17 = 2082;
        v18 = (a1 + 357);
        v19 = 2080;
        v20 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snw_hash_table_remove_node failed", buf, 0x20u);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_ohttp_context_destroy_node";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_destroy_node";
    v8 = "%{public}s called with null node";
    goto LABEL_35;
  }

  if (v13 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_destroy_node";
    v8 = "%{public}s called with null node, backtrace limit exceeded";
    goto LABEL_35;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v12 = os_log_type_enabled(v6, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_context_destroy_node";
    v8 = "%{public}s called with null node, no backtrace";
    goto LABEL_35;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_ohttp_context_destroy_node";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null node, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
    goto LABEL_37;
  }
}

void nw_protocol_ohttp_context_destroy(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[12];
    if (v2)
    {
      xpc_release(v2);
      a1[12] = 0;
    }

    v3 = a1[17];
    if (v3)
    {
      free(v3);
      a1[17] = 0;
    }

    v4 = a1[21];
    if (v4)
    {
      free(v4);
      a1[21] = 0;
    }

    v5 = a1[13];
    if (v5)
    {
      free(v5);
      a1[13] = 0;
    }

    v6 = a1[15];
    if (v6)
    {
      free(v6);
      a1[15] = 0;
    }

    v7 = a1[24];
    if (v7)
    {
      free(v7);
      a1[24] = 0;
    }

    v8 = a1[9];
    if (v8)
    {
      os_release(v8);
      a1[9] = 0;
    }

    v9 = a1[10];
    if (v9)
    {
      os_release(v9);
      a1[10] = 0;
    }

    v10 = a1[11];
    if (!v10)
    {
LABEL_23:
      v13 = a1[27];
      if (v13)
      {
        dispatch_release(v13);
        a1[27] = 0;
      }

      v14 = a1[28];
      if (v14)
      {
        free(v14);
        a1[28] = 0;
      }

      v15 = a1 + 1;
      if (gLogDatapath == 1)
      {
        v36 = __nwlog_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
        }
      }

      v16 = *v15;
      if (!*v15)
      {
        goto LABEL_35;
      }

      *(v16 + 24) = type;
      v17 = a1[2];
      *type = v16;
      v65 = v17;
      a1[1] = 0;
      a1[2] = v15;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v67 = &__block_descriptor_tmp_21_49595;
      v68 = 0;
      do
      {
        v18 = *type;
        if (!*type)
        {
          break;
        }

        v19 = *(*type + 16);
        v20 = *(*type + 24);
        v21 = (v19 + 24);
        if (!v19)
        {
          v21 = &v65;
        }

        *v21 = v20;
        *v20 = v19;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
      if (!*v15)
      {
LABEL_35:
        v22 = a1 + 5;
        if (gLogDatapath == 1)
        {
          v41 = __nwlog_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
          }
        }

        v23 = *v22;
        if (!*v22)
        {
          goto LABEL_43;
        }

        *(v23 + 24) = type;
        v24 = a1[6];
        *type = v23;
        v65 = v24;
        a1[5] = 0;
        a1[6] = v22;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v67 = &__block_descriptor_tmp_21_49595;
        v68 = 0;
        do
        {
          v25 = *type;
          if (!*type)
          {
            break;
          }

          v26 = *(*type + 16);
          v27 = *(*type + 24);
          v28 = (v26 + 24);
          if (!v26)
          {
            v28 = &v65;
          }

          *v28 = v27;
          *v27 = v26;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
        if (!*v22)
        {
          goto LABEL_43;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v42 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (__nwlog_fault(v42, type, &v63))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v43 = __nwlog_obj();
            v44 = type[0];
            if (!os_log_type_enabled(v43, type[0]))
            {
              goto LABEL_108;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            v45 = "%{public}s frame array is not empty after finalize";
            goto LABEL_107;
          }

          if (v63 != 1)
          {
            v43 = __nwlog_obj();
            v44 = type[0];
            if (!os_log_type_enabled(v43, type[0]))
            {
              goto LABEL_108;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            v45 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
            goto LABEL_107;
          }

          backtrace_string = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = type[0];
          v56 = os_log_type_enabled(v43, type[0]);
          if (backtrace_string)
          {
            if (v56)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_finalize_master_frame_array";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_108;
          }

          if (v56)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            v45 = "%{public}s frame array is not empty after finalize, no backtrace";
LABEL_107:
            _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
          }
        }

LABEL_108:
        if (v42)
        {
          free(v42);
        }

LABEL_43:
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 0x40000000;
        v60 = ___ZL33nw_protocol_ohttp_context_destroyP16nw_ohttp_context_block_invoke;
        v61 = &__block_descriptor_tmp_29_29948;
        v62 = a1;
        v29 = a1[3];
        do
        {
          if (!v29)
          {
            break;
          }

          v30 = *(v29 + 16);
          v31 = v60(v59);
          v29 = v30;
        }

        while ((v31 & 1) != 0);
        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v37 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if (__nwlog_fault(v37, type, &v63))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type[0];
          if (!os_log_type_enabled(v38, type[0]))
          {
            goto LABEL_103;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          v40 = "%{public}s frame array is not empty after finalize";
          goto LABEL_102;
        }

        if (v63 != 1)
        {
          v38 = __nwlog_obj();
          v39 = type[0];
          if (!os_log_type_enabled(v38, type[0]))
          {
            goto LABEL_103;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          v40 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
          goto LABEL_102;
        }

        v53 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = type[0];
        v54 = os_log_type_enabled(v38, type[0]);
        if (v53)
        {
          if (v54)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            *&buf[12] = 2082;
            *&buf[14] = v53;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          goto LABEL_103;
        }

        if (v54)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          v40 = "%{public}s frame array is not empty after finalize, no backtrace";
LABEL_102:
          _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
        }
      }

LABEL_103:
      if (v37)
      {
        free(v37);
      }

      goto LABEL_35;
    }

    v11 = v10;
    if (nw_protocol_metadata_is_oblivious_http(v11))
    {
      nw_protocol_metadata_access_handle(v11, &__block_literal_global_66);
LABEL_21:

      v12 = a1[11];
      if (v12)
      {
        os_release(v12);
        a1[11] = 0;
      }

      goto LABEL_23;
    }

    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_clear_context_handle";
    v47 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v47, type, &v63))
    {
LABEL_114:
      if (v47)
      {
        free(v47);
      }

      goto LABEL_21;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v48, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_clear_context_handle";
        v50 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)";
LABEL_112:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

    else
    {
      if (v63 == 1)
      {
        v57 = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v49 = type[0];
        v58 = os_log_type_enabled(v48, type[0]);
        if (v57)
        {
          if (v58)
          {
            *buf = 136446466;
            *&buf[4] = "nw_oblivious_http_clear_context_handle";
            *&buf[12] = 2082;
            *&buf[14] = v57;
            _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v57);
          goto LABEL_114;
        }

        if (!v58)
        {
          goto LABEL_113;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_clear_context_handle";
        v50 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), no backtrace";
        goto LABEL_112;
      }

      v48 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v48, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_clear_context_handle";
        v50 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), backtrace limit exceeded";
        goto LABEL_112;
      }
    }

LABEL_113:

    goto LABEL_114;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ohttp_context_destroy";
  v32 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v63 = 0;
  if (__nwlog_fault(v32, type, &v63))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_context_destroy";
      v35 = "%{public}s called with null ohttp_context";
      goto LABEL_97;
    }

    if (v63 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_context_destroy";
      v35 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
      goto LABEL_97;
    }

    v51 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type[0];
    v52 = os_log_type_enabled(v33, type[0]);
    if (v51)
    {
      if (v52)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_context_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v51;
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null ohttp_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v51);
      goto LABEL_98;
    }

    if (v52)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_context_destroy";
      v35 = "%{public}s called with null ohttp_context, no backtrace";
LABEL_97:
      _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
    }
  }

LABEL_98:
  if (v32)
  {
    free(v32);
  }
}

uint64_t ___ZL33nw_protocol_ohttp_context_destroyP16nw_ohttp_context_block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 32) + 32);
  v4 = a2[2];
  v5 = a2[3];
  if (v4)
  {
    v3 = (v4 + 24);
  }

  *v3 = v5;
  *v5 = v4;
  a2[2] = 0;
  a2[3] = 0;
  buffer = nw_frame_get_buffer(a2, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a2);
  return 1;
}

uint64_t nw_protocol_ohttp_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v44 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v44, type, &v62))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null protocol";
LABEL_170:
      _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
      goto LABEL_171;
    }

    if (v62 != 1)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_170;
    }

    backtrace_string = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type[0];
    v49 = os_log_type_enabled(v45, type[0]);
    if (!backtrace_string)
    {
      if (!v49)
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_170;
    }

    if (!v49)
    {
      goto LABEL_87;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v50 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_86:
    _os_log_impl(&dword_181A37000, v45, v46, v50, buf, 0x16u);
    goto LABEL_87;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v44 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v44, type, &v62))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null ohttp";
      goto LABEL_170;
    }

    if (v62 != 1)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_170;
    }

    backtrace_string = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type[0];
    v51 = os_log_type_enabled(v45, type[0]);
    if (!backtrace_string)
    {
      if (!v51)
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_170;
    }

    if (!v51)
    {
      goto LABEL_87;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v50 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
    goto LABEL_86;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    if (default_input_handler == a2 || (~handle[356] & 6) != 0)
    {
      return 0;
    }

    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v7 = parameters;
      v8 = _nw_parameters_copy_protocol_options_with_level(v7, a1);

      if (v8)
      {
        if ((nw_oblivious_http_get_use_context_ids(v8) & 1) == 0)
        {
          if (handle[356])
          {
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 357;
          *&buf[22] = 2080;
          v68 = " ";
          v13 = "%{public}s %{public}s%sOptions do not enable using context IDs";
          v14 = v31;
          v15 = 32;
          goto LABEL_44;
        }

        context_id = nw_oblivious_http_get_context_id(v8);
        if (*(handle + 8) == context_id)
        {
LABEL_12:
          if (handle[356])
          {
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 136446978;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 357;
          *&buf[22] = 2080;
          v68 = " ";
          LOWORD(v69) = 2048;
          *(&v69 + 2) = context_id;
          v13 = "%{public}s %{public}s%sContext already added for ID %llu";
          v14 = v12;
          v15 = 42;
LABEL_44:
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_45:
          os_release(v8);
          return 0;
        }

        v10 = *(handle + 38);
        if (!v10)
        {
          goto LABEL_49;
        }

        *type = 0;
        v64 = type;
        v65 = 0x2000000000;
        v66 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL44nw_protocol_ohttp_get_context_for_context_idP17nw_protocol_ohttpy_block_invoke;
        v68 = &unk_1E6A30570;
        *&v69 = type;
        *(&v69 + 1) = context_id;
        nw_hash_table_apply(v10, buf);
        v11 = *(v64 + 3);
        _Block_object_dispose(type, 8);
        if (v11)
        {
          goto LABEL_12;
        }

        internal = *(handle + 38);
        if (!internal)
        {
LABEL_49:
          internal = nw_hash_table_create_internal(5u, 240, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
          if (internal)
          {
            *(internal + 56) &= ~2u;
          }

          *(handle + 38) = internal;
        }

        type[0] = OS_LOG_TYPE_DEFAULT;
        v33 = nw_hash_table_add_object(internal, a2, type);
        v34 = type[0];
        if ((type[0] & 1) == 0)
        {
          if ((handle[356] & 1) == 0)
          {
            v43 = __nwlog_obj();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136447234;
              *&buf[4] = "nw_protocol_ohttp_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 357;
              *&buf[22] = 2080;
              v68 = " ";
              LOWORD(v69) = 1042;
              *(&v69 + 2) = 16;
              WORD3(v69) = 2098;
              *(&v69 + 1) = a2;
              _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sInput handler already registered for %{public,uuid_t}.16P", buf, 0x30u);
            }
          }

          os_release(v8);
          return v34;
        }

        v35 = v33;
        extra = nw_hash_node_get_extra(v33);
        *(extra + 232) = 0;
        *(extra + 96) = nw_oblivious_http_copy_config(v8);
        *(extra + 236) = *(extra + 236) & 0xFFFE | nw_oblivious_http_get_config_is_standalone_aead(v8);
        is_receive_aead = nw_oblivious_http_get_config_is_receive_aead(v8);
        if (is_receive_aead)
        {
          v38 = 2;
        }

        else
        {
          v38 = 0;
        }

        *(extra + 236) = *(extra + 236) & 0xFFFD | v38;
        if (is_receive_aead)
        {
          if (!*(extra + 96) && !*(extra + 88))
          {
            v39 = _nw_parameters_copy_context(v7);
            *(extra + 88) = nw_oblivious_http_create_metadata_for_context(handle, extra, v39);
            if (v39)
            {
              os_release(v39);
            }
          }
        }

        *extra = context_id;
        media_type = nw_oblivious_http_get_media_type(v8);
        if (!media_type)
        {
LABEL_64:
          *(extra + 8) = 0;
          v42 = (extra + 8);
          v42[2] = 0;
          v42[1] = v42;
          v42[3] = v42 + 2;
          v42[4] = 0;
          v42[5] = v42 + 4;
          os_release(v8);
          a2->output_handler_context = v35;
          nw_protocol_set_output_handler(a2, a1);
          return v34;
        }

        v41 = strdup(media_type);
        if (v41)
        {
LABEL_63:
          *(extra + 224) = v41;
          goto LABEL_64;
        }

        v60 = __nwlog_obj();
        os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "strict_strdup";
        v61 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v61);
        if (!result)
        {
          free(v61);
          v41 = 0;
          goto LABEL_63;
        }

LABEL_175:
        __break(1u);
        return result;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v44 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (!__nwlog_fault(v44, type, &v62))
      {
LABEL_171:
        if (v44)
        {
          free(v44);
        }

        return 0;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_171;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v47 = "%{public}s called with null ohttp_options";
        goto LABEL_170;
      }

      if (v62 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_171;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v47 = "%{public}s called with null ohttp_options, backtrace limit exceeded";
        goto LABEL_170;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type[0];
      v55 = os_log_type_enabled(v45, type[0]);
      if (!backtrace_string)
      {
        if (!v55)
        {
          goto LABEL_171;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v47 = "%{public}s called with null ohttp_options, no backtrace";
        goto LABEL_170;
      }

      if (v55)
      {
        goto LABEL_125;
      }

      goto LABEL_87;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v44 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v44, type, &v62))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null parameters";
      goto LABEL_170;
    }

    if (v62 != 1)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_170;
    }

    backtrace_string = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type[0];
    v54 = os_log_type_enabled(v45, type[0]);
    if (!backtrace_string)
    {
      if (!v54)
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_170;
    }

    if (!v54)
    {
      goto LABEL_87;
    }

    goto LABEL_121;
  }

  if (nw_protocol_common_add_input_handler(a1, a2))
  {
    *(handle + 88) = 0;
    *(handle + 74) = 0;
    v16 = nw_protocol_get_parameters(a2);
    if (v16)
    {
      v17 = v16;
      handle[356] = handle[356] & 0xFE | _nw_parameters_get_logging_disabled(v16);
      v18 = v17;
      v19 = _nw_parameters_copy_protocol_options_with_level(v18, a1);

      if (v19)
      {
        v20 = v19;
        _nw_protocol_options_get_log_id_str(v20, handle + 357);

        if (nw_oblivious_http_get_use_chunks(v20))
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        handle[356] = handle[356] & 0xFD | v21;
        if (nw_oblivious_http_get_use_context_ids(v20))
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        handle[356] = handle[356] & 0xFB | v22;
        *(handle + 20) = nw_oblivious_http_copy_config(v20);
        *(handle + 8) = nw_oblivious_http_get_context_id(v20);
        *(handle + 150) = *(handle + 150) & 0xFFFE | nw_oblivious_http_get_config_is_standalone_aead(v20);
        if (nw_oblivious_http_get_config_is_receive_aead(v20))
        {
          v23 = 2;
        }

        else
        {
          v23 = 0;
        }

        *(handle + 150) = *(handle + 150) & 0xFFFD | v23;
        v24 = nw_oblivious_http_get_media_type(v20);
        if (v24)
        {
          v25 = strdup(v24);
          if (!v25)
          {
            v52 = __nwlog_obj();
            os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            *&buf[4] = "strict_strdup";
            v53 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v53);
            if (result)
            {
              goto LABEL_175;
            }

            free(v53);
            v25 = 0;
          }

          *(handle + 36) = v25;
        }

        nw_oblivious_http_get_request_path(v20);
        v26 = _nw_http_request_create("POST", 0);
        v27 = v26;
        if ((handle[356] & 2) != 0)
        {
          v28 = "message/ohttp-chunked-req";
        }

        else
        {
          v28 = "message/ohttp-req";
        }

        nw_http_fields_append(v26, "Content-Type", v28);
        *(handle + 39) = nw_http_create_metadata_for_request(v27);
        if (v27)
        {
          os_release(v27);
        }

        os_release(v20);
        if (*(handle + 20))
        {
          if (*(handle + 39))
          {
            return 1;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v44 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v44, type, &v62))
          {
            goto LABEL_171;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v45 = __nwlog_obj();
            v46 = type[0];
            if (!os_log_type_enabled(v45, type[0]))
            {
              goto LABEL_171;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v47 = "%{public}s called with null ohttp->oblivious_request_metadata";
            goto LABEL_170;
          }

          if (v62 != 1)
          {
            v45 = __nwlog_obj();
            v46 = type[0];
            if (!os_log_type_enabled(v45, type[0]))
            {
              goto LABEL_171;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v47 = "%{public}s called with null ohttp->oblivious_request_metadata, backtrace limit exceeded";
            goto LABEL_170;
          }

          backtrace_string = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v46 = type[0];
          v59 = os_log_type_enabled(v45, type[0]);
          if (!backtrace_string)
          {
            if (!v59)
            {
              goto LABEL_171;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v47 = "%{public}s called with null ohttp->oblivious_request_metadata, no backtrace";
            goto LABEL_170;
          }

          if (v59)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v50 = "%{public}s called with null ohttp->oblivious_request_metadata, dumping backtrace:%{public}s";
            goto LABEL_86;
          }
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v44 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v44, type, &v62))
          {
            goto LABEL_171;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v45 = __nwlog_obj();
            v46 = type[0];
            if (!os_log_type_enabled(v45, type[0]))
            {
              goto LABEL_171;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v47 = "%{public}s called with null ohttp->default_context.config";
            goto LABEL_170;
          }

          if (v62 != 1)
          {
            v45 = __nwlog_obj();
            v46 = type[0];
            if (!os_log_type_enabled(v45, type[0]))
            {
              goto LABEL_171;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v47 = "%{public}s called with null ohttp->default_context.config, backtrace limit exceeded";
            goto LABEL_170;
          }

          backtrace_string = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v46 = type[0];
          v58 = os_log_type_enabled(v45, type[0]);
          if (!backtrace_string)
          {
            if (!v58)
            {
              goto LABEL_171;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v47 = "%{public}s called with null ohttp->default_context.config, no backtrace";
            goto LABEL_170;
          }

          if (v58)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v50 = "%{public}s called with null ohttp->default_context.config, dumping backtrace:%{public}s";
            goto LABEL_86;
          }
        }
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v44 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (!__nwlog_fault(v44, type, &v62))
        {
          goto LABEL_171;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v47 = "%{public}s called with null ohttp_options";
          goto LABEL_170;
        }

        if (v62 != 1)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v47 = "%{public}s called with null ohttp_options, backtrace limit exceeded";
          goto LABEL_170;
        }

        backtrace_string = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v46 = type[0];
        v57 = os_log_type_enabled(v45, type[0]);
        if (!backtrace_string)
        {
          if (!v57)
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v47 = "%{public}s called with null ohttp_options, no backtrace";
          goto LABEL_170;
        }

        if (v57)
        {
LABEL_125:
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v50 = "%{public}s called with null ohttp_options, dumping backtrace:%{public}s";
          goto LABEL_86;
        }
      }

LABEL_87:
      free(backtrace_string);
      goto LABEL_171;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v44 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v44, type, &v62))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null parameters";
      goto LABEL_170;
    }

    if (v62 != 1)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_170;
    }

    backtrace_string = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type[0];
    v56 = os_log_type_enabled(v45, type[0]);
    if (!backtrace_string)
    {
      if (!v56)
      {
        goto LABEL_171;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v47 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_170;
    }

    if (!v56)
    {
      goto LABEL_87;
    }

LABEL_121:
    *buf = 136446466;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v50 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
    goto LABEL_86;
  }

  if ((handle[356] & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 357;
    *&buf[22] = 2080;
    v68 = " ";
    _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sfailed to add input handler", buf, 0x20u);
  }

  return 0;
}
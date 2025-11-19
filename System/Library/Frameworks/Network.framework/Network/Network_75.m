void nw_protocol_http2_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http2_output_available";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_output_available";
      v8 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
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
          v20 = "nw_protocol_http2_output_available";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_51:
        if (!v5)
        {
          return;
        }

LABEL_52:
        free(v5);
        return;
      }

      if (!v14)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_output_available";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_output_available";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_50:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_51;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v9 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v10 = handle[90];
        *buf = 136446978;
        v20 = "nw_protocol_http2_output_available";
        v21 = 2082;
        v22 = (handle + 95);
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (nghttp2_session_want_write())
    {
      if ((*(handle + 379) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v3 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
        {
          v4 = handle[90];
          *buf = 136446978;
          v20 = "nw_protocol_http2_output_available";
          v21 = 2082;
          v22 = (handle + 95);
          v23 = 2080;
          v24 = " ";
          v25 = 1024;
          v26 = v4;
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> session send wanted by nghttp2 library", buf, 0x26u);
        }
      }

      nw_http2_session_send(handle);
      if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v12 = handle[90];
          *buf = 136446978;
          v20 = "nw_protocol_http2_output_available";
          v21 = 2082;
          v22 = (handle + 95);
          v23 = 2080;
          v24 = " ";
          v25 = 1024;
          v26 = v12;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called session send for nghttp2 session", buf, 0x26u);
        }
      }
    }

    nw_http2_drain_output_frames(handle);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_http2_output_available";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v5, &type, &v17))
  {
    goto LABEL_51;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http2_output_available";
    v8 = "%{public}s called with null http2";
    goto LABEL_50;
  }

  if (v17 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http2_output_available";
    v8 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_50;
  }

  v15 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http2_output_available";
    v8 = "%{public}s called with null http2, no backtrace";
    goto LABEL_50;
  }

  if (v16)
  {
    *buf = 136446466;
    v20 = "nw_protocol_http2_output_available";
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v5)
  {
    goto LABEL_52;
  }
}

void ___ZL21nw_http2_session_sendP17nw_protocol_http2_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    *(v1 + 377) &= ~0x4000u;

    nw_http2_finalize_written_output_frames(v1);
  }
}

uint64_t __nw_protocol_http2_create_block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void nw_http2_finalize_written_output_frames(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 379) & 1) == 0)
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_4;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v21 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v22 = " ";
      v23 = *(a1 + 360);
      v43 = "nw_http2_finalize_written_output_frames";
      v44 = 2082;
      v24 = (a1 + 380);
      *buf = 136446978;
      if (!a1)
      {
        v24 = "";
      }

      v45 = v24;
      if (!a1)
      {
        v22 = "";
      }

      v46 = 2080;
      v47 = v22;
      v48 = 1024;
      v49 = v23;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }

    else
    {
LABEL_4:
      if (!a1)
      {
        __nwlog_obj();
        *buf = 136446210;
        v43 = "nw_http2_finalize_written_output_frames";
        v17 = _os_log_send_and_compose_impl();
        v39[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v17, v39, &type))
        {
          goto LABEL_97;
        }

        if (v39[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = v39[0];
          if (!os_log_type_enabled(v18, v39[0]))
          {
            goto LABEL_97;
          }

          *buf = 136446210;
          v43 = "nw_http2_finalize_written_output_frames";
          v20 = "%{public}s called with null http2";
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          backtrace_string = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v19 = v39[0];
          v31 = os_log_type_enabled(v18, v39[0]);
          if (backtrace_string)
          {
            if (v31)
            {
              *buf = 136446466;
              v43 = "nw_http2_finalize_written_output_frames";
              v44 = 2082;
              v45 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
LABEL_97:
            if (!v17)
            {
              return;
            }

LABEL_98:
            free(v17);
            return;
          }

          if (!v31)
          {
            goto LABEL_97;
          }

          *buf = 136446210;
          v43 = "nw_http2_finalize_written_output_frames";
          v20 = "%{public}s called with null http2, no backtrace";
        }

        else
        {
          v18 = __nwlog_obj();
          v19 = v39[0];
          if (!os_log_type_enabled(v18, v39[0]))
          {
            goto LABEL_97;
          }

          *buf = 136446210;
          v43 = "nw_http2_finalize_written_output_frames";
          v20 = "%{public}s called with null http2, backtrace limit exceeded";
        }

LABEL_96:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        goto LABEL_97;
      }
    }
  }

  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  *(a1 + 366) = 0;
  if (v2)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_28_87159);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v4 = *(a1 + 32);
      if (v4)
      {
LABEL_11:
        *v39 = 0;
        v40 = v39;
        v5 = *v3;
        if (*v3)
        {
          *(v5 + 40) = v39;
          v6 = *(a1 + 248);
          *v39 = v5;
          v40 = v6;
        }

        *(a1 + 240) = 0;
        *(a1 + 248) = v3;
        v7 = *(v4 + 24);
        if (v7)
        {
          v8 = *(v7 + 96);
          if (v8)
          {
            v8();
LABEL_16:
            if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v25 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
              {
                v26 = *(a1 + 360);
                *buf = 136446978;
                v43 = "nw_http2_finalize_written_output_frames";
                v44 = 2082;
                v45 = (a1 + 380);
                v46 = 2080;
                v47 = " ";
                v48 = 1024;
                v49 = v26;
                _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> finalized written output frames", buf, 0x26u);
              }
            }

            if (_nw_signposts_once != -1)
            {
              dispatch_once(&_nw_signposts_once, &__block_literal_global_28_87159);
            }

            if (_nw_signposts_enabled == 1)
            {
              if (kdebug_is_enabled())
              {
                kdebug_trace();
              }
            }

            return;
          }
        }

        v9 = v4;
        __nwlog_obj();
        v10 = v9;
        v11 = *(v9 + 16);
        if (!v11)
        {
          v11 = "invalid";
        }

        *buf = 136446466;
        v43 = "nw_http2_finalize_written_output_frames";
        v44 = 2082;
        v45 = v11;
        v12 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v38 = 0;
        if (__nwlog_fault(v12, &type, &v38))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v13 = __nwlog_obj();
            v14 = type;
            if (!os_log_type_enabled(v13, type))
            {
              goto LABEL_90;
            }

            v15 = *(v10 + 16);
            if (!v15)
            {
              v15 = "invalid";
            }

            *buf = 136446466;
            v43 = "nw_http2_finalize_written_output_frames";
            v44 = 2082;
            v45 = v15;
            v16 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback";
            goto LABEL_89;
          }

          if (v38 != 1)
          {
            v13 = __nwlog_obj();
            v14 = type;
            if (!os_log_type_enabled(v13, type))
            {
              goto LABEL_90;
            }

            v36 = *(v10 + 16);
            if (!v36)
            {
              v36 = "invalid";
            }

            *buf = 136446466;
            v43 = "nw_http2_finalize_written_output_frames";
            v44 = 2082;
            v45 = v36;
            v16 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_89;
          }

          v27 = __nw_create_backtrace_string();
          v13 = __nwlog_obj();
          v14 = type;
          v28 = os_log_type_enabled(v13, type);
          if (v27)
          {
            if (v28)
            {
              v29 = "invalid";
              if (*(v10 + 16))
              {
                v29 = *(v10 + 16);
              }

              *buf = 136446722;
              v43 = "nw_http2_finalize_written_output_frames";
              v44 = 2082;
              v45 = v29;
              v46 = 2082;
              v47 = v27;
              _os_log_impl(&dword_181A37000, v13, v14, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v27);
            goto LABEL_90;
          }

          if (v28)
          {
            v37 = *(v10 + 16);
            if (!v37)
            {
              v37 = "invalid";
            }

            *buf = 136446466;
            v43 = "nw_http2_finalize_written_output_frames";
            v44 = 2082;
            v45 = v37;
            v16 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace";
LABEL_89:
            _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x16u);
          }
        }

LABEL_90:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        goto LABEL_11;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_http2_finalize_written_output_frames";
    v17 = _os_log_send_and_compose_impl();
    v39[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v17, v39, &type))
    {
      goto LABEL_97;
    }

    if (v39[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = v39[0];
      if (!os_log_type_enabled(v18, v39[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v43 = "nw_http2_finalize_written_output_frames";
      v20 = "%{public}s called with null output_handler";
      goto LABEL_96;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v18 = __nwlog_obj();
      v19 = v39[0];
      if (!os_log_type_enabled(v18, v39[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v43 = "nw_http2_finalize_written_output_frames";
      v20 = "%{public}s called with null output_handler, backtrace limit exceeded";
      goto LABEL_96;
    }

    v34 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = v39[0];
    v35 = os_log_type_enabled(v18, v39[0]);
    if (!v34)
    {
      if (!v35)
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v43 = "nw_http2_finalize_written_output_frames";
      v20 = "%{public}s called with null output_handler, no backtrace";
      goto LABEL_96;
    }

    if (v35)
    {
      *buf = 136446466;
      v43 = "nw_http2_finalize_written_output_frames";
      v44 = 2082;
      v45 = v34;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v34);
    if (v17)
    {
      goto LABEL_98;
    }
  }

  else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 360);
      *buf = 136446978;
      v43 = "nw_http2_finalize_written_output_frames";
      v44 = 2082;
      v45 = (a1 + 380);
      v46 = 2080;
      v47 = " ";
      v48 = 1024;
      v49 = v33;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no written output frames, nothing to finalize", buf, 0x26u);
    }
  }
}

void sub_181F1399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_listener_copy_description_block_invoke(uint64_t a1)
{
  v2 = _nw_parameters_copy_description(*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  if (v3[22])
  {
    v4 = _nw_path_copy_description(v3[22]);
    v3 = *(a1 + 32);
    v5 = v3[34];
    if (v5)
    {
LABEL_3:
      v6 = nw_advertise_descriptor_copy_description(v5);
      v3 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = v3[34];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(*(a1 + 40) + 8);
  id_string = nw_listener_get_id_string(v3);
  v9 = *(a1 + 32);
  v10 = *(v9 + 128);
  if (v10 > 4)
  {
    v11 = "<unknown>";
  }

  else
  {
    v11 = off_1E6A2E220[v10];
  }

  v12 = *(v9 + 288);
  v13 = v12;
  if (v12)
  {
    description = _nw_endpoint_get_description(v12);
  }

  else
  {
    description = "<NULL>";
  }

  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = "<NULL>";
  }

  if (v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = "<NULL>";
  }

  asprintf((v7 + 24), "[%s %s, local endpoint: %s, parameters: %s, port: %d, path %s, service: %s]", id_string, v11, description, v2, *(*(a1 + 32) + 308), v15, v16);
  if (v6)
  {
    free(v6);
  }

  if (v2)
  {
    free(v2);
  }

  if (v4)
  {

    free(v4);
  }
}

uint64_t nw_advertise_descriptor_copy_description(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    v3 = *(v1 + 2);
    if (v3 == 2)
    {
      v8 = "<NULL>";
      if (v1[7])
      {
        v8 = v1[7];
      }

      asprintf(buf, "%s.%s scope:%x route:%x custom:%zu", v8, v1[6], *(v1 + 16), *(v1 + 17), v1[9]);
    }

    else if (v3 == 1)
    {
      v4 = "<NULL>";
      v5 = v1[2];
      if (!v5)
      {
        v5 = "<NULL>";
      }

      v6 = v1[5];
      if (v1[4])
      {
        v4 = v1[4];
      }

      if (v6)
      {
        v6 = *(v6 + 2);
      }

      if (v1[11])
      {
        v7 = " noAutoRename";
      }

      else
      {
        v7 = "";
      }

      asprintf(buf, "%s.%s.%s txtLength:%zu%s", v5, v1[3], v4, v6, v7);
    }

    v9 = *buf;
    goto LABEL_18;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_advertise_descriptor_copy_description";
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
        *&buf[4] = "nw_advertise_descriptor_copy_description";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null descriptor", buf, 0xCu);
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
          *&buf[4] = "nw_advertise_descriptor_copy_description";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_advertise_descriptor_copy_description";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_advertise_descriptor_copy_description";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_18:

  return v9;
}

void nw_framer_protocol_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    v3 = v2;
    if (v2)
    {
      if (v2[1])
      {
        if ((v2[76] & 2) == 0)
        {
          *(v2 + 608) &= 0xBDu;
          if (!nw_framer_flush_output(v2, 0))
          {
            goto LABEL_14;
          }

          v4 = v3[42];
          if (!v4)
          {
            goto LABEL_14;
          }

          v5 = *(v4 + 24);
          if (!v5)
          {
            goto LABEL_14;
          }

          v6 = *(v5 + 72);
          if (!v6)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v7 = v2[42];
        if (v7)
        {
          v8 = *(v7 + 24);
          if (v8)
          {
            v6 = *(v8 + 72);
            if (v6)
            {
LABEL_13:
              v6();
LABEL_14:

              return;
            }
          }
        }

        v9 = __nwlog_obj();
        v10 = v3[42];
        v11 = "invalid";
        if (v10)
        {
          v12 = *(v10 + 16);
          if (v12)
          {
            v11 = v12;
          }
        }

        *buf = 136446466;
        v55 = "nw_framer_protocol_output_available";
        v56 = 2082;
        v57 = v11;
        v13 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v13, &type, &v52))
        {
          goto LABEL_99;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v15 = type;
          if (os_log_type_enabled(v14, type))
          {
            v16 = v3[42];
            v17 = "invalid";
            if (v16)
            {
              v18 = *(v16 + 16);
              if (v18)
              {
                v17 = v18;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v17;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid output_available callback", buf, 0x16u);
          }
        }

        else if (v52 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v28 = type;
          v29 = os_log_type_enabled(v14, type);
          if (backtrace_string)
          {
            if (v29)
            {
              v30 = v3[42];
              v31 = "invalid";
              if (v30)
              {
                v32 = *(v30 + 16);
                if (v32)
                {
                  v31 = v32;
                }
              }

              *buf = 136446722;
              v55 = "nw_framer_protocol_output_available";
              v56 = 2082;
              v57 = v31;
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v28, "%{public}s protocol %{public}s has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            if (!v13)
            {
              goto LABEL_14;
            }

            goto LABEL_100;
          }

          if (v29)
          {
            v49 = v3[42];
            v50 = "invalid";
            if (v49)
            {
              v51 = *(v49 + 16);
              if (v51)
              {
                v50 = v51;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v50;
            _os_log_impl(&dword_181A37000, v14, v28, "%{public}s protocol %{public}s has invalid output_available callback, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v42 = type;
          if (os_log_type_enabled(v14, type))
          {
            v43 = v3[42];
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
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v44;
            _os_log_impl(&dword_181A37000, v14, v42, "%{public}s protocol %{public}s has invalid output_available callback, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

      else
      {
        v25 = __nwlog_obj();
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        v13 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v13, &type, &v52))
        {
          goto LABEL_99;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v14, type))
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_output_available";
            _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v52 == 1)
        {
          v39 = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v40 = type;
          v41 = os_log_type_enabled(v14, type);
          if (v39)
          {
            if (v41)
            {
              *buf = 136446466;
              v55 = "nw_framer_protocol_output_available";
              v56 = 2082;
              v57 = v39;
              _os_log_impl(&dword_181A37000, v14, v40, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v39);
            if (!v13)
            {
              goto LABEL_14;
            }

            goto LABEL_100;
          }

          if (v41)
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_output_available";
            _os_log_impl(&dword_181A37000, v14, v40, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v14, type))
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_output_available";
            _os_log_impl(&dword_181A37000, v14, v48, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v23 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_framer_protocol_output_available";
      v13 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v13, &type, &v52))
      {
        goto LABEL_99;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_output_available";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v14, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v36;
            _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
LABEL_99:
          if (!v13)
          {
            goto LABEL_14;
          }

LABEL_100:
          free(v13);
          goto LABEL_14;
        }

        if (v38)
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_output_available";
          _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_output_available";
          _os_log_impl(&dword_181A37000, v14, v47, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_99;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v55 = "nw_framer_protocol_output_available";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v20, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v21, type);
      if (v33)
      {
        if (v35)
        {
          *buf = 136446466;
          v55 = "nw_framer_protocol_output_available";
          v56 = 2082;
          v57 = v33;
          _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        goto LABEL_91;
      }

      if (v35)
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        _os_log_impl(&dword_181A37000, v21, v46, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_91:
  if (v20)
  {
    free(v20);
  }
}

uint64_t sub_181F148B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_181F1490C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(v2, ObjectType, v1);
}

uint64_t NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)(size_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_181F14B5C;
  *(v11 + 24) = v10;
  v15[4] = sub_181F14B2C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_181F14AF8;
  v15[3] = &block_descriptor_9;
  v12 = _Block_copy(v15);

  v13 = nw_framer_parse_input(v9, a1, a2, 0, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F14B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 + a1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(a1, v4, 0, a3);
}

NWConcrete_nw_path_flow_registration *nw_path_flow_registration_create_new_flow(void *a1, int a2, int a3, int a4, int a5, _OWORD *a6, void *a7, int a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a7;
  if (v15)
  {
    v17 = nw_path_flow_registration_copy_parent_evaluator(v15);
    v18 = v17;
    if (v17)
    {
      flow_inner = nw_path_evaluator_create_flow_inner(v17, a2, a3, a4, a5, a6, v16, a8, 0, 0, 0);
      subflow_registrations = v15->subflow_registrations;
      if (subflow_registrations || (v21 = _nw_array_create(), v22 = v15->subflow_registrations, v15->subflow_registrations = v21, v22, (subflow_registrations = v15->subflow_registrations) != 0))
      {
        if (flow_inner)
        {
          _nw_array_append(subflow_registrations, flow_inner);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v15->subflow_registrations;
        *buf = 136446722;
        v45 = "nw_path_flow_registration_create_new_flow";
        v46 = 2112;
        v47 = v24;
        v48 = 2112;
        v49 = v15;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s Added subflow registration %@ to %@", buf, 0x20u);
      }

LABEL_10:
      goto LABEL_11;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_flow_registration_create_new_flow";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v31, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v45 = "nw_path_flow_registration_create_new_flow";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null evaluator", buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v38 = type;
        v39 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v39)
          {
            *buf = 136446466;
            v45 = "nw_path_flow_registration_create_new_flow";
            v46 = 2082;
            v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v39)
        {
          *buf = 136446210;
          v45 = "nw_path_flow_registration_create_new_flow";
          _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v45 = "nw_path_flow_registration_create_new_flow";
          _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v31)
    {
      free(v31);
    }

    flow_inner = 0;
    goto LABEL_10;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v45 = "nw_path_flow_registration_create_new_flow";
  v27 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v27, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_create_new_flow";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null existing_flow_registration", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v34 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v28, type);
      if (v34)
      {
        if (v36)
        {
          *buf = 136446466;
          v45 = "nw_path_flow_registration_create_new_flow";
          v46 = 2082;
          v47 = v34;
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null existing_flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_41;
      }

      if (v36)
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_create_new_flow";
        _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null existing_flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_create_new_flow";
        _os_log_impl(&dword_181A37000, v28, v40, "%{public}s called with null existing_flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_41:
  if (v27)
  {
    free(v27);
  }

  flow_inner = 0;
LABEL_11:

  return flow_inner;
}

uint64_t nw_protocol_instance_establish_path(void *a1, NSObject *a2)
{
  v229 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v121 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_establish_path";
    v122 = _os_log_send_and_compose_impl();

    LOBYTE(v224) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v122, &v224, &__src))
    {
      goto LABEL_239;
    }

    if (v224 == 17)
    {
      v123 = __nwlog_obj();
      v124 = v224;
      if (os_log_type_enabled(v123, v224))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (__src == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v128 = v224;
      v129 = os_log_type_enabled(v123, v224);
      if (backtrace_string)
      {
        if (v129)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v123, v128, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_239:
        if (!v122)
        {
          goto LABEL_18;
        }

LABEL_240:
        free(v122);
        goto LABEL_18;
      }

      if (v129)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v128, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v123 = __nwlog_obj();
      v133 = v224;
      if (os_log_type_enabled(v123, v224))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v133, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_238:

    goto LABEL_239;
  }

  if (!a2)
  {
    v125 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_establish_path";
    v122 = _os_log_send_and_compose_impl();

    LOBYTE(v224) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v122, &v224, &__src))
    {
      goto LABEL_239;
    }

    if (v224 == 17)
    {
      v123 = __nwlog_obj();
      v126 = v224;
      if (os_log_type_enabled(v123, v224))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v126, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (__src == 1)
    {
      v130 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v131 = v224;
      v132 = os_log_type_enabled(v123, v224);
      if (v130)
      {
        if (v132)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v130;
          _os_log_impl(&dword_181A37000, v123, v131, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v130);
        if (!v122)
        {
          goto LABEL_18;
        }

        goto LABEL_240;
      }

      if (v132)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v131, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v123 = __nwlog_obj();
      v134 = v224;
      if (os_log_type_enabled(v123, v224))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v134, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_238;
  }

  v5 = v3[37];
  if (!v5)
  {
    if ((v4[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_instance_establish_path";
        *&buf[12] = 2082;
        *&buf[14] = v4 + 415;
        *&buf[22] = 2080;
        v209 = " ";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path table found", buf, 0x20u);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  node = nw_hash_table_get_node(v5, a2, 8);
  if (node)
  {
    v7 = node;
    if (*(node + 56))
    {
      if ((v4[413] & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 415;
          *&buf[22] = 2080;
          v209 = " ";
          v210 = 2048;
          v211 = a2;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx already has registered flow", buf, 0x2Au);
        }

LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v185 = node + 32;
    stack = uuid_is_null((node + 32));
    v11 = *(v7 + 168);
    if (v11)
    {
      v12 = v11;
LABEL_43:
      v24 = (v4 + 40);
      goto LABEL_44;
    }

    if (!*(v4 + 45) && !*(v4 + 46))
    {
LABEL_49:
      v33 = *(v4 + 44);
      v24 = (v4 + 40);
      if (!v33)
      {
        v25 = *v24;
        v186 = 0;
        v187 = 0;
        if (!v25)
        {
          goto LABEL_65;
        }

LABEL_45:
        v187 = v25;
        v26 = _nw_endpoint_get_type(v187);

        if (v26 != 1)
        {
          goto LABEL_65;
        }

        v187 = v187;
        address_family = _nw_endpoint_get_address_family(v187);

        if (address_family != 2)
        {
          goto LABEL_65;
        }

        v28 = _nw_parameters_create();
        nw_parameters_require_interface(v28, *(v7 + 48));
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(0, v28);
        v30 = evaluator_for_endpoint;
        if (evaluator_for_endpoint)
        {
          v31 = evaluator_for_endpoint;
          os_unfair_lock_lock(v30 + 24);
          v32 = v31[6];
          os_unfair_lock_unlock(v30 + 24);
        }

        else
        {
          v32 = 0;
        }

        if (!nw_path_is_eligible_for_CrazyIvan46(v32) || !nw_path_has_nat64_prefixes(v32))
        {
          goto LABEL_64;
        }

        v224 = 0uLL;
        if (nw_endpoint_fillout_v4_address(v187, &v224))
        {
          v34 = nw_path_nat64_prefixes(v32);
          __src = 0;
          p_src = 0;
          v35 = v34[4];
          if (v35 && (__dst = 0uLL, LODWORD(__src) = v35, memcpy(&__src + 4, v34, v35), nw_nat64_synthesize_v6(&__src, &v224 + 2, &__dst)) || (v36 = v34[9], v36) && (__dst = 0uLL, LODWORD(__src) = v36, memcpy(&__src + 4, v34 + 5, v36), (nw_nat64_synthesize_v6(&__src, &v224 + 2, &__dst) & 1) != 0) || (v37 = v34[14], v37) && (__dst = 0uLL, LODWORD(__src) = v37, memcpy(&__src + 4, v34 + 10, v37), (nw_nat64_synthesize_v6(&__src, &v224 + 2, &__dst) & 1) != 0) || (v38 = v34[19], v38) && (__dst = 0uLL, LODWORD(__src) = v38, memcpy(&__src + 4, v34 + 15, v38), (nw_nat64_synthesize_v6(&__src, &v224 + 2, &__dst) & 1) != 0))
          {
            *buf = 7708;
            *&buf[2] = WORD1(v224);
            *&buf[8] = __dst;
            *&buf[4] = 0;
            LODWORD(v209) = 0;
            address = _nw_endpoint_create_address(buf);

            v186 = address;
          }

LABEL_64:

LABEL_65:
          v40 = *(v7 + 144);
          v41 = v4[413];
          if (v40)
          {
            if ((v41 & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = *(v7 + 144);
                if (v43)
                {
                  v44 = v43;
                  os_unfair_lock_lock(v43 + 24);
                  v45 = v44[6];
                  os_unfair_lock_unlock(v43 + 24);
                }

                else
                {
                  v45 = 0;
                }

                v49 = v45;
                *buf = 136447234;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                v210 = 2112;
                v211 = v43;
                v212 = 2112;
                *v213 = v49;
                _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sCreating new flow from evaluator %@ path %@", buf, 0x34u);
              }

              v40 = *(v7 + 144);
            }

            new_flow_from_evaluator = nw_path_flow_registration_create_new_flow_from_evaluator(*(v4 + 35), v40);
          }

          else
          {
            if ((v41 & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                v210 = 2112;
                v211 = v187;
                _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sCreating new flow for %@", buf, 0x2Au);
              }
            }

            if (stack)
            {
              v47 = 0;
            }

            else
            {
              v47 = v185;
            }

            new_flow_from_evaluator = nw_path_flow_registration_create_new_flow(*(v4 + 35), 1, stack == 0, 0, 0, v47, v186, 0);
          }

          v50 = *(v7 + 56);
          *(v7 + 56) = new_flow_from_evaluator;

          v51 = *(v7 + 56);
          if (v51)
          {
            v52 = v4 - 96;
            if (stack)
            {
              v228 = *v52;
              v227 = 0uLL;
              nw_path_flow_registration_get_id(v51, &v227);
              *v52 = v227;
              *(v4 + 40) = a2;
              nw_path_override_interface(*(v4 + 36), *(v7 + 48), 1);
              v53 = v186;
              if (!v186)
              {
                v53 = *v24;
              }

              objc_storeStrong(v4 + 41, v53);
              v54 = *(v4 + 42);
              *(v4 + 42) = 0;

              v55 = _nw_parameters_copy(*(v4 + 6));
              v56 = *(v4 + 43);
              *(v4 + 43) = v55;

              nw_parameters_require_interface(*(v4 + 43), *(v7 + 48));
              *&v224 = 0;
              *(&v224 + 1) = &v224;
              v225 = 0x2020000000;
              v226 = v4 - 96;
              __src = 0;
              p_src = &__src;
              v222 = 0x2020000000;
              v223 = 0;
              *&__dst = 0;
              *(&__dst + 1) = &__dst;
              v202 = 0x2020000000;
              v203 = 0;
              v57 = *(v4 + 6);
              v197[0] = MEMORY[0x1E69E9820];
              v197[1] = 3221225472;
              v197[2] = __nw_protocol_instance_establish_path_block_invoke;
              v197[3] = &unk_1E6A2CD50;
              v58 = v4;
              v198 = v58;
              v199 = &__src;
              p_dst = &__dst;
              nw_parameters_internal_iterate_protocol_stack(v57, 4, 0, v197);
              if (*(p_src + 24) == 1)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v209) = 0;
                v59 = *(v4 + 43);
                v190[0] = MEMORY[0x1E69E9820];
                v190[1] = 3221225472;
                v190[2] = __nw_protocol_instance_establish_path_block_invoke_2;
                v190[3] = &unk_1E6A2CD78;
                v192 = &__dst;
                v60 = v58;
                v191 = v60;
                v193 = &v224;
                v194 = buf;
                v195 = a2;
                v196 = v185;
                nw_parameters_internal_iterate_protocol_stack(v59, 4, 0, v190);
                if (*(*&buf[8] + 24) == 1)
                {
                  if ((v4[413] & 0x80000000) == 0)
                  {
                    v61 = __nwlog_obj();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      *v215 = 136446722;
                      *&v215[4] = "nw_protocol_instance_establish_path";
                      v216 = 2082;
                      v217 = v60 + 415;
                      v218 = 2080;
                      v219 = " ";
                      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach application protocol", v215, 0x20u);
                    }
                  }

                  nw_protocol_instance_tear_down_path_inner(v60, v185);
                  *v52 = v228;
                  *(v4 + 40) = 0;
                  nw_path_override_interface(*(v4 + 36), 0, 0);
                  v62 = *(v4 + 41);
                  *(v4 + 41) = 0;

                  v63 = *(v4 + 42);
                  *(v4 + 42) = 0;

                  v64 = *(v4 + 43);
                  *(v4 + 43) = 0;

                  _Block_object_dispose(buf, 8);
                  v9 = 0;
                  goto LABEL_180;
                }

                _Block_object_dispose(buf, 8);
              }

              v214 = *v52;
              if ((v4[413] & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v86 = gLogObj;
                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
                {
                  v87 = *(v7 + 48);
                  *buf = 136447746;
                  *&buf[4] = "nw_protocol_instance_establish_path";
                  *&buf[12] = 2082;
                  *&buf[14] = v58 + 415;
                  *&buf[22] = 2080;
                  v209 = " ";
                  v210 = 2048;
                  v211 = a2;
                  v212 = 1040;
                  *v213 = 16;
                  *&v213[4] = 2096;
                  *&v213[6] = &v214;
                  *&v213[14] = 2112;
                  *&v213[16] = v87;
                  _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx requested socket flow %{uuid_t}.16P over %@", buf, 0x44u);
                }
              }

              v88 = v58;
              v89 = nw_hash_table_get_node(*(v4 + 37), a2, 8);
              if (v89)
              {
                v90 = v89;
                if (*(v89 + 56))
                {
                  if (nw_socket_protocol_identifier::onceToken[0] != -1)
                  {
                    dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
                  }

                  internal = nw_protocol_create_internal(&nw_socket_protocol_identifier::identifier, *(v4 + 41), *(v4 + 43), 1);
                  if (internal)
                  {
                    v92 = internal;
                    if (nw_socket_protocol_identifier::onceToken[0] != -1)
                    {
                      dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
                    }

                    v181 = nw_protocol_definition_create_with_identifier(&nw_socket_protocol_identifier::identifier);
                    stacka = nw_parameters_copy_default_protocol_stack(*(v4 + 43));
                    v182 = nw_protocol_stack_copy_transport_protocol(stacka);
                    nw_protocol_instance_set_protocol_instance(v88, v182, v181, v92);
                    v180 = nw_protocol_stack_copy_internet_protocol(stacka);
                    nw_protocol_instance_set_protocol_instance(v88, v180, v181, v92);
                    v93 = (v90 + 64);
                    if (*(v90 + 64))
                    {
                      v94 = *(v90 + 64);
                    }

                    else
                    {
                      v94 = (v4 - 96);
                    }

                    nw::share(v215, v92);
                    nw::share(&v206, v94);
                    v95 = *(v92 + 24);
                    if (v95)
                    {
                      v96 = *v95;
                      if (v96)
                      {
                        v97 = v96(v92, v94);
                        if ((v207 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_140;
                      }
                    }

                    v135 = __nwlog_obj();
                    v136 = *(v92 + 16);
                    *buf = 136446722;
                    *&buf[4] = "__nw_protocol_add_input_handler";
                    if (!v136)
                    {
                      v136 = "invalid";
                    }

                    *&buf[12] = 2082;
                    *&buf[14] = v136;
                    *&buf[22] = 2048;
                    v209 = v92;
                    v179 = _os_log_send_and_compose_impl();

                    type = OS_LOG_TYPE_ERROR;
                    v204 = 0;
                    if (__nwlog_fault(v179, &type, &v204))
                    {
                      if (type == OS_LOG_TYPE_FAULT)
                      {
                        v137 = __nwlog_obj();
                        v176 = type;
                        if (os_log_type_enabled(v137, type))
                        {
                          v138 = *(v92 + 16);
                          if (!v138)
                          {
                            v138 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v138;
                          *&buf[22] = 2048;
                          v209 = v92;
                          _os_log_impl(&dword_181A37000, v137, v176, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 0x20u);
                        }

LABEL_249:

                        goto LABEL_315;
                      }

                      if (v204 != 1)
                      {
                        v137 = __nwlog_obj();
                        v178 = type;
                        if (os_log_type_enabled(v137, type))
                        {
                          v162 = *(v92 + 16);
                          if (!v162)
                          {
                            v162 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v162;
                          *&buf[22] = 2048;
                          v209 = v92;
                          _os_log_impl(&dword_181A37000, v137, v178, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded", buf, 0x20u);
                        }

                        goto LABEL_249;
                      }

                      v147 = __nw_create_backtrace_string();
                      v177 = __nwlog_obj();
                      v175 = type;
                      v148 = os_log_type_enabled(v177, type);
                      if (v147)
                      {
                        if (v148)
                        {
                          v149 = *(v92 + 16);
                          if (!v149)
                          {
                            v149 = "invalid";
                          }

                          *buf = 136446978;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v149;
                          *&buf[22] = 2048;
                          v209 = v92;
                          v210 = 2082;
                          v211 = v147;
                          _os_log_impl(&dword_181A37000, v177, v175, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v147);
                      }

                      else
                      {
                        if (v148)
                        {
                          v173 = *(v92 + 16);
                          if (!v173)
                          {
                            v173 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v173;
                          *&buf[22] = 2048;
                          v209 = v92;
                          _os_log_impl(&dword_181A37000, v177, v175, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace", buf, 0x20u);
                        }
                      }
                    }

LABEL_315:
                    if (v179)
                    {
                      free(v179);
                    }

                    v97 = 0;
                    if ((v207 & 1) == 0)
                    {
LABEL_141:
                      if (v215[8])
                      {
                        nw::release_if_needed<nw_protocol *>(v215);
                        if (!*v93)
                        {
LABEL_161:
                          nw::share(buf, v92);
                          v101 = *(v90 + 72);
                          if (v101)
                          {
                            nw::release_if_needed<nw_protocol *>((v90 + 64));
                            v101 = *(v90 + 72);
                          }

                          *(v90 + 64) = *buf;
                          *(v90 + 72) = v101 & 0xFE | buf[8] & 1;
                        }
                      }

                      else if (!*v93)
                      {
                        goto LABEL_161;
                      }

                      p_super = &v181->super;
                      goto LABEL_165;
                    }

LABEL_140:
                    nw::release_if_needed<nw_protocol *>(&v206);
                    goto LABEL_141;
                  }

                  if ((v4[413] & 0x80000000) == 0)
                  {
                    p_super = __nwlog_obj();
                    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_instance_attach_socket_protocol";
                      *&buf[12] = 2082;
                      *&buf[14] = v88 + 415;
                      *&buf[22] = 2080;
                      v209 = " ";
                      v210 = 2048;
                      v211 = a2;
                      _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx could not create socket protocol", buf, 0x2Au);
                    }

                    v97 = 0;
LABEL_165:

                    *v52 = v228;
                    v102 = v4[413];
                    if (v97)
                    {
                      if ((v102 & 0x80000000) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v103 = gLogObj;
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                        {
                          v104 = *(v7 + 48);
                          *buf = 136447234;
                          *&buf[4] = "nw_protocol_instance_establish_path";
                          *&buf[12] = 2082;
                          *&buf[14] = v88 + 415;
                          *&buf[22] = 2080;
                          v209 = " ";
                          v210 = 2048;
                          v211 = a2;
                          v212 = 2112;
                          *v213 = v104;
                          _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx opened socket over %@", buf, 0x34u);
                        }
                      }

                      v105 = *(v7 + 64);
                      if (v105)
                      {
                        v106 = *(v105 + 5);
                        v107 = *(v7 + 64);
                        if (v106 == &nw_protocol_ref_counted_handle || v106 == &nw_protocol_ref_counted_additional_handle && (v107 = *(v105 + 8)) != 0)
                        {
                          v114 = *(v107 + 88);
                          if (v114)
                          {
                            *(v107 + 88) = v114 + 1;
                          }

                          v108 = 0;
                          *v215 = v105;
                          v215[8] |= 1u;
                        }

                        else
                        {
                          *v215 = *(v7 + 64);
                          v215[8] &= ~1u;
                          v108 = 1;
                        }

                        v115 = *(v88 - 7);
                        v116 = v4 - 96;
                        if (v115 == &nw_protocol_ref_counted_handle || v115 == &nw_protocol_ref_counted_additional_handle && (v116 = *(v88 - 4)) != 0)
                        {
                          v118 = *(v116 + 11);
                          if (v118)
                          {
                            *(v116 + 11) = v118 + 1;
                          }

                          v117 = 0;
                          v206 = v4 - 96;
                          v207 |= 1u;
                        }

                        else
                        {
                          v206 = v4 - 96;
                          v207 &= ~1u;
                          v117 = 1;
                        }

                        v119 = *(v105 + 3);
                        if (v119)
                        {
                          v120 = *(v119 + 24);
                          if (v120)
                          {
                            v120(v105, v4 - 96);
LABEL_201:
                            if ((v117 & 1) == 0)
                            {
                              nw::release_if_needed<nw_protocol *>(&v206);
                            }

                            if ((v108 & 1) == 0)
                            {
                              nw::release_if_needed<nw_protocol *>(v215);
                            }

LABEL_205:
                            v9 = 1;
                            goto LABEL_179;
                          }
                        }

                        v139 = v105;
                        v140 = __nwlog_obj();
                        v141 = *(v139 + 2);
                        *buf = 136446722;
                        *&buf[4] = "__nw_protocol_connect";
                        if (!v141)
                        {
                          v141 = "invalid";
                        }

                        *&buf[12] = 2082;
                        *&buf[14] = v141;
                        *&buf[22] = 2048;
                        v142 = v139;
                        v209 = v139;
                        v143 = _os_log_send_and_compose_impl();

                        type = OS_LOG_TYPE_ERROR;
                        v204 = 0;
                        if (__nwlog_fault(v143, &type, &v204))
                        {
                          if (type == OS_LOG_TYPE_FAULT)
                          {
                            v144 = __nwlog_obj();
                            v145 = type;
                            if (os_log_type_enabled(v144, type))
                            {
                              v146 = *(v142 + 2);
                              if (!v146)
                              {
                                v146 = "invalid";
                              }

                              *buf = 136446722;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v146;
                              *&buf[22] = 2048;
                              v209 = v142;
                              _os_log_impl(&dword_181A37000, v144, v145, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                            }
                          }

                          else if (v204 == 1)
                          {
                            v158 = __nw_create_backtrace_string();
                            v144 = __nwlog_obj();
                            v159 = type;
                            v160 = os_log_type_enabled(v144, type);
                            if (v158)
                            {
                              if (v160)
                              {
                                v161 = *(v142 + 2);
                                if (!v161)
                                {
                                  v161 = "invalid";
                                }

                                *buf = 136446978;
                                *&buf[4] = "__nw_protocol_connect";
                                *&buf[12] = 2082;
                                *&buf[14] = v161;
                                *&buf[22] = 2048;
                                v209 = v142;
                                v210 = 2082;
                                v211 = v158;
                                _os_log_impl(&dword_181A37000, v144, v159, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                              }

                              free(v158);
                              goto LABEL_324;
                            }

                            if (v160)
                            {
                              v174 = *(v142 + 2);
                              if (!v174)
                              {
                                v174 = "invalid";
                              }

                              *buf = 136446722;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v174;
                              *&buf[22] = 2048;
                              v209 = v142;
                              _os_log_impl(&dword_181A37000, v144, v159, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                            }
                          }

                          else
                          {
                            v144 = __nwlog_obj();
                            v169 = type;
                            if (os_log_type_enabled(v144, type))
                            {
                              v170 = *(v142 + 2);
                              if (!v170)
                              {
                                v170 = "invalid";
                              }

                              *buf = 136446722;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v170;
                              *&buf[22] = 2048;
                              v209 = v142;
                              _os_log_impl(&dword_181A37000, v144, v169, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                            }
                          }
                        }

LABEL_324:
                        if (v143)
                        {
                          free(v143);
                        }

                        goto LABEL_201;
                      }

                      v154 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_connect";
                      v155 = _os_log_send_and_compose_impl();

                      v215[0] = 16;
                      LOBYTE(v206) = 0;
                      if (__nwlog_fault(v155, v215, &v206))
                      {
                        if (v215[0] == 17)
                        {
                          v156 = __nwlog_obj();
                          v157 = v215[0];
                          if (os_log_type_enabled(v156, v215[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_connect";
                            _os_log_impl(&dword_181A37000, v156, v157, "%{public}s called with null protocol", buf, 0xCu);
                          }
                        }

                        else if (v206 == 1)
                        {
                          v166 = __nw_create_backtrace_string();
                          v156 = __nwlog_obj();
                          v167 = v215[0];
                          v168 = os_log_type_enabled(v156, v215[0]);
                          if (v166)
                          {
                            if (v168)
                            {
                              *buf = 136446466;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v166;
                              _os_log_impl(&dword_181A37000, v156, v167, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v166);
                            goto LABEL_335;
                          }

                          if (v168)
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_connect";
                            _os_log_impl(&dword_181A37000, v156, v167, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v156 = __nwlog_obj();
                          v172 = v215[0];
                          if (os_log_type_enabled(v156, v215[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_connect";
                            _os_log_impl(&dword_181A37000, v156, v172, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                          }
                        }
                      }

LABEL_335:
                      if (v155)
                      {
                        free(v155);
                      }

                      goto LABEL_205;
                    }

                    if ((v102 & 0x80000000) == 0)
                    {
                      goto LABEL_175;
                    }

                    goto LABEL_178;
                  }

LABEL_152:

                  *v52 = v228;
                  if ((v4[413] & 0x80000000) == 0)
                  {
LABEL_175:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v109 = gLogObj;
                    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                    {
                      v110 = *(v7 + 48);
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_instance_establish_path";
                      *&buf[12] = 2082;
                      *&buf[14] = v88 + 415;
                      *&buf[22] = 2080;
                      v209 = " ";
                      v210 = 2048;
                      v211 = a2;
                      v212 = 2112;
                      *v213 = v110;
                      _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx failed to open socket over %@", buf, 0x34u);
                    }
                  }

LABEL_178:
                  nw_protocol_instance_tear_down_path_inner(v88, v185);
                  v9 = 0;
LABEL_179:
                  *(v4 + 40) = 0;
                  nw_path_override_interface(*(v4 + 36), 0, 0);
                  v111 = *(v4 + 41);
                  *(v4 + 41) = 0;

                  v112 = *(v4 + 42);
                  *(v4 + 42) = 0;

                  v113 = *(v4 + 43);
                  *(v4 + 43) = 0;

LABEL_180:
                  _Block_object_dispose(&__dst, 8);
                  _Block_object_dispose(&__src, 8);
                  _Block_object_dispose(&v224, 8);
                  goto LABEL_186;
                }

                if (v4[413] < 0)
                {
                  goto LABEL_152;
                }

                v98 = __nwlog_obj();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
LABEL_151:

                  goto LABEL_152;
                }

                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_attach_socket_protocol";
                *&buf[12] = 2082;
                *&buf[14] = v88 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                v210 = 2048;
                v211 = a2;
                v99 = "%{public}s %{public}s%sPath %lx has no registered flow";
              }

              else
              {
                if (v4[413] < 0)
                {
                  goto LABEL_152;
                }

                v98 = __nwlog_obj();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_151;
                }

                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_attach_socket_protocol";
                *&buf[12] = 2082;
                *&buf[14] = v88 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                v210 = 2048;
                v211 = a2;
                v99 = "%{public}s %{public}s%sNo path found for %lx";
              }

              _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_ERROR, v99, buf, 0x2Au);
              goto LABEL_151;
            }

            v224 = *v52;
            if ((v4[413] & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v71 = gLogObj;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                v72 = *(v7 + 48);
                *buf = 136447746;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                v210 = 2048;
                v211 = a2;
                v212 = 1040;
                *v213 = 16;
                *&v213[4] = 2096;
                *&v213[6] = &v224;
                *&v213[14] = 2112;
                *&v213[16] = v72;
                _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx requested channel flow %{uuid_t}.16P over %@", buf, 0x44u);
              }

              v51 = *(v7 + 56);
            }

            v73 = nw_path_flow_registration_force_update(v51);
            __src = 0;
            p_src = 0;
            LODWORD(__dst) = 0;
            if (nw_path_flow_registration_get_nexus_instance(v73, *(v7 + 56), &__src, &__dst))
            {
              nw_protocol_instance_bring_up_channel(v4, a2, v185, v73);
LABEL_185:

              v9 = 1;
              goto LABEL_186;
            }

            if ((v4[413] & 0x80000000) == 0)
            {
              v74 = __nwlog_obj();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                v75 = *(v7 + 48);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                v210 = 2048;
                v211 = a2;
                v212 = 2112;
                *v213 = v75;
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo nexus assignment yet, saving path %lx over %@", buf, 0x34u);
              }
            }

            v76 = *(v4 + 9);
            if (!v76)
            {
              v77 = xpc_array_create(0, 0);
              v78 = *(v4 + 9);
              *(v4 + 9) = v77;

              v76 = *(v4 + 9);
            }

            xpc_array_set_uint64(v76, 0xFFFFFFFFFFFFFFFFLL, a2);
            if (*(v4 + 8))
            {
              goto LABEL_185;
            }

            v79 = nw_protocol_instance_copy_association(v4);
            v80 = *(v4 + 8);
            *(v4 + 8) = v79;

            v81 = *(v4 + 8);
            v82 = v4[413];
            if (v81)
            {
              if ((v82 & 0x80000000) == 0)
              {
                v83 = __nwlog_obj();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_establish_path";
                  *&buf[12] = 2082;
                  *&buf[14] = v4 + 415;
                  *&buf[22] = 2080;
                  v209 = " ";
                  _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRegistering association", buf, 0x20u);
                }

                v81 = *(v4 + 8);
              }

              v84 = *(v4 + 6);
              v188[0] = MEMORY[0x1E69E9820];
              v188[1] = 3221225472;
              v188[2] = __nw_protocol_instance_establish_path_block_invoke_68;
              v188[3] = &unk_1E6A30E88;
              v189 = v4;
              nw_association_register_internal(v81, v84, v189, 0, 1, v188);
              v85 = v189;
            }

            else
            {
              if (v82 < 0)
              {
                goto LABEL_185;
              }

              v85 = __nwlog_obj();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v209 = " ";
                _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFailed to access protocol instance association", buf, 0x20u);
              }
            }

            goto LABEL_185;
          }

          if ((v4[413] & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v65 = gLogObj;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = *(v7 + 48);
              v67 = "socket";
              *buf = 136447490;
              *&buf[4] = "nw_protocol_instance_establish_path";
              *&buf[12] = 2082;
              if (!stack)
              {
                v67 = "channel";
              }

              *&buf[14] = v4 + 415;
              *&buf[22] = 2080;
              v209 = " ";
              v210 = 2048;
              v211 = a2;
              v212 = 2080;
              *v213 = v67;
              *&v213[8] = 2112;
              *&v213[10] = v66;
              _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx failed to request %s flow over %@", buf, 0x3Eu);
            }
          }

          *(v7 + 176) = 2;
          *(v7 + 185) |= 8u;
          v68 = v4;
          v69 = v68;
          v70 = *(*(*(v68 + 1) + 80) + 216);
          if (v70)
          {
            v70(v68, a2, 2, *(v68 + 39) == a2);
          }

          nw_protocol_path_state_dispose(v69, v185);
          nw_hash_table_remove_node(*(v4 + 37), v7);
LABEL_102:
          v9 = 0;
LABEL_186:

          goto LABEL_19;
        }

        v150 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        v151 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        LOBYTE(__dst) = 0;
        if (__nwlog_fault(v151, &__src, &__dst))
        {
          if (__src == 17)
          {
            v152 = __nwlog_obj();
            v153 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_instance_establish_path";
              _os_log_impl(&dword_181A37000, v152, v153, "%{public}s called with null success", buf, 0xCu);
            }
          }

          else if (__dst == 1)
          {
            v163 = __nw_create_backtrace_string();
            v152 = __nwlog_obj();
            v164 = __src;
            v165 = os_log_type_enabled(v152, __src);
            if (v163)
            {
              if (v165)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v163;
                _os_log_impl(&dword_181A37000, v152, v164, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v163);
              goto LABEL_329;
            }

            if (v165)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_instance_establish_path";
              _os_log_impl(&dword_181A37000, v152, v164, "%{public}s called with null success, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v152 = __nwlog_obj();
            v171 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_instance_establish_path";
              _os_log_impl(&dword_181A37000, v152, v171, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_329:
        if (v151)
        {
          free(v151);
        }

        goto LABEL_102;
      }

      v12 = v33;
LABEL_44:
      v25 = v12;
      v186 = v25;
      goto LABEL_45;
    }

    v13 = _nw_parameters_create();
    nw_parameters_require_interface(v13, *(v7 + 48));
    v14 = nw_path_create_evaluator_for_endpoint(0, v13);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      os_unfair_lock_lock(v15 + 24);
      v17 = v16[6];
      os_unfair_lock_unlock(v15 + 24);
    }

    else
    {
      v17 = 0;
    }

    if (nw_path_has_ipv6(v17) && (v18 = *(v4 + 46)) != 0)
    {
      if ((v4[413] & 0x80000000) == 0)
      {
        v19 = (v4 + 368);
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          logging_description = nw_endpoint_get_logging_description(*v19);
          *buf = 136446979;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 415;
          *&buf[22] = 2080;
          v209 = " ";
          v210 = 2081;
          v211 = logging_description;
          v22 = "%{public}s %{public}s%sUsing IPv6 Preferred Address %{private}s to establish a new path";
LABEL_37:
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, v22, buf, 0x2Au);
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (!nw_path_has_ipv4(v17) || (v19 = (v4 + 360), (v18 = *(v4 + 45)) == 0))
      {
        v12 = 0;
        goto LABEL_41;
      }

      if ((v4[413] & 0x80000000) == 0)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v23 = nw_endpoint_get_logging_description(*v19);
          *buf = 136446979;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 415;
          *&buf[22] = 2080;
          v209 = " ";
          v210 = 2081;
          v211 = v23;
          v22 = "%{public}s %{public}s%sUsing IPv4 Preferred Address %{private}s to establish a new path";
          goto LABEL_37;
        }

LABEL_38:

        v18 = *v19;
      }
    }

    v12 = v18;
    objc_storeStrong((v7 + 136), v18);
LABEL_41:

    if (v12)
    {
      goto LABEL_43;
    }

    v12 = *(v7 + 168);
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  if ((v4[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_instance_establish_path";
      *&buf[12] = 2082;
      *&buf[14] = v4 + 415;
      *&buf[22] = 2080;
      v209 = " ";
      v210 = 2048;
      v211 = a2;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path found for %lx", buf, 0x2Au);
    }

    goto LABEL_17;
  }

LABEL_18:
  v9 = 0;
LABEL_19:

  return v9;
}

void sub_181F17938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a58)
  {
    nw::release_if_needed<nw_protocol *>(&a57);
  }

  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v60 - 224), 8);
  _Block_object_dispose((v60 - 192), 8);

  _Unwind_Resume(a1);
}

os_unfair_lock_s *nw_path_flow_registration_force_update(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_flow_registration_copy_parent_evaluator(v1);
    nw_path_evaluator_force_update(v3, v2);
    v4 = nw_path_flow_registration_copy_path(v2);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_path_flow_registration_force_update";
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
        v17 = "nw_path_flow_registration_force_update";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null flow_registration", buf, 0xCu);
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
          v17 = "nw_path_flow_registration_force_update";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_path_flow_registration_force_update";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_path_flow_registration_force_update";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
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

void nw_endpoint_clone_parent_endpoint_properties(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_clone_parent_endpoint_properties";
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
        v23 = "nw_endpoint_clone_parent_endpoint_properties";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
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
          v23 = "nw_endpoint_clone_parent_endpoint_properties";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_endpoint_clone_parent_endpoint_properties";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_clone_parent_endpoint_properties";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_clone_parent_endpoint_properties(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_clone_parent_endpoint_properties";
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
      v23 = "nw_endpoint_clone_parent_endpoint_properties";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null original_endpoint", buf, 0xCu);
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
      v23 = "nw_endpoint_clone_parent_endpoint_properties";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null original_endpoint, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_endpoint_clone_parent_endpoint_properties";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null original_endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_clone_parent_endpoint_properties";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null original_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void _nw_endpoint_clone_parent_endpoint_properties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  Endpoint.copyParentProperties(_:)(v4);
}

void Endpoint.copyParentProperties(_:)(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  v4 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint) = v3;
  v5 = v3;

  v6 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v7 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((*(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x20) != 0)
  {
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    v7 |= 0x20u;
  }

  else
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    v7 &= ~0x20u;
  }

  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v7;
LABEL_7:
  v8 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2);
  v9 = v1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort;
  *v9 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort);
  *(v9 + 2) = v8;
  if ((*(a1 + v6) & 0x80) != 0)
  {
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_13;
    }

    v10 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v11 = v7 | 0x80;
  }

  else
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    v10 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v11 = v7 & 0xFF7F;
  }

  *(v1 + v10) = v11;
LABEL_13:
  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_signature) = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_signature);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v12 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig);
  v14 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig);
  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig) = v12;
  v13 = v12;
}

void nw_protocol_instance_bring_up_channel(void *a1, NSObject *a2, uint64_t a3, void *a4)
{
  v264 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (v7)
  {
    if (!a2)
    {
      v108 = v8;
      v113 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_bring_up_channel";
      v110 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v232) = 0;
      if (!__nwlog_fault(v110, type, &v232))
      {
        goto LABEL_231;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v114 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v114, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v232 != 1)
      {
        v111 = __nwlog_obj();
        v138 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v138, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_230;
      }

      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v123 = type[0];
      v124 = os_log_type_enabled(v111, type[0]);
      if (!backtrace_string)
      {
        if (v124)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v124)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_179;
    }

    if (!a3)
    {
      v108 = v8;
      v115 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_bring_up_channel";
      v110 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v232) = 0;
      if (!__nwlog_fault(v110, type, &v232))
      {
        goto LABEL_231;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v116 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v116, "%{public}s called with null path_state", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v232 != 1)
      {
        v111 = __nwlog_obj();
        v139 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v139, "%{public}s called with null path_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_230;
      }

      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v125 = type[0];
      v126 = os_log_type_enabled(v111, type[0]);
      if (!backtrace_string)
      {
        if (v126)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v125, "%{public}s called with null path_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v126)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v111, v125, "%{public}s called with null path_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_179;
    }

    if (v8)
    {
      v200 = v8;
      if ((*(v7 + 413) & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(a3 + 16);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 415;
          *&buf[22] = 2080;
          v249 = " ";
          v250 = 2112;
          v251 = v10;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReceived nexus assignment, bringing up channel for %@", buf, 0x2Au);
        }
      }

      v260 = *(v7 - 6);
      v259 = 0uLL;
      nw_path_flow_registration_get_id(*(a3 + 24), &v259);
      v201 = (v7 - 12);
      *(v7 - 6) = v259;
      v7[40] = a2;
      v11 = v200;
      v12 = _nw_path_copy_effective_remote_endpoint(v11);

      v13 = v7[41];
      v7[41] = v12;

      v14 = v11;
      v15 = _nw_path_copy_effective_local_endpoint(v14);

      v16 = v7[42];
      v7[42] = v15;

      v17 = _nw_parameters_copy(v7[6]);
      v18 = v7[43];
      v7[43] = v17;

      nw_parameters_require_interface(v7[43], *(a3 + 16));
      protocol_level = nw_path_flow_registration_get_protocol_level(v14, *(a3 + 24));
      *type = 0;
      v237 = type;
      v238 = 0x2020000000;
      v239 = (v7 - 12);
      v232 = 0;
      v233 = &v232;
      v234 = 0x2020000000;
      v235 = 0;
      v231[0] = 0;
      v231[1] = v231;
      v231[2] = 0x2020000000;
      v231[3] = 0;
      v20 = v7[6];
      v227[0] = MEMORY[0x1E69E9820];
      v227[1] = 3221225472;
      v227[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke;
      v227[3] = &unk_1E6A2CD50;
      v21 = v7;
      v228 = v21;
      v229 = &v232;
      v230 = v231;
      nw_parameters_internal_iterate_protocol_stack(v20, 4, 0, v227);
      if (*(v233 + 24) == 1)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v249) = 0;
        v22 = v7[43];
        v220[0] = MEMORY[0x1E69E9820];
        v220[1] = 3221225472;
        v220[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_2;
        v220[3] = &unk_1E6A2CD78;
        v222 = v231;
        v23 = v21;
        v221 = v23;
        v223 = type;
        v224 = buf;
        v225 = a2;
        v226 = a3;
        nw_parameters_internal_iterate_protocol_stack(v22, 4, 0, v220);
        if (*(*&buf[8] + 24) == 1)
        {
          if ((*(v7 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v254 = 136446722;
              *&v254[4] = "nw_protocol_instance_bring_up_channel";
              v255 = 2082;
              v256 = v23 + 415;
              v257 = 2080;
              v258 = " ";
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach application protocol", v254, 0x20u);
            }
          }

          nw_protocol_instance_tear_down_path_inner(v23, a3);
          *v201 = v260;
          v25 = v7[41];
          v7[40] = 0;
          v7[41] = 0;

          v26 = v7[42];
          v7[42] = 0;

          v27 = v7[43];
          v7[43] = 0;

LABEL_24:
          _Block_object_dispose(buf, 8);
LABEL_307:

          _Block_object_dispose(v231, 8);
          _Block_object_dispose(&v232, 8);
          _Block_object_dispose(type, 8);
          v108 = v200;
          goto LABEL_308;
        }

        _Block_object_dispose(buf, 8);
      }

      if ((protocol_level - 1) <= 2)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v249) = 0;
        v28 = v7[43];
        v214[0] = MEMORY[0x1E69E9820];
        v214[1] = 3221225472;
        v214[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_246;
        v214[3] = &unk_1E6A2CE40;
        v29 = v21;
        v215 = v29;
        v216 = type;
        v218 = a2;
        v219 = a3;
        v217 = buf;
        nw_parameters_internal_iterate_protocol_stack(v28, 3, 0, v214);
        if (*(*&buf[8] + 24) == 1)
        {
          if ((*(v7 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v254 = 136446722;
              *&v254[4] = "nw_protocol_instance_bring_up_channel";
              v255 = 2082;
              v256 = v29 + 415;
              v257 = 2080;
              v258 = " ";
              _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach transport protocol", v254, 0x20u);
            }
          }

          nw_protocol_instance_tear_down_path_inner(v29, a3);
          *v201 = v260;
          v31 = v7[41];
          v7[40] = 0;
          v7[41] = 0;

          v32 = v7[42];
          v7[42] = 0;

          v33 = v7[43];
          v7[43] = 0;

          goto LABEL_24;
        }

        _Block_object_dispose(buf, 8);
        if (protocol_level != 3)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v249) = 0;
          v60 = v7[43];
          v208[0] = MEMORY[0x1E69E9820];
          v208[1] = 3221225472;
          v208[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_247;
          v208[3] = &unk_1E6A2CE40;
          v61 = v29;
          v209 = v61;
          v210 = type;
          v212 = a2;
          v213 = a3;
          v211 = buf;
          nw_parameters_internal_iterate_protocol_stack(v60, 2, 0, v208);
          if (*(*&buf[8] + 24) == 1)
          {
            if ((*(v7 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v62 = gLogObj;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *v254 = 136446722;
                *&v254[4] = "nw_protocol_instance_bring_up_channel";
                v255 = 2082;
                v256 = v61 + 415;
                v257 = 2080;
                v258 = " ";
                _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach internet protocol", v254, 0x20u);
              }
            }

            nw_protocol_instance_tear_down_path_inner(v61, a3);
            *v201 = v260;
            v63 = v7[41];
            v7[40] = 0;
            v7[41] = 0;

            v64 = v7[42];
            v7[42] = 0;

            v65 = v7[43];
            v7[43] = 0;

            goto LABEL_24;
          }

          _Block_object_dispose(buf, 8);
          if (protocol_level == 1)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v249) = 0;
            v74 = v7[43];
            v202[0] = MEMORY[0x1E69E9820];
            v202[1] = 3221225472;
            v202[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_248;
            v202[3] = &unk_1E6A2CE40;
            v75 = v61;
            v203 = v75;
            v204 = type;
            v206 = a2;
            v207 = a3;
            v205 = buf;
            nw_parameters_internal_iterate_protocol_stack(v74, 1, 0, v202);
            if (*(*&buf[8] + 24) == 1)
            {
              if ((*(v7 + 413) & 0x80000000) == 0)
              {
                v76 = __nwlog_obj();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  *v254 = 136446722;
                  *&v254[4] = "nw_protocol_instance_bring_up_channel";
                  v255 = 2082;
                  v256 = v75 + 415;
                  v257 = 2080;
                  v258 = " ";
                  _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach link protocol", v254, 0x20u);
                }
              }

              nw_protocol_instance_tear_down_path_inner(v75, a3);
              *v201 = v260;
              v77 = v7[41];
              v7[40] = 0;
              v7[41] = 0;

              v78 = v7[42];
              v7[42] = 0;

              v79 = v7[43];
              v7[43] = 0;

              goto LABEL_24;
            }

            _Block_object_dispose(buf, 8);
          }
        }
      }

      v34 = *(v237 + 3);
      v35 = v21;
      v36 = v14;
      *uu = 0;
      v263 = 0;
      v243 = 0;
      if ((nw_path_flow_registration_get_nexus_instance(v36, *(a3 + 24), uu, &v243) & 1) == 0)
      {
        if ((*(v7 + 413) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_instance_attach_channel_protocol";
            *&buf[12] = 2082;
            *&buf[14] = v35 + 415;
            *&buf[22] = 2080;
            v249 = " ";
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snexus is not ready", buf, 0x20u);
          }
        }

        goto LABEL_301;
      }

      v261 = 0uLL;
      v242 = 0;
      nw_path_flow_registration_get_id(*(a3 + 24), &v261);
      v37 = _nw_path_copy_flow_for_registration(v36, &v261);
      v198 = v37;
      if (v37)
      {
        nexus_key = _nw_path_flow_get_nexus_key(v37, &v242);
      }

      else
      {
        nexus_key = 0;
      }

      v241 = 0;
      v240 = 0;
      can_support_user_packet_pool = nw_path_flow_registration_can_support_user_packet_pool(v36, *(a3 + 24));
      BYTE4(v241) = BYTE4(v241) & 0xFE | can_support_user_packet_pool;
      if (nw_path_flow_registration_should_use_event_ring(v36, *(a3 + 24)))
      {
        v41 = 2;
      }

      else
      {
        v41 = 0;
      }

      BYTE4(v241) = BYTE4(v241) & 0xFD | v41;
      v240 = nexus_key;
      LODWORD(v241) = 16;
      v42 = v36;
      v199 = _nw_path_copy_endpoint(v42);

      v43 = v42;
      v44 = _nw_path_copy_parameters(v43);

      v45 = nw_parameters_copy_context(v44);
      v46 = nw_channel_create_with_attributes(v45, uu, v243, &v240);
      v47 = *(a3 + 48);
      *(a3 + 48) = v46;

      v48 = *(a3 + 48);
      v49 = *(v7 + 413);
      if (!v48)
      {
        if ((v49 & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = gLogObj;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_instance_attach_channel_protocol";
            *&buf[12] = 2082;
            *&buf[14] = v35 + 415;
            *&buf[22] = 2080;
            v249 = " ";
            _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sfailed to open channel", buf, 0x20u);
          }
        }

        goto LABEL_300;
      }

      if ((v49 & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v50 = gLogObj;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_attach_channel_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v35 + 415;
          *&buf[22] = 2080;
          v249 = " ";
          v250 = 1024;
          LODWORD(v251) = protocol_level;
          _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sopened channel at level %u", buf, 0x26u);
        }

        v48 = *(a3 + 48);
      }

      nw_channel_set_close_automatically(v48, 1);
      nw_channel_set_defer_input_available(*(a3 + 48), 1);
      nw_channel_set_protocol_level(*(a3 + 48), protocol_level);
      if (protocol_level == 2)
      {
        if (nw_protocol_ip_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
        }

        has_protocol_in_stack = nw_parameters_has_protocol_in_stack(v44, &nw_protocol_ip_identifier::identifier);
        if (v199)
        {
          v52 = has_protocol_in_stack;
        }

        else
        {
          v52 = 0;
        }

        if (v52 == 1)
        {
          v53 = v199;
          v54 = _nw_endpoint_get_type(v53);

          if (v54 == 1)
          {
            address_family = nw_endpoint_get_address_family(v53);
            v56 = *(a3 + 24);
            if (nw_protocol_ip_identifier::onceToken != -1)
            {
              v180 = address_family;
              dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
              address_family = v180;
            }

            if (address_family == 2)
            {
              v57 = 1;
            }

            else
            {
              v57 = 2;
            }

            stats_region = nw_channel_get_stats_region(*(a3 + 48), v57);
            nw_path_flow_registration_set_stats_region(v56, 2, &nw_protocol_ip_identifier::identifier, stats_region);
          }
        }
      }

      else if ((protocol_level & 0xFFFFFFFE) != 2)
      {
        goto LABEL_76;
      }

      v66 = nw_protocol_tcp_identifier();
      if (nw_parameters_has_protocol_in_stack(v44, v66))
      {
        v67 = *(a3 + 24);
        v68 = nw_protocol_tcp_identifier();
        v69 = 3;
      }

      else
      {
        if (nw_protocol_udp_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
        }

        if (!nw_parameters_has_protocol_in_stack(v44, &nw_protocol_udp_identifier::identifier))
        {
          if (nw_parameters_get_upper_transport_protocol(v44) == 253)
          {
            upper_transport_protocol_identifier = nw_parameters_get_upper_transport_protocol_identifier(v44);
            v94 = *(a3 + 24);
            v95 = nw_channel_get_stats_region(*(a3 + 48), 5);
            nw_path_flow_registration_set_stats_region(v94, 3, upper_transport_protocol_identifier, v95);
            v96 = *(a3 + 24);
            if (nw_protocol_udp_identifier::onceToken != -1)
            {
              dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
            }

            v97 = nw_channel_get_stats_region(*(a3 + 48), 4);
            nw_path_flow_registration_set_stats_region(v96, 3, &nw_protocol_udp_identifier::identifier, v97);
          }

LABEL_76:
          protocol_handler = nw_channel_get_protocol_handler(*(a3 + 48));
          if (protocol_handler)
          {
            v72 = protocol_handler[5];
            v73 = protocol_handler;
            if (v72 != &nw_protocol_ref_counted_handle)
            {
              if (v72 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v73) = 0;
LABEL_80:
                v197 = 1;
                goto LABEL_92;
              }

              v73 = protocol_handler[8];
              if (!v73)
              {
                goto LABEL_80;
              }
            }

            v80 = v73[11];
            v197 = 0;
            if (v80)
            {
              v73[11] = v80 + 1;
            }

            LOBYTE(v73) = -1;
LABEL_92:
            *v254 = protocol_handler;
            v254[8] = v73;
            if (v34)
            {
              v81 = *(v34 + 40);
              v82 = v34;
              if (v81 != &nw_protocol_ref_counted_handle)
              {
                if (v81 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v82) = 0;
                  v83 = 1;
                  goto LABEL_100;
                }

                v82 = *(v34 + 64);
                if (!v82)
                {
                  v83 = 1;
                  goto LABEL_100;
                }
              }

              v84 = *(v82 + 88);
              v83 = 0;
              if (v84)
              {
                *(v82 + 88) = v84 + 1;
              }

              LOBYTE(v82) = -1;
LABEL_100:
              *v245 = v34;
              v246 = v82;
              v85 = protocol_handler[3];
              if (v85)
              {
                v86 = *v85;
                if (v86)
                {
                  v87 = v86();
                  if (v83)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_103;
                }
              }

              v129 = protocol_handler;
              v130 = __nwlog_obj();
              v131 = *(v129 + 2);
              *buf = 136446722;
              *&buf[4] = "__nw_protocol_add_input_handler";
              if (!v131)
              {
                v131 = "invalid";
              }

              *&buf[12] = 2082;
              *&buf[14] = v131;
              *&buf[22] = 2048;
              v132 = v129;
              v249 = v129;
              v196 = _os_log_send_and_compose_impl();

              v247 = OS_LOG_TYPE_ERROR;
              v244 = 0;
              v133 = v196;
              if (!__nwlog_fault(v196, &v247, &v244))
              {
                goto LABEL_281;
              }

              if (v247 == OS_LOG_TYPE_FAULT)
              {
                v134 = __nwlog_obj();
                v135 = v247;
                if (os_log_type_enabled(v134, v247))
                {
                  v136 = *(v132 + 2);
                  if (!v136)
                  {
                    v136 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v136;
                  *&buf[22] = 2048;
                  v249 = v132;
                  _os_log_impl(&dword_181A37000, v134, v135, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 0x20u);
                }
              }

              else
              {
                if (v244 == 1)
                {
                  v149 = __nw_create_backtrace_string();
                  v150 = __nwlog_obj();
                  v194 = v247;
                  v151 = os_log_type_enabled(v150, v247);
                  if (v149)
                  {
                    if (v151)
                    {
                      v152 = *(v132 + 2);
                      if (!v152)
                      {
                        v152 = "invalid";
                      }

                      *buf = 136446978;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v152;
                      *&buf[22] = 2048;
                      v249 = v132;
                      v250 = 2082;
                      v251 = v149;
                      _os_log_impl(&dword_181A37000, v150, v194, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v149);
                  }

                  else
                  {
                    if (v151)
                    {
                      v179 = *(v132 + 2);
                      if (!v179)
                      {
                        v179 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v179;
                      *&buf[22] = 2048;
                      v249 = v132;
                      _os_log_impl(&dword_181A37000, v150, v194, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace", buf, 0x20u);
                    }
                  }

                  goto LABEL_280;
                }

                v134 = __nwlog_obj();
                v167 = v247;
                if (os_log_type_enabled(v134, v247))
                {
                  v168 = *(v132 + 2);
                  if (!v168)
                  {
                    v168 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v168;
                  *&buf[22] = 2048;
                  v249 = v132;
                  _os_log_impl(&dword_181A37000, v134, v167, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded", buf, 0x20u);
                }
              }

LABEL_280:
              v133 = v196;
LABEL_281:
              if (v133)
              {
                free(v133);
              }

              v87 = 0;
              if ((v83 & 1) == 0)
              {
LABEL_103:
                nw::release_if_needed<nw_protocol *>(v245);
              }

LABEL_104:
              if (v197)
              {
                if ((v87 & 1) == 0)
                {
                  goto LABEL_300;
                }
              }

              else
              {
                nw::release_if_needed<nw_protocol *>(v254);
                if ((v87 & 1) == 0)
                {
LABEL_300:

LABEL_301:
                  goto LABEL_302;
                }
              }

              v88 = nw_channel_set_path_flow_registration(*(a3 + 48), v43, *(a3 + 24));
              nw_channel_configure_flow_registration(*(a3 + 48), *(a3 + 24), v44);

              if (!v88)
              {
LABEL_302:
                if ((*(v7 + 413) & 0x80000000) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v186 = gLogObj;
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                  {
                    v188 = v7[41];
                    v187 = v7[42];
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_instance_bring_up_channel";
                    *&buf[12] = 2082;
                    *&buf[14] = v35 + 415;
                    *&buf[22] = 2080;
                    v249 = " ";
                    v250 = 2112;
                    v251 = v187;
                    v252 = 2112;
                    v253 = v188;
                    _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach channel protocol for %@ -> %@", buf, 0x34u);
                  }
                }

                nw_protocol_instance_tear_down_path_inner(v35, a3);
                *v201 = v260;
                v189 = v7[41];
                v7[40] = 0;
                v7[41] = 0;

                v190 = v7[42];
                v7[42] = 0;

                v191 = v7[43];
                v7[43] = 0;

                goto LABEL_307;
              }

              *v201 = v260;
              v89 = *(a3 + 32);
              if (v89)
              {
                v90 = *(v89 + 5);
                v91 = *(a3 + 32);
                if (v90 == &nw_protocol_ref_counted_handle)
                {
                  goto LABEL_120;
                }

                if (v90 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v91) = 0;
                  v92 = 1;
                  goto LABEL_123;
                }

                v91 = *(v89 + 8);
                if (v91)
                {
LABEL_120:
                  v98 = *(v91 + 88);
                  v92 = 0;
                  if (v98)
                  {
                    *(v91 + 88) = v98 + 1;
                  }

                  LOBYTE(v91) = -1;
                }

                else
                {
                  v92 = 1;
                }

LABEL_123:
                *v254 = v89;
                v254[8] = v91;
                v99 = *(v35 - 7);
                v100 = (v7 - 12);
                if (v99 != &nw_protocol_ref_counted_handle)
                {
                  if (v99 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v100) = 0;
                    v101 = 1;
                    goto LABEL_130;
                  }

                  v100 = *(v35 - 4);
                  if (!v100)
                  {
                    v101 = 1;
                    goto LABEL_130;
                  }
                }

                v102 = *(v100 + 11);
                v101 = 0;
                if (v102)
                {
                  *(v100 + 11) = v102 + 1;
                }

                LOBYTE(v100) = -1;
LABEL_130:
                *v245 = v7 - 12;
                v246 = v100;
                v103 = *(v89 + 3);
                if (v103)
                {
                  v104 = *(v103 + 24);
                  if (v104)
                  {
                    v104(v89, v201);
LABEL_133:
                    if ((v101 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(v245);
                    }

                    if ((v92 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(v254);
                    }

LABEL_137:
                    v105 = v7[41];
                    v7[40] = 0;
                    v7[41] = 0;

                    v106 = v7[42];
                    v7[42] = 0;

                    v107 = v7[43];
                    v7[43] = 0;

                    goto LABEL_307;
                  }
                }

                v159 = v89;
                v160 = __nwlog_obj();
                v161 = *(v159 + 2);
                *buf = 136446722;
                *&buf[4] = "__nw_protocol_connect";
                if (!v161)
                {
                  v161 = "invalid";
                }

                *&buf[12] = 2082;
                *&buf[14] = v161;
                *&buf[22] = 2048;
                v162 = v159;
                v249 = v159;
                v163 = _os_log_send_and_compose_impl();

                uu[0] = 16;
                LOBYTE(v261) = 0;
                if (__nwlog_fault(v163, uu, &v261))
                {
                  if (uu[0] == 17)
                  {
                    v164 = __nwlog_obj();
                    v165 = uu[0];
                    if (os_log_type_enabled(v164, uu[0]))
                    {
                      v166 = *(v162 + 2);
                      if (!v166)
                      {
                        v166 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v166;
                      *&buf[22] = 2048;
                      v249 = v162;
                      _os_log_impl(&dword_181A37000, v164, v165, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                    }
                  }

                  else if (v261 == 1)
                  {
                    v175 = __nw_create_backtrace_string();
                    v164 = __nwlog_obj();
                    v176 = uu[0];
                    v177 = os_log_type_enabled(v164, uu[0]);
                    if (v175)
                    {
                      if (v177)
                      {
                        v178 = *(v162 + 2);
                        if (!v178)
                        {
                          v178 = "invalid";
                        }

                        *buf = 136446978;
                        *&buf[4] = "__nw_protocol_connect";
                        *&buf[12] = 2082;
                        *&buf[14] = v178;
                        *&buf[22] = 2048;
                        v249 = v162;
                        v250 = 2082;
                        v251 = v175;
                        _os_log_impl(&dword_181A37000, v164, v176, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v175);
                      goto LABEL_323;
                    }

                    if (v177)
                    {
                      v193 = *(v162 + 2);
                      if (!v193)
                      {
                        v193 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v193;
                      *&buf[22] = 2048;
                      v249 = v162;
                      _os_log_impl(&dword_181A37000, v164, v176, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v164 = __nwlog_obj();
                    v184 = uu[0];
                    if (os_log_type_enabled(v164, uu[0]))
                    {
                      v185 = *(v162 + 2);
                      if (!v185)
                      {
                        v185 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v185;
                      *&buf[22] = 2048;
                      v249 = v162;
                      _os_log_impl(&dword_181A37000, v164, v184, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                    }
                  }
                }

LABEL_323:
                if (v163)
                {
                  free(v163);
                }

                goto LABEL_133;
              }

              v170 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_connect";
              v171 = _os_log_send_and_compose_impl();

              v254[0] = 16;
              v245[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v171, v254, v245))
              {
                if (v254[0] == 17)
                {
                  v172 = __nwlog_obj();
                  v173 = v254[0];
                  if (os_log_type_enabled(v172, v254[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v172, v173, "%{public}s called with null protocol", buf, 0xCu);
                  }
                }

                else if (v245[0] == OS_LOG_TYPE_INFO)
                {
                  v181 = __nw_create_backtrace_string();
                  v172 = __nwlog_obj();
                  v182 = v254[0];
                  v183 = os_log_type_enabled(v172, v254[0]);
                  if (v181)
                  {
                    if (v183)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v181;
                      _os_log_impl(&dword_181A37000, v172, v182, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v181);
                    goto LABEL_328;
                  }

                  if (v183)
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v172, v182, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v172 = __nwlog_obj();
                  v192 = v254[0];
                  if (os_log_type_enabled(v172, v254[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v172, v192, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_328:
              if (v171)
              {
                free(v171);
              }

              goto LABEL_137;
            }

            v145 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_add_input_handler";
            v146 = _os_log_send_and_compose_impl();

            v245[0] = OS_LOG_TYPE_ERROR;
            v247 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v146, v245, &v247))
            {
              if (v245[0] == OS_LOG_TYPE_FAULT)
              {
                v147 = __nwlog_obj();
                v148 = v245[0];
                if (os_log_type_enabled(v147, v245[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  _os_log_impl(&dword_181A37000, v147, v148, "%{public}s called with null input_protocol", buf, 0xCu);
                }
              }

              else
              {
                if (v247 == OS_LOG_TYPE_INFO)
                {
                  v156 = __nw_create_backtrace_string();
                  v157 = __nwlog_obj();
                  v195 = v245[0];
                  v158 = os_log_type_enabled(v157, v245[0]);
                  if (v156)
                  {
                    if (v158)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v156;
                      _os_log_impl(&dword_181A37000, v157, v195, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v156);
                  }

                  else
                  {
                    if (v158)
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      _os_log_impl(&dword_181A37000, v157, v195, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
                    }
                  }

                  goto LABEL_312;
                }

                v147 = __nwlog_obj();
                v174 = v245[0];
                if (os_log_type_enabled(v147, v245[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  _os_log_impl(&dword_181A37000, v147, v174, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_312:
            if (v146)
            {
              free(v146);
            }

            v87 = 0;
            goto LABEL_104;
          }

          v141 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_add_input_handler";
          v142 = _os_log_send_and_compose_impl();

          v254[0] = 16;
          v245[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v142, v254, v245))
          {
            if (v254[0] == 17)
            {
              v143 = __nwlog_obj();
              v144 = v254[0];
              if (os_log_type_enabled(v143, v254[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_add_input_handler";
                _os_log_impl(&dword_181A37000, v143, v144, "%{public}s called with null protocol", buf, 0xCu);
              }
            }

            else if (v245[0] == OS_LOG_TYPE_INFO)
            {
              v153 = __nw_create_backtrace_string();
              v143 = __nwlog_obj();
              v154 = v254[0];
              v155 = os_log_type_enabled(v143, v254[0]);
              if (v153)
              {
                if (v155)
                {
                  *buf = 136446466;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v153;
                  _os_log_impl(&dword_181A37000, v143, v154, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v153);
                goto LABEL_298;
              }

              if (v155)
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_add_input_handler";
                _os_log_impl(&dword_181A37000, v143, v154, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v143 = __nwlog_obj();
              v169 = v254[0];
              if (os_log_type_enabled(v143, v254[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_add_input_handler";
                _os_log_impl(&dword_181A37000, v143, v169, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_298:
          if (v142)
          {
            free(v142);
          }

          goto LABEL_300;
        }

        v67 = *(a3 + 24);
        if (nw_protocol_udp_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
        }

        v68 = &nw_protocol_udp_identifier::identifier;
        v69 = 4;
      }

      v70 = nw_channel_get_stats_region(*(a3 + 48), v69);
      nw_path_flow_registration_set_stats_region(v67, 3, v68, v70);
      goto LABEL_76;
    }

    v108 = 0;
    v117 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_bring_up_channel";
    v110 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v232) = 0;
    if (__nwlog_fault(v110, type, &v232))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v118 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v118, "%{public}s called with null new_path", buf, 0xCu);
        }

LABEL_230:

        goto LABEL_231;
      }

      if (v232 != 1)
      {
        v111 = __nwlog_obj();
        v140 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v140, "%{public}s called with null new_path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_230;
      }

      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v127 = type[0];
      v128 = os_log_type_enabled(v111, type[0]);
      if (!backtrace_string)
      {
        if (v128)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v127, "%{public}s called with null new_path, no backtrace", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v128)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v111, v127, "%{public}s called with null new_path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_179:

      free(backtrace_string);
      if (!v110)
      {
        goto LABEL_308;
      }

      goto LABEL_232;
    }
  }

  else
  {
    v108 = v8;
    v109 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_bring_up_channel";
    v110 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v232) = 0;
    if (!__nwlog_fault(v110, type, &v232))
    {
      goto LABEL_231;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        _os_log_impl(&dword_181A37000, v111, v112, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_230;
    }

    if (v232 != 1)
    {
      v111 = __nwlog_obj();
      v137 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        _os_log_impl(&dword_181A37000, v111, v137, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_230;
    }

    v119 = __nw_create_backtrace_string();
    v111 = __nwlog_obj();
    v120 = type[0];
    v121 = os_log_type_enabled(v111, type[0]);
    if (!v119)
    {
      if (v121)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        _os_log_impl(&dword_181A37000, v111, v120, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_230;
    }

    if (v121)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_instance_bring_up_channel";
      *&buf[12] = 2082;
      *&buf[14] = v119;
      _os_log_impl(&dword_181A37000, v111, v120, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v119);
  }

LABEL_231:
  if (v110)
  {
LABEL_232:
    free(v110);
  }

LABEL_308:
}

void sub_181F1ABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x270], 8);

  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);

  _Unwind_Resume(a1);
}

void nw_parameters_require_interface(nw_parameters_t parameters, nw_interface_t interface)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = parameters;
  v4 = interface;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      index = _nw_interface_get_index(v4);
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v7 = nw_context_copy_implicit_context::implicit_context;
      v8 = nw_path_copy_interface_with_generation(v7, index, 0);

      if (_nw_interface_shallow_compare(v8, v5))
      {
        v9 = v3;
        v10 = v8;
      }

      else
      {
        v9 = v3;
        v10 = v5;
      }

      _nw_parameters_require_interface(v9, v10);
    }

    else
    {
      _nw_parameters_require_interface(v3, 0);
    }

    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_require_interface";
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
        v22 = "nw_parameters_require_interface";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parameters", buf, 0xCu);
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
          v22 = "nw_parameters_require_interface";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_parameters_require_interface";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_require_interface";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v12)
  {
    free(v12);
  }

LABEL_9:
}

uint64_t sub_181F1B0F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_interface);
    v3 = (a1 + 224);
    v4 = *(a1 + 224);

    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = 0;
  v3 = (a1 + 224);
  v4 = *(a1 + 224);
  if (!v4)
  {
LABEL_3:
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v4 = swift_allocObject();
    sub_18226B448(v4 + 16);
    *v3 = v4;
  }

LABEL_4:
  *(v4 + 16) = v2;
}

uint64_t nw_path_flow_registration_get_protocol_level(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = nw_path_copy_flow_for_registration(v3, v4);
    v6 = v5;
    if (v5)
    {
      protocol_level = _nw_path_flow_get_protocol_level(v5);
    }

    else
    {
      protocol_level = 0;
    }

    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_path_flow_registration_get_protocol_level";
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
        v20 = "nw_path_flow_registration_get_protocol_level";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null path", buf, 0xCu);
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
          v20 = "nw_path_flow_registration_get_protocol_level";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_get_protocol_level";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_get_protocol_level";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

  protocol_level = 0;
LABEL_6:

  return protocol_level;
}

BOOL ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  protocol_handle = nw_protocol_options_get_protocol_handle(a4);
  v7 = a1[4];
  if (v7)
  {
    v8 = v7 - 96;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == protocol_handle)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) = a2;
  }

  return v8 != protocol_handle;
}

uint64_t ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_2(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (*(*(*(a1 + 40) + 8) + 24) < a2)
  {
    v9 = nw_protocol_instance_attach_protocol(*(a1 + 32), v7, v8, *(*(*(a1 + 48) + 8) + 24), *(a1 + 64), *(a1 + 72));
    if (!v9)
    {
      v16 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_15;
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
    v10 = *(a1 + 32);
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v18 = 136446978;
        v19 = "nw_protocol_instance_bring_up_channel_block_invoke_2";
        v20 = 2082;
        v21 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v22 = 2080;
        v23 = v15;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached application protocol: %{public}@", &v18, 0x2Au);
      }
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

uint64_t sub_181F1B6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

const char *nw_protocol_instance_attach_protocol(void *a1, void *a2, void *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v76 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  identifier = nw_protocol_definition_get_identifier(v12);
  internal = nw_protocol_create_internal(identifier, *(v11 + 41), *(v11 + 43), 1);
  if (internal)
  {
    v16 = internal;
    nw_protocol_instance_set_protocol_instance(v11, v13, v12, internal);
    v17 = *(v16 + 5);
    v18 = v16;
    if (v17 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_11;
    }

    if (v17 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v18) = 0;
      v19 = 1;
      goto LABEL_14;
    }

    v18 = *(v16 + 8);
    if (v18)
    {
LABEL_11:
      v22 = *(v18 + 11);
      v19 = 0;
      if (v22)
      {
        *(v18 + 11) = v22 + 1;
      }

      LOBYTE(v18) = -1;
    }

    else
    {
      v19 = 1;
    }

LABEL_14:
    v65 = v16;
    v66 = v18;
    if (a4)
    {
      v23 = *(a4 + 40);
      v24 = a4;
      if (v23 != &nw_protocol_ref_counted_handle)
      {
        if (v23 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v24) = 0;
          v25 = 1;
          goto LABEL_22;
        }

        v24 = *(a4 + 64);
        if (!v24)
        {
          v25 = 1;
          goto LABEL_22;
        }
      }

      v26 = *(v24 + 88);
      v25 = 0;
      if (v26)
      {
        *(v24 + 88) = v26 + 1;
      }

      LOBYTE(v24) = -1;
LABEL_22:
      *v62 = a4;
      v63 = v24;
      v27 = *(v16 + 3);
      if (v27)
      {
        v28 = *v27;
        if (v28)
        {
          v29 = v28(v16, a4);
          if (v25)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }

      v36 = __nwlog_obj();
      v37 = *(v16 + 2);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_add_input_handler";
      if (!v37)
      {
        v37 = "invalid";
      }

      v68 = 2082;
      v69 = v37;
      v70 = 2048;
      v71 = v16;
      v59 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      v38 = v59;
      if (!__nwlog_fault(v59, &type, &v61))
      {
        goto LABEL_86;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v39, type))
        {
          v40 = *(v16 + 2);
          if (!v40)
          {
            v40 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_add_input_handler";
          v68 = 2082;
          v69 = v40;
          v70 = 2048;
          v71 = v16;
          _os_log_impl(&dword_181A37000, v39, v55, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 0x20u);
        }
      }

      else
      {
        if (v61 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v56 = __nwlog_obj();
          v54 = type;
          v46 = os_log_type_enabled(v56, type);
          if (backtrace_string)
          {
            if (v46)
            {
              v47 = *(v16 + 2);
              if (!v47)
              {
                v47 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_add_input_handler";
              v68 = 2082;
              v69 = v47;
              v70 = 2048;
              v71 = v16;
              v72 = 2082;
              v73 = backtrace_string;
              _os_log_impl(&dword_181A37000, v56, v54, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
          }

          else
          {
            if (v46)
            {
              v53 = *(v16 + 2);
              if (!v53)
              {
                v53 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_add_input_handler";
              v68 = 2082;
              v69 = v53;
              v70 = 2048;
              v71 = v16;
              _os_log_impl(&dword_181A37000, v56, v54, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace", buf, 0x20u);
            }
          }

          goto LABEL_85;
        }

        v39 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v39, type))
        {
          v51 = *(v16 + 2);
          if (!v51)
          {
            v51 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_add_input_handler";
          v68 = 2082;
          v69 = v51;
          v70 = 2048;
          v71 = v16;
          _os_log_impl(&dword_181A37000, v39, v58, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_85:
      v38 = v59;
LABEL_86:
      if (v38)
      {
        free(v38);
      }

      v29 = 0;
      if ((v25 & 1) == 0)
      {
LABEL_25:
        nw::release_if_needed<nw_protocol *>(v62);
      }

LABEL_26:
      if ((v19 & 1) == 0)
      {
        nw::release_if_needed<nw_protocol *>(&v65);
      }

      if (*(a6 + 32))
      {
        goto LABEL_42;
      }

      v30 = *(v16 + 5);
      v31 = v16;
      if (v30 != &nw_protocol_ref_counted_handle)
      {
        if (v30 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v31) = 0;
LABEL_32:
          v32 = 0;
LABEL_39:
          *buf = v16;
          buf[8] = v31;
          v34 = *(a6 + 40);
          if (v34)
          {
            nw::release_if_needed<nw_protocol *>((a6 + 32));
            v34 = *(a6 + 40);
          }

          *(a6 + 32) = v16;
          *(a6 + 40) = v32 | v34 & 0xFE;
LABEL_42:
          if (v29)
          {
            v21 = v16;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_45;
        }

        v31 = *(v16 + 8);
        if (!v31)
        {
          goto LABEL_32;
        }
      }

      v33 = *(v31 + 11);
      if (v33)
      {
        *(v31 + 11) = v33 + 1;
      }

      v32 = 1;
      LOBYTE(v31) = -1;
      goto LABEL_39;
    }

    v41 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_add_input_handler";
    v60 = _os_log_send_and_compose_impl();

    v62[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    v42 = v60;
    if (!__nwlog_fault(v60, v62, &type))
    {
LABEL_94:
      if (v42)
      {
        free(v42);
      }

      v29 = 0;
      goto LABEL_26;
    }

    if (v62[0] == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = v62[0];
      if (os_log_type_enabled(v43, v62[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null input_protocol", buf, 0xCu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v48 = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v57 = v62[0];
        v50 = os_log_type_enabled(v49, v62[0]);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_add_input_handler";
            v68 = 2082;
            v69 = v48;
            _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
        }

        else
        {
          if (v50)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_93;
      }

      v43 = __nwlog_obj();
      v52 = v62[0];
      if (os_log_type_enabled(v43, v62[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v43, v52, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_93:
    v42 = v60;
    goto LABEL_94;
  }

  if ((v11[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      *&buf[4] = "nw_protocol_instance_attach_protocol";
      v68 = 2082;
      v69 = v11 + 415;
      v70 = 2080;
      v71 = " ";
      v72 = 2048;
      v73 = a5;
      v74 = 2114;
      v75 = v12;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx could not create protocol for %{public}@", buf, 0x34u);
    }
  }

  v21 = 0;
LABEL_45:

  return v21;
}

void sub_181F1BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void nw_protocol_instance_set_protocol_instance(void *a1, void *a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_instance_set_protocol_instance";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v20, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v32 = "nw_protocol_instance_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol_parameters", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v32 = "nw_protocol_instance_set_protocol_instance";
            v33 = 2082;
            v34 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v27)
        {
          *buf = 136446210;
          v32 = "nw_protocol_instance_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null protocol_parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v32 = "nw_protocol_instance_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null protocol_parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_32:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_13;
  }

  v10 = strdup(v7 + 415);
  if (v10)
  {
LABEL_3:
    v11 = strlen(v10);
    if (v11)
    {
      v10[v11 - 1] = 0;
    }

    v12 = v11 > 2;
    v13 = *(v7 + 204);
    v14 = -1;
    if (v13 != 0xFFFF)
    {
      v14 = v13 + 1;
      *(v7 + 204) = v13 + 1;
    }

    v15 = v8;
    v16 = v15;
    if (v10)
    {
      v17 = &v10[2 * v12];
      if (*v17)
      {
        _nw_protocol_options_set_log_id(v15, 67, v17, v14);
      }

      free(v10);
    }

    else
    {
    }

    v18 = v16;
    _nw_protocol_options_set_instance(v18, a4);

LABEL_13:
    return;
  }

  v23 = __nwlog_obj();
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v32 = "strict_strdup";
  v24 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v24))
  {
    free(v24);
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_181F1C44C(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B1C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = swift_unknownObjectRetain();
  sub_181F1C508(v6, v5);
  a2(v5);
  return sub_181F49A88(v5, &unk_1EA83B1C0);
}

uint64_t sub_181F1C508@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWConnection.EstablishmentReport(0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v21 = v5;
    *v8 = a1;
    v9 = swift_unknownObjectRetain();
    v8[1] = nw_establishment_report_get_duration_milliseconds(v9) / 1000.0;
    v8[2] = nw_establishment_report_get_attempt_started_after_milliseconds(a1) / 1000.0;
    *(v8 + 3) = nw_establishment_report_get_previous_attempt_count(a1);
    *(v8 + 32) = nw_establishment_report_get_used_proxy(a1);
    *(v8 + 33) = nw_establishment_report_get_proxy_configured(a1);
    v10 = nw_establishment_report_copy_proxy_endpoint(a1);
    sub_181B80998(v10, v8 + v4[10]);
    v29 = MEMORY[0x1E69E7CC0];
    v11 = swift_allocObject();
    *(v11 + 16) = &v29;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F1DD30;
    *(v12 + 24) = v11;
    v27 = sub_181B80070;
    v28 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_181B7FFE4;
    v26 = &block_descriptor_297;
    v13 = _Block_copy(&aBlock);

    nw_establishment_report_enumerate_resolution_reports(a1, v13);
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(v8 + v4[11]) = v29;
      v22 = MEMORY[0x1E69E7CC0];
      v15 = swift_allocObject();
      *(v15 + 16) = &v22;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_181F1EB94;
      *(v16 + 24) = v15;
      v27 = sub_181F1EA34;
      v28 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_181F1E9CC;
      v26 = &block_descriptor_306_0;
      v17 = _Block_copy(&aBlock);

      nw_establishment_report_enumerate_protocols(a1, v17);
      swift_unknownObjectRelease();
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        *(v8 + v4[12]) = v22;

        sub_181D8DDC0(v8, a2, type metadata accessor for NWConnection.EstablishmentReport);
        (*(v21 + 56))(a2, 0, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {
    v19 = *(v5 + 56);

    return v19(a2, 1, 1, v4, v6);
  }

  return result;
}

uint64_t nw_establishment_report_get_duration_milliseconds(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    isa = v1[2].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_duration_milliseconds";
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
        v15 = "nw_establishment_report_get_duration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_duration_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_duration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_duration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

uint64_t nw_establishment_report_get_attempt_started_after_milliseconds(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    isa = v1[1].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
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
        v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

uint32_t nw_establishment_report_get_previous_attempt_count(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    isa = v1[10].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_previous_attempt_count";
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
        v15 = "nw_establishment_report_get_previous_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_previous_attempt_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_previous_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_previous_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

BOOL nw_establishment_report_get_used_proxy(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    v2 = (BYTE4(v1[10].isa) >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_used_proxy";
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
        v15 = "nw_establishment_report_get_used_proxy";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_used_proxy";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_used_proxy";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_used_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  LOBYTE(v2) = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

nw_endpoint_t nw_establishment_report_copy_proxy_endpoint(nw_establishment_report_t report)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = report;
  p_isa = &v1->isa;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_establishment_report_copy_proxy_endpoint";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v7, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_establishment_report_copy_proxy_endpoint";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v15 == 1)
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
            v18 = "nw_establishment_report_copy_proxy_endpoint";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_establishment_report_copy_proxy_endpoint";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_establishment_report_copy_proxy_endpoint";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_24;
  }

  isa = v1[5].isa;
  if (!isa || !_nw_array_get_count(isa) || (v4 = p_isa[5]) == 0)
  {
LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  v5 = _nw_array_get_object_at_index(v4, 0);
LABEL_25:

  return v5;
}

BOOL nw_establishment_report_get_proxy_configured(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    v2 = BYTE4(v1[10].isa) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_proxy_configured";
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
        v15 = "nw_establishment_report_get_proxy_configured";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_proxy_configured";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_proxy_configured";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_proxy_configured";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181F1D978(NSObject *a1, size_t *a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for NWConnection.EstablishmentReport.Resolution(0);
  v36 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - v12);
  source = nw_resolution_report_get_source(a1);
  v15 = source == nw_report_resolution_source_cache;
  if (source == nw_report_resolution_source_expired_cache)
  {
    v15 = 2;
  }

  v34 = v15;
  milliseconds = nw_resolution_report_get_milliseconds(a1);
  endpoint_count = nw_resolution_report_get_endpoint_count(a1);
  nw_resolution_report_copy_successful_endpoint(a1);
  nw_resolution_report_copy_preferred_endpoint(a1);
  protocol = nw_resolution_report_get_protocol(a1);
  v17 = swift_unknownObjectRetain();
  sub_181B80998(v17, v8);
  v18 = type metadata accessor for NWEndpoint();
  v19 = *(*(v18 - 8) + 48);
  result = v19(v8, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = swift_unknownObjectRetain();
  sub_181B80998(v21, v5);
  result = v19(v5, 1, v18);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = milliseconds / 1000.0;
  *v13 = v34;
  v13[1] = v22;
  *(v13 + 2) = endpoint_count;
  sub_181D8DDC0(v8, v13 + v9[7], type metadata accessor for NWEndpoint);
  sub_181D8DDC0(v5, v13 + v9[8], type metadata accessor for NWEndpoint);
  *(v13 + v9[9]) = protocol;
  v23 = v35;
  sub_181D8E320(v13, v35, type metadata accessor for NWConnection.EstablishmentReport.Resolution);
  v24 = v37;
  v25 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_181F1E998(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v27 = v36;
  v29 = v25[2];
  v28 = v25[3];
  if (v29 >= v28 >> 1)
  {
    *v24 = sub_181F1E998(v28 > 1, v29 + 1, 1, v25);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_181D8E448(v13, type metadata accessor for NWConnection.EstablishmentReport.Resolution);
  v30 = *v24;
  *(v30 + 16) = v29 + 1;
  sub_181D8DDC0(v23, v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, type metadata accessor for NWConnection.EstablishmentReport.Resolution);
  return 1;
}

nw_report_resolution_source_t nw_resolution_report_get_source(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa_high = HIDWORD(v1[7].isa);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_source";
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
        v15 = "nw_resolution_report_get_source";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_source";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_source";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_source";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa_high = nw_report_resolution_source_query;
  v1 = 0;
LABEL_3:

  return isa_high;
}

BOOL ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_246(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nw_protocol_instance_attach_protocol(*(a1 + 32), v6, v7, *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), *(a1 + 64));
  v9 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = v8;
    v10 = *(a1 + 32);
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v17 = 136446978;
        v18 = "nw_protocol_instance_bring_up_channel_block_invoke";
        v19 = 2082;
        v20 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v21 = 2080;
        v22 = v15;
        v23 = 2114;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached transport protocol: %{public}@", &v17, 0x2Au);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v9 != 0;
}

uint32_t nw_resolution_report_get_endpoint_count(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa = v1[7].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_endpoint_count";
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
        v15 = "nw_resolution_report_get_endpoint_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_endpoint_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_endpoint_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_endpoint_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

nw_endpoint_t nw_resolution_report_copy_preferred_endpoint(nw_resolution_report_t resolution_report)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_resolution_report_copy_preferred_endpoint";
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
        v16 = "nw_resolution_report_copy_preferred_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v16 = "nw_resolution_report_copy_preferred_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_preferred_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_preferred_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

nw_report_resolution_protocol_t nw_resolution_report_get_protocol(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa = v1[8].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_protocol";
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
        v15 = "nw_resolution_report_get_protocol";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_protocol";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_protocol";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_protocol";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = nw_report_resolution_protocol_unknown;
  v1 = 0;
LABEL_3:

  return isa;
}

uint64_t sub_181F1E9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  LOBYTE(a4) = v7(a2, a3, a4);
  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t sub_181F1EA60(uint64_t a1, unint64_t a2, unint64_t a3, char **a4)
{
  type metadata accessor for NWProtocolDefinition();
  v8 = swift_allocObject();
  v8[4] = a1;
  v9 = [swift_unknownObjectRetain() description];
  v10 = sub_182AD2F88();
  v12 = v11;

  v8[2] = v10;
  v8[3] = v12;
  v13 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_181F1EBC0(0, *(v13 + 2) + 1, 1, v13);
    *a4 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_181F1EBC0((v15 > 1), v16 + 1, 1, v13);
    *a4 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = v8;
  *(v17 + 5) = a2 / 1000.0;
  *(v17 + 6) = a3 / 1000.0;
  return 1;
}

char *sub_181F1EBC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_181F1ECFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F1EDC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F1EE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NWConnection.EstablishmentReport.proxyEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NWConnection.EstablishmentReport(0) + 40);

  return sub_181F1EE80(v3, a1);
}

uint64_t nw_quic_connection_get_pmtud_for_non_transport(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    pmtud_for_non_transport = _nw_quic_connection_get_pmtud_for_non_transport(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_pmtud_for_non_transport";
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
        v14 = "nw_quic_connection_get_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_pmtud_for_non_transport";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  pmtud_for_non_transport = 0;
LABEL_3:

  return pmtud_for_non_transport;
}

uint64_t _nw_quic_connection_get_pmtud_for_non_transport(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 2) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NWConnection.EstablishmentReport.handshakes.getter()
{
  type metadata accessor for NWConnection.EstablishmentReport(0);
}

uint64_t sub_181F1F29C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NWConnection.EstablishmentReport.resolutions.getter()
{
  type metadata accessor for NWConnection.EstablishmentReport(0);
}

uint64_t NWProtocolDefinition.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id nw_protocol_instance_copy_local_cid_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_local_cid_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_local_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_local_cid_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_local_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = *(node + 112);
LABEL_41:

  return v7;
}

id nw_protocol_instance_copy_remote_cid_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_remote_cid_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_remote_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_remote_cid_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_remote_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = *(node + 120);
LABEL_41:

  return v7;
}

id nw_protocol_instance_copy_initial_data_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_initial_data_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_initial_data_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_initial_data_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_initial_data_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = *(node + 128);
LABEL_41:

  return v7;
}

void nw_ip_channel_inbox_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    if (v4)
    {
      if (a2)
      {
        *type = 0;
        v41 = type;
        v44 = 0u;
        v45 = 0u;
        memset(buf, 0, sizeof(buf));
        while ((a2->callbacks->get_input_frames)(a2, a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, type))
        {
          v5 = _nw_array_create();
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v33 = ___ZL35nw_ip_channel_inbox_input_availableP11nw_protocolS0__block_invoke;
          v34 = &unk_1E6A359A0;
          v37 = type;
          v35 = v4;
          v38 = a2;
          v6 = v5;
          v36 = v6;
          v39 = buf;
          v7 = *type;
          do
          {
            if (!v7)
            {
              break;
            }

            v8 = *(v7 + 32);
            v9 = (v33)(v32);
            v7 = v8;
          }

          while ((v9 & 1) != 0);
        }

        goto LABEL_63;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_ip_channel_inbox_input_available";
      v15 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v42 = 0;
      if (__nwlog_fault(v15, type, &v42))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v16 = __nwlog_obj();
          v19 = type[0];
          if (os_log_type_enabled(v16, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_ip_channel_inbox_input_available";
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null from", buf, 0xCu);
          }
        }

        else if (v42 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v16 = __nwlog_obj();
          v27 = type[0];
          v28 = os_log_type_enabled(v16, type[0]);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              *&buf[4] = "nw_ip_channel_inbox_input_available";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null from, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v15)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          if (v28)
          {
            *buf = 136446210;
            *&buf[4] = "nw_ip_channel_inbox_input_available";
            _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null from, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v16 = __nwlog_obj();
          v31 = type[0];
          if (os_log_type_enabled(v16, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_ip_channel_inbox_input_available";
            _os_log_impl(&dword_181A37000, v16, v31, "%{public}s called with null from, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      if (!v15)
      {
LABEL_63:

        return;
      }

LABEL_62:
      free(v15);
      goto LABEL_63;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ip_channel_inbox_input_available";
    v15 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v15, type, &v42))
    {
      goto LABEL_61;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null inbox", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v24 = type[0];
      v25 = os_log_type_enabled(v16, type[0]);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_ip_channel_inbox_input_available";
          *&buf[12] = 2082;
          *&buf[14] = v23;
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null inbox, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_61;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null inbox, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null inbox, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_ip_channel_inbox_input_available";
  v11 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v11, type, &v42))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null to", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v21 = type[0];
      v22 = os_log_type_enabled(v12, type[0]);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_ip_channel_inbox_input_available";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null to, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_53;
      }

      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null to, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v12, v29, "%{public}s called with null to, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_53:
  if (v11)
  {
    free(v11);
  }
}

uint64_t ___ZL35nw_ip_channel_inbox_input_availableP11nw_protocolS0__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 48) + 8);
  v6 = v3[4];
  v7 = v3[5];
  if (v6)
  {
    v5 = (v6 + 40);
  }

  *v5 = v7;
  *v7 = v6;
  v3[4] = 0;
  v3[5] = 0;
  nw_ip_channel_inbox_handle_input_frame(*(a1 + 32), *(a1 + 56), v3, *(a1 + 40), *(a1 + 64));

  return 1;
}

uint64_t nw_quic_connection_get_source_connection_id_length(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    source_connection_id_length = _nw_quic_connection_get_source_connection_id_length(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_source_connection_id_length";
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
        v14 = "nw_quic_connection_get_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_source_connection_id_length";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  source_connection_id_length = 0;
LABEL_3:

  return source_connection_id_length;
}

uint64_t sub_181F20CE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_182AD2868();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v9 = sub_181AA8420(a1);
  if (!v9)
  {
    return 8;
  }

  v10 = *(*v9 + 128);
  v11 = v9;
  swift_beginAccess();
  v12 = *(v11 + v10);

  if (!v12)
  {
    return 8;
  }

  v13 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
  swift_beginAccess();
  sub_181AB5D28(v12 + v13, v4, &unk_1EA8394B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_181F49A88(v4, &unk_1EA8394B0);
    return 8;
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = sub_182AD2838();

  result = (*(v6 + 8))(v8, v5);
  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 <= 0xFF)
    {
      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t nw_quic_parse_internal(const unsigned __int8 *a1, unint64_t a2, size_t size, dispatch_data_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!size)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_quic_parse_internal";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v5, &type, &v11))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v14 = "nw_quic_parse_internal";
      v8 = "%{public}s called with null connection_id_length";
    }

    else if (v11 == 1)
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
          v14 = "nw_quic_parse_internal";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null connection_id_length, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_19;
      }

      if (!v10)
      {
LABEL_19:
        if (v5)
        {
          free(v5);
        }

        return 0;
      }

      *buf = 136446210;
      v14 = "nw_quic_parse_internal";
      v8 = "%{public}s called with null connection_id_length, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v14 = "nw_quic_parse_internal";
      v8 = "%{public}s called with null connection_id_length, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_19;
  }

  if (size + 21 <= a2 && (*a1 & 0x80000000) == 0)
  {
    *a4 = dispatch_data_create(a1 + 1, size, 0, 0);
    return 1;
  }

  return 0;
}

uint64_t nw_protocol_instance_registrar_find_quic_instance_by_id(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 2112;
        v32 = v4;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %@ finding instance of quic to join for CID %@", buf, 0x20u);
      }
    }

    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v5 = nw_protocol_copy_quic_stream_definition_quic_definition;
    identifier = nw_protocol_definition_get_identifier(v5);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v32 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke;
    aBlock[3] = &unk_1E6A333D8;
    v7 = v3;
    v22 = v7;
    v25 = identifier;
    v23 = v4;
    v24 = buf;
    v8 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v8[2](v8);
    os_unfair_lock_unlock(v3 + 2);

    v9 = *(*&buf[8] + 24);
    if (!v9)
    {
      if (gLogDatapath == 1)
      {
        v19 = __nwlog_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *type = 136446466;
          v28 = "nw_protocol_instance_registrar_find_quic_instance_by_id";
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %@ could not find protocol", type, 0x16u);
        }

        v9 = *(*&buf[8] + 24);
      }

      else
      {
        v9 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
  v12 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v12, type, &v26))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection_id", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v17 = type[0];
      v18 = os_log_type_enabled(v13, type[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection_id, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null connection_id, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void sub_181F21664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  _Block_object_dispose((v23 - 112), 8);

  _Unwind_Resume(a1);
}

void __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    while (1)
    {
      if (gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 32);
          v22 = v1[2];
          v23 = *(v22 + 16);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v21;
          *&buf[22] = 2048;
          v41 = v22;
          v42 = 2080;
          v43 = v23;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %@ checking instance %p (%s) for joining by quic", buf, 0x2Au);
        }
      }

      v3 = v1[2];
      if (v3)
      {
        break;
      }

      if (gLogDatapath == 1)
      {
        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(a1 + 32);
          v27 = v1[2];
          v28 = *(a1 + 56);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          v41 = v27;
          v42 = 2080;
          v43 = v28;
          v13 = v9;
          v14 = "%{public}s %@ instance %p of %s not eligible, missing protocol handle";
LABEL_35:
          v15 = 42;
LABEL_36:
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, v14, buf, v15);
        }

LABEL_17:
      }

LABEL_4:
      v1 = *v1;
      if (!v1)
      {
        return;
      }
    }

    if (nw_protocols_are_equal(*(a1 + 56), *(v3 + 16)))
    {
      v4 = *(v3 + 24);
      if (v4 && (v5 = *(v4 + 224)) != 0)
      {
        v6 = v5(v3, 4, 0);
        v7 = v6;
        if (v6)
        {
          v8 = *v6;
          if (v8)
          {
            v9 = v8;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v41) = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke_10;
            aBlock[3] = &unk_1E6A3BB28;
            v32 = *(a1 + 40);
            v33 = buf;
            _nw_array_apply(v9, aBlock);
            nw_array_remove_all_objects(*v7);
            if (*v7)
            {
              os_release(*v7);
            }

            free(v7);
            if (*(*&buf[8] + 24))
            {
              *(*(*(a1 + 48) + 8) + 24) = v3;

              _Block_object_dispose(buf, 8);
              return;
            }

            if (gLogDatapath == 1)
            {
              v29 = __nwlog_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v30 = *(a1 + 32);
                *v34 = 136446722;
                v35 = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
                v36 = 2112;
                v37 = v30;
                v38 = 2048;
                v39 = v3;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p did not match", v34, 0x20u);
              }
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            if (gLogDatapath != 1)
            {
              goto LABEL_4;
            }

            v9 = __nwlog_obj();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(a1 + 32);
              v19 = *(a1 + 56);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
              *&buf[12] = 2112;
              *&buf[14] = v18;
              *&buf[22] = 2048;
              v41 = v3;
              v42 = 2080;
              v43 = v19;
              v13 = v9;
              v14 = "%{public}s %@ instance %p of %s not eligible, missing required quic_info";
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (gLogDatapath != 1)
          {
            goto LABEL_4;
          }

          v9 = __nwlog_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 32);
            v17 = *(a1 + 56);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
            *&buf[12] = 2112;
            *&buf[14] = v16;
            *&buf[22] = 2048;
            v41 = v3;
            v42 = 2080;
            v43 = v17;
            v13 = v9;
            v14 = "%{public}s %@ instance %p of %s not eligible, missing quic_info";
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (gLogDatapath != 1)
        {
          goto LABEL_4;
        }

        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 32);
          v25 = *(a1 + 56);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2048;
          v41 = v3;
          v42 = 2080;
          v43 = v25;
          v13 = v9;
          v14 = "%{public}s %@ instance %p of %s not eligible, missing required callbacks";
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (gLogDatapath != 1)
      {
        goto LABEL_4;
      }

      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        v11 = *(v3 + 16);
        v12 = *(a1 + 56);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        v41 = v3;
        v42 = 2080;
        v43 = v11;
        v44 = 2080;
        v45 = v12;
        v13 = v9;
        v14 = "%{public}s %@ instance %p (%s) not eligible for joining by %s, identifier doesn't match";
        v15 = 52;
        goto LABEL_36;
      }
    }

    goto LABEL_17;
  }
}

void sub_181F21C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  is_equal = nw_dispatch_data_is_equal(*(a1 + 32), v4);
  if (is_equal)
  {
    if (gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = 136446722;
        v10 = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
        v11 = 2112;
        v12 = v8;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Comparing CID %@ with %@", &v9, 0x20u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t __nw_dispatch_data_is_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __nw_dispatch_data_is_equal_block_invoke_2;
  v8[3] = &unk_1E6A343B8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  v8[6] = a5;
  v8[7] = a4;
  dispatch_data_apply(v6, v8);
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t __nw_dispatch_data_is_equal_block_invoke_2(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1[5];
  }

  v9 = v6 + v7;
  if (v6 + v7 >= a5 + a3)
  {
    v10 = a5 + a3;
  }

  else
  {
    v10 = v6 + v7;
  }

  v11 = v10 > v8;
  v12 = v10 - v8;
  if (v11)
  {
    *(*(a1[4] + 8) + 24) = memcmp((a4 + v8 - a3), (a1[7] + v8 - v7), v12) == 0;
  }

  else
  {
    if (v9 < a3)
    {
      v13 = 0;
      return v13 & 1;
    }

    if (a5 + a3 < v7)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  v13 = *(*(a1[4] + 8) + 24);
  return v13 & 1;
}

void ___ZL38nw_ip_channel_inbox_handle_input_frameP19nw_ip_channel_inboxP11nw_protocolPU22objcproto11OS_nw_frame8NSObjectPU22objcproto11OS_nw_arrayS3_P27nw_ip_channel_fragment_info_block_invoke_38(uint64_t a1, void *a2, const unsigned __int8 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  *uu1 = 0;
  v17 = 0;
  if (nw_path_flow_get_nexus_agent_uuid(*(*(a1 + 32) + 72), uu1) && !uuid_compare(uu1, a3))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        name = _nw_interface_get_name(v5);
      }

      else
      {
        name = 0;
      }

      v8 = 136446978;
      v9 = "nw_ip_channel_inbox_handle_input_frame_block_invoke";
      v10 = 2080;
      v11 = name;
      v12 = 1040;
      v13 = 16;
      v14 = 2096;
      v15 = a3;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s Found interface %s, using agent ID %{uuid_t}.16P", &v8, 0x26u);
    }

    **(*(*(a1 + 40) + 8) + 24) = *a3;
  }
}

uint64_t nw_path_flow_registration_add_extra_interface_option(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = v3[3];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_path_flow_registration_add_extra_interface_option_block_invoke;
      aBlock[3] = &unk_1E6A3CCB8;
      v7 = v4;
      v29 = v7;
      if (v6 && (_nw_array_apply(v6, aBlock) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          v34 = 2112;
          v35 = v7;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Interface option details %@ already exists", buf, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          v34 = 2112;
          v35 = v7;
          v36 = 1042;
          v37 = 16;
          v38 = 2098;
          v39 = v3 + 4;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Adding interface option_details %@ to flow %{public,uuid_t}.16P", buf, 0x26u);
        }

        v9 = v3[3];
        if (v9 || (v10 = _nw_array_create(), v11 = v3[3], v3[3] = v10, v11, (v9 = v3[3]) != 0))
        {
          _nw_array_append(v9, v7);
        }

        v12 = 1;
      }

      goto LABEL_15;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_path_flow_registration_add_extra_interface_option";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v16, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null interface_option_details", buf, 0xCu);
        }

LABEL_47:

        goto LABEL_48;
      }

      if (v30 != 1)
      {
        v17 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v27, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v25)
      {
        *buf = 136446466;
        v33 = "nw_path_flow_registration_add_extra_interface_option";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_35;
    }
  }

  else
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_path_flow_registration_add_extra_interface_option";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v16, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null flow_registration", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v30 != 1)
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v23)
      {
        *buf = 136446466;
        v33 = "nw_path_flow_registration_add_extra_interface_option";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_35:

      free(backtrace_string);
    }
  }

LABEL_48:
  if (v16)
  {
    free(v16);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

id nw_interface_option_details_copy_initial_data(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[9];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_initial_data";
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
        v16 = "nw_interface_option_details_copy_initial_data";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v16 = "nw_interface_option_details_copy_initial_data";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_initial_data";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_initial_data";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
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

id nw_interface_option_details_copy_evaluator(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_evaluator";
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
        v16 = "nw_interface_option_details_copy_evaluator";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null details", buf, 0xCu);
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
          v16 = "nw_interface_option_details_copy_evaluator";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_evaluator";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_evaluator";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null details, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_interface_option_details_get_sockfd(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[20];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_interface_option_details_get_sockfd";
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
        v15 = "nw_interface_option_details_get_sockfd";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v15 = "nw_interface_option_details_get_sockfd";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_interface_option_details_get_sockfd";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_interface_option_details_get_sockfd";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0xFFFFFFFFLL;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_256(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  if (_nw_interface_shallow_compare(*(a1 + 32), *(extra + 16)) && ((nw_endpoint_is_equal(*(a1 + 40), *(extra + 136), 0) & 1) != 0 || (*(extra + 153) & 0x10) != 0 && _nw_interface_shallow_compare(*(a1 + 48), *(extra + 16))))
  {
    v5 = nw_interface_option_details_copy_local_cid(*(a1 + 56));
    if (nw_dispatch_data_is_equal(v5, *(extra + 80)))
    {
      v6 = nw_interface_option_details_copy_remote_cid(*(a1 + 56));
      is_equal = nw_dispatch_data_is_equal(v6, *(extra + 88));

      if (is_equal)
      {
        v8 = *(extra + 152);
        if (v8 == nw_interface_option_details_get_priority(*(a1 + 56)))
        {
          *(*(*(a1 + 72) + 8) + 24) = extra;
          *(*(*(a1 + 80) + 8) + 24) = nw_hash_node_get_object(a2);
          nw_interface_option_details_get_nexus_agent(*(a1 + 56), extra);
          return 0;
        }

        v10 = *(a1 + 64);
        if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1 + 56);
            v12 = *(a1 + 64);
            v14 = v12 == 0;
            if (v12)
            {
              v15 = (v12 + 415);
            }

            else
            {
              v15 = "";
            }

            v18 = "nw_protocol_instance_update_available_paths_block_invoke";
            v19 = 2082;
            v16 = " ";
            v17 = 136446978;
            if (v14)
            {
              v16 = "";
            }

            v20 = v15;
            v21 = 2080;
            v22 = v16;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPriority changed, skipping match and will add %@", &v17, 0x2Au);
          }
        }
      }
    }

    else
    {
    }
  }

  return 1;
}
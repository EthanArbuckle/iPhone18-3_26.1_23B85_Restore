BOOL ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2000000000;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2000000000;
  v5 = a3[1];
  if (v5 >> 62)
  {
    v15 = 0;
  }

  else
  {
    v6 = v5 >> 14;
    v7 = bswap64(v5 | 0xC000000000000000);
    v8 = bswap32(v5 | 0x80000000);
    if (v5 >> 30)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v5 >> 30)
    {
      v10 = 8;
    }

    else
    {
      v10 = 4;
    }

    v11 = bswap32(v5 | 0x4000) >> 16;
    v12 = v6 == 0;
    if (v6)
    {
      v13 = v9;
    }

    else
    {
      v13 = v11;
    }

    if (v12)
    {
      v14 = 2;
    }

    else
    {
      v14 = v10;
    }

    if (v5 >= 0x40)
    {
      v15 = v14;
    }

    else
    {
      v13 = a3[1];
      v15 = 1;
    }

    v58 = v13;
  }

  v56 = v15;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2000000000;
  v54 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2000000000;
  v16 = a3[2];
  if (v16 >> 62)
  {
    v26 = 0;
  }

  else
  {
    v17 = v16 >> 14;
    v18 = bswap64(v16 | 0xC000000000000000);
    v19 = bswap32(v16 | 0x80000000);
    if (v16 >> 30)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (v16 >> 30)
    {
      v21 = 8;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v16 | 0x4000) >> 16;
    v23 = v17 == 0;
    if (v17)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    if (v23)
    {
      v25 = 2;
    }

    else
    {
      v25 = v21;
    }

    if (v16 >= 0x40)
    {
      v26 = v25;
    }

    else
    {
      v24 = a3[2];
      v26 = 1;
    }

    v54 = v24;
  }

  v52 = v26;
  v50[0] = 0;
  v50[1] = v50;
  output_frames = nw_http_capsule_framer_get_output_frames(*(a1 + 32) + 96, *(a1 + 32), *a3, v26 + v15, v26 + v15, 1, v50);
  if (output_frames)
  {
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2000000000;
    v49 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = v50;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v35 = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_2;
    v36 = &unk_1E6A31B08;
    v37 = v48;
    v38 = &v44;
    v28 = *(a1 + 32);
    v39 = v57;
    v40 = v55;
    v41 = v53;
    v42 = v51;
    v43 = v28;
    v29 = v50[0];
    do
    {
      if (!v29)
      {
        break;
      }

      v30 = *(v29 + 32);
      v31 = v35(v34);
      v29 = v30;
    }

    while ((v31 & 1) != 0);
    nw_http_capsule_framer_finalize_output_frames(*(a1 + 32) + 96, *(a1 + 32), *a3, v45[3]);
    v32 = *(a1 + 40);
    if (v32)
    {
      _nw_array_append(v32, a3);
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(v48, 8);
  }

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  return output_frames != 0;
}

uint64_t ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  nw_array_remove_object(*(*(a1 + 32) + 200), a3);
  if (a3)
  {
    free(a3);
  }

  return 1;
}

uint64_t ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v3 = (*(*(a1[5] + 8) + 24) + 8);
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    if (v4)
    {
      v3 = (v4 + 40);
    }

    *v3 = v5;
    *v5 = v4;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v6 = a1[10];
    if ((!v6 || (*(v6 + 580) & 2) == 0) && gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = a1[10];
        v9 = (v8 + 496);
        v10 = "";
        v11 = v8 == 0;
        v12 = *(v8 + 492);
        if (v11)
        {
          v9 = "";
        }

        v16 = "nw_webtransport_http2_send_pending_control_capsules_block_invoke_2";
        v17 = 2082;
        v15 = 136446978;
        if (!v11)
        {
          v10 = " ";
        }

        v18 = v9;
        v19 = 2080;
        v20 = v10;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Dropping unneeded output frame", &v15, 0x26u);
      }
    }
  }

  else
  {
    v13 = nw_frame_unclaimed_bytes(a2, &v15);
    memcpy(v13, (*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    memcpy(&v13[*(*(a1[7] + 8) + 24)], (*(a1[8] + 8) + 24), *(*(a1[9] + 8) + 24));
    *(*(a1[4] + 8) + 24) = 1;
  }

  return 1;
}

void nw_protocol_webtransport_http2_stream_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_http2_stream_input_finished";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &type, &v16))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_http2_stream_input_finished";
      v7 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v12 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v19 = "nw_protocol_webtransport_http2_stream_input_finished";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v4)
        {
          return;
        }

LABEL_42:
        free(v4);
        return;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_http2_stream_input_finished";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_http2_stream_input_finished";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_41;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = handle[11];
        if (v9)
        {
          v10 = *(v9 + 492);
        }

        else
        {
          v10 = -1;
        }

        v15 = handle[8];
        *buf = 136447234;
        v19 = "nw_protocol_webtransport_http2_stream_input_finished";
        v20 = 2082;
        v21 = (handle + 24);
        v22 = 2080;
        v23 = " ";
        v24 = 1024;
        v25 = v10;
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    if (*(handle + 46) == 2)
    {
      nw_protocol_input_finished(handle[6], a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_webtransport_http2_stream_input_finished";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v4, &type, &v16))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_http2_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_40;
  }

  if (v16 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_http2_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_40;
  }

  v13 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v14 = os_log_type_enabled(v5, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_http2_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_40;
  }

  if (v14)
  {
    *buf = 136446466;
    v19 = "nw_protocol_webtransport_http2_stream_input_finished";
    v20 = 2082;
    v21 = v13;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v4)
  {
    goto LABEL_42;
  }
}

uint64_t nw_protocol_webtransport_http2_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v13, &type, &v34))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v16 = "%{public}s called with null protocol";
LABEL_53:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }

LABEL_54:
      if (v13)
      {
        free(v13);
      }

      return 0;
    }

    if (v34 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v16 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v23 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v16 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
      v38 = 2082;
      v39 = backtrace_string;
      v24 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_41:
      _os_log_impl(&dword_181A37000, v14, v15, v24, buf, 0x16u);
    }

LABEL_42:
    free(backtrace_string);
    goto LABEL_54;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v13, &type, &v34))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v16 = "%{public}s called with null webtransport_stream";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v34 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v16 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v16 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v25)
    {
      *buf = 136446466;
      v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
      v38 = 2082;
      v39 = backtrace_string;
      v24 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v17 = a1;
    v18 = __nwlog_obj();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    a1 = v17;
    if (v19)
    {
      v20 = handle[11];
      if (v20)
      {
        v21 = *(v20 + 492);
      }

      else
      {
        v21 = -1;
      }

      v26 = handle[8];
      *buf = 136447234;
      v37 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
      v38 = 2082;
      v39 = (handle + 24);
      v40 = 2080;
      v41 = " ";
      v42 = 1024;
      v43 = v21;
      v44 = 2048;
      v45 = v26;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a1 = v17;
    }
  }

  if ((*(handle + 276) & 8) != 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = handle[8];
    if (v4 >= 0x40)
    {
      if (v4 >> 14)
      {
        if (v4 >> 30)
        {
          if (v4 >> 62)
          {
            v7 = a1;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            v37 = "_http_vle_encode";
            v38 = 2048;
            v39 = v4;
            v8 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v8);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v8);
            v4 = 0;
            v5 = 0;
            a1 = v7;
          }

          else
          {
            v4 = bswap64(v4 | 0xC000000000000000);
            v5 = 8;
          }
        }

        else
        {
          v4 = bswap32(v4 | 0x80000000);
          v5 = 4;
        }
      }

      else
      {
        v4 = bswap32(v4 | 0x4000) >> 16;
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v28 = ___ZL60nw_protocol_webtransport_http2_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v29 = &__block_descriptor_tmp_48_37011;
    v33 = v5;
    v30 = a1;
    v31 = v4;
    v32 = handle;
    tqh_first = a2->tqh_first;
    v6 = 420171067;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v11 = *(tqh_first + 4);
      v12 = (v28)(v27);
      tqh_first = v11;
    }

    while ((v12 & 1) != 0);
  }

  return nw_http_capsule_framer_finalize_output_frames(handle[11] + 96, handle[11], v6, a2);
}

uint64_t ___ZL60nw_protocol_webtransport_http2_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_frame_unclaim(a2, a2, *(a1 + 56), 0);
  v6 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v6);
  memcpy(v4, (a1 + 40), *(a1 + 56));
  if (nw_frame_is_metadata_complete(a2))
  {
    *(*(a1 + 48) + 188) = 3;
  }

  return 1;
}

uint64_t nw_protocol_webtransport_http2_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, int a3, int a4, uint64_t a5, nw_frame_array_s *a6)
{
  *&v71[11] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v28, &type, &v62))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null protocol";
      goto LABEL_80;
    }

    if (v62 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_80;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v44 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (!v44)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_80;
    }

    if (!v44)
    {
      goto LABEL_65;
    }

    *buf = 136446466;
    v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v66 = 2082;
    v67 = backtrace_string;
    v45 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_64:
    _os_log_impl(&dword_181A37000, v29, v30, v45, buf, 0x16u);
    goto LABEL_65;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v28, &type, &v62))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null webtransport_stream";
      goto LABEL_80;
    }

    if (v62 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_80;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v46 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (!v46)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_80;
    }

    if (!v46)
    {
      goto LABEL_65;
    }

    *buf = 136446466;
    v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v66 = 2082;
    v67 = backtrace_string;
    v45 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_64;
  }

  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v28, &type, &v62))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null return_array";
      goto LABEL_80;
    }

    if (v62 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v31 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_80;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v47 = os_log_type_enabled(v29, type);
    if (backtrace_string)
    {
      if (v47)
      {
        *buf = 136446466;
        v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
        v66 = 2082;
        v67 = backtrace_string;
        v45 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_64;
      }

LABEL_65:
      free(backtrace_string);
      goto LABEL_81;
    }

    if (!v47)
    {
      goto LABEL_81;
    }

    *buf = 136446210;
    v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v31 = "%{public}s called with null return_array, no backtrace";
LABEL_80:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
LABEL_81:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v32 = a6;
    v33 = a1;
    v34 = a5;
    v35 = a4;
    v36 = a3;
    v37 = a2;
    v38 = __nwlog_obj();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
    a2 = v37;
    a3 = v36;
    a4 = v35;
    a5 = v34;
    a6 = v32;
    v40 = v39;
    a1 = v33;
    if (v40)
    {
      v41 = *(handle + 11);
      if (v41)
      {
        v42 = *(v41 + 492);
      }

      else
      {
        v42 = -1;
      }

      v48 = *(handle + 8);
      *buf = 136447234;
      v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v66 = 2082;
      v67 = handle + 192;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      *v71 = v42;
      v71[2] = 2048;
      *&v71[3] = v48;
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a6 = v32;
      a1 = v33;
      a5 = v34;
      a4 = v35;
      a3 = v36;
      a2 = v37;
    }
  }

  if (*(handle + 6) != a2)
  {
    return 0;
  }

  if (*(handle + 47) != 2)
  {
    return 0;
  }

  v7 = *(handle + 11);
  v8 = *(handle + 8);
  if (*(v7 + 184) == v8)
  {
    return 0;
  }

  if ((handle[276] & 8) != 0)
  {
    result = nw_http_capsule_framer_get_output_frames(v7 + 96, v7, 0, a3, a4, a5, a6);
  }

  else
  {
    if (v8 >= 0x40)
    {
      if (v8 >= 0x4000)
      {
        if (v8 >> 30)
        {
          if (v8 >> 62)
          {
            v12 = a3;
            v13 = a4;
            v14 = a5;
            v15 = a1;
            v16 = a6;
            v17 = __nwlog_obj();
            os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            v65 = "_http_vle_length";
            v66 = 2048;
            v67 = v8;
            v18 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v18);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v18);
            v11 = 0;
            v10 = 1;
            a6 = v16;
            a1 = v15;
            a5 = v14;
            a4 = v13;
            a3 = v12;
          }

          else
          {
            v10 = 0;
            v11 = 8;
          }
        }

        else
        {
          v10 = 0;
          v11 = 4;
        }
      }

      else
      {
        v10 = 0;
        v11 = 2;
      }
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    v19 = a3 + v11;
    if (__CFADD__(a3, v11))
    {
      if (gLogDatapath == 1)
      {
        v49 = a4;
        v50 = a5;
        v51 = a1;
        v52 = a6;
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
          v66 = 2082;
          v67 = "minimum_bytes";
          v68 = 2048;
          v69 = v11;
          v70 = 2048;
          *v71 = v19;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        LODWORD(v19) = -1;
        a6 = v52;
        a1 = v51;
        a5 = v50;
        a4 = v49;
      }

      else
      {
        LODWORD(v19) = -1;
      }
    }

    v20 = a5;
    v21 = a1;
    v22 = a6;
    v23 = a4 + v11;
    if (__CFADD__(a4, v11))
    {
      if (gLogDatapath == 1)
      {
        v54 = handle;
        v55 = a4 + v11;
        v56 = __nwlog_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v65 = "nw_protocol_webtransport_http2_stream_get_output_frames";
          v66 = 2082;
          v67 = "maximum_bytes";
          v68 = 2048;
          v69 = v11;
          v70 = 2048;
          *v71 = v55;
          _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        v23 = -1;
        handle = v54;
      }

      else
      {
        v23 = -1;
      }
    }

    result = nw_http_capsule_framer_get_output_frames(*(handle + 11) + 96, *(handle + 11), 0x190B4D3BuLL, v19, v23, v20, v22);
    if ((v10 & 1) == 0)
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 0x40000000;
      v58 = ___ZL55nw_protocol_webtransport_http2_stream_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v59 = &__block_descriptor_tmp_47_37033;
      v60 = v21;
      v61 = v11;
      tqh_first = v22->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v25 = *(tqh_first + 4);
        v26 = result;
        v27 = (v58)(v57);
        result = v26;
        tqh_first = v25;
      }

      while ((v27 & 1) != 0);
    }
  }

  if (result)
  {
    *(*(handle + 11) + 184) = *(handle + 8);
  }

  return result;
}

uint64_t nw_protocol_webtransport_http2_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v12, &type, &v34))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v34 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (!v23)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (!v23)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v24 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_39:
    _os_log_impl(&dword_181A37000, v13, v14, v24, buf, 0x16u);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v12, &type, &v34))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null webtransport_stream";
      goto LABEL_55;
    }

    if (v34 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v25 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_55;
    }

    if (!v25)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v24 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_39;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v12, &type, &v34))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null input_protocol";
      goto LABEL_55;
    }

    if (v34 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v15 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v26 = os_log_type_enabled(v13, type);
    if (backtrace_string)
    {
      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v24 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_39;
      }

LABEL_40:
      free(backtrace_string);
      goto LABEL_56;
    }

    if (!v26)
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v15 = "%{public}s called with null input_protocol, no backtrace";
LABEL_55:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
LABEL_56:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v16 = a6;
    v17 = a2;
    v18 = __nwlog_obj();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    a2 = v17;
    a6 = v16;
    if (v19)
    {
      v20 = handle[11];
      if (v20)
      {
        v21 = *(v20 + 492);
      }

      else
      {
        v21 = -1;
      }

      v27 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v37 = " ";
      v38 = 1024;
      v39 = v21;
      v40 = 2048;
      v41 = v27;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a6 = v16;
      a2 = v17;
    }
  }

  if (handle[6] != a2 || *(handle + 46) != 2)
  {
    return 0;
  }

  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LODWORD(v37) = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v29 = ___ZL54nw_protocol_webtransport_http2_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
  v30 = &unk_1E6A31AA0;
  v32 = handle;
  v33 = a6;
  v31 = buf;
  v7 = handle[9];
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 32);
    v9 = v29(v28);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  v10 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v10;
}

uint64_t ___ZL54nw_protocol_webtransport_http2_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = (a1[5] + 80);
  v4 = (a2 + 32);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (v5)
  {
    v3 = (v5 + 40);
  }

  *v3 = v6;
  *v6 = v5;
  *(a2 + 40) = 0;
  *v4 = 0;
  v7 = a1[6];
  v8 = *(v7 + 8);
  *(a2 + 40) = v8;
  *v8 = a2;
  *(v7 + 8) = v4;
  if (nw_frame_is_metadata_complete(a2))
  {
    v9 = a1[5];
    if ((*(v9 + 276) & 8) == 0)
    {
      *(v9 + 184) = 3;
    }
  }

  v10 = *(a1[4] + 8);
  v11 = *(v10 + 24) + 1;
  *(v10 + 24) = v11;
  if (v11 != v11 << 31 >> 31)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = *(*(a1[4] + 8) + 24);
    *buf = 136446978;
    v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
    v28 = 2082;
    v29 = "count";
    v30 = 2048;
    v31 = 1;
    v32 = 2048;
    v33 = v12;
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v13, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v16 = *(*(a1[4] + 8) + 24);
          *buf = 136446978;
          v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
          v28 = 2082;
          v29 = "count";
          v30 = 2048;
          v31 = 1;
          v32 = 2048;
          v33 = v16;
          v17 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_20:
          _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x2Au);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        v19 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v19)
          {
            v20 = *(*(a1[4] + 8) + 24);
            *buf = 136447234;
            v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
            v28 = 2082;
            v29 = "count";
            v30 = 2048;
            v31 = 1;
            v32 = 2048;
            v33 = v20;
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v19)
        {
          v22 = *(*(a1[4] + 8) + 24);
          *buf = 136446978;
          v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
          v28 = 2082;
          v29 = "count";
          v30 = 2048;
          v31 = 1;
          v32 = 2048;
          v33 = v22;
          v17 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_20;
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
          v21 = *(*(a1[4] + 8) + 24);
          *buf = 136446978;
          v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
          v28 = 2082;
          v29 = "count";
          v30 = 2048;
          v31 = 1;
          v32 = 2048;
          v33 = v21;
          v17 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    if (v13)
    {
      free(v13);
    }

    *(*(a1[4] + 8) + 24) = -1;
  }

  return 1;
}

void nw_protocol_webtransport_http2_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v89 = "nw_protocol_webtransport_http2_stream_connected";
    v56 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v86 = 0;
    if (!__nwlog_fault(v56, &type, &v86))
    {
      goto LABEL_147;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (!os_log_type_enabled(v57, type))
      {
        goto LABEL_147;
      }

      *buf = 136446210;
      v89 = "nw_protocol_webtransport_http2_stream_connected";
      v59 = "%{public}s called with null protocol";
    }

    else if (v86 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v58 = type;
      v64 = os_log_type_enabled(v57, type);
      if (backtrace_string)
      {
        if (v64)
        {
          *buf = 136446466;
          v89 = "nw_protocol_webtransport_http2_stream_connected";
          v90 = 2082;
          v91 = backtrace_string;
          _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_147:
        if (!v56)
        {
          return;
        }

LABEL_148:
        free(v56);
        return;
      }

      if (!v64)
      {
        goto LABEL_147;
      }

      *buf = 136446210;
      v89 = "nw_protocol_webtransport_http2_stream_connected";
      v59 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (!os_log_type_enabled(v57, type))
      {
        goto LABEL_147;
      }

      *buf = 136446210;
      v89 = "nw_protocol_webtransport_http2_stream_connected";
      v59 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_146:
    _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0xCu);
    goto LABEL_147;
  }

  handle = a1->handle;
  if (handle)
  {
    if (!*(handle + 11))
    {
      if ((handle[276] & 0x10) != 0)
      {
        return;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v10 = __nwlog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v11 = *(handle + 11);
      if (v11)
      {
        v12 = *(v11 + 492);
      }

      else
      {
        v12 = -1;
      }

      v84 = *(handle + 8);
      *buf = 136447234;
      v89 = "nw_protocol_webtransport_http2_stream_connected";
      v90 = 2082;
      v91 = handle + 192;
      v92 = 2080;
      v93 = " ";
      v94 = 1024;
      v95 = v12;
      v96 = 2048;
      v97 = v84;
      v49 = "%{public}s %{public}s%s<i%u:s%llu> Stream is not fully setup. Ignoring connected.";
      v50 = v10;
      v51 = OS_LOG_TYPE_DEBUG;
      goto LABEL_81;
    }

    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v60 = __nwlog_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = *(handle + 11);
        if (v61)
        {
          v62 = *(v61 + 492);
        }

        else
        {
          v62 = -1;
        }

        v77 = *(handle + 8);
        *buf = 136447234;
        v89 = "nw_protocol_webtransport_http2_stream_connected";
        v90 = 2082;
        v91 = handle + 192;
        v92 = 2080;
        v93 = " ";
        v94 = 1024;
        v95 = v62;
        v96 = 2048;
        v97 = v77;
        _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Got a connected event from the lower layer", buf, 0x30u);
      }
    }

    nw_protocol_connected(a1->default_input_handler->flow_id, a2);
    v5 = *(handle + 11);
    v6 = handle[276];
    if (v5 != a2)
    {
      if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
      {
        v7 = __nwlog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(handle + 11);
          if (v8)
          {
            v9 = *(v8 + 492);
          }

          else
          {
            v9 = -1;
          }

          v83 = *(handle + 8);
          *buf = 136447490;
          v89 = "nw_protocol_webtransport_http2_stream_connected";
          v90 = 2082;
          v91 = handle + 192;
          v92 = 2080;
          v93 = " ";
          v94 = 1024;
          v95 = v9;
          v96 = 2048;
          v97 = v83;
          v98 = 2048;
          *v99 = v5;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> connected protocol is not our WebTransport session (%p), ignoring", buf, 0x3Au);
        }
      }

      return;
    }

    if ((handle[276] & 4) == 0)
    {
      v13 = *(handle + 47);
      if (v13)
      {
        goto LABEL_19;
      }

LABEL_33:
      v13 = 2;
      *(handle + 47) = 2;
      v14 = *(handle + 46);
      if (v14)
      {
LABEL_20:
        if (a2)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }

LABEL_34:
      v14 = 2;
      *(handle + 46) = 2;
      if (a2)
      {
LABEL_21:
        v15 = *(v5 + 176);
        if (v15 == -1)
        {
          if ((v6 & 8) != 0)
          {
            v15 = -2;
            goto LABEL_40;
          }

          if (v13 == 3)
          {
            v15 = -1;
            goto LABEL_40;
          }

          v45 = *(v5 + 580);
          if (v14 == 3)
          {
            v46 = *(v5 + 296);
            v15 = v45 & 1 | (4 * v46) | 2;
            *(v5 + 296) = v46 + 1;
            *(v5 + 304) = v15;
            if ((v45 & 2) != 0)
            {
              goto LABEL_40;
            }

            v16 = __nwlog_obj();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_40;
            }

            v47 = *(v5 + 492);
            *buf = 136447234;
            v89 = "nw_webtransport_stream_allocate_new_id";
            v90 = 2082;
            v91 = (v5 + 496);
            v92 = 2080;
            v93 = " ";
            v94 = 1024;
            v95 = v47;
            v96 = 2048;
            v97 = v15;
            v18 = "%{public}s %{public}s%s<i%u> allocated new stream id %llu for unidirectional stream";
          }

          else
          {
            v15 = v45 & 1 | (4 * ((*(v5 + 232))++ & 0x3FFFFFFFLL));
            *(v5 + 240) = v15;
            if ((v45 & 2) != 0)
            {
              goto LABEL_40;
            }

            v16 = __nwlog_obj();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_40;
            }

            v52 = *(v5 + 492);
            *buf = 136447234;
            v89 = "nw_webtransport_stream_allocate_new_id";
            v90 = 2082;
            v91 = (v5 + 496);
            v92 = 2080;
            v93 = " ";
            v94 = 1024;
            v95 = v52;
            v96 = 2048;
            v97 = v15;
            v18 = "%{public}s %{public}s%s<i%u> allocated new stream id %llu for bidirectional stream";
          }
        }

        else
        {
          if ((*(v5 + 580) & 2) != 0)
          {
            goto LABEL_40;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_40;
          }

          v17 = *(v5 + 492);
          *buf = 136447234;
          v89 = "nw_webtransport_stream_allocate_new_id";
          v90 = 2082;
          v91 = (v5 + 496);
          v92 = 2080;
          v93 = " ";
          v94 = 1024;
          v95 = v17;
          v96 = 2048;
          v97 = v15;
          v18 = "%{public}s %{public}s%s<i%u> new incoming stream id %llu";
        }

        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, v18, buf, 0x30u);
LABEL_40:
        *(handle + 8) = v15;
        goto LABEL_41;
      }

LABEL_35:
      __nwlog_obj();
      *buf = 136446210;
      v89 = "nw_webtransport_stream_allocate_new_id";
      type = OS_LOG_TYPE_ERROR;
      v86 = 0;
      v19 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault(v19, &type, &v86))
      {
        goto LABEL_162;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        v89 = "nw_webtransport_stream_allocate_new_id";
        v22 = "%{public}s called with null webtransport_session";
      }

      else if (v86 == 1)
      {
        v75 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v76 = os_log_type_enabled(v20, type);
        if (v75)
        {
          if (v76)
          {
            *buf = 136446466;
            v89 = "nw_webtransport_stream_allocate_new_id";
            v90 = 2082;
            v91 = v75;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v75);
          goto LABEL_162;
        }

        if (!v76)
        {
LABEL_162:
          if (v19)
          {
            free(v19);
          }

LABEL_41:
          v23 = *(handle + 11);
          if (v23)
          {
            if (*(handle + 8) == -2)
            {
              if (*(v23 + 448))
              {
                if ((*(v23 + 580) & 2) != 0)
                {
                  goto LABEL_60;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v24 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_60;
                }

                v25 = *(v23 + 492);
                *buf = 136446978;
                v89 = "nw_webtransport_session_add_stream";
                v90 = 2082;
                v91 = (v23 + 496);
                v92 = 2080;
                v93 = " ";
                v94 = 1024;
                v95 = v25;
                v26 = "%{public}s %{public}s%s<i%u> WebTransport already has datagram stream registered";
                v27 = v24;
                v28 = OS_LOG_TYPE_ERROR;
                v29 = 38;
LABEL_56:
                _os_log_impl(&dword_181A37000, v27, v28, v26, buf, v29);
LABEL_60:
                v34 = handle[276];
                if (a1->default_input_handler)
                {
                  if ((handle[276] & 1) == 0)
                  {
                    v35 = *(handle + 8);
                    if (v35 == -1)
                    {
                      if ((handle[276] & 0x10) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v42 = gLogObj;
                        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                        {
                          v43 = *(handle + 11);
                          if (v43)
                          {
                            v44 = *(v43 + 492);
                          }

                          else
                          {
                            v44 = -1;
                          }

                          v55 = *(handle + 8);
                          *buf = 136447234;
                          v89 = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          v90 = 2082;
                          v91 = handle + 192;
                          v92 = 2080;
                          v93 = " ";
                          v94 = 1024;
                          v95 = v44;
                          v96 = 2048;
                          v97 = v55;
                          _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Not configuring webtransport stream metadata with no stream ID set", buf, 0x30u);
                          if ((handle[276] & 0x10) == 0)
                          {
LABEL_89:
                            if (gLogDatapath == 1)
                            {
                              v72 = __nwlog_obj();
                              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                              {
                                v73 = *(handle + 11);
                                if (v73)
                                {
                                  v74 = *(v73 + 492);
                                }

                                else
                                {
                                  v74 = -1;
                                }

                                v85 = *(handle + 8);
                                *buf = 136448002;
                                v89 = "nw_protocol_webtransport_http2_stream_connected";
                                v90 = 2082;
                                v91 = handle + 192;
                                v92 = 2080;
                                v93 = " ";
                                v94 = 1024;
                                v95 = v74;
                                v96 = 2048;
                                v97 = v85;
                                v98 = 2048;
                                *v99 = a1;
                                *&v99[8] = 2048;
                                v100 = v85;
                                v101 = 2048;
                                v102 = a2;
                                _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> webtransport http2 stream %p with id %llu connected with output_handler %p", buf, 0x4Eu);
                              }
                            }
                          }

LABEL_90:
                          nw_protocol_connected(a1->default_input_handler->flow_id, a1);
                          return;
                        }
                      }
                    }

                    else
                    {
                      handle[276] = v34 & 0xF0 | (4 * ((v35 & 2) != 0)) | 3;
                      if ((v34 & 0x10) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v36 = gLogObj;
                        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                        {
                          v37 = *(handle + 11);
                          if (v37)
                          {
                            v38 = *(v37 + 492);
                          }

                          else
                          {
                            v38 = -1;
                          }

                          v53 = *(handle + 8);
                          v54 = handle[276];
                          *buf = 136448002;
                          v89 = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          v90 = 2082;
                          v91 = handle + 192;
                          v92 = 2080;
                          v93 = " ";
                          v94 = 1024;
                          v95 = v38;
                          v96 = 2048;
                          v97 = v53;
                          v98 = 1024;
                          *v99 = (v54 >> 1) & 1;
                          *&v99[4] = 1024;
                          *&v99[6] = (v54 >> 3) & 1;
                          LOWORD(v100) = 1024;
                          *(&v100 + 2) = (v54 >> 2) & 1;
                          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                        }
                      }

                      nw_webtransport_metadata_set_is_peer_initiated(*(handle + 20), (handle[276] & 2) != 0);
                      nw_webtransport_metadata_set_is_datagram(*(handle + 20), (handle[276] & 8) != 0);
                      nw_webtransport_metadata_set_is_unidirectional(*(handle + 20), (handle[276] & 4) != 0);
                    }
                  }

                  if ((handle[276] & 0x10) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_90;
                }

                if ((handle[276] & 0x10) != 0)
                {
                  return;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v39 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                v40 = *(handle + 11);
                if (v40)
                {
                  v41 = *(v40 + 492);
                }

                else
                {
                  v41 = -1;
                }

                v48 = *(handle + 8);
                *buf = 136447234;
                v89 = "nw_protocol_webtransport_http2_stream_connected";
                v90 = 2082;
                v91 = handle + 192;
                v92 = 2080;
                v93 = " ";
                v94 = 1024;
                v95 = v41;
                v96 = 2048;
                v97 = v48;
                v49 = "%{public}s %{public}s%s<i%u:s%llu> No input handler found, ignoring connected call";
                v50 = v39;
                v51 = OS_LOG_TYPE_ERROR;
LABEL_81:
                _os_log_impl(&dword_181A37000, v50, v51, v49, buf, 0x30u);
                return;
              }

              *(v23 + 448) = handle;
            }

            else
            {
              internal = *(v23 + 192);
              if (!internal)
              {
                internal = nw_hash_table_create_internal(0x11u, 0, nw_webtransport_stream_get_key, nw_webtransport_stream_key_hash, nw_webtransport_stream_matches_key, 0, 0);
                if (internal)
                {
                  *(internal + 56) &= ~2u;
                }

                *(v23 + 192) = internal;
              }

              type = OS_LOG_TYPE_DEFAULT;
              nw_hash_table_add_object(internal, handle, &type);
              if ((type & 1) == 0)
              {
                if ((*(v23 + 580) & 2) != 0)
                {
                  goto LABEL_60;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v31 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_60;
                }

                v32 = *(v23 + 492);
                v33 = *(handle + 8);
                *buf = 136447234;
                v89 = "nw_webtransport_session_add_stream";
                v90 = 2082;
                v91 = (v23 + 496);
                v92 = 2080;
                v93 = " ";
                v94 = 1024;
                v95 = v32;
                v96 = 2048;
                v97 = v33;
                v26 = "%{public}s %{public}s%s<i%u> WebTransport already has stream id registered for %llu";
                v27 = v31;
                v28 = OS_LOG_TYPE_ERROR;
LABEL_55:
                v29 = 48;
                goto LABEL_56;
              }
            }

            if ((*(v23 + 580) & 2) != 0)
            {
              goto LABEL_60;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_60;
            }

            v80 = __nwlog_obj();
            if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_60;
            }

            v81 = *(v23 + 492);
            v82 = *(handle + 8);
            *buf = 136447234;
            v89 = "nw_webtransport_session_add_stream";
            v90 = 2082;
            v91 = (v23 + 496);
            v92 = 2080;
            v93 = " ";
            v94 = 1024;
            v95 = v81;
            v96 = 2048;
            v97 = v82;
            v26 = "%{public}s %{public}s%s<i%u> Added stream %llu to WebTransport streams";
            v27 = v80;
            v28 = OS_LOG_TYPE_DEBUG;
            goto LABEL_55;
          }

          __nwlog_obj();
          *buf = 136446210;
          v89 = "nw_webtransport_session_add_stream";
          v67 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v86 = 0;
          v68 = v67;
          if (__nwlog_fault(v67, &type, &v86))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v69 = __nwlog_obj();
              v70 = type;
              if (!os_log_type_enabled(v69, type))
              {
                goto LABEL_167;
              }

              *buf = 136446210;
              v89 = "nw_webtransport_session_add_stream";
              v71 = "%{public}s called with null webtransport_session";
              goto LABEL_166;
            }

            if (v86 != 1)
            {
              v69 = __nwlog_obj();
              v70 = type;
              if (!os_log_type_enabled(v69, type))
              {
                goto LABEL_167;
              }

              *buf = 136446210;
              v89 = "nw_webtransport_session_add_stream";
              v71 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
              goto LABEL_166;
            }

            v78 = __nw_create_backtrace_string();
            v69 = __nwlog_obj();
            v70 = type;
            v79 = os_log_type_enabled(v69, type);
            if (v78)
            {
              if (v79)
              {
                *buf = 136446466;
                v89 = "nw_webtransport_session_add_stream";
                v90 = 2082;
                v91 = v78;
                _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v78);
              goto LABEL_167;
            }

            if (v79)
            {
              *buf = 136446210;
              v89 = "nw_webtransport_session_add_stream";
              v71 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_166:
              _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0xCu);
            }
          }

LABEL_167:
          if (v68)
          {
            free(v68);
          }

          goto LABEL_60;
        }

        *buf = 136446210;
        v89 = "nw_webtransport_stream_allocate_new_id";
        v22 = "%{public}s called with null webtransport_session, no backtrace";
      }

      else
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        v89 = "nw_webtransport_stream_allocate_new_id";
        v22 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      goto LABEL_162;
    }

    if ((handle[276] & 2) != 0)
    {
      *(handle + 47) = 3;
      v13 = *(handle + 47);
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *(handle + 46) = 3;
      v13 = *(handle + 47);
      if (!v13)
      {
        goto LABEL_33;
      }
    }

LABEL_19:
    v14 = *(handle + 46);
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  __nwlog_obj();
  *buf = 136446210;
  v89 = "nw_protocol_webtransport_http2_stream_connected";
  v56 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v86 = 0;
  if (!__nwlog_fault(v56, &type, &v86))
  {
    goto LABEL_147;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v57 = __nwlog_obj();
    v58 = type;
    if (!os_log_type_enabled(v57, type))
    {
      goto LABEL_147;
    }

    *buf = 136446210;
    v89 = "nw_protocol_webtransport_http2_stream_connected";
    v59 = "%{public}s called with null webtransport_stream";
    goto LABEL_146;
  }

  if (v86 != 1)
  {
    v57 = __nwlog_obj();
    v58 = type;
    if (!os_log_type_enabled(v57, type))
    {
      goto LABEL_147;
    }

    *buf = 136446210;
    v89 = "nw_protocol_webtransport_http2_stream_connected";
    v59 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_146;
  }

  v65 = __nw_create_backtrace_string();
  v57 = __nwlog_obj();
  v58 = type;
  v66 = os_log_type_enabled(v57, type);
  if (!v65)
  {
    if (!v66)
    {
      goto LABEL_147;
    }

    *buf = 136446210;
    v89 = "nw_protocol_webtransport_http2_stream_connected";
    v59 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_146;
  }

  if (v66)
  {
    *buf = 136446466;
    v89 = "nw_protocol_webtransport_http2_stream_connected";
    v90 = 2082;
    v91 = v65;
    _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v65);
  if (v56)
  {
    goto LABEL_148;
  }
}

uint64_t nw_protocol_webtransport_http2_stream_connect(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = handle[11];
          if (v10)
          {
            v11 = *(v10 + 492);
          }

          else
          {
            v11 = -1;
          }

          v16 = handle[8];
          *buf = 136447234;
          v20 = "nw_protocol_webtransport_http2_stream_connect";
          v21 = 2082;
          v22 = (handle + 24);
          v23 = 2080;
          v24 = " ";
          v25 = 1024;
          v26 = v11;
          v27 = 2048;
          v28 = v16;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      nw_protocol_connected(a1->default_input_handler->flow_id, a1);
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http2_stream_connect";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http2_stream_connect";
        v8 = "%{public}s called with null webtransport_stream";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http2_stream_connect";
        v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v15 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http2_stream_connect";
        v8 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v15)
    {
      *buf = 136446466;
      v20 = "nw_protocol_webtransport_http2_stream_connect";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_http2_stream_connect";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v5, &type, &v17))
  {
    goto LABEL_39;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http2_stream_connect";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http2_stream_connect";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      *buf = 136446466;
      v20 = "nw_protocol_webtransport_http2_stream_connect";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v6, v7, v14, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_39;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http2_stream_connect";
    v8 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_39:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_http2_stream_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v202 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v140, type, v188))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null protocol";
      goto LABEL_279;
    }

    if (v188[0] != OS_LOG_TYPE_INFO)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v148 = os_log_type_enabled(v141, type[0]);
    if (!backtrace_string)
    {
      if (!v148)
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_279;
    }

    if (!v148)
    {
      goto LABEL_253;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v149 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_252:
    _os_log_impl(&dword_181A37000, v141, v142, v149, buf, 0x16u);
    goto LABEL_253;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v140, type, v188))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null webtransport_stream";
      goto LABEL_279;
    }

    if (v188[0] != OS_LOG_TYPE_INFO)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v150 = os_log_type_enabled(v141, type[0]);
    if (!backtrace_string)
    {
      if (!v150)
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_279;
    }

    if (!v150)
    {
      goto LABEL_253;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v149 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_252;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v140 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v140, type, v188))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null input_protocol";
      goto LABEL_279;
    }

    if (v188[0] != OS_LOG_TYPE_INFO)
    {
      v141 = __nwlog_obj();
      v142 = type[0];
      if (!os_log_type_enabled(v141, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v143 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = type[0];
    v151 = os_log_type_enabled(v141, type[0]);
    if (backtrace_string)
    {
      if (v151)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v149 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_252;
      }

LABEL_253:
      free(backtrace_string);
      goto LABEL_280;
    }

    if (!v151)
    {
      goto LABEL_280;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v143 = "%{public}s called with null input_protocol, no backtrace";
LABEL_279:
    _os_log_impl(&dword_181A37000, v141, v142, v143, buf, 0xCu);
LABEL_280:
    if (v140)
    {
      free(v140);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v144 = __nwlog_obj();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
    {
      v145 = handle[11];
      if (v145)
      {
        v146 = *(v145 + 492);
      }

      else
      {
        v146 = -1;
      }

      v156 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v146;
      *&v197[6] = 2048;
      *&v197[8] = v156;
      _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  v5 = &qword_1ED411000;
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = handle[11];
      if (v7)
      {
        v8 = *(v7 + 492);
      }

      else
      {
        v8 = -1;
      }

      v9 = handle[8];
      default_input_handler = a1->default_input_handler;
      *buf = 136448002;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v8;
      *&v197[6] = 2048;
      *&v197[8] = v9;
      *&v197[16] = 2048;
      *&v197[18] = a1;
      v198 = 2048;
      v199 = default_input_handler;
      v200 = 2048;
      v201 = a2;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:s%llu> protocol %p, default_input_handler %p, input protocol %p", buf, 0x4Eu);
    }
  }

  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  nw_protocol_set_output_handler(a1, 0);
  v176 = handle[11];
  if (!v176)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    v152 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v152, type, v188))
    {
      goto LABEL_294;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v153 = __nwlog_obj();
      v154 = type[0];
      if (!os_log_type_enabled(v153, type[0]))
      {
        goto LABEL_294;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v155 = "%{public}s called with null webtransport_session";
    }

    else if (v188[0] == OS_LOG_TYPE_INFO)
    {
      v157 = __nw_create_backtrace_string();
      v153 = __nwlog_obj();
      v154 = type[0];
      v158 = os_log_type_enabled(v153, type[0]);
      if (v157)
      {
        if (v158)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v157;
          _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v157);
        goto LABEL_294;
      }

      if (!v158)
      {
LABEL_294:
        if (v152)
        {
          free(v152);
        }

        goto LABEL_85;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v155 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v153 = __nwlog_obj();
      v154 = type[0];
      if (!os_log_type_enabled(v153, type[0]))
      {
        goto LABEL_294;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v155 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v153, v154, v155, buf, 0xCu);
    goto LABEL_294;
  }

  if ((*(handle + 276) & 0x20) != 0)
  {
    if ((*(v176 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v159 = __nwlog_obj();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        v160 = *(v176 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v160;
        *&v197[6] = 2048;
        *&v197[8] = handle;
        _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
      }
    }

    if ((*(handle + 276) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_session_remove_pending_stream";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      v16 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v188[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v16, type, v188))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            v19 = "%{public}s stream %p not in pending list, cannot remove";
LABEL_57:
            v38 = v17;
            v39 = v18;
LABEL_58:
            _os_log_impl(&dword_181A37000, v38, v39, v19, buf, 0x16u);
          }
        }

        else if (v188[0] == OS_LOG_TYPE_INFO)
        {
          v30 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type[0];
          v33 = os_log_type_enabled(gLogObj, type[0]);
          if (v30)
          {
            if (v33)
            {
              *buf = 136446722;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = handle;
              *&buf[22] = 2082;
              v196 = v30;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v30);
            goto LABEL_59;
          }

          if (v33)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            v19 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
            v38 = v31;
            v39 = v32;
            goto LABEL_58;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            v19 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
            goto LABEL_57;
          }
        }
      }

LABEL_59:
      if (v16)
      {
        free(v16);
      }

      v5 = &qword_1ED411000;
      goto LABEL_78;
    }

    v20 = handle[14];
    v21 = handle[15];
    v22 = (v176 + 344);
    if (v20)
    {
      v22 = (v20 + 120);
    }

    *v22 = v21;
    *v21 = v20;
    handle[14] = 0;
    handle[15] = 0;
    v23 = *(v176 + 488);
    *(v176 + 488) = v23 - 1;
    if (v23)
    {
LABEL_76:
      v48 = *(handle + 276);
      *(handle + 276) = v48 & 0xDF;
      if ((v48 & 0x10) == 0 && gLogDatapath == 1)
      {
        v161 = __nwlog_obj();
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
        {
          v162 = handle[11];
          if (v162)
          {
            v163 = *(v162 + 492);
          }

          else
          {
            v163 = -1;
          }

          v168 = handle[8];
          v169 = *(v176 + 488);
          *buf = 136447746;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v163;
          *&v197[6] = 2048;
          *&v197[8] = v168;
          *&v197[16] = 2048;
          *&v197[18] = handle;
          v198 = 1024;
          LODWORD(v199) = v169;
          v15 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
          v35 = v161;
          v36 = OS_LOG_TYPE_DEBUG;
          v37 = 64;
          goto LABEL_54;
        }
      }

      goto LABEL_78;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = *(v176 + 488);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "webtransport_session->pending_stream_count";
    *&buf[22] = 2048;
    v196 = 1;
    *v197 = 2048;
    *&v197[2] = v24;
    v25 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v25, type, v188))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type[0];
        if (os_log_type_enabled(v26, type[0]))
        {
          v28 = *(v176 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v196 = 1;
          *v197 = 2048;
          *&v197[2] = v28;
          v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_71:
          v46 = v26;
          v47 = v27;
LABEL_72:
          _os_log_impl(&dword_181A37000, v46, v47, v29, buf, 0x2Au);
        }
      }

      else if (v188[0] == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type[0];
        v43 = os_log_type_enabled(v41, type[0]);
        if (v40)
        {
          if (v43)
          {
            v44 = *(v176 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "webtransport_session->pending_stream_count";
            *&buf[22] = 2048;
            v196 = 1;
            *v197 = 2048;
            *&v197[2] = v44;
            *&v197[10] = 2082;
            *&v197[12] = v40;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v40);
          goto LABEL_73;
        }

        if (v43)
        {
          v138 = *(v176 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v196 = 1;
          *v197 = 2048;
          *&v197[2] = v138;
          v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v46 = v41;
          v47 = v42;
          goto LABEL_72;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type[0];
        if (os_log_type_enabled(v26, type[0]))
        {
          v45 = *(v176 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v196 = 1;
          *v197 = 2048;
          *&v197[2] = v45;
          v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_73:
    if (v25)
    {
      free(v25);
    }

    *(v176 + 488) = 0;
    v5 = &qword_1ED411000;
    goto LABEL_76;
  }

  if (*(v176 + 440) == handle)
  {
    if ((*(v176 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v164 = __nwlog_obj();
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
      {
        v165 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v165;
        _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
      }
    }

    *(v176 + 440) = 0;
  }

  else if (*(v176 + 448) == handle)
  {
    if ((*(v176 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v166 = __nwlog_obj();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
      {
        v167 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v167;
        _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
      }
    }

    *(v176 + 448) = 0;
  }

  else
  {
    *type = handle[8];
    node = nw_hash_table_get_node(*(v176 + 192), type, 8);
    if (node)
    {
      if ((nw_hash_table_remove_node(*(v176 + 192), node) & 1) == 0 && (*(v176 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v14 = *(v176 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v176 + 496;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v14;
          *&v197[6] = 2048;
          *&v197[8] = *type;
          v15 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
LABEL_53:
          v35 = v13;
          v36 = OS_LOG_TYPE_ERROR;
          v37 = 48;
LABEL_54:
          _os_log_impl(&dword_181A37000, v35, v36, v15, buf, v37);
        }
      }
    }

    else if ((*(v176 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v176 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v34;
        *&v197[6] = 2048;
        *&v197[8] = *type;
        v15 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
        goto LABEL_53;
      }
    }
  }

LABEL_78:
  handle[11] = 0;
  v49 = v176;
  if (*(v176 + 48) != handle)
  {
    goto LABEL_85;
  }

  if (*(v176 + 476))
  {
    v50 = *(v176 + 448);
    if (v50)
    {
LABEL_81:
      nw_protocol_set_input_handler(v49, v50);
      if ((*(v49 + 580) & 2) != 0)
      {
        goto LABEL_85;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = v5[275];
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      v52 = *(v49 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v49 + 496;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v52;
      v53 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
      goto LABEL_84;
    }
  }

  else
  {
    if ((*(v176 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v61 = v5[275];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v62;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
      }
    }

    v49 = v176;
    v63 = *(v176 + 464);
    v64 = *(v176 + 416);
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 0x40000000;
    v177[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
    v177[3] = &unk_1E6A31A10;
    v177[4] = v63;
    nw_queue_context_async(v64, v177);
    v50 = *(v176 + 448);
    if (v50)
    {
      goto LABEL_81;
    }
  }

  v65 = *(v49 + 192);
  if (v65 && v65[12]._os_unfair_lock_opaque)
  {
    some_node = nw_hash_table_get_some_node(v65);
    object = nw_hash_node_get_object(some_node);
    nw_protocol_set_input_handler(v176, object);
    if ((*(v176 + 580) & 2) != 0)
    {
      goto LABEL_85;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v51 = v5[275];
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    v68 = *(v176 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    *&buf[12] = 2082;
    *&buf[14] = v176 + 496;
    *&buf[22] = 2080;
    v196 = " ";
    *v197 = 1024;
    *&v197[2] = v68;
    v53 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
    goto LABEL_84;
  }

  if (!*(v176 + 488))
  {
    v79 = *(v176 + 440);
    if (v79)
    {
      nw_protocol_set_input_handler(v176, v79);
      if ((*(v176 + 580) & 2) != 0)
      {
        goto LABEL_85;
      }

      v51 = __nwlog_obj();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      v80 = *(v176 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v176 + 496;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v80;
      v53 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
      goto LABEL_84;
    }

    nw_protocol_set_input_handler(v176, 0);
    if ((*(v176 + 580) & 2) == 0)
    {
      v81 = __nwlog_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v82 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v82;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
      }
    }

    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v176 + 368, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v176 + 384, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v176 + 400, buf);
    nw_http_capsule_framer_cleanup((v176 + 96));
    v83 = *(v176 + 424);
    if (v83)
    {
      (*(*v83 + 8))(v83, v176, 0);
    }

    if ((*(v176 + 580) & 4) != 0)
    {
      if ((nw_protocol_remove_listen_handler(*(v176 + 432), v176 + 64) & 1) == 0 && (*(v176 + 580) & 2) == 0)
      {
        v84 = __nwlog_obj();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = *(v176 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v176 + 496;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v85;
          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
        }
      }

      *(v176 + 432) = 0;
    }

    v86 = *(v176 + 32);
    if (v86)
    {
      nw_protocol_remove_input_handler(v86, v176);
      if (*(v176 + 476) != 5)
      {
        nw_protocol_remove_instance(v176);
      }
    }

    v184 = 0;
    v185 = &v184;
    v186 = 0x2000000000;
    v187 = 0;
    v87 = *(v176 + 192);
    if (v87)
    {
      *type = MEMORY[0x1E69E9820];
      v179 = 0x40000000;
      v180 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
      v181 = &unk_1E6A31A38;
      v182 = &v184;
      v183 = v176;
      nw_hash_table_apply(v87, type);
      v89 = *(v176 + 192);
      if (v89)
      {
        _nw_hash_table_release(v89, v88);
        *(v176 + 192) = 0;
      }
    }

    v90 = *(v176 + 336);
    v185[3] = v90;
    if (!v90)
    {
      (*(*(v176 + 464) + 16))(*(v176 + 464), 0);
      v139 = *(v176 + 464);
      if (v139)
      {
        _Block_release(v139);
        *(v176 + 464) = 0;
      }

      std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(v176);
      free(v176);
      _Block_object_dispose(&v184, 8);
      goto LABEL_85;
    }

    for (i = v176; ; i = v176)
    {
      v90 = *(v90 + 112);
      if ((*(i + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v92 = v5[275];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v93 = *(i + 492);
          v94 = v185[3];
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v176 + 496;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v93;
          *&v197[6] = 2048;
          *&v197[8] = v94;
          _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy";
      v95 = _os_log_send_and_compose_impl();
      v188[0] = OS_LOG_TYPE_ERROR;
      v194 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v95, v188, &v194))
      {
        if (v188[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v96 = gLogObj;
          v97 = v188[0];
          if (!os_log_type_enabled(gLogObj, v188[0]))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v98 = v96;
          v99 = v97;
          v100 = "%{public}s should not have streams left when destroying";
LABEL_170:
          _os_log_impl(&dword_181A37000, v98, v99, v100, buf, 0xCu);
          goto LABEL_171;
        }

        if (v194 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v105 = gLogObj;
          v106 = v188[0];
          if (!os_log_type_enabled(gLogObj, v188[0]))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v98 = v105;
          v99 = v106;
          v100 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
          goto LABEL_170;
        }

        v101 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v102 = gLogObj;
        v103 = v188[0];
        v104 = os_log_type_enabled(gLogObj, v188[0]);
        if (!v101)
        {
          if (!v104)
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v98 = v102;
          v99 = v103;
          v100 = "%{public}s should not have streams left when destroying, no backtrace";
          goto LABEL_170;
        }

        if (v104)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v101;
          _os_log_impl(&dword_181A37000, v102, v103, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v101);
      }

LABEL_171:
      if (v95)
      {
        free(v95);
      }

      v107 = *(v90 + 112);
      v108 = *(v90 + 120);
      v109 = (v107 + 120);
      if (!v107)
      {
        v109 = (v176 + 344);
      }

      *v109 = v108;
      *v108 = v107;
      *(v90 + 112) = 0;
      *(v90 + 120) = 0;
      v110 = v185[3];
      v5 = &qword_1ED411000;
      if (v110)
      {
        if ((*(v110 + 276) & 0x10) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v111 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v112 = *(v110 + 88);
            if (v112)
            {
              v113 = *(v112 + 492);
            }

            else
            {
              v113 = -1;
            }

            v114 = *(v110 + 64);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_stream_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v110 + 192;
            *&buf[22] = 2080;
            v196 = " ";
            *v197 = 1024;
            *&v197[2] = v113;
            *&v197[6] = 2048;
            *&v197[8] = v114;
            *&v197[16] = 2048;
            *&v197[18] = v110;
            _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
          }
        }

        if (*(v110 + 72))
        {
          if ((*(v110 + 276) & 0x10) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v115 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v116 = *(v110 + 88);
              if (v116)
              {
                v117 = *(v116 + 492);
              }

              else
              {
                v117 = -1;
              }

              v118 = *(v110 + 64);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v110 + 192;
              *&buf[22] = 2080;
              v196 = " ";
              *v197 = 1024;
              *&v197[2] = v117;
              *&v197[6] = 2048;
              *&v197[8] = v118;
              _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
            }
          }
        }

        *v188 = MEMORY[0x1E69E9820];
        v189 = 0x40000000;
        v190 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
        v191 = &__block_descriptor_tmp_39_36819;
        v192 = v110;
        v119 = *(v110 + 72);
        do
        {
          if (!v119)
          {
            break;
          }

          v120 = *(v119 + 32);
          v121 = (v190)(v188);
          v119 = v120;
        }

        while ((v121 & 1) != 0);
        (*(*(v110 + 176) + 16))(*(v110 + 176), 0);
        v122 = *(v110 + 176);
        if (v122)
        {
          _Block_release(v122);
          *(v110 + 176) = 0;
        }

        if (*(v110 + 168))
        {
          v123 = *(v110 + 160);
          if (v123)
          {
            os_release(v123);
          }
        }

        *(v110 + 160) = 0;
        if (*(v110 + 152))
        {
          v124 = *(v110 + 144);
          if (v124)
          {
            os_release(v124);
          }
        }

        *(v110 + 144) = 0;
        if (*(v110 + 136))
        {
          v125 = *(v110 + 128);
          if (v125)
          {
            os_release(v125);
          }
        }

        free(v110);
        goto LABEL_153;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_stream_destroy";
      v126 = _os_log_send_and_compose_impl();
      v194 = OS_LOG_TYPE_ERROR;
      v193 = 0;
      if (__nwlog_fault(v126, &v194, &v193))
      {
        if (v194 == OS_LOG_TYPE_FAULT)
        {
          v127 = __nwlog_obj();
          v128 = v194;
          if (os_log_type_enabled(v127, v194))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v129 = v127;
            v130 = v128;
            v131 = "%{public}s called with null webtransport_stream";
LABEL_216:
            _os_log_impl(&dword_181A37000, v129, v130, v131, buf, 0xCu);
          }
        }

        else if (v193 == 1)
        {
          v132 = __nw_create_backtrace_string();
          v133 = __nwlog_obj();
          v134 = v194;
          v135 = os_log_type_enabled(v133, v194);
          if (v132)
          {
            if (v135)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v132;
              _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v132);
            goto LABEL_217;
          }

          if (v135)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v129 = v133;
            v130 = v134;
            v131 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_216;
          }
        }

        else
        {
          v136 = __nwlog_obj();
          v137 = v194;
          if (os_log_type_enabled(v136, v194))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v129 = v136;
            v130 = v137;
            v131 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_216;
          }
        }
      }

LABEL_217:
      if (v126)
      {
        free(v126);
      }

      v5 = &qword_1ED411000;
LABEL_153:
      v185[3] = v90;
    }
  }

  v77 = *(v176 + 336);
  if (v77)
  {
    if ((*(v77 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v170 = *(v176 + 336);
      v171 = __nwlog_obj();
      v172 = os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG);
      v77 = v170;
      if (v172)
      {
        v173 = *(v170 + 88);
        if (v173)
        {
          v174 = *(v173 + 492);
        }

        else
        {
          v174 = -1;
        }

        v175 = *(v170 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v170 + 192;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v174;
        *&v197[6] = 2048;
        *&v197[8] = v175;
        *&v197[16] = 2048;
        *&v197[18] = v170;
        _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
        v77 = v170;
      }
    }
  }

  nw_protocol_set_input_handler(v176, v77);
  if ((*(v176 + 580) & 2) != 0)
  {
    goto LABEL_85;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v51 = v5[275];
  if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    goto LABEL_85;
  }

  v78 = *(v176 + 492);
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_session_remove_stream";
  *&buf[12] = 2082;
  *&buf[14] = v176 + 496;
  *&buf[22] = 2080;
  v196 = " ";
  *v197 = 1024;
  *&v197[2] = v78;
  v53 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_84:
  _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_INFO, v53, buf, 0x26u);
LABEL_85:
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = v5[275];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = handle[11];
      if (v55)
      {
        v56 = *(v55 + 492);
      }

      else
      {
        v56 = -1;
      }

      v57 = handle[8];
      *buf = 136447490;
      *&buf[4] = "nw_webtransport_stream_destroy";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v56;
      *&v197[6] = 2048;
      *&v197[8] = v57;
      *&v197[16] = 2048;
      *&v197[18] = handle;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
    }
  }

  if (handle[9])
  {
    if ((*(handle + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v58 = v5[275];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = handle[11];
        if (v59)
        {
          v60 = *(v59 + 492);
        }

        else
        {
          v60 = -1;
        }

        v69 = handle[8];
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = handle + 24;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v60;
        *&v197[6] = 2048;
        *&v197[8] = v69;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
      }
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
  v196 = &__block_descriptor_tmp_39_36819;
  *v197 = handle;
  v70 = handle[9];
  do
  {
    if (!v70)
    {
      break;
    }

    v71 = *(v70 + 32);
    v72 = (*&buf[16])(buf);
    v70 = v71;
  }

  while ((v72 & 1) != 0);
  (*(handle[22] + 16))(handle[22], 0);
  v73 = handle[22];
  if (v73)
  {
    _Block_release(v73);
    handle[22] = 0;
  }

  if (handle[21])
  {
    v74 = handle[20];
    if (v74)
    {
      os_release(v74);
    }
  }

  handle[20] = 0;
  if (handle[19])
  {
    v75 = handle[18];
    if (v75)
    {
      os_release(v75);
    }
  }

  handle[18] = 0;
  if (handle[17])
  {
    v76 = handle[16];
    if (v76)
    {
      os_release(v76);
    }
  }

  free(handle);
  return 1;
}

uint64_t nw_protocol_webtransport_session_listen_protocol_new_flow(nw_listen_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v264 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    v24 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block) = 16;
    LOBYTE(v238) = 0;
    if (!__nwlog_fault(v24, &iterate_block, &v238))
    {
      goto LABEL_46;
    }

    if (iterate_block == 17)
    {
      v25 = __nwlog_obj();
      v26 = iterate_block;
      if (!os_log_type_enabled(v25, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s called with null listener";
    }

    else if (v238 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = iterate_block;
      v88 = os_log_type_enabled(v25, iterate_block);
      if (backtrace_string)
      {
        if (v88)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_46;
      }

      if (!v88)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = iterate_block;
      if (!os_log_type_enabled(v25, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    goto LABEL_44;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    v24 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block) = 16;
    LOBYTE(v238) = 0;
    if (!__nwlog_fault(v24, &iterate_block, &v238))
    {
      goto LABEL_46;
    }

    if (iterate_block == 17)
    {
      v25 = __nwlog_obj();
      v26 = iterate_block;
      if (!os_log_type_enabled(v25, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s called with null webtransport_session";
    }

    else if (v238 == 1)
    {
      v89 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = iterate_block;
      v90 = os_log_type_enabled(v25, iterate_block);
      if (v89)
      {
        if (!v90)
        {
          goto LABEL_135;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v89;
        v91 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
        goto LABEL_134;
      }

      if (!v90)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = iterate_block;
      if (!os_log_type_enabled(v25, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

LABEL_44:
    v38 = v25;
    v39 = v26;
LABEL_45:
    _os_log_impl(&dword_181A37000, v38, v39, v27, buf, 0xCu);
    goto LABEL_46;
  }

  v4 = *(handle + 53);
  LOBYTE(v5) = handle[580];
  if ((v5 & 2) == 0)
  {
    LOBYTE(v5) = gLogDatapath;
    if (gLogDatapath == 1)
    {
      v80 = a1;
      v81 = a3;
      v82 = a2;
      v83 = __nwlog_obj();
      v84 = os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG);
      a2 = v82;
      a3 = v81;
      v5 = v84;
      a1 = v80;
      if (v5)
      {
        v85 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v258 = " ";
        *v259 = 1024;
        *&v259[2] = v85;
        *&v259[6] = 2112;
        *&v259[8] = v82;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> creating new inbound flow from %@", buf, 0x30u);
        a2 = v82;
        a3 = v81;
        a1 = v80;
      }
    }
  }

  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    v24 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block) = 16;
    LOBYTE(v238) = 0;
    if (!__nwlog_fault(v24, &iterate_block, &v238))
    {
      goto LABEL_46;
    }

    if (iterate_block == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = iterate_block;
      if (!os_log_type_enabled(gLogObj, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s No listener found for webtransport inbound stream";
      goto LABEL_44;
    }

    if (v238 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = iterate_block;
      if (!os_log_type_enabled(gLogObj, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s No listener found for webtransport inbound stream, backtrace limit exceeded";
      goto LABEL_44;
    }

    v28 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v30 = iterate_block;
    v31 = os_log_type_enabled(gLogObj, iterate_block);
    if (v28)
    {
      if (v31)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v28;
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s No listener found for webtransport inbound stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v28);
      if (!v24)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v31)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v27 = "%{public}s No listener found for webtransport inbound stream, no backtrace";
      v38 = v29;
      v39 = v30;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v6 = *(handle + 120);
  if (!v6)
  {
    if ((handle[580] & 2) != 0)
    {
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v35 = *(handle + 123);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = handle + 496;
    *&buf[22] = 2080;
    v258 = " ";
    *v259 = 1024;
    *&v259[2] = v35;
    v34 = "%{public}s %{public}s%s<i%u> Inbound flows should be created by incoming capsules on H2 CONNECT stream";
    goto LABEL_40;
  }

  if (v6 == 2)
  {
    if ((handle[580] & 2) != 0)
    {
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v33 = *(handle + 123);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = handle + 496;
    *&buf[22] = 2080;
    v258 = " ";
    *v259 = 1024;
    *&v259[2] = v33;
    v34 = "%{public}s %{public}s%s<i%u> Cannot create new inbound flow with unknown transport mode";
    goto LABEL_40;
  }

  if (v6 != 1)
  {
    return v5 & 1;
  }

  if (*(handle + 119) != 2)
  {
    v41 = a2;
    v42 = a3;
    handle[580] |= 0x20u;
    v43 = *(v4 + 8);
    if (v43)
    {
      v238 = 0;
      v239 = &v238;
      v240 = 0x2000000000;
      v241 = -1;
      v44 = nw_protocol_copy_info(v43);
      v45 = v44;
      if (v44)
      {
        iterate_block = MEMORY[0x1E69E9820];
        v247 = 0x40000000;
        v248 = ___ZL48nw_webtransport_session_get_underlying_stream_idP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
        v249 = &unk_1E6A31968;
        v250 = &v238;
        _nw_array_apply(v44, &iterate_block);
      }

      if ((handle[580] & 2) == 0 && gLogDatapath == 1)
      {
        v136 = __nwlog_obj();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
        {
          v137 = *(handle + 123);
          v138 = *(v239 + 24);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v258 = " ";
          *v259 = 1024;
          *&v259[2] = v137;
          *&v259[6] = 2048;
          *&v259[8] = v138;
          _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got underlying stream ID: %llu", buf, 0x30u);
        }
      }

      if (v45)
      {
        os_release(v45);
      }

      v46 = *(v239 + 24);
      _Block_object_dispose(&v238, 8);
LABEL_58:
      *(handle + 22) = v46;
      LOBYTE(v5) = (**v4)(v4, v41, v42);
      handle[580] &= ~0x20u;
      *(handle + 22) = -1;
      return v5 & 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
    v132 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block) = 16;
    LOBYTE(v238) = 0;
    if (__nwlog_fault(v132, &iterate_block, &v238))
    {
      if (iterate_block == 17)
      {
        v133 = __nwlog_obj();
        v134 = iterate_block;
        if (os_log_type_enabled(v133, iterate_block))
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          v135 = "%{public}s called with null output_protocol";
LABEL_278:
          _os_log_impl(&dword_181A37000, v133, v134, v135, buf, 0xCu);
        }
      }

      else if (v238 == 1)
      {
        v147 = __nw_create_backtrace_string();
        v133 = __nwlog_obj();
        v134 = iterate_block;
        v148 = os_log_type_enabled(v133, iterate_block);
        if (v147)
        {
          if (v148)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
            *&buf[12] = 2082;
            *&buf[14] = v147;
            _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null output_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v147);
          goto LABEL_279;
        }

        if (v148)
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          v135 = "%{public}s called with null output_protocol, no backtrace";
          goto LABEL_278;
        }
      }

      else
      {
        v133 = __nwlog_obj();
        v134 = iterate_block;
        if (os_log_type_enabled(v133, iterate_block))
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          v135 = "%{public}s called with null output_protocol, backtrace limit exceeded";
          goto LABEL_278;
        }
      }
    }

LABEL_279:
    if (v132)
    {
      free(v132);
    }

    v46 = -1;
    goto LABEL_58;
  }

  if ((handle[580] & 0x40) == 0)
  {
    goto LABEL_74;
  }

  v7 = a1;
  protocol_handler = a1->protocol_handler;
  parameters = nw_protocol_get_parameters(handle);
  if (!parameters)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
    v139 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block) = 16;
    LOBYTE(v238) = 0;
    if (!__nwlog_fault(v139, &iterate_block, &v238))
    {
      goto LABEL_285;
    }

    if (iterate_block == 17)
    {
      v140 = __nwlog_obj();
      v141 = iterate_block;
      if (!os_log_type_enabled(v140, iterate_block))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
      v142 = "%{public}s called with null parameters";
    }

    else if (v238 == 1)
    {
      v151 = __nw_create_backtrace_string();
      v140 = __nwlog_obj();
      v141 = iterate_block;
      v152 = os_log_type_enabled(v140, iterate_block);
      if (v151)
      {
        if (v152)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
          *&buf[12] = 2082;
          *&buf[14] = v151;
          _os_log_impl(&dword_181A37000, v140, v141, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v151);
        goto LABEL_285;
      }

      if (!v152)
      {
LABEL_285:
        if (v139)
        {
          free(v139);
        }

        goto LABEL_73;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
      v142 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v140 = __nwlog_obj();
      v141 = iterate_block;
      if (!os_log_type_enabled(v140, iterate_block))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
      v142 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v140, v141, v142, buf, 0xCu);
    goto LABEL_285;
  }

  v10 = parameters;
  nw_parameters_log_protocol_instances(parameters);
  v11 = _nw_parameters_copy_default_protocol_stack(v10);
  v238 = 0;
  v239 = &v238;
  v240 = 0x2000000000;
  LOBYTE(v241) = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v258 = __Block_byref_object_copy__59;
  *v259 = __Block_byref_object_dispose__60;
  *&v259[8] = 0;
  v259[16] |= 1u;
  iterate_block = MEMORY[0x1E69E9820];
  v247 = 0x40000000;
  v248 = ___ZL48nw_webtransport_session_setup_for_http_messagingP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
  v249 = &unk_1E6A31BF8;
  v250 = &v238;
  v251 = buf;
  v252 = handle;
  nw_protocol_stack_iterate_application_protocols(v11, &iterate_block);
  v12 = *(*&buf[8] + 40);
  if (!v12)
  {
    __nwlog_obj();
    *v253 = 136446210;
    *&v253[4] = "nw_webtransport_session_setup_for_http_messaging";
    v143 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v231[0]) = 0;
    if (!__nwlog_fault(v143, type, v231))
    {
      goto LABEL_290;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v144 = __nwlog_obj();
      v145 = type[0];
      if (!os_log_type_enabled(v144, type[0]))
      {
        goto LABEL_290;
      }

      *v253 = 136446210;
      *&v253[4] = "nw_webtransport_session_setup_for_http_messaging";
      v146 = "%{public}s called with null options";
    }

    else if (LOBYTE(v231[0]) == 1)
    {
      v153 = __nw_create_backtrace_string();
      v144 = __nwlog_obj();
      v145 = type[0];
      v154 = os_log_type_enabled(v144, type[0]);
      if (v153)
      {
        if (v154)
        {
          *v253 = 136446466;
          *&v253[4] = "nw_webtransport_session_setup_for_http_messaging";
          *&v253[12] = 2082;
          *&v253[14] = v153;
          _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null options, dumping backtrace:%{public}s", v253, 0x16u);
        }

        free(v153);
        goto LABEL_290;
      }

      if (!v154)
      {
LABEL_290:
        if (v143)
        {
          free(v143);
        }

        goto LABEL_68;
      }

      *v253 = 136446210;
      *&v253[4] = "nw_webtransport_session_setup_for_http_messaging";
      v146 = "%{public}s called with null options, no backtrace";
    }

    else
    {
      v144 = __nwlog_obj();
      v145 = type[0];
      if (!os_log_type_enabled(v144, type[0]))
      {
        goto LABEL_290;
      }

      *v253 = 136446210;
      *&v253[4] = "nw_webtransport_session_setup_for_http_messaging";
      v146 = "%{public}s called with null options, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v144, v145, v146, v253, 0xCu);
    goto LABEL_290;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v13 = nw_protocol_copy_http_messaging_definition_definition;
  v14 = v12;
  _nw_protocol_options_set_instance(v14, protocol_handler);

  if (v13)
  {
    os_release(v13);
  }

  v15 = nw_protocol_get_parameters(protocol_handler);
  if (!v15)
  {
    goto LABEL_67;
  }

  v16 = _nw_parameters_copy_default_protocol_stack(v15);
  v17 = _nw_parameters_copy_default_protocol_stack(v10);
  v18 = nw_protocol_stack_copy_transport_protocol(v16);
  v19 = nw_protocol_stack_copy_transport_protocol(v17);
  v20 = v19;
  if (v18)
  {
    if (v19)
    {
      v21 = _nw_protocol_options_copy_definition(v18);
      if (nw_protocol_options_matches_definition(v20, v21))
      {
        protocol_handle = _nw_protocol_options_get_protocol_handle(v18);
        nw_parameters_set_protocol_instance(v20, v23, protocol_handle);
      }

      os_release(v20);
    }

    v20 = v18;
    goto LABEL_62;
  }

  if (v19)
  {
LABEL_62:
    os_release(v20);
  }

  if (v17)
  {
    os_release(v17);
  }

  if (v16)
  {
    os_release(v16);
  }

LABEL_67:
  nw_protocol_set_output_handler(handle, 0);
LABEL_68:
  _Block_object_dispose(buf, 8);
  if ((v259[16] & 1) != 0 && *&v259[8])
  {
    os_release(*&v259[8]);
  }

  _Block_object_dispose(&v238, 8);
  if (v11)
  {
    os_release(v11);
  }

LABEL_73:
  a1 = v7;
LABEL_74:
  nw_protocol_add_input_handler(a1->protocol_handler->flow_id, handle);
  if (!*(handle + 4))
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v53 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v258 = " ";
        *v259 = 1024;
        *&v259[2] = v53;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to get output handler for HTTP/3 CONNECT stream, failing", buf, 0x26u);
      }
    }

    if (*(handle + 119) == 5)
    {
      if ((handle[580] & 2) != 0)
      {
        goto LABEL_48;
      }

      v54 = __nwlog_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v55 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v258 = " ";
      *v259 = 1024;
      *&v259[2] = v55;
      v34 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
      v36 = v54;
      v37 = OS_LOG_TYPE_INFO;
      goto LABEL_41;
    }

    if ((handle[580] & 2) == 0)
    {
      v56 = __nwlog_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v258 = " ";
        *v259 = 1024;
        *&v259[2] = v57;
        *&v259[6] = 1024;
        *&v259[8] = 57;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
      }
    }

    v58 = *(handle + 119);
    *(handle + 119) = 5;
    v59 = *(handle + 24);
    if (v59)
    {
      v231[0] = MEMORY[0x1E69E9820];
      v231[1] = 0x40000000;
      v231[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
      v231[3] = &__block_descriptor_tmp_24_36439;
      v232 = 57;
      nw_hash_table_apply(v59, v231);
    }

    v60 = *(handle + 56);
    if (v60)
    {
      v61 = *(v60 + 88);
      nw_protocol_error(*(v60 + 48), *(handle + 56));
      nw_protocol_disconnect(v60, v61);
    }

    v62 = *(handle + 42);
    if (v62)
    {
      do
      {
        v63 = *(v62 + 112);
        v64 = *(v62 + 88);
        nw_protocol_error(*(v62 + 48), v62);
        nw_protocol_disconnect(v62, v64);
        v62 = v63;
      }

      while (v63);
    }

    v65 = *(handle + 55);
    if (v65)
    {
      v66 = *(v65 + 88);
      nw_protocol_error(*(v65 + 48), *(handle + 55));
      nw_protocol_disconnect(v65, v66);
    }

    if (*(handle + 4))
    {
      nw_protocol_remove_instance(handle);
      nw_protocol_disconnect(*(handle + 4), handle);
    }

    v67 = *(handle + 50);
    if (!v67)
    {
      goto LABEL_48;
    }

    webtransport_state = nw_http_connection_metadata_get_webtransport_state(v67);
    if (!webtransport_state)
    {
      goto LABEL_48;
    }

    v69 = webtransport_state;
    if (v58 != 4 && v58 != 1)
    {
      goto LABEL_48;
    }

    v70 = *(webtransport_state + 16);
    *(webtransport_state + 16) = v70 - 1;
    if (v70)
    {
LABEL_143:
      if (handle[580])
      {
        goto LABEL_48;
      }

      v93 = *v69;
      if (!*v69)
      {
        goto LABEL_48;
      }

      v94 = *(v93 + 352);
      v95 = *(v93 + 360);
      v96 = (v94 + 360);
      if (!v94)
      {
        v96 = v69 + 1;
      }

      *v96 = v95;
      *v95 = v94;
      *(v93 + 352) = 0;
      *(v93 + 360) = 0;
      v97 = *(v93 + 32);
      if (!v97 || *(v93 + 480) != 2)
      {
        goto LABEL_183;
      }

      v98 = v97[2];
      if (nw_protocol_http2_identifier::onceToken != -1)
      {
        v205 = v97[2];
        dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
        v98 = v205;
      }

      if (!nw_protocols_are_equal(v98, &nw_protocol_http2_identifier::http2_protocol_identifier))
      {
        v99 = v97[2];
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v207 = v97[2];
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v99 = v207;
        }

        if (!nw_protocols_are_equal(v99, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          v100 = v97[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
          }

          if (!nw_protocols_are_equal(v100, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            goto LABEL_183;
          }
        }
      }

      v101 = nw_protocol_copy_info(v97);
      v102 = v101;
      *type = MEMORY[0x1E69E9820];
      v234 = 0x40000000;
      v235 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      v236 = &__block_descriptor_tmp_27_36446;
      v237 = v93;
      if (v101)
      {
        _nw_array_apply(v101, type);
        v103 = *(v93 + 400);
        if (!v103)
        {
          os_release(v102);
          goto LABEL_48;
        }
      }

      else
      {
        v103 = *(v93 + 400);
        if (!v103)
        {
          goto LABEL_48;
        }
      }

      version = nw_http_connection_metadata_get_version(v103);
      v105 = version;
      if (version == 4)
      {
        v106 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_171:
          v107 = v97[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v206 = v97[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v107 = v206;
          }

          v108 = nw_protocols_are_equal(v107, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v109 = *(v93 + 580);
          if (v108)
          {
            v109 |= 0x40u;
            *(v93 + 580) = v109;
          }

          if ((v109 & 2) == 0)
          {
            v110 = __nwlog_obj();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
            {
              v111 = *(v93 + 492);
              if (v105 == 4)
              {
                v112 = 2;
              }

              else
              {
                v112 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v93 + 496;
              *&buf[22] = 2080;
              v258 = " ";
              *v259 = 1024;
              *&v259[2] = v111;
              *&v259[6] = 1024;
              *&v259[8] = v112;
              _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v102)
          {
            os_release(v102);
          }

LABEL_183:
          v113 = *(v93 + 480);
          if (v113 <= 1)
          {
            if ((*(v93 + 580) & 1) == 0)
            {
              if (!*(v93 + 476))
              {
                nw_webtransport_http_send_connect(v93);
              }

              goto LABEL_48;
            }

            v115 = *(v93 + 476);
            if (v113 == 1)
            {
              if (v115 != 3)
              {
                if (v115)
                {
                  goto LABEL_48;
                }

                v116 = *(v93 + 48);
                if (v116)
                {
                  v117 = *(v116 + 40);
                  if (v117)
                  {
                    nw_protocol_replace_input_handler(*(v93 + 32), v93, *(v116 + 40));
                    *(v93 + 440) = v117;
                    nw_protocol_set_output_handler(v93, 0);
                    nw_protocol_set_input_handler(v93, 0);
                    if (*(v93 + 580))
                    {
                      v118 = *(*(v93 + 440) + 32);
                      v119 = *(v118 + 16);
                      if (nw_protocol_http_messaging_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                      }

                      if (nw_protocols_are_equal(v119, &nw_protocol_http_messaging_identifier::protocol_identifier))
                      {
                        goto LABEL_202;
                      }

                      v120 = *(v118 + 16);
                      if (nw_protocol_http3_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                      }

                      if (nw_protocols_are_equal(v120, &nw_protocol_http3_identifier::http3_protocol_identifier))
                      {
LABEL_202:
                        v121 = *(v93 + 368);
                        if (v121)
                        {
                          v122 = nw_parameters_copy_protocol_options_legacy(v121, v118);
                          if (v122)
                          {
                            v123 = v122;
                            if ((*(v117 + 276) & 0x10) == 0 && gLogDatapath == 1)
                            {
                              v222 = __nwlog_obj();
                              if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
                              {
                                v223 = *(v117 + 88);
                                if (v223)
                                {
                                  v224 = *(v223 + 492);
                                }

                                else
                                {
                                  v224 = -1;
                                }

                                v229 = *(v117 + 64);
                                *buf = 136447490;
                                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v117 + 192;
                                *&buf[22] = 2080;
                                v258 = " ";
                                *v259 = 1024;
                                *&v259[2] = v224;
                                *&v259[6] = 2048;
                                *&v259[8] = v229;
                                *&v259[16] = 2048;
                                *&v259[18] = v123;
                                _os_log_impl(&dword_181A37000, v222, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                              }
                            }

                            nw_http3_set_stream_mode(v123, 0);
                            os_release(v123);
                          }

                          else
                          {
                            if ((*(v93 + 580) & 2) == 0 && gLogDatapath == 1)
                            {
                              v227 = __nwlog_obj();
                              if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
                              {
                                v228 = *(v93 + 492);
                                *buf = 136446978;
                                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v93 + 496;
                                *&buf[22] = 2080;
                                v258 = " ";
                                *v259 = 1024;
                                *&v259[2] = v228;
                                _os_log_impl(&dword_181A37000, v227, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                              }
                            }

                            v156 = *(v117 + 88);
                            nw_protocol_error(*(v117 + 48), v117);
                            nw_protocol_disconnect(v117, v156);
                          }
                        }
                      }
                    }

                    goto LABEL_275;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  v210 = _os_log_send_and_compose_impl();
                  LOBYTE(iterate_block) = 16;
                  LOBYTE(v238) = 0;
                  if (__nwlog_fault(v210, &iterate_block, &v238))
                  {
                    if (iterate_block == 17)
                    {
                      v211 = __nwlog_obj();
                      v212 = iterate_block;
                      if (!os_log_type_enabled(v211, iterate_block))
                      {
                        goto LABEL_482;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v213 = "%{public}s called with null webtransport_stream";
                      goto LABEL_481;
                    }

                    if (v238 != 1)
                    {
                      v211 = __nwlog_obj();
                      v212 = iterate_block;
                      if (!os_log_type_enabled(v211, iterate_block))
                      {
                        goto LABEL_482;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v213 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                      goto LABEL_481;
                    }

                    v220 = __nw_create_backtrace_string();
                    v211 = __nwlog_obj();
                    v212 = iterate_block;
                    v221 = os_log_type_enabled(v211, iterate_block);
                    if (v220)
                    {
                      if (v221)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v220;
                        _os_log_impl(&dword_181A37000, v211, v212, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v220);
                      if (!v210)
                      {
                        goto LABEL_275;
                      }

                      goto LABEL_483;
                    }

                    if (v221)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v213 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_481:
                      _os_log_impl(&dword_181A37000, v211, v212, v213, buf, 0xCu);
                    }
                  }
                }

                else
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  v210 = _os_log_send_and_compose_impl();
                  LOBYTE(iterate_block) = 16;
                  LOBYTE(v238) = 0;
                  if (!__nwlog_fault(v210, &iterate_block, &v238))
                  {
                    goto LABEL_482;
                  }

                  if (iterate_block == 17)
                  {
                    v211 = __nwlog_obj();
                    v212 = iterate_block;
                    if (!os_log_type_enabled(v211, iterate_block))
                    {
                      goto LABEL_482;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v213 = "%{public}s called with null input_protocol";
                    goto LABEL_481;
                  }

                  if (v238 != 1)
                  {
                    v211 = __nwlog_obj();
                    v212 = iterate_block;
                    if (!os_log_type_enabled(v211, iterate_block))
                    {
                      goto LABEL_482;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v213 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_481;
                  }

                  v217 = __nw_create_backtrace_string();
                  v211 = __nwlog_obj();
                  v212 = iterate_block;
                  v218 = os_log_type_enabled(v211, iterate_block);
                  if (!v217)
                  {
                    if (!v218)
                    {
                      goto LABEL_482;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v213 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_481;
                  }

                  if (v218)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v217;
                    _os_log_impl(&dword_181A37000, v211, v212, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v217);
                }

LABEL_482:
                if (!v210)
                {
LABEL_275:
                  *(v93 + 476) = 2;
                  goto LABEL_48;
                }

LABEL_483:
                free(v210);
                goto LABEL_275;
              }

              v126 = *(v93 + 32);
              if (v126)
              {
                v127 = v126[3];
                if (v127 && *(v127 + 80))
                {
                  for (i = 3; (i | 2) == 3; i = *(v93 + 476))
                  {
                    if (!nw_protocol_get_input_frames(v126, v93, 0, 0, 0xFFFFFFFFLL, v93 + 120))
                    {
                      goto LABEL_48;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v258 = __Block_byref_object_copy__36471;
                    *v259 = __Block_byref_object_dispose__36472;
                    *&v259[8] = nw_protocol_copy_http_definition();
                    v259[16] |= 1u;
                    iterate_block = MEMORY[0x1E69E9820];
                    v247 = 0x40000000;
                    v248 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v249 = &unk_1E6A31940;
                    v250 = buf;
                    v251 = v93;
                    v252 = (v93 + 120);
                    v129 = *(v93 + 120);
                    do
                    {
                      if (!v129)
                      {
                        break;
                      }

                      v130 = *(v129 + 32);
                      v131 = (v248)(&iterate_block);
                      v129 = v130;
                    }

                    while ((v131 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v259[16] & 1) != 0 && *&v259[8])
                    {
                      os_release(*&v259[8]);
                    }
                  }

                  v149 = *(v93 + 480);
                  if (v149 == 1)
                  {
                    nw_webtransport_http3_handle_input(v93);
                    v155 = *(v93 + 448);
                    if (v155 && *(v155 + 72))
                    {
                      nw_protocol_input_available(*(v155 + 48), v155);
                    }

                    goto LABEL_48;
                  }

                  if (v149)
                  {
                    goto LABEL_48;
                  }

                  if ((*(v93 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v225 = __nwlog_obj();
                    if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
                    {
                      v226 = *(v93 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v93 + 496;
                      *&buf[22] = 2080;
                      v258 = " ";
                      *v259 = 1024;
                      *&v259[2] = v226;
                      _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v93 + 476) != 4)
                  {
LABEL_48:
                    LOBYTE(v5) = 0;
                    return v5 & 1;
                  }

                  v150 = (v93 + 96);
                  while (1)
                  {
                    capsule = nw_http_capsule_framer_read_capsule((v93 + 96), v93);
                    if (!capsule && !*(v93 + 136))
                    {
                      goto LABEL_48;
                    }

                    if (*(v93 + 456))
                    {
                      goto LABEL_299;
                    }

                    v162 = *v150;
                    if (*v150 == -1)
                    {
LABEL_356:
                      v176 = __nwlog_obj();
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2048;
                        *&buf[14] = v162;
                        _os_log_impl(&dword_181A37000, v176, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                      }

                      goto LABEL_299;
                    }

                    v163 = *(v93 + 104) != -1 && *(v93 + 112) == 0;
                    if (v162 <= 16770303)
                    {
                      if ((v162 - 16770048) < 6 || (v162 + 1) <= 4 && v162)
                      {
                        goto LABEL_356;
                      }
                    }

                    else if ((v162 - 420171065) <= 9 && ((1 << (v162 - 57)) & 0x2EF) != 0)
                    {
                      v245 = -1;
                      if (nw_http_capsule_framer_parse_vle_value((v93 + 96), v93, &v245))
                      {
                        stream = nw_webtransport_session_get_stream(v93, v245);
                        if (stream)
                        {
                          goto LABEL_350;
                        }

                        if ((v162 - 420171067) > 1)
                        {
                          goto LABEL_381;
                        }

                        v183 = v245;
                        v184 = *(v93 + 580);
                        if (v245 >> 60 || ((v245 ^ v184) & 1) == 0)
                        {
                          if ((v184 & 2) == 0)
                          {
                            v192 = __nwlog_obj();
                            if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
                            {
                              v193 = *(v93 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v93 + 496;
                              *&buf[22] = 2080;
                              v258 = " ";
                              *v259 = 1024;
                              *&v259[2] = v193;
                              v194 = v192;
                              v195 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                              goto LABEL_380;
                            }
                          }

LABEL_381:
                          if ((*(v93 + 580) & 2) == 0)
                          {
                            v196 = __nwlog_obj();
                            if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                            {
                              v197 = *(v93 + 492);
                              *buf = 136447490;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v93 + 496;
                              *&buf[22] = 2080;
                              v258 = " ";
                              *v259 = 1024;
                              *&v259[2] = v197;
                              *&v259[6] = 2048;
                              *&v259[8] = v245;
                              *&v259[16] = 2048;
                              *&v259[18] = v162;
                              _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                            }
                          }

                          goto LABEL_299;
                        }

                        v185 = *(v93 + 424);
                        if (!v185 || (v186 = *v185) == 0 || !*v186)
                        {
                          if ((v184 & 2) == 0)
                          {
                            v198 = __nwlog_obj();
                            if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
                            {
                              v199 = *(v93 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v93 + 496;
                              *&buf[22] = 2080;
                              v258 = " ";
                              *v259 = 1024;
                              *&v259[2] = v199;
                              v194 = v198;
                              v195 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_380:
                              _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_ERROR, v195, buf, 0x26u);
                            }
                          }

                          goto LABEL_381;
                        }

                        v187 = _nw_parameters_copy(*(v93 + 368));
                        *(v93 + 580) |= 0x20u;
                        *(v93 + 176) = v183;
                        v188 = (***(v93 + 424))(*(v93 + 424), *(v93 + 384), v187);
                        *(v93 + 176) = -1;
                        *(v93 + 580) &= ~0x20u;
                        if (v188)
                        {
                          stream = nw_webtransport_session_get_stream(v93, v183);
                        }

                        else
                        {
                          stream = 0;
                        }

                        if (v187)
                        {
                          os_release(v187);
                        }

                        if (!stream)
                        {
                          goto LABEL_381;
                        }

                        if (*(stream + 184) != 3)
                        {
LABEL_350:
                          *(v93 + 456) = stream;
                          goto LABEL_299;
                        }

                        if ((*(v93 + 580) & 2) != 0)
                        {
                          goto LABEL_299;
                        }

                        v200 = __nwlog_obj();
                        if (!os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_299;
                        }

                        v201 = *(v93 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v93 + 496;
                        *&buf[22] = 2080;
                        v258 = " ";
                        *v259 = 1024;
                        *&v259[2] = v201;
                        *&v259[6] = 2048;
                        *&v259[8] = v245;
                        v179 = v200;
                        v180 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                      }

                      else
                      {
                        if (!v163)
                        {
                          goto LABEL_299;
                        }

                        if ((*(v93 + 580) & 2) != 0)
                        {
                          goto LABEL_299;
                        }

                        v177 = __nwlog_obj();
                        if (!os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_299;
                        }

                        v178 = *(v93 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v93 + 496;
                        *&buf[22] = 2080;
                        v258 = " ";
                        *v259 = 1024;
                        *&v259[2] = v178;
                        *&v259[6] = 2048;
                        *&v259[8] = v162;
                        v179 = v177;
                        v180 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                      }

                      _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_ERROR, v180, buf, 0x30u);
                    }

                    else if ((v162 - 16770304) < 4)
                    {
                      goto LABEL_356;
                    }

LABEL_299:
                    v161 = *(v93 + 96);
                    if ((*(v93 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v202 = __nwlog_obj();
                      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
                      {
                        v203 = *(v93 + 492);
                        v204 = *(v93 + 104);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2082;
                        *&buf[14] = v93 + 496;
                        *&buf[22] = 2080;
                        v258 = " ";
                        *v259 = 1024;
                        *&v259[2] = v203;
                        *&v259[6] = 2048;
                        *&v259[8] = v161;
                        *&v259[16] = 2048;
                        *&v259[18] = v204;
                        _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                      }
                    }

                    if (v161 > 16770303)
                    {
                      if (v161 <= 420171064)
                      {
                        if ((v161 - 16770304) < 4)
                        {
                          goto LABEL_318;
                        }

                        if (v161 == 420171064)
                        {
                          goto LABEL_317;
                        }

                        goto LABEL_320;
                      }

                      if ((v161 - 420171065) >= 2)
                      {
                        if ((v161 - 420171067) < 2)
                        {
                          v164 = *(v93 + 456);
                          v166 = v161 == 420171068 && capsule;
                          v238 = MEMORY[0x1E69E9820];
                          v239 = 0x40000000;
                          v240 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                          v241 = &__block_descriptor_tmp_34_36485;
                          v244 = v166;
                          v242 = v93 + 96;
                          v243 = v164;
                          v167 = *(v93 + 136);
                          do
                          {
                            if (!v167)
                            {
                              break;
                            }

                            v168 = *(v167 + 32);
                            v169 = (v240)(&v238);
                            v167 = v168;
                          }

                          while ((v169 & 1) != 0);
                          if (!v166)
                          {
                            goto LABEL_376;
                          }

                          nw_protocol_input_finished(v164, v93);
                        }

                        goto LABEL_320;
                      }

                      if (capsule)
                      {
                        v170 = *(v93 + 456);
                        v245 = -1;
                        if (nw_http_capsule_framer_parse_vle_value((v93 + 96), v93, &v245))
                        {
                          if (!v170 || (*(v170 + 276) & 0x10) == 0)
                          {
                            v171 = __nwlog_obj();
                            if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                            {
                              if (v170)
                              {
                                v172 = (v170 + 192);
                              }

                              else
                              {
                                v172 = "";
                              }

                              v173 = " ";
                              if (!v170)
                              {
                                v173 = "";
                              }

                              v174 = *(v170 + 88);
                              if (v174)
                              {
                                v157 = *(v174 + 492);
                              }

                              else
                              {
                                v157 = -1;
                              }

                              v158 = *(v170 + 64);
                              *buf = 136448002;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v172;
                              *&buf[22] = 2080;
                              v258 = v173;
                              *v259 = 1024;
                              *&v259[2] = v157;
                              *&v259[6] = 2048;
                              *&v259[8] = v158;
                              *&v259[16] = 2048;
                              *&v259[18] = v161;
                              v260 = 2048;
                              v261 = v158;
                              v262 = 2048;
                              v263 = v245;
                              _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                            }
                          }

                          nw_protocol_webtransport_stream_error(v170, v93);
                          nw_protocol_webtransport_stream_disconnect(v170, v159);
                        }

                        else if ((*(v93 + 580) & 2) == 0)
                        {
                          v181 = __nwlog_obj();
                          if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
                          {
                            v182 = *(v93 + 492);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2082;
                            *&buf[14] = v93 + 496;
                            *&buf[22] = 2080;
                            v258 = " ";
                            *v259 = 1024;
                            *&v259[2] = v182;
                            *&v259[6] = 2048;
                            *&v259[8] = v161;
                            _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                          }
                        }

LABEL_295:
                        *(v93 + 456) = 0;
                        nw_http_capsule_complete_capsule(v93 + 96);
                      }
                    }

                    else
                    {
                      if (v161 <= 16770047)
                      {
                        if ((v161 - 1) < 3 || v161 == -1)
                        {
LABEL_318:
                          v165 = __nwlog_obj();
                          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2048;
                            *&buf[14] = v161;
                            _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                          }

                          goto LABEL_320;
                        }

                        if (!v161)
                        {
                          v164 = *(v93 + 448);
                          if (v164 && *(v164 + 184) != 3)
                          {
                            *v253 = MEMORY[0x1E69E9820];
                            *&v253[8] = 0x40000000;
                            *&v253[16] = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                            v254 = &__block_descriptor_tmp_35_36486;
                            v255 = v93 + 96;
                            v256 = v164;
                            v189 = *(v93 + 136);
                            do
                            {
                              if (!v189)
                              {
                                break;
                              }

                              v190 = *(v189 + 32);
                              v191 = (*&v253[16])(v253);
                              v189 = v190;
                            }

                            while ((v191 & 1) != 0);
LABEL_376:
                            nw_protocol_input_available(v164, v93);
                            goto LABEL_320;
                          }

LABEL_317:
                          nw_frame_array_finalize(v93 + 136, 1, 1);
                        }
                      }

                      else if ((v161 - 16770048) < 6)
                      {
                        goto LABEL_318;
                      }

LABEL_320:
                      if (capsule)
                      {
                        goto LABEL_295;
                      }
                    }
                  }
                }

                if ((*(v93 + 580) & 2) == 0)
                {
                  v208 = __nwlog_obj();
                  if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                  {
                    v209 = *(v93 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v93 + 496;
                    *&buf[22] = 2080;
                    v258 = " ";
                    *v259 = 1024;
                    *&v259[2] = v209;
                    _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v24 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block) = 16;
                LOBYTE(v238) = 0;
                if (!__nwlog_fault(v24, &iterate_block, &v238))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v27 = "%{public}s output handler has no get_input_frames callback";
                    goto LABEL_44;
                  }

LABEL_46:
                  if (!v24)
                  {
                    goto LABEL_48;
                  }

LABEL_47:
                  free(v24);
                  goto LABEL_48;
                }

                if (v238 != 1)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v27 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v89 = __nw_create_backtrace_string();
                v25 = __nwlog_obj();
                v26 = iterate_block;
                v214 = os_log_type_enabled(v25, iterate_block);
                if (!v89)
                {
                  if (v214)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v27 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v214)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v89;
                  v91 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_134:
                  _os_log_impl(&dword_181A37000, v25, v26, v91, buf, 0x16u);
                }
              }

              else
              {
                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v24 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block) = 16;
                LOBYTE(v238) = 0;
                if (!__nwlog_fault(v24, &iterate_block, &v238))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v27 = "%{public}s called with null output_handler";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v238 != 1)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v27 = "%{public}s called with null output_handler, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v89 = __nw_create_backtrace_string();
                v25 = __nwlog_obj();
                v26 = iterate_block;
                v219 = os_log_type_enabled(v25, iterate_block);
                if (!v89)
                {
                  if (v219)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v27 = "%{public}s called with null output_handler, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v219)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v89;
                  v91 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                  goto LABEL_134;
                }
              }
            }

            else
            {
              if (v115)
              {
                goto LABEL_48;
              }

              *(v93 + 476) = 3;
              v124 = *(v93 + 48);
              if (v124)
              {
                v125 = *(v124 + 40);
                if (v125)
                {
                  *(v93 + 440) = v125;
                  goto LABEL_48;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v24 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block) = 16;
                LOBYTE(v238) = 0;
                if (!__nwlog_fault(v24, &iterate_block, &v238))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v27 = "%{public}s called with null webtransport_stream";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v238 != 1)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v27 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v89 = __nw_create_backtrace_string();
                v25 = __nwlog_obj();
                v26 = iterate_block;
                v216 = os_log_type_enabled(v25, iterate_block);
                if (!v89)
                {
                  if (v216)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v27 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v216)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v89;
                  v91 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                  goto LABEL_134;
                }
              }

              else
              {
                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v24 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block) = 16;
                LOBYTE(v238) = 0;
                if (!__nwlog_fault(v24, &iterate_block, &v238))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v27 = "%{public}s called with null input_protocol";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v238 != 1)
                {
                  v25 = __nwlog_obj();
                  v26 = iterate_block;
                  if (os_log_type_enabled(v25, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v27 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v89 = __nw_create_backtrace_string();
                v25 = __nwlog_obj();
                v26 = iterate_block;
                v215 = os_log_type_enabled(v25, iterate_block);
                if (!v89)
                {
                  if (v215)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v27 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v215)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v89;
                  v91 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                  goto LABEL_134;
                }
              }
            }

LABEL_135:
            free(v89);
            if (!v24)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if ((*(v93 + 580) & 2) != 0)
          {
            goto LABEL_48;
          }

          v32 = __nwlog_obj();
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          v114 = *(v93 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_establish";
          *&buf[12] = 2082;
          *&buf[14] = v93 + 496;
          *&buf[22] = 2080;
          v258 = " ";
          *v259 = 1024;
          *&v259[2] = v114;
          v34 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
LABEL_40:
          v36 = v32;
          v37 = OS_LOG_TYPE_ERROR;
LABEL_41:
          _os_log_impl(&dword_181A37000, v36, v37, v34, buf, 0x26u);
          goto LABEL_48;
        }

        v106 = 1;
      }

      *(v93 + 480) = v106;
      goto LABEL_171;
    }

    __nwlog_obj();
    v71 = v69[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v258 = 1;
    *v259 = 2048;
    *&v259[2] = v71;
    v72 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block) = 16;
    LOBYTE(v238) = 0;
    if (__nwlog_fault(v72, &iterate_block, &v238))
    {
      if (iterate_block == 17)
      {
        v73 = __nwlog_obj();
        v74 = iterate_block;
        if (os_log_type_enabled(v73, iterate_block))
        {
          v75 = v69[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v258 = 1;
          *v259 = 2048;
          *&v259[2] = v75;
          v76 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_139:
          _os_log_impl(&dword_181A37000, v73, v74, v76, buf, 0x2Au);
        }
      }

      else if (v238 == 1)
      {
        v77 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        v74 = iterate_block;
        v78 = os_log_type_enabled(v73, iterate_block);
        if (v77)
        {
          if (v78)
          {
            v79 = v69[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v258 = 1;
            *v259 = 2048;
            *&v259[2] = v79;
            *&v259[10] = 2082;
            *&v259[12] = v77;
            _os_log_impl(&dword_181A37000, v73, v74, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v77);
          goto LABEL_140;
        }

        if (v78)
        {
          v92 = v69[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v258 = 1;
          *v259 = 2048;
          *&v259[2] = v92;
          v76 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_139;
        }
      }

      else
      {
        v73 = __nwlog_obj();
        v74 = iterate_block;
        if (os_log_type_enabled(v73, iterate_block))
        {
          v86 = v69[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v258 = 1;
          *v259 = 2048;
          *&v259[2] = v86;
          v76 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_139;
        }
      }
    }

LABEL_140:
    if (v72)
    {
      free(v72);
    }

    v69[2] = 0;
    goto LABEL_143;
  }

  if ((handle[580] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v48 = *(handle + 123);
      v49 = *(handle + 4);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v258 = " ";
      *v259 = 1024;
      *&v259[2] = v48;
      *&v259[6] = 2048;
      *&v259[8] = v49;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Got output handler from new_flow %p for CONNECT stream, sending async connect and awaiting input for session", buf, 0x30u);
    }
  }

  *(handle + 119) = 3;
  v50 = *(handle + 58);
  v51 = *(handle + 52);
  v230[0] = MEMORY[0x1E69E9820];
  v230[1] = 0x40000000;
  v230[2] = ___ZL57nw_protocol_webtransport_session_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke;
  v230[3] = &unk_1E6A31C80;
  v230[4] = v50;
  nw_queue_context_async(v51, v230);
  LOBYTE(v5) = 1;
  return v5 & 1;
}

uint64_t ___ZL57nw_protocol_webtransport_session_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);

    return nw_protocol_connect(v3, v2);
  }

  return result;
}

void ___ZL42nw_protocol_webtransport_session_callbacksv_block_invoke()
{
  qword_1EA842000 = nw_protocol_default_replace_input_handler;
  qword_1EA8420F8 = nw_protocol_default_input_flush;
  qword_1EA8420E8 = nw_protocol_default_get_message_properties;
  qword_1EA842058 = nw_protocol_default_link_state;
  qword_1EA842070 = nw_protocol_default_get_local;
  qword_1EA842068 = nw_protocol_default_get_path;
  qword_1EA842098 = nw_protocol_default_updated_path;
  qword_1EA8420B8 = nw_protocol_default_get_output_local;
  qword_1EA8420C0 = nw_protocol_default_get_output_interface;
  qword_1EA8420F0 = nw_protocol_default_reset;
  qword_1EA8420A0 = nw_protocol_default_supports_external_data;
  qword_1EA8420C8 = nw_protocol_default_waiting_for_output;
  qword_1EA842080 = nw_protocol_default_register_notification;
  qword_1EA842088 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_session_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_session_add_input_handler;
  qword_1EA841FF8 = nw_protocol_webtransport_session_remove_input_handler;
  qword_1EA842008 = nw_protocol_webtransport_session_connect;
  qword_1EA842010 = nw_protocol_webtransport_session_disconnect;
  qword_1EA842018 = nw_protocol_webtransport_session_connected;
  qword_1EA842020 = nw_protocol_webtransport_session_disconnected;
  qword_1EA842028 = nw_protocol_webtransport_session_error;
  qword_1EA842030 = nw_protocol_webtransport_session_input_available;
  qword_1EA842038 = nw_protocol_webtransport_session_output_available;
  qword_1EA842040 = nw_protocol_webtransport_session_get_input_frames;
  qword_1EA842048 = nw_protocol_webtransport_session_get_output_frames;
  qword_1EA842050 = nw_protocol_webtransport_session_finalize_output_frames;
  qword_1EA842060 = nw_protocol_webtransport_session_get_parameters;
  qword_1EA842078 = nw_protocol_webtransport_session_get_remote_endpoint;
  qword_1EA842090 = nw_protocol_webtransport_session_notify;
  qword_1EA8420A8 = nw_protocol_webtransport_session_input_finished;
  qword_1EA8420B0 = nw_protocol_webtransport_session_output_finished;
  qword_1EA8420D0 = nw_protocol_webtransport_session_copy_info;
  qword_1EA8420D8 = nw_protocol_webtransport_session_add_listen_handler;
  qword_1EA8420E0 = nw_protocol_webtransport_session_remove_listen_handler;
}

uint64_t nw_protocol_webtransport_session_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v219 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[580] & 2) == 0 && gLogDatapath == 1)
      {
        v86 = a2;
        v87 = __nwlog_obj();
        v88 = os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG);
        a2 = v86;
        if (v88)
        {
          v89 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v213 = " ";
          *v214 = 1024;
          *&v214[2] = v89;
          _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
          a2 = v86;
        }
      }

      if (*(handle + 53) != a2)
      {
        if ((handle[580] & 2) != 0)
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v90 = __nwlog_obj();
        if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v91 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v213 = " ";
        *v214 = 1024;
        *&v214[2] = v91;
        v6 = "%{public}s %{public}s%s<i%u> ignoring request to remove webtransport listen handler, does not match our handler";
        v7 = v90;
        v8 = OS_LOG_TYPE_DEBUG;
        goto LABEL_15;
      }

      if ((handle[580] & 2) == 0 && gLogDatapath == 1)
      {
        v98 = a2;
        v99 = __nwlog_obj();
        v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG);
        a2 = v98;
        if (v100)
        {
          v101 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v213 = " ";
          *v214 = 1024;
          *&v214[2] = v101;
          _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removing protocol listen handler", buf, 0x26u);
          a2 = v98;
        }
      }

      handle[580] |= 8u;
      *(handle + 53) = 0;
      a2->protocol_handler = 0;
      if (*(handle + 119) == 5)
      {
        if ((handle[580] & 2) != 0)
        {
          return 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          return 1;
        }

        v5 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v213 = " ";
        *v214 = 1024;
        *&v214[2] = v5;
        v6 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
      }

      v9 = *(handle + 121);
      if (v9)
      {
        if ((handle[580] & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v11 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v213 = " ";
            *v214 = 1024;
            *&v214[2] = v11;
            *&v214[6] = 1024;
            *&v214[8] = v9;
            v12 = "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d";
            v13 = v10;
            v14 = 44;
LABEL_23:
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
          }
        }
      }

      else if ((handle[580] & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v16 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v213 = " ";
          *v214 = 1024;
          *&v214[2] = v16;
          v12 = "%{public}s %{public}s%s<i%u> Closing webtransport session without error";
          v13 = v15;
          v14 = 38;
          goto LABEL_23;
        }
      }

      v17 = *(handle + 119);
      *(handle + 119) = 5;
      v18 = *(handle + 24);
      if (v18)
      {
        v190[0] = MEMORY[0x1E69E9820];
        v190[1] = 0x40000000;
        v190[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
        v190[3] = &__block_descriptor_tmp_24_36439;
        v191 = v9;
        nw_hash_table_apply(v18, v190);
      }

      v19 = *(handle + 56);
      if (v19)
      {
        v20 = *(v19 + 88);
        if (v9)
        {
          nw_protocol_error(*(v19 + 48), *(handle + 56));
        }

        nw_protocol_disconnect(v19, v20);
      }

      v21 = *(handle + 42);
      if (v21)
      {
        if (v9)
        {
          do
          {
            v22 = *(v21 + 112);
            v23 = *(v21 + 88);
            nw_protocol_error(*(v21 + 48), v21);
            nw_protocol_disconnect(v21, v23);
            v21 = v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v24 = *(v21 + 112);
            nw_protocol_disconnect(v21, *(v21 + 88));
            v21 = v24;
          }

          while (v24);
        }
      }

      v25 = *(handle + 55);
      if (v25)
      {
        v26 = *(v25 + 88);
        if (v9)
        {
          nw_protocol_error(*(v25 + 48), *(handle + 55));
        }

        nw_protocol_disconnect(v25, v26);
      }

      if (*(handle + 4))
      {
        nw_protocol_remove_instance(handle);
        nw_protocol_disconnect(*(handle + 4), handle);
      }

      v27 = *(handle + 50);
      if (!v27)
      {
        return 1;
      }

      webtransport_state = nw_http_connection_metadata_get_webtransport_state(v27);
      if (!webtransport_state)
      {
        return 1;
      }

      v29 = webtransport_state;
      if (v17 != 4 && v17 != 1)
      {
        return 1;
      }

      v30 = *(webtransport_state + 16);
      *(webtransport_state + 16) = v30 - 1;
      if (v30)
      {
LABEL_63:
        if (handle[580])
        {
          return 1;
        }

        v42 = *v29;
        if (!*v29)
        {
          return 1;
        }

        v43 = *(v42 + 352);
        v44 = *(v42 + 360);
        v45 = (v43 + 360);
        if (!v43)
        {
          v45 = v29 + 1;
        }

        *v45 = v44;
        *v44 = v43;
        *(v42 + 352) = 0;
        *(v42 + 360) = 0;
        v46 = *(v42 + 32);
        if (!v46 || *(v42 + 480) != 2)
        {
          goto LABEL_99;
        }

        v47 = v46[2];
        if (nw_protocol_http2_identifier::onceToken != -1)
        {
          v153 = v46[2];
          dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
          v47 = v153;
        }

        if (!nw_protocols_are_equal(v47, &nw_protocol_http2_identifier::http2_protocol_identifier))
        {
          v48 = v46[2];
          if (nw_protocol_http3_identifier::onceToken != -1)
          {
            v155 = v46[2];
            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
            v48 = v155;
          }

          if (!nw_protocols_are_equal(v48, &nw_protocol_http3_identifier::http3_protocol_identifier))
          {
            v49 = v46[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v156 = v46[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v49 = v156;
            }

            if (!nw_protocols_are_equal(v49, &nw_protocol_http_messaging_identifier::protocol_identifier))
            {
LABEL_99:
              v62 = *(v42 + 480);
              if (v62 > 1)
              {
                if ((*(v42 + 580) & 2) != 0)
                {
                  return 1;
                }

                v63 = __nwlog_obj();
                if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  return 1;
                }

                v64 = *(v42 + 492);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v42 + 496;
                *&buf[22] = 2080;
                v213 = " ";
                *v214 = 1024;
                *&v214[2] = v64;
                v6 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
                v7 = v63;
                v8 = OS_LOG_TYPE_ERROR;
LABEL_15:
                _os_log_impl(&dword_181A37000, v7, v8, v6, buf, 0x26u);
                return 1;
              }

              if ((*(v42 + 580) & 1) == 0)
              {
                if (!*(v42 + 476))
                {
                  nw_webtransport_http_send_connect(v42);
                }

                return 1;
              }

              v65 = *(v42 + 476);
              if (v62 == 1)
              {
                if (v65 != 3)
                {
                  if (v65)
                  {
                    return 1;
                  }

                  v66 = *(v42 + 48);
                  if (v66)
                  {
                    v67 = *(v66 + 40);
                    if (v67)
                    {
                      nw_protocol_replace_input_handler(*(v42 + 32), v42, *(v66 + 40));
                      *(v42 + 440) = v67;
                      nw_protocol_set_output_handler(v42, 0);
                      nw_protocol_set_input_handler(v42, 0);
                      if (*(v42 + 580))
                      {
                        v68 = *(*(v42 + 440) + 32);
                        v69 = *(v68 + 16);
                        if (nw_protocol_http_messaging_identifier::onceToken != -1)
                        {
                          v176 = *(v68 + 16);
                          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                          v69 = v176;
                        }

                        if (nw_protocols_are_equal(v69, &nw_protocol_http_messaging_identifier::protocol_identifier))
                        {
                          goto LABEL_118;
                        }

                        v70 = *(v68 + 16);
                        if (nw_protocol_http3_identifier::onceToken != -1)
                        {
                          v179 = *(v68 + 16);
                          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                          v70 = v179;
                        }

                        if (nw_protocols_are_equal(v70, &nw_protocol_http3_identifier::http3_protocol_identifier))
                        {
LABEL_118:
                          v71 = *(v42 + 368);
                          if (v71)
                          {
                            v72 = nw_parameters_copy_protocol_options_legacy(v71, v68);
                            if (v72)
                            {
                              if ((*(v67 + 276) & 0x10) == 0 && gLogDatapath == 1)
                              {
                                v180 = v72;
                                v181 = __nwlog_obj();
                                v182 = os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG);
                                v72 = v180;
                                if (v182)
                                {
                                  v183 = *(v67 + 88);
                                  if (v183)
                                  {
                                    v184 = *(v183 + 492);
                                  }

                                  else
                                  {
                                    v184 = -1;
                                  }

                                  v189 = *(v67 + 64);
                                  *buf = 136447490;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v67 + 192;
                                  *&buf[22] = 2080;
                                  v213 = " ";
                                  *v214 = 1024;
                                  *&v214[2] = v184;
                                  *&v214[6] = 2048;
                                  *&v214[8] = v189;
                                  *&v214[16] = 2048;
                                  *&v214[18] = v180;
                                  _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                                  v72 = v180;
                                }
                              }

                              v73 = v72;
                              nw_http3_set_stream_mode(v72, 0);
                              os_release(v73);
                            }

                            else
                            {
                              if ((*(v42 + 580) & 2) == 0 && gLogDatapath == 1)
                              {
                                v187 = __nwlog_obj();
                                if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
                                {
                                  v188 = *(v42 + 492);
                                  *buf = 136446978;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v42 + 496;
                                  *&buf[22] = 2080;
                                  v213 = " ";
                                  *v214 = 1024;
                                  *&v214[2] = v188;
                                  _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                                }
                              }

                              v103 = *(v67 + 88);
                              nw_protocol_error(*(v67 + 48), v67);
                              nw_protocol_disconnect(v67, v103);
                            }
                          }
                        }
                      }

                      goto LABEL_180;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v163 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v205[0]) = 0;
                    if (__nwlog_fault(v163, type, v205))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v164 = __nwlog_obj();
                        v165 = type[0];
                        if (!os_log_type_enabled(v164, type[0]))
                        {
                          goto LABEL_386;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v166 = "%{public}s called with null webtransport_stream";
                        goto LABEL_385;
                      }

                      if (LOBYTE(v205[0]) != 1)
                      {
                        v164 = __nwlog_obj();
                        v165 = type[0];
                        if (!os_log_type_enabled(v164, type[0]))
                        {
                          goto LABEL_386;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v166 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                        goto LABEL_385;
                      }

                      backtrace_string = __nw_create_backtrace_string();
                      v164 = __nwlog_obj();
                      v165 = type[0];
                      v178 = os_log_type_enabled(v164, type[0]);
                      if (backtrace_string)
                      {
                        if (v178)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = backtrace_string;
                          _os_log_impl(&dword_181A37000, v164, v165, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(backtrace_string);
                        if (!v163)
                        {
                          goto LABEL_180;
                        }

                        goto LABEL_387;
                      }

                      if (v178)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v166 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_385:
                        _os_log_impl(&dword_181A37000, v164, v165, v166, buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v163 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v205[0]) = 0;
                    if (!__nwlog_fault(v163, type, v205))
                    {
                      goto LABEL_386;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v164 = __nwlog_obj();
                      v165 = type[0];
                      if (!os_log_type_enabled(v164, type[0]))
                      {
                        goto LABEL_386;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v166 = "%{public}s called with null input_protocol";
                      goto LABEL_385;
                    }

                    if (LOBYTE(v205[0]) != 1)
                    {
                      v164 = __nwlog_obj();
                      v165 = type[0];
                      if (!os_log_type_enabled(v164, type[0]))
                      {
                        goto LABEL_386;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v166 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                      goto LABEL_385;
                    }

                    v172 = __nw_create_backtrace_string();
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    v173 = os_log_type_enabled(v164, type[0]);
                    if (!v172)
                    {
                      if (!v173)
                      {
                        goto LABEL_386;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v166 = "%{public}s called with null input_protocol, no backtrace";
                      goto LABEL_385;
                    }

                    if (v173)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v172;
                      _os_log_impl(&dword_181A37000, v164, v165, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v172);
                  }

LABEL_386:
                  if (!v163)
                  {
LABEL_180:
                    *(v42 + 476) = 2;
                    return 1;
                  }

LABEL_387:
                  free(v163);
                  goto LABEL_180;
                }

                v76 = *(v42 + 32);
                if (!v76)
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v159 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v205[0]) = 0;
                  if (!__nwlog_fault(v159, type, v205))
                  {
                    goto LABEL_381;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    if (!os_log_type_enabled(v160, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v162 = "%{public}s called with null output_handler";
                  }

                  else if (LOBYTE(v205[0]) == 1)
                  {
                    v174 = __nw_create_backtrace_string();
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    v175 = os_log_type_enabled(v160, type[0]);
                    if (v174)
                    {
                      if (v175)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v174;
                        _os_log_impl(&dword_181A37000, v160, v161, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v174);
LABEL_381:
                      if (!v159)
                      {
                        return 1;
                      }

LABEL_382:
                      free(v159);
                      return 1;
                    }

                    if (!v175)
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v162 = "%{public}s called with null output_handler, no backtrace";
                  }

                  else
                  {
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    if (!os_log_type_enabled(v160, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v162 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  }

LABEL_380:
                  _os_log_impl(&dword_181A37000, v160, v161, v162, buf, 0xCu);
                  goto LABEL_381;
                }

                v77 = v76[3];
                if (v77 && *(v77 + 80))
                {
                  for (i = 3; (i | 2) == 3; i = *(v42 + 476))
                  {
                    if (!nw_protocol_get_input_frames(v76, v42, 0, 0, 0xFFFFFFFFLL, v42 + 120))
                    {
                      return 1;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v213 = __Block_byref_object_copy__36471;
                    *v214 = __Block_byref_object_dispose__36472;
                    *&v214[8] = nw_protocol_copy_http_definition();
                    v214[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    v194 = 0x40000000;
                    v195 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v196 = &unk_1E6A31940;
                    v197 = buf;
                    v198 = v42;
                    v199 = v42 + 120;
                    v79 = *(v42 + 120);
                    do
                    {
                      if (!v79)
                      {
                        break;
                      }

                      v80 = *(v79 + 32);
                      v81 = (v195)(type);
                      v79 = v80;
                    }

                    while ((v81 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v214[16] & 1) != 0 && *&v214[8])
                    {
                      os_release(*&v214[8]);
                    }
                  }

                  v96 = *(v42 + 480);
                  if (v96 == 1)
                  {
                    nw_webtransport_http3_handle_input(v42);
                    v102 = *(v42 + 448);
                    if (v102 && *(v102 + 72))
                    {
                      nw_protocol_input_available(*(v102 + 48), v102);
                    }

                    return 1;
                  }

                  if (v96)
                  {
                    return 1;
                  }

                  if ((*(v42 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v185 = __nwlog_obj();
                    if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
                    {
                      v186 = *(v42 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v42 + 496;
                      *&buf[22] = 2080;
                      v213 = " ";
                      *v214 = 1024;
                      *&v214[2] = v186;
                      _os_log_impl(&dword_181A37000, v185, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v42 + 476) != 4)
                  {
                    return 1;
                  }

                  v97 = (v42 + 96);
                  while (1)
                  {
                    capsule = nw_http_capsule_framer_read_capsule((v42 + 96), v42);
                    if (!capsule && !*(v42 + 136))
                    {
                      return 1;
                    }

                    if (*(v42 + 456))
                    {
                      goto LABEL_196;
                    }

                    v109 = *v97;
                    if (*v97 == -1)
                    {
LABEL_251:
                      v123 = __nwlog_obj();
                      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2048;
                        *&buf[14] = v109;
                        _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                      }

                      goto LABEL_196;
                    }

                    v110 = *(v42 + 104) != -1 && *(v42 + 112) == 0;
                    if (v109 <= 16770303)
                    {
                      if ((v109 - 16770048) < 6 || (v109 + 1) <= 4 && v109)
                      {
                        goto LABEL_251;
                      }
                    }

                    else if ((v109 - 420171065) <= 9 && ((1 << (v109 - 57)) & 0x2EF) != 0)
                    {
                      v211 = -1;
                      if (nw_http_capsule_framer_parse_vle_value((v42 + 96), v42, &v211))
                      {
                        stream = nw_webtransport_session_get_stream(v42, v211);
                        if (stream)
                        {
                          goto LABEL_245;
                        }

                        if ((v109 - 420171067) > 1)
                        {
                          goto LABEL_278;
                        }

                        v130 = v211;
                        v131 = *(v42 + 580);
                        if (v211 >> 60 || ((v211 ^ v131) & 1) == 0)
                        {
                          if ((v131 & 2) == 0)
                          {
                            v140 = __nwlog_obj();
                            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                            {
                              v141 = *(v42 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v42 + 496;
                              *&buf[22] = 2080;
                              v213 = " ";
                              *v214 = 1024;
                              *&v214[2] = v141;
                              v142 = v140;
                              v143 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                              goto LABEL_277;
                            }
                          }

LABEL_278:
                          if ((*(v42 + 580) & 2) == 0)
                          {
                            v144 = __nwlog_obj();
                            if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                            {
                              v145 = *(v42 + 492);
                              *buf = 136447490;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v42 + 496;
                              *&buf[22] = 2080;
                              v213 = " ";
                              *v214 = 1024;
                              *&v214[2] = v145;
                              *&v214[6] = 2048;
                              *&v214[8] = v211;
                              *&v214[16] = 2048;
                              *&v214[18] = v109;
                              _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                            }
                          }

                          goto LABEL_196;
                        }

                        v132 = *(v42 + 424);
                        if (!v132 || (v133 = *v132) == 0 || !*v133)
                        {
                          if ((v131 & 2) == 0)
                          {
                            v146 = __nwlog_obj();
                            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                            {
                              v147 = *(v42 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v42 + 496;
                              *&buf[22] = 2080;
                              v213 = " ";
                              *v214 = 1024;
                              *&v214[2] = v147;
                              v142 = v146;
                              v143 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_277:
                              _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_ERROR, v143, buf, 0x26u);
                            }
                          }

                          goto LABEL_278;
                        }

                        v134 = _nw_parameters_copy(*(v42 + 368));
                        *(v42 + 580) |= 0x20u;
                        *(v42 + 176) = v130;
                        v135 = (***(v42 + 424))(*(v42 + 424), *(v42 + 384), v134);
                        *(v42 + 176) = -1;
                        *(v42 + 580) &= ~0x20u;
                        if (v135)
                        {
                          v136 = nw_webtransport_session_get_stream(v42, v130);
                        }

                        else
                        {
                          v136 = 0;
                        }

                        if (v134)
                        {
                          os_release(v134);
                        }

                        if (!v136)
                        {
                          goto LABEL_278;
                        }

                        stream = v136;
                        if (*(v136 + 184) != 3)
                        {
LABEL_245:
                          *(v42 + 456) = stream;
                          goto LABEL_196;
                        }

                        if ((*(v42 + 580) & 2) != 0)
                        {
                          goto LABEL_196;
                        }

                        v148 = __nwlog_obj();
                        if (!os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_196;
                        }

                        v149 = *(v42 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v42 + 496;
                        *&buf[22] = 2080;
                        v213 = " ";
                        *v214 = 1024;
                        *&v214[2] = v149;
                        *&v214[6] = 2048;
                        *&v214[8] = v211;
                        v126 = v148;
                        v127 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                      }

                      else
                      {
                        if (!v110)
                        {
                          goto LABEL_196;
                        }

                        if ((*(v42 + 580) & 2) != 0)
                        {
                          goto LABEL_196;
                        }

                        v124 = __nwlog_obj();
                        if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_196;
                        }

                        v125 = *(v42 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v42 + 496;
                        *&buf[22] = 2080;
                        v213 = " ";
                        *v214 = 1024;
                        *&v214[2] = v125;
                        *&v214[6] = 2048;
                        *&v214[8] = v109;
                        v126 = v124;
                        v127 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                      }

                      _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_ERROR, v127, buf, 0x30u);
                    }

                    else if ((v109 - 16770304) < 4)
                    {
                      goto LABEL_251;
                    }

LABEL_196:
                    v108 = *(v42 + 96);
                    if ((*(v42 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v150 = __nwlog_obj();
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
                      {
                        v151 = *(v42 + 492);
                        v152 = *(v42 + 104);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2082;
                        *&buf[14] = v42 + 496;
                        *&buf[22] = 2080;
                        v213 = " ";
                        *v214 = 1024;
                        *&v214[2] = v151;
                        *&v214[6] = 2048;
                        *&v214[8] = v108;
                        *&v214[16] = 2048;
                        *&v214[18] = v152;
                        _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                      }
                    }

                    if (v108 > 16770303)
                    {
                      if (v108 <= 420171064)
                      {
                        if ((v108 - 16770304) < 4)
                        {
                          goto LABEL_215;
                        }

                        if (v108 == 420171064)
                        {
                          goto LABEL_214;
                        }

                        goto LABEL_272;
                      }

                      if ((v108 - 420171065) >= 2)
                      {
                        if ((v108 - 420171067) < 2)
                        {
                          v111 = *(v42 + 456);
                          v113 = v108 == 420171068 && capsule;
                          v205[0] = MEMORY[0x1E69E9820];
                          v205[1] = 0x40000000;
                          v206 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                          v207 = &__block_descriptor_tmp_34_36485;
                          v210 = v113;
                          v208 = v42 + 96;
                          v209 = v111;
                          v114 = *(v42 + 136);
                          do
                          {
                            if (!v114)
                            {
                              break;
                            }

                            v115 = *(v114 + 32);
                            v116 = (v206)(v205);
                            v114 = v115;
                          }

                          while ((v116 & 1) != 0);
                          if (!v113)
                          {
                            goto LABEL_271;
                          }

                          nw_protocol_input_finished(v111, v42);
                        }

                        goto LABEL_272;
                      }

                      if (capsule)
                      {
                        v117 = *(v42 + 456);
                        v211 = -1;
                        if (nw_http_capsule_framer_parse_vle_value((v42 + 96), v42, &v211))
                        {
                          if (!v117 || (*(v117 + 276) & 0x10) == 0)
                          {
                            v118 = __nwlog_obj();
                            if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                            {
                              if (v117)
                              {
                                v119 = (v117 + 192);
                              }

                              else
                              {
                                v119 = "";
                              }

                              v120 = " ";
                              if (!v117)
                              {
                                v120 = "";
                              }

                              v121 = *(v117 + 88);
                              if (v121)
                              {
                                v104 = *(v121 + 492);
                              }

                              else
                              {
                                v104 = -1;
                              }

                              v105 = *(v117 + 64);
                              *buf = 136448002;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v119;
                              *&buf[22] = 2080;
                              v213 = v120;
                              *v214 = 1024;
                              *&v214[2] = v104;
                              *&v214[6] = 2048;
                              *&v214[8] = v105;
                              *&v214[16] = 2048;
                              *&v214[18] = v108;
                              v215 = 2048;
                              v216 = v105;
                              v217 = 2048;
                              v218 = v211;
                              _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                            }
                          }

                          nw_protocol_webtransport_stream_error(v117, v42);
                          nw_protocol_webtransport_stream_disconnect(v117, v106);
                        }

                        else if ((*(v42 + 580) & 2) == 0)
                        {
                          v128 = __nwlog_obj();
                          if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                          {
                            v129 = *(v42 + 492);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2082;
                            *&buf[14] = v42 + 496;
                            *&buf[22] = 2080;
                            v213 = " ";
                            *v214 = 1024;
                            *&v214[2] = v129;
                            *&v214[6] = 2048;
                            *&v214[8] = v108;
                            _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                          }
                        }

LABEL_192:
                        *(v42 + 456) = 0;
                        nw_http_capsule_complete_capsule(v42 + 96);
                      }
                    }

                    else
                    {
                      if (v108 <= 16770047)
                      {
                        if ((v108 - 1) < 3 || v108 == -1)
                        {
LABEL_215:
                          v112 = __nwlog_obj();
                          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2048;
                            *&buf[14] = v108;
                            _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                          }

                          goto LABEL_272;
                        }

                        if (!v108)
                        {
                          v111 = *(v42 + 448);
                          if (v111 && *(v111 + 184) != 3)
                          {
                            v200[0] = MEMORY[0x1E69E9820];
                            v200[1] = 0x40000000;
                            v201 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                            v202 = &__block_descriptor_tmp_35_36486;
                            v203 = v42 + 96;
                            v204 = v111;
                            v137 = *(v42 + 136);
                            do
                            {
                              if (!v137)
                              {
                                break;
                              }

                              v138 = *(v137 + 32);
                              v139 = (v201)(v200);
                              v137 = v138;
                            }

                            while ((v139 & 1) != 0);
LABEL_271:
                            nw_protocol_input_available(v111, v42);
                            goto LABEL_272;
                          }

LABEL_214:
                          nw_frame_array_finalize(v42 + 136, 1, 1);
                        }
                      }

                      else if ((v108 - 16770048) < 6)
                      {
                        goto LABEL_215;
                      }

LABEL_272:
                      if (capsule)
                      {
                        goto LABEL_192;
                      }
                    }
                  }
                }

                if ((*(v42 + 580) & 2) == 0)
                {
                  v157 = __nwlog_obj();
                  if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                  {
                    v158 = *(v42 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v42 + 496;
                    *&buf[22] = 2080;
                    v213 = " ";
                    *v214 = 1024;
                    *&v214[2] = v158;
                    _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v159 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v205[0]) = 0;
                if (!__nwlog_fault(v159, type, v205))
                {
                  goto LABEL_381;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v160 = __nwlog_obj();
                  v161 = type[0];
                  if (!os_log_type_enabled(v160, type[0]))
                  {
                    goto LABEL_381;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v162 = "%{public}s output handler has no get_input_frames callback";
                  goto LABEL_380;
                }

                if (LOBYTE(v205[0]) != 1)
                {
                  v160 = __nwlog_obj();
                  v161 = type[0];
                  if (!os_log_type_enabled(v160, type[0]))
                  {
                    goto LABEL_381;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v162 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                  goto LABEL_380;
                }

                v167 = __nw_create_backtrace_string();
                v160 = __nwlog_obj();
                v161 = type[0];
                v168 = os_log_type_enabled(v160, type[0]);
                if (!v167)
                {
                  if (!v168)
                  {
                    goto LABEL_381;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v162 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                  goto LABEL_380;
                }

                if (v168)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v167;
                  v169 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_334:
                  _os_log_impl(&dword_181A37000, v160, v161, v169, buf, 0x16u);
                }
              }

              else
              {
                if (v65)
                {
                  return 1;
                }

                *(v42 + 476) = 3;
                v74 = *(v42 + 48);
                if (v74)
                {
                  v75 = *(v74 + 40);
                  if (v75)
                  {
                    *(v42 + 440) = v75;
                    return 1;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v159 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v205[0]) = 0;
                  if (!__nwlog_fault(v159, type, v205))
                  {
                    goto LABEL_381;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    if (!os_log_type_enabled(v160, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v162 = "%{public}s called with null webtransport_stream";
                    goto LABEL_380;
                  }

                  if (LOBYTE(v205[0]) != 1)
                  {
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    if (!os_log_type_enabled(v160, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v162 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_380;
                  }

                  v167 = __nw_create_backtrace_string();
                  v160 = __nwlog_obj();
                  v161 = type[0];
                  v171 = os_log_type_enabled(v160, type[0]);
                  if (!v167)
                  {
                    if (!v171)
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v162 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_380;
                  }

                  if (v171)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v167;
                    v169 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                    goto LABEL_334;
                  }
                }

                else
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v159 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v205[0]) = 0;
                  if (!__nwlog_fault(v159, type, v205))
                  {
                    goto LABEL_381;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    if (!os_log_type_enabled(v160, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v162 = "%{public}s called with null input_protocol";
                    goto LABEL_380;
                  }

                  if (LOBYTE(v205[0]) != 1)
                  {
                    v160 = __nwlog_obj();
                    v161 = type[0];
                    if (!os_log_type_enabled(v160, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v162 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_380;
                  }

                  v167 = __nw_create_backtrace_string();
                  v160 = __nwlog_obj();
                  v161 = type[0];
                  v170 = os_log_type_enabled(v160, type[0]);
                  if (!v167)
                  {
                    if (!v170)
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v162 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_380;
                  }

                  if (v170)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v167;
                    v169 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                    goto LABEL_334;
                  }
                }
              }

              free(v167);
              if (!v159)
              {
                return 1;
              }

              goto LABEL_382;
            }
          }
        }

        v50 = nw_protocol_copy_info(v46);
        v51 = v50;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_27_36446;
        aBlock[4] = v42;
        if (v50)
        {
          _nw_array_apply(v50, aBlock);
          v52 = *(v42 + 400);
          if (!v52)
          {
            os_release(v51);
            return 1;
          }
        }

        else
        {
          v52 = *(v42 + 400);
          if (!v52)
          {
            return 1;
          }
        }

        version = nw_http_connection_metadata_get_version(v52);
        v54 = version;
        if (version == 4)
        {
          v55 = 0;
        }

        else
        {
          if (version != 5)
          {
LABEL_87:
            v56 = v46[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v154 = v46[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v56 = v154;
            }

            v57 = nw_protocols_are_equal(v56, &nw_protocol_http_messaging_identifier::protocol_identifier);
            v58 = *(v42 + 580);
            if (v57)
            {
              v58 |= 0x40u;
              *(v42 + 580) = v58;
            }

            if ((v58 & 2) == 0)
            {
              v59 = __nwlog_obj();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                v60 = *(v42 + 492);
                if (v54 == 4)
                {
                  v61 = 2;
                }

                else
                {
                  v61 = 3;
                }

                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v42 + 496;
                *&buf[22] = 2080;
                v213 = " ";
                *v214 = 1024;
                *&v214[2] = v60;
                *&v214[6] = 1024;
                *&v214[8] = v61;
                _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
              }
            }

            if (v51)
            {
              os_release(v51);
            }

            goto LABEL_99;
          }

          v55 = 1;
        }

        *(v42 + 480) = v55;
        goto LABEL_87;
      }

      __nwlog_obj();
      v31 = v29[2];
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = "connection_state->local_sessions";
      *&buf[22] = 2048;
      v213 = 1;
      *v214 = 2048;
      *&v214[2] = v31;
      v32 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v205[0]) = 0;
      if (__nwlog_fault(v32, type, v205))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v33 = __nwlog_obj();
          v34 = type[0];
          if (os_log_type_enabled(v33, type[0]))
          {
            v35 = v29[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v213 = 1;
            *v214 = 2048;
            *&v214[2] = v35;
            v36 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_59:
            _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x2Au);
          }
        }

        else if (LOBYTE(v205[0]) == 1)
        {
          v37 = __nw_create_backtrace_string();
          v33 = __nwlog_obj();
          v34 = type[0];
          v38 = os_log_type_enabled(v33, type[0]);
          if (v37)
          {
            if (v38)
            {
              v39 = v29[2];
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v213 = 1;
              *v214 = 2048;
              *&v214[2] = v39;
              *&v214[10] = 2082;
              *&v214[12] = v37;
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v37);
            goto LABEL_60;
          }

          if (v38)
          {
            v41 = v29[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v213 = 1;
            *v214 = 2048;
            *&v214[2] = v41;
            v36 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_59;
          }
        }

        else
        {
          v33 = __nwlog_obj();
          v34 = type[0];
          if (os_log_type_enabled(v33, type[0]))
          {
            v40 = v29[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v213 = 1;
            *v214 = 2048;
            *&v214[2] = v40;
            v36 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      if (v32)
      {
        free(v32);
      }

      v29[2] = 0;
      goto LABEL_63;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
    v82 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v205[0]) = 0;
    if (!__nwlog_fault(v82, type, v205))
    {
      goto LABEL_186;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v83 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v83, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v85 = "%{public}s called with null webtransport_session";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (LOBYTE(v205[0]) != 1)
    {
      v83 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v83, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v85 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    v92 = __nw_create_backtrace_string();
    v83 = __nwlog_obj();
    v84 = type[0];
    v95 = os_log_type_enabled(v83, type[0]);
    if (!v92)
    {
      if (v95)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v85 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v95)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = v92;
      v94 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_160;
    }

    goto LABEL_161;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
  v82 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v205[0]) = 0;
  if (!__nwlog_fault(v82, type, v205))
  {
    goto LABEL_186;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (LOBYTE(v205[0]) != 1)
    {
      v83 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v83, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v85 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    v92 = __nw_create_backtrace_string();
    v83 = __nwlog_obj();
    v84 = type[0];
    v93 = os_log_type_enabled(v83, type[0]);
    if (!v92)
    {
      if (v93)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v85 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v93)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = v92;
      v94 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_160:
      _os_log_impl(&dword_181A37000, v83, v84, v94, buf, 0x16u);
    }

LABEL_161:
    free(v92);
    goto LABEL_186;
  }

  v83 = __nwlog_obj();
  v84 = type[0];
  if (os_log_type_enabled(v83, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
    v85 = "%{public}s called with null protocol";
LABEL_185:
    _os_log_impl(&dword_181A37000, v83, v84, v85, buf, 0xCu);
  }

LABEL_186:
  if (v82)
  {
    free(v82);
  }

  return 0;
}

BOOL nw_protocol_webtransport_session_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_webtransport_session_add_listen_handler";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &type, &v24))
    {
      goto LABEL_46;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v24 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_46;
        }

        *buf = 136446210;
        v27 = "nw_protocol_webtransport_session_add_listen_handler";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_45;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v18 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
          goto LABEL_46;
        }

        *buf = 136446210;
        v27 = "nw_protocol_webtransport_session_add_listen_handler";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_45;
      }

      if (v18)
      {
        *buf = 136446466;
        v27 = "nw_protocol_webtransport_session_add_listen_handler";
        v28 = 2082;
        v29 = backtrace_string;
        v19 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v9, v10, v19, buf, 0x16u);
      }

LABEL_34:
      free(backtrace_string);
      goto LABEL_46;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v27 = "nw_protocol_webtransport_session_add_listen_handler";
    v11 = "%{public}s called with null protocol";
LABEL_45:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
LABEL_46:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_webtransport_session_add_listen_handler";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &type, &v24))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_session_add_listen_handler";
      v11 = "%{public}s called with null webtransport_session";
      goto LABEL_45;
    }

    if (v24 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v27 = "nw_protocol_webtransport_session_add_listen_handler";
      v11 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v20 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v20)
      {
        *buf = 136446466;
        v27 = "nw_protocol_webtransport_session_add_listen_handler";
        v28 = 2082;
        v29 = backtrace_string;
        v19 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (!v20)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v27 = "nw_protocol_webtransport_session_add_listen_handler";
    v11 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_45;
  }

  if ((handle[145] & 2) == 0 && gLogDatapath == 1)
  {
    v12 = a2;
    v13 = a3;
    v14 = __nwlog_obj();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    a3 = v13;
    a2 = v12;
    if (v15)
    {
      v16 = handle[123];
      *buf = 136446978;
      v27 = "nw_protocol_webtransport_session_add_listen_handler";
      v28 = 2082;
      v29 = (handle + 124);
      v30 = 2080;
      v31 = " ";
      v32 = 1024;
      v33 = v16;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      a3 = v13;
      a2 = v12;
    }
  }

  if (*(handle + 53))
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = handle[123];
        *buf = 136446978;
        v27 = "nw_protocol_webtransport_session_add_listen_handler";
        v28 = 2082;
        v29 = (handle + 124);
        v30 = 2080;
        v31 = " ";
        v32 = 1024;
        v33 = v6;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Already have a listen handler, ignoring add", buf, 0x26u);
        return 0;
      }

      return result;
    }

    return 0;
  }

  *(handle + 53) = a2;
  a2->protocol_handler = handle;
  if (a3)
  {
    *(handle + 580) |= 8u;
    v7 = a2;
    nw_protocol_remove_instance(handle);
    a2 = v7;
  }

  if ((handle[145] & 2) == 0 && gLogDatapath == 1)
  {
    v21 = a2;
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = handle[123];
      *buf = 136447234;
      v27 = "nw_protocol_webtransport_session_add_listen_handler";
      v28 = 2082;
      v29 = (handle + 124);
      v30 = 2080;
      v31 = " ";
      v32 = 1024;
      v33 = v23;
      v34 = 2048;
      v35 = v21;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol listen handler %p", buf, 0x30u);
    }
  }

  return 1;
}

uint64_t nw_protocol_webtransport_session_copy_info(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if ((*(v2 + 580) & 2) == 0 && gLogDatapath == 1)
      {
        v8 = a2;
        v9 = a1;
        v10 = __nwlog_obj();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        a2 = v8;
        v12 = v11;
        a1 = v9;
        if (v12)
        {
          v13 = *(v2 + 492);
          *buf = 136446978;
          v21 = "nw_protocol_webtransport_session_copy_info";
          v22 = 2082;
          v23 = (v2 + 496);
          v24 = 2080;
          v25 = " ";
          v26 = 1024;
          v27 = v13;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
          a1 = v9;
          a2 = v8;
        }
      }

      return nw_protocol_common_copy_info(a1, a2);
    }

    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_copy_info";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v4, &type, &v18))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_webtransport_session_copy_info";
        v7 = "%{public}s called with null webtransport_session";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v18 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_webtransport_session_copy_info";
        v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v17 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v21 = "nw_protocol_webtransport_session_copy_info";
        v7 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v17)
    {
      *buf = 136446466;
      v21 = "nw_protocol_webtransport_session_copy_info";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_session_copy_info";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v4, &type, &v18))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_webtransport_session_copy_info";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v15 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_protocol_webtransport_session_copy_info";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      *buf = 136446466;
      v21 = "nw_protocol_webtransport_session_copy_info";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v5, v6, v16, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_copy_info";
    v7 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_36:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_protocol_webtransport_session_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_output_finished";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v16 = "nw_protocol_webtransport_session_output_finished";
      v8 = "%{public}s called with null protocol";
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
          v16 = "nw_protocol_webtransport_session_output_finished";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v5)
        {
          return;
        }

LABEL_36:
        free(v5);
        return;
      }

      if (!v10)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v16 = "nw_protocol_webtransport_session_output_finished";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v16 = "nw_protocol_webtransport_session_output_finished";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v4 = handle[123];
        *buf = 136446978;
        v16 = "nw_protocol_webtransport_session_output_finished";
        v17 = 2082;
        v18 = (handle + 124);
        v19 = 2080;
        v20 = " ";
        v21 = 1024;
        v22 = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_webtransport_session_output_finished";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_output_finished";
    v8 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v13 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_output_finished";
    v8 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v12 = os_log_type_enabled(v6, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_output_finished";
    v8 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_webtransport_session_output_finished";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
    goto LABEL_36;
  }
}

void nw_protocol_webtransport_session_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_input_finished";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v3, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_webtransport_session_input_finished";
      v6 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v10 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_protocol_webtransport_session_input_finished";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v3)
        {
          return;
        }

LABEL_37:
        free(v3);
        return;
      }

      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_webtransport_session_input_finished";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_webtransport_session_input_finished";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = handle[123];
        *buf = 136446978;
        v16 = "nw_protocol_webtransport_session_input_finished";
        v17 = 2082;
        v18 = (handle + 124);
        v19 = 2080;
        v20 = " ";
        v21 = 1024;
        v22 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_webtransport_session_input_finished";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v3, &type, &v13))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_input_finished";
    v6 = "%{public}s called with null webtransport_session";
    goto LABEL_35;
  }

  if (v13 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_input_finished";
    v6 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_35;
  }

  v11 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v12 = os_log_type_enabled(v4, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_input_finished";
    v6 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_35;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_webtransport_session_input_finished";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v3)
  {
    goto LABEL_37;
  }
}

void nw_protocol_webtransport_session_notify(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_notify";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v4, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_session_notify";
      v7 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v16 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_protocol_webtransport_session_notify";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          return;
        }

LABEL_38:
        free(v4);
        return;
      }

      if (!v16)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_session_notify";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_session_notify";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_37;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if ((*(v3 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v8 = a3;
      v9 = a2;
      v10 = a1;
      v11 = __nwlog_obj();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      a2 = v9;
      a3 = v8;
      v13 = v12;
      a1 = v10;
      if (v13)
      {
        v14 = *(v3 + 492);
        *buf = 136446978;
        v22 = "nw_protocol_webtransport_session_notify";
        v23 = 2082;
        v24 = (v3 + 496);
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v14;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        a1 = v10;
        a2 = v9;
        a3 = v8;
      }
    }

    nw_protocol_notify_quiet(*(a1 + 48), a2, a3);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_session_notify";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v4, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_notify";
    v7 = "%{public}s called with null webtransport_session";
    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_notify";
    v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_36;
  }

  v17 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v18 = os_log_type_enabled(v5, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_notify";
    v7 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_36;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_protocol_webtransport_session_notify";
    v23 = 2082;
    v24 = v17;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v4)
  {
    goto LABEL_38;
  }
}
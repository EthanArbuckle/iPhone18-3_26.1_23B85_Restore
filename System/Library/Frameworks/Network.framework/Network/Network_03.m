uint64_t nw_protocol_ipv4_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v6 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v8 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v70 = "nw_protocol_ipv4_finalize_output_frames";
        v9 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v67 = 0;
        if (__nwlog_fault(v9, &type, &v67))
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
              v70 = "nw_protocol_ipv4_finalize_output_frames";
              v12 = "%{public}s called with null ipv4";
LABEL_51:
              v34 = v10;
              v35 = v11;
LABEL_52:
              _os_log_impl(&dword_181A37000, v34, v35, v12, buf, 0xCu);
            }
          }

          else if (v67 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            v23 = type;
            v24 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v24)
              {
                *buf = 136446466;
                v70 = "nw_protocol_ipv4_finalize_output_frames";
                v71 = 2082;
                v72 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_53;
            }

            if (v24)
            {
              *buf = 136446210;
              v70 = "nw_protocol_ipv4_finalize_output_frames";
              v12 = "%{public}s called with null ipv4, no backtrace";
              v34 = v22;
              v35 = v23;
              goto LABEL_52;
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
              v70 = "nw_protocol_ipv4_finalize_output_frames";
              v12 = "%{public}s called with null ipv4, backtrace limit exceeded";
              goto LABEL_51;
            }
          }
        }

LABEL_53:
        if (v9)
        {
          free(v9);
        }

        result = 0;
        goto LABEL_56;
      }

      v8 = *a1[1].flow_id;
    }

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 0x40000000;
    v62 = ___ZL39nw_protocol_ipv4_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v63 = &__block_descriptor_tmp_32_91664;
    p_output_handler = &v8[1].output_handler;
    v65 = a2;
    v66 = a1;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v14 = *(tqh_first + 4);
      v15 = (v62)(v61);
      tqh_first = v14;
    }

    while ((v15 & 1) != 0);
    output_handler = v3->output_handler;
    if (!output_handler)
    {
      __nwlog_obj();
      *buf = 136446210;
      v70 = "__nw_protocol_finalize_output_frames";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v67 = 0;
      if (!__nwlog_fault(v9, &type, &v67))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v70 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol";
        goto LABEL_51;
      }

      if (v67 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v70 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      v59 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v60 = os_log_type_enabled(v10, type);
      if (v59)
      {
        if (v60)
        {
          *buf = 136446466;
          v70 = "__nw_protocol_finalize_output_frames";
          v71 = 2082;
          v72 = v59;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v59);
        goto LABEL_53;
      }

      if (v60)
      {
        *buf = 136446210;
        v70 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    v17 = output_handler->handle;
    v18 = v3->output_handler;
    if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *output_handler[1].flow_id) != 0)
    {
      v25 = v18[1].callbacks;
      if (v25)
      {
        v19 = 0;
        v18[1].callbacks = (&v25->add_input_handler + 1);
        v20 = output_handler->callbacks;
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v19 = 0;
        v20 = output_handler->callbacks;
        if (!v20)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v19 = 1;
      v20 = output_handler->callbacks;
      if (!v20)
      {
        goto LABEL_71;
      }
    }

    finalize_output_frames = v20->finalize_output_frames;
    if (finalize_output_frames)
    {
      result = finalize_output_frames(output_handler, a2);
      if (v19)
      {
LABEL_56:
        if ((v6 & 1) == 0)
        {
          v36 = v3->handle;
          if (v36 == &nw_protocol_ref_counted_handle || v36 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
          {
            v37 = v3[1].callbacks;
            if (v37)
            {
              v38 = (v37 - 1);
              v3[1].callbacks = v38;
              if (!v38)
              {
                v39 = result;
                v40 = *v3[1].flow_id;
                if (v40)
                {
                  *v3[1].flow_id = 0;
                  v40[2](v40);
                  _Block_release(v40);
                }

                if (v3[1].flow_id[8])
                {
                  v41 = *v3[1].flow_id;
                  if (v41)
                  {
                    _Block_release(v41);
                  }
                }

                free(v3);
                return v39;
              }
            }
          }
        }

        return result;
      }

LABEL_38:
      v28 = output_handler->handle;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
      {
        v29 = output_handler[1].callbacks;
        if (v29)
        {
          v30 = (v29 - 1);
          output_handler[1].callbacks = v30;
          if (!v30)
          {
            v31 = result;
            v32 = *output_handler[1].flow_id;
            if (v32)
            {
              *output_handler[1].flow_id = 0;
              v32[2](v32);
              _Block_release(v32);
            }

            if (output_handler[1].flow_id[8])
            {
              v33 = *output_handler[1].flow_id;
              if (v33)
              {
                _Block_release(v33);
              }
            }

            free(output_handler);
            result = v31;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_71:
    __nwlog_obj();
    name = output_handler->identifier->name;
    *buf = 136446722;
    v70 = "__nw_protocol_finalize_output_frames";
    if (!name)
    {
      name = "invalid";
    }

    v71 = 2082;
    v72 = name;
    v73 = 2048;
    v74 = output_handler;
    v43 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (__nwlog_fault(v43, &type, &v67))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_106;
        }

        v46 = output_handler->identifier->name;
        if (!v46)
        {
          v46 = "invalid";
        }

        *buf = 136446722;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v46;
        v73 = 2048;
        v74 = output_handler;
        v47 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
LABEL_105:
        _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x20u);
        goto LABEL_106;
      }

      if (v67 != 1)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_106;
        }

        v57 = output_handler->identifier->name;
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446722;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v57;
        v73 = 2048;
        v74 = output_handler;
        v47 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
        goto LABEL_105;
      }

      v52 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v53 = os_log_type_enabled(v44, type);
      if (!v52)
      {
        if (!v53)
        {
          goto LABEL_106;
        }

        v58 = output_handler->identifier->name;
        if (!v58)
        {
          v58 = "invalid";
        }

        *buf = 136446722;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v58;
        v73 = 2048;
        v74 = output_handler;
        v47 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
        goto LABEL_105;
      }

      if (v53)
      {
        v54 = output_handler->identifier->name;
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446978;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v54;
        v73 = 2048;
        v74 = output_handler;
        v75 = 2082;
        v76 = v52;
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v52);
    }

LABEL_106:
    if (v43)
    {
      free(v43);
    }

    result = 0;
    if (v19)
    {
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  __nwlog_obj();
  *buf = 136446210;
  v70 = "nw_protocol_ipv4_finalize_output_frames";
  v48 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (__nwlog_fault(v48, &type, &v67))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v70 = "nw_protocol_ipv4_finalize_output_frames";
        v51 = "%{public}s called with null protocol";
LABEL_112:
        _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      }
    }

    else if (v67 == 1)
    {
      v55 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = type;
      v56 = os_log_type_enabled(v49, type);
      if (v55)
      {
        if (v56)
        {
          *buf = 136446466;
          v70 = "nw_protocol_ipv4_finalize_output_frames";
          v71 = 2082;
          v72 = v55;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v55);
        goto LABEL_113;
      }

      if (v56)
      {
        *buf = 136446210;
        v70 = "nw_protocol_ipv4_finalize_output_frames";
        v51 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_112;
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v70 = "nw_protocol_ipv4_finalize_output_frames";
        v51 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_112;
      }
    }
  }

LABEL_113:
  if (v48)
  {
    free(v48);
  }

  return 0;
}

uint64_t ___ZL39nw_protocol_ipv4_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (nw_frame_get_finalizer_context(a2) == *(a1 + 32))
  {
    v16 = (*(a1 + 40) + 8);
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
  }

  else
  {
    nw_frame_unclaim(a2, v4, 0x14u, 0);
    v55 = 0;
    v5 = nw_frame_unclaimed_bytes(a2, &v55);
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = v5;
      v8 = *(v6 + 48);
      if (v8)
      {
        ++*(v8 + 232);
      }

      *(v5 + 12) = *(v6 + 56);
      *(v5 + 9) = *(v6 + 134);
      *(v5 + 8) = *(v6 + 135);
      *v5 = 69;
      *(v5 + 2) = bswap32(v55) >> 16;
      if (a2)
      {
        v9 = *(a2 + 186) & 3;
        *(v5 + 1) = v9;
        v10 = (v5 + 1);
        v11 = *(a2 + 184);
        if (v11)
        {
          goto LABEL_60;
        }

        goto LABEL_7;
      }

      __nwlog_obj();
      __buf = 136446210;
      v59 = "__nw_frame_get_ecn_flag";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (__nwlog_fault(v23, &type, &v56))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_41;
          }

          __buf = 136446210;
          v59 = "__nw_frame_get_ecn_flag";
          v26 = "%{public}s called with null frame";
LABEL_40:
          _os_log_impl(&dword_181A37000, v24, v25, v26, &__buf, 0xCu);
          goto LABEL_41;
        }

        if (v56 != 1)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_41;
          }

          __buf = 136446210;
          v59 = "__nw_frame_get_ecn_flag";
          v26 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_40;
        }

        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v28 = os_log_type_enabled(v24, type);
        if (!backtrace_string)
        {
          if (!v28)
          {
            goto LABEL_41;
          }

          __buf = 136446210;
          v59 = "__nw_frame_get_ecn_flag";
          v26 = "%{public}s called with null frame, no backtrace";
          goto LABEL_40;
        }

        if (v28)
        {
          __buf = 136446466;
          v59 = "__nw_frame_get_ecn_flag";
          v60 = 2082;
          v61 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_41:
      if (v23)
      {
        free(v23);
      }

      *(v7 + 1) = 0;
      v10 = (v7 + 1);
      __nwlog_obj();
      __buf = 136446210;
      v59 = "__nw_frame_get_dscp_value";
      v29 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v29, &type, &v56))
      {
        goto LABEL_57;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_57;
        }

        __buf = 136446210;
        v59 = "__nw_frame_get_dscp_value";
        v32 = "%{public}s called with null frame";
      }

      else if (v56 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v34 = os_log_type_enabled(v30, type);
        if (v33)
        {
          if (v34)
          {
            __buf = 136446466;
            v59 = "__nw_frame_get_dscp_value";
            v60 = 2082;
            v61 = v33;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
          }

          free(v33);
          v10 = (v7 + 1);
          goto LABEL_57;
        }

        v10 = (v7 + 1);
        if (!v34)
        {
LABEL_57:
          if (v29)
          {
            free(v29);
          }

LABEL_7:
          v11 = *(*(a1 + 32) + 136);
          if (!v11)
          {
            if (a2)
            {
              goto LABEL_9;
            }

            goto LABEL_61;
          }

          v9 = *v10;
LABEL_60:
          *v10 = v9 | (4 * v11);
          if (a2)
          {
LABEL_9:
            v12 = *(a2 + 180);
            if (v12 == 2)
            {
              goto LABEL_12;
            }

            v13 = *(a1 + 32);
            if (v12)
            {
LABEL_78:
              v15 = 0;
              *(v7 + 4) = 0x400000;
              goto LABEL_79;
            }

LABEL_11:
            if ((*(v13 + 137) & 8) != 0)
            {
LABEL_12:
              *(v7 + 6) = 0;
              LOWORD(__buf) = 0;
              v14 = (BYTE4(a2) ^ BYTE6(a2) ^ BYTE2(a2) ^ a2);
              do
              {
                arc4random_buf(&__buf, 2uLL);
              }

              while (v14 == __buf);
              v15 = __buf ^ v14;
              *(v7 + 4) = v15;
              v13 = *(a1 + 32);
LABEL_79:
              *(v7 + 10) = 0;
              if ((*(v13 + 137) & 0x20) != 0)
              {
                if ((*(v13 + 137) & 0x40) != 0)
                {
                  *(v7 + 10) = nw_ipv4_checksum(v7);
                  v48 = *(v13 + 48);
                  if (v48)
                  {
                    *(v48 + 312) = vaddq_s64(*(v48 + 312), xmmword_182B08E90);
                  }

                  *(v13 + 137) &= ~0x40u;
                }

                else
                {
                  *(v7 + 10) = -16657;
                  *(v13 + 137) |= 0x40u;
                }

                goto LABEL_89;
              }

              if ((*(v13 + 137) & 0x10) == 0)
              {
                if ((v7 & 3) != 0)
                {
                  v41.i32[0] = *v7;
                  v41.i32[1] = *(v7 + 6);
                  v41.i64[1] = *(v7 + 12);
                  v42 = vaddlvq_u16(v41);
                  LODWORD(v43) = ((v42 + v15) >> 16) + (v42 + v15) + ((((v42 + v15) >> 16) + (v42 + v15)) >> 16);
                }

                else
                {
                  v44 = vaddlvq_u32(*v7);
                  v45 = ((v44 + *(v7 + 16)) >> 32) + (v44 + *(v7 + 16));
                  v43 = (((v45 >> 16) + v45) >> 16) + (WORD1(v45) + v45);
                  LOWORD(v43) = WORD1(v43) + v43;
                }

                *(v7 + 10) = ~v43;
                v46 = *(v13 + 48);
                if (v46)
                {
                  *(v46 + 312) = vaddq_s64(*(v46 + 312), xmmword_182B08E90);
                }

LABEL_89:
                ++**(a1 + 32);
                return 1;
              }

              if (a2)
              {
                if ((*(a2 + 204) & 0x100) != 0)
                {
                  *(a2 + 203) |= 4u;
                }

                goto LABEL_89;
              }

              __nwlog_obj();
              __buf = 136446210;
              v59 = "__nw_frame_add_internet_csum_flags";
              v49 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v56 = 0;
              if (__nwlog_fault(v49, &type, &v56))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v50 = __nwlog_obj();
                  v51 = type;
                  if (!os_log_type_enabled(v50, type))
                  {
                    goto LABEL_110;
                  }

                  __buf = 136446210;
                  v59 = "__nw_frame_add_internet_csum_flags";
                  v52 = "%{public}s called with null frame";
                  goto LABEL_109;
                }

                if (v56 != 1)
                {
                  v50 = __nwlog_obj();
                  v51 = type;
                  if (!os_log_type_enabled(v50, type))
                  {
                    goto LABEL_110;
                  }

                  __buf = 136446210;
                  v59 = "__nw_frame_add_internet_csum_flags";
                  v52 = "%{public}s called with null frame, backtrace limit exceeded";
                  goto LABEL_109;
                }

                v53 = __nw_create_backtrace_string();
                v50 = __nwlog_obj();
                v51 = type;
                v54 = os_log_type_enabled(v50, type);
                if (v53)
                {
                  if (v54)
                  {
                    __buf = 136446466;
                    v59 = "__nw_frame_add_internet_csum_flags";
                    v60 = 2082;
                    v61 = v53;
                    _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
                  }

                  free(v53);
                  goto LABEL_110;
                }

                if (v54)
                {
                  __buf = 136446210;
                  v59 = "__nw_frame_add_internet_csum_flags";
                  v52 = "%{public}s called with null frame, no backtrace";
LABEL_109:
                  _os_log_impl(&dword_181A37000, v50, v51, v52, &__buf, 0xCu);
                }
              }

LABEL_110:
              if (v49)
              {
                free(v49);
              }

              goto LABEL_89;
            }

            goto LABEL_78;
          }

LABEL_61:
          __nwlog_obj();
          __buf = 136446210;
          v59 = "__nw_frame_get_fragmentation";
          v35 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v56 = 0;
          if (__nwlog_fault(v35, &type, &v56))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v36 = __nwlog_obj();
              v37 = type;
              if (os_log_type_enabled(v36, type))
              {
                __buf = 136446210;
                v59 = "__nw_frame_get_fragmentation";
                v38 = "%{public}s called with null frame";
LABEL_74:
                _os_log_impl(&dword_181A37000, v36, v37, v38, &__buf, 0xCu);
              }
            }

            else if (v56 == 1)
            {
              v39 = __nw_create_backtrace_string();
              v36 = __nwlog_obj();
              v37 = type;
              v40 = os_log_type_enabled(v36, type);
              if (v39)
              {
                if (v40)
                {
                  __buf = 136446466;
                  v59 = "__nw_frame_get_fragmentation";
                  v60 = 2082;
                  v61 = v39;
                  _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
                }

                free(v39);
                goto LABEL_75;
              }

              if (v40)
              {
                __buf = 136446210;
                v59 = "__nw_frame_get_fragmentation";
                v38 = "%{public}s called with null frame, no backtrace";
                goto LABEL_74;
              }
            }

            else
            {
              v36 = __nwlog_obj();
              v37 = type;
              if (os_log_type_enabled(v36, type))
              {
                __buf = 136446210;
                v59 = "__nw_frame_get_fragmentation";
                v38 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_74;
              }
            }
          }

LABEL_75:
          if (v35)
          {
            free(v35);
          }

          v13 = *(a1 + 32);
          goto LABEL_11;
        }

        __buf = 136446210;
        v59 = "__nw_frame_get_dscp_value";
        v32 = "%{public}s called with null frame, no backtrace";
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_57;
        }

        __buf = 136446210;
        v59 = "__nw_frame_get_dscp_value";
        v32 = "%{public}s called with null frame, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v30, v31, v32, &__buf, 0xCu);
      goto LABEL_57;
    }

    if (!v6 || (*(v6 + 137) & 1) == 0)
    {
      v19 = __nwlog_obj();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      v6 = *(a1 + 32);
      if (v20)
      {
        v21 = (v6 + 138);
        if (!v6)
        {
          v21 = "";
        }

        __buf = 136446978;
        v59 = "nw_protocol_ipv4_finalize_output_frames_block_invoke";
        v60 = 2082;
        v61 = v21;
        v22 = " ";
        if (!v6)
        {
          v22 = "";
        }

        v62 = 2080;
        v63 = v22;
        v64 = 2048;
        v65 = v6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", &__buf, 0x2Au);
        v6 = *(a1 + 32);
      }
    }

    *(v6 + 48) = 0;
  }

  return 1;
}

uint64_t nw_channel_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      handle[462] = handle[462] & 0xF9 | 2;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v27 = 0;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        *type = 0;
        nw_frame_array_get_frame_count(a2, 1, type);
      }

      *type = 0;
      v24 = type;
      tqh_first = a2->tqh_first;
      if (a2->tqh_first)
      {
        *(tqh_first + 5) = type;
        tqh_last = a2->tqh_last;
        *type = tqh_first;
        v24 = tqh_last;
        a2->tqh_first = 0;
        a2->tqh_last = &a2->tqh_first;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v20 = ___ZL33nw_channel_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v21 = &unk_1E6A3D688;
      v22 = buf;
      do
      {
        v6 = *type;
        if (!*type)
        {
          break;
        }

        v7 = *(*type + 32);
        v8 = *(*type + 40);
        v9 = (v7 + 40);
        if (!v7)
        {
          v9 = &v24;
        }

        *v9 = v8;
        *v8 = v7;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
      }

      while (((v20)(v19) & 1) != 0);
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1)
      {
        if (kdebug_is_enabled())
        {
          kdebug_trace();
        }
      }

      _Block_object_dispose(buf, 8);
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v11, type, &v25))
    {
      goto LABEL_53;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v14 = "%{public}s called with null channel";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v25 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v14 = "%{public}s called with null channel, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v18 = os_log_type_enabled(v12, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v14 = "%{public}s called with null channel, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v17 = "%{public}s called with null channel, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_channel_finalize_output_frames";
  v11 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v11, type, &v25))
  {
    goto LABEL_53;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v25 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v14 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v16 = os_log_type_enabled(v12, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v14 = "%{public}s called with null channel_protocol, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v16)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v17 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v12, v13, v17, buf, 0x16u);
    }

LABEL_43:
    free(backtrace_string);
    goto LABEL_53;
  }

  v12 = __nwlog_obj();
  v13 = type[0];
  if (os_log_type_enabled(v12, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_channel_finalize_output_frames";
    v14 = "%{public}s called with null channel_protocol";
LABEL_52:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
  }

LABEL_53:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

uint64_t ___ZL33nw_channel_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_channel_set_internet_checksum_handler(nw_frame *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  metadata = nw_frame_get_metadata(a1);
  if (metadata)
  {
    if ((*(metadata + 24) & 1) == 0)
    {
      return 45;
    }

    v8 = *metadata;

    return MEMORY[0x1EEE72DE0](v8, a2, a3, a4);
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_channel_set_internet_checksum_handler";
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
        v19 = "nw_channel_set_internet_checksum_handler";
        v12 = "%{public}s called with null frame_info";
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          v19 = "nw_channel_set_internet_checksum_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null frame_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_channel_set_internet_checksum_handler";
        v12 = "%{public}s called with null frame_info, no backtrace";
        goto LABEL_20;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_channel_set_internet_checksum_handler";
        v12 = "%{public}s called with null frame_info, backtrace limit exceeded";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (v9)
  {
    free(v9);
  }

  return 22;
}

uint64_t nw_frame_get_finalizer_context(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 88);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_frame_get_finalizer_context";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_frame_get_finalizer_context";
        v5 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "nw_frame_get_finalizer_context";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_frame_get_finalizer_context";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_frame_get_finalizer_context";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_channel_finalize_output_frame(nw_frame *a1, int a2, char *a3)
{
  v244 = *MEMORY[0x1E69E9840];
  metadata = nw_frame_get_metadata(a1);
  v7 = metadata;
  if (!metadata || !*metadata)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446210;
    v239 = "nw_channel_finalize_output_frame";
    v11 = "%{public}s Frame has no packet";
LABEL_13:
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  if (!metadata[1])
  {
    if ((*(a3 + 230) & 0x1000) == 0)
    {
      goto LABEL_114;
    }

    if (!*(a3 + 17))
    {
      goto LABEL_114;
    }

    v20 = os_channel_packet_free();
    if (!v20)
    {
      goto LABEL_114;
    }

    if (!*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      goto LABEL_114;
    }

    if ((a3[462] & 8) != 0)
    {
LABEL_114:
      *v7 = 0;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136446210;
      v239 = "nw_channel_finalize_output_frame";
      v11 = "%{public}s Frame has no buflet";
      goto LABEL_13;
    }

    v21 = v20;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
      goto LABEL_114;
    }

    __nwlog_obj();
    *buf = 136446466;
    v239 = "nw_channel_finalize_output_frame";
    v240 = 1024;
    *v241 = v21;
    v193 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v193, &v242, type))
    {
      if (v242 == 17)
      {
        v194 = __nwlog_obj();
        v195 = v242;
        if (!os_log_type_enabled(v194, v242))
        {
          goto LABEL_522;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v21;
        v196 = "%{public}s os_channel_packet_free failed %{darwin.errno}d";
        goto LABEL_521;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v194 = __nwlog_obj();
        v195 = v242;
        if (!os_log_type_enabled(v194, v242))
        {
          goto LABEL_522;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v21;
        v196 = "%{public}s os_channel_packet_free failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_521;
      }

      backtrace_string = __nw_create_backtrace_string();
      v194 = __nwlog_obj();
      v195 = v242;
      v202 = os_log_type_enabled(v194, v242);
      if (backtrace_string)
      {
        if (v202)
        {
          *buf = 136446722;
          v239 = "nw_channel_finalize_output_frame";
          v240 = 1024;
          *v241 = v21;
          *&v241[4] = 2082;
          *&v241[6] = backtrace_string;
          _os_log_impl(&dword_181A37000, v194, v195, "%{public}s os_channel_packet_free failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_522;
      }

      if (v202)
      {
        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v21;
        v196 = "%{public}s os_channel_packet_free failed %{darwin.errno}d, no backtrace";
LABEL_521:
        _os_log_impl(&dword_181A37000, v194, v195, v196, buf, 0x12u);
      }
    }

LABEL_522:
    if (v193)
    {
      free(v193);
    }

    goto LABEL_114;
  }

  if (!*(a3 + 17))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 136446210;
    v239 = "nw_channel_finalize_output_frame";
    v11 = "%{public}s Channel is defunct, cannot write frame";
    v12 = v23;
    v13 = OS_LOG_TYPE_DEBUG;
LABEL_14:
    _os_log_impl(&dword_181A37000, v12, v13, v11, buf, 0xCu);
    goto LABEL_15;
  }

  if (!a2)
  {
    v24 = os_buflet_set_data_length();
    if (!v24)
    {
      goto LABEL_91;
    }

    if (!*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

LABEL_91:
      LOWORD(v242) = 0;
      *type = 0;
      *v234 = 0;
      if (a1)
      {
        if ((*(a1 + 102) & 0x100) == 0 && (*(a1 + 102) & 0x200) == 0 || !g_channel_get_internet_checksum_handler)
        {
          goto LABEL_133;
        }

        internet_checksum_handler = g_channel_get_internet_checksum_handler(a1, &v242, type, v234);
        if (!internet_checksum_handler)
        {
          if (!(*type | v242 | *v234))
          {
            goto LABEL_133;
          }

          v38 = __nwlog_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            v239 = "nw_channel_finalize_output_frame";
            v240 = 1024;
            *v241 = v242;
            *&v241[4] = 1024;
            *&v241[6] = *type;
            *&v241[10] = 1024;
            *&v241[12] = *v234;
            _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_INFO, "%{public}s Bleaching partial checksum bits: is_partial=%d; start=%u; stuff=%u", buf, 0x1Eu);
          }

          v39 = 45;
          if ((*(a1 + 102) & 0x100) != 0)
          {
            v40 = g_channel_set_internet_checksum_handler;
            if (g_channel_set_internet_checksum_handler)
            {
              *(a1 + 203) |= 4u;
              v41 = (v40)(a1, 4, 0, 0);
              if (!v41)
              {
                goto LABEL_133;
              }

              v39 = v41;
            }
          }

          v42 = __nwlog_obj();
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_133;
          }

          *buf = 136447234;
          v239 = "nw_channel_finalize_output_frame";
          v240 = 1024;
          *v241 = v242;
          *&v241[4] = 1024;
          *&v241[6] = *type;
          *&v241[10] = 1024;
          *&v241[12] = *v234;
          *&v241[16] = 1024;
          *&v241[18] = v39;
          v34 = "%{public}s __nw_frame_set_internet_checksum failed: is_partial=%d; start=%u; stuff=%u %{darwin.errno}d";
          v35 = v42;
          v36 = OS_LOG_TYPE_ERROR;
          v37 = 36;
          goto LABEL_99;
        }

        if (internet_checksum_handler == 45)
        {
          goto LABEL_133;
        }

        goto LABEL_97;
      }

      __nwlog_obj();
      *buf = 136446210;
      v239 = "__nw_frame_get_internet_checksum";
      v163 = _os_log_send_and_compose_impl();
      v233[0] = OS_LOG_TYPE_ERROR;
      v236 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v163, v233, &v236))
      {
        if (v233[0] == OS_LOG_TYPE_FAULT)
        {
          v164 = __nwlog_obj();
          v165 = v233[0];
          if (os_log_type_enabled(v164, v233[0]))
          {
            *buf = 136446210;
            v239 = "__nw_frame_get_internet_checksum";
            v166 = "%{public}s called with null frame";
LABEL_423:
            _os_log_impl(&dword_181A37000, v164, v165, v166, buf, 0xCu);
          }
        }

        else if (v236 == OS_LOG_TYPE_INFO)
        {
          v175 = __nw_create_backtrace_string();
          v164 = __nwlog_obj();
          v165 = v233[0];
          v176 = os_log_type_enabled(v164, v233[0]);
          if (v175)
          {
            if (v176)
            {
              *buf = 136446466;
              v239 = "__nw_frame_get_internet_checksum";
              v240 = 2082;
              *v241 = v175;
              _os_log_impl(&dword_181A37000, v164, v165, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v175);
            goto LABEL_424;
          }

          if (v176)
          {
            *buf = 136446210;
            v239 = "__nw_frame_get_internet_checksum";
            v166 = "%{public}s called with null frame, no backtrace";
            goto LABEL_423;
          }
        }

        else
        {
          v164 = __nwlog_obj();
          v165 = v233[0];
          if (os_log_type_enabled(v164, v233[0]))
          {
            *buf = 136446210;
            v239 = "__nw_frame_get_internet_checksum";
            v166 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_423;
          }
        }
      }

LABEL_424:
      if (v163)
      {
        free(v163);
      }

      internet_checksum_handler = 22;
LABEL_97:
      v32 = internet_checksum_handler;
      v33 = __nwlog_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_133;
      }

      *buf = 136446466;
      v239 = "nw_channel_finalize_output_frame";
      v240 = 1024;
      *v241 = v32;
      v34 = "%{public}s __nw_frame_get_internet_checksum failed %{darwin.errno}d";
      v35 = v33;
      v36 = OS_LOG_TYPE_ERROR;
      v37 = 18;
LABEL_99:
      _os_log_impl(&dword_181A37000, v35, v36, v34, buf, v37);
      goto LABEL_133;
    }

    if ((a3[462] & 8) != 0)
    {
      goto LABEL_91;
    }

    v25 = v24;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
      goto LABEL_91;
    }

    __nwlog_obj();
    *buf = 136446466;
    v239 = "nw_channel_finalize_output_frame";
    v240 = 1024;
    *v241 = v25;
    v187 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v187, &v242, type))
    {
      if (v242 == 17)
      {
        v188 = __nwlog_obj();
        v189 = v242;
        if (!os_log_type_enabled(v188, v242))
        {
          goto LABEL_517;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v25;
        v190 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d";
        goto LABEL_516;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v188 = __nwlog_obj();
        v189 = v242;
        if (!os_log_type_enabled(v188, v242))
        {
          goto LABEL_517;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v25;
        v190 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_516;
      }

      v199 = __nw_create_backtrace_string();
      v188 = __nwlog_obj();
      v189 = v242;
      v200 = os_log_type_enabled(v188, v242);
      if (v199)
      {
        if (v200)
        {
          *buf = 136446722;
          v239 = "nw_channel_finalize_output_frame";
          v240 = 1024;
          *v241 = v25;
          *&v241[4] = 2082;
          *&v241[6] = v199;
          _os_log_impl(&dword_181A37000, v188, v189, "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v199);
        goto LABEL_517;
      }

      if (v200)
      {
        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v25;
        v190 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, no backtrace";
LABEL_516:
        _os_log_impl(&dword_181A37000, v188, v189, v190, buf, 0x12u);
      }
    }

LABEL_517:
    if (v187)
    {
      free(v187);
    }

    goto LABEL_91;
  }

  nw_frame_effective_length(a1);
  v8 = os_buflet_set_data_length();
  if (!v8)
  {
    goto LABEL_64;
  }

  if (*(a3 + 17))
  {
    if ((a3[462] & 8) != 0)
    {
      goto LABEL_64;
    }

    v9 = v8;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
      goto LABEL_64;
    }

    __nwlog_obj();
    *buf = 136446466;
    v239 = "nw_channel_finalize_output_frame";
    v240 = 1024;
    *v241 = v9;
    v183 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v183, &v242, type))
    {
      goto LABEL_512;
    }

    if (v242 == 17)
    {
      v184 = __nwlog_obj();
      v185 = v242;
      if (!os_log_type_enabled(v184, v242))
      {
        goto LABEL_512;
      }

      *buf = 136446466;
      v239 = "nw_channel_finalize_output_frame";
      v240 = 1024;
      *v241 = v9;
      v186 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v197 = __nw_create_backtrace_string();
      v184 = __nwlog_obj();
      v185 = v242;
      v198 = os_log_type_enabled(v184, v242);
      if (v197)
      {
        if (v198)
        {
          *buf = 136446722;
          v239 = "nw_channel_finalize_output_frame";
          v240 = 1024;
          *v241 = v9;
          *&v241[4] = 2082;
          *&v241[6] = v197;
          _os_log_impl(&dword_181A37000, v184, v185, "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v197);
        goto LABEL_512;
      }

      if (!v198)
      {
LABEL_512:
        if (v183)
        {
          free(v183);
        }

        goto LABEL_64;
      }

      *buf = 136446466;
      v239 = "nw_channel_finalize_output_frame";
      v240 = 1024;
      *v241 = v9;
      v186 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      v184 = __nwlog_obj();
      v185 = v242;
      if (!os_log_type_enabled(v184, v242))
      {
        goto LABEL_512;
      }

      *buf = 136446466;
      v239 = "nw_channel_finalize_output_frame";
      v240 = 1024;
      *v241 = v9;
      v186 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v184, v185, v186, buf, 0x12u);
    goto LABEL_512;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

LABEL_64:
  if (!*(a3 + 17))
  {
    v162 = __nwlog_obj();
    if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_133;
    }

    *buf = 136446210;
    v239 = "nw_channel_finalize_output_frame";
    v34 = "%{public}s Channel is newly defunct, cannot write frame";
    v35 = v162;
    v36 = OS_LOG_TYPE_DEBUG;
    v37 = 12;
    goto LABEL_99;
  }

  if (a1)
  {
    goto LABEL_66;
  }

  __nwlog_obj();
  *buf = 136446210;
  v239 = "__nw_frame_get_service_class";
  v167 = _os_log_send_and_compose_impl();
  LOBYTE(v242) = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v167, &v242, type))
  {
    if (v242 == 17)
    {
      v168 = __nwlog_obj();
      v169 = v242;
      if (!os_log_type_enabled(v168, v242))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      v239 = "__nw_frame_get_service_class";
      v170 = "%{public}s called with null frame";
      goto LABEL_429;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v168 = __nwlog_obj();
      v169 = v242;
      if (!os_log_type_enabled(v168, v242))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      v239 = "__nw_frame_get_service_class";
      v170 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_429;
    }

    v177 = __nw_create_backtrace_string();
    v168 = __nwlog_obj();
    v169 = v242;
    v178 = os_log_type_enabled(v168, v242);
    if (v177)
    {
      if (v178)
      {
        *buf = 136446466;
        v239 = "__nw_frame_get_service_class";
        v240 = 2082;
        *v241 = v177;
        _os_log_impl(&dword_181A37000, v168, v169, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v177);
      goto LABEL_430;
    }

    if (v178)
    {
      *buf = 136446210;
      v239 = "__nw_frame_get_service_class";
      v170 = "%{public}s called with null frame, no backtrace";
LABEL_429:
      _os_log_impl(&dword_181A37000, v168, v169, v170, buf, 0xCu);
    }
  }

LABEL_430:
  if (v167)
  {
    free(v167);
  }

LABEL_66:
  os_packet_set_service_class();
  if ((*(a3 + 230) & 0x400) != 0)
  {
    if (a1)
    {
      if ((*(a1 + 186) & 3) == 1)
      {
        os_packet_set_l4s_flag();
        if (!*(a1 + 20))
        {
          goto LABEL_71;
        }
      }

      else if (!*(a1 + 20))
      {
LABEL_71:
        if ((*(a1 + 186) & 4) != 0)
        {
          os_packet_set_transport_retransmit();
          if ((*(a1 + 186) & 8) == 0)
          {
            goto LABEL_73;
          }
        }

        else if ((*(a1 + 186) & 8) == 0)
        {
          goto LABEL_73;
        }

        os_packet_set_transport_last_packet();
LABEL_73:
        if ((*(a1 + 186) & 0x10) != 0)
        {
          os_packet_set_transport_traffic_background();
          if ((*(a1 + 186) & 0x20) == 0)
          {
LABEL_75:
            v26 = *(a1 + 102);
            if ((v26 & 0x20) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_359;
          }
        }

        else if ((*(a1 + 186) & 0x20) == 0)
        {
          goto LABEL_75;
        }

        os_packet_set_transport_traffic_realtime();
        v26 = *(a1 + 102);
        if ((v26 & 0x20) == 0)
        {
LABEL_76:
          if ((v26 & 0x10) == 0)
          {
            goto LABEL_79;
          }

LABEL_77:
          if (*(a1 + 19))
          {
            os_packet_set_expire_time();
            v26 = *(a1 + 102);
          }

LABEL_79:
          if ((v26 & 0x40) == 0)
          {
            if (*(a1 + 48))
            {
              os_packet_set_compression_generation_count();
            }

            goto LABEL_128;
          }

          __nwlog_obj();
          *buf = 136446210;
          v239 = "__nw_frame_get_compression_generation_count";
          v27 = _os_log_send_and_compose_impl();
          LOBYTE(v242) = 16;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v27, &v242, type))
          {
            if (v242 == 17)
            {
              v28 = __nwlog_obj();
              v29 = v242;
              if (!os_log_type_enabled(v28, v242))
              {
                goto LABEL_126;
              }

              *buf = 136446210;
              v239 = "__nw_frame_get_compression_generation_count";
              v30 = "%{public}s Attempt to get generation-count on a chain-member";
              goto LABEL_125;
            }

            if (type[0] != OS_LOG_TYPE_INFO)
            {
              v28 = __nwlog_obj();
              v29 = v242;
              if (!os_log_type_enabled(v28, v242))
              {
                goto LABEL_126;
              }

              *buf = 136446210;
              v239 = "__nw_frame_get_compression_generation_count";
              v30 = "%{public}s Attempt to get generation-count on a chain-member, backtrace limit exceeded";
              goto LABEL_125;
            }

            v43 = __nw_create_backtrace_string();
            v28 = __nwlog_obj();
            v29 = v242;
            v44 = os_log_type_enabled(v28, v242);
            if (v43)
            {
              if (v44)
              {
                *buf = 136446466;
                v239 = "__nw_frame_get_compression_generation_count";
                v240 = 2082;
                *v241 = v43;
                _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Attempt to get generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v43);
              goto LABEL_126;
            }

            if (v44)
            {
              *buf = 136446210;
              v239 = "__nw_frame_get_compression_generation_count";
              v30 = "%{public}s Attempt to get generation-count on a chain-member, no backtrace";
LABEL_125:
              _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
            }
          }

LABEL_126:
          if (v27)
          {
            free(v27);
          }

LABEL_128:
          if (*(a1 + 206))
          {
            os_packet_set_keep_alive();
            if ((*(a1 + 206) & 2) == 0)
            {
LABEL_130:
              if (!*(a1 + 99))
              {
LABEL_132:
                os_packet_add_inet_csum_flags();
                goto LABEL_133;
              }

LABEL_131:
              os_packet_set_tso_flags();
              os_packet_set_protocol_segment_size();
              goto LABEL_132;
            }
          }

          else if ((*(a1 + 206) & 2) == 0)
          {
            goto LABEL_130;
          }

          os_packet_set_app_metadata();
          if (!*(a1 + 99))
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

LABEL_359:
        os_packet_set_packetid();
        v26 = *(a1 + 102);
        if ((v26 & 0x10) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      os_packet_set_tx_timestamp();
      goto LABEL_71;
    }

    __nwlog_obj();
    *buf = 136446210;
    v239 = "__nw_frame_get_ecn_flag";
    v171 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v171, &v242, type))
    {
      if (v242 == 17)
      {
        v172 = __nwlog_obj();
        v173 = v242;
        if (!os_log_type_enabled(v172, v242))
        {
          goto LABEL_452;
        }

        *buf = 136446210;
        v239 = "__nw_frame_get_ecn_flag";
        v174 = "%{public}s called with null frame";
LABEL_451:
        _os_log_impl(&dword_181A37000, v172, v173, v174, buf, 0xCu);
        goto LABEL_452;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v172 = __nwlog_obj();
        v173 = v242;
        if (!os_log_type_enabled(v172, v242))
        {
          goto LABEL_452;
        }

        *buf = 136446210;
        v239 = "__nw_frame_get_ecn_flag";
        v174 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_451;
      }

      v181 = __nw_create_backtrace_string();
      v172 = __nwlog_obj();
      v173 = v242;
      v182 = os_log_type_enabled(v172, v242);
      if (!v181)
      {
        if (!v182)
        {
          goto LABEL_452;
        }

        *buf = 136446210;
        v239 = "__nw_frame_get_ecn_flag";
        v174 = "%{public}s called with null frame, no backtrace";
        goto LABEL_451;
      }

      if (v182)
      {
        *buf = 136446466;
        v239 = "__nw_frame_get_ecn_flag";
        v240 = 2082;
        *v241 = v181;
        _os_log_impl(&dword_181A37000, v172, v173, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v181);
    }

LABEL_452:
    if (v171)
    {
      free(v171);
    }

    __nwlog_obj();
    *buf = 136446210;
    v239 = "__nw_frame_get_departure_time";
    v203 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v203, &v242, type))
    {
      if (v242 == 17)
      {
        v204 = __nwlog_obj();
        v205 = v242;
        if (!os_log_type_enabled(v204, v242))
        {
          goto LABEL_468;
        }

        *buf = 136446210;
        v239 = "__nw_frame_get_departure_time";
        v206 = "%{public}s called with null frame";
LABEL_467:
        _os_log_impl(&dword_181A37000, v204, v205, v206, buf, 0xCu);
        goto LABEL_468;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v204 = __nwlog_obj();
        v205 = v242;
        if (!os_log_type_enabled(v204, v242))
        {
          goto LABEL_468;
        }

        *buf = 136446210;
        v239 = "__nw_frame_get_departure_time";
        v206 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_467;
      }

      v207 = __nw_create_backtrace_string();
      v204 = __nwlog_obj();
      v205 = v242;
      v208 = os_log_type_enabled(v204, v242);
      if (!v207)
      {
        if (!v208)
        {
          goto LABEL_468;
        }

        *buf = 136446210;
        v239 = "__nw_frame_get_departure_time";
        v206 = "%{public}s called with null frame, no backtrace";
        goto LABEL_467;
      }

      if (v208)
      {
        *buf = 136446466;
        v239 = "__nw_frame_get_departure_time";
        v240 = 2082;
        *v241 = v207;
        _os_log_impl(&dword_181A37000, v204, v205, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v207);
    }

LABEL_468:
    if (v203)
    {
      free(v203);
    }

    __nwlog_obj();
    *buf = 136446210;
    v239 = "__nw_frame_is_retransmit";
    v209 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v209, &v242, type))
    {
      if (v242 == 17)
      {
        v210 = __nwlog_obj();
        v211 = v242;
        if (!os_log_type_enabled(v210, v242))
        {
          goto LABEL_484;
        }

        *buf = 136446210;
        v239 = "__nw_frame_is_retransmit";
        v212 = "%{public}s called with null frame";
LABEL_483:
        _os_log_impl(&dword_181A37000, v210, v211, v212, buf, 0xCu);
        goto LABEL_484;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v210 = __nwlog_obj();
        v211 = v242;
        if (!os_log_type_enabled(v210, v242))
        {
          goto LABEL_484;
        }

        *buf = 136446210;
        v239 = "__nw_frame_is_retransmit";
        v212 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_483;
      }

      v213 = __nw_create_backtrace_string();
      v210 = __nwlog_obj();
      v211 = v242;
      v214 = os_log_type_enabled(v210, v242);
      if (!v213)
      {
        if (!v214)
        {
          goto LABEL_484;
        }

        *buf = 136446210;
        v239 = "__nw_frame_is_retransmit";
        v212 = "%{public}s called with null frame, no backtrace";
        goto LABEL_483;
      }

      if (v214)
      {
        *buf = 136446466;
        v239 = "__nw_frame_is_retransmit";
        v240 = 2082;
        *v241 = v213;
        _os_log_impl(&dword_181A37000, v210, v211, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v213);
    }

LABEL_484:
    if (v209)
    {
      free(v209);
    }

    __nwlog_obj();
    *buf = 136446210;
    v239 = "__nw_frame_is_last_frame";
    v215 = _os_log_send_and_compose_impl();
    LOBYTE(v242) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v215, &v242, type))
    {
      goto LABEL_500;
    }

    if (v242 == 17)
    {
      v216 = __nwlog_obj();
      v217 = v242;
      if (!os_log_type_enabled(v216, v242))
      {
        goto LABEL_500;
      }

      *buf = 136446210;
      v239 = "__nw_frame_is_last_frame";
      v218 = "%{public}s called with null frame";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v219 = __nw_create_backtrace_string();
      v216 = __nwlog_obj();
      v217 = v242;
      v220 = os_log_type_enabled(v216, v242);
      if (v219)
      {
        if (v220)
        {
          *buf = 136446466;
          v239 = "__nw_frame_is_last_frame";
          v240 = 2082;
          *v241 = v219;
          _os_log_impl(&dword_181A37000, v216, v217, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v219);
        goto LABEL_500;
      }

      if (!v220)
      {
LABEL_500:
        if (v215)
        {
          free(v215);
        }

        goto LABEL_73;
      }

      *buf = 136446210;
      v239 = "__nw_frame_is_last_frame";
      v218 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v216 = __nwlog_obj();
      v217 = v242;
      if (!os_log_type_enabled(v216, v242))
      {
        goto LABEL_500;
      }

      *buf = 136446210;
      v239 = "__nw_frame_is_last_frame";
      v218 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v216, v217, v218, buf, 0xCu);
    goto LABEL_500;
  }

LABEL_133:
  if (*(a3 + 17))
  {
    v242 = 0;
    v243 = 0;
    os_packet_get_flow_uuid();
    node = nw_hash_table_get_node(*(a3 + 35), &v242, 16);
    if (node)
    {
      if ((*(a3 + 230) & 0x200) != 0 && (*(node + 153) & 3) == 0)
      {
        *(node + 72) = 0;
        v46 = node + 72;
        v47 = *(a3 + 49);
        *(v46 + 8) = v47;
        *v47 = v46 - 40;
        *(a3 + 49) = v46;
        *(v46 + 81) |= 1u;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1042;
        *v241 = 16;
        *&v241[4] = 2098;
        *&v241[6] = &v242;
        _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s Node not found for flow id %{public,uuid_t}.16P", buf, 0x1Cu);
      }
    }

    os_packet_finalize();
    if ((*(a3 + 230) & 0x1000) != 0)
    {
      if (*(a3 + 27))
      {
        v49 = os_channel_slot_attach_packet();
        if (v49)
        {
          v50 = v49;
          if ((nw_channel_check_defunct(a3) & 1) == 0)
          {
            __nwlog_obj();
            *buf = 136446466;
            v239 = "nw_channel_finalize_output_frame";
            v240 = 1024;
            *v241 = v50;
            v51 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v234[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v51, type, v234))
            {
              goto LABEL_507;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v52 = __nwlog_obj();
              v53 = type[0];
              if (!os_log_type_enabled(v52, type[0]))
              {
                goto LABEL_507;
              }

              *buf = 136446466;
              v239 = "nw_channel_finalize_output_frame";
              v240 = 1024;
              *v241 = v50;
              v54 = "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d";
            }

            else if (v234[0] == OS_LOG_TYPE_INFO)
            {
              v191 = __nw_create_backtrace_string();
              v52 = __nwlog_obj();
              v53 = type[0];
              v192 = os_log_type_enabled(v52, type[0]);
              if (v191)
              {
                if (v192)
                {
                  *buf = 136446722;
                  v239 = "nw_channel_finalize_output_frame";
                  v240 = 1024;
                  *v241 = v50;
                  *&v241[4] = 2082;
                  *&v241[6] = v191;
                  _os_log_impl(&dword_181A37000, v52, v53, "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v191);
                goto LABEL_507;
              }

              if (!v192)
              {
LABEL_507:
                if (v51)
                {
                  free(v51);
                }

                goto LABEL_15;
              }

              *buf = 136446466;
              v239 = "nw_channel_finalize_output_frame";
              v240 = 1024;
              *v241 = v50;
              v54 = "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d, no backtrace";
            }

            else
            {
              v52 = __nwlog_obj();
              v53 = type[0];
              if (!os_log_type_enabled(v52, type[0]))
              {
                goto LABEL_507;
              }

              *buf = 136446466;
              v239 = "nw_channel_finalize_output_frame";
              v240 = 1024;
              *v241 = v50;
              v54 = "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v52, v53, v54, buf, 0x12u);
            goto LABEL_507;
          }
        }
      }
    }
  }

LABEL_15:
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  v14 = (a1 + 16);
  v17 = a3 + 312;
  if (v15)
  {
    v17 = (v15 + 24);
  }

  *v17 = v16;
  *v16 = v15;
  *v14 = 0;
  *(a1 + 3) = 0;
  --*(a3 + 109);
  if (v7 && *v7)
  {
    *v7 = 0;
    v7[1] = 0;
  }

  *(a1 + 2) = 0;
  v18 = *(a3 + 37);
  *(a1 + 3) = v18;
  *v18 = a1;
  *(a3 + 37) = v14;
  if (*(a3 + 38))
  {
    return;
  }

  if (!*(a3 + 53) || !*(a3 + 27))
  {
    goto LABEL_25;
  }

  v19 = os_channel_advance_slot();
  if (v19)
  {
    v157 = v19;
    if ((nw_channel_check_defunct(a3) & 1) == 0)
    {
      __nwlog_obj();
      *buf = 136446466;
      v239 = "nw_channel_finalize_output_frame";
      v240 = 1024;
      *v241 = v157;
      v158 = _os_log_send_and_compose_impl();
      LOBYTE(v242) = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v158, &v242, type))
      {
        goto LABEL_436;
      }

      if (v242 == 17)
      {
        v159 = __nwlog_obj();
        v160 = v242;
        if (!os_log_type_enabled(v159, v242))
        {
          goto LABEL_436;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v157;
        v161 = "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d";
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        v179 = __nw_create_backtrace_string();
        v159 = __nwlog_obj();
        v160 = v242;
        v180 = os_log_type_enabled(v159, v242);
        if (v179)
        {
          if (v180)
          {
            *buf = 136446722;
            v239 = "nw_channel_finalize_output_frame";
            v240 = 1024;
            *v241 = v157;
            *&v241[4] = 2082;
            *&v241[6] = v179;
            _os_log_impl(&dword_181A37000, v159, v160, "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v179);
          goto LABEL_436;
        }

        if (!v180)
        {
LABEL_436:
          if (v158)
          {
            free(v158);
          }

          goto LABEL_24;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v157;
        v161 = "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d, no backtrace";
      }

      else
      {
        v159 = __nwlog_obj();
        v160 = v242;
        if (!os_log_type_enabled(v159, v242))
        {
          goto LABEL_436;
        }

        *buf = 136446466;
        v239 = "nw_channel_finalize_output_frame";
        v240 = 1024;
        *v241 = v157;
        v161 = "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0x12u);
      goto LABEL_436;
    }
  }

LABEL_24:
  *(a3 + 53) = 0;
LABEL_25:
  if (*(a3 + 230) < 0)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    a3[462] |= 1u;
  }

  else
  {
    a3[462] &= ~1u;
    if (*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (os_channel_sync())
      {
        nw_channel_check_defunct(a3);
      }
    }
  }

  if ((*(a3 + 230) & 0x200) == 0 || !*(a3 + 17) || !*(a3 + 27))
  {
    return;
  }

  *type = 0;
  *v233 = 0;
  *v234 = 0;
  v22 = *(a3 + 48);
  if (!v22)
  {
    goto LABEL_264;
  }

  do
  {
    v55 = v22;
    v22 = *(v22 + 40);
    v56 = *(v55 + 24);
    feedback = os_channel_flow_adv_get_feedback();
    switch(feedback)
    {
      case 0:
        v58 = *type;
        if (!*type)
        {
          if (!*v234 || !*v233)
          {
            break;
          }

          v58 = 0;
        }

        v242 = __PAIR64__(*v234, v58);
        LODWORD(v243) = *v233;
        if (!v56)
        {
          __nwlog_obj();
          *buf = 136446210;
          v239 = "__nw_protocol_notify";
          v56 = _os_log_send_and_compose_impl();
          v236 = OS_LOG_TYPE_ERROR;
          v235 = 0;
          if (!__nwlog_fault(v56, &v236, &v235))
          {
            goto LABEL_260;
          }

          if (v236 == OS_LOG_TYPE_FAULT)
          {
            v91 = __nwlog_obj();
            v92 = v236;
            if (os_log_type_enabled(v91, v236))
            {
              *buf = 136446210;
              v239 = "__nw_protocol_notify";
              v93 = v91;
              v94 = v92;
              v95 = "%{public}s called with null protocol";
              goto LABEL_253;
            }

LABEL_260:
            if (v56)
            {
              goto LABEL_149;
            }

            break;
          }

          if (v235 == 1)
          {
            v103 = __nw_create_backtrace_string();
            v104 = __nwlog_obj();
            v105 = v236;
            v106 = os_log_type_enabled(v104, v236);
            if (v103)
            {
              if (v106)
              {
                *buf = 136446466;
                v239 = "__nw_protocol_notify";
                v240 = 2082;
                *v241 = v103;
                _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_148;
            }

            if (!v106)
            {
              goto LABEL_260;
            }

            *buf = 136446210;
            v239 = "__nw_protocol_notify";
            v93 = v104;
            v94 = v105;
            v95 = "%{public}s called with null protocol, no backtrace";
          }

          else
          {
            v111 = __nwlog_obj();
            v112 = v236;
            if (!os_log_type_enabled(v111, v236))
            {
              goto LABEL_260;
            }

            *buf = 136446210;
            v239 = "__nw_protocol_notify";
            v93 = v111;
            v94 = v112;
            v95 = "%{public}s called with null protocol, backtrace limit exceeded";
          }

LABEL_253:
          v117 = 12;
LABEL_259:
          _os_log_impl(&dword_181A37000, v93, v94, v95, buf, v117);
          goto LABEL_260;
        }

        v59 = *(v56 + 40);
        v60 = v56;
        if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v60 = *(v56 + 64)) != 0)
        {
          v62 = *(v60 + 88);
          v61 = 0;
          if (v62)
          {
            *(v60 + 88) = v62 + 1;
          }
        }

        else
        {
          v61 = 1;
        }

        v63 = *(a3 + 8);
        v64 = a3 + 24;
        if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v64 = *(a3 + 11)) != 0)
        {
          v67 = *(v64 + 11);
          if (v67)
          {
            v65 = 0;
            *(v64 + 11) = v67 + 1;
            v66 = *(v56 + 24);
            if (!v66)
            {
              goto LABEL_197;
            }
          }

          else
          {
            v65 = 0;
            v66 = *(v56 + 24);
            if (!v66)
            {
              goto LABEL_197;
            }
          }
        }

        else
        {
          v65 = 1;
          v66 = *(v56 + 24);
          if (!v66)
          {
            goto LABEL_197;
          }
        }

        v68 = *(v66 + 160);
        if (v68)
        {
          v68(v56, a3 + 24, 20, &v242, 12);
          goto LABEL_174;
        }

LABEL_197:
        __nwlog_obj();
        v80 = *(v56 + 16);
        if (!v80)
        {
          v80 = "invalid";
        }

        *buf = 136446722;
        v239 = "__nw_protocol_notify";
        v240 = 2082;
        *v241 = v80;
        *&v241[8] = 2048;
        *&v241[10] = v56;
        v81 = _os_log_send_and_compose_impl();
        v236 = OS_LOG_TYPE_ERROR;
        v235 = 0;
        v227 = v81;
        if (!__nwlog_fault(v81, &v236, &v235))
        {
          goto LABEL_245;
        }

        if (v236 == OS_LOG_TYPE_FAULT)
        {
          v82 = __nwlog_obj();
          v83 = v236;
          if (!os_log_type_enabled(v82, v236))
          {
            goto LABEL_245;
          }

          v84 = *(v56 + 16);
          if (!v84)
          {
            v84 = "invalid";
          }

          *buf = 136446722;
          v239 = "__nw_protocol_notify";
          v240 = 2082;
          *v241 = v84;
          *&v241[8] = 2048;
          *&v241[10] = v56;
          v85 = v82;
          v86 = v83;
          v87 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
        }

        else if (v235 == 1)
        {
          v96 = __nw_create_backtrace_string();
          v97 = __nwlog_obj();
          v223 = v236;
          v98 = os_log_type_enabled(v97, v236);
          if (v96)
          {
            if (v98)
            {
              v99 = *(v56 + 16);
              if (!v99)
              {
                v99 = "invalid";
              }

              *buf = 136446978;
              v239 = "__nw_protocol_notify";
              v240 = 2082;
              *v241 = v99;
              *&v241[8] = 2048;
              *&v241[10] = v56;
              *&v241[18] = 2082;
              *&v241[20] = v96;
              _os_log_impl(&dword_181A37000, v97, v223, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v96);
            goto LABEL_245;
          }

          if (!v98)
          {
LABEL_245:
            if (v227)
            {
              free(v227);
            }

LABEL_174:
            if ((v65 & 1) == 0)
            {
              v69 = *(a3 + 8);
              v70 = a3 + 24;
              if (v69 == &nw_protocol_ref_counted_handle || v69 == &nw_protocol_ref_counted_additional_handle && (v70 = *(a3 + 11)) != 0)
              {
                v71 = *(v70 + 11);
                if (v71)
                {
                  v72 = v71 - 1;
                  *(v70 + 11) = v72;
                  if (!v72)
                  {
                    v73 = *(v70 + 8);
                    if (v73)
                    {
                      *(v70 + 8) = 0;
                      v73[2](v73);
                      _Block_release(v73);
                    }

                    if (v70[72])
                    {
                      v74 = *(v70 + 8);
                      if (v74)
                      {
                        _Block_release(v74);
                      }
                    }

                    free(v70);
                  }
                }
              }
            }

            if ((v61 & 1) == 0)
            {
              v75 = *(v56 + 40);
              if (v75 == &nw_protocol_ref_counted_handle || v75 == &nw_protocol_ref_counted_additional_handle && (v56 = *(v56 + 64)) != 0)
              {
                v76 = *(v56 + 88);
                if (v76)
                {
                  v77 = v76 - 1;
                  *(v56 + 88) = v77;
                  if (!v77)
                  {
                    v78 = *(v56 + 64);
                    if (v78)
                    {
                      *(v56 + 64) = 0;
                      v78[2](v78);
                      _Block_release(v78);
                    }

                    if (*(v56 + 72))
                    {
                      v79 = *(v56 + 64);
                      if (v79)
                      {
                        _Block_release(v79);
                      }
                    }

LABEL_149:
                    free(v56);
                    break;
                  }
                }
              }
            }

            break;
          }

          v113 = *(v56 + 16);
          if (!v113)
          {
            v113 = "invalid";
          }

          *buf = 136446722;
          v239 = "__nw_protocol_notify";
          v240 = 2082;
          *v241 = v113;
          *&v241[8] = 2048;
          *&v241[10] = v56;
          v85 = v97;
          v86 = v223;
          v87 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
        }

        else
        {
          v107 = __nwlog_obj();
          v108 = v236;
          if (!os_log_type_enabled(v107, v236))
          {
            goto LABEL_245;
          }

          v109 = *(v56 + 16);
          if (!v109)
          {
            v109 = "invalid";
          }

          *buf = 136446722;
          v239 = "__nw_protocol_notify";
          v240 = 2082;
          *v241 = v109;
          *&v241[8] = 2048;
          *&v241[10] = v56;
          v85 = v107;
          v86 = v108;
          v87 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0x20u);
        goto LABEL_245;
      case 6:
        if (gLogDatapath == 1)
        {
          v88 = __nwlog_obj();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v239 = "nw_channel_flows_adv_get_feedback";
            v240 = 2082;
            *v241 = v55 + 84;
            v89 = v88;
            v90 = "%{public}s Channel doesn't support flow-advisory %{public}s";
LABEL_237:
            _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, v90, buf, 0x16u);
          }
        }

        break;
      case 22:
        __nwlog_obj();
        *buf = 136446722;
        v100 = v55 + 84;
        v239 = "nw_channel_flows_adv_get_feedback";
        v240 = 2082;
        *v241 = v100;
        *&v241[8] = 1024;
        *&v241[10] = 22;
        v56 = _os_log_send_and_compose_impl();
        LOBYTE(v242) = 16;
        v236 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v56, &v242, &v236))
        {
          goto LABEL_260;
        }

        if (v242 == 17)
        {
          v101 = __nwlog_obj();
          v102 = v242;
          if (!os_log_type_enabled(v101, v242))
          {
            goto LABEL_260;
          }

          *buf = 136446722;
          v239 = "nw_channel_flows_adv_get_feedback";
          v240 = 2082;
          *v241 = v100;
          *&v241[8] = 1024;
          *&v241[10] = 22;
          v93 = v101;
          v94 = v102;
          v95 = "%{public}s Ring is not TX %{public}s %{darwin.errno}d";
        }

        else if (v236 == OS_LOG_TYPE_INFO)
        {
          v103 = __nw_create_backtrace_string();
          v114 = __nwlog_obj();
          v115 = v242;
          v116 = os_log_type_enabled(v114, v242);
          if (v103)
          {
            if (v116)
            {
              *buf = 136446978;
              v239 = "nw_channel_flows_adv_get_feedback";
              v240 = 2082;
              *v241 = v100;
              *&v241[8] = 1024;
              *&v241[10] = 22;
              *&v241[14] = 2082;
              *&v241[16] = v103;
              _os_log_impl(&dword_181A37000, v114, v115, "%{public}s Ring is not TX %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
            }

LABEL_148:
            free(v103);
            if (!v56)
            {
              break;
            }

            goto LABEL_149;
          }

          if (!v116)
          {
            goto LABEL_260;
          }

          *buf = 136446722;
          v239 = "nw_channel_flows_adv_get_feedback";
          v240 = 2082;
          *v241 = v100;
          *&v241[8] = 1024;
          *&v241[10] = 22;
          v93 = v114;
          v94 = v115;
          v95 = "%{public}s Ring is not TX %{public}s %{darwin.errno}d, no backtrace";
        }

        else
        {
          v118 = __nwlog_obj();
          v119 = v242;
          if (!os_log_type_enabled(v118, v242))
          {
            goto LABEL_260;
          }

          *buf = 136446722;
          v239 = "nw_channel_flows_adv_get_feedback";
          v240 = 2082;
          *v241 = v100;
          *&v241[8] = 1024;
          *&v241[10] = 22;
          v93 = v118;
          v94 = v119;
          v95 = "%{public}s Ring is not TX %{public}s %{darwin.errno}d, backtrace limit exceeded";
        }

        v117 = 28;
        goto LABEL_259;
      default:
        if (feedback == 2 && gLogDatapath == 1)
        {
          v110 = __nwlog_obj();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v239 = "nw_channel_flows_adv_get_feedback";
            v240 = 2082;
            *v241 = v55 + 84;
            v89 = v110;
            v90 = "%{public}s Flow advisory is not not valid for flow id %{public}s";
            goto LABEL_237;
          }
        }

        break;
    }
  }

  while (v22);
  if (*(a3 + 17) && *(a3 + 27))
  {
LABEL_264:
    v120 = *(a3 + 48);
    if (v120)
    {
      do
      {
        v121 = *(v120 + 40);
        v122 = *(v120 + 24);
        v123 = os_channel_flow_admissible();
        if (v123)
        {
          v127 = v123;
          if (v123 == 55)
          {
            if (nw_link_set_flow_control_status(*(v120 + 72), 1))
            {
              v128 = __nwlog_obj();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                *buf = 136446466;
                v239 = "nw_channel_check_flows_controlled";
                v240 = 2082;
                *v241 = v120 + 84;
                _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_INFO, "%{public}s Flow controlled for flow id %{public}s", buf, 0x16u);
              }
            }

            if (v122)
            {
              v129 = *(v122 + 24);
              if (v129)
              {
                v130 = *(v120 + 72);
                if (*(v129 + 104) && v130 != 0)
                {
                  nw::share(&v242, v122);
                  nw::share(type, a3 + 3);
                  v132 = *(v122 + 24);
                  if (v132)
                  {
                    v133 = *(v132 + 104);
                    if (v133)
                    {
                      v133(v122, a3 + 24, v130);
                      goto LABEL_285;
                    }
                  }

                  __nwlog_obj();
                  v143 = *(v122 + 16);
                  if (!v143)
                  {
                    v143 = "invalid";
                  }

                  *buf = 136446722;
                  v239 = "__nw_protocol_link_state";
                  v240 = 2082;
                  *v241 = v143;
                  *&v241[8] = 2048;
                  *&v241[10] = v122;
                  v144 = _os_log_send_and_compose_impl();
                  v234[0] = OS_LOG_TYPE_ERROR;
                  v233[0] = OS_LOG_TYPE_DEFAULT;
                  v232 = v144;
                  if (!__nwlog_fault(v144, v234, v233))
                  {
                    goto LABEL_333;
                  }

                  if (v234[0] == OS_LOG_TYPE_FAULT)
                  {
                    v145 = __nwlog_obj();
                    v228 = v234[0];
                    if (os_log_type_enabled(v145, v234[0]))
                    {
                      v146 = *(v122 + 16);
                      if (!v146)
                      {
                        v146 = "invalid";
                      }

                      *buf = 136446722;
                      v239 = "__nw_protocol_link_state";
                      v240 = 2082;
                      *v241 = v146;
                      *&v241[8] = 2048;
                      *&v241[10] = v122;
                      v147 = v145;
                      v148 = v228;
                      v149 = "%{public}s protocol %{public}s (%p) has invalid link_state callback";
                      goto LABEL_332;
                    }

                    goto LABEL_333;
                  }

                  if (v233[0] != OS_LOG_TYPE_INFO)
                  {
                    v154 = __nwlog_obj();
                    v230 = v234[0];
                    if (!os_log_type_enabled(v154, v234[0]))
                    {
                      goto LABEL_333;
                    }

                    v155 = *(v122 + 16);
                    if (!v155)
                    {
                      v155 = "invalid";
                    }

                    *buf = 136446722;
                    v239 = "__nw_protocol_link_state";
                    v240 = 2082;
                    *v241 = v155;
                    *&v241[8] = 2048;
                    *&v241[10] = v122;
                    v147 = v154;
                    v148 = v230;
                    v149 = "%{public}s protocol %{public}s (%p) has invalid link_state callback, backtrace limit exceeded";
                    goto LABEL_332;
                  }

                  v150 = __nw_create_backtrace_string();
                  v229 = __nwlog_obj();
                  v226 = v234[0];
                  v151 = os_log_type_enabled(v229, v234[0]);
                  if (v150)
                  {
                    if (v151)
                    {
                      v152 = *(v122 + 16);
                      if (!v152)
                      {
                        v152 = "invalid";
                      }

                      *buf = 136446978;
                      v239 = "__nw_protocol_link_state";
                      v240 = 2082;
                      *v241 = v152;
                      *&v241[8] = 2048;
                      *&v241[10] = v122;
                      *&v241[18] = 2082;
                      *&v241[20] = v150;
                      _os_log_impl(&dword_181A37000, v229, v226, "%{public}s protocol %{public}s (%p) has invalid link_state callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v150);
                    goto LABEL_333;
                  }

                  if (v151)
                  {
                    v156 = *(v122 + 16);
                    if (!v156)
                    {
                      v156 = "invalid";
                    }

                    *buf = 136446722;
                    v239 = "__nw_protocol_link_state";
                    v240 = 2082;
                    *v241 = v156;
                    *&v241[8] = 2048;
                    *&v241[10] = v122;
                    v147 = v229;
                    v148 = v226;
                    v149 = "%{public}s protocol %{public}s (%p) has invalid link_state callback, no backtrace";
LABEL_332:
                    _os_log_impl(&dword_181A37000, v147, v148, v149, buf, 0x20u);
                  }

LABEL_333:
                  if (v232)
                  {
                    free(v232);
                  }

LABEL_285:
                  nw::retained_ptr<nw_protocol *>::~retained_ptr(type);
                  nw::retained_ptr<nw_protocol *>::~retained_ptr(&v242);
                }
              }
            }

            *(v120 + 56) = 0;
            v134 = *(a3 + 51);
            *(v120 + 64) = v134;
            *v134 = v120;
            *(a3 + 51) = v120 + 56;
            *(v120 + 121) |= 2u;
            goto LABEL_268;
          }

          if (v123 == 2)
          {
            if (gLogDatapath == 1)
            {
              v153 = __nwlog_obj();
              if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v239 = "nw_channel_check_flows_controlled";
                v240 = 2082;
                *v241 = v120 + 84;
                _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s Flow(%{public}s) is no longer present, disconnecting", buf, 0x16u);
              }
            }

            nw_channel_disconnect_flow(a3, v120);
          }

          else if ((nw_channel_check_defunct(a3) & 1) == 0)
          {
            __nwlog_obj();
            *buf = 136446722;
            v239 = "nw_channel_check_flows_controlled";
            v240 = 2082;
            *v241 = v120 + 84;
            *&v241[8] = 1024;
            *&v241[10] = v127;
            v135 = _os_log_send_and_compose_impl();
            LOBYTE(v242) = 16;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v231 = v135;
            if (!__nwlog_fault(v135, &v242, type))
            {
              goto LABEL_305;
            }

            if (v242 == 17)
            {
              v136 = __nwlog_obj();
              v224 = v242;
              if (os_log_type_enabled(v136, v242))
              {
                *buf = 136446722;
                v239 = "nw_channel_check_flows_controlled";
                v240 = 2082;
                *v241 = v120 + 84;
                *&v241[8] = 1024;
                *&v241[10] = v127;
                v137 = v136;
                v138 = v224;
                v139 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d";
                goto LABEL_304;
              }

              goto LABEL_305;
            }

            if (type[0] == OS_LOG_TYPE_INFO)
            {
              v140 = __nw_create_backtrace_string();
              log = __nwlog_obj();
              v222 = v242;
              v141 = os_log_type_enabled(log, v242);
              if (v140)
              {
                if (v141)
                {
                  *buf = 136446978;
                  v239 = "nw_channel_check_flows_controlled";
                  v240 = 2082;
                  *v241 = v120 + 84;
                  *&v241[8] = 1024;
                  *&v241[10] = v127;
                  *&v241[14] = 2082;
                  *&v241[16] = v140;
                  _os_log_impl(&dword_181A37000, log, v222, "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                }

                free(v140);
                goto LABEL_305;
              }

              if (!v141)
              {
LABEL_305:
                if (v231)
                {
                  free(v231);
                }

                goto LABEL_268;
              }

              *buf = 136446722;
              v239 = "nw_channel_check_flows_controlled";
              v240 = 2082;
              *v241 = v120 + 84;
              *&v241[8] = 1024;
              *&v241[10] = v127;
              v137 = log;
              v138 = v222;
              v139 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, no backtrace";
            }

            else
            {
              v142 = __nwlog_obj();
              v225 = v242;
              if (!os_log_type_enabled(v142, v242))
              {
                goto LABEL_305;
              }

              *buf = 136446722;
              v239 = "nw_channel_check_flows_controlled";
              v240 = 2082;
              *v241 = v120 + 84;
              *&v241[8] = 1024;
              *&v241[10] = v127;
              v137 = v142;
              v138 = v225;
              v139 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, backtrace limit exceeded";
            }

LABEL_304:
            _os_log_impl(&dword_181A37000, v137, v138, v139, buf, 0x1Cu);
            goto LABEL_305;
          }
        }

LABEL_268:
        if (*(v120 + 121))
        {
          v124 = *(v120 + 40);
          v125 = *(v120 + 48);
          v126 = (v124 + 48);
          if (!v124)
          {
            v126 = a3 + 392;
          }

          *v126 = v125;
          *v125 = v124;
          *(v120 + 121) &= ~1u;
        }

        v120 = v121;
      }

      while (v121);
    }
  }
}

uint64_t nw_frame_effective_length(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 52);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_effective_length";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_frame_effective_length";
        v5 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "__nw_frame_effective_length";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_effective_length";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_frame_effective_length";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

id *nw_write_request_copy_next_incomplete_request(void *a1, char a2, int a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_write_request_copy_next_incomplete_request";
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
          v22 = "nw_write_request_copy_next_incomplete_request";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null request", buf, 0xCu);
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
            v22 = "nw_write_request_copy_next_incomplete_request";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_write_request_copy_next_incomplete_request";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_write_request_copy_next_incomplete_request";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_39:
    if (v12)
    {
      free(v12);
    }

    v9 = 0;
    goto LABEL_15;
  }

  if (a3 && (a2 & 1) == 0)
  {
    while ((v7[16] & 2) != 0 || !v7[7] && !v7[9] || nw_content_context_is_blocked_by_antecedents(v7[8]) || v7[8] != v8)
    {
      v9 = v7[1];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    while ((v7[16] & 2) != 0 || !v7[7] && !v7[9] || nw_content_context_is_blocked_by_antecedents(v7[8]))
    {
      v9 = v7[1];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  if (v7[7] || v7[9])
  {
    v7 = v7;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

LABEL_15:
  return v9;
}

uint64_t nw_flow_service_writes(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2, nw_flow_protocol *a3)
{
  v365 = *MEMORY[0x1E69E9840];
  v310 = a1;
  v314 = a2;
  if (!a3)
  {
    v281 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_flow_service_writes";
    v282 = _os_log_send_and_compose_impl();

    LOBYTE(applier[0]) = 16;
    LOBYTE(foreach_block[0]) = 0;
    if (__nwlog_fault(v282, applier, foreach_block))
    {
      if (LOBYTE(applier[0]) == 17)
      {
        v283 = __nwlog_obj();
        v284 = applier[0];
        if (os_log_type_enabled(v283, applier[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_service_writes";
          _os_log_impl(&dword_181A37000, v283, v284, "%{public}s called with null flow_protocol", buf, 0xCu);
        }
      }

      else if (LOBYTE(foreach_block[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v283 = __nwlog_obj();
        v286 = applier[0];
        v287 = os_log_type_enabled(v283, applier[0]);
        if (backtrace_string)
        {
          if (v287)
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_service_writes";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v283, v286, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_373;
        }

        if (v287)
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_service_writes";
          _os_log_impl(&dword_181A37000, v283, v286, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v283 = __nwlog_obj();
        v288 = applier[0];
        if (os_log_type_enabled(v283, applier[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_service_writes";
          _os_log_impl(&dword_181A37000, v283, v288, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_373:
    if (v282)
    {
      free(v282);
    }

    goto LABEL_324;
  }

  output_handler = a3->protocol.output_handler;
  if (output_handler)
  {
    v6 = *(a3 + 166);
    if ((v6 & 8) == 0)
    {
      *(a3 + 166) = v6 | 8;
      v338 = 0;
      get_message_properties = output_handler->callbacks->get_message_properties;
      if (get_message_properties)
      {
        get_message_properties(output_handler, a3, &v338);
      }

      v308 = output_handler;
      v317 = a3;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        write_requests = v317->write_requests;
        initial_write_requests = v317->initial_write_requests;
        if (write_requests)
        {
          if (!initial_write_requests)
          {
            goto LABEL_13;
          }
        }

        else if (!initial_write_requests)
        {
          goto LABEL_355;
        }

        v10 = nw_write_request_copy_next_incomplete_request(v317->initial_write_requests, (v338 & 0x200000000) != 0, (*(v317 + 166) >> 1) & 1, v317->last_output_context);
        if (v10)
        {
          goto LABEL_14;
        }

        write_requests = v317->write_requests;
        if (!write_requests)
        {
          goto LABEL_325;
        }

LABEL_13:
        v10 = nw_write_request_copy_next_incomplete_request(write_requests, (v338 & 0x200000000) != 0, (*(v317 + 166) >> 1) & 1, v317->last_output_context);
        if (!v10)
        {
LABEL_325:
          if (nw_flow_handle_send_complete(v310, v314, v317))
          {
LABEL_326:

            goto LABEL_355;
          }

          v252 = nw_write_request_list_prune(v317->initial_write_requests);
          v253 = v317->initial_write_requests;
          v317->initial_write_requests = v252;

          v254 = nw_write_request_list_prune(v317->write_requests);
          v255 = v317->write_requests;
          v317->write_requests = v254;

          minimize_logging = nw_endpoint_handler_get_minimize_logging(v310);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v310);
          if (minimize_logging)
          {
            if (logging_disabled)
            {
              goto LABEL_326;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v246 = gconnectionLogObj;
            if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v310);
              v297 = nw_endpoint_handler_dry_run_string(v310);
              v298 = nw_endpoint_handler_copy_endpoint(v310);
              logging_description = nw_endpoint_get_logging_description(v298);
              v300 = nw_endpoint_handler_state_string(v310);
              v301 = nw_endpoint_handler_mode_string(v310);
              v302 = nw_endpoint_handler_copy_current_path(v310);
              *buf = 136447746;
              *&buf[4] = "nw_flow_service_writes";
              *&buf[12] = 2082;
              *&buf[14] = id_string;
              *&buf[22] = 2082;
              v357 = v297;
              *v358 = 2082;
              *&v358[2] = logging_description;
              *&v358[10] = 2082;
              *&v358[12] = v300;
              *&v358[20] = 2082;
              *&v358[22] = v301;
              v359 = 2114;
              v360 = v302;
              _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No unblocked write requests, stopping servicing writes", buf, 0x48u);
            }
          }

          else
          {
            if (logging_disabled)
            {
              goto LABEL_326;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v246 = gconnectionLogObj;
            if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
            {
              v258 = nw_endpoint_handler_get_id_string(v310);
              v259 = nw_endpoint_handler_dry_run_string(v310);
              v260 = nw_endpoint_handler_copy_endpoint(v310);
              v261 = nw_endpoint_get_logging_description(v260);
              v262 = nw_endpoint_handler_state_string(v310);
              v263 = nw_endpoint_handler_mode_string(v310);
              v264 = nw_endpoint_handler_copy_current_path(v310);
              *buf = 136447746;
              *&buf[4] = "nw_flow_service_writes";
              *&buf[12] = 2082;
              *&buf[14] = v258;
              *&buf[22] = 2082;
              v357 = v259;
              *v358 = 2082;
              *&v358[2] = v261;
              *&v358[10] = 2082;
              *&v358[12] = v262;
              *&v358[20] = 2082;
              *&v358[22] = v263;
              v359 = 2114;
              v360 = v264;
              _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No unblocked write requests, stopping servicing writes", buf, 0x48u);
            }
          }

          v312 = 0;
          goto LABEL_353;
        }

LABEL_14:
        v11 = v10;
        if ((*(v317 + 166) & 0x800) != 0)
        {
          v12 = v10;
          v13 = *(v12 + 128);
          v312 = v12;

          if ((v13 & 4) == 0)
          {
            v244 = nw_endpoint_handler_get_minimize_logging(v310);
            v245 = nw_endpoint_handler_get_logging_disabled(v310);
            if (v244)
            {
              if ((v245 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v246 = gconnectionLogObj;
                if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
                {
                  v289 = nw_endpoint_handler_get_id_string(v310);
                  v290 = nw_endpoint_handler_dry_run_string(v310);
                  v291 = nw_endpoint_handler_copy_endpoint(v310);
                  v292 = nw_endpoint_get_logging_description(v291);
                  v293 = nw_endpoint_handler_state_string(v310);
                  v294 = nw_endpoint_handler_mode_string(v310);
                  v295 = nw_endpoint_handler_copy_current_path(v310);
                  *buf = 136447746;
                  *&buf[4] = "nw_flow_service_writes";
                  *&buf[12] = 2082;
                  *&buf[14] = v289;
                  *&buf[22] = 2082;
                  v357 = v290;
                  *v358 = 2082;
                  *&v358[2] = v292;
                  *&v358[10] = 2082;
                  *&v358[12] = v293;
                  *&v358[20] = 2082;
                  *&v358[22] = v294;
                  v359 = 2114;
                  v360 = v295;
                  _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping servicing writes", buf, 0x48u);
                }

LABEL_353:
              }
            }

            else if ((v245 & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v246 = gconnectionLogObj;
              if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
              {
                v247 = nw_endpoint_handler_get_id_string(v310);
                v248 = nw_endpoint_handler_dry_run_string(v310);
                v249 = nw_endpoint_handler_copy_endpoint(v310);
                v250 = v249;
                if (v249)
                {
                  v251 = _nw_endpoint_get_logging_description(v249);
                }

                else
                {
                  v251 = "<NULL>";
                }

                v277 = nw_endpoint_handler_state_string(v310);
                v278 = nw_endpoint_handler_mode_string(v310);
                v279 = nw_endpoint_handler_copy_current_path(v310);
                *buf = 136447746;
                *&buf[4] = "nw_flow_service_writes";
                *&buf[12] = 2082;
                *&buf[14] = v247;
                *&buf[22] = 2082;
                v357 = v248;
                *v358 = 2082;
                *&v358[2] = v251;
                *&v358[10] = 2082;
                *&v358[12] = v277;
                *&v358[20] = 2082;
                *&v358[22] = v278;
                v359 = 2114;
                v360 = v279;
                _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping servicing writes", buf, 0x48u);
              }

              goto LABEL_353;
            }

LABEL_354:

            goto LABEL_355;
          }
        }

        v14 = v11;
        v15 = v14[7];
        v312 = v14;
        v16 = v14[9];
        if (!v15)
        {
          if (!v16)
          {

            if ((v338 & 0x100000000) != 0)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          }

LABEL_20:
          v18 = v312;
          size = v312[12];
          goto LABEL_21;
        }

        if (v16)
        {
          goto LABEL_20;
        }

        size = dispatch_data_get_size(v15);
        v18 = v312;
LABEL_21:
        if (size <= v18[14])
        {
          v19 = 0;
        }

        else
        {
          v19 = v18[14];
        }

        v20 = size - v19;
        if (size - v19 >= 0xFFFFFFFF)
        {
          v20 = -1;
          if ((v338 & 0x100000000) == 0)
          {
            v21 = -1;
            goto LABEL_43;
          }

LABEL_30:
          if (v338 && v20 > v338)
          {
            v21 = 1;
            goto LABEL_43;
          }

LABEL_37:
          v27 = v317->initial_write_requests;
          if (!v27)
          {
            v27 = v317->write_requests;
          }

          v21 = nw_write_request_remaining_datagram_count(v27);
          if (v21)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if ((v338 & 0x100000000) != 0)
        {
          goto LABEL_30;
        }

        if (v20)
        {
          v21 = -1;
          goto LABEL_43;
        }

LABEL_34:
        v22 = v312;
        v23 = v22[8];

        if (v23)
        {
          v24 = v22;
          v25 = v22[8];

          has_metadata = nw_content_context_has_metadata(v25);
          v21 = -1;
          if (has_metadata)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v21 = -1;
        }

LABEL_42:
        if (nw_flow_handle_send_complete(v310, v314, v317))
        {
          goto LABEL_354;
        }

LABEL_43:
        v336 = 0;
        v337 = &v336;
        v309 = v317->last_error;
        v28 = (v308->callbacks->get_output_frames)();
        if (v21 == -1)
        {
          if ((gLogDatapath & 1) == 0)
          {
            goto LABEL_51;
          }

          v29 = v28;
          v200 = nw_endpoint_handler_get_logging_disabled(v310);
          v28 = v29;
          if (v200)
          {
            goto LABEL_51;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v201 = nw_endpoint_handler_get_id_string(v310);
            v202 = nw_endpoint_handler_dry_run_string(v310);
            v203 = nw_endpoint_handler_copy_endpoint(v310);
            v204 = nw_endpoint_get_logging_description(v203);
            v205 = nw_endpoint_handler_state_string(v310);
            v206 = nw_endpoint_handler_mode_string(v310);
            v207 = nw_endpoint_handler_copy_current_path(v310);
            *buf = 136448002;
            *&buf[4] = "nw_flow_service_writes";
            *&buf[12] = 2082;
            *&buf[14] = v201;
            *&buf[22] = 2082;
            v357 = v202;
            *v358 = 2082;
            *&v358[2] = v204;
            *&v358[10] = 2082;
            *&v358[12] = v205;
            *&v358[20] = 2082;
            *&v358[22] = v206;
            v359 = 2114;
            v360 = v207;
            v361 = 1024;
            v362 = v29;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler has %u frames to write", buf, 0x4Eu);
          }
        }

        else
        {
          if (!gLogDatapath)
          {
            goto LABEL_51;
          }

          v29 = v28;
          v30 = nw_endpoint_handler_get_logging_disabled(v310);
          v28 = v29;
          if (v30)
          {
            goto LABEL_51;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = nw_endpoint_handler_get_id_string(v310);
            v33 = nw_endpoint_handler_dry_run_string(v310);
            v34 = nw_endpoint_handler_copy_endpoint(v310);
            v35 = nw_endpoint_get_logging_description(v34);
            v36 = nw_endpoint_handler_state_string(v310);
            v37 = nw_endpoint_handler_mode_string(v310);
            v38 = nw_endpoint_handler_copy_current_path(v310);
            *buf = 136448258;
            *&buf[4] = "nw_flow_service_writes";
            *&buf[12] = 2082;
            *&buf[14] = v32;
            *&buf[22] = 2082;
            v357 = v33;
            *v358 = 2082;
            *&v358[2] = v35;
            *&v358[10] = 2082;
            *&v358[12] = v36;
            *&v358[20] = 2082;
            *&v358[22] = v37;
            v359 = 2114;
            v360 = v38;
            v361 = 1024;
            v362 = v29;
            v363 = 1024;
            LODWORD(v364) = v21;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler has %u frames to write, request wants %u frames", buf, 0x54u);
          }
        }

        v28 = v29;
LABEL_51:
        if (!v336 || !v28)
        {
          if (v28)
          {
            v233 = v28;
            if ((nw_endpoint_handler_get_logging_disabled(v310) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v234 = gconnectionLogObj;
              if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
              {
                v235 = nw_endpoint_handler_get_id_string(v310);
                v236 = nw_endpoint_handler_dry_run_string(v310);
                v237 = nw_endpoint_handler_copy_endpoint(v310);
                v238 = v237;
                if (v237)
                {
                  v239 = _nw_endpoint_get_logging_description(v237);
                }

                else
                {
                  v239 = "<NULL>";
                }

                v265 = nw_endpoint_handler_state_string(v310);
                v266 = nw_endpoint_handler_mode_string(v310);
                v267 = nw_endpoint_handler_copy_current_path(v310);
                *buf = 136448002;
                *&buf[4] = "nw_flow_service_writes";
                *&buf[12] = 2082;
                *&buf[14] = v235;
                *&buf[22] = 2082;
                v357 = v236;
                *v358 = 2082;
                *&v358[2] = v239;
                *&v358[10] = 2082;
                *&v358[12] = v265;
                *&v358[20] = 2082;
                *&v358[22] = v266;
                v359 = 2114;
                v360 = v267;
                v361 = 1024;
                v362 = v233;
                _os_log_impl(&dword_181A37000, v234, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler reported %u frames to write, but array is empty", buf, 0x4Eu);
              }
            }
          }

          last_error = v317->last_error;
          if (last_error)
          {
            if (v309 != last_error)
            {
              v269 = last_error;
              v270 = *(v269 + 2) == 1;

              if (v270)
              {
                error_code = nw_error_get_error_code(v317->last_error);
                v272 = __nwlog_obj();
                if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_flow_service_writes";
                  *&buf[12] = 2114;
                  *&buf[14] = v312;
                  *&buf[22] = 1024;
                  LODWORD(v357) = error_code;
                  _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_ERROR, "%{public}s Failing write request %{public}@ %{darwin.errno}d", buf, 0x1Cu);
                }

                nw_write_request_fail(v312, error_code);
                v273 = nw_write_request_list_prune(v317->initial_write_requests);
                v274 = v317->initial_write_requests;
                v317->initial_write_requests = v273;

                v275 = nw_write_request_list_prune(v317->write_requests);
                v276 = v317->write_requests;
                v317->write_requests = v275;
              }
            }
          }

          goto LABEL_354;
        }

        v311 = v314;
        handle = v317->protocol.handle;
        v313 = *(handle + 160);
        v349 = 0;
        v350 = &v349;
        v348 = 0;
        v40 = nw_flow_copy_write_request(handle, &v338, &v348);
        v41 = v40;
        v334 = handle;
        if (v40 && (v42 = nw_write_request_copy_data(v40)) != 0)
        {
          data = v42;
          v318 = dispatch_data_get_size(v42);
        }

        else
        {
          v318 = 0;
          data = 0;
        }

        v43 = v336;
        v44 = v43;
        v45 = 0;
        if (!v41 || !v43)
        {
          v112 = v43;
          goto LABEL_243;
        }

        v46 = 0;
        v47 = 0;
        while (1)
        {
          v48 = *(v44 + 32);
          if (!v48 && !*(v44 + 40))
          {
            v48 = 0;
          }

          v332 = v48;
          v49 = v41;
          v50 = v49[9];

          if (v50)
          {
            v51 = *(v44 + 52);
            if (v51)
            {
              v52 = *(v44 + 56) + *(v44 + 60);
              v53 = v49;
              v54 = 0;
              v55 = (v51 - v52);
              if (v55 && v49[9])
              {
                v56 = v53;
                v57 = v53[14];
                if (v53[12] - v57 >= v55)
                {
                  v58 = v55;
                }

                else
                {
                  v58 = v53[12] - v57;
                }

                v355 = 0;
                alloc = dispatch_data_create_alloc();
                v351 = 0;
                v352 = &v351;
                v353 = 0x2020000000;
                v354 = 0;
                v60 = v49[9];
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __nw_write_request_copy_data_from_fd_block_invoke;
                v357 = &unk_1E6A31440;
                *v358 = &v351;
                *&v358[8] = v355;
                *&v358[16] = v58;
                nw_fd_wrapper_get_fd(v60, buf);
                v61 = v352[3];
                if (v61)
                {
                  if (v61 == -1)
                  {
                    posix_error = nw_error_create_posix_error(**(StatusReg + 8));
                    nw_write_request_report(v56, 0, posix_error);

                    v54 = 0;
                  }

                  else
                  {
                    if (v61 >= v55)
                    {
                      subrange = alloc;
                    }

                    else
                    {
                      subrange = dispatch_data_create_subrange(alloc, 0, v61);
                    }

                    v54 = subrange;
                  }
                }

                else
                {
                  v54 = 0;
                  *(v56 + 128) |= 0x10u;
                }

                _Block_object_dispose(&v351, 8);
              }
            }

            else
            {
              v63 = v49;
              v54 = 0;
            }

            v65 = v49;
            v66 = v49[9];
            if (v65[7])
            {
              if (!v66)
              {
                v67 = v65;
                v68 = dispatch_data_get_size(v65[7]);
                v65 = v67;
                goto LABEL_86;
              }

LABEL_85:
              v68 = v65[12];
LABEL_86:
              v69 = v65[14];
              if (v68 <= v69)
              {
                v69 = 0;
              }

              v318 = v68 - v69;
            }

            else
            {
              if (v66)
              {
                goto LABEL_85;
              }

              v318 = 0;
            }

            v46 = 0;
            goto LABEL_90;
          }

          v54 = data;
LABEL_90:
          if ((*(v334 + 332) & 0x800) != 0)
          {
            v70 = v49;
            v71 = *(v70 + 128);

            if ((v71 & 4) == 0)
            {
              v119 = nw_endpoint_handler_get_minimize_logging(v313);
              v120 = nw_endpoint_handler_get_logging_disabled(v313);
              if (v119)
              {
                if ((v120 & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  datac = gconnectionLogObj;
                  if (os_log_type_enabled(datac, OS_LOG_TYPE_DEBUG))
                  {
                    v208 = nw_endpoint_handler_get_id_string(v313);
                    v209 = nw_endpoint_handler_dry_run_string(v313);
                    v210 = nw_endpoint_handler_copy_endpoint(v313);
                    v211 = nw_endpoint_get_logging_description(v210);
                    v323 = nw_endpoint_handler_state_string(v313);
                    v212 = nw_endpoint_handler_mode_string(v313);
                    v213 = nw_endpoint_handler_copy_current_path(v313);
                    *buf = 136447746;
                    *&buf[4] = "nw_flow_prepare_output_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v208;
                    *&buf[22] = 2082;
                    v357 = v209;
                    *v358 = 2082;
                    *&v358[2] = v211;
                    *&v358[10] = 2082;
                    v121 = datac;
                    *&v358[12] = v323;
                    *&v358[20] = 2082;
                    *&v358[22] = v212;
                    v359 = 2114;
                    v360 = v213;
                    _os_log_impl(&dword_181A37000, datac, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping preparing frames", buf, 0x48u);
                  }

                  else
                  {
                    v121 = datac;
                  }

LABEL_224:
                }
              }

              else if ((v120 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v121 = gconnectionLogObj;
                if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                {
                  v122 = nw_endpoint_handler_get_id_string(v313);
                  v123 = nw_endpoint_handler_dry_run_string(v313);
                  v124 = nw_endpoint_handler_copy_endpoint(v313);
                  v125 = v124;
                  v320 = v122;
                  if (v124)
                  {
                    v126 = _nw_endpoint_get_logging_description(v124);
                  }

                  else
                  {
                    v126 = "<NULL>";
                  }

                  datad = v121;
                  v149 = nw_endpoint_handler_state_string(v313);
                  v150 = nw_endpoint_handler_mode_string(v313);
                  v151 = nw_endpoint_handler_copy_current_path(v313);
                  *buf = 136447746;
                  *&buf[4] = "nw_flow_prepare_output_frames";
                  *&buf[12] = 2082;
                  *&buf[14] = v320;
                  *&buf[22] = 2082;
                  v357 = v123;
                  *v358 = 2082;
                  *&v358[2] = v126;
                  *&v358[10] = 2082;
                  *&v358[12] = v149;
                  v121 = datad;
                  *&v358[20] = 2082;
                  *&v358[22] = v150;
                  v359 = 2114;
                  v360 = v151;
                  _os_log_impl(&dword_181A37000, datad, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping preparing frames", buf, 0x48u);
                }

                goto LABEL_224;
              }

              v45 = v47;
              v148 = v332;
              goto LABEL_239;
            }
          }

          v70 = v49;
          v45 = v70[8];

          if (v45)
          {
            if (nw_content_context_has_metadata(v45))
            {
              v72 = nw_parameters_copy_default_protocol_stack(*(v334 + 176));
              v73 = nw_protocol_stack_copy_transport_protocol(v72);
              v74 = nw_protocol_options_copy_definition(v73);
              v75 = nw_content_context_copy_protocol_metadata(v45, v74);
              v76 = *(v334 + 232);
              *(v334 + 232) = v75;
            }

            else
            {
              v72 = *(v334 + 232);
              *(v334 + 232) = 0;
            }

            *(v334 + 332) |= 2u;
          }

          v351 = 0;
          v352 = &v351;
          v353 = 0x2020000000;
          LODWORD(v354) = 0;
          if ((*(v44 + 204) & 2) != 0)
          {
            v80 = *(v44 + 52);
            if (v80)
            {
              v81 = v80 - (*(v44 + 56) + *(v44 + 60));
              if ((v338 & 0x100000000) == 0)
              {
LABEL_111:
                if (!nw_frame_set_external_data(v44, v54, &v354))
                {
                  v138 = nw_endpoint_handler_get_logging_disabled(v313);
                  if ((v138 & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v132 = gconnectionLogObj;
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                    {
                      v139 = nw_endpoint_handler_get_id_string(v313);
                      v140 = nw_endpoint_handler_dry_run_string(v313);
                      v141 = nw_endpoint_handler_copy_endpoint(v313);
                      v142 = v141;
                      v321 = v139;
                      if (v141)
                      {
                        v143 = _nw_endpoint_get_logging_description(v141);
                      }

                      else
                      {
                        v143 = "<NULL>";
                      }

                      dataf = v132;
                      v157 = nw_endpoint_handler_state_string(v313);
                      v158 = nw_endpoint_handler_mode_string(v313);
                      v159 = nw_endpoint_handler_copy_current_path(v313);
                      *buf = 136447746;
                      *&buf[4] = "nw_flow_prepare_output_frames";
                      *&buf[12] = 2082;
                      *&buf[14] = v321;
                      *&buf[22] = 2082;
                      v357 = v140;
                      *v358 = 2082;
                      *&v358[2] = v143;
                      *&v358[10] = 2082;
                      *&v358[12] = v157;
                      v132 = dataf;
                      *&v358[20] = 2082;
                      *&v358[22] = v158;
                      v359 = 2114;
                      v360 = v159;
                      _os_log_impl(&dword_181A37000, dataf, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Data cannot be set in frame", buf, 0x48u);
                    }

                    v156 = 12;
                    goto LABEL_236;
                  }

                  v156 = 12;
LABEL_237:
                  v148 = v332;
                  nw_write_request_fail(v70, v156);
                  goto LABEL_238;
                }

                goto LABEL_124;
              }
            }

            else
            {
              v81 = 0;
              if ((v338 & 0x100000000) == 0)
              {
                goto LABEL_111;
              }
            }

            if (v318 > v81)
            {
              if (nw_endpoint_handler_get_logging_disabled(v313))
              {
                v156 = 40;
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v132 = gconnectionLogObj;
                if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                {
                  v133 = nw_endpoint_handler_get_id_string(v313);
                  v134 = nw_endpoint_handler_dry_run_string(v313);
                  v135 = nw_endpoint_handler_copy_endpoint(v313);
                  v136 = v135;
                  log = v134;
                  if (v135)
                  {
                    v137 = _nw_endpoint_get_logging_description(v135);
                  }

                  else
                  {
                    v137 = "<NULL>";
                  }

                  datae = v132;
                  v154 = nw_endpoint_handler_state_string(v313);
                  v304 = nw_endpoint_handler_mode_string(v313);
                  v155 = nw_endpoint_handler_copy_current_path(v313);
                  *buf = 136448258;
                  *&buf[4] = "nw_flow_prepare_output_frames";
                  *&buf[12] = 2082;
                  *&buf[14] = v133;
                  *&buf[22] = 2082;
                  v357 = log;
                  *v358 = 2082;
                  *&v358[2] = v137;
                  *&v358[10] = 2082;
                  *&v358[12] = v154;
                  *&v358[20] = 2082;
                  *&v358[22] = v304;
                  v359 = 2114;
                  v360 = v155;
                  v361 = 1024;
                  v362 = v81;
                  v363 = 2048;
                  v132 = datae;
                  v364 = v318;
                  _os_log_impl(&dword_181A37000, datae, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Data won't fit in frame (%u < %zu)", buf, 0x58u);
                }

                v156 = 40;
LABEL_236:
              }

              goto LABEL_237;
            }

            goto LABEL_111;
          }

          if (!*(v44 + 112) || (*(v44 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v44, *(v44 + 88)))
          {
            v79 = 0;
            v82 = 0;
            if ((v338 & 0x100000000) != 0)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v78 = *(v44 + 52);
            v77 = *(v44 + 56);
            if (v78)
            {
              v79 = v78 - (v77 + *(v44 + 60));
            }

            else
            {
              v79 = 0;
            }

            v82 = *(v44 + 112) + v77;
            if ((v338 & 0x100000000) != 0)
            {
LABEL_115:
              if (v318 > v79)
              {
                if ((nw_endpoint_handler_get_logging_disabled(v313) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v127 = gconnectionLogObj;
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                  {
                    v128 = nw_endpoint_handler_get_id_string(v313);
                    datab = nw_endpoint_handler_dry_run_string(v313);
                    v129 = nw_endpoint_handler_copy_endpoint(v313);
                    v130 = v129;
                    v315 = v128;
                    if (v129)
                    {
                      v131 = _nw_endpoint_get_logging_description(v129);
                    }

                    else
                    {
                      v131 = "<NULL>";
                    }

                    v303 = nw_endpoint_handler_state_string(v313);
                    loga = v127;
                    v152 = nw_endpoint_handler_mode_string(v313);
                    v153 = nw_endpoint_handler_copy_current_path(v313);
                    *buf = 136448258;
                    *&buf[4] = "nw_flow_prepare_output_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v315;
                    *&buf[22] = 2082;
                    v357 = datab;
                    *v358 = 2082;
                    *&v358[2] = v131;
                    *&v358[10] = 2082;
                    *&v358[12] = v303;
                    *&v358[20] = 2082;
                    *&v358[22] = v152;
                    v127 = loga;
                    v359 = 2114;
                    v360 = v153;
                    v361 = 1024;
                    v362 = v79;
                    v363 = 2048;
                    v364 = v318;
                    _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Data won't fit in frame (%u < %zu)", buf, 0x58u);
                  }
                }

                v148 = v332;
                nw_write_request_fail(v70, 40);
                goto LABEL_238;
              }
            }
          }

          v84 = v70;
          v85 = v49[9];

          if (v85)
          {
            if (!v54)
            {
              goto LABEL_124;
            }

            v86 = dispatch_data_get_size(v54);
LABEL_123:
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke;
            applier[3] = &unk_1E6A2DC08;
            v347 = v86;
            applier[4] = &v351;
            applier[5] = v46;
            applier[6] = v82;
            dispatch_data_apply(v54, applier);
            goto LABEL_124;
          }

          if (v79 >= v318 - v46)
          {
            v86 = v318 - v46;
          }

          else
          {
            v86 = v79;
          }

          if (v54)
          {
            goto LABEL_123;
          }

LABEL_124:
          if (!nw_frame_claim(v44, v83, *(v352 + 6), 0))
          {
            break;
          }

          v87 = v348;
          v88 = *(v352 + 6);
          v89 = (v88 + v46);
          if (v332 && v318 > v89)
          {
            if (nw_write_request_consume_bytes(v70, *(v352 + 6)))
            {
              v90 = 0;
            }

            else
            {
              v90 = 2;
            }

            *(v334 + 332) = *(v334 + 332) & 0xFFFD | v90;
            v41 = v70;
            v91 = *(v41 + 128);

            v46 += v88;
            data = v54;
          }

          else
          {
            if (nw_write_request_consume_bytes(v70, *(v352 + 6)))
            {
              v92 = 0;
            }

            else
            {
              v92 = 2;
            }

            *(v334 + 332) = *(v334 + 332) & 0xFFFD | v92;
            v93 = v70;
            v91 = *(v93 + 128);

            v41 = nw_flow_copy_write_request(v334, &v338, &v348);
            os_unfair_lock_lock(&v314->lock);
            pending_write_bytes = v314->pending_write_bytes;
            v95 = pending_write_bytes >= v89;
            v96 = pending_write_bytes - v89;
            if (!v95)
            {
              v96 = 0;
            }

            v314->pending_write_bytes = v96;
            os_unfair_lock_unlock(&v314->lock);
            if (v41)
            {
              data = nw_write_request_copy_data(v41);

              if (data)
              {
                v318 = dispatch_data_get_size(data);
                v46 = 0;
              }

              else
              {
                v46 = 0;
                v318 = 0;
                data = 0;
              }
            }

            else
            {

              v46 = 0;
              v318 = 0;
              data = 0;
              v41 = 0;
            }
          }

          v314->sent_application_byte_count += *(v352 + 6);
          if (v45)
          {
            v97 = v45;
            v98 = v97;
            if (v97 == &__block_literal_global_10_44685 || v97 == &__block_literal_global_8_44676 || v97 == &__block_literal_global_6_44667 || v97 == &__block_literal_global_44658 || (BYTE6(v97[14].isa) & 8) == 0)
            {
            }

            else
            {

              nw_frame_set_packet_id(v44, &v98[1]);
            }
          }

          if (v87)
          {
            *(v44 + 204) |= 0x10u;
            *(v44 + 152) = v87;
            if (!v45)
            {
              goto LABEL_159;
            }
          }

          else if (!v45)
          {
            goto LABEL_159;
          }

          v99 = v45;
          if (v99 == &__block_literal_global_10_44685 || v99 == &__block_literal_global_8_44676 || v99 == &__block_literal_global_6_44667 || v99 == &__block_literal_global_44658 || (HIBYTE(v99[14].isa) & 1) == 0)
          {
          }

          else
          {
            v100 = BYTE4(v99[14].isa);
            v101 = BYTE5(v99[14].isa);

            v102 = *(v44 + 206);
            if ((v102 & 2) == 0)
            {
              *(v44 + 201) = v100;
              *(v44 + 202) = v101;
              *(v44 + 206) = v102 | 2;
            }
          }

LABEL_159:
          if (v91)
          {
            v103 = (*(v334 + 332) & 2) == 0;
            if (!v45)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v103 = 0;
            if (!v45)
            {
              goto LABEL_165;
            }
          }

          if (nw_content_context_has_metadata(v45))
          {
            foreach_block[0] = MEMORY[0x1E69E9820];
            foreach_block[1] = 3221225472;
            foreach_block[2] = ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke_86;
            foreach_block[3] = &unk_1E6A2DC30;
            v344 = v44;
            v345 = v103;
            nw_content_context_foreach_protocol_metadata(v45, foreach_block);

            goto LABEL_167;
          }

LABEL_165:
          if (!v103)
          {
            goto LABEL_174;
          }

          nw_frame_set_metadata(v44, 0, 0, 1);
          if (!v45)
          {
            goto LABEL_174;
          }

LABEL_167:
          if (v103)
          {
            v104 = v45;
            if (v104 == &__block_literal_global_44658 || v104 == &__block_literal_global_10_44685)
            {

              goto LABEL_174;
            }

            if (v104 == &__block_literal_global_6_44667 || v104 == &__block_literal_global_8_44676)
            {

LABEL_173:
              *(v44 + 186) |= 0x80u;
              goto LABEL_174;
            }

            v105 = (BYTE6(v104[14].isa) & 1) == 0;

            if (!v105)
            {
              goto LABEL_173;
            }
          }

LABEL_174:
          nw_frame_collapse(v44);
          nw_frame_unclaim(v44, v106, *(v352 + 6), 0);
          v107 = *(v44 + 32);
          v108 = *(v44 + 40);
          v109 = v107 + 5;
          if (!v107)
          {
            v109 = &v337;
          }

          *v109 = v108;
          *v108 = v107;
          v110 = v350;
          *(v44 + 32) = 0;
          *(v44 + 40) = v110;
          *v110 = v44;
          v350 = (v44 + 32);

          _Block_object_dispose(&v351, 8);
          if (v41)
          {
            v111 = v332 != 0;
          }

          else
          {
            v111 = 0;
          }

          v47 = v45;
          v112 = v332;
          v44 = v332;
          if (!v111)
          {
            goto LABEL_240;
          }
        }

        if ((nw_endpoint_handler_get_logging_disabled(v313) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v113 = gconnectionLogObj;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            v114 = nw_endpoint_handler_get_id_string(v313);
            v115 = nw_endpoint_handler_dry_run_string(v313);
            v116 = nw_endpoint_handler_copy_endpoint(v313);
            v117 = v116;
            v319 = v115;
            dataa = v114;
            if (v116)
            {
              v118 = _nw_endpoint_get_logging_description(v116);
            }

            else
            {
              v118 = "<NULL>";
            }

            v144 = v117;
            v145 = nw_endpoint_handler_state_string(v313);
            v146 = nw_endpoint_handler_mode_string(v313);
            v147 = nw_endpoint_handler_copy_current_path(v313);
            *buf = 136447746;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = dataa;
            *&buf[22] = 2082;
            v357 = v319;
            *v358 = 2082;
            *&v358[2] = v118;
            *&v358[10] = 2082;
            *&v358[12] = v145;
            *&v358[20] = 2082;
            *&v358[22] = v146;
            v359 = 2114;
            v360 = v147;
            _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Claiming frame failed", buf, 0x48u);
          }
        }

        v148 = v332;
        nw_write_request_fail(v70, 22);
LABEL_238:
        *(v334 + 332) &= ~2u;
        _Block_object_dispose(&v351, 8);
LABEL_239:

        v112 = v44;
        v41 = v70;
        data = v54;
LABEL_240:
        if (v45)
        {
          v160 = v334;
          if ((*(v334 + 332) & 2) != 0)
          {
            v161 = v112;
            objc_storeStrong((v334 + 224), v45);
            v112 = v161;
            goto LABEL_243;
          }
        }

        else
        {
LABEL_243:
          v160 = v334;
        }

        v333 = v112;
        v162 = v160[40];
        (v317->protocol.output_handler->callbacks->finalize_output_frames)();
        v163 = v160[40];
        if (!v163)
        {
          goto LABEL_263;
        }

        if (v162 == v163)
        {
          goto LABEL_263;
        }

        v164 = v163;
        v165 = v164[2] == 1;

        v160 = v334;
        if (!v165)
        {
          goto LABEL_263;
        }

        v166 = nw_error_get_error_code(*(v334 + 320));
        if (v166 == 4 || v166 == 35)
        {
          goto LABEL_263;
        }

        if (v166 != 32)
        {
          v175 = v166;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v169 = gLogObj;
          if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 1024;
            *&buf[14] = v175;
            _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_ERROR, "%{public}s Failing the write requests %{darwin.errno}d", buf, 0x12u);
          }

          goto LABEL_261;
        }

        v167 = nw_endpoint_handler_get_minimize_logging(v313);
        v168 = nw_endpoint_handler_get_logging_disabled(v313);
        if (v167)
        {
          if (v168)
          {
            goto LABEL_262;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v214 = gconnectionLogObj;
          if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
          {
            v215 = nw_endpoint_handler_get_id_string(v313);
            v216 = nw_endpoint_handler_dry_run_string(v313);
            v217 = nw_endpoint_handler_copy_endpoint(v313);
            v218 = nw_endpoint_get_logging_description(v217);
            v324 = nw_endpoint_handler_state_string(v313);
            v316 = nw_endpoint_handler_mode_string(v313);
            v219 = nw_endpoint_handler_copy_current_path(v313);
            *buf = 136447746;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v215;
            *&buf[22] = 2082;
            v357 = v216;
            *v358 = 2082;
            *&v358[2] = v218;
            *&v358[10] = 2082;
            *&v358[12] = v324;
            *&v358[20] = 2082;
            *&v358[22] = v316;
            v359 = 2114;
            v360 = v219;
            v169 = v214;
            _os_log_impl(&dword_181A37000, v214, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failing the write requests due to the connection being closed", buf, 0x48u);
          }

          else
          {
            v169 = v214;
          }

LABEL_261:

          v160 = v334;
          goto LABEL_262;
        }

        if ((v168 & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v169 = gconnectionLogObj;
          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
          {
            v170 = nw_endpoint_handler_get_id_string(v313);
            v171 = nw_endpoint_handler_dry_run_string(v313);
            v172 = nw_endpoint_handler_copy_endpoint(v313);
            v173 = v172;
            v322 = v170;
            if (v172)
            {
              v174 = _nw_endpoint_get_logging_description(v172);
            }

            else
            {
              v174 = "<NULL>";
            }

            v176 = nw_endpoint_handler_state_string(v313);
            v177 = nw_endpoint_handler_mode_string(v313);
            v178 = nw_endpoint_handler_copy_current_path(v313);
            *buf = 136447746;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v322;
            *&buf[22] = 2082;
            v357 = v171;
            *v358 = 2082;
            *&v358[2] = v174;
            *&v358[10] = 2082;
            *&v358[12] = v176;
            *&v358[20] = 2082;
            *&v358[22] = v177;
            v359 = 2114;
            v360 = v178;
            _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failing the write requests due to the connection being closed", buf, 0x48u);
          }

          goto LABEL_261;
        }

LABEL_262:
        nw_write_request_report_error_with_override(v160[25], 0, v160[40]);
        nw_write_request_report_error_with_override(v160[24], 0, v160[40]);
LABEL_263:
        v179 = nw_write_request_list_prune(v160[25]);
        v180 = v160[25];
        v160[25] = v179;

        v181 = nw_write_request_list_prune(*(v334 + 192));
        v182 = *(v334 + 192);
        *(v334 + 192) = v181;

        if (v336)
        {
          v351 = 0;
          v352 = &v351;
          v353 = 0x2020000000;
          LODWORD(v354) = 0;
          v339[0] = MEMORY[0x1E69E9820];
          v339[1] = 3221225472;
          v340 = ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke_88;
          v341 = &unk_1E6A2DBE0;
          v342 = &v351;
          do
          {
            v183 = v336;
            if (!v336)
            {
              break;
            }

            v184 = v336[4];
            v185 = v336[5];
            v186 = v184 + 5;
            if (!v184)
            {
              v186 = &v337;
            }

            *v186 = v185;
            *v185 = v184;
            v183[4] = 0;
            v183[5] = 0;
          }

          while (((v340)(v339) & 1) != 0);
          if ((nw_endpoint_handler_get_logging_disabled(v313) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v187 = gconnectionLogObj;
            if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
            {
              v188 = nw_endpoint_handler_get_id_string(v313);
              v189 = nw_endpoint_handler_dry_run_string(v313);
              v190 = nw_endpoint_handler_copy_endpoint(v313);
              v191 = v190;
              v335 = v188;
              if (v190)
              {
                v192 = _nw_endpoint_get_logging_description(v190);
              }

              else
              {
                v192 = "<NULL>";
              }

              v193 = nw_endpoint_handler_state_string(v313);
              v194 = v187;
              v195 = v162;
              v196 = nw_endpoint_handler_mode_string(v313);
              v197 = nw_endpoint_handler_copy_current_path(v313);
              v198 = *(v352 + 6);
              *buf = 136448002;
              *&buf[4] = "nw_flow_prepare_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v335;
              *&buf[22] = 2082;
              v357 = v189;
              *v358 = 2082;
              *&v358[2] = v192;
              *&v358[10] = 2082;
              *&v358[12] = v193;
              *&v358[20] = 2082;
              *&v358[22] = v196;
              v162 = v195;
              v187 = v194;
              v359 = 2114;
              v360 = v197;
              v361 = 1024;
              v362 = v198;
              _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to use %u frames, marking as failed", buf, 0x4Eu);
            }
          }

          _Block_object_dispose(&v351, 8);
        }

        v199 = nw_flow_handle_send_complete(v310, v311, v317);
        if (v199)
        {
LABEL_355:
          *(v317 + 166) &= ~8u;
          v243 = 1;
          goto LABEL_356;
        }
      }
    }

    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v310) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v220 = gconnectionLogObj;
      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
      {
        v226 = nw_endpoint_handler_get_id_string(v310);
        v227 = nw_endpoint_handler_dry_run_string(v310);
        v228 = nw_endpoint_handler_copy_endpoint(v310);
        v229 = nw_endpoint_get_logging_description(v228);
        v230 = nw_endpoint_handler_state_string(v310);
        v231 = nw_endpoint_handler_mode_string(v310);
        v232 = nw_endpoint_handler_copy_current_path(v310);
        *buf = 136447746;
        *&buf[4] = "nw_flow_service_writes";
        *&buf[12] = 2082;
        *&buf[14] = v226;
        *&buf[22] = 2082;
        v357 = v227;
        *v358 = 2082;
        *&v358[2] = v229;
        *&v358[10] = 2082;
        *&v358[12] = v230;
        *&v358[20] = 2082;
        *&v358[22] = v231;
        v359 = 2114;
        v360 = v232;
        _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Already servicing writes, ignoring...", buf, 0x48u);
      }

LABEL_323:
    }
  }

  else if ((nw_endpoint_handler_get_logging_disabled(v310) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v220 = gconnectionLogObj;
    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
    {
      v221 = nw_endpoint_handler_get_id_string(v310);
      v222 = nw_endpoint_handler_dry_run_string(v310);
      v223 = nw_endpoint_handler_copy_endpoint(v310);
      v224 = v223;
      if (v223)
      {
        v225 = _nw_endpoint_get_logging_description(v223);
      }

      else
      {
        v225 = "<NULL>";
      }

      v240 = nw_endpoint_handler_state_string(v310);
      v241 = nw_endpoint_handler_mode_string(v310);
      v242 = nw_endpoint_handler_copy_current_path(v310);
      *buf = 136447746;
      *&buf[4] = "nw_flow_service_writes";
      *&buf[12] = 2082;
      *&buf[14] = v221;
      *&buf[22] = 2082;
      v357 = v222;
      *v358 = 2082;
      *&v358[2] = v225;
      *&v358[10] = 2082;
      *&v358[12] = v240;
      *&v358[20] = 2082;
      *&v358[22] = v241;
      v359 = 2114;
      v360 = v242;
      _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No output handler", buf, 0x48u);
    }

    goto LABEL_323;
  }

LABEL_324:
  v243 = 0;
LABEL_356:

  return v243;
}

BOOL nw_content_context_has_metadata(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v1 + 28);
      v4 = *&v2[22]._os_unfair_lock_opaque;
      if (v4)
      {
        v3 = _nw_array_get_count(v4) != 0;
      }

      else
      {
        v3 = 0;
      }

      os_unfair_lock_unlock(v2 + 28);
    }

    goto LABEL_10;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_content_context_has_metadata";
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
        v17 = "nw_content_context_has_metadata";
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
          v17 = "nw_content_context_has_metadata";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_content_context_has_metadata";
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
        v17 = "nw_content_context_has_metadata";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

dispatch_data_t nw_write_request_copy_data(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!*(v1 + 9))
  {
    v4 = *(v1 + 14);
    v5 = *(v1 + 7);
    if (v4)
    {
      size = dispatch_data_get_size(*(v1 + 7));
      if (size < v4)
      {
        v7 = size;
        nw_write_request_report(v2, 0, 0);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v2[14];
          v12 = 136446722;
          v13 = "nw_write_request_copy_data";
          v14 = 2048;
          v15 = v7;
          v16 = 2048;
          v17 = v9;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Invalid consumed bytes (%zu < %zu)", &v12, 0x20u);
        }

        goto LABEL_2;
      }

      subrange = dispatch_data_create_subrange(v5, v4, size - v4);
    }

    else
    {
      subrange = v5;
    }

    v3 = subrange;
    goto LABEL_11;
  }

LABEL_2:
  v3 = 0;
LABEL_11:

  return v3;
}

uint64_t nw_write_request_consume_bytes(void *a1, uint64_t a2)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v4 = *(v3 + 7);
  v5 = *(v3 + 9);
  if (v4)
  {
    if (!v5)
    {
      size = dispatch_data_get_size(*(v3 + 7));
      v7 = *(v3 + 14) + a2;
      if (v7 < size)
      {
        *(v3 + 14) = v7;
LABEL_66:
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
        }

        if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
        }

        v23 = 0;
        goto LABEL_72;
      }

      *(v3 + 14) = 0;
      goto LABEL_33;
    }

LABEL_11:
    v8 = *(v3 + 12);
    v9 = *(v3 + 14) + a2;
    *(v3 + 14) = v9;
    if (v9 >= v8)
    {
      *(v3 + 128) |= 0x10u;
LABEL_33:
      *(v3 + 7) = 0;

      if (*(v3 + 128))
      {
        nw_content_context_mark_completed_send(*(v3 + 8), 0);
      }

      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v23 = *(v3 + 128) & 1;
      goto LABEL_72;
    }

    if ((*(v3 + 128) & 0x20) != 0)
    {
      goto LABEL_66;
    }

    v11 = v3;
    v12 = v11[5];
    if (v12)
    {
      *(v3 + 128) |= 0x20u;
      v13 = *(v12 + 16);
      if (v13 && !_nw_parameters_get_logging_disabled(v13))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v14 = gconnectionLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v11[5] + 448);
          v16 = *(v3 + 9);
          *buf = 136446722;
          *&buf[4] = "nw_write_request_start_file_updates";
          *&buf[12] = 1024;
          *&buf[14] = v15;
          *&buf[18] = 2112;
          *&buf[20] = v16;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Activating progress updates on write request on %@", buf, 0x1Cu);
        }
      }

      v17 = v11[10];
      if (v17)
      {
        nw_queue_cancel_source(v17, v10);
        v11[10] = 0;
      }

      objc_initWeak(&location, v11);
      v18 = *(v11[5] + 24);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke;
      *&buf[24] = &unk_1E6A3A6C8;
      objc_copyWeak(v49, &location);
      source = nw_queue_context_create_source(v18, 2, 3, 0, buf, 0);
      v11[10] = source;
      if (source)
      {
        v20 = dispatch_time(0x8000000000000000, 1000000);
        v21 = 1000000 * *(v11 + 22);
        if (*source)
        {
          dispatch_source_set_timer(*source, v20, v21, 0x3E8uLL);
        }

        else
        {
          *(source + 32) = v20;
          *(source + 40) = v21;
          if (*(source + 48) == 1 && *(source + 49) == 1)
          {
            nw_queue_source_run_timer(source, v20);
          }
        }

        nw_queue_activate_source(v11[10], v20);
        goto LABEL_64;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      *v44 = 136446210;
      v45 = "nw_write_request_start_file_updates";
      v25 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v41 = 0;
      if (__nwlog_fault(v25, &type, &v41))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *v44 = 136446210;
            v45 = "nw_write_request_start_file_updates";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed", v44, 0xCu);
          }
        }

        else if (v41 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v29 = type;
          v30 = os_log_type_enabled(v26, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *v44 = 136446466;
              v45 = "nw_write_request_start_file_updates";
              v46 = 2082;
              v47 = backtrace_string;
              _os_log_impl(&dword_181A37000, v26, v29, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed, dumping backtrace:%{public}s", v44, 0x16u);
            }

            free(backtrace_string);
            if (!v25)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          if (v30)
          {
            *v44 = 136446210;
            v45 = "nw_write_request_start_file_updates";
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed, no backtrace", v44, 0xCu);
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v31 = type;
          if (os_log_type_enabled(v26, type))
          {
            *v44 = 136446210;
            v45 = "nw_write_request_start_file_updates";
            _os_log_impl(&dword_181A37000, v26, v31, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed, backtrace limit exceeded", v44, 0xCu);
          }
        }
      }

      if (!v25)
      {
LABEL_64:
        objc_destroyWeak(v49);
        objc_destroyWeak(&location);
LABEL_65:

        goto LABEL_66;
      }

LABEL_63:
      free(v25);
      goto LABEL_64;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_write_request_start_file_updates";
    v34 = _os_log_send_and_compose_impl();

    v44[0] = 16;
    LOBYTE(location) = 0;
    if (__nwlog_fault(v34, v44, &location))
    {
      if (v44[0] == 17)
      {
        v35 = __nwlog_obj();
        v36 = v44[0];
        if (os_log_type_enabled(v35, v44[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_write_request_start_file_updates";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null request->connection", buf, 0xCu);
        }
      }

      else if (location == 1)
      {
        v37 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v38 = v44[0];
        v39 = os_log_type_enabled(v35, v44[0]);
        if (v37)
        {
          if (v39)
          {
            *buf = 136446466;
            *&buf[4] = "nw_write_request_start_file_updates";
            *&buf[12] = 2082;
            *&buf[14] = v37;
            _os_log_impl(&dword_181A37000, v35, v38, "%{public}s called with null request->connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
          goto LABEL_89;
        }

        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "nw_write_request_start_file_updates";
          _os_log_impl(&dword_181A37000, v35, v38, "%{public}s called with null request->connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v35 = __nwlog_obj();
        v40 = v44[0];
        if (os_log_type_enabled(v35, v44[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_write_request_start_file_updates";
          _os_log_impl(&dword_181A37000, v35, v40, "%{public}s called with null request->connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_89:
    if (v34)
    {
      free(v34);
    }

    goto LABEL_65;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  if ((*(v3 + 128) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_write_request_consume_bytes";
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s No data to consume", buf, 0xCu);
    }
  }

  v23 = 1;
LABEL_72:

  return v23;
}

void sub_181AA0A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t nw_frame_unclaimed_length(_DWORD *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "__nw_frame_unclaimed_length";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v9 = 0;
    if (!__nwlog_fault(v3, &type, &v9))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v12 = "__nw_frame_unclaimed_length";
      v6 = "%{public}s called with null frame";
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
          v12 = "__nw_frame_unclaimed_length";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (!v8)
      {
LABEL_18:
        if (v3)
        {
          free(v3);
        }

        return 0;
      }

      *buf = 136446210;
      v12 = "__nw_frame_unclaimed_length";
      v6 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v12 = "__nw_frame_unclaimed_length";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_18;
  }

  v1 = a1[13];
  if (v1)
  {
    return (v1 - (a1[14] + a1[15]));
  }

  return 0;
}

void nw_frame_set_metadata(uint64_t a1, void *object, int a3, int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "__nw_frame_set_metadata";
    v18 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v18, type, &v51))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type[0];
      if (!os_log_type_enabled(v41, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v54 = "__nw_frame_set_metadata";
      v21 = "%{public}s called with null frame";
    }

    else if (v51 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type[0];
      v44 = os_log_type_enabled(v41, type[0]);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v54 = "__nw_frame_set_metadata";
          v55 = 2082;
          v56 = backtrace_string;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_70;
      }

      if (!v44)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v54 = "__nw_frame_set_metadata";
      v21 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type[0];
      if (!os_log_type_enabled(v41, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v54 = "__nw_frame_set_metadata";
      v21 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    v38 = v41;
    v39 = v42;
    v40 = 12;
    goto LABEL_69;
  }

  if (object)
  {
    if (!_nw_protocol_metadata_is_ip(object))
    {
LABEL_12:
      v11 = (a1 + 204);
      if ((*(a1 + 204) & 8) == 0)
      {
        goto LABEL_13;
      }

      memset(type, 0, sizeof(type));
      v22 = object;
      _nw_protocol_metadata_copy_identifier(v22, type);

      v23 = *(a1 + 64);
      if (!v23)
      {
        goto LABEL_45;
      }

      v24 = 0;
      if (a4)
      {
        v25 = 64;
      }

      else
      {
        v25 = 0;
      }

      while (1)
      {
        v26 = _nw_protocol_metadata_copy_definition(v22);
        v27 = v23[6];
        if (v27)
        {
          v28 = _nw_protocol_metadata_copy_definition(v27);
          if (nw_protocol_definition_is_equal_unsafe(v26, v28) && !uuid_compare(type, v23 + 16))
          {
            os_retain(v22);
            v29 = v23[6];
            if (v29)
            {
              os_release(v29);
            }

            v23[6] = v22;
            *(v23 + 66) = *(v23 + 66) & 0xBF | v25;
            v24 = 1;
            if (!v28)
            {
              goto LABEL_38;
            }

LABEL_37:
            os_release(v28);
            goto LABEL_38;
          }

          if (v28)
          {
            goto LABEL_37;
          }
        }

LABEL_38:
        if (v26)
        {
          os_release(v26);
        }

        v23 = *v23;
        if (!v23)
        {
          if ((v24 & 1) == 0)
          {
LABEL_45:
            v30 = malloc_type_calloc(1uLL, 0x48uLL, 0x7DE37D5uLL);
            if (v30)
            {
              goto LABEL_48;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            v54 = "__nw_frame_set_metadata";
            v55 = 2048;
            v56 = 1;
            v57 = 2048;
            v58 = 72;
            v31 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v31))
            {
              __break(1u);
            }

            else
            {
              free(v31);
LABEL_48:
              v30[6] = os_retain(v22);
              *(v30 + 1) = *type;
              if (a4)
              {
                v32 = 64;
              }

              else
              {
                v32 = 0;
              }

              *(v30 + 66) = *(v30 + 66) & 0xBF | v32;
              if (a3)
              {
                v33 = *(a1 + 64);
                *v30 = v33;
                if (v33)
                {
                  v34 = (v33 + 8);
                }

                else
                {
                  v34 = (a1 + 72);
                }

                *v34 = v30;
                *(a1 + 64) = v30;
                v30[1] = a1 + 64;
              }

              else
              {
                *v30 = 0;
                v35 = *(a1 + 72);
                v30[1] = v35;
                *v35 = v30;
                *(a1 + 72) = v30;
              }
            }
          }

          return;
        }
      }
    }

    *(a1 + 186) = *(a1 + 186) & 0xFC | _nw_ip_metadata_get_ecn_flag(object) & 3;
    dscp_value = _nw_ip_metadata_get_dscp_value(object);
    if (dscp_value < 0x40)
    {
      *(a1 + 184) = dscp_value;
LABEL_6:
      service_class = _nw_ip_metadata_get_service_class(object);
      if (service_class > 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_182B0E000[service_class];
      }

      *(a1 + 176) = v10;
      *(a1 + 180) = _nw_ip_metadata_get_fragmentation_value(object);
      goto LABEL_12;
    }

    __nwlog_obj();
    *buf = 136446210;
    v54 = "__nw_frame_set_dscp_value";
    v45 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v45, type, &v51))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v46 = __nwlog_obj();
        v47 = type[0];
        if (!os_log_type_enabled(v46, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446210;
        v54 = "__nw_frame_set_dscp_value";
        v48 = "%{public}s called with null (dscp_value <= _MAX_DSCP)";
        goto LABEL_100;
      }

      if (v51 != 1)
      {
        v46 = __nwlog_obj();
        v47 = type[0];
        if (!os_log_type_enabled(v46, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446210;
        v54 = "__nw_frame_set_dscp_value";
        v48 = "%{public}s called with null (dscp_value <= _MAX_DSCP), backtrace limit exceeded";
        goto LABEL_100;
      }

      v49 = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = type[0];
      v50 = os_log_type_enabled(v46, type[0]);
      if (v49)
      {
        if (v50)
        {
          *buf = 136446466;
          v54 = "__nw_frame_set_dscp_value";
          v55 = 2082;
          v56 = v49;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null (dscp_value <= _MAX_DSCP), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v49);
        goto LABEL_101;
      }

      if (v50)
      {
        *buf = 136446210;
        v54 = "__nw_frame_set_dscp_value";
        v48 = "%{public}s called with null (dscp_value <= _MAX_DSCP), no backtrace";
LABEL_100:
        _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
      }
    }

LABEL_101:
    if (v45)
    {
      free(v45);
    }

    goto LABEL_6;
  }

  v11 = (a1 + 204);
  if ((*(a1 + 204) & 8) != 0)
  {
    return;
  }

LABEL_13:
  v12 = *(a1 + 168);
  if (v12)
  {
    os_release(v12);
    *(a1 + 168) = 0;
  }

  if (object)
  {
    *(a1 + 168) = os_retain(object);
    v13 = *(a1 + 204);
    if ((v13 & 0x20) == 0)
    {
      v14 = object;
      _nw_protocol_metadata_copy_identifier(v14, (a1 + 136));

      v13 = *(a1 + 204);
    }

    *v11 = v13 | 8;
  }

  v15 = a1 + 120;
  v16 = *(a1 + 64);
  if (a4)
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 186) = *(a1 + 186) & 0xBF | v17;
  if (!v16)
  {
    *(a1 + 64) = v15;
    *(a1 + 72) = v15;
    *(a1 + 120) = 0;
    *(a1 + 128) = a1 + 64;
    return;
  }

  if (v16 != v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v54 = "__nw_frame_set_metadata";
    v55 = 2048;
    v56 = v16;
    v57 = 2048;
    v58 = a1 + 120;
    v18 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v18, type, &v51))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446722;
      v54 = "__nw_frame_set_metadata";
      v55 = 2048;
      v56 = v16;
      v57 = 2048;
      v58 = v15;
      v21 = "%{public}s Existing metadata %p doesn't match expected %p";
      goto LABEL_68;
    }

    if (v51 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446722;
      v54 = "__nw_frame_set_metadata";
      v55 = 2048;
      v56 = v16;
      v57 = 2048;
      v58 = v15;
      v21 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
      goto LABEL_68;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type[0];
    v37 = os_log_type_enabled(gLogObj, type[0]);
    if (v36)
    {
      if (v37)
      {
        *buf = 136446978;
        v54 = "__nw_frame_set_metadata";
        v55 = 2048;
        v56 = v16;
        v57 = 2048;
        v58 = v15;
        v59 = 2082;
        v60 = v36;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v36);
      if (!v18)
      {
        return;
      }

LABEL_71:
      free(v18);
      return;
    }

    if (v37)
    {
      *buf = 136446722;
      v54 = "__nw_frame_set_metadata";
      v55 = 2048;
      v56 = v16;
      v57 = 2048;
      v58 = v15;
      v21 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
LABEL_68:
      v38 = v19;
      v39 = v20;
      v40 = 32;
LABEL_69:
      _os_log_impl(&dword_181A37000, v38, v39, v21, buf, v40);
    }

LABEL_70:
    if (!v18)
    {
      return;
    }

    goto LABEL_71;
  }
}

void nw_protocol_default_get_message_properties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(v3 + 24);
        if (v4)
        {
          v5 = *(v4 + 248);
          if (v5)
          {

            v5();
          }
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_default_get_message_properties";
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
        goto LABEL_23;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_get_message_properties";
      v9 = "%{public}s called with null protocol";
      goto LABEL_22;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_get_message_properties";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_22;
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
        v15 = "nw_protocol_default_get_message_properties";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_23;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_default_get_message_properties";
      v9 = "%{public}s called with null protocol, no backtrace";
LABEL_22:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }
}

void nw_content_context_mark_completed_send(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v3 + 28);
      *(v3 + 118) |= 4u;
      objc_storeStrong(v3 + 12, a2);
      *(v3 + 9) = 0;
      os_unfair_lock_unlock(v3 + 28);
    }

    goto LABEL_7;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_content_context_mark_completed_send";
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
        v16 = "nw_content_context_mark_completed_send";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null context", buf, 0xCu);
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
          v16 = "nw_content_context_mark_completed_send";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_content_context_mark_completed_send";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_content_context_mark_completed_send";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v6)
  {
    free(v6);
  }

LABEL_7:
}

void nw_frame_collapse(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v32 = "__nw_frame_collapse";
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v23, &type, &v29))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v32 = "__nw_frame_collapse";
      v26 = "%{public}s called with null frame";
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v28 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v32 = "__nw_frame_collapse";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_43;
      }

      if (!v28)
      {
LABEL_43:
        if (v23)
        {
          free(v23);
        }

        return;
      }

      *buf = 136446210;
      v32 = "__nw_frame_collapse";
      v26 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v32 = "__nw_frame_collapse";
      v26 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
    goto LABEL_43;
  }

  v1 = *(a1 + 52);
  if (v1)
  {
    v3 = *(a1 + 56);
    v2 = *(a1 + 60);
    v4 = (v1 - (v2 + v3));
    if (v1 != v2 + v3)
    {
      if (v2)
      {
        v5 = *(a1 + 112);
        if (v5)
        {
          v6 = a1;
          memmove((v5 + v3), (v5 + v3 + v4), v2);
          a1 = v6;
          v1 = *(v6 + 52);
        }
      }

      *(a1 + 52) = v1 - v4;
      if ((*(a1 + 204) & 0x80) != 0)
      {
        v7 = *(a1 + 196);
        v8 = v7 >= v4;
        v9 = v7 - v4;
        *(a1 + 196) = v9;
        if (!v8 || v9 >= 0x10000)
        {
          v10 = a1;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = v10;
          v12 = *(v10 + 196);
          *buf = 136446978;
          v32 = "__nw_frame_collapse";
          v33 = 2082;
          v34 = "frame->aggregate_buffer_length";
          v35 = 2048;
          v36 = v4;
          v37 = 2048;
          v38 = v12;
          v13 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v29 = 0;
          if (__nwlog_fault(v13, &type, &v29))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type;
              if (os_log_type_enabled(gLogObj, type))
              {
                v16 = *(v11 + 196);
                *buf = 136446978;
                v32 = "__nw_frame_collapse";
                v33 = 2082;
                v34 = "frame->aggregate_buffer_length";
                v35 = 2048;
                v36 = v4;
                v37 = 2048;
                v38 = v16;
                v17 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_24:
                _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x2Au);
              }
            }

            else if (v29 == 1)
            {
              v18 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type;
              v19 = os_log_type_enabled(v14, type);
              if (v18)
              {
                if (v19)
                {
                  v20 = *(v11 + 196);
                  *buf = 136447234;
                  v32 = "__nw_frame_collapse";
                  v33 = 2082;
                  v34 = "frame->aggregate_buffer_length";
                  v35 = 2048;
                  v36 = v4;
                  v37 = 2048;
                  v38 = v20;
                  v39 = 2082;
                  v40 = v18;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v18);
                goto LABEL_25;
              }

              if (v19)
              {
                v22 = *(v11 + 196);
                *buf = 136446978;
                v32 = "__nw_frame_collapse";
                v33 = 2082;
                v34 = "frame->aggregate_buffer_length";
                v35 = 2048;
                v36 = v4;
                v37 = 2048;
                v38 = v22;
                v17 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_24;
              }
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (os_log_type_enabled(v14, type))
              {
                v21 = *(v11 + 196);
                *buf = 136446978;
                v32 = "__nw_frame_collapse";
                v33 = 2082;
                v34 = "frame->aggregate_buffer_length";
                v35 = 2048;
                v36 = v4;
                v37 = 2048;
                v38 = v21;
                v17 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_24;
              }
            }
          }

LABEL_25:
          if (v13)
          {
            free(v13);
          }

          *(v11 + 196) = 0;
        }
      }
    }
  }
}

void nw_parameters_set_allow_ultra_constrained(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_allow_ultra_constrained(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_allow_ultra_constrained";
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
        v12 = "nw_parameters_set_allow_ultra_constrained";
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
            v12 = "nw_parameters_set_allow_ultra_constrained";
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
        v12 = "nw_parameters_set_allow_ultra_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_allow_ultra_constrained";
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
}

nw_interface_type_t nw_interface_get_type(nw_interface_t interface)
{
  v15 = *MEMORY[0x1E69E9840];
  if (interface)
  {

    return _nw_interface_get_type(interface);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_type";
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
        v12 = "nw_interface_get_type";
        v6 = "%{public}s called with null interface";
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
            v12 = "nw_interface_get_type";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_interface_get_type";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_type";
        v6 = "%{public}s called with null interface, backtrace limit exceeded";
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

uint64_t nw_path_copy_direct_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_direct_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_direct_interface";
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
        v16 = "nw_path_copy_direct_interface";
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
          v16 = "nw_path_copy_direct_interface";
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
        v16 = "nw_path_copy_direct_interface";
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
        v16 = "nw_path_copy_direct_interface";
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

void sub_181AA2924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_181AA2988()
{
  sub_181AA2924(319, &qword_1ED40F4B8, 255, type metadata accessor for NWPath, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18207E248(319, qword_1ED40FBF0, &unk_1EA8397F0);
    if (v1 <= 0x3F)
    {
      sub_181AA2924(319, &unk_1EA836E70, 255, sub_181AA2FA8, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_181AA2FF4();
        if (v4 <= 0x3F)
        {
          sub_181AA2924(319, &qword_1EA836F10, v3, type metadata accessor for NWPathMonitor, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_181AA2B1C()
{
  sub_181AA2C74();
  if (v0 <= 0x3F)
  {
    sub_181AA2924(319, &unk_1EA836F40, 255, type metadata accessor for NWEndpoint, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_181AA2924(319, &qword_1ED40F5C0, 255, type metadata accessor for NWEndpoint, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_18207E248(319, &unk_1EA836F50, &qword_1EA839F38);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_181AA2C74()
{
  if (!qword_1EA836F60)
  {
    v0 = sub_182AD3488();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA836F60);
    }
  }
}

void sub_181AA2CC4()
{
  sub_181AA2D74();
  if (v0 <= 0x3F)
  {
    sub_181AA2DD8(319);
    if (v1 <= 0x3F)
    {
      sub_181AA2F14();
      if (v2 <= 0x3F)
      {
        sub_182AD2058();
        if (v3 <= 0x3F)
        {
          sub_181AA2F44();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_181AA2D74()
{
  if (!qword_1EA836FB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836FB0);
    }
  }
}

void sub_181AA2DD8(uint64_t a1)
{
  if (!qword_1EA836FA8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8395A0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EA836FA8);
    }
  }
}

uint64_t sub_181AA2F14()
{
  result = qword_1EA836F98;
  if (!qword_1EA836F98)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EA836F98);
  }

  return result;
}

unint64_t sub_181AA2F44()
{
  result = qword_1EA836F80;
  if (!qword_1EA836F80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA836F80);
  }

  return result;
}

unint64_t sub_181AA2FA8()
{
  result = qword_1EA836F30;
  if (!qword_1EA836F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA836F30);
  }

  return result;
}

void sub_181AA2FF4()
{
  if (!qword_1EA836E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839610);
    v0 = sub_182AD2E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA836E80);
    }
  }
}

uint64_t sub_181AA30BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_181AA3140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181AA31FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_181AA333C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t NWPathMonitor.pathUpdateHandler.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_181AA39D0(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  return sub_181A554F4(a1);
}

uint64_t NWPathMonitor.init()()
{
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  v2 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWPath(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = &v4[v2[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[v2[8]] = 1;
  *&v4[v2[9]] = 0;
  *&v4[v2[10]] = MEMORY[0x1E69E7CC8];
  v4[v2[11]] = 0;
  v4[v2[12]] = 0;
  *&v4[v2[13]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED0);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181AA38E8(v4, v7 + *(*v7 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for NWPathMonitor.LockedState);
  *(v0 + 16) = v7;
  *(v0 + 24) = nw_path_monitor_create();
  return v0;
}

uint64_t sub_181AA3838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181AA38E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181AA3950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for NWPathMonitor.LockedState(0) + 20));
  v6 = *v5;
  sub_181AA39C0(a2);
  result = sub_181A554F4(v6);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_181AA39C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for NWEndpoint()
{
  result = qword_1ED40F6B0;
  if (!qword_1ED40F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_181AA3A38(uint64_t a1, uint64_t a2, void *a3)
{
  result = type metadata accessor for NWPathMonitor.LockedState(0);
  v7 = result[7];
  if (!*(a1 + v7))
  {
    v8 = result[11];

    *(a1 + v8) = a2;
    *(a1 + v7) = a3;
    v9 = a3;
    return sub_181AA3AB8(a1);
  }

  return result;
}

int *sub_181AA3AB8(uint64_t a1)
{
  v3 = sub_182AD27A8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD27C8();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for NWPath(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  result = type metadata accessor for NWPathMonitor.LockedState(0);
  v20 = result[9];
  if (*(a1 + v20))
  {
    v21 = (a1 + result[5]);
    v22 = *v21;
    if (*v21 && *(a1 + result[7]))
    {
      v23 = v21[1];
      v39 = *(a1 + result[7]);
      v40 = v23;
      sub_181AB5D28(a1, v11, &qword_1EA839EC8);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        return sub_181F49A88(v11, &qword_1EA839EC8);
      }

      else
      {
        sub_181AA38E8(v11, v18, type metadata accessor for NWPath);
        sub_181B811E4(v18, v15, type metadata accessor for NWPath);
        v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v32 = v22;
        v33 = swift_allocObject();
        v34 = v40;
        *(v33 + 16) = v32;
        *(v33 + 24) = v34;
        sub_181AA38E8(v15, v33 + v31, type metadata accessor for NWPath);
        v50 = sub_181B815C4;
        v51 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = sub_181B7D048;
        v49 = &block_descriptor_121;
        v35 = _Block_copy(&aBlock);
        sub_181AA39C0(v32);
        sub_181AA39C0(v32);
        v36 = v39;
        sub_182AD27B8();
        v45 = MEMORY[0x1E69E7CC0];
        sub_181B7CF9C(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
        sub_181B7CFE4();
        v37 = v44;
        sub_182AD3AC8();
        MEMORY[0x1865DA490](0, v8, v5, v35);

        _Block_release(v35);
        sub_181A554F4(v32);
        (*(v43 + 8))(v5, v37);
        (*(v41 + 8))(v8, v42);
        sub_181B81280(v18, type metadata accessor for NWPath);
      }
    }
  }

  else
  {
    *(a1 + v20) = 1;
    v24 = *(v1 + 24);
    v25 = swift_allocObject();
    swift_weakInit();
    v50 = sub_181B7F2F0;
    v51 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_181B7F17C;
    v49 = &block_descriptor_16;
    v26 = _Block_copy(&aBlock);

    nw_path_monitor_set_update_handler(v24, v26);
    _Block_release(v26);
    v27 = swift_allocObject();
    swift_weakInit();
    v50 = sub_181C0A9F0;
    v51 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_181B7D048;
    v49 = &block_descriptor_115;
    v28 = _Block_copy(&aBlock);

    nw_path_monitor_set_cancel_handler(v24, v28);
    _Block_release(v28);
    v29 = nw_path_monitor_copy_parameters(v24);
    result = nw_parameters_copy_context(v29);
    if (result)
    {
      v30 = nw_context_copy_workloop(result);
      swift_unknownObjectRelease();
      nw_path_monitor_set_queue(v24, v30);

      nw_path_monitor_start(v24);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_181AA4124()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void NWPathMonitor.start(queue:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181AA415C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void nw_path_monitor_set_update_handler(nw_path_monitor_t monitor, nw_path_monitor_update_handler_t update_handler)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = monitor;
  v4 = update_handler;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_path_monitor_set_update_handler";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
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
        v27 = "nw_path_monitor_set_update_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null monitor", buf, 0xCu);
      }
    }

    else if (v24 == 1)
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
          v27 = "nw_path_monitor_set_update_handler";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
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
        v27 = "nw_path_monitor_set_update_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_update_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = v3;
    v7 = v5;
    os_unfair_lock_lock(&v6[12]);
    v8 = _Block_copy(v7);
    isa = v6[8].isa;
    v6[8].isa = v8;

    os_unfair_lock_unlock(&v6[12]);
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_path_monitor_set_update_handler";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
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
      v27 = "nw_path_monitor_set_update_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null update_handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_path_monitor_set_update_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null update_handler, backtrace limit exceeded", buf, 0xCu);
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
      v27 = "nw_path_monitor_set_update_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null update_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_path_monitor_set_update_handler";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null update_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_path_monitor_set_cancel_handler(nw_path_monitor_t monitor, nw_path_monitor_cancel_handler_t cancel_handler)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = monitor;
  v4 = cancel_handler;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_path_monitor_set_cancel_handler";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
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
        v27 = "nw_path_monitor_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null monitor", buf, 0xCu);
      }
    }

    else if (v24 == 1)
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
          v27 = "nw_path_monitor_set_cancel_handler";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
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
        v27 = "nw_path_monitor_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = v4;
    v7 = v3;
    os_unfair_lock_lock(&v3[12]);
    v8 = _Block_copy(v6);

    isa = v7[9].isa;
    v7[9].isa = v8;

    os_unfair_lock_unlock(&v3[12]);
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_path_monitor_set_cancel_handler";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
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
      v27 = "nw_path_monitor_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null cancel_handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_path_monitor_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null cancel_handler, backtrace limit exceeded", buf, 0xCu);
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
      v27 = "nw_path_monitor_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null cancel_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_path_monitor_set_cancel_handler";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null cancel_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_39;
  }

LABEL_4:
}

id nw_path_evaluator_copy_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    v3 = *&v2[2]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 24);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_evaluator_copy_parameters";
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
        v16 = "nw_path_evaluator_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null evaluator", buf, 0xCu);
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
          v16 = "nw_path_evaluator_copy_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_evaluator_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_evaluator_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181AA4EBC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _nw_array_get_count(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v3 = a1;
  swift_beginAccess();
  v4 = *(*&a1[v2] + 24);

  return v4;
}

uint64_t _nw_array_apply(void *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = a1;
  _Block_copy(v3);
  sub_181AA5078(v4, v3, &v6);
  _Block_release(v3);

  return v6;
}

void sub_181AA5078(uint64_t a1@<X0>, uint64_t (**a2)(void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(**(a1 + OBJC_IVAR____TtC7Network7NWArray_applyCount) + 136);
  if (atomic_fetch_add_explicit(v6(), 1u, memory_order_relaxed) == 255)
  {
    goto LABEL_14;
  }

  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v8 = swift_beginAccess();
  v9 = *(*(a1 + v7) + 24);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

  v10 = 0;
  do
  {
    if (v9 == v10)
    {
      *a3 = 1;
      if (!atomic_fetch_add_explicit((v6)(v8), 0xFFu, memory_order_release))
      {
        should_abort = __nwlog_should_abort("unexpected value for apply count");
        _Block_release(a2);
        if (should_abort)
        {
          goto LABEL_24;
        }

        return;
      }

LABEL_17:
      _Block_release(a2);
      return;
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = *(a1 + v7);
    if (v10 >= v11[3])
    {
      goto LABEL_21;
    }

    v12 = v11[4];
    if (v10 + v12 >= v11[2])
    {
      v13 = v11[2];
    }

    else
    {
      v13 = 0;
    }

    v8 = a2[2](a2, v10, v11[v10 + 5 + v12 - v13]);
    ++v10;
  }

  while ((v8 & 1) != 0);
  *a3 = 0;
  if (atomic_fetch_add_explicit(v6(), 0xFFu, memory_order_release))
  {
    goto LABEL_17;
  }

  v14 = __nwlog_should_abort("unexpected value for apply count");
  _Block_release(a2);
  if ((v14 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_14:
  if ((__nwlog_should_abort("maximum applies for array exceeded") & 1) == 0)
  {
    __swp(0xFFFFFFFF, v6());
    _Block_release(a2);
    *a3 = 0;
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

const sockaddr *__cdecl nw_endpoint_get_address(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    address = _nw_endpoint_get_address(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_address";
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
        v16 = "nw_endpoint_get_address";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_get_address";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_address";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_address";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  address = 0;
LABEL_3:

  return address;
}

void sub_181AA5564(uint64_t a1)
{
  v2 = v1;
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 42);
  if (*(a1 + 42))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 40);
    *__n = *a1;
    *&__n[16] = v3;
    *&__n[24] = v6;
    *&__n[32] = v4;
    *&__n[40] = v7;
    __n[42] = v5;
    *&__n[43] = *(a1 + 43);
    __n[59] = *(a1 + 59);
    v8 = sub_181C1EE60();
    if ((v11 & 0x100000000) == 0)
    {
      *__src = v8;
      *&__src[8] = v9;
      *&__src[16] = v10;
      *&__src[24] = v11;
      v12 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
      v13 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
      v14 = v8;
      if (!v13)
      {
        v13 = swift_slowAlloc();
        *(v2 + v12) = v13;
      }

      v21 = v13;
LABEL_18:
      memcpy(v21, __src, v14);
      return;
    }

    sub_18217B0E0(__n);
    if ((v30 & 1) == 0)
    {
      v14 = __n[0];
      __src[0] = __n[0];
      v24 = *&__n[49];
      v25 = v28;
      *v26 = *v29;
      *&v26[9] = *&v29[9];
      *&__src[1] = *&__n[1];
      *&__src[17] = *&__n[17];
      v23 = *&__n[33];
      v20 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
      v21 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
      if (!v21)
      {
        v21 = swift_slowAlloc();
        *(v2 + v20) = v21;
      }

      goto LABEL_18;
    }

    if (v5 == 3)
    {
      v18 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
      v19 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
      if (!v19)
      {
        v19 = swift_slowAlloc();
        *(v1 + v18) = v19;
      }

      *v19 = 10252;
      v19[1] = HIDWORD(v3);
      v19[2] = v6;
    }
  }

  else
  {
    v15 = bswap32(v4) >> 16;
    v16 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
    v17 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
    if (!v17)
    {
      v17 = swift_slowAlloc();
      *(v2 + v16) = v17;
    }

    *v17 = 528;
    *(v17 + 2) = v15;
    *(v17 + 4) = v3;
    *(v17 + 8) = 0;
  }
}

void _nw_path_enumerate_interfacesTm(char *a1, void *aBlock, void (*a3)(_BYTE *, const void *))
{
  v5 = _Block_copy(aBlock);
  if (a1)
  {
    v6 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v7 = v5;
    v8 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v6], 0x17AuLL);
    _Block_copy(v7);
    sub_181A3DF5C(__dst, v9);

    memcpy(v9, __dst, 0x17AuLL);
    a3(v9, v7);
    _Block_release(v7);
    sub_181A3DFB8(__dst);
    _Block_release(v7);
  }

  else
  {

    _Block_release(v5);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t NetworkAgent.description.getter()
{
  sub_182AD3BA8();

  v0 = sub_181AA5C30();
  MEMORY[0x1865D9CA0](v0);

  MEMORY[0x1865D9CA0](0x203A65707974202CLL, 0xE800000000000000);
  v1 = sub_1820F55CC();
  MEMORY[0x1865D9CA0](v1);

  MEMORY[0x1865D9CA0](0x203A64697575202CLL, 0xE800000000000000);
  v2 = sub_182AD30D8();
  MEMORY[0x1865D9CA0](v2);

  MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
  sub_181AA5BC8();
  v3 = sub_182AD3218();
  MEMORY[0x1865D9CA0](v3);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);

  MEMORY[0x1865D9CA0](0x30203A7367616C66, 0xE900000000000078);

  return 0xD000000000000017;
}

unint64_t sub_181AA5BC8()
{
  result = qword_1ED4105A0;
  if (!qword_1ED4105A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4105A0);
  }

  return result;
}

uint64_t sub_181AA5C1C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_181AA5C30()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = 0xD000000000000010;
      goto LABEL_16;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        v3 = 0xD000000000000013;
        goto LABEL_16;
      }

LABEL_12:
      v3 = *(*v0 + 48);
      goto LABEL_16;
    }

    v4 = 0x6C6177796B53;
LABEL_15:
    v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
    goto LABEL_16;
  }

  if (!v2)
  {
    v4 = 0x726F7774654ELL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x72616C756C6C6543;
    goto LABEL_16;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x6F436D6574737953;
LABEL_16:
  sub_181AA5C1C(v1, v2);
  return v3;
}

nw_txt_record_t nw_endpoint_copy_txt_record(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_txt_record(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_txt_record";
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
        v16 = "nw_endpoint_copy_txt_record";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_copy_txt_record";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_txt_record";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_txt_record";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181AA5FF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v9, v8, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *(v8 + 1);
      v19 = *(v8 + 2);
      v20 = *(v8 + 3);
      v21 = *(v8 + 4);
      v22 = *(v8 + 20);
      v23 = v8[42];
      if (v18)
      {
        v24 = *(v18 + 16);
        v25 = *(v18 + 24);
        sub_181E6550C(v24);

        result = sub_181AD1DE4(v19, v20, v21, v22, v23);
        *a1 = v24;
        a1[1] = v25;
        return result;
      }

      result = sub_181AD1DE4(v19, v20, v21, v22, v23);
      goto LABEL_16;
    }

    v11 = *(*v8 + 24);

    if (v11)
    {
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      sub_181E6550C(v12);

      *a1 = v12;
      a1[1] = v13;
      return result;
    }

LABEL_15:

LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    v15 = *(v8 + 1);
    if (v15)
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      sub_181E6550C(v16);

      *a1 = v16;
      a1[1] = v17;
      return result;
    }

    goto LABEL_15;
  }

  sub_181AA91BC(v8, v5, type metadata accessor for URLEndpoint);
  v26 = *(v5 + 1);
  if (v26)
  {
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    sub_181E6550C(v27);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  *a1 = v27;
  a1[1] = v28;
  return sub_181A5513C(v5, type metadata accessor for URLEndpoint);
}

uint64_t sub_181AA62C0(void *a1)
{
  v1 = a1;
  sub_181AA5FF0(v5);

  v3 = v5[0];
  v2 = v5[1];
  if (v5[0])
  {

    swift_unknownObjectRetain();
    sub_181AB612C(v3);
    swift_unknownObjectRetain();
    sub_181AB612C(v3);
  }

  else
  {
    sub_181AB612C(0);
    return 0;
  }

  return v2;
}
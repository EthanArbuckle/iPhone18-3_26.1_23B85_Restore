uint64_t ___ZL39nw_protocol_ipv6_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (nw_frame_get_finalizer_context(a2) == *(a1 + 32))
  {
    v12 = (*(a1 + 40) + 8);
    v13 = *(a2 + 32);
    v14 = *(a2 + 40);
    if (v13)
    {
      v12 = (v13 + 40);
    }

    *v12 = v14;
    *v14 = v13;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
  }

  else
  {
    nw_frame_unclaim(a2, v4, 0x28u, 0);
    v33 = 0;
    v5 = nw_frame_unclaimed_bytes(a2, &v33);
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = *(v6 + 48);
      if (v7)
      {
        ++*(v7 + 192);
      }

      v8 = *(v6 + 144) & 0xFFFFFF0F;
      *v5 = v8;
      if (a2)
      {
        v9 = v8 | ((*(a2 + 186) & 3) << 12);
        *v5 = v9;
        v10 = *(a2 + 184);
        if (v10)
        {
          goto LABEL_57;
        }

        goto LABEL_7;
      }

      v20 = v5;
      __nwlog_obj();
      *buf = 136446210;
      v37 = "__nw_frame_get_ecn_flag";
      v21 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v21, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (!os_log_type_enabled(v22, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v37 = "__nw_frame_get_ecn_flag";
          v24 = "%{public}s called with null frame";
LABEL_36:
          _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
          goto LABEL_37;
        }

        if (v34 != 1)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (!os_log_type_enabled(v22, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v37 = "__nw_frame_get_ecn_flag";
          v24 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_36;
        }

        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v26 = os_log_type_enabled(v22, type);
        if (!backtrace_string)
        {
          if (!v26)
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v37 = "__nw_frame_get_ecn_flag";
          v24 = "%{public}s called with null frame, no backtrace";
          goto LABEL_36;
        }

        if (v26)
        {
          *buf = 136446466;
          v37 = "__nw_frame_get_ecn_flag";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_37:
      if (v21)
      {
        free(v21);
      }

      __nwlog_obj();
      *buf = 136446210;
      v37 = "__nw_frame_get_dscp_value";
      v27 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v27, &type, &v34))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v37 = "__nw_frame_get_dscp_value";
          v30 = "%{public}s called with null frame";
LABEL_52:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v32 = os_log_type_enabled(v28, type);
        if (v31)
        {
          if (v32)
          {
            *buf = 136446466;
            v37 = "__nw_frame_get_dscp_value";
            v38 = 2082;
            v39 = v31;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
          goto LABEL_53;
        }

        if (v32)
        {
          *buf = 136446210;
          v37 = "__nw_frame_get_dscp_value";
          v30 = "%{public}s called with null frame, no backtrace";
          goto LABEL_52;
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v37 = "__nw_frame_get_dscp_value";
          v30 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_52;
        }
      }

LABEL_53:
      if (v27)
      {
        free(v27);
      }

      v5 = v20;
LABEL_7:
      v10 = *(*(a1 + 32) + 158);
      if (!v10)
      {
        LOBYTE(v11) = *v5;
LABEL_9:
        *v5 = v11 & 0xF | 0x60;
        *(v5 + 6) = *(*(a1 + 32) + 156);
        *(v5 + 7) = *(*(a1 + 32) + 157);
        *(v5 + 8) = *(*(a1 + 32) + 56);
        *(v5 + 24) = *(*(a1 + 32) + 72);
        *(v5 + 4) = bswap32(v33 - 40) >> 16;
        ++**(a1 + 32);
        return 1;
      }

      v9 = *v5;
LABEL_57:
      v11 = v9 | bswap32((v10 & 0x3F) << 22);
      *v5 = v11;
      goto LABEL_9;
    }

    if (!v6 || (*(v6 + 159) & 1) == 0)
    {
      v16 = __nwlog_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      v6 = *(a1 + 32);
      if (v17)
      {
        v18 = (v6 + 160);
        if (!v6)
        {
          v18 = "";
        }

        *buf = 136446978;
        v37 = "nw_protocol_ipv6_finalize_output_frames_block_invoke";
        v38 = 2082;
        v39 = v18;
        v19 = " ";
        if (!v6)
        {
          v19 = "";
        }

        v40 = 2080;
        v41 = v19;
        v42 = 2048;
        v43 = v6;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", buf, 0x2Au);
        v6 = *(a1 + 32);
      }
    }

    *(v6 + 48) = 0;
  }

  return 1;
}

void nw_protocol_ipv6_notify(char *a1, const char *a2, unsigned int a3, _BYTE *a4, uint64_t a5)
{
  v99 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1;
    v8 = *(a1 + 5);
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v8 != &nw_protocol_ref_counted_additional_handle)
    {
      v10 = 1;
      goto LABEL_11;
    }

    v9 = *(a1 + 8);
    if (v9)
    {
LABEL_6:
      v11 = *(v9 + 11);
      v10 = 0;
      if (v11)
      {
        *(v9 + 11) = v11 + 1;
      }
    }

    else
    {
      v10 = 1;
    }

    v8 = *(a1 + 5);
LABEL_11:
    v12 = a1;
    if (v8 != &nw_protocol_ref_counted_handle)
    {
      if (v8 != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v90 = "nw_protocol_ipv6_notify";
        v13 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v88 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v13, type, &v88))
        {
          goto LABEL_39;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v16 = "%{public}s called with null ipv6";
          goto LABEL_37;
        }

        if (v88 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v16 = "%{public}s called with null ipv6, backtrace limit exceeded";
          goto LABEL_37;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        v23 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v90 = "nw_protocol_ipv6_notify";
            v91 = 2082;
            v92 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v23)
        {
          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v16 = "%{public}s called with null ipv6, no backtrace";
          v24 = v21;
          v25 = v22;
          goto LABEL_38;
        }

LABEL_39:
        if (!v13)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v12 = *(a1 + 8);
    }

    if (!a2)
    {
      __nwlog_obj();
      *buf = 136446210;
      v90 = "nw_protocol_ipv6_notify";
      v13 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v88 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v13, type, &v88))
      {
        goto LABEL_39;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type[0];
        if (!os_log_type_enabled(v14, type[0]))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v90 = "nw_protocol_ipv6_notify";
        v16 = "%{public}s called with null other_protocol";
        goto LABEL_37;
      }

      if (v88 == OS_LOG_TYPE_INFO)
      {
        v54 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type[0];
        v55 = os_log_type_enabled(v14, type[0]);
        if (v54)
        {
          if (!v55)
          {
            goto LABEL_137;
          }

          *buf = 136446466;
          v90 = "nw_protocol_ipv6_notify";
          v91 = 2082;
          v92 = v54;
          v56 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
          goto LABEL_136;
        }

        if (!v55)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v90 = "nw_protocol_ipv6_notify";
        v16 = "%{public}s called with null other_protocol, no backtrace";
      }

      else
      {
        v14 = __nwlog_obj();
        v15 = type[0];
        if (!os_log_type_enabled(v14, type[0]))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v90 = "nw_protocol_ipv6_notify";
        v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      }

LABEL_37:
      v24 = v14;
      v25 = v15;
LABEL_38:
      _os_log_impl(&dword_181A37000, v24, v25, v16, buf, 0xCu);
      goto LABEL_39;
    }

    if (a3 != 17)
    {
      if (a3 == 14)
      {
        if (*(v12 + 6) == a2)
        {
          if (a4)
          {
            if (a5 == 1)
            {
              v17 = v12[255];
              v12[255] = v17 & 0xF7 | (8 * *a4);
              if ((v17 & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v18 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  v19 = (v12[255] >> 3) & 1;
                  *buf = 136447234;
                  v90 = "nw_protocol_ipv6_notify";
                  v91 = 2082;
                  v92 = v12 + 256;
                  v93 = 2080;
                  v94 = " ";
                  v95 = 2048;
                  v96 = v12 + 96;
                  v97 = 1024;
                  v98 = v19;
                  _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p segmentation offload notify enable %d", buf, 0x30u);
                }
              }

              goto LABEL_41;
            }

            __nwlog_obj();
            *buf = 136446210;
            v90 = "nw_protocol_ipv6_notify";
            v13 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v88 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v13, type, &v88))
            {
              goto LABEL_39;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v90 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL))";
              goto LABEL_37;
            }

            if (v88 == OS_LOG_TYPE_INFO)
            {
              v54 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type[0];
              v64 = os_log_type_enabled(v14, type[0]);
              if (v54)
              {
                if (!v64)
                {
                  goto LABEL_137;
                }

                *buf = 136446466;
                v90 = "nw_protocol_ipv6_notify";
                v91 = 2082;
                v92 = v54;
                v56 = "%{public}s called with null (len == sizeof(BOOL)), dumping backtrace:%{public}s";
LABEL_136:
                _os_log_impl(&dword_181A37000, v14, v15, v56, buf, 0x16u);
LABEL_137:
                free(v54);
                if (v13)
                {
LABEL_40:
                  free(v13);
                }

LABEL_41:
                if ((v10 & 1) == 0)
                {
                  v26 = *(v7 + 5);
                  if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v7 + 8)) != 0)
                  {
                    v27 = *(v7 + 11);
                    if (v27)
                    {
                      v28 = v27 - 1;
                      *(v7 + 11) = v28;
                      if (!v28)
                      {
                        v29 = *(v7 + 8);
                        if (v29)
                        {
                          *(v7 + 8) = 0;
                          v29[2](v29);
                          _Block_release(v29);
                        }

                        if (v7[72])
                        {
                          v30 = *(v7 + 8);
                          if (v30)
                          {
                            _Block_release(v30);
                          }
                        }

                        v31 = v7;
                        goto LABEL_53;
                      }
                    }
                  }
                }

                return;
              }

              if (!v64)
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v90 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL)), no backtrace";
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v90 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL)), backtrace limit exceeded";
            }
          }

          else
          {
            __nwlog_obj();
            *buf = 136446210;
            v90 = "nw_protocol_ipv6_notify";
            v13 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v88 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v13, type, &v88))
            {
              goto LABEL_39;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v90 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (val != nil)";
              goto LABEL_37;
            }

            if (v88 == OS_LOG_TYPE_INFO)
            {
              v54 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type[0];
              v63 = os_log_type_enabled(v14, type[0]);
              if (v54)
              {
                if (!v63)
                {
                  goto LABEL_137;
                }

                *buf = 136446466;
                v90 = "nw_protocol_ipv6_notify";
                v91 = 2082;
                v92 = v54;
                v56 = "%{public}s called with null (val != nil), dumping backtrace:%{public}s";
                goto LABEL_136;
              }

              if (!v63)
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v90 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (val != nil), no backtrace";
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v90 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (val != nil), backtrace limit exceeded";
            }
          }
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v13 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v88 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v13, type, &v88))
          {
            goto LABEL_39;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v14 = __nwlog_obj();
            v15 = type[0];
            if (!os_log_type_enabled(v14, type[0]))
            {
              goto LABEL_39;
            }

            *buf = 136446210;
            v90 = "nw_protocol_ipv6_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol))";
            goto LABEL_37;
          }

          if (v88 == OS_LOG_TYPE_INFO)
          {
            v54 = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v15 = type[0];
            v62 = os_log_type_enabled(v14, type[0]);
            if (v54)
            {
              if (!v62)
              {
                goto LABEL_137;
              }

              *buf = 136446466;
              v90 = "nw_protocol_ipv6_notify";
              v91 = 2082;
              v92 = v54;
              v56 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol)), dumping backtrace:%{public}s";
              goto LABEL_136;
            }

            if (!v62)
            {
              goto LABEL_39;
            }

            *buf = 136446210;
            v90 = "nw_protocol_ipv6_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol)), no backtrace";
          }

          else
          {
            v14 = __nwlog_obj();
            v15 = type[0];
            if (!os_log_type_enabled(v14, type[0]))
            {
              goto LABEL_39;
            }

            *buf = 136446210;
            v90 = "nw_protocol_ipv6_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol)), backtrace limit exceeded";
          }
        }

        goto LABEL_37;
      }

LABEL_28:
      nw_protocol_common_notify(v7, a2, a3);
      goto LABEL_41;
    }

    if (*(a1 + 4) != a2)
    {
      goto LABEL_28;
    }

    v32 = *(a2 + 5);
    v33 = a2;
    if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *(a2 + 8)) != 0)
    {
      v35 = *(v33 + 11);
      v34 = 0;
      if (v35)
      {
        *(v33 + 11) = v35 + 1;
      }
    }

    else
    {
      v34 = 1;
    }

    v36 = *(a2 + 3);
    if (v36)
    {
      v37 = *(v36 + 200);
      if (v37)
      {
        v38 = v37(a2);
        if (v34)
        {
          goto LABEL_77;
        }

        goto LABEL_66;
      }
    }

    __nwlog_obj();
    v57 = *(a2 + 2);
    *buf = 136446722;
    v90 = "__nw_protocol_get_output_local_endpoint";
    if (!v57)
    {
      v57 = "invalid";
    }

    v91 = 2082;
    v92 = v57;
    v93 = 2048;
    v94 = a2;
    type[0] = OS_LOG_TYPE_ERROR;
    v88 = OS_LOG_TYPE_DEFAULT;
    v83 = _os_log_send_and_compose_impl();
    if (__nwlog_fault(v83, type, &v88))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v58 = __nwlog_obj();
        v59 = type[0];
        log = v58;
        if (!os_log_type_enabled(v58, type[0]))
        {
          goto LABEL_165;
        }

        v60 = *(a2 + 2);
        if (!v60)
        {
          v60 = "invalid";
        }

        *buf = 136446722;
        v90 = "__nw_protocol_get_output_local_endpoint";
        v91 = 2082;
        v92 = v60;
        v93 = 2048;
        v94 = a2;
        v61 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback";
LABEL_163:
        v70 = log;
        v71 = v59;
LABEL_164:
        _os_log_impl(&dword_181A37000, v70, v71, v61, buf, 0x20u);
        goto LABEL_165;
      }

      if (v88 != OS_LOG_TYPE_INFO)
      {
        v68 = __nwlog_obj();
        v59 = type[0];
        log = v68;
        if (!os_log_type_enabled(v68, type[0]))
        {
          goto LABEL_165;
        }

        v69 = *(a2 + 2);
        if (!v69)
        {
          v69 = "invalid";
        }

        *buf = 136446722;
        v90 = "__nw_protocol_get_output_local_endpoint";
        v91 = 2082;
        v92 = v69;
        v93 = 2048;
        v94 = a2;
        v61 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, backtrace limit exceeded";
        goto LABEL_163;
      }

      v65 = __nw_create_backtrace_string();
      loga = __nwlog_obj();
      v79 = type[0];
      v66 = os_log_type_enabled(loga, type[0]);
      if (v65)
      {
        if (v66)
        {
          v67 = *(a2 + 2);
          if (!v67)
          {
            v67 = "invalid";
          }

          *buf = 136446978;
          v90 = "__nw_protocol_get_output_local_endpoint";
          v91 = 2082;
          v92 = v67;
          v93 = 2048;
          v94 = a2;
          v95 = 2082;
          v96 = v65;
          _os_log_impl(&dword_181A37000, loga, v79, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v65);
      }

      else if (v66)
      {
        v76 = *(a2 + 2);
        if (!v76)
        {
          v76 = "invalid";
        }

        *buf = 136446722;
        v90 = "__nw_protocol_get_output_local_endpoint";
        v91 = 2082;
        v92 = v76;
        v93 = 2048;
        v94 = a2;
        v61 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, no backtrace";
        v70 = loga;
        v71 = v79;
        goto LABEL_164;
      }
    }

LABEL_165:
    if (v83)
    {
      free(v83);
    }

    v38 = 0;
    if (v34)
    {
LABEL_77:
      if (!v38)
      {
        goto LABEL_28;
      }

      v45 = v38;
      address_family = _nw_endpoint_get_address_family(v45);

      if (address_family != 30)
      {
        goto LABEL_28;
      }

      *type = 0;
      v86 = 0uLL;
      v87 = 0;
      if (nw_endpoint_fillout_v6_address(v45, type))
      {
        *(v12 + 152) = v86;
        if ((v12[255] & 1) == 0)
        {
          v47 = __nwlog_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            v90 = "nw_protocol_ipv6_notify";
            v91 = 2082;
            v92 = v12 + 256;
            v93 = 2080;
            v94 = " ";
            v95 = 2048;
            v96 = v12 + 96;
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p updated local address", buf, 0x2Au);
          }
        }

        goto LABEL_28;
      }

      __nwlog_obj();
      *buf = 136446210;
      v90 = "nw_protocol_ipv6_notify";
      v72 = _os_log_send_and_compose_impl();
      v88 = OS_LOG_TYPE_ERROR;
      v84 = 0;
      if (__nwlog_fault(v72, &v88, &v84))
      {
        if (v88 == OS_LOG_TYPE_FAULT)
        {
          v73 = __nwlog_obj();
          v74 = v88;
          if (!os_log_type_enabled(v73, v88))
          {
            goto LABEL_193;
          }

          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v75 = "%{public}s called with null success";
          goto LABEL_192;
        }

        if (v84 != 1)
        {
          v73 = __nwlog_obj();
          v74 = v88;
          if (!os_log_type_enabled(v73, v88))
          {
            goto LABEL_193;
          }

          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v75 = "%{public}s called with null success, backtrace limit exceeded";
          goto LABEL_192;
        }

        v77 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        v74 = v88;
        v78 = os_log_type_enabled(v73, v88);
        if (v77)
        {
          if (v78)
          {
            *buf = 136446466;
            v90 = "nw_protocol_ipv6_notify";
            v91 = 2082;
            v92 = v77;
            _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v77);
          goto LABEL_193;
        }

        if (v78)
        {
          *buf = 136446210;
          v90 = "nw_protocol_ipv6_notify";
          v75 = "%{public}s called with null success, no backtrace";
LABEL_192:
          _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
        }
      }

LABEL_193:
      if (v72)
      {
        free(v72);
      }

      goto LABEL_41;
    }

LABEL_66:
    v39 = *(a2 + 5);
    v40 = a2;
    if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v40 = *(a2 + 8)) != 0)
    {
      v41 = *(v40 + 11);
      if (v41)
      {
        v42 = v41 - 1;
        *(v40 + 11) = v42;
        if (!v42)
        {
          v82 = v38;
          v43 = *(v40 + 8);
          if (v43)
          {
            *(v40 + 8) = 0;
            v43[2](v43);
            _Block_release(v43);
          }

          if (v40[72])
          {
            v44 = *(v40 + 8);
            if (v44)
            {
              _Block_release(v44);
            }
          }

          free(v40);
          v38 = v82;
        }
      }
    }

    goto LABEL_77;
  }

  __nwlog_obj();
  *buf = 136446210;
  v90 = "nw_protocol_ipv6_notify";
  v48 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v88 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v48, type, &v88))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v90 = "nw_protocol_ipv6_notify";
      v51 = "%{public}s called with null protocol";
LABEL_141:
      _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      goto LABEL_142;
    }

    if (v88 != OS_LOG_TYPE_INFO)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v90 = "nw_protocol_ipv6_notify";
      v51 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_141;
    }

    v52 = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = type[0];
    v53 = os_log_type_enabled(v49, type[0]);
    if (!v52)
    {
      if (!v53)
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v90 = "nw_protocol_ipv6_notify";
      v51 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_141;
    }

    if (v53)
    {
      *buf = 136446466;
      v90 = "nw_protocol_ipv6_notify";
      v91 = 2082;
      v92 = v52;
      _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v52);
  }

LABEL_142:
  if (v48)
  {
    v31 = v48;
LABEL_53:
    free(v31);
  }
}

uint64_t nw_activity_is_activated(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[140] >> 2) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_activity_is_activated";
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
        v15 = "nw_activity_is_activated";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null activity", buf, 0xCu);
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
          v15 = "nw_activity_is_activated";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_activity_is_activated";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_activity_is_activated";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
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

void network_config_set_interface_radio_type(const char *a1, unsigned __int8 a2, unsigned int a3)
{
  nw_allow_use_of_dispatch_internal();

  networkd_privileged_set_radio_type(a1, a2, a3);
}

void networkd_privileged_set_radio_type(const char *a1, unsigned int a2, unsigned int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, networkd_privileged_key_type, 0x14uLL);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_radio_type, a2);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_radio_channel, a3);
      xpc_dictionary_set_string(v7, networkd_privileged_key_interface_name, a1);
      v8 = networkd_privileged_copy_connection();
      if (v8)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v9 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __networkd_privileged_set_radio_type_block_invoke;
        v34[3] = &unk_1E6A2B620;
        v36 = a2;
        v37 = a3;
        v35 = v7;
        networkd_privileged_send_async_inner("networkd_privileged_set_radio_type", v35, v9, v34);

LABEL_7:
LABEL_8:

        return;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v41 = "networkd_privileged_set_radio_type";
      v19 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v19, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_radio_type";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v38 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v29 = type;
          v30 = os_log_type_enabled(v20, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v41 = "networkd_privileged_set_radio_type";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v30)
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_radio_type";
            _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v20 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_radio_type";
            _os_log_impl(&dword_181A37000, v20, v33, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_7;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v41 = "networkd_privileged_set_radio_type";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v15, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_radio_type";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v16, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v41 = "networkd_privileged_set_radio_type";
            v42 = 2082;
            v43 = v25;
            _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_57;
        }

        if (v27)
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_radio_type";
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_radio_type";
          _os_log_impl(&dword_181A37000, v16, v32, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v41 = "networkd_privileged_set_radio_type";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v11, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_radio_type";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v12, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v41 = "networkd_privileged_set_radio_type";
          v42 = 2082;
          v43 = v22;
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_52;
      }

      if (v24)
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_radio_type";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_radio_type";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v11)
  {
    free(v11);
  }
}

id networkd_privileged_copy_connection(void)
{
  v21 = *MEMORY[0x1E69E9840];
  if (networkd_privileged_copy_queue(void)::onceToken != -1)
  {
    dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
  }

  v0 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
  v1 = v0;
  if (!v0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "networkd_privileged_copy_connection";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v4, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_copy_connection";
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s networkd_privileged_copy_queue failed", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v9 = type;
        v10 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            *&buf[4] = "networkd_privileged_copy_connection";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v9, "%{public}s networkd_privileged_copy_queue failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v4)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v10)
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_copy_connection";
          _os_log_impl(&dword_181A37000, v5, v9, "%{public}s networkd_privileged_copy_queue failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_copy_connection";
          _os_log_impl(&dword_181A37000, v5, v11, "%{public}s networkd_privileged_copy_queue failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v4)
    {
LABEL_12:
      v2 = 0;
      goto LABEL_13;
    }

LABEL_11:
    free(v4);
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__993;
  v19 = __Block_byref_object_dispose__994;
  v20 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL35networkd_privileged_copy_connectionv_block_invoke;
  block[3] = &unk_1E6A3D738;
  v13 = v0;
  v14 = buf;
  dispatch_sync(v13, block);
  v2 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
LABEL_13:

  return v2;
}

void ___ZL35networkd_privileged_copy_connectionv_block_invoke(uint64_t a1)
{
  v2 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
  if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
  {
    goto LABEL_2;
  }

  mach_service = xpc_connection_create_mach_service(networkd_privileged_service, *(a1 + 32), 2uLL);
  v4 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
  _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection = mach_service;

  if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
  {
    Class = object_getClass(_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection);
    v6 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
    if (Class == MEMORY[0x1E69E9E68])
    {
      v7 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      v8 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL35networkd_privileged_copy_connectionv_block_invoke_2;
      handler[3] = &unk_1E6A2B5F8;
      v9 = v7;
      v11 = v9;
      xpc_connection_set_event_handler(v8, handler);
      xpc_connection_resume(_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection);

      v2 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      if (!_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
      {
        return;
      }

      goto LABEL_2;
    }

    if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
    {
      _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection = 0;

      v2 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
      {
LABEL_2:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
      }
    }
  }
}

void networkd_privileged_send_async_inner(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = networkd_privileged_copy_connection();
  if (v9)
  {
    networkd_privileged_send_async_inner_rec(a1, v9, v10, v7, v8, 1u);
  }
}

void networkd_privileged_send_async_inner_rec(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (a6 >= 6)
  {
    (*(v14 + 2))(v14, MEMORY[0x1E69E9E18]);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL40networkd_privileged_send_async_inner_recPKcPU24objcproto13OS_xpc_object8NSObjectS3_PU28objcproto17OS_dispatch_queueS1_U13block_pointerFvS3_Ej_block_invoke;
    v16[3] = &unk_1E6A2B648;
    v20 = v14;
    v21 = a1;
    v22 = a6;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    xpc_connection_send_message_with_reply(v17, v18, v19, v16);
  }
}

void network_config_set_interface_estimated_throughput(const char *a1, unint64_t a2, unint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_allow_use_of_dispatch_internal();
    v6 = 49 - __clz(a2);
    if (a2 >= 0x10000)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = 49 - __clz(a3);
    if (a3 >= 0x10000)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if (a3)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    if (v8)
    {
      if (v8 > 0x30u)
      {
        v13 = -1;
        if (!v11)
        {
          goto LABEL_23;
        }

LABEL_20:
        if (v11 <= 0x30u)
        {
          v14 = 1 << (v11 + 15);
        }

        else
        {
          v14 = -1;
        }

        goto LABEL_25;
      }

      v13 = 1 << (v8 + 15);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
      if (v11)
      {
        goto LABEL_20;
      }
    }

LABEL_23:
    v14 = 0;
LABEL_25:
    *buf = 136448002;
    v26 = "network_config_set_interface_estimated_throughput";
    v27 = 2082;
    v28 = a1;
    v29 = 2048;
    v30 = a2;
    v31 = 1024;
    v32 = v8;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = a3;
    v37 = 1024;
    v38 = v11;
    v39 = 2048;
    v40 = v14;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s up: %lluBps -> %u (%lluBps), down: %lluBps -> %u (%lluBps)", buf, 0x4Au);
LABEL_26:

    networkd_privileged_set_throughput_estimates(a1, v8, v11);
    return;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v26 = "network_config_set_interface_estimated_throughput";
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v16, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v26 = "network_config_set_interface_estimated_throughput";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null name", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v26 = "network_config_set_interface_estimated_throughput";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_44;
      }

      if (v21)
      {
        *buf = 136446210;
        v26 = "network_config_set_interface_estimated_throughput";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null name, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v26 = "network_config_set_interface_estimated_throughput";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_44:
  if (v16)
  {
    free(v16);
  }
}

void networkd_privileged_set_throughput_estimates(const char *a1, unsigned int a2, unsigned int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, networkd_privileged_key_type, 0x13uLL);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_upload, a2);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_download, a3);
      xpc_dictionary_set_string(v7, networkd_privileged_key_interface_name, a1);
      v8 = networkd_privileged_copy_connection();
      if (v8)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v9 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __networkd_privileged_set_throughput_estimates_block_invoke;
        v34[3] = &unk_1E6A2B620;
        v36 = a2;
        v37 = a3;
        v35 = v7;
        networkd_privileged_send_async_inner("networkd_privileged_set_throughput_estimates", v35, v9, v34);

LABEL_7:
LABEL_8:

        return;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v41 = "networkd_privileged_set_throughput_estimates";
      v19 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v19, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_throughput_estimates";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v38 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v29 = type;
          v30 = os_log_type_enabled(v20, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v41 = "networkd_privileged_set_throughput_estimates";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v30)
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_throughput_estimates";
            _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v20 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_throughput_estimates";
            _os_log_impl(&dword_181A37000, v20, v33, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_7;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v41 = "networkd_privileged_set_throughput_estimates";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v15, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_throughput_estimates";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v16, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v41 = "networkd_privileged_set_throughput_estimates";
            v42 = 2082;
            v43 = v25;
            _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_57;
        }

        if (v27)
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_throughput_estimates";
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_throughput_estimates";
          _os_log_impl(&dword_181A37000, v16, v32, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v41 = "networkd_privileged_set_throughput_estimates";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v11, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_throughput_estimates";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v12, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v41 = "networkd_privileged_set_throughput_estimates";
          v42 = 2082;
          v43 = v22;
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_52;
      }

      if (v24)
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_throughput_estimates";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_throughput_estimates";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v11)
  {
    free(v11);
  }
}

uint64_t connectionMatchesEntitlementGroup(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v20)
  {
    v19 = *v23;
    while (2)
    {
      v3 = 0;
      while (2)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * v3);
        v5 = v21;
        v6 = v4;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (!v8)
        {
LABEL_21:

          v16 = 1;
          goto LABEL_22;
        }

        v9 = v8;
        v10 = *v27;
LABEL_10:
        v11 = 0;
        while (1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = v5;
          [v12 UTF8String];
          v14 = xpc_connection_copy_entitlement_value();

          if (!v14 || object_getClass(v14) != MEMORY[0x1E69E9E58])
          {
            break;
          }

          value = xpc_BOOL_get_value(v14);

          if (!value)
          {
            goto LABEL_5;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v9)
            {
              goto LABEL_10;
            }

            goto LABEL_21;
          }
        }

LABEL_5:
        if (++v3 != v20)
        {
          continue;
        }

        break;
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_22:

  return v16;
}

const char *nw_interface_radio_type_to_string(int a1)
{
  v1 = a1 - 1;
  result = "802.11b";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "802.11a";
      break;
    case 2:
      result = "802.11g";
      break;
    case 3:
      result = "802.11n";
      break;
    case 4:
      result = "802.11ac";
      break;
    case 5:
      result = "802.11ax";
      break;
    case 127:
      result = "lte";
      break;
    case 128:
      result = "endc_sub6";
      break;
    case 129:
      result = "endc_mmw";
      break;
    case 130:
      result = "nr_sa_sub6";
      break;
    case 131:
      result = "nr_sa_mmw";
      break;
    case 132:
      result = "wcdma";
      break;
    case 133:
      result = "gsm";
      break;
    case 134:
      result = "cdma";
      break;
    case 135:
      result = "evdo";
      break;
    default:
      result = "";
      break;
  }

  return result;
}

uint64_t handleRadioType(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v38 = 0u;
  v39 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_51;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LOBYTE(v39) = xpc_dictionary_get_uint64(v5, networkd_privileged_key_radio_type);

  v6 = [v1 request];
  BYTE1(v39) = xpc_dictionary_get_uint64(v6, networkd_privileged_key_radio_channel);

  v7 = socket(2, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (ioctl(v7, 0xC02069D5uLL, &v38) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 2082;
        *v37 = &v38;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully set radio type on %{public}s", buf, 0x16u);
      }

      v4 = 0;
LABEL_50:
      close(v8);
      goto LABEL_51;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v35 = "handleRadioType";
      v36 = 2082;
      *v37 = &v38;
      *&v37[8] = 1024;
      *&v37[10] = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to set radio type on %{public}s: %{darwin.errno}d", buf, 0x1Cu);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = v18;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = 6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_50;
    }

    *buf = 136446722;
    v35 = "handleRadioType";
    v36 = 1024;
    *v37 = v8;
    *&v37[4] = 1024;
    *&v37[6] = v16;
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v23, &type, &v32))
    {
LABEL_48:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d";
LABEL_46:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x18u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v30 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446978;
            v35 = "handleRadioType";
            v36 = 1024;
            *v37 = v8;
            *&v37[4] = 1024;
            *&v37[6] = v16;
            *&v37[10] = 2082;
            *&v37[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v30)
        {
          goto LABEL_47;
        }

        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_46;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_46;
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v35 = "handleRadioType";
  v36 = 1024;
  *v37 = v10;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v12, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_30:
        v27 = v13;
        v28 = v14;
LABEL_31:
        _os_log_impl(&dword_181A37000, v27, v28, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v13, type);
        if (v20)
        {
          if (v22)
          {
            *buf = 136446722;
            v35 = "handleRadioType";
            v36 = 1024;
            *v37 = v10;
            *&v37[4] = 2082;
            *&v37[6] = v20;
            _os_log_impl(&dword_181A37000, v13, v21, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v20);
          goto LABEL_33;
        }

        if (!v22)
        {
          goto LABEL_32;
        }

        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v27 = v13;
        v28 = v21;
        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_32:
  }

LABEL_33:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_51:

  return v4;
}

void ___ZL40networkd_privileged_send_async_inner_recPKcPU24objcproto13OS_xpc_object8NSObjectS3_PU28objcproto17OS_dispatch_queueS1_U13block_pointerFvS3_Ej_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);
      v7 = 136446722;
      v8 = "networkd_privileged_send_async_inner_rec_block_invoke";
      v9 = 2082;
      v10 = v5;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v7, 0x1Cu);
    }

    networkd_privileged_send_async_inner_rec(*(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), (*(a1 + 72) + 1));
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __networkd_privileged_set_radio_type_block_invoke(uint64_t a1, void *a2)
{
  *&v82[11] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_radio_type_block_invoke";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_172;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_144:

LABEL_145:
        if (!v17)
        {
LABEL_147:

          goto LABEL_148;
        }

LABEL_146:
        free(v17);
        goto LABEL_147;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_147;
      }

      goto LABEL_146;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_148;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 40);
        v51 = *(a1 + 41);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        *buf = 136447234;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = nw_interface_radio_type_to_string(v50);
        *&v81[8] = 1024;
        *&v81[10] = v50;
        *&v81[14] = 1024;
        *&v81[16] = v51;
        v82[0] = 2082;
        *&v82[1] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s Set radio type to: %{public}s (%u), channel: %u on %{public}s", buf, 0x2Cu);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_147;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_radio_type_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_147;
            }

            goto LABEL_180;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_179:
      if (!v58)
      {
        goto LABEL_147;
      }

LABEL_180:
      free(v58);
      goto LABEL_147;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_radio_type_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_179;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          *&v81[18] = 2082;
          *v82 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_179;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_179;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v6 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v6 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_172:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_148;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_148;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_radio_type_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_radio_type_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_148:
}

uint64_t handleThroughputEstimates(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v38 = 0u;
  v39 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_51;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LOBYTE(v39) = xpc_dictionary_get_uint64(v5, networkd_privileged_key_upload);

  v6 = [v1 request];
  BYTE1(v39) = xpc_dictionary_get_uint64(v6, networkd_privileged_key_download);

  v7 = socket(2, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (ioctl(v7, 0xC02069D4uLL, &v38) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 2082;
        *v37 = &v38;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully set throughput estimate on %{public}s", buf, 0x16u);
      }

      v4 = 0;
LABEL_50:
      close(v8);
      goto LABEL_51;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v35 = "handleThroughputEstimates";
      v36 = 2082;
      *v37 = &v38;
      *&v37[8] = 1024;
      *&v37[10] = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to set throughput estimate on %{public}s: %{darwin.errno}d", buf, 0x1Cu);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = v18;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = 6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_50;
    }

    *buf = 136446722;
    v35 = "handleThroughputEstimates";
    v36 = 1024;
    *v37 = v8;
    *&v37[4] = 1024;
    *&v37[6] = v16;
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v23, &type, &v32))
    {
LABEL_48:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d";
LABEL_46:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x18u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v30 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446978;
            v35 = "handleThroughputEstimates";
            v36 = 1024;
            *v37 = v8;
            *&v37[4] = 1024;
            *&v37[6] = v16;
            *&v37[10] = 2082;
            *&v37[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v30)
        {
          goto LABEL_47;
        }

        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_46;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_46;
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v35 = "handleThroughputEstimates";
  v36 = 1024;
  *v37 = v10;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v12, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_30:
        v27 = v13;
        v28 = v14;
LABEL_31:
        _os_log_impl(&dword_181A37000, v27, v28, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v13, type);
        if (v20)
        {
          if (v22)
          {
            *buf = 136446722;
            v35 = "handleThroughputEstimates";
            v36 = 1024;
            *v37 = v10;
            *&v37[4] = 2082;
            *&v37[6] = v20;
            _os_log_impl(&dword_181A37000, v13, v21, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v20);
          goto LABEL_33;
        }

        if (!v22)
        {
          goto LABEL_32;
        }

        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v27 = v13;
        v28 = v21;
        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_32:
  }

LABEL_33:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_51:

  return v4;
}

void __networkd_privileged_set_throughput_estimates_block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_172;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_144:

LABEL_145:
        if (!v17)
        {
LABEL_147:

          goto LABEL_148;
        }

LABEL_146:
        free(v17);
        goto LABEL_147;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_147;
      }

      goto LABEL_146;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_148;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v50 = *(a1 + 40);
        v51 = *(a1 + 41);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        *buf = 136446978;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 1024;
        *v81 = v50;
        *&v81[4] = 1024;
        *&v81[6] = v51;
        *&v81[10] = 2082;
        *&v81[12] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_INFO, "%{public}s Set estimated throughput buckets up: %u, down: %u on %{public}s", buf, 0x22u);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_147;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_147;
            }

            goto LABEL_180;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_179:
      if (!v58)
      {
        goto LABEL_147;
      }

LABEL_180:
      free(v58);
      goto LABEL_147;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_179;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          *&v81[18] = 2082;
          v82 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_179;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_179;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v6 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v6 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_172:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_148;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_148;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_148:
}

uint64_t nw_connection_get_id(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[112];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_connection_get_id";
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
        v15 = "nw_connection_get_id";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null connection", buf, 0xCu);
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
          v15 = "nw_connection_get_id";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_connection_get_id";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_connection_get_id";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_ipv6_copy_info(uint64_t a1, int a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_ipv6_copy_info";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v28, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v37 = "nw_protocol_ipv6_copy_info";
          v31 = "%{public}s called with null protocol";
LABEL_67:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v33 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            v37 = "nw_protocol_ipv6_copy_info";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_68;
        }

        if (v33)
        {
          *buf = 136446210;
          v37 = "nw_protocol_ipv6_copy_info";
          v31 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_67;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v37 = "nw_protocol_ipv6_copy_info";
          v31 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_67;
        }
      }
    }

LABEL_68:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  v3 = a1;
  v4 = *(a1 + 40);
  v5 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v4 != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
LABEL_6:
    v7 = *(v5 + 88);
    v6 = 0;
    if (v7)
    {
      *(v5 + 88) = v7 + 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v4 = *(a1 + 40);
LABEL_11:
  v8 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (v4 == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *(a1 + 64);
LABEL_18:
    if (a2 == 5)
    {
      result = malloc_type_calloc(1uLL, 0xE0uLL, 0x5AFA426DuLL);
      if (!result)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v37 = "nw_protocol_ipv6_copy_info";
        v38 = 2048;
        v39 = 1;
        v40 = 2048;
        v41 = 224;
        v15 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v15);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v15);
        result = 0;
      }

      *(result + 8) = *(v8 + 104);
      *(result + 24) = *(v8 + 120);
      *(result + 40) = *(v8 + 96);
      if (a3)
      {
        *a3 = 224;
        if (v6)
        {
          return result;
        }

        goto LABEL_40;
      }
    }

    else
    {
      result = 0;
    }

    if (v6)
    {
      return result;
    }

    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v37 = "nw_protocol_ipv6_copy_info";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v9, &type, &v34))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v37 = "nw_protocol_ipv6_copy_info";
    v12 = "%{public}s called with null ipv6";
LABEL_35:
    v20 = v10;
    v21 = v11;
LABEL_36:
    _os_log_impl(&dword_181A37000, v20, v21, v12, buf, 0xCu);
    goto LABEL_37;
  }

  if (v34 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v37 = "nw_protocol_ipv6_copy_info";
    v12 = "%{public}s called with null ipv6, backtrace limit exceeded";
    goto LABEL_35;
  }

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
      v37 = "nw_protocol_ipv6_copy_info";
      v38 = 2082;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v16);
  }

  else if (v19)
  {
    *buf = 136446210;
    v37 = "nw_protocol_ipv6_copy_info";
    v12 = "%{public}s called with null ipv6, no backtrace";
    v20 = v17;
    v21 = v18;
    goto LABEL_36;
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  result = 0;
  if ((v6 & 1) == 0)
  {
LABEL_40:
    v22 = *(v3 + 40);
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
    {
      v23 = *(v3 + 88);
      if (v23)
      {
        v24 = v23 - 1;
        *(v3 + 88) = v24;
        if (!v24)
        {
          v25 = result;
          v26 = *(v3 + 64);
          if (v26)
          {
            *(v3 + 64) = 0;
            v26[2](v26);
            _Block_release(v26);
          }

          if (*(v3 + 72))
          {
            v27 = *(v3 + 64);
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
  }

  return result;
}

void *nw_context_16k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 172);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_1, dword_1EA83C2D8, word_1EA83C2DC);
      *(*(v3 + 4) + 172) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_16k_buffer_manager";
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
        v17 = "nw_context_16k_buffer_manager";
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
          v17 = "nw_context_16k_buffer_manager";
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
        v17 = "nw_context_16k_buffer_manager";
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
        v17 = "nw_context_16k_buffer_manager";
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

BOOL nw_settings_networkscore_metrics_enabled()
{
  v0 = nw_setting_enable_networkscore_metrics;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 0;
  if (!v0 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (value && (v5 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v3 = xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v3;
}

void nw_protocol_input_finished(void *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
LABEL_12:
        __nwlog_obj();
        *buf = 136446210;
        v48 = "__nw_protocol_input_finished";
        v2 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v45 = 0;
        if (!__nwlog_fault(v2, &type, &v45))
        {
          goto LABEL_104;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_input_finished";
          v14 = "%{public}s called with null other_protocol";
          goto LABEL_103;
        }

        if (v45 != 1)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_input_finished";
          v14 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_103;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v42 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (!v42)
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_input_finished";
          v14 = "%{public}s called with null other_protocol, no backtrace";
LABEL_103:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_104:
          if (!v2)
          {
            goto LABEL_37;
          }

LABEL_36:
          free(v2);
          goto LABEL_37;
        }

        if (v42)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_input_finished";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_36;
        }

LABEL_37:
        if ((v6 & 1) == 0)
        {
          v22 = *(v3 + 40);
          if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v23 = *(v3 + 88);
            if (v23)
            {
              v24 = v23 - 1;
              *(v3 + 88) = v24;
              if (!v24)
              {
                v25 = *(v3 + 64);
                if (v25)
                {
                  *(v3 + 64) = 0;
                  v25[2](v25);
                  _Block_release(v25);
                }

                if (*(v3 + 72))
                {
                  v26 = *(v3 + 64);
                  if (v26)
                  {
                    _Block_release(v26);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v15 = *(v8 + 88);
      if (v15)
      {
        v9 = 0;
        *(v8 + 88) = v15 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    v16 = *(v10 + 184);
    if (v16)
    {
      v16(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    __nwlog_obj();
    v27 = *(v3 + 16);
    *buf = 136446722;
    v48 = "__nw_protocol_input_finished";
    if (!v27)
    {
      v27 = "invalid";
    }

    v49 = 2082;
    v50 = v27;
    v51 = 2048;
    v52 = v3;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v28, &type, &v45))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v31 = *(v3 + 16);
      if (!v31)
      {
        v31 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_input_finished";
      v49 = 2082;
      v50 = v31;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback";
    }

    else if (v45 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v37 = os_log_type_enabled(v29, type);
      if (v36)
      {
        if (v37)
        {
          v38 = *(v3 + 16);
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446978;
          v48 = "__nw_protocol_input_finished";
          v49 = 2082;
          v50 = v38;
          v51 = 2048;
          v52 = v3;
          v53 = 2082;
          v54 = v36;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v36);
        goto LABEL_94;
      }

      if (!v37)
      {
LABEL_94:
        if (v28)
        {
          free(v28);
        }

LABEL_25:
        if ((v9 & 1) == 0)
        {
          v17 = *(v2 + 40);
          if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
          {
            v18 = *(v2 + 88);
            if (v18)
            {
              v19 = v18 - 1;
              *(v2 + 88) = v19;
              if (!v19)
              {
                v20 = *(v2 + 64);
                if (v20)
                {
                  *(v2 + 64) = 0;
                  v20[2](v20);
                  _Block_release(v20);
                }

                if (*(v2 + 72))
                {
                  v21 = *(v2 + 64);
                  if (v21)
                  {
                    _Block_release(v21);
                  }
                }

                goto LABEL_36;
              }
            }
          }
        }

        goto LABEL_37;
      }

      v44 = *(v3 + 16);
      if (!v44)
      {
        v44 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_input_finished";
      v49 = 2082;
      v50 = v44;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v43 = *(v3 + 16);
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_input_finished";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x20u);
    goto LABEL_94;
  }

  __nwlog_obj();
  *buf = 136446210;
  v48 = "__nw_protocol_input_finished";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v3, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_input_finished";
      v35 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v40 = os_log_type_enabled(v33, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_input_finished";
          v49 = 2082;
          v50 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v3)
        {
          goto LABEL_48;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_input_finished";
      v35 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_input_finished";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
  }

LABEL_99:
  if (v3)
  {
LABEL_48:
    free(v3);
  }
}

uint64_t nw_protocol_input_available_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 64) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t NetworkAgentType.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];
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
      v3 = *v0;
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

void ___ZL29nw_path_necp_update_evaluatorP28NWConcrete_nw_path_evaluatorPKhmb_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  os_unfair_lock_lock(v2 + 24);
  os_unfair_lock_opaque_high = HIBYTE(v3[26]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 24);

  if ((os_unfair_lock_opaque_high & 0x20) == 0)
  {
    if ((*(*(a1 + 32) + 107) & 0x40) != 0 && *(a1 + 56) == 1)
    {
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v5 = gpathLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 16);
        v8 = v7;
        if (v7)
        {
          logging_description = _nw_endpoint_get_logging_description(v7);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v10 = *(a1 + 40);
        v11 = *(*(a1 + 32) + 8);
        v12 = 136447490;
        v13 = "nw_path_necp_update_evaluator_block_invoke";
        v14 = 1042;
        v15 = 16;
        v16 = 2098;
        v17 = v6 + 80;
        v18 = 2082;
        v19 = logging_description;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P %{public}s %@]\n\tpath: %@", &v12, 0x3Au);
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_181E4926C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_181E49280(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

void nw_http_client_initialize_metadata(uint64_t a1, uint64_t a2)
{
  mach_get_times();
  *a2 = 1;
  *(a2 + 16) = 0 - *MEMORY[0x1E695E468] + 0 * 0.000000001;
  v3 = _nw_array_create();
  v4 = *(a2 + 24);
  *(a2 + 24) = v3;
}

void nw_http_client_metadata_create_next_transaction(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_client_metadata_create_next_transaction";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_client_metadata_create_next_transaction";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_client_metadata_create_next_transaction";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_client_metadata_create_next_transaction";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_client_metadata_create_next_transaction";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_client_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_client_metadata_create_next_transaction_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_client_metadata_create_next_transaction";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_client_metadata_create_next_transaction";
      v9 = "%{public}s metadata must be http_client";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_client_metadata_create_next_transaction";
      v9 = "%{public}s metadata must be http_client, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_client_metadata_create_next_transaction";
      v9 = "%{public}s metadata must be http_client, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_client_metadata_create_next_transaction";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t __nw_http_client_metadata_create_next_transaction_block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    object = _nw_array_copy_last_object(v4);
  }

  else
  {
    object = 0;
  }

  if (*(a1 + 32) == 3 && !nw_http_transaction_metadata_get_outbound_message_start_time(object))
  {
    goto LABEL_19;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  v7 = *(a1 + 32);
  v8 = singleton;
  if (!v8)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http_transaction_metadata_set_start_reason";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v14, &type, &v31))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v17 = "%{public}s called with null metadata";
LABEL_44:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v24 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v34 = "nw_http_transaction_metadata_set_start_reason";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_46;
        }

        if (!v24)
        {
          goto LABEL_45;
        }

        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v17 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_44;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v17 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

LABEL_45:

LABEL_46:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_16;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if ((nw_protocol_metadata_matches_definition(v8, nw_protocol_copy_http_transaction_definition_definition) & 1) == 0)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http_transaction_metadata_set_start_reason";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v19, &type, &v31))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v22 = "%{public}s metadata must be http_transaction";
LABEL_50:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v26 = os_log_type_enabled(v20, type);
        if (v25)
        {
          if (v26)
          {
            *buf = 136446466;
            v34 = "nw_http_transaction_metadata_set_start_reason";
            v35 = 2082;
            v36 = v25;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_52;
        }

        if (!v26)
        {
          goto LABEL_51;
        }

        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v22 = "%{public}s metadata must be http_transaction, no backtrace";
        goto LABEL_50;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v22 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
        goto LABEL_50;
      }
    }

LABEL_51:

LABEL_52:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_14;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = __nw_http_transaction_metadata_set_start_reason_block_invoke;
  v29 = &__block_descriptor_36_e9_B16__0_v8l;
  v30 = v7;
  handle = _nw_protocol_metadata_get_handle(v8);
  if (handle)
  {
    v28(v27, handle);
  }

LABEL_14:

  v10 = *(a2 + 24);
  if (v10)
  {
    _nw_array_append(v10, v8);
  }

LABEL_16:
  if (object)
  {
    start_time = nw_http_transaction_metadata_get_start_time(v8);
    nw_http_transaction_metadata_set_end_time(object, start_time);
  }

LABEL_19:
  return 1;
}

uint64_t __nw_http_client_metadata_set_initial_request_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 32) = 0;
  }

  *(a2 + 32) = CFRetain(*(a1 + 32));
  return 1;
}

uint64_t __nw_http_client_metadata_set_prevent_timeout_callback_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a2 + 56);
  *(a2 + 56) = v3;

  return 1;
}

id nw_endpoint_create_with_cfurl(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_endpoint_create_with_cfurl(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_with_cfurl";
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
        v12 = "nw_endpoint_create_with_cfurl";
        v6 = "%{public}s called with null url";
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
            v12 = "nw_endpoint_create_with_cfurl";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null url, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_with_cfurl";
        v6 = "%{public}s called with null url, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_with_cfurl";
        v6 = "%{public}s called with null url, backtrace limit exceeded";
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

id _nw_endpoint_create_with_cfurl(void *a1)
{
  v1 = a1;
  v2 = sub_181E4B980();

  return v2;
}

id sub_181E4B980()
{
  v0 = sub_182AD2058();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for URLEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_182AD1FD8();
  sub_181B2BB30(v2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_181F49A88(v5, &unk_1EA83A470);
    return 0;
  }

  else
  {
    sub_181B2BEE4(v5, v12);
    sub_181A546E0(v12, v9, type metadata accessor for URLEndpoint);
    v14 = objc_allocWithZone(type metadata accessor for Endpoint(0));
    v15 = Endpoint.init(_:)(v9);
    sub_181A5513C(v12, type metadata accessor for URLEndpoint);
    return v15;
  }
}

uint64_t nw_http2_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x14uLL, 0xD3B5BA3CuLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:
    *v2 = 240;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_messaging_create_options_block_invoke(uint64_t a1, uint64_t a2)
{
  if (nw_protocol_copy_http1_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
  }

  options = nw_protocol_create_options(nw_protocol_copy_http1_definition_http1_definition);
  v4 = *a2;
  *a2 = options;

  if (nw_protocol_copy_http2_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http2_definition_onceToken, &__block_literal_global_5_76055);
  }

  v5 = nw_protocol_create_options(nw_protocol_copy_http2_definition_http2_definition);
  v6 = *(a2 + 8);
  *(a2 + 8) = v5;

  if (nw_protocol_copy_http3_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
  }

  v7 = nw_protocol_create_options(nw_protocol_copy_http3_definition_http3_definition);
  v8 = *(a2 + 16);
  *(a2 + 16) = v7;

  return 1;
}

uint64_t nw_http1_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x743D54E4uLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:
    *v2 = 0x60000001DLL;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t nw_http3_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x4DDEC035uLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:
    v2[26] = 2;
    *(v2 + 109) &= ~1u;
    *(v2 + 12) = 240;

    return v2;
  }

  __break(1u);
  return result;
}

void nw_http_messaging_options_set_client_metadata(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_messaging_options_set_client_metadata";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
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
        v20 = "nw_http_messaging_options_set_client_metadata";
        v9 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_http_messaging_options_set_client_metadata";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v6);
        goto LABEL_6;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_http_messaging_options_set_client_metadata";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_messaging_options_set_client_metadata";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_messaging_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_messaging_options_set_client_metadata_block_invoke;
    v15[3] = &unk_1E6A3A950;
    v16 = v4;
    nw_protocol_options_access_handle(v3, v15);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_messaging_options_set_client_metadata";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
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
      v20 = "nw_http_messaging_options_set_client_metadata";
      v9 = "%{public}s protocol options are not http_messaging";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_messaging_options_set_client_metadata";
      v9 = "%{public}s protocol options are not http_messaging, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v20 = "nw_http_messaging_options_set_client_metadata";
      v9 = "%{public}s protocol options are not http_messaging, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_http_messaging_options_set_client_metadata";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void nw_http1_set_idle_timeout(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http1_options(v3);
    nw_http1_set_idle_timeout(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http1(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http1_set_idle_timeout_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http1_set_idle_timeout";
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
        v17 = "nw_http1_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_http1_set_idle_timeout";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http1(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http1_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http1_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), backtrace limit exceeded";
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

LABEL_5:
}

id nw_http_messaging_options_copy_http1_options(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_messaging_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

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
      v21[2] = __nw_http_messaging_options_copy_http1_options_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_messaging", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http1_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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

void sub_181E4CF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_options_is_http1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http1_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http1_definition_http1_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http1";
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
        v14 = "nw_protocol_options_is_http1";
        v8 = "%{public}s called with null options";
LABEL_19:
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
            v14 = "nw_protocol_options_is_http1";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_http1";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http1";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

void nw_http2_set_idle_timeout(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http2_options(v3);
    nw_http2_set_idle_timeout(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http2_set_idle_timeout_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http2_set_idle_timeout";
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
        v17 = "nw_http2_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http2(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_http2_set_idle_timeout";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http2_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http2_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded";
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

LABEL_5:
}

id nw_http_messaging_options_copy_http2_options(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_messaging_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

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
      v21[2] = __nw_http_messaging_options_copy_http2_options_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_messaging", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http2_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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

void sub_181E4DA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http3_set_idle_timeout(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http3_options(v3);
    nw_http3_set_idle_timeout(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http3_set_idle_timeout_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http3_set_idle_timeout";
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
        v17 = "nw_http3_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_http3_set_idle_timeout";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http3_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http3_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded";
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

LABEL_5:
}

id nw_parameters_create_secure_http_messaging(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v157 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v9)
  {
    v97 = v11;
    v98 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v99 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v99, &v152, &v151))
    {
      goto LABEL_250;
    }

    if (v152 != OS_LOG_TYPE_FAULT)
    {
      if (v151 != 1)
      {
        v100 = __nwlog_obj();
        v101 = v152;
        if (os_log_type_enabled(v100, v152))
        {
          *buf = 136446210;
          v154 = "nw_parameters_create_secure_http_messaging";
          v102 = "%{public}s called with null configure_security, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      v118 = 0;
      v119 = v12;
      backtrace_string = __nw_create_backtrace_string();
      v121 = __nwlog_obj();
      v122 = v152;
      v123 = os_log_type_enabled(v121, v152);
      if (backtrace_string)
      {
        if (!v123)
        {
          goto LABEL_224;
        }

        *buf = 136446466;
        v154 = "nw_parameters_create_secure_http_messaging";
        v155 = 2082;
        v156 = backtrace_string;
        v124 = "%{public}s called with null configure_security, dumping backtrace:%{public}s";
        goto LABEL_223;
      }

      v9 = 0;
      if (!v123)
      {
        goto LABEL_272;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v139 = "%{public}s called with null configure_security, no backtrace";
      goto LABEL_271;
    }

    v100 = __nwlog_obj();
    v101 = v152;
    if (!os_log_type_enabled(v100, v152))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v102 = "%{public}s called with null configure_security";
LABEL_248:
    _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0xCu);
    goto LABEL_249;
  }

  if (!v10)
  {
    v97 = v11;
    v103 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v99 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v99, &v152, &v151))
    {
      goto LABEL_250;
    }

    if (v152 != OS_LOG_TYPE_FAULT)
    {
      if (v151 != 1)
      {
        v100 = __nwlog_obj();
        v101 = v152;
        if (os_log_type_enabled(v100, v152))
        {
          *buf = 136446210;
          v154 = "nw_parameters_create_secure_http_messaging";
          v102 = "%{public}s called with null configure_quic_stream, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      v118 = v9;
      v119 = v12;
      backtrace_string = __nw_create_backtrace_string();
      v121 = __nwlog_obj();
      v122 = v152;
      v125 = os_log_type_enabled(v121, v152);
      if (backtrace_string)
      {
        if (!v125)
        {
          goto LABEL_224;
        }

        *buf = 136446466;
        v154 = "nw_parameters_create_secure_http_messaging";
        v155 = 2082;
        v156 = backtrace_string;
        v124 = "%{public}s called with null configure_quic_stream, dumping backtrace:%{public}s";
        goto LABEL_223;
      }

      v9 = v118;
      if (!v125)
      {
        goto LABEL_272;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v139 = "%{public}s called with null configure_quic_stream, no backtrace";
      goto LABEL_271;
    }

    v100 = __nwlog_obj();
    v101 = v152;
    if (!os_log_type_enabled(v100, v152))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v102 = "%{public}s called with null configure_quic_stream";
    goto LABEL_248;
  }

  if (!v11)
  {
    v97 = 0;
    v104 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v99 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v99, &v152, &v151))
    {
      goto LABEL_250;
    }

    if (v152 != OS_LOG_TYPE_FAULT)
    {
      if (v151 != 1)
      {
        v100 = __nwlog_obj();
        v101 = v152;
        if (os_log_type_enabled(v100, v152))
        {
          *buf = 136446210;
          v154 = "nw_parameters_create_secure_http_messaging";
          v102 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      v118 = v9;
      v119 = v12;
      backtrace_string = __nw_create_backtrace_string();
      v121 = __nwlog_obj();
      v122 = v152;
      v126 = os_log_type_enabled(v121, v152);
      if (backtrace_string)
      {
        if (!v126)
        {
          goto LABEL_224;
        }

        *buf = 136446466;
        v154 = "nw_parameters_create_secure_http_messaging";
        v155 = 2082;
        v156 = backtrace_string;
        v124 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
        goto LABEL_223;
      }

      v9 = v118;
      if (!v126)
      {
        goto LABEL_272;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v139 = "%{public}s called with null configure_quic_connection, no backtrace";
      goto LABEL_271;
    }

    v100 = __nwlog_obj();
    v101 = v152;
    if (!os_log_type_enabled(v100, v152))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v102 = "%{public}s called with null configure_quic_connection";
    goto LABEL_248;
  }

  if (!v12)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v106 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v106, &v152, &v151))
    {
      goto LABEL_241;
    }

    if (v152 == OS_LOG_TYPE_FAULT)
    {
      v107 = __nwlog_obj();
      v108 = v152;
      if (!os_log_type_enabled(v107, v152))
      {
LABEL_240:

LABEL_241:
        if (!v106)
        {
LABEL_243:
          v59 = 0;
          goto LABEL_151;
        }

LABEL_242:
        free(v106);
        goto LABEL_243;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v109 = "%{public}s called with null configure_tcp";
    }

    else
    {
      if (v151 == 1)
      {
        v127 = v9;
        v128 = __nw_create_backtrace_string();
        v129 = __nwlog_obj();
        v130 = v152;
        v131 = os_log_type_enabled(v129, v152);
        if (v128)
        {
          if (v131)
          {
            *buf = 136446466;
            v154 = "nw_parameters_create_secure_http_messaging";
            v155 = 2082;
            v156 = v128;
            _os_log_impl(&dword_181A37000, v129, v130, "%{public}s called with null configure_tcp, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v128);
          v12 = 0;
          v9 = v127;
          if (!v106)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v9 = v127;
          if (v131)
          {
            *buf = 136446210;
            v154 = "nw_parameters_create_secure_http_messaging";
            _os_log_impl(&dword_181A37000, v129, v130, "%{public}s called with null configure_tcp, no backtrace", buf, 0xCu);
          }

          v12 = 0;
          if (!v106)
          {
            goto LABEL_243;
          }
        }

        goto LABEL_242;
      }

      v107 = __nwlog_obj();
      v108 = v152;
      if (!os_log_type_enabled(v107, v152))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v109 = "%{public}s called with null configure_tcp, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v107, v108, v109, buf, 0xCu);
    goto LABEL_240;
  }

  if (!v13)
  {
    v97 = v11;
    v110 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v99 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v99, &v152, &v151))
    {
      goto LABEL_250;
    }

    if (v152 == OS_LOG_TYPE_FAULT)
    {
      v100 = __nwlog_obj();
      v101 = v152;
      if (!os_log_type_enabled(v100, v152))
      {
        goto LABEL_249;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v102 = "%{public}s called with null configure_http_messaging";
      goto LABEL_248;
    }

    if (v151 != 1)
    {
      v100 = __nwlog_obj();
      v101 = v152;
      if (os_log_type_enabled(v100, v152))
      {
        *buf = 136446210;
        v154 = "nw_parameters_create_secure_http_messaging";
        v102 = "%{public}s called with null configure_http_messaging, backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    v118 = v9;
    v119 = v12;
    backtrace_string = __nw_create_backtrace_string();
    v121 = __nwlog_obj();
    v122 = v152;
    v132 = os_log_type_enabled(v121, v152);
    if (backtrace_string)
    {
      if (!v132)
      {
        goto LABEL_224;
      }

      *buf = 136446466;
      v154 = "nw_parameters_create_secure_http_messaging";
      v155 = 2082;
      v156 = backtrace_string;
      v124 = "%{public}s called with null configure_http_messaging, dumping backtrace:%{public}s";
      goto LABEL_223;
    }

    v9 = v118;
    if (!v132)
    {
      goto LABEL_272;
    }

    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v139 = "%{public}s called with null configure_http_messaging, no backtrace";
LABEL_271:
    _os_log_impl(&dword_181A37000, v121, v122, v139, buf, 0xCu);
    goto LABEL_272;
  }

  if (v13 == &__block_literal_global_19409)
  {
    v97 = v11;
    v111 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v99 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v99, &v152, &v151))
    {
      goto LABEL_250;
    }

    if (v152 == OS_LOG_TYPE_FAULT)
    {
      v100 = __nwlog_obj();
      v101 = v152;
      if (os_log_type_enabled(v100, v152))
      {
        *buf = 136446210;
        v154 = "nw_parameters_create_secure_http_messaging";
        v102 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_248;
      }

LABEL_249:

LABEL_250:
      if (!v99)
      {
LABEL_252:
        v59 = 0;
        v11 = v97;
        goto LABEL_151;
      }

LABEL_251:
      free(v99);
      goto LABEL_252;
    }

    if (v151 != 1)
    {
      v100 = __nwlog_obj();
      v101 = v152;
      if (os_log_type_enabled(v100, v152))
      {
        *buf = 136446210;
        v154 = "nw_parameters_create_secure_http_messaging";
        v102 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    v118 = v9;
    v119 = v12;
    backtrace_string = __nw_create_backtrace_string();
    v121 = __nwlog_obj();
    v122 = v152;
    v133 = os_log_type_enabled(v121, v152);
    if (backtrace_string)
    {
      if (!v133)
      {
        goto LABEL_224;
      }

      *buf = 136446466;
      v154 = "nw_parameters_create_secure_http_messaging";
      v155 = 2082;
      v156 = backtrace_string;
      v124 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_223:
      _os_log_impl(&dword_181A37000, v121, v122, v124, buf, 0x16u);
LABEL_224:

      free(backtrace_string);
      v12 = v119;
      v9 = v118;
      if (!v99)
      {
        goto LABEL_252;
      }

      goto LABEL_251;
    }

    v9 = v118;
    if (v133)
    {
      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v139 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable)), no backtrace";
      goto LABEL_271;
    }

LABEL_272:

    v12 = v119;
    if (!v99)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

  v15 = _nw_parameters_create();
  v146 = v15;
  if (v15)
  {
    stack = _nw_parameters_copy_default_protocol_stack(v15);
    if (stack)
    {
      v144 = v12;
      v16 = v11;
      if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      v145 = v10;
      options = nw_protocol_create_options(nw_protocol_copy_http_messaging_definition_definition);
      nw_protocol_options_access_handle(options, &__block_literal_global_96);
      if (v14 != &__block_literal_global_2)
      {
        v14[2](v14, options);
      }

      v140 = v14;
      v18 = nw_http_messaging_options_copy_http1_options(options);

      v19 = nw_http_messaging_options_copy_http2_options(options);
      v20 = nw_http_messaging_options_copy_http3_options(options);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_parameters_create_secure_http_messaging_block_invoke;
      aBlock[3] = &__block_descriptor_35_e39___NSObject_OS_nw_protocol_options__8__0l;
      v148 = v20 != 0;
      v149 = v19 != 0;
      v150 = v18 != 0;
      v21 = _Block_copy(aBlock);
      v141 = v21;
      v23 = 0;
      if (v145 == &__block_literal_global_19409 || v16 == &__block_literal_global_19409 || !v20)
      {
LABEL_22:
        if (v18)
        {
          if (v144 == &__block_literal_global_19409)
          {
            v18 = 0;
            goto LABEL_36;
          }
        }

        else if (v144 == &__block_literal_global_19409 || !v19)
        {
          goto LABEL_36;
        }

        v32 = _nw_tcp_create_options();
        if (v32)
        {
          v18 = v32;
          if (v144 != &__block_literal_global_2)
          {
            v144[2]();
          }

          if (!v23)
          {
            _nw_protocol_stack_set_transport_protocol(stack, v18);
          }

LABEL_36:
          nw_protocol_stack_prepend_application_protocol(stack, options);
          v33 = _nw_array_create();
          if (v23 && v18)
          {
            v34 = _nw_protocol_transform_create();
            if (!v34)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v80 = gLogObj;
              *buf = 136446210;
              v154 = "nw_parameters_create_secure_http_messaging";
              v76 = _os_log_send_and_compose_impl();

              v152 = OS_LOG_TYPE_ERROR;
              v151 = 0;
              if (!__nwlog_fault(v76, &v152, &v151))
              {
                goto LABEL_143;
              }

              if (v152 == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v77 = gLogObj;
                v78 = v152;
                if (os_log_type_enabled(v77, v152))
                {
                  *buf = 136446210;
                  v154 = "nw_parameters_create_secure_http_messaging";
                  v79 = "%{public}s nw_protocol_transform_create failed";
                  goto LABEL_141;
                }

LABEL_142:

                goto LABEL_143;
              }

              if (v151 != 1)
              {
                v77 = __nwlog_obj();
                v78 = v152;
                if (os_log_type_enabled(v77, v152))
                {
                  *buf = 136446210;
                  v154 = "nw_parameters_create_secure_http_messaging";
                  v79 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
                  goto LABEL_141;
                }

                goto LABEL_142;
              }

              v90 = __nw_create_backtrace_string();
              v91 = __nwlog_obj();
              v92 = v152;
              v94 = os_log_type_enabled(v91, v152);
              if (v90)
              {
                if (!v94)
                {
                  goto LABEL_133;
                }

                goto LABEL_132;
              }

              if (v94)
              {
                *buf = 136446210;
                v154 = "nw_parameters_create_secure_http_messaging";
                goto LABEL_166;
              }

              goto LABEL_167;
            }

            v35 = v34;
            _nw_protocol_transform_clear_protocols_at_level(v34, 3);
            v36 = v35;
            v37 = v23;
            _nw_protocol_transform_append_protocol(v36, 3, v37);

            _nw_protocol_transform_set_fallback_mode(v36, 2u);
            v38 = v36;
            _nw_protocol_transform_add_match_url_scheme(v38);

            v39 = v38;
            _nw_protocol_transform_add_match_url_scheme(v39);

            v40 = v39;
            _nw_protocol_transform_add_match_url_scheme(v40);

            v41 = v40;
            _nw_protocol_transform_add_match_url_scheme(v41);

            _nw_protocol_transform_set_prohibit_direct(v41, 1);
            if (v33)
            {
              _nw_array_append(v33, v41);
            }
          }

          else if (!v18)
          {
LABEL_54:
            if (v33 && _nw_array_get_count(v33))
            {
              nw_parameters_set_transform_array(v146, v33);
            }

            _nw_parameters_set_data_mode(v146, 2);
            v59 = v146;
            goto LABEL_146;
          }

          if (nw_get_http3_override_onceToken != -1)
          {
            dispatch_once(&nw_get_http3_override_onceToken, &__block_literal_global_11_76433);
          }

          if (nw_get_http3_override_value != 1)
          {
            v42 = _nw_protocol_transform_create();
            if (!v42)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v89 = gLogObj;
              *buf = 136446210;
              v154 = "nw_parameters_create_secure_http_messaging";
              v76 = _os_log_send_and_compose_impl();

              v152 = OS_LOG_TYPE_ERROR;
              v151 = 0;
              if (!__nwlog_fault(v76, &v152, &v151))
              {
                goto LABEL_143;
              }

              if (v152 == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v77 = gLogObj;
                v78 = v152;
                if (os_log_type_enabled(v77, v152))
                {
                  *buf = 136446210;
                  v154 = "nw_parameters_create_secure_http_messaging";
                  v79 = "%{public}s nw_protocol_transform_create failed";
                  goto LABEL_141;
                }

                goto LABEL_142;
              }

              if (v151 != 1)
              {
                v77 = __nwlog_obj();
                v78 = v152;
                if (os_log_type_enabled(v77, v152))
                {
                  *buf = 136446210;
                  v154 = "nw_parameters_create_secure_http_messaging";
                  v79 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
                  goto LABEL_141;
                }

                goto LABEL_142;
              }

              v90 = __nw_create_backtrace_string();
              v91 = __nwlog_obj();
              v92 = v152;
              v95 = os_log_type_enabled(v91, v152);
              if (v90)
              {
                if (!v95)
                {
                  goto LABEL_133;
                }

                goto LABEL_132;
              }

              if (v95)
              {
                *buf = 136446210;
                v154 = "nw_parameters_create_secure_http_messaging";
                goto LABEL_166;
              }

              goto LABEL_167;
            }

            v43 = v42;
            _nw_protocol_transform_clear_protocols_at_level(v42, 3);
            v44 = v141[2]();
            v9[2](v9, v44, 0);

            nw_protocol_transform_append_protocol(v43, 4, v44);
            v45 = v43;
            v46 = v18;
            _nw_protocol_transform_append_protocol(v45, 3, v46);

            v47 = v45;
            _nw_protocol_transform_add_match_url_scheme(v47);

            v48 = v47;
            _nw_protocol_transform_add_match_url_scheme(v48);

            v49 = v48;
            _nw_protocol_transform_add_match_url_scheme(v49);

            v50 = v49;
            _nw_protocol_transform_add_match_url_scheme(v50);

            _nw_protocol_transform_set_prohibit_direct(v50, 1);
            if (v33)
            {
              _nw_array_append(v33, v50);
            }
          }

          v51 = _nw_protocol_transform_create();
          if (v51)
          {
            v52 = v51;
            _nw_protocol_transform_clear_protocols_at_level(v51, 3);
            v53 = v52;
            v54 = v18;
            _nw_protocol_transform_append_protocol(v53, 3, v54);

            v55 = v53;
            _nw_protocol_transform_add_match_url_scheme(v55);

            v56 = v55;
            _nw_protocol_transform_add_match_url_scheme(v56);

            v57 = v56;
            _nw_protocol_transform_add_match_url_scheme(v57);

            v58 = v57;
            _nw_protocol_transform_add_match_url_scheme(v58);

            _nw_protocol_transform_set_prohibit_direct(v58, 1);
            if (v33)
            {
              _nw_array_append(v33, v58);
            }

            goto LABEL_54;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v75 = gLogObj;
          *buf = 136446210;
          v154 = "nw_parameters_create_secure_http_messaging";
          v76 = _os_log_send_and_compose_impl();

          v152 = OS_LOG_TYPE_ERROR;
          v151 = 0;
          if (!__nwlog_fault(v76, &v152, &v151))
          {
LABEL_143:
            if (!v76)
            {
LABEL_145:
              v59 = 0;
LABEL_146:

              goto LABEL_147;
            }

LABEL_144:
            free(v76);
            goto LABEL_145;
          }

          if (v152 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v77 = gLogObj;
            v78 = v152;
            if (os_log_type_enabled(v77, v152))
            {
              *buf = 136446210;
              v154 = "nw_parameters_create_secure_http_messaging";
              v79 = "%{public}s nw_protocol_transform_create failed";
LABEL_141:
              _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
              goto LABEL_142;
            }

            goto LABEL_142;
          }

          if (v151 != 1)
          {
            v77 = __nwlog_obj();
            v78 = v152;
            if (os_log_type_enabled(v77, v152))
            {
              *buf = 136446210;
              v154 = "nw_parameters_create_secure_http_messaging";
              v79 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
              goto LABEL_141;
            }

            goto LABEL_142;
          }

          v90 = __nw_create_backtrace_string();
          v91 = __nwlog_obj();
          v92 = v152;
          v93 = os_log_type_enabled(v91, v152);
          if (v90)
          {
            if (!v93)
            {
              goto LABEL_133;
            }

LABEL_132:
            *buf = 136446466;
            v154 = "nw_parameters_create_secure_http_messaging";
            v155 = 2082;
            v156 = v90;
            _os_log_impl(&dword_181A37000, v91, v92, "%{public}s nw_protocol_transform_create failed, dumping backtrace:%{public}s", buf, 0x16u);
LABEL_133:

            free(v90);
            if (!v76)
            {
              goto LABEL_145;
            }

            goto LABEL_144;
          }

          if (v93)
          {
            *buf = 136446210;
            v154 = "nw_parameters_create_secure_http_messaging";
LABEL_166:
            _os_log_impl(&dword_181A37000, v91, v92, "%{public}s nw_protocol_transform_create failed, no backtrace", buf, 0xCu);
          }

LABEL_167:

          if (!v76)
          {
            goto LABEL_145;
          }

          goto LABEL_144;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        *buf = 136446210;
        v154 = "nw_parameters_create_secure_http_messaging";
        v71 = _os_log_send_and_compose_impl();

        v152 = OS_LOG_TYPE_ERROR;
        v151 = 0;
        if (!__nwlog_fault(v71, &v152, &v151))
        {
LABEL_126:
          if (!v71)
          {
LABEL_128:
            v59 = 0;
LABEL_147:

            v10 = v145;
            v14 = v140;
            goto LABEL_148;
          }

LABEL_127:
          free(v71);
          goto LABEL_128;
        }

        if (v152 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v72 = gLogObj;
          v73 = v152;
          if (!os_log_type_enabled(v72, v152))
          {
LABEL_125:

            goto LABEL_126;
          }

          *buf = 136446210;
          v154 = "nw_parameters_create_secure_http_messaging";
          v74 = "%{public}s nw_tcp_create_options failed";
        }

        else
        {
          if (v151 == 1)
          {
            v85 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v86 = gLogObj;
            v87 = v152;
            v88 = os_log_type_enabled(v86, v152);
            if (v85)
            {
              if (v88)
              {
                *buf = 136446466;
                v154 = "nw_parameters_create_secure_http_messaging";
                v155 = 2082;
                v156 = v85;
                _os_log_impl(&dword_181A37000, v86, v87, "%{public}s nw_tcp_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v85);
              if (!v71)
              {
                goto LABEL_128;
              }
            }

            else
            {
              if (v88)
              {
                *buf = 136446210;
                v154 = "nw_parameters_create_secure_http_messaging";
                _os_log_impl(&dword_181A37000, v86, v87, "%{public}s nw_tcp_create_options failed, no backtrace", buf, 0xCu);
              }

              if (!v71)
              {
                goto LABEL_128;
              }
            }

            goto LABEL_127;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v72 = gLogObj;
          v73 = v152;
          if (!os_log_type_enabled(v72, v152))
          {
            goto LABEL_125;
          }

          *buf = 136446210;
          v154 = "nw_parameters_create_secure_http_messaging";
          v74 = "%{public}s nw_tcp_create_options failed, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
        goto LABEL_125;
      }

      stream_options = _nw_quic_create_stream_options(v21, v22);
      if (stream_options)
      {
        v23 = stream_options;
        _nw_protocol_stack_set_transport_protocol(stack, stream_options);
        if (v145 != &__block_literal_global_2)
        {
          v145[2]();
        }

        v25 = nw_quic_stream_copy_shared_connection_options(v23);
        v26 = v141[2]();
        v9[2](v9, v26, 1);
        nw_quic_connection_set_sec_protocol_options(v25, v26);
        if (v16 != &__block_literal_global_2)
        {
          v16[2](v16, v25);
        }

        goto LABEL_22;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v65 = gLogObj;
      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v66 = _os_log_send_and_compose_impl();

      v152 = OS_LOG_TYPE_ERROR;
      v151 = 0;
      v10 = v145;
      if (!__nwlog_fault(v66, &v152, &v151))
      {
LABEL_119:
        if (!v66)
        {
LABEL_121:
          v59 = 0;
LABEL_148:

          v11 = v16;
          v12 = v144;
LABEL_149:

          goto LABEL_150;
        }

LABEL_120:
        free(v66);
        goto LABEL_121;
      }

      if (v152 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        v68 = v152;
        if (!os_log_type_enabled(v67, v152))
        {
LABEL_118:

          goto LABEL_119;
        }

        *buf = 136446210;
        v154 = "nw_parameters_create_secure_http_messaging";
        v69 = "%{public}s nw_quic_create_stream_options failed";
      }

      else
      {
        if (v151 == 1)
        {
          v81 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v82 = gLogObj;
          v83 = v152;
          v84 = os_log_type_enabled(v82, v152);
          if (v81)
          {
            if (v84)
            {
              *buf = 136446466;
              v154 = "nw_parameters_create_secure_http_messaging";
              v155 = 2082;
              v156 = v81;
              _os_log_impl(&dword_181A37000, v82, v83, "%{public}s nw_quic_create_stream_options failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v81);
            v10 = v145;
            if (!v66)
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v84)
            {
              *buf = 136446210;
              v154 = "nw_parameters_create_secure_http_messaging";
              _os_log_impl(&dword_181A37000, v82, v83, "%{public}s nw_quic_create_stream_options failed, no backtrace", buf, 0xCu);
            }

            v10 = v145;
            if (!v66)
            {
              goto LABEL_121;
            }
          }

          goto LABEL_120;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        v68 = v152;
        if (!os_log_type_enabled(v67, v152))
        {
          goto LABEL_118;
        }

        *buf = 136446210;
        v154 = "nw_parameters_create_secure_http_messaging";
        v69 = "%{public}s nw_quic_create_stream_options failed, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0xCu);
      goto LABEL_118;
    }

    v112 = v9;
    v113 = __nwlog_obj();
    *buf = 136446210;
    v154 = "nw_parameters_create_secure_http_messaging";
    v114 = _os_log_send_and_compose_impl();

    v152 = OS_LOG_TYPE_ERROR;
    v151 = 0;
    if (!__nwlog_fault(v114, &v152, &v151))
    {
LABEL_278:
      if (v114)
      {
        free(v114);
      }

      v59 = 0;
      v9 = v112;
      goto LABEL_149;
    }

    if (v152 == OS_LOG_TYPE_FAULT)
    {
      v115 = __nwlog_obj();
      v116 = v152;
      if (!os_log_type_enabled(v115, v152))
      {
LABEL_256:

        goto LABEL_278;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v117 = "%{public}s called with null stack";
    }

    else
    {
      if (v151 == 1)
      {
        v134 = v11;
        v135 = __nw_create_backtrace_string();
        v136 = __nwlog_obj();
        v137 = v152;
        v138 = os_log_type_enabled(v136, v152);
        if (v135)
        {
          if (v138)
          {
            *buf = 136446466;
            v154 = "nw_parameters_create_secure_http_messaging";
            v155 = 2082;
            v156 = v135;
            _os_log_impl(&dword_181A37000, v136, v137, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v135);
        }

        else
        {
          if (v138)
          {
            *buf = 136446210;
            v154 = "nw_parameters_create_secure_http_messaging";
            _os_log_impl(&dword_181A37000, v136, v137, "%{public}s called with null stack, no backtrace", buf, 0xCu);
          }
        }

        v112 = v9;
        v11 = v134;
        goto LABEL_278;
      }

      v115 = __nwlog_obj();
      v116 = v152;
      if (!os_log_type_enabled(v115, v152))
      {
        goto LABEL_256;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v117 = "%{public}s called with null stack, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v115, v116, v117, buf, 0xCu);
    goto LABEL_256;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v27 = gLogObj;
  *buf = 136446210;
  v154 = "nw_parameters_create_secure_http_messaging";
  v28 = _os_log_send_and_compose_impl();

  v152 = OS_LOG_TYPE_ERROR;
  v151 = 0;
  if (__nwlog_fault(v28, &v152, &v151))
  {
    if (v152 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = v152;
      if (!os_log_type_enabled(v29, v152))
      {
LABEL_74:

        goto LABEL_75;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v31 = "%{public}s nw_parameters_create failed";
    }

    else
    {
      if (v151 == 1)
      {
        v142 = v9;
        v60 = v11;
        v61 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v62 = gLogObj;
        v63 = v152;
        v64 = os_log_type_enabled(v62, v152);
        if (v61)
        {
          if (v64)
          {
            *buf = 136446466;
            v154 = "nw_parameters_create_secure_http_messaging";
            v155 = 2082;
            v156 = v61;
            _os_log_impl(&dword_181A37000, v62, v63, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v61);
        }

        else
        {
          if (v64)
          {
            *buf = 136446210;
            v154 = "nw_parameters_create_secure_http_messaging";
            _os_log_impl(&dword_181A37000, v62, v63, "%{public}s nw_parameters_create failed, no backtrace", buf, 0xCu);
          }
        }

        v11 = v60;
        v9 = v142;
        if (!v28)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = v152;
      if (!os_log_type_enabled(v29, v152))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v154 = "nw_parameters_create_secure_http_messaging";
      v31 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_74;
  }

LABEL_75:
  if (v28)
  {
LABEL_76:
    free(v28);
  }

LABEL_77:
  v59 = 0;
LABEL_150:

LABEL_151:
  return v59;
}

uint64_t nw_http_messaging_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x56CC64F2uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    v4 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v4);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v4);
  }

  if (nw_http_connection_state_storage_copy_shared_token != -1)
  {
    dispatch_once(&nw_http_connection_state_storage_copy_shared_token, &__block_literal_global_55557);
  }

  objc_storeStrong(v2 + 7, nw_http_connection_state_storage_copy_shared_storage);

  return v2;
}

uint64_t nw_protocol_options_is_http2(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http2_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http2_definition_onceToken, &__block_literal_global_5_76055);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http2_definition_http2_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http2";
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
        v14 = "nw_protocol_options_is_http2";
        v8 = "%{public}s called with null options";
LABEL_19:
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
            v14 = "nw_protocol_options_is_http2";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_http2";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http2";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

id nw_http_messaging_options_copy_http3_options(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_messaging_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

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
      v21[2] = __nw_http_messaging_options_copy_http3_options_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http3_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_messaging", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http3_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http3_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http3_options";
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

void sub_181E50910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http1_set_connection_pool_width(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http1_options(v3);
    nw_http1_set_connection_pool_width(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http1(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http1_set_connection_pool_width_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http1_set_connection_pool_width";
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
        v17 = "nw_http1_set_connection_pool_width";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_http1_set_connection_pool_width";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http1(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http1_set_connection_pool_width";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http1_set_connection_pool_width";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), backtrace limit exceeded";
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

LABEL_5:
}

void nw_activity_submit_metrics(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v90 = *MEMORY[0x1E69E9840];
  v6 = v5;
  v7 = v2;
  v8 = v7;
  if (!v6)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_submit_metrics";
    v26 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (!__nwlog_fault(v26, type, &v71))
    {
      goto LABEL_105;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null activity", buf, 0xCu);
      }
    }

    else if (v71 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v34 = type[0];
      v35 = os_log_type_enabled(v27, type[0]);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_105:
        if (!v26)
        {
          goto LABEL_40;
        }

LABEL_106:
        free(v26);
        goto LABEL_40;
      }

      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v41, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_104:

    goto LABEL_105;
  }

  if (!v4)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_submit_metrics";
    v26 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (!__nwlog_fault(v26, type, &v71))
    {
      goto LABEL_105;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null metric_name", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v71 != 1)
    {
      v27 = __nwlog_obj();
      v42 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v42, "%{public}s called with null metric_name, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    v36 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v37 = type[0];
    v38 = os_log_type_enabled(v27, type[0]);
    if (!v36)
    {
      if (v38)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v37, "%{public}s called with null metric_name, no backtrace", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v38)
    {
      *buf = 136446466;
      *&buf[4] = "nw_activity_submit_metrics";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      _os_log_impl(&dword_181A37000, v27, v37, "%{public}s called with null metric_name, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_70;
  }

  if (!v7)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_submit_metrics";
    v26 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (!__nwlog_fault(v26, type, &v71))
    {
      goto LABEL_105;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null metrics", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v71 != 1)
    {
      v27 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v43, "%{public}s called with null metrics, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    v36 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v39 = type[0];
    v40 = os_log_type_enabled(v27, type[0]);
    if (!v36)
    {
      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null metrics, no backtrace", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v40)
    {
      *buf = 136446466;
      *&buf[4] = "nw_activity_submit_metrics";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null metrics, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_70:

    free(v36);
    if (!v26)
    {
      goto LABEL_40;
    }

    goto LABEL_106;
  }

  *type = 0;
  v76 = type;
  v77 = 0x2020000000;
  v78 = 1;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_activity_submit_metrics_block_invoke;
  aBlock[3] = &unk_1E6A36148;
  v9 = v6;
  v67 = v9;
  v68 = type;
  v69 = &v71;
  v10 = _Block_copy(aBlock);
  v70 = v10;
  nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v6 + 20, &v70);

  if (v76[24])
  {
    if (*(v72 + 6) >= 0xBu)
    {
      *v88 = 0;
      *&v88[8] = v88;
      *&v88[16] = 0x2020000000;
      v89 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __nw_activity_submit_metrics_block_invoke_87;
      v62[3] = &unk_1E6A3D738;
      v11 = v9;
      v63 = v11;
      v64 = v88;
      v12 = _Block_copy(v62);
      v65 = v12;
      nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v6 + 20, &v65);

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*&v88[8] + 24);
        *buf = 136446978;
        *&buf[4] = "nw_activity_submit_metrics";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        v82 = 2080;
        v83 = v4;
        v84 = 1024;
        v85 = v14;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s Activity %{public}@ exceeded max client metric count, dropping metric named %s (%u total quenched)", buf, 0x26u);
      }

      _Block_object_dispose(v88, 8);
      goto LABEL_39;
    }

    v61 = 0;
    if (nw_activity_metric_object_is_valid(v8, 0, &v61))
    {
      if (__nwlog_metrics_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_metrics_log::onceToken, &__block_literal_global_48);
      }

      v15 = gmetricsLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *&buf[4] = v9;
        *&buf[12] = 2082;
        *&buf[14] = v4;
        v82 = 2082;
        v83 = v61;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}@ submitting metrics %{public}s: %{public}s", buf, 0x20u);
      }

      if ((v9[4]._os_unfair_lock_opaque & 0x100) == 0 || !v61)
      {
        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v24 = gactivityLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v9;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ not selected for reporting, metrics complete", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v16 = gactivityLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ selected for reporting, sending metric report to symptoms", buf, 0xCu);
      }

      bzero(buf, 0x1498uLL);
      v17 = v61;
      v18 = v9;
      if (v17)
      {
        v19 = 0;
        *buf = *&v18[2]._os_unfair_lock_opaque;
        while (1)
        {
          v20 = v4[v19];
          buf[v19 + 16] = v20;
          if (!v20)
          {
            break;
          }

          if (++v19 == 255)
          {
            v86 = 0;
            break;
          }
        }

        v21 = v87;
        v22 = 4999;
        while (1)
        {
          v23 = *v17;
          *v21 = v23;
          if (!v23)
          {
            goto LABEL_29;
          }

          ++v17;
          ++v21;
          if (!--v22)
          {
            v87[4999] = 0;
            goto LABEL_29;
          }
        }
      }

      v60 = v18;
      v51 = __nwlog_obj();
      *v88 = 136446210;
      *&v88[4] = "nw_activity_fill_out_client_metric_report";
      v52 = _os_log_send_and_compose_impl();

      v80 = OS_LOG_TYPE_ERROR;
      v79 = 0;
      if (__nwlog_fault(v52, &v80, &v79))
      {
        if (v80 == OS_LOG_TYPE_FAULT)
        {
          v53 = __nwlog_obj();
          v54 = v80;
          if (os_log_type_enabled(v53, v80))
          {
            *v88 = 136446210;
            *&v88[4] = "nw_activity_fill_out_client_metric_report";
            _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null client_metric", v88, 0xCu);
          }
        }

        else if (v79 == 1)
        {
          v56 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v57 = v80;
          v58 = os_log_type_enabled(v53, v80);
          if (v56)
          {
            if (v58)
            {
              *v88 = 136446466;
              *&v88[4] = "nw_activity_fill_out_client_metric_report";
              *&v88[12] = 2082;
              *&v88[14] = v56;
              _os_log_impl(&dword_181A37000, v53, v57, "%{public}s called with null client_metric, dumping backtrace:%{public}s", v88, 0x16u);
            }

            free(v56);
            goto LABEL_126;
          }

          if (v58)
          {
            *v88 = 136446210;
            *&v88[4] = "nw_activity_fill_out_client_metric_report";
            _os_log_impl(&dword_181A37000, v53, v57, "%{public}s called with null client_metric, no backtrace", v88, 0xCu);
          }
        }

        else
        {
          v53 = __nwlog_obj();
          v59 = v80;
          if (os_log_type_enabled(v53, v80))
          {
            *v88 = 136446210;
            *&v88[4] = "nw_activity_fill_out_client_metric_report";
            _os_log_impl(&dword_181A37000, v53, v59, "%{public}s called with null client_metric, backtrace limit exceeded", v88, 0xCu);
          }
        }
      }

LABEL_126:
      if (v52)
      {
        free(v52);
      }

      v18 = v60;
LABEL_29:

      if (nw_connection_get_symptom_reporter_handle::once != -1)
      {
        dispatch_once(&nw_connection_get_symptom_reporter_handle::once, &__block_literal_global_83286);
      }

      symptom_new();
      symptom_set_qualifier();
      symptom_set_additional_qualifier();
      symptom_send();
LABEL_37:
      if (v61)
      {
        free(v61);
      }

      goto LABEL_39;
    }

    v44 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_activity_submit_metrics";
    *&buf[12] = 2082;
    *&buf[14] = "Invalid metric object submitted";
    v45 = _os_log_send_and_compose_impl();

    v88[0] = 16;
    v80 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v45, v88, &v80))
    {
      if (v88[0] == 17)
      {
        v46 = __nwlog_obj();
        v47 = v88[0];
        if (os_log_type_enabled(v46, v88[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = "Invalid metric object submitted";
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
        }
      }

      else if (v80 == OS_LOG_TYPE_INFO)
      {
        v48 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v49 = v88[0];
        v50 = os_log_type_enabled(v46, v88[0]);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446722;
            *&buf[4] = "nw_activity_submit_metrics";
            *&buf[12] = 2082;
            *&buf[14] = "Invalid metric object submitted";
            v82 = 2082;
            v83 = v48;
            _os_log_impl(&dword_181A37000, v46, v49, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v48);
          goto LABEL_121;
        }

        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = "Invalid metric object submitted";
          _os_log_impl(&dword_181A37000, v46, v49, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v55 = v88[0];
        if (os_log_type_enabled(v46, v88[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = "Invalid metric object submitted";
          _os_log_impl(&dword_181A37000, v46, v55, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_121:
    if (v45)
    {
      free(v45);
    }

    goto LABEL_37;
  }

LABEL_39:

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(type, 8);
LABEL_40:
}
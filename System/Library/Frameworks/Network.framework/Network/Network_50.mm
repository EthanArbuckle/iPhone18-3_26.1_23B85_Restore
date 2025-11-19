void nw_protocol_http3_stream_notify(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_protocol_http3_stream_notify";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v18, &type, &v58))
    {
      goto LABEL_129;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v58 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_129;
        }

        *buf = 136446210;
        v61 = "nw_protocol_http3_stream_notify";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_116;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v35 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_129;
        }

        *buf = 136446210;
        v61 = "nw_protocol_http3_stream_notify";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_116;
      }

      if (!v35)
      {
        goto LABEL_92;
      }

      *buf = 136446466;
      v61 = "nw_protocol_http3_stream_notify";
      v62 = 2082;
      v63 = backtrace_string;
      v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_129;
    }

    *buf = 136446210;
    v61 = "nw_protocol_http3_stream_notify";
    v21 = "%{public}s called with null protocol";
LABEL_116:
    v52 = v19;
    v53 = v20;
    v54 = 12;
LABEL_128:
    _os_log_impl(&dword_181A37000, v52, v53, v21, buf, v54);
    goto LABEL_129;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_protocol_http3_stream_notify";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v18, &type, &v58))
    {
      goto LABEL_129;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v58 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_129;
        }

        *buf = 136446210;
        v61 = "nw_protocol_http3_stream_notify";
        v21 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_116;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v37 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v37)
        {
          goto LABEL_129;
        }

        *buf = 136446210;
        v61 = "nw_protocol_http3_stream_notify";
        v21 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_116;
      }

      if (!v37)
      {
        goto LABEL_92;
      }

      *buf = 136446466;
      v61 = "nw_protocol_http3_stream_notify";
      v62 = 2082;
      v63 = backtrace_string;
      v36 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_129;
    }

    *buf = 136446210;
    v61 = "nw_protocol_http3_stream_notify";
    v21 = "%{public}s called with null http3_stream";
    goto LABEL_116;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_protocol_http3_stream_notify";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v18, &type, &v58))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_129;
      }

      *buf = 136446210;
      v61 = "nw_protocol_http3_stream_notify";
      v21 = "%{public}s called with null other_protocol";
      goto LABEL_116;
    }

    if (v58 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_129;
      }

      *buf = 136446210;
      v61 = "nw_protocol_http3_stream_notify";
      v21 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_116;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v38 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (!v38)
      {
        goto LABEL_129;
      }

      *buf = 136446210;
      v61 = "nw_protocol_http3_stream_notify";
      v21 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_116;
    }

    if (!v38)
    {
      goto LABEL_92;
    }

    *buf = 136446466;
    v61 = "nw_protocol_http3_stream_notify";
    v62 = 2082;
    v63 = backtrace_string;
    v36 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_67:
    v39 = v19;
    v40 = v20;
    v41 = 22;
LABEL_91:
    _os_log_impl(&dword_181A37000, v39, v40, v36, buf, v41);
    goto LABEL_92;
  }

  if (a3 > 15)
  {
    if (a3 == 22)
    {
      v9 = a2;
      v10 = a3;
      v11 = a1;
      if ((*(v5 + 732) & 0x2000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v13 = *(*(v5 + 344) + 1304);
          v14 = *(v5 + 240);
          *buf = 136447234;
          v61 = "nw_protocol_http3_stream_notify";
          v62 = 2082;
          v63 = (v5 + 632);
          v64 = 2080;
          v65 = " ";
          v66 = 1024;
          v67 = v13;
          v68 = 2048;
          v69 = v14;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> restart received, assuming connection closed", buf, 0x30u);
        }
      }

      *(*(v5 + 344) + 1397) |= 8u;
      a1 = v11;
      a3 = v10;
      a2 = v9;
LABEL_25:
      v15 = *(a1 + 48);
      if (v15)
      {
        v16 = *(v15 + 24);
        if (v16)
        {
          v17 = *(v16 + 160);
          if (v17)
          {
            v17(*(a1 + 48), a2, a3);
            return;
          }
        }
      }

      v22 = a1;
      __nwlog_obj();
      v23 = *(v22 + 48);
      v24 = "invalid";
      if (v23)
      {
        v25 = *(v23 + 16);
        if (v25)
        {
          v24 = v25;
        }
      }

      *buf = 136446466;
      v61 = "nw_protocol_http3_stream_notify";
      v62 = 2082;
      v63 = v24;
      v18 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v18, &type, &v58))
      {
LABEL_129:
        if (v18)
        {
          goto LABEL_130;
        }

        return;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_129;
        }

        v28 = *(v22 + 48);
        v29 = "invalid";
        if (v28)
        {
          v30 = *(v28 + 16);
          if (v30)
          {
            v29 = v30;
          }
        }

LABEL_51:
        *buf = 136446466;
        v61 = "nw_protocol_http3_stream_notify";
        v62 = 2082;
        v63 = v29;
        v21 = "%{public}s protocol %{public}s has invalid notify callback";
LABEL_127:
        v52 = v26;
        v53 = v27;
        v54 = 22;
        goto LABEL_128;
      }

      if (v58 == 1)
      {
        v42 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v43 = os_log_type_enabled(v26, type);
        if (v42)
        {
          if (v43)
          {
            v44 = *(v22 + 48);
            v45 = "invalid";
            if (v44)
            {
              v46 = *(v44 + 16);
              if (v46)
              {
                v45 = v46;
              }
            }

            *buf = 136446722;
            v61 = "nw_protocol_http3_stream_notify";
            v62 = 2082;
            v63 = v45;
            v64 = 2082;
            v65 = v42;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s protocol %{public}s has invalid notify callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v42);
          goto LABEL_129;
        }

        if (!v43)
        {
          goto LABEL_129;
        }

        v55 = *(v22 + 48);
        v56 = "invalid";
        if (v55)
        {
          v57 = *(v55 + 16);
          if (v57)
          {
            v56 = v57;
          }
        }

LABEL_126:
        *buf = 136446466;
        v61 = "nw_protocol_http3_stream_notify";
        v62 = 2082;
        v63 = v56;
        v21 = "%{public}s protocol %{public}s has invalid notify callback, no backtrace";
        goto LABEL_127;
      }

      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_129;
      }

      v49 = *(v22 + 48);
      v50 = "invalid";
      if (v49)
      {
        v51 = *(v49 + 16);
        if (v51)
        {
          v50 = v51;
        }
      }

LABEL_104:
      *buf = 136446466;
      v61 = "nw_protocol_http3_stream_notify";
      v62 = 2082;
      v63 = v50;
      v21 = "%{public}s protocol %{public}s has invalid notify callback, backtrace limit exceeded";
      goto LABEL_127;
    }

    if (a3 == 21)
    {
      return;
    }

    if (a3 != 16)
    {
      goto LABEL_25;
    }

    if (a4 && a5 == 1)
    {
      *(v5 + 732) = *(v5 + 732) & 0x7FFF | (*a4 << 15);
    }
  }

  else
  {
    if (a3 == 7)
    {
      return;
    }

    if (a3 != 13)
    {
      if (a3 == 15)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  v6 = *(v5 + 344);
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = *(v7 + 160);
      if (v8)
      {

        v8();
        return;
      }
    }

    v31 = *(v5 + 344);
    __nwlog_obj();
    v32 = v31;
    v33 = *(v31 + 16);
    if (!v33)
    {
      v33 = "invalid";
    }
  }

  else
  {
    v32 = 0;
    __nwlog_obj();
    v33 = "invalid";
  }

  *buf = 136446466;
  v61 = "nw_protocol_http3_stream_notify";
  v62 = 2082;
  v63 = v33;
  v18 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v58 = 0;
  if (!__nwlog_fault(v18, &type, &v58))
  {
    goto LABEL_129;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v26 = __nwlog_obj();
    v27 = type;
    if (!os_log_type_enabled(v26, type))
    {
      goto LABEL_129;
    }

    v29 = "invalid";
    if (v32 && *(v32 + 16))
    {
      v29 = *(v32 + 16);
    }

    goto LABEL_51;
  }

  if (v58 != 1)
  {
    v26 = __nwlog_obj();
    v27 = type;
    if (!os_log_type_enabled(v26, type))
    {
      goto LABEL_129;
    }

    v50 = "invalid";
    if (v32 && *(v32 + 16))
    {
      v50 = *(v32 + 16);
    }

    goto LABEL_104;
  }

  backtrace_string = __nw_create_backtrace_string();
  v26 = __nwlog_obj();
  v27 = type;
  v47 = os_log_type_enabled(v26, type);
  if (!backtrace_string)
  {
    if (!v47)
    {
      goto LABEL_129;
    }

    v56 = "invalid";
    if (v32 && *(v32 + 16))
    {
      v56 = *(v32 + 16);
    }

    goto LABEL_126;
  }

  if (v47)
  {
    v48 = "invalid";
    if (v32 && *(v32 + 16))
    {
      v48 = *(v32 + 16);
    }

    *buf = 136446722;
    v61 = "nw_protocol_http3_stream_notify";
    v62 = 2082;
    v63 = v48;
    v64 = 2082;
    v65 = backtrace_string;
    v36 = "%{public}s protocol %{public}s has invalid notify callback, dumping backtrace:%{public}s";
    v39 = v26;
    v40 = v27;
    v41 = 32;
    goto LABEL_91;
  }

LABEL_92:
  free(backtrace_string);
  if (v18)
  {
LABEL_130:
    free(v18);
  }
}

void nw_protocol_http3_notify(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http3_notify";
    v31 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v31, &type, &v41))
    {
      goto LABEL_109;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http3_notify";
      v34 = "%{public}s called with null protocol";
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = type;
      v36 = os_log_type_enabled(v32, type);
      if (backtrace_string)
      {
        if (v36)
        {
          *buf = 136446466;
          v44 = "nw_protocol_http3_notify";
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_109:
        if (!v31)
        {
          return;
        }

        goto LABEL_110;
      }

      if (!v36)
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http3_notify";
      v34 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http3_notify";
      v34 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_108;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http3_notify";
    v31 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v31, &type, &v41))
    {
      goto LABEL_109;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v41 != 1)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (!os_log_type_enabled(v32, type))
        {
          goto LABEL_109;
        }

        *buf = 136446210;
        v44 = "nw_protocol_http3_notify";
        v34 = "%{public}s called with null http3, backtrace limit exceeded";
        goto LABEL_108;
      }

      v37 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = type;
      v38 = os_log_type_enabled(v32, type);
      if (!v37)
      {
        if (!v38)
        {
          goto LABEL_109;
        }

        *buf = 136446210;
        v44 = "nw_protocol_http3_notify";
        v34 = "%{public}s called with null http3, no backtrace";
        goto LABEL_108;
      }

      if (v38)
      {
        *buf = 136446466;
        v44 = "nw_protocol_http3_notify";
        v45 = 2082;
        v46 = v37;
        v39 = "%{public}s called with null http3, dumping backtrace:%{public}s";
LABEL_93:
        _os_log_impl(&dword_181A37000, v32, v33, v39, buf, 0x16u);
      }

LABEL_94:
      free(v37);
      if (!v31)
      {
        return;
      }

LABEL_110:
      free(v31);
      return;
    }

    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_109;
    }

    *buf = 136446210;
    v44 = "nw_protocol_http3_notify";
    v34 = "%{public}s called with null http3";
LABEL_108:
    _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
    goto LABEL_109;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http3_notify";
    v31 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v31, &type, &v41))
    {
      goto LABEL_109;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http3_notify";
      v34 = "%{public}s called with null other_protocol";
      goto LABEL_108;
    }

    if (v41 != 1)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http3_notify";
      v34 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_108;
    }

    v37 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type;
    v40 = os_log_type_enabled(v32, type);
    if (!v37)
    {
      if (!v40)
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http3_notify";
      v34 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_108;
    }

    if (v40)
    {
      *buf = 136446466;
      v44 = "nw_protocol_http3_notify";
      v45 = 2082;
      v46 = v37;
      v39 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_93;
    }

    goto LABEL_94;
  }

  if (a3 <= 15)
  {
    if (a3 == 12)
    {
      if ((*(v5 + 1397) & 8) == 0)
      {
        nw_http3_async_close_connection_if_no_stream(*(a1 + 40));

        nw_http3_notify_do_not_reuse(v5);
      }

      return;
    }

    if (a3 != 13)
    {
      return;
    }

    if ((*(v5 + 1399) & 8) == 0 && *(v5 + 1256) && *(v5 + 1292))
    {
      v8 = a1;
      if ((*(v5 + 1399) & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v10 = *(v5 + 1304);
          *buf = 136446978;
          v44 = "nw_protocol_http3_notify";
          v45 = 2082;
          v46 = (v5 + 1313);
          v47 = 2080;
          v48 = " ";
          v49 = 1024;
          v50 = v10;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> increasing QUIC keepalive frequency due to data stall", buf, 0x26u);
        }
      }

      *(v5 + 1399) |= 8u;
      nw_quic_connection_set_keepalive(*(v5 + 1256), 2u);
      a1 = v8;
    }

    v11 = *(a1 + 32);
    if (!v11)
    {
      return;
    }

    v12 = *(v11 + 24);
    if (!v12)
    {
      return;
    }

    v13 = *(v12 + 160);
    if (!v13)
    {
      return;
    }

LABEL_61:
    v13();
    return;
  }

  if (a3 != 16)
  {
    if (a3 == 18)
    {
      if ((*(v5 + 1397) & 8) == 0 && a4 && a5 == 1)
      {
        if (*a4 == 1)
        {
          if ((*(v5 + 1399) & 0x20) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v21 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v22 = *(v5 + 1304);
              *buf = 136446978;
              v44 = "nw_protocol_http3_notify";
              v45 = 2082;
              v46 = (v5 + 1313);
              v47 = 2080;
              v48 = " ";
              v49 = 1024;
              v50 = v22;
              _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Path recovered from lower protocol, recommending that new flows join", buf, 0x26u);
            }
          }

          v23 = *(v5 + 1399) & 0xFB;
        }

        else
        {
          if ((*(v5 + 1399) & 0x20) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v29 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v30 = *(v5 + 1304);
              *buf = 136446978;
              v44 = "nw_protocol_http3_notify";
              v45 = 2082;
              v46 = (v5 + 1313);
              v47 = 2080;
              v48 = " ";
              v49 = 1024;
              v50 = v30;
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Bad path from lower protocol, recommending that new flows not join", buf, 0x26u);
            }
          }

          v23 = *(v5 + 1399) | 4;
        }

        *(v5 + 1399) = v23;
      }
    }

    else if (a3 == 22)
    {
      if ((*(v5 + 1399) & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v7 = *(v5 + 1304);
          *buf = 136446978;
          v44 = "nw_protocol_http3_notify";
          v45 = 2082;
          v46 = (v5 + 1313);
          v47 = 2080;
          v48 = " ";
          v49 = 1024;
          v50 = v7;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> restart received, assuming connection closed", buf, 0x26u);
        }
      }

      *(v5 + 1397) |= 8u;
      nw_http3_teardown_uni_streams(v5);
      *(v5 + 1397) &= ~0x800u;
    }

    return;
  }

  if (!a4 || a5 != 1)
  {
    goto LABEL_58;
  }

  if (*a4 != 1)
  {
    v24 = *(v5 + 1399);
    if ((v24 & 0x10) != 0)
    {
      *(v5 + 1399) = v24 & 0xEF;
      if (*(v5 + 1256))
      {
        if (*(v5 + 1292) == 2)
        {
          v16 = a1;
          v17 = (v5 + 1256);
          if ((v24 & 0x20) == 0)
          {
            v25 = __nwlog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = *(v5 + 1304);
              *buf = 136446978;
              v44 = "nw_protocol_http3_notify";
              v45 = 2082;
              v46 = (v5 + 1313);
              v47 = 2080;
              v48 = " ";
              v49 = 1024;
              v50 = v26;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> re-enabling QUIC keepalives due to connection reuse", buf, 0x26u);
            }
          }

          v20 = -1;
          goto LABEL_57;
        }
      }
    }

LABEL_58:
    v27 = *(a1 + 32);
    if (!v27)
    {
      return;
    }

    v28 = *(v27 + 24);
    if (!v28)
    {
      return;
    }

    v13 = *(v28 + 160);
    if (!v13)
    {
      return;
    }

    goto LABEL_61;
  }

  v14 = *(v5 + 888);
  if (!v14)
  {
LABEL_31:
    v15 = *(v5 + 1399);
    if ((v15 & 0x10) == 0)
    {
      *(v5 + 1399) = v15 | 0x10;
      if (*(v5 + 1256))
      {
        if (*(v5 + 1292) == 2)
        {
          v16 = a1;
          v17 = (v5 + 1256);
          if ((v15 & 0x20) == 0)
          {
            v18 = __nwlog_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = *(v5 + 1304);
              *buf = 136446978;
              v44 = "nw_protocol_http3_notify";
              v45 = 2082;
              v46 = (v5 + 1313);
              v47 = 2080;
              v48 = " ";
              v49 = 1024;
              v50 = v19;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> disabling QUIC keepalives due to idleness", buf, 0x26u);
            }
          }

          v20 = 0;
LABEL_57:
          nw_quic_connection_set_keepalive(*v17, v20);
          a1 = v16;
          goto LABEL_58;
        }
      }
    }

    goto LABEL_58;
  }

  while (*(v14 + 732) < 0)
  {
    v14 = *(v14 + 536);
    if (!v14)
    {
      goto LABEL_31;
    }
  }
}

uint64_t sub_181D8D450(NSObject *a1, uint64_t a2, void (*a3)(void))
{

  swift_unknownObjectRetain();
  result = sub_181D8D4D4(a2, a1);
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_181D8D4D4(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = nw_connection_copy_endpoint(a2);
  sub_181B80998(v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    swift_unknownObjectRelease();
    sub_181F49A88(v6, &qword_1EA839360);
    return 0;
  }

  else
  {
    sub_181D8DDC0(v6, v13, type metadata accessor for NWEndpoint);
    sub_181D8E320(v13, v10, type metadata accessor for NWEndpoint);
    type metadata accessor for NWConnection(0);
    swift_allocObject();
    v16 = sub_181D4653C(v10, a1, a2);

    swift_unknownObjectRelease();
    sub_181D8E448(v13, type metadata accessor for NWEndpoint);
    return v16;
  }
}

nw_endpoint_t nw_connection_copy_endpoint(nw_connection_t connection)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_copy_endpoint";
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
        v16 = "nw_connection_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          v16 = "nw_connection_copy_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

id nw_endpoint_flow_copy_connected_socket_wrapper(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 220);
    if ((v2[8]._os_unfair_lock_opaque & 2) != 0 || (v2[8]._os_unfair_lock_opaque & 0x100) != 0)
    {
      v4 = *&v2[222]._os_unfair_lock_opaque;
    }

    else
    {
      v3 = *&v2[234]._os_unfair_lock_opaque;
      if (!v3)
      {
        v5 = 0;
        goto LABEL_8;
      }

      v4 = nw_endpoint_handler_copy_connected_socket_wrapper(v3);
    }

    v5 = v4;
LABEL_8:
    os_unfair_lock_unlock(v2 + 220);
    goto LABEL_9;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_flow_copy_connected_socket_wrapper";
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
        v18 = "nw_endpoint_flow_copy_connected_socket_wrapper";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint_flow", buf, 0xCu);
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
          v18 = "nw_endpoint_flow_copy_connected_socket_wrapper";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_copy_connected_socket_wrapper";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_copy_connected_socket_wrapper";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t sub_181D8DC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8DCF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8DD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8DDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void nw_connection_receive_with_context(void *a1, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  if (v10)
  {
    nw_connection_receive_internal(v9, v10, a3, a4, v11);
    goto LABEL_3;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_connection_receive_with_context";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_receive_with_context";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null message", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_connection_receive_with_context";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_connection_receive_with_context";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_receive_with_context";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v13)
  {
    free(v13);
  }

LABEL_3:
}

uint64_t sub_181D8E118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8E180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8E1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8E250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8E320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181D8E388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181D8E3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181D8E448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181D8E4A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181D8E508@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *a1;
  sub_181AA39C0(v6);
  result = sub_181A554F4(v7);
  *a1 = v6;
  *(a1 + 8) = v5;
  *a2 = *(a1 + 77);
  return result;
}

uint64_t __nw_endpoint_handler_add_read_request_block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (!object)
  {
    return 1;
  }

  v4 = object;
  if ((*(object + 332) & 0x20) == 0)
  {
    return 1;
  }

  if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
      v8 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
      v9 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
      v10 = v9;
      if (v9)
      {
        logging_description = _nw_endpoint_get_logging_description(v9);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v12 = nw_endpoint_handler_state_string(*(a1 + 32));
      v13 = nw_endpoint_handler_mode_string(*(a1 + 32));
      v14 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
      v15 = *(a1 + 40);
      v16 = 136448258;
      v17 = "nw_endpoint_handler_add_read_request_block_invoke";
      v18 = 2082;
      v19 = id_string;
      v20 = 2082;
      v21 = v8;
      v22 = 2082;
      v23 = logging_description;
      v24 = 2082;
      v25 = v12;
      v26 = 2082;
      v27 = v13;
      v28 = 2114;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      v32 = 2048;
      v33 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding new flow read request %@ to %p", &v16, 0x5Cu);
    }
  }

  *(v4 + 332) &= ~0x20u;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  *(*(*(a1 + 64) + 8) + 24) = nw_flow_add_read_request(*(a1 + 32), v4, *(a1 + 40));
  nw_flow_service_reads(*(a1 + 32), *(a1 + 48), v4, 0);
  return 0;
}

void sub_181D8E804(uint32_t a1, uint32_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(v7 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v17[4] = a6;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_181D478F8;
  v17[3] = a7;
  v16 = _Block_copy(v17);

  nw_connection_receive(v14, a1, a2, v16);
  _Block_release(v16);
}

uint64_t nw_protocol_implementation_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v133 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v13 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v14 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        v15 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v122) = 0;
        if (__nwlog_fault(v15, type, &v122))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v16 = __nwlog_obj();
            v17 = type[0];
            if (os_log_type_enabled(v16, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_input_frames";
              _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v122 == 1)
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
                *&buf[4] = "nw_protocol_implementation_get_input_frames";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v15)
              {
                goto LABEL_70;
              }

              goto LABEL_69;
            }

            if (v28)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_input_frames";
              _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v16 = __nwlog_obj();
            v51 = type[0];
            if (os_log_type_enabled(v16, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_input_frames";
              _os_log_impl(&dword_181A37000, v16, v51, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v15)
        {
LABEL_70:
          v53 = 0;
          v54 = 0;
LABEL_206:

          return v54;
        }

LABEL_69:
        free(v15);
        goto LABEL_70;
      }

      v13 = *a1[1].flow_id;
    }

    v107 = &v13[1].output_handler;
    v18 = v13[1].handle;
    if (v18)
    {
      if (v18[10])
      {
        v19 = BYTE4(v13[7].output_handler_context);
        if ((v19 & 0x40) != 0)
        {
          BYTE4(v13[7].output_handler_context) = v19 & 0xBF;
          nw_protocol_implementation_read(v107, a1->output_handler);
          v19 = BYTE4(v13[7].output_handler_context);
        }

        BYTE4(v13[7].output_handler_context) = v19 | 0x20;
        v20 = a1->handle;
        v21 = a1;
        if (v20 != &nw_protocol_ref_counted_handle)
        {
          if (v20 != &nw_protocol_ref_counted_additional_handle)
          {
            v22 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_service_input_frames";
            v23 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v122) = 0;
            if (__nwlog_fault(v23, type, &v122))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v24 = __nwlog_obj();
                v25 = type[0];
                if (os_log_type_enabled(v24, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_implementation_service_input_frames";
                  _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null instance", buf, 0xCu);
                }
              }

              else if (v122 == 1)
              {
                v48 = __nw_create_backtrace_string();
                v24 = __nwlog_obj();
                v49 = type[0];
                v50 = os_log_type_enabled(v24, type[0]);
                if (v48)
                {
                  if (v50)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_protocol_implementation_service_input_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v48;
                    _os_log_impl(&dword_181A37000, v24, v49, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v48);
                  if (!v23)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_77;
                }

                if (v50)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_implementation_service_input_frames";
                  _os_log_impl(&dword_181A37000, v24, v49, "%{public}s called with null instance, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v24 = __nwlog_obj();
                v52 = type[0];
                if (os_log_type_enabled(v24, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_implementation_service_input_frames";
                  _os_log_impl(&dword_181A37000, v24, v52, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

            if (!v23)
            {
LABEL_78:
              v30 = 0;
              v54 = 0;
LABEL_204:

              goto LABEL_205;
            }

LABEL_77:
            free(v23);
            goto LABEL_78;
          }

          v21 = *a1[1].flow_id;
        }

        v29 = &v21[1].output_handler;
        v30 = v29;
        v31 = v21[1].handle;
        if (v31)
        {
          if (v31[10])
          {
            v122 = 0;
            v123 = &v122;
            v124 = 0x2020000000;
            v125 = 0;
            if (*(v21[1].handle + 16) != 3)
            {
              callbacks = v21[4].callbacks;
              if (callbacks)
              {
                handle_high = HIDWORD(v21[4].handle);
                if (handle_high >= a3)
                {
                  p_callbacks = &v21[4].callbacks;
                  if (handle_high <= a4 && (v43 = v21[4].handle, v43 <= a5))
                  {
                    tqh_last = a6->tqh_last;
                    *tqh_last = callbacks;
                    v21[4].callbacks->connected = tqh_last;
                    a6->tqh_last = v21[4].output_handler;
                    v21[4].callbacks = 0;
                    v21[4].output_handler = p_callbacks;
                    *(v123 + 6) = v43;
                    v21[4].handle = 0;
                  }

                  else
                  {
                    *type = 0;
                    v109 = type;
                    v110 = 0x2020000000;
                    LODWORD(v111) = a5;
                    v118 = 0;
                    v119 = &v118;
                    v120 = 0x2020000000;
                    v121 = a4;
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = ___ZL47nw_protocol_implementation_service_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_277;
                    v127 = &unk_1E6A2D070;
                    *(&v128 + 1) = type;
                    v129 = &v118;
                    v131 = a1;
                    v44 = v29;
                    *&v128 = v29;
                    v130 = &v122;
                    v132 = a6;
                    v45 = *p_callbacks;
                    do
                    {
                      if (!v45)
                      {
                        break;
                      }

                      disconnect = v45->disconnect;
                      v47 = (*&buf[16])(buf);
                      v45 = disconnect;
                    }

                    while ((v47 & 1) != 0);

                    v30 = v44;
                    _Block_object_dispose(&v118, 8);
                    _Block_object_dispose(type, 8);
                  }

                  goto LABEL_89;
                }
              }

LABEL_202:
              v54 = 0;
              goto LABEL_203;
            }

            if (a2)
            {
              output_handler_context = a2->output_handler_context;
              if (output_handler_context)
              {
                if ((*(output_handler_context + 42) & 2) == 0)
                {
                  BYTE2(v21[7].output_handler_context) |= 0x10u;
                }

                v34 = (output_handler_context + 48);
                v33 = *(output_handler_context + 6);
                if (!v33)
                {
                  goto LABEL_202;
                }

                v106 = v29;
                v118 = 0;
                v119 = &v118;
                v120 = 0x2020000000;
                v121 = a5;
                v116[0] = 0;
                v116[1] = v116;
                v116[2] = 0x2020000000;
                v117 = a4;
                *type = MEMORY[0x1E69E9820];
                v109 = 3221225472;
                v110 = ___ZL47nw_protocol_implementation_service_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
                v111 = &unk_1E6A2D020;
                v112 = &v118;
                v113 = &v122;
                v114 = output_handler_context + 32;
                v115 = a6;
                do
                {
                  if (!v33)
                  {
                    break;
                  }

                  v35 = *(v33 + 32);
                  v36 = (v110)(type);
                  v33 = v35;
                }

                while ((v36 & 1) != 0);
                v37 = *(output_handler_context + 17);
                if (v37 < a3)
                {
                  if ((SBYTE5(v21[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                  {
                    v38 = __nwlog_obj();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      v39 = *(output_handler_context + 17);
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_implementation_service_input_frames";
                      *&buf[12] = 2082;
                      *&buf[14] = v21 + 511;
                      *&buf[22] = 2080;
                      v127 = " ";
                      LOWORD(v128) = 1024;
                      *(&v128 + 2) = v39;
                      WORD3(v128) = 1024;
                      DWORD2(v128) = a3;
                      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPending inbound bytes %u < minimum bytes %u", buf, 0x2Cu);
                    }
                  }

                  goto LABEL_88;
                }

                if (v37 <= a4)
                {
                  v56 = *(output_handler_context + 16);
                  v55 = *(output_handler_context + 6);
                  if (v56 <= a5)
                  {
                    if (v55)
                    {
                      v60 = a6->tqh_last;
                      *v60 = v55;
                      *(*(output_handler_context + 6) + 40) = v60;
                      a6->tqh_last = *(output_handler_context + 7);
                      *(output_handler_context + 6) = 0;
                      *(output_handler_context + 7) = v34;
                    }

                    *(v123 + 6) = v56;
                    *(output_handler_context + 8) = 0;
LABEL_88:
                    _Block_object_dispose(v116, 8);
                    _Block_object_dispose(&v118, 8);
                    v30 = v106;
                    if (v37 >= a3)
                    {
LABEL_89:
                      v54 = *(v123 + 6);
LABEL_203:
                      _Block_object_dispose(&v122, 8);
                      goto LABEL_204;
                    }

                    goto LABEL_202;
                  }
                }

                else
                {
                  v55 = *v34;
                }

                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL47nw_protocol_implementation_service_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_276;
                v127 = &unk_1E6A2D048;
                *&v128 = &v118;
                *(&v128 + 1) = v116;
                v129 = &v122;
                v130 = a1;
                v131 = (output_handler_context + 32);
                v132 = a6;
                do
                {
                  if (!v55)
                  {
                    break;
                  }

                  v57 = *(v55 + 32);
                  v58 = (*&buf[16])(buf);
                  v55 = v57;
                }

                while ((v58 & 1) != 0);
                goto LABEL_88;
              }

LABEL_198:
              if ((SBYTE5(v21[7].output_handler_context) & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v104 = gLogObj;
                if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_service_input_frames";
                  *&buf[12] = 2082;
                  *&buf[14] = v21 + 511;
                  *&buf[22] = 2080;
                  v127 = " ";
                  LOWORD(v128) = 2048;
                  *(&v128 + 2) = a2;
                  _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
                }
              }

              goto LABEL_202;
            }

            v90 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_output_handler_context";
            v91 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v118) = 0;
            if (__nwlog_fault(v91, type, &v118))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v92 = __nwlog_obj();
                v93 = type[0];
                if (os_log_type_enabled(v92, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_get_output_handler_context";
                  _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null protocol", buf, 0xCu);
                }
              }

              else if (v118 == 1)
              {
                v100 = __nw_create_backtrace_string();
                v92 = __nwlog_obj();
                v101 = type[0];
                v102 = os_log_type_enabled(v92, type[0]);
                if (v100)
                {
                  if (v102)
                  {
                    *buf = 136446466;
                    *&buf[4] = "__nw_protocol_get_output_handler_context";
                    *&buf[12] = 2082;
                    *&buf[14] = v100;
                    _os_log_impl(&dword_181A37000, v92, v101, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v100);
                  goto LABEL_196;
                }

                if (v102)
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_get_output_handler_context";
                  _os_log_impl(&dword_181A37000, v92, v101, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v92 = __nwlog_obj();
                v103 = type[0];
                if (os_log_type_enabled(v92, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_get_output_handler_context";
                  _os_log_impl(&dword_181A37000, v92, v103, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_196:
            if (v91)
            {
              free(v91);
            }

            goto LABEL_198;
          }

          v78 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_service_input_frames";
          v75 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v122) = 0;
          if (__nwlog_fault(v75, type, &v122))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v76 = __nwlog_obj();
              v79 = type[0];
              if (os_log_type_enabled(v76, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_implementation_service_input_frames";
                _os_log_impl(&dword_181A37000, v76, v79, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
              }

LABEL_189:

              goto LABEL_190;
            }

            if (v122 != 1)
            {
              v76 = __nwlog_obj();
              v99 = type[0];
              if (os_log_type_enabled(v76, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_implementation_service_input_frames";
                _os_log_impl(&dword_181A37000, v76, v99, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_189;
            }

            v87 = __nw_create_backtrace_string();
            v76 = __nwlog_obj();
            v94 = type[0];
            v95 = os_log_type_enabled(v76, type[0]);
            if (!v87)
            {
              if (v95)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_implementation_service_input_frames";
                _os_log_impl(&dword_181A37000, v76, v94, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
              }

              goto LABEL_189;
            }

            if (v95)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_implementation_service_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v87;
              _os_log_impl(&dword_181A37000, v76, v94, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_148;
          }
        }

        else
        {
          v74 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_service_input_frames";
          v75 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v122) = 0;
          if (__nwlog_fault(v75, type, &v122))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v76 = __nwlog_obj();
              v77 = type[0];
              if (os_log_type_enabled(v76, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_implementation_service_input_frames";
                _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null instance->parent_definition", buf, 0xCu);
              }

              goto LABEL_189;
            }

            if (v122 != 1)
            {
              v76 = __nwlog_obj();
              v98 = type[0];
              if (os_log_type_enabled(v76, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_implementation_service_input_frames";
                _os_log_impl(&dword_181A37000, v76, v98, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_189;
            }

            v87 = __nw_create_backtrace_string();
            v76 = __nwlog_obj();
            v88 = type[0];
            v89 = os_log_type_enabled(v76, type[0]);
            if (!v87)
            {
              if (v89)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_implementation_service_input_frames";
                _os_log_impl(&dword_181A37000, v76, v88, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
              }

              goto LABEL_189;
            }

            if (v89)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_implementation_service_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v87;
              _os_log_impl(&dword_181A37000, v76, v88, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

LABEL_148:

            free(v87);
          }
        }

LABEL_190:
        if (v75)
        {
          free(v75);
        }

        v54 = 0;
        goto LABEL_204;
      }

      v69 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_get_input_frames";
      v66 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v122) = 0;
      if (__nwlog_fault(v66, type, &v122))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v67 = __nwlog_obj();
          v70 = type[0];
          if (os_log_type_enabled(v67, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_input_frames";
            _os_log_impl(&dword_181A37000, v67, v70, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }
        }

        else if (v122 == 1)
        {
          v83 = __nw_create_backtrace_string();
          v67 = __nwlog_obj();
          v84 = type[0];
          v85 = os_log_type_enabled(v67, type[0]);
          if (v83)
          {
            if (v85)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_implementation_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v83;
              _os_log_impl(&dword_181A37000, v67, v84, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v83);
            if (!v66)
            {
              goto LABEL_180;
            }

            goto LABEL_179;
          }

          if (v85)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_input_frames";
            _os_log_impl(&dword_181A37000, v67, v84, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v67 = __nwlog_obj();
          v97 = type[0];
          if (os_log_type_enabled(v67, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_input_frames";
            _os_log_impl(&dword_181A37000, v67, v97, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_177;
      }

LABEL_178:
      if (!v66)
      {
LABEL_180:
        v54 = 0;
LABEL_205:
        v53 = v107;
        goto LABEL_206;
      }

LABEL_179:
      free(v66);
      goto LABEL_180;
    }

    v65 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_get_input_frames";
    v66 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v122) = 0;
    if (!__nwlog_fault(v66, type, &v122))
    {
      goto LABEL_178;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (os_log_type_enabled(v67, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v122 == 1)
    {
      v80 = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v81 = type[0];
      v82 = os_log_type_enabled(v67, type[0]);
      if (v80)
      {
        if (v82)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v80;
          _os_log_impl(&dword_181A37000, v67, v81, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        goto LABEL_178;
      }

      if (v82)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        _os_log_impl(&dword_181A37000, v67, v81, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v67 = __nwlog_obj();
      v96 = type[0];
      if (os_log_type_enabled(v67, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        _os_log_impl(&dword_181A37000, v67, v96, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_177:

    goto LABEL_178;
  }

  v61 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_get_input_frames";
  v62 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v122) = 0;
  if (__nwlog_fault(v62, type, &v122))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v63, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v122 == 1)
    {
      v71 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v72 = type[0];
      v73 = os_log_type_enabled(v63, type[0]);
      if (v71)
      {
        if (v73)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          _os_log_impl(&dword_181A37000, v63, v72, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v71);
        goto LABEL_158;
      }

      if (v73)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        _os_log_impl(&dword_181A37000, v63, v72, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v63 = __nwlog_obj();
      v86 = type[0];
      if (os_log_type_enabled(v63, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_input_frames";
        _os_log_impl(&dword_181A37000, v63, v86, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_158:
  if (v62)
  {
    free(v62);
  }

  return 0;
}

uint64_t ___ZL47nw_protocol_implementation_service_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[4] + 8) + 24) && !nw_frame_unclaimed_length(v3))
  {
    v6 = v4 + 4;
    v7 = v4[4];
    v8 = (a1[6] + 24);
    v9 = v4[5];
    if (v7)
    {
      v8 = (v7 + 40);
    }

    *v8 = v9;
    *v9 = v7;
    v4[5] = 0;
    *v6 = 0;
    --*(*(a1[4] + 8) + 24);
    v10 = a1[7];
    --*(a1[6] + 32);
    ++*(*(a1[5] + 8) + 24);
    *v6 = 0;
    v11 = *(v10 + 8);
    v4[5] = v11;
    *v11 = v4;
    *(v10 + 8) = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_181D900AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(a1 + 77) = 1;
  v4 = *(a1 + 64);
  v5 = v3;

  *(a1 + 64) = v3;
}

void sub_181D900F8(uint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(int *))
{
  v7 = *(a3 + 24);
  os_unfair_lock_lock((v7 + 96));
  swift_unknownObjectRetain();
  sub_181D9026C(a1, a2, &v18);
  v8 = v18;
  v9 = v18 | (v19 << 32);
  *(v7 + 92) = v19;
  *(v7 + 88) = v8;
  if (v9 >= 0x8000000003 && (nw_utilities_minos_atleast(1) & 1) != 0)
  {
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_181A554F4(v10);
    v11 = *(v7 + 32);
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    sub_181A554F4(v11);
    v12 = *(v7 + 48);
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    sub_181A554F4(v12);
    v13 = *(v7 + 64);
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    sub_181A554F4(v13);
  }

  v14 = *(v7 + 92);
  v15 = *(v7 + 88);
  os_unfair_lock_unlock((v7 + 96));
  if (a4)
  {
    v16 = v15;
    v17 = (v15 | (v14 << 32)) >> 32;
    a4(&v16);
  }
}

uint64_t sub_181D901F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_181D9026C@<X0>(uint64_t result@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        result = swift_unknownObjectRelease();
        v4 = 0x8000000001;
        goto LABEL_17;
      case 3:
        result = swift_unknownObjectRelease();
        v4 = 0x8000000002;
        goto LABEL_17;
      case 4:
        if (a2)
        {
          result = NWError.init(_:)(a2, &v7);
          v4 = v7 | (v8 << 32) | 0x4000000000;
        }

        else
        {
          v4 = 0x4000000016;
        }

        goto LABEL_17;
    }

LABEL_14:
    result = swift_unknownObjectRelease();
    v4 = 0x8000000003;
    goto LABEL_17;
  }

  if (!result)
  {
    result = swift_unknownObjectRelease();
    v4 = 0x8000000000;
    goto LABEL_17;
  }

  if (result != 1)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    result = NWError.init(_:)(a2, &v5);
    v4 = v5 | (v6 << 32);
  }

  else
  {
    v4 = 50;
  }

LABEL_17:
  *a3 = v4;
  *(a3 + 4) = BYTE4(v4);
  return result;
}

uint64_t ___ZL34nw_protocol_http3_stream_connectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (nw_protocol_metadata_is_quic_stream(a3))
  {
    if (a3)
    {
      v5 = os_retain(a3);
    }

    else
    {
      v5 = 0;
    }

    *(*(a1 + 40) + 424) = v5;
    *(*(a1 + 40) + 240) = nw_quic_stream_get_id(a3);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t nw_quic_stream_get_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    id = _nw_quic_stream_get_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_id";
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
        v14 = "nw_quic_stream_get_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_get_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

  id = 0;
LABEL_3:

  return id;
}

uint64_t _nw_quic_stream_get_stream_idTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = a4(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  swift_beginAccess();
  v8 = *(v7 + 64);

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);

  return v9;
}

void nw_endpoint_flow_reset_expected_progress_target(void *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_endpoint_handler_get_mode";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (__nwlog_fault(v48, &type, &v81))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v84 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v81 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v52 = type;
        v53 = os_log_type_enabled(v49, type);
        if (backtrace_string)
        {
          if (v53)
          {
            *buf = 136446466;
            v84 = "nw_endpoint_handler_get_mode";
            v85 = 2082;
            v86 = backtrace_string;
            _os_log_impl(&dword_181A37000, v49, v52, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_75;
        }

        if (v53)
        {
          *buf = 136446210;
          v84 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v49, v52, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v84 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v49, v59, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_75:
    if (v48)
    {
      free(v48);
    }

    mode = 0;
    goto LABEL_78;
  }

  mode = v5->mode;

  if (mode == 2)
  {
    v8 = nw_endpoint_handler_copy_flow(v6);
    v9 = v8;
    if ((*(v8 + 32) & 2) == 0)
    {
      os_unfair_lock_lock(v8 + 220);
      v10 = *(v9 + 117);
      if (v10)
      {
        v11 = v10;
        v12 = v11;
        v13 = v11[29];
        if (v13 == 4)
        {
          nw_endpoint_fallback_reset_expected_progress_target(v11, a2);
        }

        else if (v13 == 2)
        {
          nw_endpoint_flow_reset_expected_progress_target(v11, a2, a3);
        }
      }

      v25 = *(v9 + 116);
      if (v25)
      {
        v26 = v25;
        v27 = v26;
        v28 = v26[29];
        if (v28 == 4)
        {
          nw_endpoint_fallback_reset_expected_progress_target(v26, a2);
        }

        else if (v28 == 2)
        {
          nw_endpoint_flow_reset_expected_progress_target(v26, a2, a3);
        }
      }

      os_unfair_lock_unlock(v9 + 220);
LABEL_53:

      goto LABEL_112;
    }

    v14 = v6;
    v15 = *(v14 + 284);

    if ((v15 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v14))
      {
        goto LABEL_47;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v79 = a3;
        id_string = nw_endpoint_handler_get_id_string(v14);
        v75 = nw_endpoint_handler_dry_run_string(v14);
        v54 = nw_endpoint_handler_copy_endpoint(v14);
        logging_description = nw_endpoint_get_logging_description(v54);
        v56 = nw_endpoint_handler_state_string(v14);
        v57 = nw_endpoint_handler_mode_string(v14);
        v58 = nw_endpoint_handler_copy_current_path(v14);
        *buf = 136448002;
        v84 = "nw_endpoint_flow_reset_expected_progress_target";
        v85 = 2082;
        v86 = id_string;
        v87 = 2082;
        v88 = v75;
        v89 = 2082;
        v90 = logging_description;
        v91 = 2082;
        v92 = v56;
        v93 = 2082;
        v94 = v57;
        v95 = 2114;
        v96 = v58;
        v97 = 2048;
        v98 = a2;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Resetting progress target to %llu", buf, 0x52u);

        a3 = v79;
      }

      goto LABEL_46;
    }

    v16 = v14;
    v17 = *(v14 + 284);

    if ((v17 & 0x40) != 0)
    {
LABEL_47:
      *(v9 + 34) = *(v9 + 34) & 0xEF | (16 * (a2 != 0));
      *(v9 + 1080) = *a3;
      v40 = *(v9 + 1);
      if (v40)
      {
        v41 = v40;
        v42 = _nw_path_copy_endpoint(v41);

        v43 = nw_path_copy_parameters(*(v9 + 1));
        nw_connection_report_symptom_internal_on_nw_queue(421898, v42, v43, *(v9 + 1), a2, a3, 0, 0, 0, 0);
      }

      if (*(v9 + 111))
      {
        if (*(v9 + 33) < 0)
        {
          v44 = v14;
          v45 = v44->state == 3;

          if (v45)
          {
            v46 = *(v9 + 111);
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 3221225472;
            v80[2] = __nw_endpoint_flow_reset_expected_progress_target_block_invoke;
            v80[3] = &__block_descriptor_40_e8_B12__0i8l;
            v80[4] = a2;
            nw_fd_wrapper_get_fd(v46, v80);
          }
        }
      }

      goto LABEL_53;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v18 = gconnectionLogObj;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_46:

      goto LABEL_47;
    }

    v19 = v16;

    v20 = v19;
    v21 = *(v14 + 284);

    if (v21)
    {
      v22 = "dry-run ";
    }

    else
    {
      v22 = "";
    }

    v23 = nw_endpoint_handler_copy_endpoint(v20);
    v24 = v23;
    if (v23)
    {
      v76 = _nw_endpoint_get_logging_description(v23);
    }

    else
    {
      v76 = "<NULL>";
    }

    v78 = a3;
    v73 = v19 + 184;

    v29 = v20;
    v30 = v29;
    v31 = v29[30];
    if (v31 > 5)
    {
      v32 = "unknown-state";
    }

    else
    {
      v32 = off_1E6A31048[v31];
    }

    v33 = v30;
    v34 = v33;
    v35 = v6->mode;
    v74 = v18;
    if (v35 > 2)
    {
      switch(v35)
      {
        case 3:
          v36 = v22;
          v37 = "proxy";
          goto LABEL_45;
        case 4:
          v36 = v22;
          v37 = "fallback";
          goto LABEL_45;
        case 5:
          v36 = v22;
          v37 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v35)
      {
        case 0:
          v36 = v22;
          v37 = "path";
          goto LABEL_45;
        case 1:
          v36 = v22;
          v37 = "resolver";
          goto LABEL_45;
        case 2:
          v36 = v22;
          v37 = nw_endpoint_flow_mode_string(v33[33]);
LABEL_45:

          v38 = v34;
          os_unfair_lock_lock(v38 + 28);
          v39 = v38[8];
          os_unfair_lock_unlock(v38 + 28);

          *buf = 136448002;
          v84 = "nw_endpoint_flow_reset_expected_progress_target";
          v85 = 2082;
          v86 = v73;
          v87 = 2082;
          v88 = v36;
          v89 = 2082;
          v18 = v74;
          v90 = v76;
          v91 = 2082;
          v92 = v32;
          v93 = 2082;
          v94 = v37;
          v95 = 2114;
          v96 = v39;
          v97 = 2048;
          v98 = a2;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Resetting progress target to %llu", buf, 0x52u);

          a3 = v78;
          goto LABEL_46;
      }
    }

    v36 = v22;
    v37 = "unknown-mode";
    goto LABEL_45;
  }

LABEL_78:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v60 = gLogObj;
  if (mode > 5)
  {
    v61 = "unknown-mode";
  }

  else
  {
    v61 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v84 = "nw_endpoint_flow_reset_expected_progress_target";
  v85 = 2082;
  v86 = v61;
  v87 = 2082;
  v88 = "flow";
  v62 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v81 = 0;
  if (!__nwlog_fault(v62, &type, &v81))
  {
LABEL_110:
    if (!v62)
    {
      goto LABEL_112;
    }

LABEL_111:
    free(v62);
    goto LABEL_112;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v63 = gLogObj;
    v64 = type;
    if (os_log_type_enabled(v63, type))
    {
      if (mode > 5)
      {
        v65 = "unknown-mode";
      }

      else
      {
        v65 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v84 = "nw_endpoint_flow_reset_expected_progress_target";
      v85 = 2082;
      v86 = v65;
      v87 = 2082;
      v88 = "flow";
      _os_log_impl(&dword_181A37000, v63, v64, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_109:

    goto LABEL_110;
  }

  if (v81 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v63 = gLogObj;
    v70 = type;
    if (os_log_type_enabled(v63, type))
    {
      if (mode > 5)
      {
        v71 = "unknown-mode";
      }

      else
      {
        v71 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v84 = "nw_endpoint_flow_reset_expected_progress_target";
      v85 = 2082;
      v86 = v71;
      v87 = 2082;
      v88 = "flow";
      _os_log_impl(&dword_181A37000, v63, v70, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_109;
  }

  v66 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v63 = gLogObj;
  v67 = type;
  v68 = os_log_type_enabled(v63, type);
  if (!v66)
  {
    if (v68)
    {
      if (mode > 5)
      {
        v72 = "unknown-mode";
      }

      else
      {
        v72 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v84 = "nw_endpoint_flow_reset_expected_progress_target";
      v85 = 2082;
      v86 = v72;
      v87 = 2082;
      v88 = "flow";
      _os_log_impl(&dword_181A37000, v63, v67, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_109;
  }

  if (v68)
  {
    if (mode > 5)
    {
      v69 = "unknown-mode";
    }

    else
    {
      v69 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v84 = "nw_endpoint_flow_reset_expected_progress_target";
    v85 = 2082;
    v86 = v69;
    v87 = 2082;
    v88 = "flow";
    v89 = 2082;
    v90 = v66;
    _os_log_impl(&dword_181A37000, v63, v67, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v66);
  if (v62)
  {
    goto LABEL_111;
  }

LABEL_112:
}

void nw_http_transaction_metadata_set_stream_id(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_transaction_metadata_set_stream_id";
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
        v22 = "nw_http_transaction_metadata_set_stream_id";
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
          v22 = "nw_http_transaction_metadata_set_stream_id";
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
        v22 = "nw_http_transaction_metadata_set_stream_id";
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
        v22 = "nw_http_transaction_metadata_set_stream_id";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_set_stream_id_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
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
  v22 = "nw_http_transaction_metadata_set_stream_id";
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
      v22 = "nw_http_transaction_metadata_set_stream_id";
      v9 = "%{public}s metadata must be http_transaction";
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
      v22 = "nw_http_transaction_metadata_set_stream_id";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
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
      v22 = "nw_http_transaction_metadata_set_stream_id";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_transaction_metadata_set_stream_id";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http3_framer_claim_http3_frame_header(unsigned int a1, _DWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if (v4 < a1)
  {
    v5 = v4;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v19 = "nw_http3_framer_claim_http3_frame_header";
    v20 = 1024;
    v21 = v5;
    v22 = 1024;
    v23 = a1;
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &type, &v16))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446722;
      v19 = "nw_http3_framer_claim_http3_frame_header";
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = a1;
      v9 = "%{public}s Expected unclaimed_frame_length (%u) to be >= to length_to_claim (%u)";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v15 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446978;
          v19 = "nw_http3_framer_claim_http3_frame_header";
          v20 = 1024;
          v21 = v5;
          v22 = 1024;
          v23 = a1;
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Expected unclaimed_frame_length (%u) to be >= to length_to_claim (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v15)
      {
LABEL_22:
        if (v6)
        {
          free(v6);
        }

        return;
      }

      *buf = 136446722;
      v19 = "nw_http3_framer_claim_http3_frame_header";
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = a1;
      v9 = "%{public}s Expected unclaimed_frame_length (%u) to be >= to length_to_claim (%u), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446722;
      v19 = "nw_http3_framer_claim_http3_frame_header";
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = a1;
      v9 = "%{public}s Expected unclaimed_frame_length (%u) to be >= to length_to_claim (%u), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x18u);
    goto LABEL_22;
  }

  if (nw_frame_uses_external_data(a2))
  {
    v11 = a2;
    v12 = 0;
    v13 = a1;
  }

  else
  {
    v11 = a2;
    v12 = a1;
    v13 = 0;
  }

  nw_frame_claim(v11, v10, v12, v13);
}

void ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_2(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(v2 + 192);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      if (*(v4 + 96))
      {
        v5 = *(a1 + 48);
        v6 = *(*(a1 + 32) + 8);
        if (v5 >> 30)
        {
          v7 = 9;
        }

        else
        {
          v7 = 5;
        }

        if (v5 >= 0x4000)
        {
          v8 = v7;
        }

        else
        {
          v8 = 3;
        }

        if (v5 >= 0x40)
        {
          v9 = v8;
        }

        else
        {
          v9 = 2;
        }

        nw_http3_framer_write_http3_frame_header(v2 + 160, 4uLL, v5, v9, *(v6 + 40));
        (*(*(v3 + 24) + 96))(v3, v6 + 40);
        v2 = *(a1 + 40);
      }
    }
  }

  v10 = *(v2 + 888);
  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = v10;
      v10 = *(v10 + 536);
      if ((*(v12 + 732) & 0x200) == 0)
      {
        goto LABEL_18;
      }

      if ((*(v12 + 732) & 0x2000) == 0 && gLogDatapath == 1)
      {
        loga = __nwlog_obj();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(*(v12 + 344) + 1304);
          v27 = *(v12 + 240);
          *buf = 136447490;
          v48 = "nw_http3_control_stream_process_output_block_invoke_2";
          v49 = 2082;
          v50 = (v12 + 632);
          v51 = 2080;
          v52 = " ";
          v53 = 1024;
          v54 = v26;
          v55 = 2048;
          v56 = v27;
          v57 = 2048;
          v58 = v27;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Marking stream %llu connected after sending SETTINGS", buf, 0x3Au);
        }
      }

      *(v12 + 734) |= 0x20u;
      v13 = *(v12 + 400);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 0x40000000;
      v46[2] = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_34;
      v46[3] = &__block_descriptor_tmp_46_63315;
      v46[4] = v12;
      nw_http_transaction_metadata_set_event_handler(v13, v46);
      *(v12 + 732) |= 0x100u;
      nw_http3_signal_output_pending(*(a1 + 40), 1);
      v14 = *(v12 + 48);
      if (!v14)
      {
        break;
      }

      v15 = *(v14 + 24);
      if (!v15)
      {
        break;
      }

      v16 = *(v15 + 40);
      if (!v16)
      {
        break;
      }

      v16(v14, v12);
LABEL_17:
      v11 = 1;
LABEL_18:
      if (!v10)
      {
        if (v11)
        {
          nw_http3_signal_output_pending(*(a1 + 40), 0);
        }

        return;
      }
    }

    __nwlog_obj();
    v17 = *(v12 + 48);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (!v18)
      {
        v18 = "invalid";
      }
    }

    else
    {
      v18 = "invalid";
    }

    *buf = 136446466;
    v48 = "nw_http3_control_stream_process_output_block_invoke_2";
    v49 = 2082;
    v50 = v18;
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    log = v19;
    if (__nwlog_fault(v19, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_66;
        }

        v20 = *(v12 + 48);
        if (v20)
        {
          v21 = *(v20 + 16);
          if (!v21)
          {
            v21 = "invalid";
          }
        }

        else
        {
          v21 = "invalid";
        }

        v30 = v39;
        v31 = v36;
        *buf = 136446466;
        v48 = "nw_http3_control_stream_process_output_block_invoke";
        v49 = 2082;
        v50 = v21;
        v32 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_65;
      }

      if (v44 != 1)
      {
        v41 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_66;
        }

        v28 = *(v12 + 48);
        if (v28)
        {
          v29 = *(v28 + 16);
          if (!v29)
          {
            v29 = "invalid";
          }
        }

        else
        {
          v29 = "invalid";
        }

        v30 = v41;
        v31 = v38;
        *buf = 136446466;
        v48 = "nw_http3_control_stream_process_output_block_invoke";
        v49 = 2082;
        v50 = v29;
        v32 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_65;
      }

      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v35 = type;
      v22 = os_log_type_enabled(v37, type);
      v23 = backtrace_string;
      if (backtrace_string)
      {
        if (v22)
        {
          v24 = *(v12 + 48);
          if (v24)
          {
            v25 = *(v24 + 16);
            if (!v25)
            {
              v25 = "invalid";
            }
          }

          else
          {
            v25 = "invalid";
          }

          *buf = 136446722;
          v48 = "nw_http3_control_stream_process_output_block_invoke";
          v49 = 2082;
          v50 = v25;
          v51 = 2082;
          v52 = backtrace_string;
          _os_log_impl(&dword_181A37000, v37, v35, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
          v23 = backtrace_string;
        }

        free(v23);
        goto LABEL_66;
      }

      if (v22)
      {
        v33 = *(v12 + 48);
        if (v33)
        {
          v34 = *(v33 + 16);
          if (!v34)
          {
            v34 = "invalid";
          }
        }

        else
        {
          v34 = "invalid";
        }

        *buf = 136446466;
        v48 = "nw_http3_control_stream_process_output_block_invoke";
        v49 = 2082;
        v50 = v34;
        v30 = v37;
        v31 = v35;
        v32 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_65:
        _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0x16u);
      }
    }

LABEL_66:
    if (log)
    {
      free(log);
    }

    goto LABEL_17;
  }
}

uint64_t _nw_path_get_custom_metadata_length(char *a1)
{
  if (a1)
  {
    v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v3 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v1], sizeof(__dst));
    v4 = sub_181D92F84();
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t nw_http3_framer_write_http3_frame_header(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http3_framer_write_http3_frame_header";
    v17 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v17, type, &__src))
    {
      goto LABEL_46;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v60 = "nw_http3_framer_write_http3_frame_header";
      v20 = "%{public}s called with null http3_framer";
    }

    else if (__src == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type[0];
      v51 = os_log_type_enabled(v18, type[0]);
      if (backtrace_string)
      {
        if (v51)
        {
          *buf = 136446466;
          v60 = "nw_http3_framer_write_http3_frame_header";
          v61 = 2082;
          *v62 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null http3_framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v17)
        {
          return 0;
        }

        goto LABEL_47;
      }

      if (!v51)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v60 = "nw_http3_framer_write_http3_frame_header";
      v20 = "%{public}s called with null http3_framer, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v60 = "nw_http3_framer_write_http3_frame_header";
      v20 = "%{public}s called with null http3_framer, backtrace limit exceeded";
    }

LABEL_44:
    v27 = v18;
    v28 = v19;
LABEL_45:
    _os_log_impl(&dword_181A37000, v27, v28, v20, buf, 0xCu);
    goto LABEL_46;
  }

  if (!nw_frame_uses_external_data(a5))
  {
    nw_frame_unclaim(a5, v9, a4, 0);
    LODWORD(__src) = 0;
    v14 = nw_frame_unclaimed_bytes(a5, &__src);
    if (v14)
    {
      v15 = v14;
      *type = 0;
      if (a2 > 0x3F)
      {
        if (a2 >> 14)
        {
          if (a2 >> 30)
          {
            if (a2 >> 62)
            {
              v43 = __nwlog_obj();
              os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
              *buf = 136446466;
              v60 = "_http_vle_encode";
              v61 = 2048;
              *v62 = a2;
              v44 = _os_log_send_and_compose_impl();
              result = __nwlog_should_abort(v44);
              if (result)
              {
                goto LABEL_117;
              }

              free(v44);
              v16 = 0;
            }

            else
            {
              *type = bswap64(a2 | 0xC000000000000000);
              v16 = 8;
            }
          }

          else
          {
            *type = bswap32(a2 | 0x80000000);
            v16 = 4;
          }
        }

        else
        {
          *type = bswap32(a2 | 0x4000) >> 16;
          v16 = 2;
        }
      }

      else
      {
        *type = a2;
        v16 = 1;
      }

      v45 = v16;
      memcpy(v15, type, v16);
      if (a3 > 0x3F)
      {
        if (a3 >> 14)
        {
          if (a3 >> 30)
          {
            *type = bswap64(a3 | 0xC000000000000000);
            v46 = 8;
          }

          else
          {
            *type = bswap32(a3 | 0x80000000);
            v46 = 4;
          }
        }

        else
        {
          *type = bswap32(a3 | 0x4000) >> 16;
          v46 = 2;
        }
      }

      else
      {
        *type = a3;
        v46 = 1;
      }

      memcpy(&v15[v45], type, v46);
      v29 = v46 + v45;
      if (a4 <= v29)
      {
        return v29;
      }

      memmove(&v15[v29], &v15[a4], __src - a4);
      v47 = a5;
      v48 = 0;
      v49 = a4 - v29;
      goto LABEL_101;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v60 = "nw_http3_framer_write_http3_frame_header";
    v17 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55) = 0;
    if (__nwlog_fault(v17, type, &v55))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_46;
        }

        *buf = 136446210;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v20 = "%{public}s Unable to fillout H3 frame header because nw_frame_unclaimed_bytes() returned NULL";
        goto LABEL_44;
      }

      if (v55 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_46;
        }

        *buf = 136446210;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v20 = "%{public}s Unable to fillout H3 frame header because nw_frame_unclaimed_bytes() returned NULL, backtrace limit exceeded";
        goto LABEL_44;
      }

      v25 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type[0];
      v26 = os_log_type_enabled(gLogObj, type[0]);
      if (v25)
      {
        if (v26)
        {
          *buf = 136446466;
          v60 = "nw_http3_framer_write_http3_frame_header";
          v61 = 2082;
          *v62 = v25;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Unable to fillout H3 frame header because nw_frame_unclaimed_bytes() returned NULL, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
      }

      else if (v26)
      {
        *buf = 136446210;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v20 = "%{public}s Unable to fillout H3 frame header because nw_frame_unclaimed_bytes() returned NULL, no backtrace";
        goto LABEL_93;
      }
    }

LABEL_46:
    if (!v17)
    {
      return 0;
    }

LABEL_47:
    free(v17);
    return 0;
  }

  nw_frame_unclaim(a5, v9, 0, a4);
  offset = 0;
  v10 = nw_frame_copy_external_data(a5, &offset + 1, &offset);
  v11 = v10;
  if (HIDWORD(offset))
  {
    subrange = dispatch_data_create_subrange(v10, HIDWORD(offset), 0xFFFFFFFFFFFFFFFFLL);
    if (v11)
    {
      dispatch_release(v11);
    }

    if (subrange)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  subrange = v10;
  if (!v10)
  {
LABEL_13:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v60 = "nw_http3_framer_write_http3_frame_header";
    v17 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v17, type, &__src))
    {
      goto LABEL_46;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v60 = "nw_http3_framer_write_http3_frame_header";
      v20 = "%{public}s Unable to fillout H3 frame header because nw_frame_copy_external_data() returned NULL";
      goto LABEL_44;
    }

    if (__src != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v60 = "nw_http3_framer_write_http3_frame_header";
      v20 = "%{public}s Unable to fillout H3 frame header because nw_frame_copy_external_data() returned NULL, backtrace limit exceeded";
      goto LABEL_44;
    }

    v21 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type[0];
    v24 = os_log_type_enabled(gLogObj, type[0]);
    if (v21)
    {
      if (v24)
      {
        *buf = 136446466;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v61 = 2082;
        *v62 = v21;
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Unable to fillout H3 frame header because nw_frame_copy_external_data() returned NULL, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v21);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_47;
    }

    if (!v24)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v60 = "nw_http3_framer_write_http3_frame_header";
    v20 = "%{public}s Unable to fillout H3 frame header because nw_frame_copy_external_data() returned NULL, no backtrace";
LABEL_93:
    v27 = v22;
    v28 = v23;
    goto LABEL_45;
  }

LABEL_7:
  *type = 0;
  if (a2 <= 0x3F)
  {
    *type = a2;
    v13 = 1;
    goto LABEL_55;
  }

  if (!(a2 >> 14))
  {
    *type = bswap32(a2 | 0x4000) >> 16;
    v13 = 2;
    goto LABEL_55;
  }

  if (!(a2 >> 30))
  {
    *type = bswap32(a2 | 0x80000000);
    v13 = 4;
    goto LABEL_55;
  }

  if (!(a2 >> 62))
  {
    *type = bswap64(a2 | 0xC000000000000000);
    v13 = 8;
    goto LABEL_55;
  }

  v30 = __nwlog_obj();
  os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v60 = "_http_vle_encode";
  v61 = 2048;
  *v62 = a2;
  v31 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v31);
  if (!result)
  {
    free(v31);
    v13 = 0;
LABEL_55:
    if (a3 > 0x3F)
    {
      if (a3 >> 14)
      {
        if (a3 >> 30)
        {
          __src = bswap64(a3 | 0xC000000000000000);
          v33 = 8;
        }

        else
        {
          __src = bswap32(a3 | 0x80000000);
          v33 = 4;
        }
      }

      else
      {
        __src = bswap32(a3 | 0x4000) >> 16;
        v33 = 2;
      }
    }

    else
    {
      __src = a3;
      v33 = 1;
    }

    v29 = v33 + v13;
    v55 = 0;
    alloc = dispatch_data_create_alloc();
    memcpy((a4 - v29), type, v13);
    memcpy((a4 - v33), &__src, v33);
    concat = dispatch_data_create_concat(alloc, subrange);
    if (alloc)
    {
      dispatch_release(alloc);
    }

    dispatch_release(subrange);
    v54 = 0;
    nw_frame_set_external_data(a5, concat, &v54);
    if (concat)
    {
      dispatch_release(concat);
    }

    if (v54 == offset)
    {
LABEL_99:
      v48 = a4 - v29;
      if (a4 > v29)
      {
        v47 = a5;
        v49 = 0;
LABEL_101:
        nw_frame_claim(v47, v36, v48, v49);
      }

      return v29;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v60 = "nw_http3_framer_write_http3_frame_header";
    v61 = 1024;
    *v62 = v54;
    *&v62[4] = 1024;
    *&v62[6] = offset;
    v37 = _os_log_send_and_compose_impl();
    v53 = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v37, &v53, &v52))
    {
      if (v53 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = v53;
        if (!os_log_type_enabled(gLogObj, v53))
        {
          goto LABEL_97;
        }

        *buf = 136446722;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v61 = 1024;
        *v62 = v54;
        *&v62[4] = 1024;
        *&v62[6] = offset;
        v40 = "%{public}s Incorrect frame length set: %u != %u";
        goto LABEL_96;
      }

      if (v52 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = v53;
        if (!os_log_type_enabled(gLogObj, v53))
        {
          goto LABEL_97;
        }

        *buf = 136446722;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v61 = 1024;
        *v62 = v54;
        *&v62[4] = 1024;
        *&v62[6] = offset;
        v40 = "%{public}s Incorrect frame length set: %u != %u, backtrace limit exceeded";
        goto LABEL_96;
      }

      v41 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      v39 = v53;
      v42 = os_log_type_enabled(gLogObj, v53);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446978;
          v60 = "nw_http3_framer_write_http3_frame_header";
          v61 = 1024;
          *v62 = v54;
          *&v62[4] = 1024;
          *&v62[6] = offset;
          v63 = 2082;
          v64 = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Incorrect frame length set: %u != %u, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v41);
        goto LABEL_97;
      }

      if (v42)
      {
        *buf = 136446722;
        v60 = "nw_http3_framer_write_http3_frame_header";
        v61 = 1024;
        *v62 = v54;
        *&v62[4] = 1024;
        *&v62[6] = offset;
        v40 = "%{public}s Incorrect frame length set: %u != %u, no backtrace";
LABEL_96:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0x18u);
      }
    }

LABEL_97:
    if (v37)
    {
      free(v37);
    }

    goto LABEL_99;
  }

LABEL_117:
  __break(1u);
  return result;
}

unint64_t sub_181D92F84()
{
  v1 = *(v0 + 200);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[3];
  if (!v2)
  {
    return 0;
  }

  if (v2 < 1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v3 = v1[4];
  v4 = v1[2];
  if (v3 < v4)
  {
    v4 = 0;
  }

  v5 = v1[26 * (v3 - v4) + 26];
  if (!v5)
  {
    return 0;
  }

  result = *(v5 + 16);
  if (result > 0xFF)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t nw_protocol_http3_uni_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v27 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    BYTE4(offset) = 0;
    if (!__nwlog_fault(v27, &__src, &offset + 4))
    {
      goto LABEL_107;
    }

    if (__src != 17)
    {
      if (BYTE4(offset) != 1)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
          v30 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v32 = os_log_type_enabled(v28, __src);
      if (!backtrace_string)
      {
        if (v32)
        {
          *buf = 136446210;
          v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
          v30 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      if (!v32)
      {
        goto LABEL_93;
      }

      *buf = 136446466;
      v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
      v44 = 2082;
      *v45 = backtrace_string;
      v33 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_92;
    }

    v28 = __nwlog_obj();
    v29 = __src;
    if (!os_log_type_enabled(v28, __src))
    {
      goto LABEL_107;
    }

    *buf = 136446210;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v30 = "%{public}s called with null protocol";
LABEL_106:
    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    goto LABEL_107;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v27 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    BYTE4(offset) = 0;
    if (!__nwlog_fault(v27, &__src, &offset + 4))
    {
      goto LABEL_107;
    }

    if (__src != 17)
    {
      if (BYTE4(offset) != 1)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
          v30 = "%{public}s called with null http3_stream, backtrace limit exceeded";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v34 = os_log_type_enabled(v28, __src);
      if (!backtrace_string)
      {
        if (v34)
        {
          *buf = 136446210;
          v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
          v30 = "%{public}s called with null http3_stream, no backtrace";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      if (!v34)
      {
        goto LABEL_93;
      }

      *buf = 136446466;
      v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
      v44 = 2082;
      *v45 = backtrace_string;
      v33 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_92;
    }

    v28 = __nwlog_obj();
    v29 = __src;
    if (!os_log_type_enabled(v28, __src))
    {
      goto LABEL_107;
    }

    *buf = 136446210;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v30 = "%{public}s called with null http3_stream";
    goto LABEL_106;
  }

  if (!handle[120])
  {
    return (a1->output_handler->callbacks->finalize_output_frames)(a1->output_handler, a2);
  }

  v4 = a2;
  tqh_first = a2->tqh_first;
  if (!nw_frame_uses_external_data(a2->tqh_first))
  {
    nw_frame_unclaim(tqh_first, v6, handle[120], 0);
    HIDWORD(offset) = 0;
    v10 = nw_frame_unclaimed_bytes(tqh_first, &offset + 1);
    if (v10)
    {
      __src = 0;
      v11 = *(handle + 8);
      if (v11 > 0x3F)
      {
        if (v11 >> 14)
        {
          if (v11 >> 30)
          {
            if (v11 >> 62)
            {
              v13 = v10;
              v14 = __nwlog_obj();
              os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
              *buf = 136446466;
              v43 = "_http_vle_encode";
              v44 = 2048;
              *v45 = v11;
              v15 = _os_log_send_and_compose_impl();
              result = __nwlog_should_abort(v15);
              if (result)
              {
                goto LABEL_110;
              }

              free(v15);
              v10 = v13;
            }

            else
            {
              __src = bswap64(v11 | 0xC000000000000000);
            }
          }

          else
          {
            __src = bswap32(v11 | 0x80000000);
          }
        }

        else
        {
          __src = bswap32(v11 | 0x4000) >> 16;
        }
      }

      else
      {
        __src = *(handle + 8);
      }

      memcpy(v10, &__src, handle[120]);
LABEL_53:
      a2 = v4;
      *(handle + 8) = -1;
      handle[120] = 0;
      return (a1->output_handler->callbacks->finalize_output_frames)(a1->output_handler, a2);
    }

    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v27 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    LOBYTE(offset) = 0;
    if (!__nwlog_fault(v27, &__src, &offset))
    {
      goto LABEL_107;
    }

    if (__src == 17)
    {
      v28 = __nwlog_obj();
      v29 = __src;
      if (!os_log_type_enabled(v28, __src))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
      v30 = "%{public}s called with null unclaimed_bytes";
      goto LABEL_106;
    }

    if (offset != 1)
    {
      v28 = __nwlog_obj();
      v29 = __src;
      if (os_log_type_enabled(v28, __src))
      {
        *buf = 136446210;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v30 = "%{public}s called with null unclaimed_bytes, backtrace limit exceeded";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = __src;
    v35 = os_log_type_enabled(v28, __src);
    if (!backtrace_string)
    {
      if (v35)
      {
        *buf = 136446210;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v30 = "%{public}s called with null unclaimed_bytes, no backtrace";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    if (!v35)
    {
      goto LABEL_93;
    }

    *buf = 136446466;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v44 = 2082;
    *v45 = backtrace_string;
    v33 = "%{public}s called with null unclaimed_bytes, dumping backtrace:%{public}s";
LABEL_92:
    _os_log_impl(&dword_181A37000, v28, v29, v33, buf, 0x16u);
    goto LABEL_93;
  }

  nw_frame_unclaim(tqh_first, v6, 0, handle[120]);
  offset = 0;
  v7 = nw_frame_copy_external_data(tqh_first, &offset + 1, &offset);
  v8 = v7;
  if (HIDWORD(offset))
  {
    subrange = dispatch_data_create_subrange(v7, HIDWORD(offset), 0xFFFFFFFFFFFFFFFFLL);
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  else
  {
    subrange = v7;
  }

  if (subrange)
  {
    __src = 0;
    v12 = *(handle + 8);
    if (v12 <= 0x3F)
    {
      __src = *(handle + 8);
      goto LABEL_32;
    }

    if (!(v12 >> 14))
    {
      __src = bswap32(v12 | 0x4000) >> 16;
      goto LABEL_32;
    }

    if (!(v12 >> 30))
    {
      __src = bswap32(v12 | 0x80000000);
      goto LABEL_32;
    }

    if (!(v12 >> 62))
    {
      __src = bswap64(v12 | 0xC000000000000000);
      goto LABEL_32;
    }

    v17 = __nwlog_obj();
    os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    *buf = 136446466;
    v43 = "_http_vle_encode";
    v44 = 2048;
    *v45 = v12;
    v18 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v18);
    if (!result)
    {
      free(v18);
LABEL_32:
      v19 = dispatch_data_create(&__src, handle[120], 0, 0);
      concat = dispatch_data_create_concat(v19, subrange);
      if (v19)
      {
        dispatch_release(v19);
      }

      dispatch_release(subrange);
      v39 = 0;
      nw_frame_set_external_data(tqh_first, concat, &v39);
      if (concat)
      {
        dispatch_release(concat);
      }

      if (v39 == offset)
      {
        goto LABEL_53;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
      v44 = 1024;
      *v45 = v39;
      *&v45[4] = 1024;
      *&v45[6] = offset;
      v21 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (!__nwlog_fault(v21, &type, &v37))
      {
        goto LABEL_51;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_51;
        }

        *buf = 136446722;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v44 = 1024;
        *v45 = v39;
        *&v45[4] = 1024;
        *&v45[6] = offset;
        v24 = "%{public}s Incorrect frame length set: %u != %u";
      }

      else if (v37 == 1)
      {
        v25 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        v26 = os_log_type_enabled(gLogObj, type);
        if (v25)
        {
          if (v26)
          {
            *buf = 136446978;
            v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
            v44 = 1024;
            *v45 = v39;
            *&v45[4] = 1024;
            *&v45[6] = offset;
            v46 = 2082;
            v47 = v25;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Incorrect frame length set: %u != %u, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v25);
          goto LABEL_51;
        }

        if (!v26)
        {
LABEL_51:
          if (v21)
          {
            free(v21);
          }

          goto LABEL_53;
        }

        *buf = 136446722;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v44 = 1024;
        *v45 = v39;
        *&v45[4] = 1024;
        *&v45[6] = offset;
        v24 = "%{public}s Incorrect frame length set: %u != %u, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_51;
        }

        *buf = 136446722;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v44 = 1024;
        *v45 = v39;
        *&v45[4] = 1024;
        *&v45[6] = offset;
        v24 = "%{public}s Incorrect frame length set: %u != %u, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0x18u);
      goto LABEL_51;
    }

LABEL_110:
    __break(1u);
    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
  v27 = _os_log_send_and_compose_impl();
  LOBYTE(__src) = 16;
  LOBYTE(v39) = 0;
  if (!__nwlog_fault(v27, &__src, &v39))
  {
    goto LABEL_107;
  }

  if (__src != 17)
  {
    if (v39 != 1)
    {
      v28 = __nwlog_obj();
      v29 = __src;
      if (os_log_type_enabled(v28, __src))
      {
        *buf = 136446210;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v30 = "%{public}s called with null external_data, backtrace limit exceeded";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = __src;
    v36 = os_log_type_enabled(v28, __src);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
        v30 = "%{public}s called with null external_data, no backtrace";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    if (v36)
    {
      *buf = 136446466;
      v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
      v44 = 2082;
      *v45 = backtrace_string;
      v33 = "%{public}s called with null external_data, dumping backtrace:%{public}s";
      goto LABEL_92;
    }

LABEL_93:
    free(backtrace_string);
    goto LABEL_107;
  }

  v28 = __nwlog_obj();
  v29 = __src;
  if (os_log_type_enabled(v28, __src))
  {
    *buf = 136446210;
    v43 = "nw_protocol_http3_uni_stream_finalize_output_frames";
    v30 = "%{public}s called with null external_data";
    goto LABEL_106;
  }

LABEL_107:
  if (v27)
  {
    free(v27);
  }

  return 0;
}

uint64_t ___ZL51nw_protocol_implementation_deliver_output_availableP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  if (!extra)
  {
    return 1;
  }

  if ((*(extra + 52) & 0x100) == 0)
  {
    return 1;
  }

  if (!object)
  {
    return 1;
  }

  v7 = object[3];
  if (!v7 || !*(a1 + 32) || !*(v7 + 72))
  {
    return 1;
  }

  *(extra + 52) &= ~0x100u;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8 - 96;
  }

  else
  {
    v9 = 0;
  }

  v10 = object[5];
  v11 = object;
  if (v10 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_15;
  }

  if (v10 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v11) = 0;
    v12 = 1;
    goto LABEL_18;
  }

  v11 = object[8];
  if (v11)
  {
LABEL_15:
    v13 = v11[11];
    v12 = 0;
    if (v13)
    {
      v11[11] = v13 + 1;
    }

    LOBYTE(v11) = -1;
  }

  else
  {
    v12 = 1;
  }

LABEL_18:
  v48 = object;
  v49 = v11;
  if (!v8)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v51 = "__nw_protocol_output_available";
    v30 = _os_log_send_and_compose_impl();

    v45[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v45, &type))
    {
      if (v45[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v45[0];
        if (os_log_type_enabled(v31, v45[0]))
        {
          *buf = 136446210;
          v51 = "__nw_protocol_output_available";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v38 = v45[0];
        v39 = os_log_type_enabled(v31, v45[0]);
        if (backtrace_string)
        {
          if (v39)
          {
            *buf = 136446466;
            v51 = "__nw_protocol_output_available";
            v52 = 2082;
            v53 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_78;
        }

        if (v39)
        {
          *buf = 136446210;
          v51 = "__nw_protocol_output_available";
          _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v42 = v45[0];
        if (os_log_type_enabled(v31, v45[0]))
        {
          *buf = 136446210;
          v51 = "__nw_protocol_output_available";
          _os_log_impl(&dword_181A37000, v31, v42, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_31;
  }

  v14 = *(v9 + 40);
  v15 = v9;
  if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(v9 + 64)) != 0)
  {
    v18 = *(v15 + 88);
    v17 = 0;
    if (v18)
    {
      *(v15 + 88) = v18 + 1;
    }

    v16 = -1;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  *v45 = v9;
  v46 = v16;
  v19 = object[3];
  if (!v19 || (v20 = *(v19 + 72)) == 0)
  {
    v21 = object;
    v22 = __nwlog_obj();
    v23 = v21[2];
    *buf = 136446722;
    v51 = "__nw_protocol_output_available";
    if (!v23)
    {
      v23 = "invalid";
    }

    v52 = 2082;
    v53 = v23;
    v54 = 2048;
    v24 = v21;
    v55 = v21;
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v25, &type, &v44))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        v28 = v24[2];
        if (!v28)
        {
          v28 = "invalid";
        }

        *buf = 136446722;
        v51 = "__nw_protocol_output_available";
        v52 = 2082;
        v53 = v28;
        v54 = 2048;
        v55 = v24;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s protocol %{public}s (%p) has invalid output_available callback", buf, 0x20u);
      }
    }

    else if (v44 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v26, type);
      if (v33)
      {
        if (v35)
        {
          v36 = v24[2];
          if (!v36)
          {
            v36 = "invalid";
          }

          *buf = 136446978;
          v51 = "__nw_protocol_output_available";
          v52 = 2082;
          v53 = v36;
          v54 = 2048;
          v55 = v24;
          v56 = 2082;
          v57 = v33;
          _os_log_impl(&dword_181A37000, v26, v34, "%{public}s protocol %{public}s (%p) has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v33);
        goto LABEL_73;
      }

      if (v35)
      {
        v43 = v24[2];
        if (!v43)
        {
          v43 = "invalid";
        }

        *buf = 136446722;
        v51 = "__nw_protocol_output_available";
        v52 = 2082;
        v53 = v43;
        v54 = 2048;
        v55 = v24;
        _os_log_impl(&dword_181A37000, v26, v34, "%{public}s protocol %{public}s (%p) has invalid output_available callback, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v26, type))
      {
        v41 = v24[2];
        if (!v41)
        {
          v41 = "invalid";
        }

        *buf = 136446722;
        v51 = "__nw_protocol_output_available";
        v52 = 2082;
        v53 = v41;
        v54 = 2048;
        v55 = v24;
        _os_log_impl(&dword_181A37000, v26, v40, "%{public}s protocol %{public}s (%p) has invalid output_available callback, backtrace limit exceeded", buf, 0x20u);
      }
    }

LABEL_73:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_29;
  }

  v20();
LABEL_29:
  if ((v17 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(v45);
  }

LABEL_31:
  if ((v12 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v48);
  }

  return 1;
}

void sub_181D94340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

uint64_t nw_protocol_metadata_supports_replies(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_metadata_supports_replies(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_supports_replies";
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
        v12 = "nw_protocol_metadata_supports_replies";
        v6 = "%{public}s called with null metadata";
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
            v12 = "nw_protocol_metadata_supports_replies";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_metadata_supports_replies";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_supports_replies";
        v6 = "%{public}s called with null metadata, backtrace limit exceeded";
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

void nw_protocol_http3_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_http3_output_available";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v3, &type, &v23))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http3_output_available";
      v6 = "%{public}s called with null protocol";
      goto LABEL_22;
    }

    if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v20 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (!v20)
        {
          goto LABEL_48;
        }

        *buf = 136446466;
        v26 = "nw_protocol_http3_output_available";
        v27 = 2082;
        v28 = backtrace_string;
        v21 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_47;
      }

      if (!v20)
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http3_output_available";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http3_output_available";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_22:
    v11 = v4;
    v12 = v5;
LABEL_23:
    _os_log_impl(&dword_181A37000, v11, v12, v6, buf, 0xCu);
    goto LABEL_24;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
    {
      v13 = handle;
      v14 = a2;
      v15 = __nwlog_obj();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      a2 = v14;
      v17 = v16;
      handle = v13;
      if (v17)
      {
        v18 = v13[326];
        *buf = 136446978;
        v26 = "nw_protocol_http3_output_available";
        v27 = 2082;
        v28 = v13 + 1313;
        v29 = 2080;
        v30 = " ";
        v31 = 1024;
        v32 = v18;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        a2 = v14;
        handle = v13;
      }
    }

    if (*(handle + 4) == a2)
    {
      nw_http3_control_stream_process_output(handle);
      return;
    }

    if (*(handle + 134) == a2)
    {
      nw_http3_encoder_stream_process_output(handle);
      return;
    }

    if (*(handle + 136) == a2)
    {
      nw_http3_decoder_stream_process_output(handle);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v26 = "nw_protocol_http3_output_available";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v3, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v26 = "nw_protocol_http3_output_available";
        v6 = "%{public}s output_available for unknown stream";
        goto LABEL_22;
      }

      if (v23 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v26 = "nw_protocol_http3_output_available";
        v6 = "%{public}s output_available for unknown stream, backtrace limit exceeded";
        goto LABEL_22;
      }

      v7 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(gLogObj, type);
      if (v7)
      {
        if (v10)
        {
          *buf = 136446466;
          v26 = "nw_protocol_http3_output_available";
          v27 = 2082;
          v28 = v7;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s output_available for unknown stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v7);
      }

      else if (v10)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_output_available";
        v6 = "%{public}s output_available for unknown stream, no backtrace";
        v11 = v8;
        v12 = v9;
        goto LABEL_23;
      }
    }

LABEL_24:
    if (!v3)
    {
      return;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_protocol_http3_output_available";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v3, &type, &v23))
  {
    goto LABEL_24;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_24;
    }

    *buf = 136446210;
    v26 = "nw_protocol_http3_output_available";
    v6 = "%{public}s called with null http3";
    goto LABEL_22;
  }

  if (v23 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_24;
    }

    *buf = 136446210;
    v26 = "nw_protocol_http3_output_available";
    v6 = "%{public}s called with null http3, backtrace limit exceeded";
    goto LABEL_22;
  }

  backtrace_string = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v22 = os_log_type_enabled(v4, type);
  if (!backtrace_string)
  {
    if (!v22)
    {
      goto LABEL_24;
    }

    *buf = 136446210;
    v26 = "nw_protocol_http3_output_available";
    v6 = "%{public}s called with null http3, no backtrace";
    goto LABEL_22;
  }

  if (!v22)
  {
    goto LABEL_48;
  }

  *buf = 136446466;
  v26 = "nw_protocol_http3_output_available";
  v27 = 2082;
  v28 = backtrace_string;
  v21 = "%{public}s called with null http3, dumping backtrace:%{public}s";
LABEL_47:
  _os_log_impl(&dword_181A37000, v4, v5, v21, buf, 0x16u);
LABEL_48:
  free(backtrace_string);
  if (v3)
  {
LABEL_25:
    free(v3);
  }
}

void nw_http_transaction_metadata_set_event_handler(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_transaction_metadata_set_event_handler";
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
        v23 = "nw_http_transaction_metadata_set_event_handler";
        v10 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v23 = "nw_http_transaction_metadata_set_event_handler";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v7);
        goto LABEL_8;
      }

      if (v13)
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_event_handler";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_event_handler";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __nw_http_transaction_metadata_set_event_handler_block_invoke;
    v18 = &unk_1E6A3A978;
    v19 = v4;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v17(v16, handle);
    }

    goto LABEL_8;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_transaction_metadata_set_event_handler";
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
      v23 = "nw_http_transaction_metadata_set_event_handler";
      v10 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_event_handler";
      v10 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_event_handler";
      v10 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v23 = "nw_http_transaction_metadata_set_event_handler";
    v24 = 2082;
    v25 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t nw_protocol_http3_stream_copy_info(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_http3_stream_copy_info";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http3_stream_copy_info";
      v17 = "%{public}s called with null protocol";
LABEL_63:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      goto LABEL_64;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v19 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (!v19)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v26 = "nw_protocol_http3_stream_copy_info";
    v27 = 2082;
    v28 = backtrace_string;
    v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v15, v16, v20, buf, 0x16u);
    goto LABEL_50;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_http3_stream_copy_info";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http3_stream_copy_info";
      v17 = "%{public}s called with null http3_stream";
      goto LABEL_63;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v21 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (!v21)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v26 = "nw_protocol_http3_stream_copy_info";
    v27 = 2082;
    v28 = backtrace_string;
    v20 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
    goto LABEL_49;
  }

  v3 = *(v2 + 344);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_http3_stream_copy_info";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null http3_stream->http3_connection";
        goto LABEL_63;
      }

LABEL_64:
      if (v14)
      {
        free(v14);
      }

      return 0;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null http3_stream->http3_connection, backtrace limit exceeded";
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v22 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http3_stream_copy_info";
        v17 = "%{public}s called with null http3_stream->http3_connection, no backtrace";
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (v22)
    {
      *buf = 136446466;
      v26 = "nw_protocol_http3_stream_copy_info";
      v27 = 2082;
      v28 = backtrace_string;
      v20 = "%{public}s called with null http3_stream->http3_connection, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

LABEL_50:
    free(backtrace_string);
    goto LABEL_64;
  }

  if (a2 == 253)
  {
    return *(v3 + 1104);
  }

  v6 = nw_protocol_common_copy_info(a1, a2);
  if (a2 != 255)
  {
    return v6;
  }

  if (!v6)
  {
    v6 = _nw_array_create();
  }

  v7 = *(v2 + 344);
  v8 = *(v7 + 1264);
  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v6;
    _nw_array_append(v6, v8);
    v6 = v10;
    v7 = *(v2 + 344);
  }

  v11 = *(v7 + 1296);
  if (v11)
  {
    if (!v6)
    {
      return v6;
    }

    v12 = *(v11 + 112);
    if (!v12)
    {
      return v6;
    }

LABEL_23:
    v4 = v6;
    _nw_array_append(v6, v12);
    return v4;
  }

  v12 = *(v2 + 400);
  if (v12)
  {
    v4 = 0;
  }

  else
  {
    v4 = v6;
  }

  if (v12 && v6)
  {
    goto LABEL_23;
  }

  return v4;
}

uint64_t nw_protocol_metadata_create_reply(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_metadata_copy_definition(v1);
  v3 = v2;
  if (!v2)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_metadata_create_reply";
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
          v19 = "nw_protocol_metadata_create_reply";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
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
            v19 = "nw_protocol_metadata_create_reply";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v13)
        {
          *buf = 136446210;
          v19 = "nw_protocol_metadata_create_reply";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v19 = "nw_protocol_metadata_create_reply";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_21:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_23;
  }

  isa = v2[9].isa;
  if (!isa || (v5 = *(isa + 3)) == 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  v6 = v5(v1);
LABEL_24:

  return v6;
}

void nw_endpoint_proxy_record_result(NWConcrete_nw_endpoint_handler *a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_endpoint_proxy_record_result";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v19, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_proxy_record_result";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null child_handler", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v30 = "nw_endpoint_proxy_record_result";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null child_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v24)
        {
          *buf = 136446210;
          v30 = "nw_endpoint_proxy_record_result";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null child_handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_proxy_record_result";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null child_handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_22;
  }

  v5 = v3;
  v6 = v5[7];

  if (!v6)
  {
LABEL_21:

LABEL_22:
    return;
  }

  if (nw_protocol_copy_proxy_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_proxy_definition(void)::onceToken, &__block_literal_global_26677);
  }

  cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v6, nw_protocol_copy_proxy_definition(void)::proxy_definition);
  if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 8uLL, 0x95B819CFuLL)) != 0)
  {
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v30 = "nw_endpoint_proxy_record_result";
  v31 = 2048;
  v32 = 1;
  v33 = 2048;
  v34 = 8;
  v13 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v13))
  {
    free(v13);
    cached_content_for_protocol = 0;
    if (a2)
    {
LABEL_8:
      v8 = *cached_content_for_protocol + 1;
      *cached_content_for_protocol = v8;
      if (v8 != v8 << 31 >> 31)
      {
        v9 = cached_content_for_protocol;
        if (gLogDatapath == 1)
        {
          v10 = __nwlog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = *cached_content_for_protocol;
            *buf = 136446978;
            v30 = "nw_endpoint_proxy_record_result";
            v31 = 2082;
            v32 = "result_cache->success_count";
            v33 = 2048;
            v34 = 1;
            v35 = 2048;
            v36 = v11;
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
          }

          v9 = cached_content_for_protocol;
LABEL_38:

          goto LABEL_17;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_15:
    v9 = cached_content_for_protocol + 1;
    v14 = cached_content_for_protocol[1] + 1;
    cached_content_for_protocol[1] = v14;
    if (v14 != v14 << 31 >> 31)
    {
      if (gLogDatapath == 1)
      {
        v10 = __nwlog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v26 = *v9;
          *buf = 136446978;
          v30 = "nw_endpoint_proxy_record_result";
          v31 = 2082;
          v32 = "result_cache->failure_count";
          v33 = 2048;
          v34 = 1;
          v35 = 2048;
          v36 = v26;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        goto LABEL_38;
      }

LABEL_17:
      *v9 = -1;
    }

LABEL_18:
    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_proxy_fallback_cache_seconds, 1800);
    if (nw_protocol_copy_proxy_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_proxy_definition(void)::onceToken, &__block_literal_global_26677);
    }

    v16 = nw_protocol_copy_proxy_definition(void)::proxy_definition;
    v17 = time(0);
    nw_association_set_cached_content_for_protocol(v6, v16, cached_content_for_protocol, v17 + int64_with_default);

    goto LABEL_21;
  }

  __break(1u);
}

void *nw_quic_metadata_create_reply(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (_nw_protocol_metadata_is_quic_connection(v1))
    {
      *buf = 0;
      *&buf[8] = 0;
      v3 = v2;
      _nw_protocol_metadata_copy_identifier(v3, buf);

      buf[9] |= 1u;
      connection_metadata = _nw_quic_create_connection_metadata(buf);
      v5 = connection_metadata;
      if (connection_metadata)
      {
        _nw_quic_metadata_create_reply_set_metadata(connection_metadata, v3);
        v6 = v5;
      }

      goto LABEL_6;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_quic_metadata_create_reply";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_quic_metadata_create_reply";
          v12 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata)";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_quic_metadata_create_reply";
          v12 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_quic_metadata_create_reply";
          v12 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v17)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      *&buf[4] = "nw_quic_metadata_create_reply";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v16 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_24:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_quic_metadata_create_reply";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_quic_metadata_create_reply";
          v12 = "%{public}s called with null original_metadata";
LABEL_33:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_quic_metadata_create_reply";
          v12 = "%{public}s called with null original_metadata, backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          *&buf[4] = "nw_quic_metadata_create_reply";
          v12 = "%{public}s called with null original_metadata, no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v15)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      *&buf[4] = "nw_quic_metadata_create_reply";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v16 = "%{public}s called with null original_metadata, dumping backtrace:%{public}s";
      goto LABEL_23;
    }
  }

LABEL_35:
  if (v9)
  {
    free(v9);
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void *NWCreateDispatchDataFromNSData(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 _createDispatchData];
  }

  return a1;
}

uint64_t sub_181D964A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      v7 = sub_181A93260(a2);
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        v9 = *(v8 + 64);

        if (v9)
        {

          *(v6 + 48) = v9;
        }
      }
    }
  }

  return result;
}

void nw_protocol_http3_stream_get_message_properties(uint64_t a1, uint64_t a2, int *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http3_stream_get_message_properties";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &type, &v18))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_stream_get_message_properties";
      v11 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_protocol_http3_stream_get_message_properties";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v8)
        {
          return;
        }

LABEL_45:
        free(v8);
        return;
      }

      if (!v15)
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_stream_get_message_properties";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http3_stream_get_message_properties";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_43:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_44;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (a3)
    {
      if ((*(v3 + 732) & 0x40) != 0)
      {
        v5 = *(v3 + 96);
        if (v5 && (v6 = *(v5 + 24)) != 0 && (v7 = *(v6 + 248)) != 0)
        {

          v7();
        }

        else
        {
          v12 = a3[1] & 0xFFFFFFFA;
          a3[1] = v12 | 1;
          v13 = *(v3 + 620);
          if (!v13)
          {
            v13 = -1;
          }

          *a3 = v13;
          a3[1] = v12 | 3;
        }
      }

      else
      {
        v4 = a3[1] & 0xFFFFFFF8;
        *a3 = -1;
        a3[1] = v4;
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http3_stream_get_message_properties";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v8, &type, &v18))
  {
    goto LABEL_44;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_44;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_stream_get_message_properties";
    v11 = "%{public}s called with null http3_stream";
    goto LABEL_43;
  }

  if (v18 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_44;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_stream_get_message_properties";
    v11 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    goto LABEL_43;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v17 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_44;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http3_stream_get_message_properties";
    v11 = "%{public}s called with null http3_stream, no backtrace";
    goto LABEL_43;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_http3_stream_get_message_properties";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_45;
  }
}

void nw_protocol_masque_connected(nw_protocol *a1, nw_protocol *a2)
{
  v210[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_masque_connected";
    v3 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    LOBYTE(v198) = 0;
    if (!__nwlog_fault(v3, aBlock, &v198))
    {
      goto LABEL_215;
    }

    if (aBlock[0] == 17)
    {
      v98 = __nwlog_obj();
      v99 = aBlock[0];
      if (!os_log_type_enabled(v98, aBlock[0]))
      {
        goto LABEL_215;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_masque_connected";
      v100 = "%{public}s called with null protocol";
    }

    else if (v198 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v98 = __nwlog_obj();
      v99 = aBlock[0];
      v102 = os_log_type_enabled(v98, aBlock[0]);
      if (backtrace_string)
      {
        if (v102)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_protocol_masque_connected";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = backtrace_string;
          _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_354;
        }

        return;
      }

      if (!v102)
      {
LABEL_215:
        if (!v3)
        {
          return;
        }

        goto LABEL_354;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_masque_connected";
      v100 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v98 = __nwlog_obj();
      v99 = aBlock[0];
      if (!os_log_type_enabled(v98, aBlock[0]))
      {
        goto LABEL_215;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_masque_connected";
      v100 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v98, v99, v100, buf, 0xCu);
    goto LABEL_215;
  }

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
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_masque_connected";
      v8 = _os_log_send_and_compose_impl();
      aBlock[0] = 16;
      LOBYTE(v198) = 0;
      if (__nwlog_fault(v8, aBlock, &v198))
      {
        if (aBlock[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = aBlock[0];
          if (os_log_type_enabled(gLogObj, aBlock[0]))
          {
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_protocol_masque_connected";
            v11 = "%{public}s called with null masque";
LABEL_41:
            v31 = v9;
            v32 = v10;
LABEL_42:
            _os_log_impl(&dword_181A37000, v31, v32, v11, buf, 0xCu);
          }
        }

        else if (v198 == 1)
        {
          v27 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          v29 = aBlock[0];
          v30 = os_log_type_enabled(gLogObj, aBlock[0]);
          if (v27)
          {
            if (v30)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_masque_connected";
              WORD6(buf[0]) = 2082;
              *(buf + 14) = v27;
              _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v27);
            goto LABEL_43;
          }

          if (v30)
          {
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_protocol_masque_connected";
            v11 = "%{public}s called with null masque, no backtrace";
            v31 = v28;
            v32 = v29;
            goto LABEL_42;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = aBlock[0];
          if (os_log_type_enabled(gLogObj, aBlock[0]))
          {
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_protocol_masque_connected";
            v11 = "%{public}s called with null masque, backtrace limit exceeded";
            goto LABEL_41;
          }
        }
      }

LABEL_43:
      if (!v8)
      {
        goto LABEL_343;
      }

      v33 = v8;
      goto LABEL_45;
    }

    v13 = *a1[1].flow_id;
    p_output_handler = (v13 + 96);
    if ((v13 + 96) != a1)
    {
      goto LABEL_19;
    }

    if ((*(v13 + 601) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v103 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136446722;
        *(buf + 4) = "nw_protocol_masque_connected";
        WORD6(buf[0]) = 2082;
        *(buf + 14) = v13 + 603;
        WORD3(buf[1]) = 2080;
        *(&buf[1] + 1) = " ";
        _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived connected event for server connect", buf, 0x20u);
      }
    }

    if (*(v13 + 584))
    {
      goto LABEL_343;
    }

    v34 = *(v13 + 392);
    if (v34)
    {
      if (*(v13 + 472))
      {
        v198 = 0;
        if (nw_endpoint_get_type(v34) == nw_endpoint_type_address && nw_endpoint_get_address_family(*(v13 + 392)) == 30)
        {
          v35 = "[%s]:%u";
        }

        else
        {
          v35 = "%s:%u";
        }

        hostname = nw_endpoint_get_hostname(*(v13 + 392));
        port = nw_endpoint_get_port(*(v13 + 392));
        asprintf(&v198, v35, hostname, port);
        v38 = _nw_http_request_create("CONNECT-UDP", "https");
        if (v198)
        {
          free(v198);
          v198 = 0;
        }

        if (v38)
        {
          nw_http_fields_append(v38, "Datagram-Flow-Id", v13 + 687);
          v39 = dispatch_data_create_with_transform();
          memset(buf + 1, 0, 63);
          LOBYTE(buf[0]) = 58;
          if (dispatch_data_get_size(v39) <= 0x3D)
          {
            for (i = buf; ; i = v93 + 1)
            {
              v93 = strchr(i, 43);
              if (!v93)
              {
                break;
              }

              *v93 = 45;
            }

            for (j = buf; ; j = v95 + 1)
            {
              v95 = strchr(j, 47);
              if (!v95)
              {
                break;
              }

              *v95 = 95;
            }

            *(buf + nw_dispatch_data_copyout(v39, buf + 1, 61) + 1) = 58;
            nw_http_fields_append(v38, "Server-Connection-Id", buf);
            if (v39)
            {
              dispatch_release(v39);
            }

            metadata_for_request = nw_http_create_metadata_for_request(v38);
            if (nw_masque_send_metadata(v13 + 96, metadata_for_request, *(v13 + 128)))
            {
              if ((*(v13 + 601) & 1) == 0)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v97 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  *aBlock = 136446722;
                  *&aBlock[4] = "nw_masque_send_server_connect";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = v13 + 603;
                  *&aBlock[22] = 2080;
                  v209 = " ";
                  _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent CONNECT-UDP request for server CID", aBlock, 0x20u);
                }
              }

              *(v13 + 584) = 2;
            }

            if (metadata_for_request)
            {
              os_release(metadata_for_request);
            }
          }

          else
          {
            if ((*(v13 + 601) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v40 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                size = dispatch_data_get_size(v39);
                *aBlock = 136446722;
                *&aBlock[4] = v13 + 603;
                *&aBlock[12] = 2080;
                *&aBlock[14] = " ";
                *&aBlock[22] = 2048;
                v209 = size;
                _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s%sBase64 data is too large: %zu", aBlock, 0x20u);
              }
            }

            if (v39)
            {
              dispatch_release(v39);
            }
          }

          os_release(v38);
        }

        else if ((*(v13 + 601) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v43 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = v13 + 603;
            WORD6(buf[0]) = 2080;
            *(buf + 14) = " ";
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to create HTTP message", buf, 0x16u);
          }
        }
      }

      goto LABEL_20;
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_send_server_connect";
    v114 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    LOBYTE(v198) = 0;
    if (__nwlog_fault(v114, aBlock, &v198))
    {
      if (aBlock[0] == 17)
      {
        v115 = __nwlog_obj();
        v116 = aBlock[0];
        if (!os_log_type_enabled(v115, aBlock[0]))
        {
          goto LABEL_294;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_masque_send_server_connect";
        v117 = "%{public}s called with null masque->target_endpoint";
LABEL_292:
        v148 = v115;
LABEL_293:
        _os_log_impl(&dword_181A37000, v148, v116, v117, buf, 0xCu);
        goto LABEL_294;
      }

      if (v198 != 1)
      {
        v115 = __nwlog_obj();
        v116 = aBlock[0];
        if (!os_log_type_enabled(v115, aBlock[0]))
        {
          goto LABEL_294;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_masque_send_server_connect";
        v117 = "%{public}s called with null masque->target_endpoint, backtrace limit exceeded";
        goto LABEL_292;
      }

      v134 = __nw_create_backtrace_string();
      v135 = __nwlog_obj();
      v116 = aBlock[0];
      logb = v135;
      v136 = os_log_type_enabled(v135, aBlock[0]);
      if (v134)
      {
        if (v136)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_masque_send_server_connect";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = v134;
          _os_log_impl(&dword_181A37000, logb, v116, "%{public}s called with null masque->target_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v134);
        goto LABEL_294;
      }

      if (v136)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_masque_send_server_connect";
        v117 = "%{public}s called with null masque->target_endpoint, no backtrace";
        v148 = logb;
        goto LABEL_293;
      }
    }

LABEL_294:
    if (v114)
    {
      free(v114);
    }

    goto LABEL_20;
  }

  p_output_handler = &a1[1].output_handler;
LABEL_19:
  if (p_output_handler - 12 != a1)
  {
    goto LABEL_343;
  }

LABEL_20:
  if ((*(p_output_handler + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v14 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      v15 = *(p_output_handler + 121);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = p_output_handler + 507;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = " ";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = v15;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s%sReceived connected event with state %u", buf, 0x1Cu);
    }
  }

  v16 = (p_output_handler + 503);
  v17 = p_output_handler[55];
  if (!v17)
  {
    output_handler = v3->output_handler;
    if (!output_handler)
    {
      goto LABEL_123;
    }

    v19 = output_handler->callbacks;
    if (!v19)
    {
      goto LABEL_123;
    }

    copy_info = v19->copy_info;
    if (!copy_info)
    {
      goto LABEL_123;
    }

    v21 = copy_info(output_handler, 255);
    v198 = 0;
    v199 = &v198;
    v200 = 0x2000000000;
    v201 = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 0x40000000;
    *&aBlock[16] = ___ZL34nw_masque_save_connection_metadataP9nw_masqueP11nw_protocol_block_invoke;
    v209 = &unk_1E6A2F850;
    v210[0] = &v198;
    if (!v21)
    {
      goto LABEL_113;
    }

    v22 = v21;
    _nw_array_apply(v21, aBlock);
    v23 = *(v199 + 24);
    if (!v23)
    {
LABEL_112:
      os_release(v22);
LABEL_113:
      _Block_object_dispose(&v198, 8);
      v17 = p_output_handler[55];
      if (!v17)
      {
        goto LABEL_123;
      }

      goto LABEL_114;
    }

    p_output_handler[55] = os_retain(v23);
    v25 = v3->output_handler;
    v24 = v3->handle;
    v26 = v3;
    if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v26 = *v3[1].flow_id) != 0)
    {
      v42 = v26[1].callbacks;
      v197 = 0;
      if (v42)
      {
        v26[1].callbacks = (&v42->add_input_handler + 1);
      }
    }

    else
    {
      v197 = 1;
    }

    if (v25)
    {
      v44 = v25->handle;
      v45 = v25;
      if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v45 = *v25[1].flow_id) != 0)
      {
        v47 = v45[1].callbacks;
        v46 = 0;
        if (v47)
        {
          v45[1].callbacks = (&v47->add_input_handler + 1);
        }
      }

      else
      {
        v46 = 1;
      }

      v48 = v3->callbacks;
      if (v48)
      {
        register_notification = v48->register_notification;
        if (register_notification)
        {
          register_notification(v3, v25, 5, 0, 0);
          goto LABEL_87;
        }
      }

      __nwlog_obj();
      name = v3->identifier->name;
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "__nw_protocol_register_notification";
      if (!name)
      {
        name = "invalid";
      }

      WORD6(buf[0]) = 2082;
      *(buf + 14) = name;
      WORD3(buf[1]) = 2048;
      *(&buf[1] + 1) = v3;
      v105 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v204 = OS_LOG_TYPE_DEFAULT;
      log = v105;
      if (__nwlog_fault(v105, type, &v204))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v189 = __nwlog_obj();
          v187 = type[0];
          if (!os_log_type_enabled(v189, type[0]))
          {
            goto LABEL_265;
          }

          v106 = v3->identifier->name;
          if (!v106)
          {
            v106 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_register_notification";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = v106;
          WORD3(buf[1]) = 2048;
          *(&buf[1] + 1) = v3;
          v107 = "%{public}s protocol %{public}s (%p) has invalid register_notification callback";
LABEL_263:
          v132 = v189;
          v133 = v187;
LABEL_264:
          _os_log_impl(&dword_181A37000, v132, v133, v107, buf, 0x20u);
          goto LABEL_265;
        }

        if (v204 != OS_LOG_TYPE_INFO)
        {
          v189 = __nwlog_obj();
          v187 = type[0];
          if (!os_log_type_enabled(v189, type[0]))
          {
            goto LABEL_265;
          }

          v131 = v3->identifier->name;
          if (!v131)
          {
            v131 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_register_notification";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = v131;
          WORD3(buf[1]) = 2048;
          *(&buf[1] + 1) = v3;
          v107 = "%{public}s protocol %{public}s (%p) has invalid register_notification callback, backtrace limit exceeded";
          goto LABEL_263;
        }

        v190 = __nw_create_backtrace_string();
        v188 = __nwlog_obj();
        v186 = type[0];
        v112 = os_log_type_enabled(v188, type[0]);
        if (v190)
        {
          if (v112)
          {
            v113 = v3->identifier->name;
            if (!v113)
            {
              v113 = "invalid";
            }

            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "__nw_protocol_register_notification";
            WORD6(buf[0]) = 2082;
            *(buf + 14) = v113;
            WORD3(buf[1]) = 2048;
            *(&buf[1] + 1) = v3;
            LOWORD(buf[2]) = 2082;
            *(&buf[2] + 2) = v190;
            _os_log_impl(&dword_181A37000, v188, v186, "%{public}s protocol %{public}s (%p) has invalid register_notification callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v190);
          goto LABEL_265;
        }

        if (v112)
        {
          v149 = v3->identifier->name;
          if (!v149)
          {
            v149 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "__nw_protocol_register_notification";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = v149;
          WORD3(buf[1]) = 2048;
          *(&buf[1] + 1) = v3;
          v107 = "%{public}s protocol %{public}s (%p) has invalid register_notification callback, no backtrace";
          v132 = v188;
          v133 = v186;
          goto LABEL_264;
        }
      }

LABEL_265:
      if (log)
      {
        free(log);
      }

LABEL_87:
      if ((v46 & 1) == 0)
      {
        v50 = v25->handle;
        if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (v25 = *v25[1].flow_id) != 0)
        {
          v51 = v25[1].callbacks;
          if (v51)
          {
            v52 = (v51 - 1);
            v25[1].callbacks = v52;
            if (!v52)
            {
              v53 = *v25[1].flow_id;
              if (v53)
              {
                *v25[1].flow_id = 0;
                v53[2](v53);
                _Block_release(v53);
              }

              if (v25[1].flow_id[8])
              {
                v54 = *v25[1].flow_id;
                if (v54)
                {
                  _Block_release(v54);
                }
              }

              v55 = v25;
              goto LABEL_99;
            }
          }
        }
      }

      goto LABEL_100;
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "__nw_protocol_register_notification";
    v108 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v204 = OS_LOG_TYPE_DEFAULT;
    loga = v108;
    if (__nwlog_fault(v108, type, &v204))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v109 = __nwlog_obj();
        v110 = type[0];
        if (!os_log_type_enabled(v109, type[0]))
        {
          goto LABEL_288;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_register_notification";
        v111 = "%{public}s called with null other_protocol";
LABEL_286:
        v146 = v109;
        v147 = v110;
LABEL_287:
        _os_log_impl(&dword_181A37000, v146, v147, v111, buf, 0xCu);
        goto LABEL_288;
      }

      if (v204 != OS_LOG_TYPE_INFO)
      {
        v109 = __nwlog_obj();
        v110 = type[0];
        if (!os_log_type_enabled(v109, type[0]))
        {
          goto LABEL_288;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_register_notification";
        v111 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_286;
      }

      v128 = __nw_create_backtrace_string();
      v129 = __nwlog_obj();
      v191 = type[0];
      v130 = os_log_type_enabled(v129, type[0]);
      if (v128)
      {
        if (v130)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "__nw_protocol_register_notification";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = v128;
          _os_log_impl(&dword_181A37000, v129, v191, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v128);
      }

      else if (v130)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "__nw_protocol_register_notification";
        v111 = "%{public}s called with null other_protocol, no backtrace";
        v146 = v129;
        v147 = v191;
        goto LABEL_287;
      }
    }

LABEL_288:
    if (loga)
    {
      v55 = loga;
LABEL_99:
      free(v55);
    }

LABEL_100:
    if ((v197 & 1) == 0)
    {
      v56 = v3->handle;
      v57 = v3;
      if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v57 = *v3[1].flow_id) != 0)
      {
        v58 = v57[1].callbacks;
        if (v58)
        {
          v59 = (v58 - 1);
          v57[1].callbacks = v59;
          if (!v59)
          {
            v60 = *v57[1].flow_id;
            if (v60)
            {
              *v57[1].flow_id = 0;
              v60[2](v60);
              _Block_release(v60);
            }

            if (v57[1].flow_id[8])
            {
              v61 = *v57[1].flow_id;
              if (v61)
              {
                _Block_release(v61);
              }
            }

            free(v57);
          }
        }
      }
    }

    goto LABEL_112;
  }

LABEL_114:
  if (nw_http_connection_metadata_get_secondary_certificate_count(v17) && !*(p_output_handler + 123) && !*(p_output_handler + 121))
  {
    if ((*(p_output_handler + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v62 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = p_output_handler + 507;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = " ";
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_INFO, "%{public}s%sJoined HTTP with secondary certificates, checking for trusted endpoints", buf, 0x16u);
      }
    }

    if (nw_masque_setup_reverse_proxy(p_output_handler))
    {
      goto LABEL_343;
    }
  }

LABEL_123:
  default_input_handler = v3->default_input_handler;
  if (default_input_handler)
  {
    v64 = default_input_handler->callbacks;
    if (v64)
    {
      connected = v64->connected;
      if (connected)
      {
        connected(default_input_handler, a2);
      }
    }
  }

  if (v3->output_handler != a2 || *(p_output_handler + 121))
  {
    goto LABEL_343;
  }

  v66 = p_output_handler[55];
  if (v66)
  {
    *aBlock = 0;
    LODWORD(v198) = 0;
    nw_http_connection_metadata_get_message_counts(v66, aBlock, &v198);
    if (!v198)
    {
      v67 = *v16;
      *v16 |= 2u;
      if ((v67 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v68 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_protocol_masque_connected";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = p_output_handler + 507;
          WORD3(buf[1]) = 2080;
          *(&buf[1] + 1) = " ";
          LOWORD(buf[2]) = 1024;
          *(&buf[2] + 2) = *aBlock;
          _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNew request, no responses received on connection yet (%u requests)", buf, 0x26u);
        }
      }
    }

    if ((*v16 & 0x10003) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v69 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136446722;
        *(buf + 4) = p_output_handler + 507;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = " ";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = *aBlock;
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_INFO, "%{public}s%sRequest blocked on getting new streams after %u requests", buf, 0x1Cu);
      }
    }
  }

  nw_protocol_masque_reset_demux_protocol(v3);
  v70 = p_output_handler[41];
  if (v70)
  {
    v71 = nw_protocol_options_access_handle(v70, &__block_literal_global_74);
  }

  else
  {
    v71 = 0;
  }

  v72 = *(p_output_handler - 6);
  if (!v72)
  {
    goto LABEL_342;
  }

  if (nw_protocol_input_handler_is_connection_flow(v72))
  {
    if (nw_parameters_get_fast_open_enabled(p_output_handler[38]))
    {
      *v16 |= 0x800u;
      goto LABEL_155;
    }

LABEL_342:
    nw_masque_send_connect(p_output_handler);
    goto LABEL_343;
  }

  v73 = *(p_output_handler - 6);
  if (!v73)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_input_handler_is_oblivious_http";
    v142 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v142, aBlock, type))
    {
      goto LABEL_334;
    }

    if (aBlock[0] == 17)
    {
      v143 = __nwlog_obj();
      v144 = aBlock[0];
      if (!os_log_type_enabled(v143, aBlock[0]))
      {
        goto LABEL_334;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_input_handler_is_oblivious_http";
      v145 = "%{public}s called with null input_handler";
    }

    else
    {
      if (type[0] == OS_LOG_TYPE_INFO)
      {
        v159 = __nw_create_backtrace_string();
        v160 = __nwlog_obj();
        v144 = aBlock[0];
        logc = v160;
        v161 = os_log_type_enabled(v160, aBlock[0]);
        if (v159)
        {
          if (v161)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_masque_input_handler_is_oblivious_http";
            WORD6(buf[0]) = 2082;
            *(buf + 14) = v159;
            _os_log_impl(&dword_181A37000, logc, v144, "%{public}s called with null input_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v159);
        }

        else if (v161)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_masque_input_handler_is_oblivious_http";
          v145 = "%{public}s called with null input_handler, no backtrace";
          v166 = logc;
          goto LABEL_333;
        }

LABEL_334:
        if (v142)
        {
          free(v142);
        }

        if (v71)
        {
          goto LABEL_155;
        }

        goto LABEL_337;
      }

      v143 = __nwlog_obj();
      v144 = aBlock[0];
      if (!os_log_type_enabled(v143, aBlock[0]))
      {
        goto LABEL_334;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_input_handler_is_oblivious_http";
      v145 = "%{public}s called with null input_handler, backtrace limit exceeded";
    }

    v166 = v143;
LABEL_333:
    _os_log_impl(&dword_181A37000, v166, v144, v145, buf, 0xCu);
    goto LABEL_334;
  }

  v74 = *(v73 + 16);
  if (v74 && !strncmp(v74, "ohttp", 5uLL) || (v75 = *(v73 + 48)) != 0 && (v76 = *(v75 + 16)) != 0 && !strncmp(v76, "ohttp", 5uLL))
  {
    *v16 |= 0x3000u;
    nw_masque_mark_connected(p_output_handler);
    goto LABEL_343;
  }

  if (v71)
  {
    goto LABEL_155;
  }

LABEL_337:
  v167 = *(p_output_handler - 6);
  if (!v167)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_input_handler_always_supports_fast_open";
    v174 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v174, aBlock, type))
    {
      goto LABEL_392;
    }

    if (aBlock[0] == 17)
    {
      v175 = __nwlog_obj();
      v176 = aBlock[0];
      if (!os_log_type_enabled(v175, aBlock[0]))
      {
        goto LABEL_392;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_input_handler_always_supports_fast_open";
      v177 = "%{public}s called with null input_handler";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v181 = __nw_create_backtrace_string();
      v175 = __nwlog_obj();
      v176 = aBlock[0];
      v182 = os_log_type_enabled(v175, aBlock[0]);
      if (v181)
      {
        if (v182)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_masque_input_handler_always_supports_fast_open";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = v181;
          _os_log_impl(&dword_181A37000, v175, v176, "%{public}s called with null input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v181);
        goto LABEL_392;
      }

      if (!v182)
      {
LABEL_392:
        if (v174)
        {
          free(v174);
        }

        goto LABEL_342;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_input_handler_always_supports_fast_open";
      v177 = "%{public}s called with null input_handler, no backtrace";
    }

    else
    {
      v175 = __nwlog_obj();
      v176 = aBlock[0];
      if (!os_log_type_enabled(v175, aBlock[0]))
      {
        goto LABEL_392;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_input_handler_always_supports_fast_open";
      v177 = "%{public}s called with null input_handler, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v175, v176, v177, buf, 0xCu);
    goto LABEL_392;
  }

  v168 = *(v167 + 16);
  if (!v168 || strcmp(*(v167 + 16), "tls") && strcmp(v168, "quic") && strcmp(v168, "quic-connection"))
  {
    goto LABEL_342;
  }

LABEL_155:
  *(p_output_handler + 121) = 1;
  if ((*v16 & 0x200000) != 0)
  {
    v77 = p_output_handler[30];
    if (v77)
    {
      *v16 &= ~0x400000u;
      *&buf[0] = 0;
      *(&buf[0] + 1) = buf;
      *&buf[1] = 0x3802000000;
      *(&buf[1] + 1) = __Block_byref_object_copy__75;
      *&buf[2] = __Block_byref_object_dispose__76;
      *(&buf[2] + 1) = 0;
      *&buf[3] = &buf[2] + 8;
      v198 = MEMORY[0x1E69E9820];
      v199 = 0x40000000;
      v200 = ___ZL29nw_masque_wait_for_early_dataP9nw_masqueb_block_invoke;
      v201 = &unk_1E6A2F908;
      v202 = buf;
      do
      {
        if (!v77)
        {
          break;
        }

        identifier = v77->identifier;
        v79 = (v200)(&v198);
        v77 = identifier;
      }

      while ((v79 & 1) != 0);
      v80 = *(&buf[0] + 1);
      nw::share(type, p_output_handler - 12);
      v81 = *(p_output_handler - 9);
      if (v81)
      {
        v82 = *(v81 + 96);
        if (v82)
        {
          v82(p_output_handler - 12, v80 + 40);
LABEL_163:
          if (v206)
          {
            v83 = *type;
            if (*type)
            {
              v84 = *(*type + 40);
              if (v84 == &nw_protocol_ref_counted_handle || v84 == &nw_protocol_ref_counted_additional_handle && (v83 = *(*type + 64)) != 0)
              {
                v85 = *(v83 + 88);
                if (v85)
                {
                  v86 = v85 - 1;
                  *(v83 + 88) = v86;
                  if (!v86)
                  {
                    v87 = *(v83 + 64);
                    if (v87)
                    {
                      *(v83 + 64) = 0;
                      v87[2](v87);
                      _Block_release(v87);
                    }

                    if (*(v83 + 72))
                    {
                      v88 = *(v83 + 64);
                      if (v88)
                      {
                        _Block_release(v88);
                      }
                    }

                    free(v83);
                  }
                }
              }
            }
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_343;
        }
      }

      __nwlog_obj();
      v150 = *(p_output_handler - 10);
      *aBlock = 136446722;
      *&aBlock[4] = "__nw_protocol_finalize_output_frames";
      if (!v150)
      {
        v150 = "invalid";
      }

      *&aBlock[12] = 2082;
      *&aBlock[14] = v150;
      *&aBlock[22] = 2048;
      v209 = (p_output_handler - 12);
      v151 = _os_log_send_and_compose_impl();
      v204 = OS_LOG_TYPE_ERROR;
      v203 = 0;
      if (__nwlog_fault(v151, &v204, &v203))
      {
        if (v204 == OS_LOG_TYPE_FAULT)
        {
          v152 = __nwlog_obj();
          v153 = v204;
          if (!os_log_type_enabled(v152, v204))
          {
            goto LABEL_379;
          }

          v154 = *(p_output_handler - 10);
          if (!v154)
          {
            v154 = "invalid";
          }

          *aBlock = 136446722;
          *&aBlock[4] = "__nw_protocol_finalize_output_frames";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v154;
          *&aBlock[22] = 2048;
          v209 = (p_output_handler - 12);
          v155 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
LABEL_377:
          v184 = v152;
LABEL_378:
          _os_log_impl(&dword_181A37000, v184, v153, v155, aBlock, 0x20u);
          goto LABEL_379;
        }

        if (v203 != 1)
        {
          v152 = __nwlog_obj();
          v153 = v204;
          if (!os_log_type_enabled(v152, v204))
          {
            goto LABEL_379;
          }

          v183 = *(p_output_handler - 10);
          if (!v183)
          {
            v183 = "invalid";
          }

          *aBlock = 136446722;
          *&aBlock[4] = "__nw_protocol_finalize_output_frames";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v183;
          *&aBlock[22] = 2048;
          v209 = (p_output_handler - 12);
          v155 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
          goto LABEL_377;
        }

        v162 = __nw_create_backtrace_string();
        v163 = __nwlog_obj();
        v153 = v204;
        logd = v163;
        v164 = os_log_type_enabled(v163, v204);
        if (v162)
        {
          if (v164)
          {
            v165 = *(p_output_handler - 10);
            if (!v165)
            {
              v165 = "invalid";
            }

            *aBlock = 136446978;
            *&aBlock[4] = "__nw_protocol_finalize_output_frames";
            *&aBlock[12] = 2082;
            *&aBlock[14] = v165;
            *&aBlock[22] = 2048;
            v209 = (p_output_handler - 12);
            LOWORD(v210[0]) = 2082;
            *(v210 + 2) = v162;
            _os_log_impl(&dword_181A37000, logd, v153, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", aBlock, 0x2Au);
          }

          free(v162);
          goto LABEL_379;
        }

        if (v164)
        {
          v185 = *(p_output_handler - 10);
          if (!v185)
          {
            v185 = "invalid";
          }

          *aBlock = 136446722;
          *&aBlock[4] = "__nw_protocol_finalize_output_frames";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v185;
          *&aBlock[22] = 2048;
          v209 = (p_output_handler - 12);
          v155 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
          v184 = logd;
          goto LABEL_378;
        }
      }

LABEL_379:
      if (v151)
      {
        free(v151);
      }

      goto LABEL_163;
    }
  }

  v89 = *(p_output_handler - 6);
  if (v89)
  {
    v90 = *(v89 + 24);
    if (v90)
    {
      v91 = *(v90 + 40);
      if (v91)
      {
        v91(v89, p_output_handler - 12);
        goto LABEL_343;
      }
    }
  }

  __nwlog_obj();
  v118 = *(p_output_handler - 6);
  v119 = "invalid";
  if (v118)
  {
    v120 = *(v118 + 16);
    if (v120)
    {
      v119 = v120;
    }
  }

  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "nw_masque_wait_for_early_data";
  WORD6(buf[0]) = 2082;
  *(buf + 14) = v119;
  v121 = _os_log_send_and_compose_impl();
  aBlock[0] = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v121, aBlock, type))
  {
    goto LABEL_366;
  }

  if (aBlock[0] == 17)
  {
    v122 = __nwlog_obj();
    v123 = aBlock[0];
    if (!os_log_type_enabled(v122, aBlock[0]))
    {
      goto LABEL_366;
    }

    v124 = *(p_output_handler - 6);
    v125 = "invalid";
    if (v124)
    {
      v126 = *(v124 + 16);
      if (v126)
      {
        v125 = v126;
      }
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_masque_wait_for_early_data";
    WORD6(buf[0]) = 2082;
    *(buf + 14) = v125;
    v127 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_365:
    _os_log_impl(&dword_181A37000, v122, v123, v127, buf, 0x16u);
    goto LABEL_366;
  }

  if (type[0] != OS_LOG_TYPE_INFO)
  {
    v122 = __nwlog_obj();
    v123 = aBlock[0];
    if (!os_log_type_enabled(v122, aBlock[0]))
    {
      goto LABEL_366;
    }

    v156 = *(p_output_handler - 6);
    v157 = "invalid";
    if (v156)
    {
      v158 = *(v156 + 16);
      if (v158)
      {
        v157 = v158;
      }
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_masque_wait_for_early_data";
    WORD6(buf[0]) = 2082;
    *(buf + 14) = v157;
    v127 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
    goto LABEL_365;
  }

  v137 = __nw_create_backtrace_string();
  v122 = __nwlog_obj();
  v123 = aBlock[0];
  v138 = os_log_type_enabled(v122, aBlock[0]);
  if (!v137)
  {
    if (!v138)
    {
      goto LABEL_366;
    }

    v178 = *(p_output_handler - 6);
    v179 = "invalid";
    if (v178)
    {
      v180 = *(v178 + 16);
      if (v180)
      {
        v179 = v180;
      }
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_masque_wait_for_early_data";
    WORD6(buf[0]) = 2082;
    *(buf + 14) = v179;
    v127 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
    goto LABEL_365;
  }

  if (v138)
  {
    v139 = *(p_output_handler - 6);
    v140 = "invalid";
    if (v139)
    {
      v141 = *(v139 + 16);
      if (v141)
      {
        v140 = v141;
      }
    }

    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "nw_masque_wait_for_early_data";
    WORD6(buf[0]) = 2082;
    *(buf + 14) = v140;
    WORD3(buf[1]) = 2082;
    *(&buf[1] + 1) = v137;
    _os_log_impl(&dword_181A37000, v122, v123, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v137);
LABEL_366:
  if (v121)
  {
    v33 = v121;
LABEL_45:
    free(v33);
  }

LABEL_343:
  if ((v6 & 1) == 0)
  {
    v169 = v3->handle;
    if (v169 == &nw_protocol_ref_counted_handle || v169 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v170 = v3[1].callbacks;
      if (v170)
      {
        v171 = (v170 - 1);
        v3[1].callbacks = v171;
        if (!v171)
        {
          v172 = *v3[1].flow_id;
          if (v172)
          {
            *v3[1].flow_id = 0;
            v172[2](v172);
            _Block_release(v172);
          }

          if (v3[1].flow_id[8])
          {
            v173 = *v3[1].flow_id;
            if (v173)
            {
              _Block_release(v173);
            }
          }

LABEL_354:
          free(v3);
        }
      }
    }
  }
}

id nw_content_context_copy_first_repliable_metadata(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v1 + 28);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v18 = __Block_byref_object_copy__44932;
      v19 = __Block_byref_object_dispose__44933;
      v20 = 0;
      v4 = *&v2[22]._os_unfair_lock_opaque;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_content_context_copy_first_repliable_metadata_block_invoke;
      aBlock[3] = &unk_1E6A39B60;
      aBlock[4] = buf;
      if (v4)
      {
        _nw_array_apply(v4, aBlock);
      }

      os_unfair_lock_unlock(v2 + 28);
      v3 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    goto LABEL_9;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_content_context_copy_first_repliable_metadata";
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
        *&buf[4] = "nw_content_context_copy_first_repliable_metadata";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          *&buf[4] = "nw_content_context_copy_first_repliable_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_content_context_copy_first_repliable_metadata";
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
        *&buf[4] = "nw_content_context_copy_first_repliable_metadata";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_9:

  return v3;
}

void sub_181D98F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_content_context_copy_first_repliable_metadata_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nw_protocol_metadata_supports_replies(v5);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  return v6 ^ 1u;
}

uint64_t nw_protocol_metadata_is_http_connection(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http_connection_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
    }

    v2 = nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_connection_definition_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_metadata_is_http_connection";
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
        v14 = "nw_protocol_metadata_is_http_connection";
        v8 = "%{public}s called with null metadata";
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
            v14 = "nw_protocol_metadata_is_http_connection";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_metadata_is_http_connection";
        v8 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_metadata_is_http_connection";
        v8 = "%{public}s called with null metadata, backtrace limit exceeded";
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

uint64_t ___ZL34nw_masque_save_connection_metadataP9nw_masqueP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return 1;
}

uint64_t nw_protocol_register_notification(void *a1, uint64_t a2, int a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v26 = v6[11];
      if (v26)
      {
        v7 = 0;
        v6[11] = v26 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
LABEL_38:
          __nwlog_obj();
          *buf = 136446210;
          v61 = "__nw_protocol_register_notification";
          v27 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v58 = 0;
          if (__nwlog_fault(v27, &type, &v58))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v28 = __nwlog_obj();
              v29 = type;
              if (os_log_type_enabled(v28, type))
              {
                *buf = 136446210;
                v61 = "__nw_protocol_register_notification";
                v30 = "%{public}s called with null other_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
              }
            }

            else if (v58 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v28 = __nwlog_obj();
              v29 = type;
              v50 = os_log_type_enabled(v28, type);
              if (backtrace_string)
              {
                if (v50)
                {
                  *buf = 136446466;
                  v61 = "__nw_protocol_register_notification";
                  v62 = 2082;
                  v63 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v50)
              {
                *buf = 136446210;
                v61 = "__nw_protocol_register_notification";
                v30 = "%{public}s called with null other_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v28 = __nwlog_obj();
              v29 = type;
              if (os_log_type_enabled(v28, type))
              {
                *buf = 136446210;
                v61 = "__nw_protocol_register_notification";
                v30 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v27)
          {
            free(v27);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v31 = *(v9 + 88);
      if (v31)
      {
        v10 = 0;
        *(v9 + 88) = v31 + 1;
        if (!a3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_45:
        __nwlog_obj();
        *buf = 136446210;
        v61 = "__nw_protocol_register_notification";
        v32 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v58 = 0;
        if (!__nwlog_fault(v32, &type, &v58))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v33 = __nwlog_obj();
          v34 = type;
          if (!os_log_type_enabled(v33, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v61 = "__nw_protocol_register_notification";
          v35 = "%{public}s called with null type";
          goto LABEL_117;
        }

        if (v58 != 1)
        {
          v33 = __nwlog_obj();
          v34 = type;
          if (!os_log_type_enabled(v33, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v61 = "__nw_protocol_register_notification";
          v35 = "%{public}s called with null type, backtrace limit exceeded";
          goto LABEL_117;
        }

        v51 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v52 = os_log_type_enabled(v33, type);
        if (v51)
        {
          if (v52)
          {
            *buf = 136446466;
            v61 = "__nw_protocol_register_notification";
            v62 = 2082;
            v63 = v51;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v51);
          if (!v32)
          {
LABEL_121:
            result = 0;
            if (v10)
            {
LABEL_22:
              if ((v7 & 1) == 0)
              {
                v20 = v4[5];
                if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v4 = v4[8]) != 0)
                {
                  v21 = v4[11];
                  if (v21)
                  {
                    v22 = v21 - 1;
                    v4[11] = v22;
                    if (!v22)
                    {
                      v23 = result;
                      v24 = v4[8];
                      if (v24)
                      {
                        v4[8] = 0;
                        v24[2](v24);
                        _Block_release(v24);
                      }

                      if (v4[9])
                      {
                        v25 = v4[8];
                        if (v25)
                        {
                          _Block_release(v25);
                        }
                      }

                      free(v4);
                      return v23;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v14 = *(v3 + 40);
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v15 = *(v3 + 88);
              if (v15)
              {
                v16 = v15 - 1;
                *(v3 + 88) = v16;
                if (!v16)
                {
                  v17 = result;
                  v18 = *(v3 + 64);
                  if (v18)
                  {
                    *(v3 + 64) = 0;
                    v18[2](v18);
                    _Block_release(v18);
                  }

                  if (*(v3 + 72))
                  {
                    v19 = *(v3 + 64);
                    if (v19)
                    {
                      _Block_release(v19);
                    }
                  }

                  free(v3);
                  result = v17;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v32);
          goto LABEL_121;
        }

        if (v52)
        {
          *buf = 136446210;
          v61 = "__nw_protocol_register_notification";
          v35 = "%{public}s called with null type, no backtrace";
LABEL_117:
          v55 = v33;
          v56 = v34;
          v57 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 144);
      if (v12)
      {
        result = v12(a1, a2);
        if (v10)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v36 = v4[2];
    *buf = 136446722;
    v61 = "__nw_protocol_register_notification";
    if (!v36)
    {
      v36 = "invalid";
    }

    v62 = 2082;
    v63 = v36;
    v64 = 2048;
    v65 = v4;
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v32, &type, &v58))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_119;
        }

        v39 = v4[2];
        if (!v39)
        {
          v39 = "invalid";
        }

        *buf = 136446722;
        v61 = "__nw_protocol_register_notification";
        v62 = 2082;
        v63 = v39;
        v64 = 2048;
        v65 = v4;
        v35 = "%{public}s protocol %{public}s (%p) has invalid register_notification callback";
      }

      else if (v58 == 1)
      {
        v44 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type;
        v45 = os_log_type_enabled(v37, type);
        if (v44)
        {
          if (v45)
          {
            v46 = v4[2];
            if (!v46)
            {
              v46 = "invalid";
            }

            *buf = 136446978;
            v61 = "__nw_protocol_register_notification";
            v62 = 2082;
            v63 = v46;
            v64 = 2048;
            v65 = v4;
            v66 = 2082;
            v67 = v44;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s protocol %{public}s (%p) has invalid register_notification callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v44);
          goto LABEL_119;
        }

        if (!v45)
        {
          goto LABEL_119;
        }

        v54 = v4[2];
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446722;
        v61 = "__nw_protocol_register_notification";
        v62 = 2082;
        v63 = v54;
        v64 = 2048;
        v65 = v4;
        v35 = "%{public}s protocol %{public}s (%p) has invalid register_notification callback, no backtrace";
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_119;
        }

        v53 = v4[2];
        if (!v53)
        {
          v53 = "invalid";
        }

        *buf = 136446722;
        v61 = "__nw_protocol_register_notification";
        v62 = 2082;
        v63 = v53;
        v64 = 2048;
        v65 = v4;
        v35 = "%{public}s protocol %{public}s (%p) has invalid register_notification callback, backtrace limit exceeded";
      }

      v55 = v37;
      v56 = v38;
      v57 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v55, v56, v35, buf, v57);
    }

LABEL_119:
    if (!v32)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  __nwlog_obj();
  *buf = 136446210;
  v61 = "__nw_protocol_register_notification";
  v40 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v58 = 0;
  if (__nwlog_fault(v40, &type, &v58))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v61 = "__nw_protocol_register_notification";
        v43 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v48 = os_log_type_enabled(v41, type);
      if (v47)
      {
        if (v48)
        {
          *buf = 136446466;
          v61 = "__nw_protocol_register_notification";
          v62 = 2082;
          v63 = v47;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_106;
      }

      if (v48)
      {
        *buf = 136446210;
        v61 = "__nw_protocol_register_notification";
        v43 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v61 = "__nw_protocol_register_notification";
        v43 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v40)
  {
    free(v40);
  }

  return 0;
}

void nw_endpoint_handler_unregister_context(void *a1, void *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v83 = __nwlog_obj();
    *buf = 136446210;
    v104 = "nw_endpoint_handler_unregister_context";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v101 = 0;
    if (!__nwlog_fault(v24, &type, &v101))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v84 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v104 = "nw_endpoint_handler_unregister_context";
        _os_log_impl(&dword_181A37000, v25, v84, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v101 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v86 = type;
      v87 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v87)
        {
          *buf = 136446466;
          v104 = "nw_endpoint_handler_unregister_context";
          v105 = 2082;
          v106 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v86, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_90;
      }

      if (v87)
      {
        *buf = 136446210;
        v104 = "nw_endpoint_handler_unregister_context";
        _os_log_impl(&dword_181A37000, v25, v86, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v88 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v104 = "nw_endpoint_handler_unregister_context";
        _os_log_impl(&dword_181A37000, v25, v88, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_89:

    goto LABEL_90;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = v7;
    if ((*(v7 + 35) & 2) == 0)
    {
      if (*(v7 + 96))
      {
        v9 = *(v7 + 108);
        if (v9)
        {
          node = nw_hash_table_get_node(v9, v4, 0);
          if (node)
          {
            v11 = *(node + 16);
            v12 = *(v11 + 332);
            *(v11 + 332) = v12 | 0x100;
            if ((v12 & 0x200) == 0 && (v13 = *(v11 + 32)) != 0 && (v14 = *(v13 + 24)) != 0 && *(v14 + 32))
            {
              v15 = v5;
              v16 = *(v15 + 284);

              if ((v16 & 0x40) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v17 = gconnectionLogObj;
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  id_string = nw_endpoint_handler_get_id_string(v15);
                  v91 = nw_endpoint_handler_dry_run_string(v15);
                  v93 = id_string;
                  v97 = nw_endpoint_handler_copy_endpoint(v15);
                  logging_description = nw_endpoint_get_logging_description(v97);
                  v19 = nw_endpoint_handler_state_string(v15);
                  v20 = nw_endpoint_handler_mode_string(v15);
                  v21 = nw_endpoint_handler_copy_current_path(v15);
                  *buf = 136448002;
                  v104 = "nw_endpoint_handler_unregister_context";
                  v105 = 2082;
                  v106 = v93;
                  v107 = 2082;
                  v108 = v91;
                  v109 = 2082;
                  v110 = logging_description;
                  v111 = 2082;
                  v112 = v19;
                  v113 = 2082;
                  v114 = v20;
                  v115 = 2114;
                  v116 = v21;
                  v117 = 2048;
                  v118 = v11;
                  _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Unregistering protocol %p by disconnecting", buf, 0x52u);
                }
              }

              (*(*(v13 + 24) + 32))(v13, v11);
            }

            else
            {
              v99 = node;
              v53 = v5;
              v54 = *(v53 + 284);

              if ((v54 & 0x40) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v55 = gconnectionLogObj;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v56 = nw_endpoint_handler_get_id_string(v53);
                  v90 = nw_endpoint_handler_dry_run_string(v53);
                  v92 = v56;
                  v96 = nw_endpoint_handler_copy_endpoint(v53);
                  v57 = nw_endpoint_get_logging_description(v96);
                  v58 = nw_endpoint_handler_state_string(v53);
                  v59 = nw_endpoint_handler_mode_string(v53);
                  v60 = nw_endpoint_handler_copy_current_path(v53);
                  *buf = 136448002;
                  v104 = "nw_endpoint_handler_unregister_context";
                  v105 = 2082;
                  v106 = v92;
                  v107 = 2082;
                  v108 = v90;
                  v109 = 2082;
                  v110 = v57;
                  v111 = 2082;
                  v112 = v58;
                  v113 = 2082;
                  v114 = v59;
                  v115 = 2114;
                  v116 = v60;
                  v117 = 2048;
                  v118 = v11;
                  _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Unregistering protocol %p immediately", buf, 0x52u);
                }
              }

              nw_hash_table_remove_node(v8[108], v99);
            }
          }

          goto LABEL_118;
        }

        v44 = v5;
        v45 = *(v44 + 284);

        if ((v45 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v37 = gconnectionLogObj;
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_117;
          }

          v46 = v44;

          v47 = v46;
          v48 = *(v44 + 284);

          if (v48)
          {
            v49 = "dry-run ";
          }

          else
          {
            v49 = "";
          }

          v50 = nw_endpoint_handler_copy_endpoint(v47);
          v51 = v50;
          if (v50)
          {
            v95 = _nw_endpoint_get_logging_description(v50);
          }

          else
          {
            v95 = "<NULL>";
          }

          v100 = v49;
          id_str = v46->id_str;

          v71 = v47;
          v72 = v71;
          v73 = v71[30];
          if (v73 > 5)
          {
            v74 = "unknown-state";
          }

          else
          {
            v74 = off_1E6A31048[v73];
          }

          v75 = v72;
          v76 = v75;
          v77 = v5->mode;
          if (v77 > 2)
          {
            switch(v77)
            {
              case 3:
                v78 = "proxy";
                goto LABEL_116;
              case 4:
                v78 = "fallback";
                goto LABEL_116;
              case 5:
                v78 = "transform";
                goto LABEL_116;
            }
          }

          else
          {
            switch(v77)
            {
              case 0:
                v78 = "path";
                goto LABEL_116;
              case 1:
                v78 = "resolver";
                goto LABEL_116;
              case 2:
                v78 = nw_endpoint_flow_mode_string(v75[33]);
LABEL_116:

                v81 = v76;
                os_unfair_lock_lock(v81 + 28);
                v82 = v81[8];
                os_unfair_lock_unlock(v81 + 28);

                *buf = 136447746;
                v104 = "nw_endpoint_handler_unregister_context";
                v105 = 2082;
                v106 = id_str;
                v107 = 2082;
                v108 = v100;
                v109 = 2082;
                v110 = v95;
                v111 = 2082;
                v112 = v74;
                v113 = 2082;
                v114 = v78;
                v115 = 2114;
                v116 = v82;
                _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot unregister after flow table is released", buf, 0x48u);

                goto LABEL_117;
            }
          }

          v78 = "unknown-mode";
          goto LABEL_116;
        }
      }

LABEL_118:

      goto LABEL_119;
    }

    v28 = *(v7 + 117);
    if (v28)
    {
      nw_endpoint_handler_unregister_context(v28, v4);
      goto LABEL_118;
    }

    v35 = v5;
    v36 = *(v35 + 284);

    if ((v36 & 0x40) != 0)
    {
      goto LABEL_118;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v37 = gconnectionLogObj;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_117;
    }

    v38 = v35;

    v39 = v38;
    v40 = *(v35 + 284);

    if (v40)
    {
      v41 = "dry-run ";
    }

    else
    {
      v41 = "";
    }

    v42 = nw_endpoint_handler_copy_endpoint(v39);
    v43 = v42;
    v98 = v41;
    if (v42)
    {
      v94 = _nw_endpoint_get_logging_description(v42);
    }

    else
    {
      v94 = "<NULL>";
    }

    v61 = v38->id_str;

    v62 = v39;
    v63 = v62;
    v64 = v62[30];
    if (v64 > 5)
    {
      v65 = "unknown-state";
    }

    else
    {
      v65 = off_1E6A31048[v64];
    }

    v66 = v63;
    v67 = v66;
    v68 = v5->mode;
    if (v68 > 2)
    {
      switch(v68)
      {
        case 3:
          v69 = "proxy";
          goto LABEL_110;
        case 4:
          v69 = "fallback";
          goto LABEL_110;
        case 5:
          v69 = "transform";
          goto LABEL_110;
      }
    }

    else
    {
      switch(v68)
      {
        case 0:
          v69 = "path";
          goto LABEL_110;
        case 1:
          v69 = "resolver";
          goto LABEL_110;
        case 2:
          v69 = nw_endpoint_flow_mode_string(v66[33]);
LABEL_110:

          v79 = v67;
          os_unfair_lock_lock(v79 + 28);
          v80 = v79[8];
          os_unfair_lock_unlock(v79 + 28);

          *buf = 136447746;
          v104 = "nw_endpoint_handler_unregister_context";
          v105 = 2082;
          v106 = v61;
          v107 = 2082;
          v108 = v98;
          v109 = 2082;
          v110 = v94;
          v111 = 2082;
          v112 = v65;
          v113 = 2082;
          v114 = v69;
          v115 = 2114;
          v116 = v80;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot unregister, no connected handler", buf, 0x48u);

LABEL_117:
          goto LABEL_118;
      }
    }

    v69 = "unknown-mode";
    goto LABEL_110;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  if (mode > 5)
  {
    v23 = "unknown-mode";
  }

  else
  {
    v23 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v104 = "nw_endpoint_handler_unregister_context";
  v105 = 2082;
  v106 = v23;
  v107 = 2082;
  v108 = "flow";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v101 = 0;
  if (__nwlog_fault(v24, &type, &v101))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        if (mode > 5)
        {
          v27 = "unknown-mode";
        }

        else
        {
          v27 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v104 = "nw_endpoint_handler_unregister_context";
        v105 = 2082;
        v106 = v27;
        v107 = 2082;
        v108 = "flow";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    else if (v101 == 1)
    {
      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v30 = type;
      v31 = os_log_type_enabled(v25, type);
      if (v29)
      {
        if (v31)
        {
          if (mode > 5)
          {
            v32 = "unknown-mode";
          }

          else
          {
            v32 = off_1E6A31018[mode];
          }

          *buf = 136446978;
          v104 = "nw_endpoint_handler_unregister_context";
          v105 = 2082;
          v106 = v32;
          v107 = 2082;
          v108 = "flow";
          v109 = 2082;
          v110 = v29;
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v29);
        if (v24)
        {
          goto LABEL_91;
        }

        goto LABEL_119;
      }

      if (v31)
      {
        if (mode > 5)
        {
          v52 = "unknown-mode";
        }

        else
        {
          v52 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v104 = "nw_endpoint_handler_unregister_context";
        v105 = 2082;
        v106 = v52;
        v107 = 2082;
        v108 = "flow";
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v33 = type;
      if (os_log_type_enabled(v25, type))
      {
        if (mode > 5)
        {
          v34 = "unknown-mode";
        }

        else
        {
          v34 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v104 = "nw_endpoint_handler_unregister_context";
        v105 = 2082;
        v106 = v34;
        v107 = 2082;
        v108 = "flow";
        _os_log_impl(&dword_181A37000, v25, v33, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_89;
  }

LABEL_90:
  if (v24)
  {
LABEL_91:
    free(v24);
  }

LABEL_119:
}
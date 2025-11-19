void nw_protocol_http1_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v391 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v119, v389, v385))
    {
      goto LABEL_453;
    }

    if (v389[0] == 17)
    {
      v120 = __nwlog_obj();
      v121 = v389[0];
      if (!os_log_type_enabled(v120, v389[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null protocol";
    }

    else if (v385[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = v389[0];
      v130 = os_log_type_enabled(v120, v389[0]);
      if (backtrace_string)
      {
        if (v130)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_453:
        if (!v119)
        {
          goto LABEL_455;
        }

LABEL_454:
        free(v119);
        goto LABEL_455;
      }

      if (!v130)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v120 = __nwlog_obj();
      v121 = v389[0];
      if (!os_log_type_enabled(v120, v389[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_452;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v119, v389, v385))
    {
      goto LABEL_453;
    }

    if (v389[0] != 17)
    {
      if (v385[0] != OS_LOG_TYPE_INFO)
      {
        v120 = __nwlog_obj();
        v121 = v389[0];
        if (!os_log_type_enabled(v120, v389[0]))
        {
          goto LABEL_453;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v122 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_452;
      }

      v131 = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = v389[0];
      v132 = os_log_type_enabled(v120, v389[0]);
      if (!v131)
      {
        if (!v132)
        {
          goto LABEL_453;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v122 = "%{public}s called with null handle, no backtrace";
        goto LABEL_452;
      }

      if (!v132)
      {
        goto LABEL_235;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v131;
      v133 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_234;
    }

    v120 = __nwlog_obj();
    v121 = v389[0];
    if (!os_log_type_enabled(v120, v389[0]))
    {
      goto LABEL_453;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v122 = "%{public}s called with null handle";
LABEL_452:
    _os_log_impl(&dword_181A37000, v120, v121, v122, buf, 0xCu);
    goto LABEL_453;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_455:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v123 = _os_log_send_and_compose_impl();
      v389[0] = 16;
      v385[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v123, v389, v385))
      {
        goto LABEL_487;
      }

      if (v389[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v124 = gLogObj;
        v125 = v389[0];
        if (!os_log_type_enabled(gLogObj, v389[0]))
        {
          goto LABEL_487;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_available";
        v126 = "%{public}s called with null http1";
        goto LABEL_485;
      }

      if (v385[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v124 = gLogObj;
        v125 = v389[0];
        if (!os_log_type_enabled(gLogObj, v389[0]))
        {
          goto LABEL_487;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_available";
        v126 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_485;
      }

      v231 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v232 = gLogObj;
      v233 = v389[0];
      v234 = os_log_type_enabled(gLogObj, v389[0]);
      if (!v231)
      {
        if (!v234)
        {
          goto LABEL_487;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_available";
        v126 = "%{public}s called with null http1, no backtrace";
        goto LABEL_492;
      }

      if (v234)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v231;
        _os_log_impl(&dword_181A37000, v232, v233, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v231);
LABEL_487:
      if (!v123)
      {
        return;
      }

      goto LABEL_488;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v119, v389, v385))
    {
      goto LABEL_453;
    }

    if (v389[0] == 17)
    {
      v120 = __nwlog_obj();
      v121 = v389[0];
      if (!os_log_type_enabled(v120, v389[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_connection";
      goto LABEL_452;
    }

    if (v385[0] != OS_LOG_TYPE_INFO)
    {
      v120 = __nwlog_obj();
      v121 = v389[0];
      if (!os_log_type_enabled(v120, v389[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_452;
    }

    v131 = __nw_create_backtrace_string();
    v120 = __nwlog_obj();
    v121 = v389[0];
    v187 = os_log_type_enabled(v120, v389[0]);
    if (!v131)
    {
      if (!v187)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_452;
    }

    if (v187)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v131;
      v133 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_234;
    }

LABEL_235:
    free(v131);
    if (!v119)
    {
      goto LABEL_455;
    }

    goto LABEL_454;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v119, v389, v385))
    {
      goto LABEL_453;
    }

    if (v389[0] == 17)
    {
      v120 = __nwlog_obj();
      v121 = v389[0];
      if (!os_log_type_enabled(v120, v389[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_stream";
      goto LABEL_452;
    }

    if (v385[0] != OS_LOG_TYPE_INFO)
    {
      v120 = __nwlog_obj();
      v121 = v389[0];
      if (!os_log_type_enabled(v120, v389[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_452;
    }

    v131 = __nw_create_backtrace_string();
    v120 = __nwlog_obj();
    v121 = v389[0];
    v186 = os_log_type_enabled(v120, v389[0]);
    if (!v131)
    {
      if (!v186)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_452;
    }

    if (!v186)
    {
      goto LABEL_235;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v131;
    v133 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_234:
    _os_log_impl(&dword_181A37000, v120, v121, v133, buf, 0x16u);
    goto LABEL_235;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!*v4)
  {
    goto LABEL_455;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_available";
    v123 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v123, v389, v385))
    {
      goto LABEL_487;
    }

    if (v389[0] == 17)
    {
      v124 = __nwlog_obj();
      v125 = v389[0];
      if (!os_log_type_enabled(v124, v389[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v126 = "%{public}s called with null other_protocol";
LABEL_485:
      v237 = v124;
      v238 = v125;
LABEL_486:
      _os_log_impl(&dword_181A37000, v237, v238, v126, buf, 0xCu);
      goto LABEL_487;
    }

    if (v385[0] != OS_LOG_TYPE_INFO)
    {
      v124 = __nwlog_obj();
      v125 = v389[0];
      if (!os_log_type_enabled(v124, v389[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v126 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_485;
    }

    v134 = __nw_create_backtrace_string();
    v124 = __nwlog_obj();
    v125 = v389[0];
    v135 = os_log_type_enabled(v124, v389[0]);
    if (!v134)
    {
      if (!v135)
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v126 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_485;
    }

    if (!v135)
    {
      goto LABEL_301;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_input_available";
    *&buf[12] = 2082;
    *&buf[14] = v134;
    v136 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_300;
  }

  if (v3 == 2)
  {
    v9 = *(handle + 1);
    if (v9)
    {
      v8 = (v9 + 256);
      goto LABEL_17;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v171 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v171, v389, v385))
    {
      if (v389[0] == 17)
      {
        v172 = __nwlog_obj();
        v173 = v389[0];
        if (!os_log_type_enabled(v172, v389[0]))
        {
          goto LABEL_471;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v174 = "%{public}s called with null handle->http1_stream";
        goto LABEL_470;
      }

      if (v385[0] != OS_LOG_TYPE_INFO)
      {
        v172 = __nwlog_obj();
        v173 = v389[0];
        if (!os_log_type_enabled(v172, v389[0]))
        {
          goto LABEL_471;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v174 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_470;
      }

      v188 = __nw_create_backtrace_string();
      v172 = __nwlog_obj();
      v173 = v389[0];
      v189 = os_log_type_enabled(v172, v389[0]);
      if (v188)
      {
        if (v189)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v188;
          _os_log_impl(&dword_181A37000, v172, v173, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v188);
        goto LABEL_471;
      }

      if (v189)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v174 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_470:
        _os_log_impl(&dword_181A37000, v172, v173, v174, buf, 0xCu);
      }
    }

LABEL_471:
    if (v171)
    {
      free(v171);
    }

LABEL_473:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_available";
    v123 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v123, v389, v385))
    {
      goto LABEL_487;
    }

    if (v389[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v124 = gLogObj;
      v125 = v389[0];
      if (!os_log_type_enabled(gLogObj, v389[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v126 = "%{public}s called with null http1_connection";
      goto LABEL_485;
    }

    if (v385[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v124 = gLogObj;
      v125 = v389[0];
      if (!os_log_type_enabled(gLogObj, v389[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v126 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_485;
    }

    v235 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v232 = gLogObj;
    v233 = v389[0];
    v236 = os_log_type_enabled(gLogObj, v389[0]);
    if (v235)
    {
      if (v236)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v235;
        _os_log_impl(&dword_181A37000, v232, v233, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v235);
      if (!v123)
      {
        return;
      }

LABEL_488:
      free(v123);
      return;
    }

    if (v236)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v126 = "%{public}s called with null http1_connection, no backtrace";
LABEL_492:
      v237 = v232;
      v238 = v233;
      goto LABEL_486;
    }

    goto LABEL_487;
  }

  if (v3 != 3)
  {
    goto LABEL_473;
  }

  v8 = (handle + 16);
LABEL_17:
  v10 = *v8;
  if (!*v8)
  {
    goto LABEL_473;
  }

  v11 = *(v10 + 488);
  if (!v11)
  {
    if ((*(v7 + 376) & 1) == 0)
    {
      if (*(v10 + 158))
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v15 = *(v10 + 488);
      v16 = *(*(v10 + 480) + 372);
      v17 = *(v10 + 860);
      if (v15)
      {
        LODWORD(v15) = *(v15 + 424);
      }

      identifier = "invalid";
      if (a2->identifier)
      {
        identifier = a2->identifier;
      }

LABEL_44:
      *buf = 136447746;
      *&buf[4] = "nw_protocol_http1_input_available";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v16;
      *&buf[38] = 1024;
      *&buf[40] = v17;
      *&buf[44] = 1024;
      *&buf[46] = v15;
      *&buf[50] = 2080;
      *&buf[52] = identifier;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> ignoring input_available from %s";
      v23 = v14;
      v24 = 60;
LABEL_45:
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
      return;
    }

    if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v190 = __nwlog_obj();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
      {
        v191 = *(v10 + 488);
        v192 = *(*(v10 + 480) + 372);
        v193 = *(v10 + 860);
        if (v191)
        {
          LODWORD(v191) = *(v191 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v192;
        *&buf[38] = 1024;
        *&buf[40] = v193;
        *&buf[44] = 1024;
        *&buf[46] = v191;
        *&buf[50] = 2048;
        *&buf[52] = v10;
        _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called on idle server connection %p, triggering new flow", buf, 0x3Cu);
      }
    }

    if ((*(v7 + 376) & 1) == 0)
    {
      if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v25 = __nwlog_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v7 + 372);
          *buf = 136446978;
          *&buf[4] = "nw_http1_new_flow_valid";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v26;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called when not in server mode, ignoring", buf, 0x26u);
        }
      }

      goto LABEL_250;
    }

    v27 = *(v7 + 328);
    if (!v27)
    {
      if (*(v10 + 158))
      {
        goto LABEL_250;
      }

      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_250;
      }

      v40 = *(v10 + 488);
      v41 = *(*(v10 + 480) + 372);
      v42 = *(v10 + 860);
      if (v40)
      {
        LODWORD(v40) = *(v40 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_new_flow_valid";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v41;
      *&buf[38] = 1024;
      *&buf[40] = v42;
      *&buf[44] = 1024;
      *&buf[46] = v40;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> called without listen handler, ignoring";
      goto LABEL_82;
    }

    v28 = *v27;
    if (v28 && *v28)
    {
      if ((*(v10 + 874) & 2) != 0 || (*(v10 + 872) & 0x14) != 0 && *(v10 + 616))
      {
        if (*(v10 + 158))
        {
          goto LABEL_250;
        }

        if (gLogDatapath != 1)
        {
          goto LABEL_250;
        }

        v29 = __nwlog_obj();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_250;
        }

        v30 = *(v10 + 488);
        v31 = *(*(v10 + 480) + 372);
        v32 = *(v10 + 860);
        if (v30)
        {
          LODWORD(v30) = *(v30 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_detect_next_request";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v31;
        *&buf[38] = 1024;
        *&buf[40] = v32;
        *&buf[44] = 1024;
        *&buf[46] = v30;
        v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> not attempting to read more on connection awaiting a new flow, awaiting disconnect or remove_input_handler";
        goto LABEL_82;
      }

      *v385 = 0;
      v386 = v385;
      if (nw_protocol_get_input_frames(*(v10 + 32), v10, 1, 0xFFFFFFFFLL, 1, v385))
      {
        if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v252 = __nwlog_obj();
          if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
          {
            v253 = *(v10 + 488);
            v254 = *(*(v10 + 480) + 372);
            v255 = *(v10 + 860);
            if (v253)
            {
              LODWORD(v253) = *(v253 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_detect_next_request";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v254;
            *&buf[38] = 1024;
            *&buf[40] = v255;
            *&buf[44] = 1024;
            *&buf[46] = v253;
            _os_log_impl(&dword_181A37000, v252, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> received a frame for non-idle connection, deferring new flow", buf, 0x32u);
          }
        }

        v44 = *v385;
        if (!*v385)
        {
          if (*(v10 + 158))
          {
            goto LABEL_249;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_249;
          }

          v81 = __nwlog_obj();
          if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_249;
          }

          v82 = *(v10 + 488);
          v83 = *(*(v10 + 480) + 372);
          v84 = *(v10 + 860);
          if (v82)
          {
            LODWORD(v82) = *(v82 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_move_frame_array_to_unprocessed_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v83;
          *&buf[38] = 1024;
          *&buf[40] = v84;
          *&buf[44] = 1024;
          *&buf[46] = v82;
          v85 = "%{public}s %{public}s%s<i%u:c%u:s%u> no additional body frames to move";
          v86 = v81;
          v87 = 50;
          goto LABEL_538;
        }

        if (gLogDatapath == 1)
        {
          v267 = __nwlog_obj();
          if (os_log_type_enabled(v267, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447746;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v44;
            *&buf[22] = 2048;
            *&buf[24] = v385;
            *&buf[32] = 2048;
            *&buf[34] = v10 + 616;
            *&buf[42] = 1024;
            *&buf[44] = 1;
            *&buf[48] = 1024;
            *&buf[50] = 1;
            *&buf[54] = 1024;
            *&buf[56] = 1;
            _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
          }
        }

        v45 = 0;
        *v389 = 0;
        *&v389[8] = v389;
        *&v43 = 136447234;
        do
        {
          v46 = v44;
          v47 = v44 + 32;
          v44 = *(v44 + 32);
          if (!v44 && !*(v46 + 40))
          {
            v44 = 0;
          }

          if (gLogDatapath == 1)
          {
            v379 = v43;
            log = __nwlog_obj();
            v52 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
            v43 = v379;
            if (v52)
            {
              v53 = *(v46 + 52);
              if (v53)
              {
                v53 -= *(v46 + 56) + *(v46 + 60);
              }

              if (v44)
              {
                v54 = *(v44 + 52);
                if (v54)
                {
                  v54 -= *(v44 + 56) + *(v44 + 60);
                }
              }

              else
              {
                v54 = 0;
              }

              *buf = v379;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 1024;
              *&buf[24] = v53;
              *&buf[28] = 2048;
              *&buf[30] = v44;
              *&buf[38] = 1024;
              *&buf[40] = v54;
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
              v43 = v379;
            }
          }

          v48 = *(v46 + 32);
          v49 = *(v46 + 40);
          v50 = (v48 + 40);
          if (!v48)
          {
            v50 = &v386;
          }

          *v50 = v49;
          *v49 = v48;
          v51 = *&v389[8];
          *(v46 + 32) = 0;
          *(v46 + 40) = v51;
          *v51 = v46;
          *&v389[8] = v47;
          ++v45;
        }

        while (v44);
        if (!v45)
        {
          goto LABEL_248;
        }

        if (gLogDatapath == 1)
        {
          v383 = v43;
          v273 = __nwlog_obj();
          v274 = os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG);
          v43 = v383;
          if (v274)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            _os_log_impl(&dword_181A37000, v273, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
            v43 = v383;
          }
        }

        v67 = *v389;
        v68 = v45;
        if (*v389)
        {
          v68 = v45;
          do
          {
            v69 = v67;
            v70 = (v67 + 32);
            v67 = *(v67 + 32);
            if (!v67 && !*(v69 + 40))
            {
              v67 = 0;
            }

            if (gLogDatapath == 1)
            {
              v381 = v43;
              logb = __nwlog_obj();
              v75 = os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG);
              v43 = v381;
              if (v75)
              {
                v76 = *(v69 + 52);
                if (v76)
                {
                  v76 -= *(v69 + 56) + *(v69 + 60);
                }

                if (v67)
                {
                  v77 = *(v67 + 52);
                  if (v77)
                  {
                    v77 -= *(v67 + 56) + *(v67 + 60);
                  }
                }

                else
                {
                  v77 = 0;
                }

                *buf = v381;
                *&buf[4] = "nw_http1_move_frame_array";
                *&buf[12] = 2048;
                *&buf[14] = v69;
                *&buf[22] = 1024;
                *&buf[24] = v76;
                *&buf[28] = 2048;
                *&buf[30] = v67;
                *&buf[38] = 1024;
                *&buf[40] = v77;
                _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
                v43 = v381;
              }
            }

            v71 = *(v69 + 32);
            v72 = *(v69 + 40);
            v73 = (v71 + 40);
            if (!v71)
            {
              v73 = &v389[8];
            }

            *v73 = v72;
            *v72 = v71;
            *v70 = 0;
            v70[1] = 0;
            v74 = *(v10 + 624);
            *(v69 + 40) = v74;
            *v74 = v69;
            *(v10 + 624) = v70;
            --v68;
          }

          while (v67);
          if (!v68)
          {
LABEL_248:
            if (gLogDatapath != 1)
            {
              goto LABEL_249;
            }

            v268 = __nwlog_obj();
            if (!os_log_type_enabled(v268, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_249;
            }

            *buf = 136446978;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            *&buf[18] = 2048;
            *&buf[20] = v385;
            *&buf[28] = 2048;
            *&buf[30] = v10 + 616;
            v85 = "%{public}s moved %u frames from %p to %p";
            v86 = v268;
            v87 = 38;
LABEL_538:
            _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, v85, buf, v87);
LABEL_249:
            *(v10 + 874) |= 2u;
            goto LABEL_250;
          }
        }

        __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v68;
        v102 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v387 = 0;
        if (__nwlog_fault(v102, &type, &v387))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v103 = __nwlog_obj();
            v104 = type;
            if (!os_log_type_enabled(v103, type))
            {
              goto LABEL_246;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            v105 = "%{public}s failed to deliver all temp frames, remaining %u frames";
            goto LABEL_245;
          }

          if (v387 != 1)
          {
            v103 = __nwlog_obj();
            v104 = type;
            if (!os_log_type_enabled(v103, type))
            {
              goto LABEL_246;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            v105 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
            goto LABEL_245;
          }

          v113 = __nw_create_backtrace_string();
          v103 = __nwlog_obj();
          v104 = type;
          v114 = os_log_type_enabled(v103, type);
          if (v113)
          {
            if (v114)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v68;
              *&buf[18] = 2082;
              *&buf[20] = v113;
              _os_log_impl(&dword_181A37000, v103, v104, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v113);
            goto LABEL_246;
          }

          if (v114)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            v105 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
LABEL_245:
            _os_log_impl(&dword_181A37000, v103, v104, v105, buf, 0x12u);
          }
        }

LABEL_246:
        if (v102)
        {
          free(v102);
        }

        goto LABEL_248;
      }

      if (*(v10 + 158))
      {
        goto LABEL_250;
      }

      if (gLogDatapath != 1)
      {
        goto LABEL_250;
      }

      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_250;
      }

      v78 = *(v10 + 488);
      v79 = *(*(v10 + 480) + 372);
      v80 = *(v10 + 860);
      if (v78)
      {
        LODWORD(v78) = *(v78 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_detect_next_request";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v79;
      *&buf[38] = 1024;
      *&buf[40] = v80;
      *&buf[44] = 1024;
      *&buf[46] = v78;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> read 0 frames on non-idle connection, not deferring new flow";
LABEL_82:
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, v33, buf, 0x32u);
      goto LABEL_250;
    }

    if ((*(v7 + 158) & 1) == 0)
    {
      v194 = __nwlog_obj();
      if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
      {
        v195 = *(v7 + 372);
        *buf = 136446978;
        *&buf[4] = "nw_http1_new_flow_valid";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v195;
        _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
      }
    }

    if ((*(v10 + 872) & 0x100) != 0)
    {
      if (*(v10 + 158))
      {
        goto LABEL_250;
      }

      if (gLogDatapath != 1)
      {
        goto LABEL_250;
      }

      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_250;
      }

      v218 = *(v10 + 488);
      v219 = *(*(v10 + 480) + 372);
      v220 = *(v10 + 860);
      if (v218)
      {
        LODWORD(v218) = *(v218 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_close";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v219;
      *&buf[38] = 1024;
      *&buf[40] = v220;
      *&buf[44] = 1024;
      *&buf[46] = v218;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> already closed";
      goto LABEL_82;
    }

    *(v10 + 872) |= 0x100u;
    if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v333 = __nwlog_obj();
      if (os_log_type_enabled(v333, OS_LOG_TYPE_DEBUG))
      {
        v334 = *(v10 + 488);
        v335 = *(*(v10 + 480) + 372);
        v336 = *(v10 + 860);
        if (v334)
        {
          LODWORD(v334) = *(v334 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v335;
        *&buf[38] = 1024;
        *&buf[40] = v336;
        *&buf[44] = 1024;
        *&buf[46] = v334;
        _os_log_impl(&dword_181A37000, v333, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v196 = *(v10 + 480);
    if (!v196)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v329 = _os_log_send_and_compose_impl();
      v389[0] = 16;
      v385[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v329, v389, v385))
      {
        goto LABEL_776;
      }

      if (v389[0] == 17)
      {
        v330 = __nwlog_obj();
        v331 = v389[0];
        if (!os_log_type_enabled(v330, v389[0]))
        {
          goto LABEL_776;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v332 = "%{public}s called with null http1";
      }

      else if (v385[0] == OS_LOG_TYPE_INFO)
      {
        v345 = __nw_create_backtrace_string();
        v330 = __nwlog_obj();
        v331 = v389[0];
        v346 = os_log_type_enabled(v330, v389[0]);
        if (v345)
        {
          if (v346)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v345;
            _os_log_impl(&dword_181A37000, v330, v331, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v345);
          goto LABEL_776;
        }

        if (!v346)
        {
          goto LABEL_776;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v332 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v330 = __nwlog_obj();
        v331 = v389[0];
        if (!os_log_type_enabled(v330, v389[0]))
        {
          goto LABEL_776;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v332 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v373 = buf;
LABEL_775:
      _os_log_impl(&dword_181A37000, v330, v331, v332, v373, 0xCu);
      goto LABEL_776;
    }

    if ((*(v10 + 872) & 0x800) != 0)
    {
      if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v240 = __nwlog_obj();
        if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
        {
          v241 = *(v10 + 488);
          v242 = *(*(v10 + 480) + 372);
          v243 = *(v10 + 860);
          if (v241)
          {
            LODWORD(v241) = *(v241 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v242;
          *&buf[38] = 1024;
          *&buf[40] = v243;
          *&buf[44] = 1024;
          *&buf[46] = v241;
          _os_log_impl(&dword_181A37000, v240, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_611;
    }

    *(v10 + 872) |= 0x800u;
    v197 = *(v196 + 368) + 1;
    *(v196 + 368) = v197;
    if (v197 == v197 << 31 >> 31)
    {
LABEL_606:
      if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v347 = __nwlog_obj();
        if (os_log_type_enabled(v347, OS_LOG_TYPE_DEBUG))
        {
          v348 = *(v10 + 488);
          v349 = *(*(v10 + 480) + 372);
          v350 = *(v10 + 860);
          if (v348)
          {
            LODWORD(v348) = *(v348 + 424);
          }

          v351 = *(v196 + 368) + *(v196 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v349;
          *&buf[38] = 1024;
          *&buf[40] = v350;
          *&buf[44] = 1024;
          *&buf[46] = v348;
          *&buf[50] = 1024;
          *&buf[52] = v351;
          _os_log_impl(&dword_181A37000, v347, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v302 = *(v10 + 496);
      if (!v302)
      {
        __nwlog_obj();
        *v389 = 136446210;
        *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v329 = _os_log_send_and_compose_impl();
        v385[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v329, v385, &type))
        {
          goto LABEL_776;
        }

        if (v385[0] == OS_LOG_TYPE_FAULT)
        {
          v330 = __nwlog_obj();
          v331 = v385[0];
          if (!os_log_type_enabled(v330, v385[0]))
          {
            goto LABEL_776;
          }

          *v389 = 136446210;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v332 = "%{public}s called with null http1_connection->context";
LABEL_774:
          v373 = v389;
          goto LABEL_775;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v330 = __nwlog_obj();
          v331 = v385[0];
          if (!os_log_type_enabled(v330, v385[0]))
          {
            goto LABEL_776;
          }

          *v389 = 136446210;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v332 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_774;
        }

        v361 = __nw_create_backtrace_string();
        v330 = __nwlog_obj();
        v331 = v385[0];
        v362 = os_log_type_enabled(v330, v385[0]);
        if (!v361)
        {
          if (!v362)
          {
            goto LABEL_776;
          }

          *v389 = 136446210;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v332 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_774;
        }

        if (v362)
        {
          *v389 = 136446466;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v389[12] = 2082;
          *&v389[14] = v361;
          v363 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_730:
          _os_log_impl(&dword_181A37000, v330, v331, v363, v389, 0x16u);
        }

LABEL_731:
        free(v361);
        if (!v329)
        {
LABEL_611:
          if (!*(v10 + 488))
          {
            v305 = *(v10 + 784);
            if (v305)
            {
              nw_queue_set_timer_values(v305, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              if ((*(v10 + 158) & 1) == 0)
              {
                v306 = __nwlog_obj();
                if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
                {
                  v307 = *(v10 + 488);
                  v308 = *(*(v10 + 480) + 372);
                  v309 = *(v10 + 860);
                  if (v307)
                  {
                    LODWORD(v307) = *(v307 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v10 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v308;
                  *&buf[38] = 1024;
                  *&buf[40] = v309;
                  *&buf[44] = 1024;
                  *&buf[46] = v307;
                  _os_log_impl(&dword_181A37000, v306, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v310 = *(v10 + 608);
              v311 = *(v10 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A32780;
              *&buf[32] = v310;
              nw_queue_context_async(v311, buf);
            }
          }

LABEL_250:
          if ((*(v10 + 874) & 2) == 0)
          {
            return;
          }

          if ((*(v7 + 376) & 1) == 0)
          {
            if (*(v7 + 158))
            {
              return;
            }

            v12 = gLogDatapath;
            goto LABEL_254;
          }

          v139 = *(v7 + 328);
          if (!v139)
          {
            goto LABEL_277;
          }

          v140 = *v139;
          if (v140 && *v140)
          {
            v141 = *(v7 + 264);
            if (v141)
            {
              v142 = _nw_parameters_copy(v141);
              *(v7 + 224) = v10;
              if ((***(v7 + 328))(*(v7 + 328), *(v7 + 280), v142) && *(v10 + 488) && !*(v7 + 224))
              {
                if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v291 = __nwlog_obj();
                  if (os_log_type_enabled(v291, OS_LOG_TYPE_DEBUG))
                  {
                    v292 = *(v7 + 372);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_attempt_trigger_new_flow";
                    *&buf[12] = 2082;
                    *&buf[14] = v7 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v292;
                    _os_log_impl(&dword_181A37000, v291, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> sucessfully associated new flow stream with connection, awaiting connected", buf, 0x26u);
                  }
                }

                *(v10 + 874) &= ~2u;
                goto LABEL_359;
              }

              if ((*(v7 + 158) & 1) == 0)
              {
                v143 = __nwlog_obj();
                if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  v144 = *(v7 + 372);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_attempt_trigger_new_flow";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v144;
                  *&buf[38] = 2048;
                  *&buf[40] = v10;
                  _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler didn't accept the new flow, closing connection %p", buf, 0x30u);
                }
              }

              if ((*(v10 + 872) & 0x100) != 0)
              {
                if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v158 = __nwlog_obj();
                  if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
                  {
                    v159 = *(v10 + 488);
                    v160 = *(*(v10 + 480) + 372);
                    v161 = *(v10 + 860);
                    if (v159)
                    {
                      LODWORD(v159) = *(v159 + 424);
                    }

                    *buf = 136447490;
                    *&buf[4] = "nw_http1_connection_close";
                    *&buf[12] = 2082;
                    *&buf[14] = v10 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v160;
                    *&buf[38] = 1024;
                    *&buf[40] = v161;
                    *&buf[44] = 1024;
                    *&buf[46] = v159;
                    _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
                  }
                }

                goto LABEL_359;
              }

              *(v10 + 872) |= 0x100u;
              if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v260 = __nwlog_obj();
                if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
                {
                  v261 = *(v10 + 488);
                  v262 = *(*(v10 + 480) + 372);
                  v263 = *(v10 + 860);
                  if (v261)
                  {
                    LODWORD(v261) = *(v261 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v10 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v262;
                  *&buf[38] = 1024;
                  *&buf[40] = v263;
                  *&buf[44] = 1024;
                  *&buf[46] = v261;
                  _os_log_impl(&dword_181A37000, v260, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
                }
              }

              v145 = *(v10 + 480);
              if (!v145)
              {
                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                v256 = _os_log_send_and_compose_impl();
                v389[0] = 16;
                v385[0] = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v256, v389, v385))
                {
                  goto LABEL_667;
                }

                if (v389[0] == 17)
                {
                  v257 = __nwlog_obj();
                  v258 = v389[0];
                  if (!os_log_type_enabled(v257, v389[0]))
                  {
                    goto LABEL_667;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  v259 = "%{public}s called with null http1";
                }

                else if (v385[0] == OS_LOG_TYPE_INFO)
                {
                  v275 = __nw_create_backtrace_string();
                  v257 = __nwlog_obj();
                  v258 = v389[0];
                  v276 = os_log_type_enabled(v257, v389[0]);
                  if (v275)
                  {
                    if (v276)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                      *&buf[12] = 2082;
                      *&buf[14] = v275;
                      _os_log_impl(&dword_181A37000, v257, v258, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v275);
                    goto LABEL_667;
                  }

                  if (!v276)
                  {
                    goto LABEL_667;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  v259 = "%{public}s called with null http1, no backtrace";
                }

                else
                {
                  v257 = __nwlog_obj();
                  v258 = v389[0];
                  if (!os_log_type_enabled(v257, v389[0]))
                  {
                    goto LABEL_667;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  v259 = "%{public}s called with null http1, backtrace limit exceeded";
                }

                v312 = buf;
LABEL_666:
                _os_log_impl(&dword_181A37000, v257, v258, v259, v312, 0xCu);
                goto LABEL_667;
              }

              if ((*(v10 + 872) & 0x800) != 0)
              {
                if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v163 = __nwlog_obj();
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
                  {
                    v164 = *(v10 + 488);
                    v165 = *(*(v10 + 480) + 372);
                    v166 = *(v10 + 860);
                    if (v164)
                    {
                      LODWORD(v164) = *(v164 + 424);
                    }

                    *buf = 136447490;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = v10 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v165;
                    *&buf[38] = 1024;
                    *&buf[40] = v166;
                    *&buf[44] = 1024;
                    *&buf[46] = v164;
                    _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
                  }
                }

                goto LABEL_350;
              }

              *(v10 + 872) |= 0x800u;
              v146 = *(v145 + 368) + 1;
              *(v145 + 368) = v146;
              if (v146 == v146 << 31 >> 31)
              {
LABEL_345:
                if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v277 = __nwlog_obj();
                  if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
                  {
                    v278 = *(v10 + 488);
                    v279 = *(*(v10 + 480) + 372);
                    v280 = *(v10 + 860);
                    if (v278)
                    {
                      LODWORD(v278) = *(v278 + 424);
                    }

                    v281 = *(v145 + 368) + *(v145 + 364);
                    *buf = 136447746;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = v10 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v279;
                    *&buf[38] = 1024;
                    *&buf[40] = v280;
                    *&buf[44] = 1024;
                    *&buf[46] = v278;
                    *&buf[50] = 1024;
                    *&buf[52] = v281;
                    _os_log_impl(&dword_181A37000, v277, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
                  }
                }

                v176 = *(v10 + 496);
                if (!v176)
                {
                  __nwlog_obj();
                  *v389 = 136446210;
                  *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v256 = _os_log_send_and_compose_impl();
                  v385[0] = OS_LOG_TYPE_ERROR;
                  type = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v256, v385, &type))
                  {
                    goto LABEL_667;
                  }

                  if (v385[0] == OS_LOG_TYPE_FAULT)
                  {
                    v257 = __nwlog_obj();
                    v258 = v385[0];
                    if (!os_log_type_enabled(v257, v385[0]))
                    {
                      goto LABEL_667;
                    }

                    *v389 = 136446210;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v259 = "%{public}s called with null http1_connection->context";
LABEL_665:
                    v312 = v389;
                    goto LABEL_666;
                  }

                  if (type != OS_LOG_TYPE_INFO)
                  {
                    v257 = __nwlog_obj();
                    v258 = v385[0];
                    if (!os_log_type_enabled(v257, v385[0]))
                    {
                      goto LABEL_667;
                    }

                    *v389 = 136446210;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v259 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
                    goto LABEL_665;
                  }

                  v293 = __nw_create_backtrace_string();
                  v257 = __nwlog_obj();
                  v258 = v385[0];
                  v294 = os_log_type_enabled(v257, v385[0]);
                  if (!v293)
                  {
                    if (!v294)
                    {
                      goto LABEL_667;
                    }

                    *v389 = 136446210;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v259 = "%{public}s called with null http1_connection->context, no backtrace";
                    goto LABEL_665;
                  }

                  if (v294)
                  {
                    *v389 = 136446466;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    *&v389[12] = 2082;
                    *&v389[14] = v293;
                    v295 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_591:
                    _os_log_impl(&dword_181A37000, v257, v258, v295, v389, 0x16u);
                  }

LABEL_592:
                  free(v293);
                  if (!v256)
                  {
LABEL_350:
                    if (!*(v10 + 488))
                    {
                      v179 = *(v10 + 784);
                      if (v179)
                      {
                        nw_queue_set_timer_values(v179, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                      }

                      else
                      {
                        if ((*(v10 + 158) & 1) == 0)
                        {
                          v180 = __nwlog_obj();
                          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                          {
                            v181 = *(v10 + 488);
                            v182 = *(*(v10 + 480) + 372);
                            v183 = *(v10 + 860);
                            if (v181)
                            {
                              LODWORD(v181) = *(v181 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_close";
                            *&buf[12] = 2082;
                            *&buf[14] = v10 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v182;
                            *&buf[38] = 1024;
                            *&buf[40] = v183;
                            *&buf[44] = 1024;
                            *&buf[46] = v181;
                            _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                          }
                        }

                        v184 = *(v10 + 608);
                        v185 = *(v10 + 496);
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 0x40000000;
                        *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                        *&buf[24] = &unk_1E6A32780;
                        *&buf[32] = v184;
                        nw_queue_context_async(v185, buf);
                      }
                    }

LABEL_359:
                    if (v142)
                    {
                      os_release(v142);
                    }

                    return;
                  }

LABEL_668:
                  free(v256);
                  goto LABEL_350;
                }

                v177 = *(v10 + 480);
                if (v177)
                {
                  v178 = *(v177 + 200);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                  *&buf[24] = &unk_1E6A327A8;
                  *&buf[32] = v178;
                  nw_queue_context_async(v176, buf);
                  goto LABEL_350;
                }

                __nwlog_obj();
                *v389 = 136446210;
                *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                v256 = _os_log_send_and_compose_impl();
                v385[0] = OS_LOG_TYPE_ERROR;
                type = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v256, v385, &type))
                {
                  if (v385[0] == OS_LOG_TYPE_FAULT)
                  {
                    v257 = __nwlog_obj();
                    v258 = v385[0];
                    if (!os_log_type_enabled(v257, v385[0]))
                    {
                      goto LABEL_667;
                    }

                    *v389 = 136446210;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v259 = "%{public}s called with null http1";
                    goto LABEL_665;
                  }

                  if (type != OS_LOG_TYPE_INFO)
                  {
                    v257 = __nwlog_obj();
                    v258 = v385[0];
                    if (!os_log_type_enabled(v257, v385[0]))
                    {
                      goto LABEL_667;
                    }

                    *v389 = 136446210;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v259 = "%{public}s called with null http1, backtrace limit exceeded";
                    goto LABEL_665;
                  }

                  v293 = __nw_create_backtrace_string();
                  v257 = __nwlog_obj();
                  v258 = v385[0];
                  v296 = os_log_type_enabled(v257, v385[0]);
                  if (!v293)
                  {
                    if (!v296)
                    {
                      goto LABEL_667;
                    }

                    *v389 = 136446210;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v259 = "%{public}s called with null http1, no backtrace";
                    goto LABEL_665;
                  }

                  if (v296)
                  {
                    *v389 = 136446466;
                    *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    *&v389[12] = 2082;
                    *&v389[14] = v293;
                    v295 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                    goto LABEL_591;
                  }

                  goto LABEL_592;
                }

LABEL_667:
                if (!v256)
                {
                  goto LABEL_350;
                }

                goto LABEL_668;
              }

              __nwlog_obj();
              v147 = *(v145 + 368);
              *buf = 136446978;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v147;
              v148 = _os_log_send_and_compose_impl();
              v389[0] = 16;
              v385[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v148, v389, v385))
              {
                if (v389[0] == 17)
                {
                  v149 = __nwlog_obj();
                  v150 = v389[0];
                  if (os_log_type_enabled(v149, v389[0]))
                  {
                    v151 = *(v145 + 368);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v151;
                    v152 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_341:
                    _os_log_impl(&dword_181A37000, v149, v150, v152, buf, 0x2Au);
                  }
                }

                else if (v385[0] == OS_LOG_TYPE_INFO)
                {
                  v167 = __nw_create_backtrace_string();
                  v149 = __nwlog_obj();
                  v150 = v389[0];
                  v168 = os_log_type_enabled(v149, v389[0]);
                  if (v167)
                  {
                    if (v168)
                    {
                      v169 = *(v145 + 368);
                      *buf = 136447234;
                      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                      *&buf[12] = 2082;
                      *&buf[14] = "http1->nonresuable_connections";
                      *&buf[22] = 2048;
                      *&buf[24] = 1;
                      *&buf[32] = 2048;
                      *&buf[34] = v169;
                      *&buf[42] = 2082;
                      *&buf[44] = v167;
                      _os_log_impl(&dword_181A37000, v149, v150, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v167);
                    goto LABEL_342;
                  }

                  if (v168)
                  {
                    v175 = *(v145 + 368);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v175;
                    v152 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_341;
                  }
                }

                else
                {
                  v149 = __nwlog_obj();
                  v150 = v389[0];
                  if (os_log_type_enabled(v149, v389[0]))
                  {
                    v170 = *(v145 + 368);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v170;
                    v152 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_341;
                  }
                }
              }

LABEL_342:
              if (v148)
              {
                free(v148);
              }

              *(v145 + 368) = -1;
              goto LABEL_345;
            }

            if ((*(v7 + 158) & 1) == 0)
            {
              v156 = __nwlog_obj();
              if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
              {
                v157 = *(v7 + 372);
                *buf = 136446978;
                *&buf[4] = "nw_http1_attempt_trigger_new_flow";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v157;
                _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> http1->parameters is NULL when opening responder stream", buf, 0x26u);
              }
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_attempt_trigger_new_flow";
            v123 = _os_log_send_and_compose_impl();
            v389[0] = 16;
            v385[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v123, v389, v385))
            {
              goto LABEL_487;
            }

            if (v389[0] == 17)
            {
              v124 = __nwlog_obj();
              v125 = v389[0];
              if (!os_log_type_enabled(v124, v389[0]))
              {
                goto LABEL_487;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_attempt_trigger_new_flow";
              v126 = "%{public}s http1->parameters is NULL when opening responder stream";
              goto LABEL_485;
            }

            if (v385[0] != OS_LOG_TYPE_INFO)
            {
              v124 = __nwlog_obj();
              v125 = v389[0];
              if (!os_log_type_enabled(v124, v389[0]))
              {
                goto LABEL_487;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_attempt_trigger_new_flow";
              v126 = "%{public}s http1->parameters is NULL when opening responder stream, backtrace limit exceeded";
              goto LABEL_485;
            }

            v134 = __nw_create_backtrace_string();
            v124 = __nwlog_obj();
            v125 = v389[0];
            v162 = os_log_type_enabled(v124, v389[0]);
            if (!v134)
            {
              if (!v162)
              {
                goto LABEL_487;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_attempt_trigger_new_flow";
              v126 = "%{public}s http1->parameters is NULL when opening responder stream, no backtrace";
              goto LABEL_485;
            }

            if (!v162)
            {
              goto LABEL_301;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_attempt_trigger_new_flow";
            *&buf[12] = 2082;
            *&buf[14] = v134;
            v136 = "%{public}s http1->parameters is NULL when opening responder stream, dumping backtrace:%{public}s";
LABEL_300:
            _os_log_impl(&dword_181A37000, v124, v125, v136, buf, 0x16u);
LABEL_301:
            free(v134);
            if (!v123)
            {
              return;
            }

            goto LABEL_488;
          }

          if ((*(v7 + 158) & 1) == 0)
          {
            v208 = __nwlog_obj();
            if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
            {
              v209 = *(v7 + 372);
              *buf = 136446978;
              *&buf[4] = "nw_http1_new_flow_valid";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v209;
              _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
            }
          }

          if ((*(v10 + 872) & 0x100) != 0)
          {
            if (*(v10 + 158))
            {
              return;
            }

            v239 = gLogDatapath;
            goto LABEL_503;
          }

          *(v10 + 872) |= 0x100u;
          if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v341 = __nwlog_obj();
            if (os_log_type_enabled(v341, OS_LOG_TYPE_DEBUG))
            {
              v342 = *(v10 + 488);
              v343 = *(*(v10 + 480) + 372);
              v344 = *(v10 + 860);
              if (v342)
              {
                LODWORD(v342) = *(v342 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_close";
              *&buf[12] = 2082;
              *&buf[14] = v10 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v343;
              *&buf[38] = 1024;
              *&buf[40] = v344;
              *&buf[44] = 1024;
              *&buf[46] = v342;
              _os_log_impl(&dword_181A37000, v341, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
            }
          }

          v210 = *(v10 + 480);
          if (!v210)
          {
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            v325 = _os_log_send_and_compose_impl();
            v389[0] = 16;
            v385[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v325, v389, v385))
            {
              goto LABEL_784;
            }

            if (v389[0] == 17)
            {
LABEL_710:
              v326 = __nwlog_obj();
              v327 = v389[0];
              if (!os_log_type_enabled(v326, v389[0]))
              {
                goto LABEL_784;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              v328 = "%{public}s called with null http1";
LABEL_769:
              v374 = buf;
LABEL_783:
              _os_log_impl(&dword_181A37000, v326, v327, v328, v374, 0xCu);
              goto LABEL_784;
            }

            if (v385[0] == OS_LOG_TYPE_INFO)
            {
              v337 = __nw_create_backtrace_string();
              v326 = __nwlog_obj();
              v327 = v389[0];
              v338 = os_log_type_enabled(v326, v389[0]);
              if (v337)
              {
                if (!v338)
                {
                  goto LABEL_743;
                }

                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v337;
                v339 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                v340 = buf;
                goto LABEL_742;
              }

              goto LABEL_767;
            }

LABEL_750:
            v326 = __nwlog_obj();
            v327 = v389[0];
            if (!os_log_type_enabled(v326, v389[0]))
            {
              goto LABEL_784;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            v328 = "%{public}s called with null http1, backtrace limit exceeded";
            goto LABEL_769;
          }

          if ((*(v10 + 872) & 0x800) != 0)
          {
            if (*(v10 + 158))
            {
              goto LABEL_638;
            }

            v247 = gLogDatapath;
            goto LABEL_512;
          }

          *(v10 + 872) |= 0x800u;
          v211 = *(v210 + 368) + 1;
          *(v210 + 368) = v211;
          if (v211 == v211 << 31 >> 31)
          {
LABEL_633:
            if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v356 = __nwlog_obj();
              if (os_log_type_enabled(v356, OS_LOG_TYPE_DEBUG))
              {
                v357 = *(v10 + 488);
                v358 = *(*(v10 + 480) + 372);
                v359 = *(v10 + 860);
                if (v357)
                {
                  LODWORD(v357) = *(v357 + 424);
                }

                v360 = *(v210 + 368) + *(v210 + 364);
                *buf = 136447746;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v10 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v358;
                *&buf[38] = 1024;
                *&buf[40] = v359;
                *&buf[44] = 1024;
                *&buf[46] = v357;
                *&buf[50] = 1024;
                *&buf[52] = v360;
                _os_log_impl(&dword_181A37000, v356, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
              }
            }

            v314 = *(v10 + 496);
            if (v314)
            {
              v315 = *(v10 + 480);
              if (!v315)
              {
                goto LABEL_657;
              }

              goto LABEL_637;
            }

LABEL_704:
            __nwlog_obj();
            *v389 = 136446210;
            *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
            v325 = _os_log_send_and_compose_impl();
            v385[0] = OS_LOG_TYPE_ERROR;
            type = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v325, v385, &type))
            {
              goto LABEL_784;
            }

            if (v385[0] == OS_LOG_TYPE_FAULT)
            {
              v326 = __nwlog_obj();
              v327 = v385[0];
              if (!os_log_type_enabled(v326, v385[0]))
              {
                goto LABEL_784;
              }

              *v389 = 136446210;
              *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              v328 = "%{public}s called with null http1_connection->context";
              goto LABEL_782;
            }

            if (type != OS_LOG_TYPE_INFO)
            {
              v326 = __nwlog_obj();
              v327 = v385[0];
              if (!os_log_type_enabled(v326, v385[0]))
              {
                goto LABEL_784;
              }

              *v389 = 136446210;
              *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              v328 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
              goto LABEL_782;
            }

            v337 = __nw_create_backtrace_string();
            v326 = __nwlog_obj();
            v327 = v385[0];
            v365 = os_log_type_enabled(v326, v385[0]);
            if (!v337)
            {
              if (!v365)
              {
                goto LABEL_784;
              }

              *v389 = 136446210;
              *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              v328 = "%{public}s called with null http1_connection->context, no backtrace";
              goto LABEL_782;
            }

            if (v365)
            {
              *v389 = 136446466;
              *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              *&v389[12] = 2082;
              *&v389[14] = v337;
              v339 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_741:
              v340 = v389;
LABEL_742:
              _os_log_impl(&dword_181A37000, v326, v327, v339, v340, 0x16u);
            }

LABEL_743:
            free(v337);
            if (!v325)
            {
LABEL_638:
              if (!*(v10 + 488))
              {
                v317 = *(v10 + 784);
                if (v317)
                {
                  nw_queue_set_timer_values(v317, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                }

                else
                {
                  if ((*(v10 + 158) & 1) == 0)
                  {
                    v318 = __nwlog_obj();
                    if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
                    {
                      v319 = *(v10 + 488);
                      v320 = *(*(v10 + 480) + 372);
                      v321 = *(v10 + 860);
                      if (v319)
                      {
                        LODWORD(v319) = *(v319 + 424);
                      }

                      *buf = 136447490;
                      *&buf[4] = "nw_http1_connection_close";
                      *&buf[12] = 2082;
                      *&buf[14] = v10 + 74;
                      *&buf[22] = 2080;
                      *&buf[24] = " ";
                      *&buf[32] = 1024;
                      *&buf[34] = v320;
                      *&buf[38] = 1024;
                      *&buf[40] = v321;
                      *&buf[44] = 1024;
                      *&buf[46] = v319;
                      _os_log_impl(&dword_181A37000, v318, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                    }
                  }

                  v322 = *(v10 + 608);
                  v323 = *(v10 + 496);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                  *&buf[24] = &unk_1E6A32780;
                  *&buf[32] = v322;
                  nw_queue_context_async(v323, buf);
                }
              }

              return;
            }

LABEL_785:
            free(v325);
            goto LABEL_638;
          }

          __nwlog_obj();
          v212 = *(v210 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v212;
          v213 = _os_log_send_and_compose_impl();
          v389[0] = 16;
          v385[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v213, v389, v385))
          {
            if (v389[0] == 17)
            {
              v214 = __nwlog_obj();
              v215 = v389[0];
              if (os_log_type_enabled(v214, v389[0]))
              {
                v216 = *(v210 + 368);
                *buf = 136446978;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v216;
                v217 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_629:
                _os_log_impl(&dword_181A37000, v214, v215, v217, buf, 0x2Au);
              }
            }

            else if (v385[0] == OS_LOG_TYPE_INFO)
            {
              v282 = __nw_create_backtrace_string();
              v214 = __nwlog_obj();
              v215 = v389[0];
              v283 = os_log_type_enabled(v214, v389[0]);
              if (v282)
              {
                if (v283)
                {
                  v284 = *(v210 + 368);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v284;
                  *&buf[42] = 2082;
                  *&buf[44] = v282;
                  _os_log_impl(&dword_181A37000, v214, v215, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v282);
                goto LABEL_630;
              }

              if (v283)
              {
                v313 = *(v210 + 368);
                *buf = 136446978;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v313;
                v217 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_629;
              }
            }

            else
            {
              v214 = __nwlog_obj();
              v215 = v389[0];
              if (os_log_type_enabled(v214, v389[0]))
              {
                v297 = *(v210 + 368);
                *buf = 136446978;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v297;
                v217 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_629;
              }
            }
          }

LABEL_630:
          if (v213)
          {
            free(v213);
          }

          *(v210 + 368) = -1;
          goto LABEL_633;
        }

LABEL_777:
        free(v329);
        goto LABEL_611;
      }

      v303 = *(v10 + 480);
      if (v303)
      {
        v304 = *(v303 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v304;
        nw_queue_context_async(v302, buf);
        goto LABEL_611;
      }

      __nwlog_obj();
      *v389 = 136446210;
      *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v329 = _os_log_send_and_compose_impl();
      v385[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v329, v385, &type))
      {
        if (v385[0] == OS_LOG_TYPE_FAULT)
        {
          v330 = __nwlog_obj();
          v331 = v385[0];
          if (!os_log_type_enabled(v330, v385[0]))
          {
            goto LABEL_776;
          }

          *v389 = 136446210;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v332 = "%{public}s called with null http1";
          goto LABEL_774;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v330 = __nwlog_obj();
          v331 = v385[0];
          if (!os_log_type_enabled(v330, v385[0]))
          {
            goto LABEL_776;
          }

          *v389 = 136446210;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v332 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_774;
        }

        v361 = __nw_create_backtrace_string();
        v330 = __nwlog_obj();
        v331 = v385[0];
        v364 = os_log_type_enabled(v330, v385[0]);
        if (!v361)
        {
          if (!v364)
          {
            goto LABEL_776;
          }

          *v389 = 136446210;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v332 = "%{public}s called with null http1, no backtrace";
          goto LABEL_774;
        }

        if (v364)
        {
          *v389 = 136446466;
          *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v389[12] = 2082;
          *&v389[14] = v361;
          v363 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_730;
        }

        goto LABEL_731;
      }

LABEL_776:
      if (!v329)
      {
        goto LABEL_611;
      }

      goto LABEL_777;
    }

    __nwlog_obj();
    v198 = *(v196 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v198;
    v199 = _os_log_send_and_compose_impl();
    v389[0] = 16;
    v385[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v199, v389, v385))
    {
      if (v389[0] == 17)
      {
        v200 = __nwlog_obj();
        v201 = v389[0];
        if (os_log_type_enabled(v200, v389[0]))
        {
          v202 = *(v196 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v202;
          v203 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_602:
          _os_log_impl(&dword_181A37000, v200, v201, v203, buf, 0x2Au);
        }
      }

      else if (v385[0] == OS_LOG_TYPE_INFO)
      {
        v264 = __nw_create_backtrace_string();
        v200 = __nwlog_obj();
        v201 = v389[0];
        v265 = os_log_type_enabled(v200, v389[0]);
        if (v264)
        {
          if (v265)
          {
            v266 = *(v196 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v266;
            *&buf[42] = 2082;
            *&buf[44] = v264;
            _os_log_impl(&dword_181A37000, v200, v201, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v264);
          goto LABEL_603;
        }

        if (v265)
        {
          v301 = *(v196 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v301;
          v203 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_602;
        }
      }

      else
      {
        v200 = __nwlog_obj();
        v201 = v389[0];
        if (os_log_type_enabled(v200, v389[0]))
        {
          v285 = *(v196 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v285;
          v203 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_602;
        }
      }
    }

LABEL_603:
    if (v199)
    {
      free(v199);
    }

    *(v196 + 368) = -1;
    goto LABEL_606;
  }

  if ((*(v10 + 872) & 0x204) != 4)
  {
    v19 = *(v11 + 48);
    v20 = *(v10 + 488);

    nw_protocol_input_available(v19, v20);
    return;
  }

  if ((*(v7 + 376) & 1) == 0 || (*(v10 + 874) & 2) != 0)
  {
    if (*(v10 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v15 = *(v10 + 488);
    v16 = *(*(v10 + 480) + 372);
    v17 = *(v10 + 860);
    if (v15)
    {
      LODWORD(v15) = *(v15 + 424);
    }

    identifier = "invalid";
    if (a2->identifier)
    {
      identifier = a2->identifier;
    }

    goto LABEL_44;
  }

  if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v204 = __nwlog_obj();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
    {
      v205 = *(v10 + 488);
      v206 = *(*(v10 + 480) + 372);
      v207 = *(v10 + 860);
      if (v205)
      {
        LODWORD(v205) = *(v205 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_protocol_http1_input_available";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v206;
      *&buf[38] = 1024;
      *&buf[40] = v207;
      *&buf[44] = 1024;
      *&buf[46] = v205;
      *&buf[50] = 2048;
      *&buf[52] = v10;
      _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> active server connection %p got input_available after completing input, checking to defer new_flow", buf, 0x3Cu);
    }
  }

  if (*(v7 + 376))
  {
    v34 = *(v7 + 328);
    if (v34)
    {
      v35 = *v34;
      if (v35 && *v35)
      {
        if ((*(v10 + 874) & 2) != 0 || (*(v10 + 872) & 0x14) != 0 && *(v10 + 616))
        {
          if (*(v10 + 158))
          {
            return;
          }

          if (gLogDatapath != 1)
          {
            return;
          }

          v36 = __nwlog_obj();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          v37 = *(v10 + 488);
          v38 = *(*(v10 + 480) + 372);
          v39 = *(v10 + 860);
          if (v37)
          {
            LODWORD(v37) = *(v37 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_detect_next_request";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v38;
          *&buf[38] = 1024;
          *&buf[40] = v39;
          *&buf[44] = 1024;
          *&buf[46] = v37;
          v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> not attempting to read more on connection awaiting a new flow, awaiting disconnect or remove_input_handler";
          goto LABEL_282;
        }

        *v385 = 0;
        v386 = v385;
        if (nw_protocol_get_input_frames(*(v10 + 32), v10, 1, 0xFFFFFFFFLL, 1, v385))
        {
          if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v269 = __nwlog_obj();
            if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
            {
              v270 = *(v10 + 488);
              v271 = *(*(v10 + 480) + 372);
              v272 = *(v10 + 860);
              if (v270)
              {
                LODWORD(v270) = *(v270 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_detect_next_request";
              *&buf[12] = 2082;
              *&buf[14] = v10 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v271;
              *&buf[38] = 1024;
              *&buf[40] = v272;
              *&buf[44] = 1024;
              *&buf[46] = v270;
              _os_log_impl(&dword_181A37000, v269, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> received a frame for non-idle connection, deferring new flow", buf, 0x32u);
            }
          }

          v56 = *v385;
          if (!*v385)
          {
            if (*(v10 + 158))
            {
              goto LABEL_369;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_369;
            }

            v106 = __nwlog_obj();
            if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_369;
            }

            v107 = *(v10 + 488);
            v108 = *(*(v10 + 480) + 372);
            v109 = *(v10 + 860);
            if (v107)
            {
              LODWORD(v107) = *(v107 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_move_frame_array_to_unprocessed_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v108;
            *&buf[38] = 1024;
            *&buf[40] = v109;
            *&buf[44] = 1024;
            *&buf[46] = v107;
            v110 = "%{public}s %{public}s%s<i%u:c%u:s%u> no additional body frames to move";
            v111 = v106;
            v112 = 50;
            goto LABEL_578;
          }

          if (gLogDatapath == 1)
          {
            v289 = __nwlog_obj();
            if (os_log_type_enabled(v289, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447746;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 2048;
              *&buf[14] = v56;
              *&buf[22] = 2048;
              *&buf[24] = v385;
              *&buf[32] = 2048;
              *&buf[34] = v10 + 616;
              *&buf[42] = 1024;
              *&buf[44] = 1;
              *&buf[48] = 1024;
              *&buf[50] = 1;
              *&buf[54] = 1024;
              *&buf[56] = 1;
              _os_log_impl(&dword_181A37000, v289, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
            }
          }

          v57 = 0;
          *v389 = 0;
          *&v389[8] = v389;
          *&v55 = 136447234;
          do
          {
            v58 = v56;
            v59 = v56 + 32;
            v56 = *(v56 + 32);
            if (!v56 && !*(v58 + 40))
            {
              v56 = 0;
            }

            if (gLogDatapath == 1)
            {
              v380 = v55;
              loga = __nwlog_obj();
              v64 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
              v55 = v380;
              if (v64)
              {
                v65 = *(v58 + 52);
                if (v65)
                {
                  v65 -= *(v58 + 56) + *(v58 + 60);
                }

                if (v56)
                {
                  v66 = *(v56 + 52);
                  if (v66)
                  {
                    v66 -= *(v56 + 56) + *(v56 + 60);
                  }
                }

                else
                {
                  v66 = 0;
                }

                *buf = v380;
                *&buf[4] = "nw_http1_move_frame_array";
                *&buf[12] = 2048;
                *&buf[14] = v58;
                *&buf[22] = 1024;
                *&buf[24] = v65;
                *&buf[28] = 2048;
                *&buf[30] = v56;
                *&buf[38] = 1024;
                *&buf[40] = v66;
                _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
                v55 = v380;
              }
            }

            v60 = *(v58 + 32);
            v61 = *(v58 + 40);
            v62 = (v60 + 40);
            if (!v60)
            {
              v62 = &v386;
            }

            *v62 = v61;
            *v61 = v60;
            v63 = *&v389[8];
            *(v58 + 32) = 0;
            *(v58 + 40) = v63;
            *v63 = v58;
            *&v389[8] = v59;
            ++v57;
          }

          while (v56);
          if (!v57)
          {
            goto LABEL_368;
          }

          if (gLogDatapath == 1)
          {
            v384 = v55;
            v298 = __nwlog_obj();
            v299 = os_log_type_enabled(v298, OS_LOG_TYPE_DEBUG);
            v55 = v384;
            if (v299)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v57;
              _os_log_impl(&dword_181A37000, v298, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
              v55 = v384;
            }
          }

          v88 = *v389;
          v89 = v57;
          if (*v389)
          {
            v89 = v57;
            do
            {
              v90 = v88;
              v91 = (v88 + 32);
              v88 = *(v88 + 32);
              if (!v88 && !*(v90 + 40))
              {
                v88 = 0;
              }

              if (gLogDatapath == 1)
              {
                v382 = v55;
                logc = __nwlog_obj();
                v96 = os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG);
                v55 = v382;
                if (v96)
                {
                  v97 = *(v90 + 52);
                  if (v97)
                  {
                    v97 -= *(v90 + 56) + *(v90 + 60);
                  }

                  if (v88)
                  {
                    v98 = *(v88 + 52);
                    if (v98)
                    {
                      v98 -= *(v88 + 56) + *(v88 + 60);
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  *buf = v382;
                  *&buf[4] = "nw_http1_move_frame_array";
                  *&buf[12] = 2048;
                  *&buf[14] = v90;
                  *&buf[22] = 1024;
                  *&buf[24] = v97;
                  *&buf[28] = 2048;
                  *&buf[30] = v88;
                  *&buf[38] = 1024;
                  *&buf[40] = v98;
                  _os_log_impl(&dword_181A37000, logc, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
                  v55 = v382;
                }
              }

              v92 = *(v90 + 32);
              v93 = *(v90 + 40);
              v94 = (v92 + 40);
              if (!v92)
              {
                v94 = &v389[8];
              }

              *v94 = v93;
              *v93 = v92;
              *v91 = 0;
              v91[1] = 0;
              v95 = *(v10 + 624);
              *(v90 + 40) = v95;
              *v95 = v90;
              *(v10 + 624) = v91;
              --v89;
            }

            while (v88);
            if (!v89)
            {
LABEL_368:
              if (gLogDatapath != 1)
              {
                goto LABEL_369;
              }

              v290 = __nwlog_obj();
              if (!os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_369;
              }

              *buf = 136446978;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v57;
              *&buf[18] = 2048;
              *&buf[20] = v385;
              *&buf[28] = 2048;
              *&buf[30] = v10 + 616;
              v110 = "%{public}s moved %u frames from %p to %p";
              v111 = v290;
              v112 = 38;
LABEL_578:
              _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, v110, buf, v112);
LABEL_369:
              *(v10 + 874) |= 2u;
              return;
            }
          }

          __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v89;
          v115 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v387 = 0;
          if (__nwlog_fault(v115, &type, &v387))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v116 = __nwlog_obj();
              v117 = type;
              if (!os_log_type_enabled(v116, type))
              {
                goto LABEL_366;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              v118 = "%{public}s failed to deliver all temp frames, remaining %u frames";
              goto LABEL_365;
            }

            if (v387 != 1)
            {
              v116 = __nwlog_obj();
              v117 = type;
              if (!os_log_type_enabled(v116, type))
              {
                goto LABEL_366;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              v118 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
              goto LABEL_365;
            }

            v127 = __nw_create_backtrace_string();
            v116 = __nwlog_obj();
            v117 = type;
            v128 = os_log_type_enabled(v116, type);
            if (v127)
            {
              if (v128)
              {
                *buf = 136446722;
                *&buf[4] = "nw_http1_move_frame_array";
                *&buf[12] = 1024;
                *&buf[14] = v89;
                *&buf[18] = 2082;
                *&buf[20] = v127;
                _os_log_impl(&dword_181A37000, v116, v117, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v127);
              goto LABEL_366;
            }

            if (v128)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              v118 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
LABEL_365:
              _os_log_impl(&dword_181A37000, v116, v117, v118, buf, 0x12u);
            }
          }

LABEL_366:
          if (v115)
          {
            free(v115);
          }

          goto LABEL_368;
        }

        if (*(v10 + 158))
        {
          return;
        }

        if (gLogDatapath != 1)
        {
          return;
        }

        v36 = __nwlog_obj();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v99 = *(v10 + 488);
        v100 = *(*(v10 + 480) + 372);
        v101 = *(v10 + 860);
        if (v99)
        {
          LODWORD(v99) = *(v99 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_detect_next_request";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v100;
        *&buf[38] = 1024;
        *&buf[40] = v101;
        *&buf[44] = 1024;
        *&buf[46] = v99;
        v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> read 0 frames on non-idle connection, not deferring new flow";
LABEL_282:
        v23 = v36;
        v24 = 50;
        goto LABEL_45;
      }

      if ((*(v7 + 158) & 1) == 0)
      {
        v221 = __nwlog_obj();
        if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
        {
          v222 = *(v7 + 372);
          *buf = 136446978;
          *&buf[4] = "nw_http1_new_flow_valid";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v222;
          _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
        }
      }

      if ((*(v10 + 872) & 0x100) == 0)
      {
        *(v10 + 872) |= 0x100u;
        if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v352 = __nwlog_obj();
          if (os_log_type_enabled(v352, OS_LOG_TYPE_DEBUG))
          {
            v353 = *(v10 + 488);
            v354 = *(*(v10 + 480) + 372);
            v355 = *(v10 + 860);
            if (v353)
            {
              LODWORD(v353) = *(v353 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_close";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v354;
            *&buf[38] = 1024;
            *&buf[40] = v355;
            *&buf[44] = 1024;
            *&buf[46] = v353;
            _os_log_impl(&dword_181A37000, v352, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
          }
        }

        v223 = *(v10 + 480);
        if (v223)
        {
          if ((*(v10 + 872) & 0x800) == 0)
          {
            *(v10 + 872) |= 0x800u;
            v224 = *(v223 + 368) + 1;
            *(v223 + 368) = v224;
            if (v224 == v224 << 31 >> 31)
            {
              goto LABEL_653;
            }

            __nwlog_obj();
            v225 = *(v223 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v225;
            v226 = _os_log_send_and_compose_impl();
            v389[0] = 16;
            v385[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v226, v389, v385))
            {
              if (v389[0] == 17)
              {
                v227 = __nwlog_obj();
                v228 = v389[0];
                if (os_log_type_enabled(v227, v389[0]))
                {
                  v229 = *(v223 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v229;
                  v230 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_649:
                  _os_log_impl(&dword_181A37000, v227, v228, v230, buf, 0x2Au);
                }
              }

              else if (v385[0] == OS_LOG_TYPE_INFO)
              {
                v286 = __nw_create_backtrace_string();
                v227 = __nwlog_obj();
                v228 = v389[0];
                v287 = os_log_type_enabled(v227, v389[0]);
                if (v286)
                {
                  if (v287)
                  {
                    v288 = *(v223 + 368);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v288;
                    *&buf[42] = 2082;
                    *&buf[44] = v286;
                    _os_log_impl(&dword_181A37000, v227, v228, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v286);
                  goto LABEL_650;
                }

                if (v287)
                {
                  v324 = *(v223 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v324;
                  v230 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_649;
                }
              }

              else
              {
                v227 = __nwlog_obj();
                v228 = v389[0];
                if (os_log_type_enabled(v227, v389[0]))
                {
                  v300 = *(v223 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v300;
                  v230 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_649;
                }
              }
            }

LABEL_650:
            if (v226)
            {
              free(v226);
            }

            *(v223 + 368) = -1;
LABEL_653:
            if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v368 = __nwlog_obj();
              if (os_log_type_enabled(v368, OS_LOG_TYPE_DEBUG))
              {
                v369 = *(v10 + 488);
                v370 = *(*(v10 + 480) + 372);
                v371 = *(v10 + 860);
                if (v369)
                {
                  LODWORD(v369) = *(v369 + 424);
                }

                v372 = *(v223 + 368) + *(v223 + 364);
                *buf = 136447746;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v10 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v370;
                *&buf[38] = 1024;
                *&buf[40] = v371;
                *&buf[44] = 1024;
                *&buf[46] = v369;
                *&buf[50] = 1024;
                *&buf[52] = v372;
                _os_log_impl(&dword_181A37000, v368, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
              }
            }

            v314 = *(v10 + 496);
            if (v314)
            {
              v315 = *(v10 + 480);
              if (!v315)
              {
LABEL_657:
                __nwlog_obj();
                *v389 = 136446210;
                *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                v325 = _os_log_send_and_compose_impl();
                v385[0] = OS_LOG_TYPE_ERROR;
                type = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v325, v385, &type))
                {
                  goto LABEL_784;
                }

                if (v385[0] == OS_LOG_TYPE_FAULT)
                {
                  v326 = __nwlog_obj();
                  v327 = v385[0];
                  if (!os_log_type_enabled(v326, v385[0]))
                  {
                    goto LABEL_784;
                  }

                  *v389 = 136446210;
                  *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v328 = "%{public}s called with null http1";
LABEL_782:
                  v374 = v389;
                  goto LABEL_783;
                }

                if (type != OS_LOG_TYPE_INFO)
                {
                  v326 = __nwlog_obj();
                  v327 = v385[0];
                  if (!os_log_type_enabled(v326, v385[0]))
                  {
                    goto LABEL_784;
                  }

                  *v389 = 136446210;
                  *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v328 = "%{public}s called with null http1, backtrace limit exceeded";
                  goto LABEL_782;
                }

                v337 = __nw_create_backtrace_string();
                v326 = __nwlog_obj();
                v327 = v385[0];
                v366 = os_log_type_enabled(v326, v385[0]);
                if (!v337)
                {
                  if (!v366)
                  {
                    goto LABEL_784;
                  }

                  *v389 = 136446210;
                  *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v328 = "%{public}s called with null http1, no backtrace";
                  goto LABEL_782;
                }

                if (v366)
                {
                  *v389 = 136446466;
                  *&v389[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  *&v389[12] = 2082;
                  *&v389[14] = v337;
                  v339 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                  goto LABEL_741;
                }

                goto LABEL_743;
              }

LABEL_637:
              v316 = *(v315 + 200);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A327A8;
              *&buf[32] = v316;
              nw_queue_context_async(v314, buf);
              goto LABEL_638;
            }

            goto LABEL_704;
          }

          if (*(v10 + 158))
          {
            goto LABEL_638;
          }

          v247 = gLogDatapath;
LABEL_512:
          if (v247 == 1)
          {
            v248 = __nwlog_obj();
            if (os_log_type_enabled(v248, OS_LOG_TYPE_DEBUG))
            {
              v249 = *(v10 + 488);
              v250 = *(*(v10 + 480) + 372);
              v251 = *(v10 + 860);
              if (v249)
              {
                LODWORD(v249) = *(v249 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = v10 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v250;
              *&buf[38] = 1024;
              *&buf[40] = v251;
              *&buf[44] = 1024;
              *&buf[46] = v249;
              _os_log_impl(&dword_181A37000, v248, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
            }
          }

          goto LABEL_638;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v325 = _os_log_send_and_compose_impl();
        v389[0] = 16;
        v385[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v325, v389, v385))
        {
          goto LABEL_784;
        }

        if (v389[0] == 17)
        {
          goto LABEL_710;
        }

        if (v385[0] == OS_LOG_TYPE_INFO)
        {
          v367 = __nw_create_backtrace_string();
          v326 = __nwlog_obj();
          v327 = v389[0];
          v338 = os_log_type_enabled(v326, v389[0]);
          if (v367)
          {
            if (v338)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = v367;
              _os_log_impl(&dword_181A37000, v326, v327, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v367);
LABEL_784:
            if (!v325)
            {
              goto LABEL_638;
            }

            goto LABEL_785;
          }

LABEL_767:
          if (!v338)
          {
            goto LABEL_784;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          v328 = "%{public}s called with null http1, no backtrace";
          goto LABEL_769;
        }

        goto LABEL_750;
      }

      if (*(v10 + 158))
      {
        return;
      }

      v239 = gLogDatapath;
LABEL_503:
      if (v239 != 1)
      {
        return;
      }

      v36 = __nwlog_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v244 = *(v10 + 488);
      v245 = *(*(v10 + 480) + 372);
      v246 = *(v10 + 860);
      if (v244)
      {
        LODWORD(v244) = *(v244 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_close";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v245;
      *&buf[38] = 1024;
      *&buf[40] = v246;
      *&buf[44] = 1024;
      *&buf[46] = v244;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> already closed";
      goto LABEL_282;
    }

LABEL_277:
    if (*(v10 + 158))
    {
      return;
    }

    v36 = __nwlog_obj();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v153 = *(v10 + 488);
    v154 = *(*(v10 + 480) + 372);
    v155 = *(v10 + 860);
    if (v153)
    {
      LODWORD(v153) = *(v153 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_new_flow_valid";
    *&buf[12] = 2082;
    *&buf[14] = v10 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v154;
    *&buf[38] = 1024;
    *&buf[40] = v155;
    *&buf[44] = 1024;
    *&buf[46] = v153;
    v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> called without listen handler, ignoring";
    goto LABEL_282;
  }

  if (*(v7 + 158))
  {
    return;
  }

  v12 = gLogDatapath;
LABEL_254:
  if (v12 == 1)
  {
    v137 = __nwlog_obj();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
    {
      v138 = *(v7 + 372);
      *buf = 136446978;
      *&buf[4] = "nw_http1_new_flow_valid";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v138;
      v22 = "%{public}s %{public}s%s<i%u> called when not in server mode, ignoring";
      v23 = v137;
      v24 = 38;
      goto LABEL_45;
    }
  }
}

uint64_t nw_protocol_http1_reset(nw_protocol *a1, nw_protocol *a2)
{
  v481 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v271 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v271, aBlock, v456))
    {
      goto LABEL_672;
    }

    if (aBlock[0] == 17)
    {
      v272 = __nwlog_obj();
      v273 = aBlock[0];
      if (!os_log_type_enabled(v272, aBlock[0]))
      {
        goto LABEL_672;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v274 = "%{public}s called with null protocol";
    }

    else
    {
      if (v456[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v272 = __nwlog_obj();
        v273 = aBlock[0];
        v288 = os_log_type_enabled(v272, aBlock[0]);
        if (!backtrace_string)
        {
          if (!v288)
          {
            goto LABEL_672;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v274 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_671;
        }

        if (v288)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v272, v273, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_672;
      }

      v272 = __nwlog_obj();
      v273 = aBlock[0];
      if (!os_log_type_enabled(v272, aBlock[0]))
      {
        goto LABEL_672;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v274 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_671:
    _os_log_impl(&dword_181A37000, v272, v273, v274, buf, 0xCu);
    goto LABEL_672;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v271 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v271, aBlock, v456))
    {
      goto LABEL_672;
    }

    if (aBlock[0] == 17)
    {
      v272 = __nwlog_obj();
      v273 = aBlock[0];
      if (!os_log_type_enabled(v272, aBlock[0]))
      {
        goto LABEL_672;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v274 = "%{public}s called with null handle";
    }

    else
    {
      if (v456[0] == OS_LOG_TYPE_INFO)
      {
        v289 = __nw_create_backtrace_string();
        v272 = __nwlog_obj();
        v273 = aBlock[0];
        v290 = os_log_type_enabled(v272, aBlock[0]);
        if (!v289)
        {
          if (!v290)
          {
            goto LABEL_672;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v274 = "%{public}s called with null handle, no backtrace";
          goto LABEL_671;
        }

        if (v290)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v289;
          _os_log_impl(&dword_181A37000, v272, v273, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v289);
        if (!v271)
        {
LABEL_674:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_reset";
          v275 = _os_log_send_and_compose_impl();
          aBlock[0] = 16;
          v456[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v275, aBlock, v456))
          {
            goto LABEL_705;
          }

          if (aBlock[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v276 = gLogObj;
            v277 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_705;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_reset";
            v278 = "%{public}s called with null http1";
          }

          else
          {
            if (v456[0] == OS_LOG_TYPE_INFO)
            {
              v399 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v400 = gLogObj;
              v401 = aBlock[0];
              v402 = os_log_type_enabled(gLogObj, aBlock[0]);
              if (v399)
              {
                if (v402)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_http1_reset";
                  *&buf[12] = 2082;
                  *&buf[14] = v399;
                  v403 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_699:
                  _os_log_impl(&dword_181A37000, v400, v401, v403, buf, 0x16u);
                }

LABEL_700:
                free(v399);
                goto LABEL_705;
              }

              if (!v402)
              {
                goto LABEL_705;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_reset";
              v278 = "%{public}s called with null http1, no backtrace";
LABEL_710:
              v405 = v400;
              v406 = v401;
              goto LABEL_704;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v276 = gLogObj;
            v277 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_705;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_reset";
            v278 = "%{public}s called with null http1, backtrace limit exceeded";
          }

LABEL_703:
          v405 = v276;
          v406 = v277;
LABEL_704:
          _os_log_impl(&dword_181A37000, v405, v406, v278, buf, 0xCu);
          goto LABEL_705;
        }

LABEL_673:
        free(v271);
        goto LABEL_674;
      }

      v272 = __nwlog_obj();
      v273 = aBlock[0];
      if (!os_log_type_enabled(v272, aBlock[0]))
      {
        goto LABEL_672;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v274 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    goto LABEL_671;
  }

  v4 = *(handle + 6);
  v5 = a1->handle;
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_674;
    }

    v6 = *(handle + 2);
    if (v6)
    {
      v5 = (v6 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v271 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v271, aBlock, v456))
    {
      if (aBlock[0] == 17)
      {
        v272 = __nwlog_obj();
        v273 = aBlock[0];
        if (!os_log_type_enabled(v272, aBlock[0]))
        {
          goto LABEL_672;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v274 = "%{public}s called with null handle->http1_connection";
        goto LABEL_671;
      }

      if (v456[0] != OS_LOG_TYPE_INFO)
      {
        v272 = __nwlog_obj();
        v273 = aBlock[0];
        if (!os_log_type_enabled(v272, aBlock[0]))
        {
          goto LABEL_672;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v274 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_671;
      }

      v367 = __nw_create_backtrace_string();
      v272 = __nwlog_obj();
      v273 = aBlock[0];
      v370 = os_log_type_enabled(v272, aBlock[0]);
      if (!v367)
      {
        if (!v370)
        {
          goto LABEL_672;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v274 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_671;
      }

      if (v370)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v367;
        v369 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_564;
      }

      goto LABEL_565;
    }

LABEL_672:
    if (!v271)
    {
      goto LABEL_674;
    }

    goto LABEL_673;
  }

  v7 = *(handle + 1);
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v271 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v271, aBlock, v456))
    {
      goto LABEL_672;
    }

    if (aBlock[0] != 17)
    {
      if (v456[0] != OS_LOG_TYPE_INFO)
      {
        v272 = __nwlog_obj();
        v273 = aBlock[0];
        if (!os_log_type_enabled(v272, aBlock[0]))
        {
          goto LABEL_672;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v274 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_671;
      }

      v367 = __nw_create_backtrace_string();
      v272 = __nwlog_obj();
      v273 = aBlock[0];
      v368 = os_log_type_enabled(v272, aBlock[0]);
      if (!v367)
      {
        if (!v368)
        {
          goto LABEL_672;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v274 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_671;
      }

      if (v368)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v367;
        v369 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_564:
        _os_log_impl(&dword_181A37000, v272, v273, v369, buf, 0x16u);
      }

LABEL_565:
      free(v367);
      if (!v271)
      {
        goto LABEL_674;
      }

      goto LABEL_673;
    }

    v272 = __nwlog_obj();
    v273 = aBlock[0];
    if (!os_log_type_enabled(v272, aBlock[0]))
    {
      goto LABEL_672;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v274 = "%{public}s called with null handle->http1_stream";
    goto LABEL_671;
  }

  v5 = (v7 + 248);
LABEL_10:
  v8 = *v5;
  if (!*v5)
  {
    goto LABEL_674;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_reset";
    v275 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v275, aBlock, v456))
    {
      goto LABEL_705;
    }

    if (aBlock[0] == 17)
    {
      v276 = __nwlog_obj();
      v277 = aBlock[0];
      if (!os_log_type_enabled(v276, aBlock[0]))
      {
        goto LABEL_705;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_reset";
      v278 = "%{public}s called with null other_protocol";
    }

    else if (v456[0] == OS_LOG_TYPE_INFO)
    {
      v326 = __nw_create_backtrace_string();
      v276 = __nwlog_obj();
      v277 = aBlock[0];
      v327 = os_log_type_enabled(v276, aBlock[0]);
      if (v326)
      {
        if (v327)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_reset";
          *&buf[12] = 2082;
          *&buf[14] = v326;
          _os_log_impl(&dword_181A37000, v276, v277, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v326);
        goto LABEL_705;
      }

      if (!v327)
      {
        goto LABEL_705;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_reset";
      v278 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v276 = __nwlog_obj();
      v277 = aBlock[0];
      if (!os_log_type_enabled(v276, aBlock[0]))
      {
        goto LABEL_705;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_reset";
      v278 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_703;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_691;
    }

    v9 = *(handle + 2);
    if (v9)
    {
      v10 = (v9 + 488);
      goto LABEL_17;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_stream_for_protocol";
    v342 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v342, aBlock, v456))
    {
      if (aBlock[0] == 17)
      {
        v343 = __nwlog_obj();
        v344 = aBlock[0];
        if (!os_log_type_enabled(v343, aBlock[0]))
        {
          goto LABEL_689;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        v345 = "%{public}s called with null handle->http1_connection";
        goto LABEL_688;
      }

      if (v456[0] != OS_LOG_TYPE_INFO)
      {
        v343 = __nwlog_obj();
        v344 = aBlock[0];
        if (!os_log_type_enabled(v343, aBlock[0]))
        {
          goto LABEL_689;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        v345 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_688;
      }

      v371 = __nw_create_backtrace_string();
      v343 = __nwlog_obj();
      v344 = aBlock[0];
      v372 = os_log_type_enabled(v343, aBlock[0]);
      if (v371)
      {
        if (v372)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v371;
          _os_log_impl(&dword_181A37000, v343, v344, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v371);
        goto LABEL_689;
      }

      if (v372)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        v345 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_688:
        _os_log_impl(&dword_181A37000, v343, v344, v345, buf, 0xCu);
      }
    }

LABEL_689:
    if (v342)
    {
      free(v342);
    }

    goto LABEL_691;
  }

  v10 = (handle + 8);
LABEL_17:
  v11 = *v10;
  if (*v10)
  {
    v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v295 = __nwlog_obj();
      if (os_log_type_enabled(v295, OS_LOG_TYPE_DEBUG))
      {
        v296 = *(v11 + 256);
        v297 = *(*(v11 + 248) + 372);
        if (v296)
        {
          LODWORD(v296) = *(v296 + 860);
        }

        v298 = *(v11 + 424);
        *buf = 136448002;
        *&buf[4] = "nw_protocol_http1_reset";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v297;
        *&buf[38] = 1024;
        *&buf[40] = v296;
        *&buf[44] = 1024;
        *&buf[46] = v298;
        *&buf[50] = 2048;
        *&buf[52] = v11;
        *&buf[60] = 2048;
        *&buf[62] = a2;
        _os_log_impl(&dword_181A37000, v295, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream %p with replacement protocol: %p", buf, 0x46u);
      }
    }

    nw_protocol_set_output_handler(a2, 0);
    nw_protocol_set_input_handler(v11, 0);
    v13 = *(v11 + 336);
    if (v13)
    {
      v14 = os_retain(v13);
    }

    else
    {
      v14 = 0;
    }

    v454 = a2;
    v15 = *(v11 + 320);
    if (v15)
    {
      v16 = os_retain(v15);
    }

    else
    {
      v16 = 0;
    }

    v453 = v16;
    if ((*(v11 + 428) & 0x2000) == 0)
    {
LABEL_67:
      v41 = *(v11 + 256);
      v452 = v41;
      if (!v41)
      {
        goto LABEL_102;
      }

      if (*(v11 + 248))
      {
        if (*(v41 + 488) == v11)
        {
          if ((*(v11 + 158) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v48 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v49 = *(v11 + 256);
              v50 = *(*(v11 + 248) + 372);
              if (v49)
              {
                LODWORD(v49) = *(v49 + 860);
              }

              v51 = *(v11 + 424);
              *buf = 136448002;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v50;
              *&buf[38] = 1024;
              *&buf[40] = v49;
              *&buf[44] = 1024;
              *&buf[46] = v51;
              *&buf[50] = 2048;
              *&buf[52] = v11;
              *&buf[60] = 2048;
              *&buf[62] = v452;
              _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
            }
          }

          v52 = v452;
          v53 = (v452 + 632);
          if (gLogDatapath == 1)
          {
            v378 = __nwlog_obj();
            v379 = os_log_type_enabled(v378, OS_LOG_TYPE_DEBUG);
            v52 = v452;
            if (v379)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_finalize_temp_frame_array";
              _os_log_impl(&dword_181A37000, v378, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              v52 = v452;
            }
          }

          v54 = *v53;
          if (*v53)
          {
            *(v54 + 40) = aBlock;
            v55 = v52[80];
            *aBlock = v54;
            *&aBlock[8] = v55;
            v52[79] = 0;
            v52[80] = v53;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_21_49595;
            buf[32] = 0;
            do
            {
              v56 = *aBlock;
              if (!*aBlock)
              {
                break;
              }

              v57 = *(*aBlock + 32);
              v58 = *(*aBlock + 40);
              v59 = (v57 + 40);
              if (!v57)
              {
                v59 = &aBlock[8];
              }

              *v59 = v58;
              *v58 = v57;
              *(v56 + 32) = 0;
              *(v56 + 40) = 0;
            }

            while (((*&buf[16])(buf) & 1) != 0);
            v52 = v452;
          }

          *(v11 + 256) = 0;
          v52[61] = 0;
          nw_protocol_set_output_handler(v11, 0);
          nw_protocol_set_input_handler(v452, 0);
          goto LABEL_102;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v42 = *(v41 + 488);
        *buf = 136446978;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        *&buf[12] = 2048;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        *&buf[24] = v11;
        *&buf[32] = 2048;
        *&buf[34] = v42;
        v43 = _os_log_send_and_compose_impl();
        aBlock[0] = 16;
        v456[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v43, aBlock, v456))
        {
          goto LABEL_100;
        }

        if (aBlock[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          v45 = aBlock[0];
          if (!os_log_type_enabled(gLogObj, aBlock[0]))
          {
            goto LABEL_100;
          }

          v46 = *(v452 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v452;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          *&buf[32] = 2048;
          *&buf[34] = v46;
          v47 = "%{public}s Connection %p does not already have stream %p, has %p";
          goto LABEL_98;
        }

        if (v456[0] != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          v45 = aBlock[0];
          if (!os_log_type_enabled(gLogObj, aBlock[0]))
          {
            goto LABEL_100;
          }

          v63 = *(v452 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v452;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          *&buf[32] = 2048;
          *&buf[34] = v63;
          v47 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
          goto LABEL_98;
        }

        v60 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = aBlock[0];
        v61 = os_log_type_enabled(gLogObj, aBlock[0]);
        if (v60)
        {
          if (v61)
          {
            v62 = *(v452 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            *&buf[12] = 2048;
            *&buf[14] = v452;
            *&buf[22] = 2048;
            *&buf[24] = v11;
            *&buf[32] = 2048;
            *&buf[34] = v62;
            *&buf[42] = 2082;
            *&buf[44] = v60;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v60);
          v16 = v453;
          if (v43)
          {
            goto LABEL_101;
          }

          goto LABEL_102;
        }

        v16 = v453;
        if (v61)
        {
          v64 = *(v452 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v452;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          *&buf[32] = 2048;
          *&buf[34] = v64;
          v47 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_98:
          v65 = v44;
          v66 = v45;
          v67 = 42;
LABEL_99:
          _os_log_impl(&dword_181A37000, v65, v66, v47, buf, v67);
        }

LABEL_100:
        if (v43)
        {
LABEL_101:
          free(v43);
        }

LABEL_102:
        if ((v8[158] & 1) == 0 && gLogDatapath == 1)
        {
          v299 = __nwlog_obj();
          if (os_log_type_enabled(v299, OS_LOG_TYPE_DEBUG))
          {
            v300 = *(v8 + 93);
            v301 = *(v11 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = v8 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v300;
            *&buf[38] = 1024;
            *&buf[40] = v301;
            *&buf[44] = 2048;
            *&buf[46] = v11;
            _os_log_impl(&dword_181A37000, v299, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
          }
        }

        v68 = *(v11 + 280);
        v69 = *(v11 + 288);
        v70 = v8 + 240;
        if (v68)
        {
          v70 = (v68 + 288);
        }

        *v70 = v69;
        *v69 = v68;
        *(v11 + 280) = 0;
        *(v11 + 288) = 0;
        v71 = *(v8 + 86);
        *(v8 + 86) = v71 - 1;
        if (v71)
        {
          if ((*(v11 + 428) & 0x10) == 0)
          {
            goto LABEL_142;
          }

          goto LABEL_125;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = *(v8 + 86);
        *buf = 136446978;
        *&buf[4] = "nw_http1_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = "http1->streams_count";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v72;
        v73 = _os_log_send_and_compose_impl();
        aBlock[0] = 16;
        v456[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v73, aBlock, v456))
        {
          if (aBlock[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            v75 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_122;
            }

            v76 = *(v8 + 86);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->streams_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v76;
            v77 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_120:
            v84 = v74;
            v85 = v75;
LABEL_121:
            _os_log_impl(&dword_181A37000, v84, v85, v77, buf, 0x2Au);
            goto LABEL_122;
          }

          if (v456[0] != OS_LOG_TYPE_INFO)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            v75 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_122;
            }

            v83 = *(v8 + 86);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->streams_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v83;
            v77 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_120;
          }

          v78 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v79 = gLogObj;
          v80 = aBlock[0];
          v81 = os_log_type_enabled(gLogObj, aBlock[0]);
          if (v78)
          {
            if (v81)
            {
              v82 = *(v8 + 86);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->streams_count";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v82;
              *&buf[42] = 2082;
              *&buf[44] = v78;
              _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v78);
          }

          else if (v81)
          {
            v224 = *(v8 + 86);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->streams_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v224;
            v77 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            v84 = v79;
            v85 = v80;
            goto LABEL_121;
          }
        }

LABEL_122:
        if (v73)
        {
          free(v73);
        }

        *(v8 + 86) = 0;
        v16 = v453;
        v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if ((*(v11 + 428) & 0x10) == 0)
        {
LABEL_142:
          if ((*(v11 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
          {
            v302 = __nwlog_obj();
            if (os_log_type_enabled(v302, OS_LOG_TYPE_DEBUG))
            {
              v303 = *(v11 + 256);
              v304 = *(*(v11 + 248) + 372);
              if (v303)
              {
                LODWORD(v303) = *(v303 + 860);
              }

              v305 = *(v11 + 424);
              v306 = *(v8 + 86);
              *buf = 136448258;
              *&buf[4] = "nw_http1_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v304;
              *&buf[38] = 1024;
              *&buf[40] = v303;
              *&buf[44] = 1024;
              *&buf[46] = v305;
              *&buf[50] = 1024;
              *&buf[52] = v305;
              *&buf[56] = 2048;
              *&buf[58] = v11;
              *&buf[66] = 1024;
              *&buf[68] = v306;
              _os_log_impl(&dword_181A37000, v302, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed stream %u (%p), now have %u streams", buf, 0x48u);
            }
          }

          if (v14)
          {
            if (v16)
            {
              v101 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x23DFB97CuLL);
              v102 = v101;
              if (v101)
              {
                v101[25] = 0u;
                v101[26] = 0u;
                v101[23] = 0u;
                v101[24] = 0u;
                v101[21] = 0u;
                v101[22] = 0u;
                v101[19] = 0u;
                v101[20] = 0u;
                v101[17] = 0u;
                v101[18] = 0u;
                v101[15] = 0u;
                v101[16] = 0u;
                v101[13] = 0u;
                v101[14] = 0u;
                v101[11] = 0u;
                v101[12] = 0u;
                v101[9] = 0u;
                v101[10] = 0u;
                v101[7] = 0u;
                v101[8] = 0u;
                v101[5] = 0u;
                v101[6] = 0u;
                v101[3] = 0u;
                v101[4] = 0u;
                v101[1] = 0u;
                v101[2] = 0u;
                *v101 = 0u;
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_create";
                v103 = 2;
                *&buf[12] = 2048;
                *&buf[14] = 1;
                *&buf[22] = 2048;
                *&buf[24] = 432;
                v104 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v104) || (free(v104), MEMORY[0x1A0] = 0u, MEMORY[0x190] = 0u, MEMORY[0x180] = 0u, MEMORY[0x170] = 0u, MEMORY[0x160] = 0u, MEMORY[0x150] = 0u, MEMORY[0x140] = 0u, MEMORY[0x130] = 0u, MEMORY[0x120] = 0u, MEMORY[0x110] = 0u, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0xA0] = 0u, MEMORY[0] = 0u, MEMORY[0xA8] = 0, MEMORY[0xB0] = 0, MEMORY[0xB8] = 0, MEMORY[0xC8] = 0, MEMORY[0xD1] = 0, MEMORY[0x108] = 0, MEMORY[0x140] = 0, MEMORY[0x148] = 0, MEMORY[0x150] = 0, MEMORY[0x158] = 0, MEMORY[0x160] = 0, MEMORY[0x168] = 0, MEMORY[0x170] = 0, MEMORY[0x178] = 0, MEMORY[0x180] = 0, MEMORY[0x188] = 0, MEMORY[0x190] = 0, MEMORY[0x198] = 0, MEMORY[0x1A0] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, *&buf[4] = "nw_http1_stream_create", v104 = _os_log_send_and_compose_impl(), __nwlog_should_abort(v104)))
                {
                  __break(1u);
                  goto LABEL_779;
                }

                free(v104);
                v16 = v453;
                v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              }

              *(v102 + 16) = *(v8 + 2);
              if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
              {
                dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
              }

              *(v102 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
              *(v102 + 240) = 2;
              *(v102 + 224) = v102;
              *(v102 + 40) = v102 + 216;
              *(v102 + 248) = v8;
              nw_protocol_set_input_handler(v102, v454);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              *&buf[24] = v102;
              *aBlock = MEMORY[0x1E69E9820];
              *&aBlock[8] = 0x40000000;
              *&aBlock[16] = ___ZL22nw_http1_stream_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
              v479 = &unk_1E6A32A48;
              *v480 = buf;
              *(v102 + 312) = _Block_copy(aBlock);
              _Block_object_dispose(buf, 8);
              v105 = os_retain(v14);
              v106 = *(v102 + 344);
              if ((v106 & 1) != 0 && *(v102 + 336))
              {
                v107 = v105;
                os_release(*(v102 + 336));
                v105 = v107;
                v106 = *(v102 + 344);
              }

              *(v102 + 336) = v105;
              *(v102 + 344) = v106 | 1;
              v108 = os_retain(v16);
              v109 = *(v102 + 328);
              if ((v109 & 1) != 0 && *(v102 + 320))
              {
                v110 = v108;
                os_release(*(v102 + 320));
                v108 = v110;
                v109 = *(v102 + 328);
              }

              *(v102 + 320) = v108;
              *(v102 + 328) = v109 | 1;
              if ((*(v102 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
              {
                v315 = __nwlog_obj();
                if (os_log_type_enabled(v315, OS_LOG_TYPE_DEBUG))
                {
                  v316 = *(v102 + 256);
                  v317 = *(*(v102 + 248) + 372);
                  if (v316)
                  {
                    LODWORD(v316) = *(v316 + 860);
                  }

                  v318 = *(v102 + 424);
                  *buf = 136447746;
                  *&buf[4] = "nw_http1_stream_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v102 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v317;
                  *&buf[38] = 1024;
                  *&buf[40] = v316;
                  *&buf[44] = 1024;
                  *&buf[46] = v318;
                  *&buf[50] = 2048;
                  *&buf[52] = v102;
                  _os_log_impl(&dword_181A37000, v315, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                }
              }

              v111 = _nw_parameters_copy_context(v16);
              v112 = *(v102 + 272);
              if ((v112 & 1) != 0 && *(v102 + 264))
              {
                v113 = v111;
                os_release(*(v102 + 264));
                v111 = v113;
                v112 = *(v102 + 272);
              }

              *(v102 + 264) = v111;
              *(v102 + 272) = v112 | 1;
              v114 = _nw_http_parsed_fields_create();
              v115 = *(v102 + 408);
              if ((v115 & 1) != 0 && *(v102 + 400))
              {
                v116 = v114;
                os_release(*(v102 + 400));
                v114 = v116;
                v115 = *(v102 + 408);
              }

              *(v102 + 400) = v114;
              *(v102 + 408) = v115 | 1;
              *(v102 + 208) = v8[376] & 1;
              v117 = v16;
              v118 = _nw_parameters_copy_protocol_options_with_level(v117, v8);

              if (!v118 || (singleton = nw_http_messaging_options_copy_transaction_metadata(v118)) == 0)
              {
                if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
                {
                  dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
                }

                singleton = _nw_protocol_metadata_create_singleton();
              }

              v120 = *(v102 + 360);
              if ((v120 & 1) != 0 && *(v102 + 352))
              {
                v121 = singleton;
                os_release(*(v102 + 352));
                singleton = v121;
                v120 = *(v102 + 360);
              }

              *(v102 + 352) = singleton;
              *(v102 + 360) = v120 | 1;
              if (v118)
              {
                os_release(v118);
              }

              v122 = v117;
              v123 = _nw_parameters_copy_protocol_options_with_level(v122, v11);

              if (v123)
              {
                if ((*(v102 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v330 = __nwlog_obj();
                  if (os_log_type_enabled(v330, OS_LOG_TYPE_DEBUG))
                  {
                    v331 = *(v102 + 256);
                    v332 = *(*(v102 + 248) + 372);
                    if (v331)
                    {
                      LODWORD(v331) = *(v331 + 860);
                    }

                    v333 = *(v102 + 424);
                    *buf = 136448770;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    *&buf[12] = 2082;
                    *&buf[14] = v102 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v332;
                    *&buf[38] = 1024;
                    *&buf[40] = v331;
                    *&buf[44] = 1024;
                    *&buf[46] = v333;
                    *&buf[50] = 2048;
                    *&buf[52] = v102;
                    *&buf[60] = 2048;
                    *&buf[62] = v8;
                    *&buf[70] = 2048;
                    *&buf[72] = v11;
                    *v475 = 2048;
                    *&v475[2] = v122;
                    v476 = 2048;
                    v477 = v123;
                    _os_log_impl(&dword_181A37000, v330, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                  }
                }

                if (nw_protocol_copy_http1_definition_onceToken != -1)
                {
                  dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
                }

                v124 = nw_protocol_copy_http1_definition_http1_definition;
                v125 = v123;
                _nw_protocol_options_set_instance(v125, v8);

                if (v124)
                {
                  os_release(v124);
                }

                os_release(v125);
              }

              nw_protocol_set_input_handler(v102, v454);
              *v102 = *v454->flow_id;
              nw_protocol_set_output_handler(v454, v102);
              v126 = *(v102 + 320);
              if (v126)
              {
                v451 = v14;
                v127 = v126;
                v128 = _nw_parameters_copy_protocol_options_with_level(v127, v8);

                v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (v128)
                {
                  if ((*(v102 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v334 = __nwlog_obj();
                    if (os_log_type_enabled(v334, OS_LOG_TYPE_DEBUG))
                    {
                      v335 = *(v102 + 256);
                      v336 = *(*(v102 + 248) + 372);
                      if (v335)
                      {
                        LODWORD(v335) = *(v335 + 860);
                      }

                      v337 = *(v102 + 424);
                      *buf = 136448770;
                      *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                      *&buf[12] = 2082;
                      *&buf[14] = v102 + 74;
                      *&buf[22] = 2080;
                      *&buf[24] = " ";
                      *&buf[32] = 1024;
                      *&buf[34] = v336;
                      *&buf[38] = 1024;
                      *&buf[40] = v335;
                      *&buf[44] = 1024;
                      *&buf[46] = v337;
                      *&buf[50] = 2048;
                      *&buf[52] = v102;
                      *&buf[60] = 2048;
                      *&buf[62] = v102;
                      *&buf[70] = 2048;
                      *&buf[72] = v8;
                      *v475 = 2048;
                      *&v475[2] = v127;
                      v476 = 2048;
                      v477 = v128;
                      _os_log_impl(&dword_181A37000, v334, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                    }
                  }

                  if (nw_protocol_copy_http1_definition_onceToken != -1)
                  {
                    dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
                  }

                  v129 = nw_protocol_copy_http1_definition_http1_definition;
                  v130 = v128;
                  _nw_protocol_options_set_instance(v130, v102);

                  if (v129)
                  {
                    os_release(v129);
                  }

                  os_release(v130);
                }

                v131 = nw_parameters_copy_default_protocol_stack(*(v102 + 320));
                v465[0] = 0;
                v465[1] = v465;
                v465[2] = 0x2000000000;
                v466 = 0;
                *v469 = 0;
                *&v469[8] = v469;
                *&v469[16] = 0x3802000000;
                v470 = __Block_byref_object_copy__42960;
                v471 = __Block_byref_object_dispose__42961;
                object = 0;
                v473 |= 1u;
                iterate_block[0] = MEMORY[0x1E69E9820];
                iterate_block[1] = 0x40000000;
                iterate_block[2] = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke;
                iterate_block[3] = &unk_1E6A32A70;
                iterate_block[4] = v465;
                iterate_block[5] = v469;
                iterate_block[6] = v102;
                nw_protocol_stack_iterate_application_protocols(v131, iterate_block);
                v132 = *(v102 + 320);
                if (*(*&v469[8] + 40))
                {
                  v133 = _nw_parameters_shallow_copy(v132, 1);
                  v134 = *(v102 + 328);
                  v16 = v453;
                  if ((v134 & 1) == 0)
                  {
                    goto LABEL_202;
                  }
                }

                else
                {
                  has_transforms = nw_parameters_has_transforms(v132);
                  v136 = *(v102 + 320);
                  v16 = v453;
                  if (has_transforms)
                  {
                    *v456 = MEMORY[0x1E69E9820];
                    v457 = 0x40000000;
                    v458 = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_2;
                    v459 = &unk_1E6A32AC0;
                    v460 = v469;
                    v461 = v465;
                    v462 = v102;
                    v463 = v8;
                    nw_parameters_enumerate_transformed_parameters(v136, v456);
                    v133 = *(v102 + 320);
                    goto LABEL_203;
                  }

                  v133 = _nw_parameters_shallow_copy(v136, 1);
                  v134 = *(v102 + 328);
                  if ((v134 & 1) == 0)
                  {
LABEL_202:
                    *(v102 + 320) = v133;
                    *(v102 + 328) = v134 | 1;
LABEL_203:
                    *v475 = 0;
                    memset(buf, 0, sizeof(buf));
                    v138 = nw_parameters_copy_protocol_options_legacy(v133, v102);
                    v139 = v138;
                    if (v138)
                    {
                      v140 = v138;
                      _nw_protocol_options_get_log_id_str(v140, buf);
                    }

                    else if ((*(v102 + 158) & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v141 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v142 = *(v102 + 256);
                        v143 = *(*(v102 + 248) + 372);
                        if (v142)
                        {
                          LODWORD(v142) = *(v142 + 860);
                        }

                        v144 = *(v102 + 424);
                        *aBlock = 136448002;
                        *&aBlock[4] = "nw_http1_stream_add_input_handler";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v102 + 74;
                        *&aBlock[22] = 2080;
                        v479 = " ";
                        *v480 = 1024;
                        *&v480[2] = v143;
                        *&v480[6] = 1024;
                        *&v480[8] = v142;
                        *&v480[12] = 1024;
                        *&v480[14] = v144;
                        *&v480[18] = 2048;
                        *&v480[20] = v102;
                        *&v480[28] = 2048;
                        *&v480[30] = v127;
                        _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Failed to access options for protocol %p, parameters %p", aBlock, 0x46u);
                      }
                    }

                    if ((v8[158] & 1) == 0 && gLogDatapath == 1)
                    {
                      v319 = __nwlog_obj();
                      if (os_log_type_enabled(v319, OS_LOG_TYPE_DEBUG))
                      {
                        v320 = *(v8 + 93);
                        *aBlock = 136447234;
                        *&aBlock[4] = "nw_http1_add_stream";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v8 + 74;
                        *&aBlock[22] = 2080;
                        v479 = " ";
                        *v480 = 1024;
                        *&v480[2] = v320;
                        *&v480[6] = 2048;
                        *&v480[8] = v102;
                        _os_log_impl(&dword_181A37000, v319, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", aBlock, 0x30u);
                      }
                    }

                    *(v102 + 280) = 0;
                    v145 = *(v8 + 30);
                    *(v102 + 288) = v145;
                    *v145 = v102;
                    *(v8 + 30) = v102 + 280;
                    v146 = *(v8 + 86) + 1;
                    *(v8 + 86) = v146;
                    v450 = v131;
                    if (v146 == v146 << 31 >> 31)
                    {
LABEL_230:
                      v158 = *(v8 + 89) + 1;
                      *(v8 + 89) = v158;
                      if (v158 == v158 << 31 >> 31)
                      {
                        goto LABEL_248;
                      }

                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v159 = *(v8 + 89);
                      *aBlock = 136446978;
                      *&aBlock[4] = "nw_http1_add_stream";
                      *&aBlock[12] = 2082;
                      *&aBlock[14] = "http1->next_stream_log_num";
                      *&aBlock[22] = 2048;
                      v479 = 1;
                      *v480 = 2048;
                      *&v480[2] = v159;
                      v160 = _os_log_send_and_compose_impl();
                      type = OS_LOG_TYPE_ERROR;
                      v467 = 0;
                      if (__nwlog_fault(v160, &type, &v467))
                      {
                        if (type == OS_LOG_TYPE_FAULT)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v161 = gLogObj;
                          v162 = type;
                          if (os_log_type_enabled(gLogObj, type))
                          {
                            v163 = *(v8 + 89);
                            *aBlock = 136446978;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->next_stream_log_num";
                            *&aBlock[22] = 2048;
                            v479 = 1;
                            *v480 = 2048;
                            *&v480[2] = v163;
                            v164 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_244:
                            _os_log_impl(&dword_181A37000, v161, v162, v164, aBlock, 0x2Au);
                          }
                        }

                        else if (v467 == 1)
                        {
                          v165 = __nw_create_backtrace_string();
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v161 = gLogObj;
                          v162 = type;
                          v166 = os_log_type_enabled(gLogObj, type);
                          if (v165)
                          {
                            if (v166)
                            {
                              v167 = *(v8 + 89);
                              *aBlock = 136447234;
                              *&aBlock[4] = "nw_http1_add_stream";
                              *&aBlock[12] = 2082;
                              *&aBlock[14] = "http1->next_stream_log_num";
                              *&aBlock[22] = 2048;
                              v479 = 1;
                              *v480 = 2048;
                              *&v480[2] = v167;
                              *&v480[10] = 2082;
                              *&v480[12] = v165;
                              _os_log_impl(&dword_181A37000, v161, v162, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                            }

                            free(v165);
                            v16 = v453;
                            goto LABEL_245;
                          }

                          v16 = v453;
                          if (v166)
                          {
                            v169 = *(v8 + 89);
                            *aBlock = 136446978;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->next_stream_log_num";
                            *&aBlock[22] = 2048;
                            v479 = 1;
                            *v480 = 2048;
                            *&v480[2] = v169;
                            v164 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_244;
                          }
                        }

                        else
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v161 = gLogObj;
                          v162 = type;
                          if (os_log_type_enabled(gLogObj, type))
                          {
                            v168 = *(v8 + 89);
                            *aBlock = 136446978;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->next_stream_log_num";
                            *&aBlock[22] = 2048;
                            v479 = 1;
                            *v480 = 2048;
                            *&v480[2] = v168;
                            v164 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_244;
                          }
                        }
                      }

LABEL_245:
                      if (v160)
                      {
                        free(v160);
                      }

                      LODWORD(v158) = -1;
                      *(v8 + 89) = -1;
                      v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                      v131 = v450;
LABEL_248:
                      *(v102 + 424) = v158;
                      if ((*(v102 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
                      {
                        v321 = __nwlog_obj();
                        if (os_log_type_enabled(v321, OS_LOG_TYPE_DEBUG))
                        {
                          v322 = *(v102 + 256);
                          v323 = *(*(v102 + 248) + 372);
                          if (v322)
                          {
                            LODWORD(v322) = *(v322 + 860);
                          }

                          v324 = *(v102 + 424);
                          v325 = *(v8 + 86);
                          *aBlock = 136448258;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = v102 + 74;
                          *&aBlock[22] = 2080;
                          v479 = " ";
                          *v480 = 1024;
                          *&v480[2] = v323;
                          *&v480[6] = 1024;
                          *&v480[8] = v322;
                          *&v480[12] = 1024;
                          *&v480[14] = v324;
                          *&v480[18] = 1024;
                          *&v480[20] = v324;
                          *&v480[24] = 2048;
                          *&v480[26] = v102;
                          *&v480[34] = 1024;
                          *&v480[36] = v325;
                          _os_log_impl(&dword_181A37000, v321, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added stream %u (%p), now have %u streams", aBlock, 0x48u);
                        }
                      }

                      nw_protocol_plugin_name_set_name(v102 + 64, v102, v127);
                      if (buf[0])
                      {
                        v14 = v451;
                        if (v8[158])
                        {
                          goto LABEL_258;
                        }

                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v170 = gLogObj;
                        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_258;
                        }

                        v171 = *(v8 + 93);
                        v172 = *(v8 + 86);
                        *aBlock = 136447746;
                        *&aBlock[4] = "nw_http1_stream_add_input_handler";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v8 + 74;
                        *&aBlock[22] = 2080;
                        v479 = " ";
                        *v480 = 1024;
                        *&v480[2] = v171;
                        *&v480[6] = 2048;
                        *&v480[8] = v454;
                        *&v480[16] = 2082;
                        *&v480[18] = buf;
                        *&v480[26] = 1024;
                        *&v480[28] = v172;
                        v173 = "%{public}s %{public}s%s<i%u> added input handler %p from %{public}s, now have %u input handlers";
                        v174 = v170;
                        v175 = 64;
                      }

                      else
                      {
                        v14 = v451;
                        if (v8[158])
                        {
                          goto LABEL_258;
                        }

                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v176 = gLogObj;
                        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_258;
                        }

                        v177 = *(v8 + 93);
                        v178 = *(v8 + 86);
                        *aBlock = 136447490;
                        *&aBlock[4] = "nw_http1_stream_add_input_handler";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v8 + 74;
                        *&aBlock[22] = 2080;
                        v479 = " ";
                        *v480 = 1024;
                        *&v480[2] = v177;
                        *&v480[6] = 2048;
                        *&v480[8] = v454;
                        *&v480[16] = 1024;
                        *&v480[18] = v178;
                        v173 = "%{public}s %{public}s%s<i%u> added input handler %p, now have %u input handlers";
                        v174 = v176;
                        v175 = 54;
                      }

                      _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEFAULT, v173, aBlock, v175);
LABEL_258:
                      if (v139)
                      {
                        os_release(v139);
                      }

                      _Block_object_dispose(v469, 8);
                      if ((v473 & 1) != 0 && object)
                      {
                        os_release(object);
                      }

                      _Block_object_dispose(v465, 8);
                      if (!v131)
                      {
LABEL_266:
                        if (*(v11 + 158))
                        {
                          goto LABEL_268;
                        }

                        goto LABEL_267;
                      }

                      os_release(v131);
LABEL_265:
                      LODWORD(v131) = 0;
                      goto LABEL_266;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v147 = *(v8 + 86);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->streams_count";
                    *&aBlock[22] = 2048;
                    v479 = 1;
                    *v480 = 2048;
                    *&v480[2] = v147;
                    v148 = _os_log_send_and_compose_impl();
                    type = OS_LOG_TYPE_ERROR;
                    v467 = 0;
                    if (__nwlog_fault(v148, &type, &v467))
                    {
                      if (type == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v149 = gLogObj;
                        v150 = type;
                        if (os_log_type_enabled(gLogObj, type))
                        {
                          v151 = *(v8 + 86);
                          *aBlock = 136446978;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = "http1->streams_count";
                          *&aBlock[22] = 2048;
                          v479 = 1;
                          *v480 = 2048;
                          *&v480[2] = v151;
                          v152 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_226:
                          _os_log_impl(&dword_181A37000, v149, v150, v152, aBlock, 0x2Au);
                        }
                      }

                      else if (v467 == 1)
                      {
                        v153 = __nw_create_backtrace_string();
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v149 = gLogObj;
                        v150 = type;
                        v154 = os_log_type_enabled(gLogObj, type);
                        if (v153)
                        {
                          if (v154)
                          {
                            v155 = *(v8 + 86);
                            *aBlock = 136447234;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->streams_count";
                            *&aBlock[22] = 2048;
                            v479 = 1;
                            *v480 = 2048;
                            *&v480[2] = v155;
                            *&v480[10] = 2082;
                            *&v480[12] = v153;
                            _os_log_impl(&dword_181A37000, v149, v150, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                          }

                          free(v153);
                          v16 = v453;
                          goto LABEL_227;
                        }

                        v16 = v453;
                        if (v154)
                        {
                          v157 = *(v8 + 86);
                          *aBlock = 136446978;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = "http1->streams_count";
                          *&aBlock[22] = 2048;
                          v479 = 1;
                          *v480 = 2048;
                          *&v480[2] = v157;
                          v152 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                          goto LABEL_226;
                        }
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v149 = gLogObj;
                        v150 = type;
                        if (os_log_type_enabled(gLogObj, type))
                        {
                          v156 = *(v8 + 86);
                          *aBlock = 136446978;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = "http1->streams_count";
                          *&aBlock[22] = 2048;
                          v479 = 1;
                          *v480 = 2048;
                          *&v480[2] = v156;
                          v152 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                          goto LABEL_226;
                        }
                      }
                    }

LABEL_227:
                    if (v148)
                    {
                      free(v148);
                    }

                    *(v8 + 86) = -1;
                    v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v131 = v450;
                    goto LABEL_230;
                  }
                }

                if (*(v102 + 320))
                {
                  v137 = v133;
                  os_release(*(v102 + 320));
                  v133 = v137;
                  v134 = *(v102 + 328);
                }

                goto LABEL_202;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v311 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              v469[0] = 0;
              v16 = v453;
              v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (__nwlog_fault(v311, aBlock, v469))
              {
                if (aBlock[0] == 17)
                {
                  v312 = __nwlog_obj();
                  v313 = aBlock[0];
                  if (!os_log_type_enabled(v312, aBlock[0]))
                  {
                    goto LABEL_651;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_add_input_handler";
                  v314 = "%{public}s called with null http1_stream->parameters";
                  goto LABEL_650;
                }

                if (v469[0] != 1)
                {
                  v312 = __nwlog_obj();
                  v313 = aBlock[0];
                  if (!os_log_type_enabled(v312, aBlock[0]))
                  {
                    goto LABEL_651;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_add_input_handler";
                  v314 = "%{public}s called with null http1_stream->parameters, backtrace limit exceeded";
                  goto LABEL_650;
                }

                v353 = __nw_create_backtrace_string();
                v312 = __nwlog_obj();
                v313 = aBlock[0];
                v354 = os_log_type_enabled(v312, aBlock[0]);
                if (v353)
                {
                  if (v354)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v353;
                    _os_log_impl(&dword_181A37000, v312, v313, "%{public}s called with null http1_stream->parameters, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v353);
                  v16 = v453;
                  goto LABEL_651;
                }

                v16 = v453;
                if (v354)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_add_input_handler";
                  v314 = "%{public}s called with null http1_stream->parameters, no backtrace";
LABEL_650:
                  _os_log_impl(&dword_181A37000, v312, v313, v314, buf, 0xCu);
                }
              }

LABEL_651:
              if (v311)
              {
                free(v311);
              }

              goto LABEL_265;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_create";
            v291 = _os_log_send_and_compose_impl();
            v456[0] = OS_LOG_TYPE_ERROR;
            v469[0] = 0;
            if (__nwlog_fault(v291, v456, v469))
            {
              if (v456[0] == OS_LOG_TYPE_FAULT)
              {
                v292 = __nwlog_obj();
                v293 = v456[0];
                if (!os_log_type_enabled(v292, v456[0]))
                {
                  goto LABEL_612;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_create";
                v294 = "%{public}s called with null parameters";
                goto LABEL_611;
              }

              if (v469[0] != 1)
              {
                v292 = __nwlog_obj();
                v293 = v456[0];
                if (!os_log_type_enabled(v292, v456[0]))
                {
                  goto LABEL_612;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_create";
                v294 = "%{public}s called with null parameters, backtrace limit exceeded";
                goto LABEL_611;
              }

              v351 = __nw_create_backtrace_string();
              v292 = __nwlog_obj();
              v293 = v456[0];
              v352 = os_log_type_enabled(v292, v456[0]);
              if (v351)
              {
                if (v352)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v351;
                  _os_log_impl(&dword_181A37000, v292, v293, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v351);
                v16 = v453;
                v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (!v291)
                {
LABEL_614:
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                  v382 = _os_log_send_and_compose_impl();
                  aBlock[0] = 16;
                  v456[0] = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v382, aBlock, v456))
                  {
                    goto LABEL_628;
                  }

                  if (aBlock[0] == 17)
                  {
                    v383 = __nwlog_obj();
                    v384 = aBlock[0];
                    if (!os_log_type_enabled(v383, aBlock[0]))
                    {
                      goto LABEL_628;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    v385 = "%{public}s called with null http1_stream";
                  }

                  else if (v456[0] == OS_LOG_TYPE_INFO)
                  {
                    v386 = __nw_create_backtrace_string();
                    v383 = __nwlog_obj();
                    v384 = aBlock[0];
                    v387 = os_log_type_enabled(v383, aBlock[0]);
                    if (v386)
                    {
                      if (v387)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                        *&buf[12] = 2082;
                        *&buf[14] = v386;
                        _os_log_impl(&dword_181A37000, v383, v384, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v386);
                      v16 = v453;
LABEL_628:
                      if (v382)
                      {
                        free(v382);
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_stream_add_input_handler";
                      v388 = _os_log_send_and_compose_impl();
                      aBlock[0] = 16;
                      v469[0] = 0;
                      if (__nwlog_fault(v388, aBlock, v469))
                      {
                        if (aBlock[0] == 17)
                        {
                          v389 = __nwlog_obj();
                          v390 = aBlock[0];
                          if (!os_log_type_enabled(v389, aBlock[0]))
                          {
                            goto LABEL_644;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          v391 = "%{public}s called with null http1_stream";
LABEL_643:
                          _os_log_impl(&dword_181A37000, v389, v390, v391, buf, 0xCu);
                          goto LABEL_644;
                        }

                        if (v469[0] != 1)
                        {
                          v389 = __nwlog_obj();
                          v390 = aBlock[0];
                          if (!os_log_type_enabled(v389, aBlock[0]))
                          {
                            goto LABEL_644;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          v391 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                          goto LABEL_643;
                        }

                        v392 = __nw_create_backtrace_string();
                        v389 = __nwlog_obj();
                        v390 = aBlock[0];
                        v393 = os_log_type_enabled(v389, aBlock[0]);
                        if (!v392)
                        {
                          v16 = v453;
                          if (!v393)
                          {
                            goto LABEL_644;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          v391 = "%{public}s called with null http1_stream, no backtrace";
                          goto LABEL_643;
                        }

                        if (v393)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v392;
                          _os_log_impl(&dword_181A37000, v389, v390, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v392);
                        v16 = v453;
                      }

LABEL_644:
                      if (v388)
                      {
                        free(v388);
                      }

                      v102 = 0;
                      LODWORD(v131) = 1;
                      if (*(v11 + 158))
                      {
LABEL_268:
                        if (*(v11 + 428) < 0)
                        {
                          nw_http_transaction_metadata_set_event_handler(*(v11 + 352), 0);
                          v179 = *(v11 + 344);
                          if ((v179 & 1) == 0)
                          {
                            goto LABEL_274;
                          }
                        }

                        else
                        {
                          v179 = *(v11 + 344);
                          if ((v179 & 1) == 0)
                          {
                            goto LABEL_274;
                          }
                        }

                        v180 = *(v11 + 336);
                        if (v180)
                        {
                          os_release(v180);
                          v179 = *(v11 + 344);
                        }

LABEL_274:
                        *(v11 + 336) = 0;
                        *(v11 + 344) = v179 | 1;
                        v181 = *(v11 + 328);
                        if (v181)
                        {
                          v182 = *(v11 + 320);
                          if (v182)
                          {
                            os_release(v182);
                            v181 = *(v11 + 328);
                          }
                        }

                        *(v11 + 320) = 0;
                        *(v11 + 328) = v181 | 1;
                        v183 = *(v11 + 376);
                        if (v183)
                        {
                          v184 = *(v11 + 368);
                          if (v184)
                          {
                            os_release(v184);
                            v183 = *(v11 + 376);
                          }
                        }

                        *(v11 + 368) = 0;
                        *(v11 + 376) = v183 | 1;
                        v185 = *(v11 + 392);
                        if (v185)
                        {
                          v186 = *(v11 + 384);
                          if (v186)
                          {
                            os_release(v186);
                            v185 = *(v11 + 392);
                          }
                        }

                        *(v11 + 384) = 0;
                        *(v11 + 392) = v185 | 1;
                        v187 = *(v11 + 256);
                        if (v187 && *(v187 + 488) == v11)
                        {
                          *(v187 + 488) = 0;
                        }

                        *(v11 + 256) = 0;
                        (*(*(v11 + 312) + 16))(*(v11 + 312), 0);
                        v188 = *(v11 + 312);
                        if (v188)
                        {
                          _Block_release(v188);
                          *(v11 + 312) = 0;
                        }

                        nw_http1_stream::~nw_http1_stream(v11);
                        free(v189);
                        v190 = v452;
                        if (!v452)
                        {
                          goto LABEL_336;
                        }

                        v191 = *(v452 + 488);
                        if (!v191 || (*(v191 + 428) & 0x4000) != 0)
                        {
                          v197 = *(v452 + 872);
                          if ((v197 & 4) == 0)
                          {
                            if (*(v452 + 158))
                            {
                              goto LABEL_335;
                            }

                            if (BYTE1(v12[82].isa) != 1)
                            {
                              goto LABEL_335;
                            }

                            v198 = __nwlog_obj();
                            v199 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                            v190 = v452;
                            if (!v199)
                            {
                              goto LABEL_335;
                            }

                            v200 = *(v452 + 488);
                            v201 = *(*(v452 + 480) + 372);
                            v202 = *(v452 + 860);
                            if (v200)
                            {
                              LODWORD(v200) = *(v200 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v452 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v201;
                            *&buf[38] = 1024;
                            *&buf[40] = v202;
                            *&buf[44] = 1024;
                            *&buf[46] = v200;
                            v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the message is not complete";
                            goto LABEL_657;
                          }

                          if ((v197 & 0x20) == 0)
                          {
                            if (*(v452 + 158))
                            {
                              goto LABEL_335;
                            }

                            if (BYTE1(v12[82].isa) != 1)
                            {
                              goto LABEL_335;
                            }

                            v198 = __nwlog_obj();
                            v204 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                            v190 = v452;
                            if (!v204)
                            {
                              goto LABEL_335;
                            }

                            v205 = *(v452 + 488);
                            v206 = *(*(v452 + 480) + 372);
                            v207 = *(v452 + 860);
                            if (v205)
                            {
                              LODWORD(v205) = *(v205 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v452 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v206;
                            *&buf[38] = 1024;
                            *&buf[40] = v207;
                            *&buf[44] = 1024;
                            *&buf[46] = v205;
                            v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the outbound message is not complete";
                            goto LABEL_657;
                          }

                          if ((v197 & 8) == 0)
                          {
                            if (*(v452 + 158))
                            {
                              goto LABEL_335;
                            }

                            if (BYTE1(v12[82].isa) != 1)
                            {
                              goto LABEL_335;
                            }

                            v198 = __nwlog_obj();
                            v208 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                            v190 = v452;
                            if (!v208)
                            {
                              goto LABEL_335;
                            }

                            v209 = *(v452 + 488);
                            v210 = *(*(v452 + 480) + 372);
                            v211 = *(v452 + 860);
                            if (v209)
                            {
                              LODWORD(v209) = *(v209 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v452 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v210;
                            *&buf[38] = 1024;
                            *&buf[40] = v211;
                            *&buf[44] = 1024;
                            *&buf[46] = v209;
                            v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because keep alive is false";
                            goto LABEL_657;
                          }
                        }

                        else if ((*(v452 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
                        {
                          v192 = __nwlog_obj();
                          v193 = os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (v193)
                          {
                            v194 = *(v452 + 488);
                            v195 = *(*(v452 + 480) + 372);
                            v196 = *(v452 + 860);
                            if (v194)
                            {
                              LODWORD(v194) = *(v194 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v452 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v195;
                            *&buf[38] = 1024;
                            *&buf[40] = v196;
                            *&buf[44] = 1024;
                            *&buf[46] = v194;
                            _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection may be reusable because the current stream didn't use it", buf, 0x32u);
                            v16 = v453;
                            v190 = v452;
                            v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          }
                        }

                        if ((*(*(v190 + 480) + 376) & 0x10) != 0)
                        {
                          if (*(v190 + 158))
                          {
                            goto LABEL_335;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_335;
                          }

                          v198 = __nwlog_obj();
                          v217 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v217)
                          {
                            goto LABEL_335;
                          }

                          v218 = *(v452 + 488);
                          v219 = *(*(v452 + 480) + 372);
                          v220 = *(v452 + 860);
                          if (v218)
                          {
                            LODWORD(v218) = *(v218 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v219;
                          *&buf[38] = 1024;
                          *&buf[40] = v220;
                          *&buf[44] = 1024;
                          *&buf[46] = v218;
                          v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because pool is closed for new connections";
                          goto LABEL_657;
                        }

                        v212 = *(v190 + 872);
                        if ((v212 & 0x200) != 0)
                        {
                          if (*(v190 + 158))
                          {
                            goto LABEL_335;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_335;
                          }

                          v198 = __nwlog_obj();
                          v394 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v394)
                          {
                            goto LABEL_335;
                          }

                          v395 = *(v452 + 488);
                          v396 = *(*(v452 + 480) + 372);
                          v397 = *(v452 + 860);
                          if (v395)
                          {
                            LODWORD(v395) = *(v395 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v396;
                          *&buf[38] = 1024;
                          *&buf[40] = v397;
                          *&buf[44] = 1024;
                          *&buf[46] = v395;
                          v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was upgraded";
                          goto LABEL_657;
                        }

                        if ((v212 & 0x40) == 0)
                        {
                          if (*(v190 + 158))
                          {
                            goto LABEL_335;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_335;
                          }

                          v198 = __nwlog_obj();
                          v213 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v213)
                          {
                            goto LABEL_335;
                          }

                          v214 = *(v452 + 488);
                          v215 = *(*(v452 + 480) + 372);
                          v216 = *(v452 + 860);
                          if (v214)
                          {
                            LODWORD(v214) = *(v214 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v215;
                          *&buf[38] = 1024;
                          *&buf[40] = v216;
                          *&buf[44] = 1024;
                          *&buf[46] = v214;
                          v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was never connected";
LABEL_657:
                          _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_DEBUG, v203, buf, 0x32u);
                          v16 = v453;
                          v190 = v452;
LABEL_335:
                          v221 = *(v190 + 608);
                          v222 = *(v190 + 496);
                          v455[0] = MEMORY[0x1E69E9820];
                          v455[1] = 0x40000000;
                          v455[2] = ___ZL23nw_protocol_http1_resetP11nw_protocolS0__block_invoke;
                          v455[3] = &unk_1E6A32AE8;
                          v455[4] = v221;
                          nw_queue_context_async(v222, v455);
LABEL_336:
                          if (v16)
                          {
                            os_release(v16);
                          }

                          if (v14)
                          {
                            os_release(v14);
                          }

                          return 1;
                        }

                        if ((*(v190 + 872) & 0x100) != 0)
                        {
                          if (*(v190 + 158))
                          {
                            goto LABEL_335;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_335;
                          }

                          v198 = __nwlog_obj();
                          v230 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v230)
                          {
                            goto LABEL_335;
                          }

                          v231 = *(v452 + 488);
                          v232 = *(*(v452 + 480) + 372);
                          v233 = *(v452 + 860);
                          if (v231)
                          {
                            LODWORD(v231) = *(v231 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v232;
                          *&buf[38] = 1024;
                          *&buf[40] = v233;
                          *&buf[44] = 1024;
                          *&buf[46] = v231;
                          v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it has been closed";
                          goto LABEL_657;
                        }

                        if (*(v190 + 864) == 4)
                        {
                          if (*(v190 + 158))
                          {
                            goto LABEL_335;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_335;
                          }

                          v198 = __nwlog_obj();
                          v225 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v225)
                          {
                            goto LABEL_335;
                          }

                          v226 = *(v452 + 488);
                          v227 = *(*(v452 + 480) + 372);
                          v228 = *(v452 + 860);
                          if (v226)
                          {
                            LODWORD(v226) = *(v226 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v227;
                          *&buf[38] = 1024;
                          *&buf[40] = v228;
                          *&buf[44] = 1024;
                          *&buf[46] = v226;
                          v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because input has finished from below";
                          goto LABEL_657;
                        }

                        if ((*(*(v190 + 480) + 376) & 8) != 0)
                        {
                          if (*(v190 + 158))
                          {
                            goto LABEL_335;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_335;
                          }

                          v198 = __nwlog_obj();
                          v251 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v251)
                          {
                            goto LABEL_335;
                          }

                          v252 = *(v452 + 488);
                          v253 = *(*(v452 + 480) + 372);
                          v254 = *(v452 + 860);
                          if (v252)
                          {
                            LODWORD(v252) = *(v252 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v253;
                          *&buf[38] = 1024;
                          *&buf[40] = v254;
                          *&buf[44] = 1024;
                          *&buf[46] = v252;
                          v203 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it is websocket";
                          goto LABEL_657;
                        }

                        if ((*(v190 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
                        {
                          v439 = __nwlog_obj();
                          v440 = os_log_type_enabled(v439, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (v440)
                          {
                            v441 = *(v452 + 488);
                            v442 = *(*(v452 + 480) + 372);
                            v443 = *(v452 + 860);
                            if (v441)
                            {
                              LODWORD(v441) = *(v441 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v452 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v442;
                            *&buf[38] = 1024;
                            *&buf[40] = v443;
                            *&buf[44] = 1024;
                            *&buf[46] = v441;
                            _os_log_impl(&dword_181A37000, v439, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection can be reused", buf, 0x32u);
                            v16 = v453;
                            v190 = v452;
                            v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          }
                        }

                        *(v190 + 872) &= 0xFFFAu;
                        v235 = *(v190 + 800);
                        if (v235)
                        {
                          free(v235);
                          v190 = v452;
                          *(v452 + 800) = 0;
                        }

                        *(v190 + 840) = 0;
                        v236 = *(v190 + 808);
                        if (v236)
                        {
                          free(v236);
                          v190 = v452;
                          *(v452 + 808) = 0;
                        }

                        *(v190 + 844) = 0;
                        v237 = *(v190 + 816);
                        if (v237)
                        {
                          free(v237);
                          v190 = v452;
                          *(v452 + 816) = 0;
                        }

                        *(v190 + 848) = 0;
                        v238 = *(v190 + 824);
                        if (v238)
                        {
                          free(v238);
                          v190 = v452;
                          *(v452 + 824) = 0;
                        }

                        *(v190 + 852) = 0;
                        v239 = *(v190 + 832);
                        if (v239)
                        {
                          free(v239);
                          v190 = v452;
                          *(v452 + 832) = 0;
                        }

                        *(v190 + 856) = 0;
                        v240 = *(v190 + 872);
                        if ((v240 & 0x10) != 0)
                        {
                          if (*(v190 + 224) == 21)
                          {
                            *(v190 + 224) = 0;
                          }

                          *(v190 + 872) = v240 & 0xFFEF;
                          if (*(v190 + 158))
                          {
                            goto LABEL_391;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_391;
                          }

                          v245 = __nwlog_obj();
                          v444 = os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v444)
                          {
                            goto LABEL_391;
                          }

                          v445 = *(v452 + 488);
                          v446 = *(*(v452 + 480) + 372);
                          v447 = *(v452 + 860);
                          if (v445)
                          {
                            LODWORD(v445) = *(v445 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_reset_for_new_message";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v446;
                          *&buf[38] = 1024;
                          *&buf[40] = v447;
                          *&buf[44] = 1024;
                          *&buf[46] = v445;
                          v250 = "%{public}s %{public}s%s<i%u:c%u:s%u> Unpausing parser, input for next stream available";
                        }

                        else
                        {
                          *(v190 + 200) = 0u;
                          v241 = v190 + 200;
                          v242 = *(v190 + 272);
                          v243 = *(v190 + 248);
                          v244 = *(v241 + 78);
                          *(v241 + 48) = 0u;
                          *(v241 + 64) = 0u;
                          *(v241 + 16) = 0u;
                          *(v241 + 32) = 0u;
                          *(v241 + 80) = 0;
                          *(v241 + 72) = v242;
                          *(v241 + 48) = v243;
                          *(v241 + 56) = 237;
                          v190 = v452;
                          *(v241 + 78) = v244;
                          if (*(v241 - 42))
                          {
                            goto LABEL_391;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_391;
                          }

                          v245 = __nwlog_obj();
                          v246 = os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG);
                          v190 = v452;
                          if (!v246)
                          {
                            goto LABEL_391;
                          }

                          v247 = *(v452 + 488);
                          v248 = *(*(v452 + 480) + 372);
                          v249 = *(v452 + 860);
                          if (v247)
                          {
                            LODWORD(v247) = *(v247 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_reset_for_new_message";
                          *&buf[12] = 2082;
                          *&buf[14] = v452 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v248;
                          *&buf[38] = 1024;
                          *&buf[40] = v249;
                          *&buf[44] = 1024;
                          *&buf[46] = v247;
                          v250 = "%{public}s %{public}s%s<i%u:c%u:s%u> Resetting parser, no current available input for next stream";
                        }

                        _os_log_impl(&dword_181A37000, v245, OS_LOG_TYPE_DEBUG, v250, buf, 0x32u);
                        v16 = v453;
                        v190 = v452;
LABEL_391:
                        if (!v131)
                        {
                          if (*(v102 + 248))
                          {
                            if (*(v190 + 488))
                            {
                              v255 = v190;
                              __nwlog_obj();
                              v256 = *(v255 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v255;
                              *&buf[22] = 2048;
                              *&buf[24] = v256;
                              v104 = _os_log_send_and_compose_impl();
                              aBlock[0] = 16;
                              v456[0] = OS_LOG_TYPE_DEFAULT;
                              if (!__nwlog_fault(v104, aBlock, v456))
                              {
                                goto LABEL_541;
                              }

                              if (aBlock[0] == 17)
                              {
                                v257 = __nwlog_obj();
                                v258 = aBlock[0];
                                if (os_log_type_enabled(v257, aBlock[0]))
                                {
                                  v259 = *(v452 + 488);
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v452;
                                  *&buf[22] = 2048;
                                  *&buf[24] = v259;
                                  v260 = "%{public}s Connection %p already has a stream (%p)";
LABEL_539:
                                  v360 = v257;
                                  v361 = v258;
                                  v362 = 32;
LABEL_540:
                                  _os_log_impl(&dword_181A37000, v360, v361, v260, buf, v362);
                                  goto LABEL_541;
                                }

                                goto LABEL_541;
                              }

                              if (v456[0] != OS_LOG_TYPE_INFO)
                              {
                                v257 = __nwlog_obj();
                                v258 = aBlock[0];
                                if (os_log_type_enabled(v257, aBlock[0]))
                                {
                                  v279 = *(v452 + 488);
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v452;
                                  *&buf[22] = 2048;
                                  *&buf[24] = v279;
                                  v260 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                                  goto LABEL_539;
                                }

LABEL_541:
                                if (v104)
                                {
                                  free(v104);
                                }

                                v16 = v453;
                                goto LABEL_336;
                              }

                              v264 = __nw_create_backtrace_string();
                              v257 = __nwlog_obj();
                              v258 = aBlock[0];
                              v265 = os_log_type_enabled(v257, aBlock[0]);
                              if (!v264)
                              {
                                if (v265)
                                {
                                  v359 = *(v452 + 488);
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v452;
                                  *&buf[22] = 2048;
                                  *&buf[24] = v359;
                                  v260 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                                  goto LABEL_539;
                                }

                                goto LABEL_541;
                              }

                              if (!v265)
                              {
LABEL_405:
                                free(v264);
                                goto LABEL_541;
                              }

                              v266 = *(v452 + 488);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v452;
                              *&buf[22] = 2048;
                              *&buf[24] = v266;
                              *&buf[32] = 2082;
                              *&buf[34] = v264;
                              v267 = "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s";
                              v268 = v257;
                              v269 = v258;
                              v270 = 42;
LABEL_404:
                              _os_log_impl(&dword_181A37000, v268, v269, v267, buf, v270);
                              goto LABEL_405;
                            }

                            *(v102 + 256) = v190;
                            *(v190 + 488) = v102;
                            v261 = *(v102 + 320);
                            if (v261)
                            {
                              v262 = os_retain(v261);
                              v190 = v452;
                              v263 = v262;
                            }

                            else
                            {
                              v263 = 0;
                            }

                            v280 = *(v190 + 744);
                            if (v280)
                            {
                              v281 = *(v190 + 736);
                              if (v281)
                              {
                                os_release(v281);
                                v190 = v452;
                                v280 = *(v452 + 744);
                              }
                            }

                            *(v190 + 736) = v263;
                            *(v190 + 744) = v280 | 1;
                            if ((*(*(v102 + 248) + 376) & 2) == 0)
                            {
LABEL_723:
                              v407 = *(v102 + 32);
                              v408 = v452;
                              if (!v407 || v407 == *(v452 + 32))
                              {
LABEL_742:
                                nw_protocol_set_output_handler(v102, *(v408 + 32));
                                nw_protocol_set_input_handler(v408, *(v102 + 48));
                                *v102 = *v408;
                                v425 = *(v102 + 96);
                                v426 = *(v102 + 112);
                                v427 = *(v102 + 128);
                                *(v408 + 144) = *(v102 + 144);
                                v428 = *(v102 + 80);
                                *(v408 + 64) = *(v102 + 64);
                                *(v408 + 80) = v428;
                                *(v408 + 112) = v426;
                                *(v408 + 128) = v427;
                                *(v408 + 96) = v425;
                                *(v408 + 872) &= 0xFFD7u;
                                *(v408 + 864) = 1;
                                if ((*(v408 + 158) & 1) == 0)
                                {
                                  v429 = __nwlog_obj();
                                  if (os_log_type_enabled(v429, OS_LOG_TYPE_DEBUG))
                                  {
                                    v430 = *(v452 + 488);
                                    v431 = *(*(v452 + 480) + 372);
                                    v432 = *(v452 + 860);
                                    if (v430)
                                    {
                                      LODWORD(v430) = *(v430 + 424);
                                    }

                                    *buf = 136447490;
                                    *&buf[4] = "nw_http1_update_connection_input_state";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v452 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *&buf[34] = v431;
                                    *&buf[38] = 1024;
                                    *&buf[40] = v432;
                                    *&buf[44] = 1024;
                                    *&buf[46] = v430;
                                    _os_log_impl(&dword_181A37000, v429, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                                  }
                                }

                                if ((*(v102 + 158) & 1) == 0)
                                {
                                  v433 = __nwlog_obj();
                                  if (os_log_type_enabled(v433, OS_LOG_TYPE_INFO))
                                  {
                                    v434 = *(v102 + 256);
                                    v435 = *(*(v102 + 248) + 372);
                                    if (v434)
                                    {
                                      LODWORD(v434) = *(v434 + 860);
                                    }

                                    v436 = *(v102 + 424);
                                    *buf = 136448002;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v102 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *&buf[34] = v435;
                                    *&buf[38] = 1024;
                                    *&buf[40] = v434;
                                    *&buf[44] = 1024;
                                    *&buf[46] = v436;
                                    *&buf[50] = 2048;
                                    *&buf[52] = v102;
                                    *&buf[60] = 2048;
                                    *&buf[62] = v452;
                                    _os_log_impl(&dword_181A37000, v433, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                                  }
                                }

                                goto LABEL_336;
                              }

                              __nwlog_obj();
                              v409 = *(v102 + 32);
                              v410 = *(v452 + 32);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v409;
                              *&buf[22] = 2048;
                              *&buf[24] = v102;
                              *&buf[32] = 2048;
                              *&buf[34] = v410;
                              v411 = _os_log_send_and_compose_impl();
                              v456[0] = OS_LOG_TYPE_ERROR;
                              v469[0] = 0;
                              if (__nwlog_fault(v411, v456, v469))
                              {
                                if (v456[0] == OS_LOG_TYPE_FAULT)
                                {
                                  v412 = __nwlog_obj();
                                  v413 = v456[0];
                                  if (os_log_type_enabled(v412, v456[0]))
                                  {
                                    v414 = *(v102 + 32);
                                    v415 = *(v452 + 32);
                                    *buf = 136446978;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v414;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v102;
                                    *&buf[32] = 2048;
                                    *&buf[34] = v415;
                                    v416 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_738:
                                    _os_log_impl(&dword_181A37000, v412, v413, v416, buf, 0x2Au);
                                  }
                                }

                                else if (v469[0] == 1)
                                {
                                  v417 = __nw_create_backtrace_string();
                                  v412 = __nwlog_obj();
                                  v413 = v456[0];
                                  v418 = os_log_type_enabled(v412, v456[0]);
                                  if (v417)
                                  {
                                    if (v418)
                                    {
                                      v419 = *(v102 + 32);
                                      v420 = *(v452 + 32);
                                      *buf = 136447234;
                                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v419;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v102;
                                      *&buf[32] = 2048;
                                      *&buf[34] = v420;
                                      *&buf[42] = 2082;
                                      *&buf[44] = v417;
                                      _os_log_impl(&dword_181A37000, v412, v413, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                                    }

                                    free(v417);
                                    goto LABEL_739;
                                  }

                                  if (v418)
                                  {
                                    v423 = *(v102 + 32);
                                    v424 = *(v452 + 32);
                                    *buf = 136446978;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v423;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v102;
                                    *&buf[32] = 2048;
                                    *&buf[34] = v424;
                                    v416 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                                    goto LABEL_738;
                                  }
                                }

                                else
                                {
                                  v412 = __nwlog_obj();
                                  v413 = v456[0];
                                  if (os_log_type_enabled(v412, v456[0]))
                                  {
                                    v421 = *(v102 + 32);
                                    v422 = *(v452 + 32);
                                    *buf = 136446978;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v421;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v102;
                                    *&buf[32] = 2048;
                                    *&buf[34] = v422;
                                    v416 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                                    goto LABEL_738;
                                  }
                                }
                              }

LABEL_739:
                              if (v411)
                              {
                                free(v411);
                              }

                              v16 = v453;
                              v408 = v452;
                              goto LABEL_742;
                            }

                            v282 = nw_parameters_copy_default_protocol_stack(*(v102 + 320));
                            *v456 = 0;
                            v457 = v456;
                            v458 = 0x2000000000;
                            LOBYTE(v459) = 0;
                            *buf = 0;
                            *&buf[8] = buf;
                            *&buf[16] = 0x3802000000;
                            *&buf[24] = __Block_byref_object_copy__42960;
                            *&buf[32] = __Block_byref_object_dispose__42961;
                            *&buf[40] = 0;
                            buf[48] |= 1u;
                            *aBlock = MEMORY[0x1E69E9820];
                            *&aBlock[8] = 0x40000000;
                            *&aBlock[16] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                            v479 = &unk_1E6A32930;
                            *v480 = v456;
                            *&v480[8] = buf;
                            *&v480[16] = v102;
                            nw_protocol_stack_iterate_application_protocols(v282, aBlock);
                            if (*(*&buf[8] + 40))
                            {
                              v283 = v452;
                              while (1)
                              {
                                v283 = *(v283 + 32);
                                if (!v283)
                                {
                                  break;
                                }

                                if (nw_protocol_is_tls_over_stream(v283))
                                {
                                  v284 = *(*&buf[8] + 40);
                                  v285 = nw_protocol_boringssl_copy_definition();
                                  nw_parameters_set_protocol_instance(v284, v286, v283);
                                  if (v285)
                                  {
                                    os_release(v285);
                                  }

                                  goto LABEL_666;
                                }
                              }

                              __nwlog_obj();
                              *v469 = 136446210;
                              *&v469[4] = "nw_http1_stream_associate_with_connection";
                              v355 = _os_log_send_and_compose_impl();
                              LOBYTE(iterate_block[0]) = 16;
                              LOBYTE(v465[0]) = 0;
                              if (!__nwlog_fault(v355, iterate_block, v465))
                              {
                                goto LABEL_714;
                              }

                              if (LOBYTE(iterate_block[0]) == 17)
                              {
                                v356 = __nwlog_obj();
                                v357 = iterate_block[0];
                                if (os_log_type_enabled(v356, iterate_block[0]))
                                {
                                  *v469 = 136446210;
                                  *&v469[4] = "nw_http1_stream_associate_with_connection";
                                  v358 = "%{public}s tls should have been in the stack but could not find it";
LABEL_713:
                                  _os_log_impl(&dword_181A37000, v356, v357, v358, v469, 0xCu);
                                }
                              }

                              else if (LOBYTE(v465[0]) == 1)
                              {
                                v380 = __nw_create_backtrace_string();
                                v356 = __nwlog_obj();
                                v357 = iterate_block[0];
                                v381 = os_log_type_enabled(v356, iterate_block[0]);
                                if (v380)
                                {
                                  if (v381)
                                  {
                                    *v469 = 136446466;
                                    *&v469[4] = "nw_http1_stream_associate_with_connection";
                                    *&v469[12] = 2082;
                                    *&v469[14] = v380;
                                    _os_log_impl(&dword_181A37000, v356, v357, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v469, 0x16u);
                                  }

                                  free(v380);
                                  goto LABEL_714;
                                }

                                if (v381)
                                {
                                  *v469 = 136446210;
                                  *&v469[4] = "nw_http1_stream_associate_with_connection";
                                  v358 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                                  goto LABEL_713;
                                }
                              }

                              else
                              {
                                v356 = __nwlog_obj();
                                v357 = iterate_block[0];
                                if (os_log_type_enabled(v356, iterate_block[0]))
                                {
                                  *v469 = 136446210;
                                  *&v469[4] = "nw_http1_stream_associate_with_connection";
                                  v358 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                                  goto LABEL_713;
                                }
                              }

LABEL_714:
                              if (v355)
                              {
                                free(v355);
                              }

                              v398 = 0;
                              v16 = v453;
                              goto LABEL_717;
                            }

                            __nwlog_obj();
                            *v469 = 136446210;
                            *&v469[4] = "nw_http1_stream_associate_with_connection";
                            v338 = _os_log_send_and_compose_impl();
                            LOBYTE(iterate_block[0]) = 16;
                            LOBYTE(v465[0]) = 0;
                            if (__nwlog_fault(v338, iterate_block, v465))
                            {
                              if (LOBYTE(iterate_block[0]) == 17)
                              {
                                v339 = __nwlog_obj();
                                v340 = iterate_block[0];
                                if (os_log_type_enabled(v339, iterate_block[0]))
                                {
                                  *v469 = 136446210;
                                  *&v469[4] = "nw_http1_stream_associate_with_connection";
                                  v341 = "%{public}s unable to find tls options";
LABEL_663:
                                  _os_log_impl(&dword_181A37000, v339, v340, v341, v469, 0xCu);
                                }
                              }

                              else if (LOBYTE(v465[0]) == 1)
                              {
                                v365 = __nw_create_backtrace_string();
                                v339 = __nwlog_obj();
                                v340 = iterate_block[0];
                                v366 = os_log_type_enabled(v339, iterate_block[0]);
                                if (v365)
                                {
                                  if (v366)
                                  {
                                    *v469 = 136446466;
                                    *&v469[4] = "nw_http1_stream_associate_with_connection";
                                    *&v469[12] = 2082;
                                    *&v469[14] = v365;
                                    _os_log_impl(&dword_181A37000, v339, v340, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v469, 0x16u);
                                  }

                                  free(v365);
                                  v16 = v453;
                                }

                                else
                                {
                                  v16 = v453;
                                  if (v366)
                                  {
                                    *v469 = 136446210;
                                    *&v469[4] = "nw_http1_stream_associate_with_connection";
                                    v341 = "%{public}s unable to find tls options, no backtrace";
                                    goto LABEL_663;
                                  }
                                }
                              }

                              else
                              {
                                v339 = __nwlog_obj();
                                v340 = iterate_block[0];
                                v16 = v453;
                                if (os_log_type_enabled(v339, iterate_block[0]))
                                {
                                  *v469 = 136446210;
                                  *&v469[4] = "nw_http1_stream_associate_with_connection";
                                  v341 = "%{public}s unable to find tls options, backtrace limit exceeded";
                                  goto LABEL_663;
                                }
                              }
                            }

                            if (v338)
                            {
                              free(v338);
                            }

LABEL_666:
                            v398 = 1;
LABEL_717:
                            _Block_object_dispose(buf, 8);
                            if ((buf[48] & 1) != 0 && *&buf[40])
                            {
                              os_release(*&buf[40]);
                            }

                            _Block_object_dispose(v456, 8);
                            if (v282)
                            {
                              os_release(v282);
                            }

                            if (!v398)
                            {
                              goto LABEL_336;
                            }

                            goto LABEL_723;
                          }

                          __nwlog_obj();
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v104 = _os_log_send_and_compose_impl();
                          aBlock[0] = 16;
                          v456[0] = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v104, aBlock, v456))
                          {
                            goto LABEL_541;
                          }

                          if (aBlock[0] == 17)
                          {
                            v437 = __nwlog_obj();
                            v438 = aBlock[0];
                            if (!os_log_type_enabled(v437, aBlock[0]))
                            {
                              goto LABEL_541;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v260 = "%{public}s called with null http1_stream->protocol_http1";
                            goto LABEL_787;
                          }

                          if (v456[0] == OS_LOG_TYPE_INFO)
                          {
                            v264 = __nw_create_backtrace_string();
                            v437 = __nwlog_obj();
                            v438 = aBlock[0];
                            v449 = os_log_type_enabled(v437, aBlock[0]);
                            if (v264)
                            {
                              if (!v449)
                              {
                                goto LABEL_405;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2082;
                              *&buf[14] = v264;
                              v267 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
LABEL_777:
                              v268 = v437;
                              v269 = v438;
                              v270 = 22;
                              goto LABEL_404;
                            }

                            if (!v449)
                            {
                              goto LABEL_541;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v260 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                          }

                          else
                          {
                            v437 = __nwlog_obj();
                            v438 = aBlock[0];
                            if (!os_log_type_enabled(v437, aBlock[0]))
                            {
                              goto LABEL_541;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v260 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                          }

                          goto LABEL_787;
                        }

                        __nwlog_obj();
                        LODWORD(v454) = 136446210;
                        *buf = 136446210;
                        v103 = "nw_http1_stream_associate_with_connection";
                        v8 = v469;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v104 = _os_log_send_and_compose_impl();
                        aBlock[0] = 16;
                        v456[0] = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v104, aBlock, v456))
                        {
                          goto LABEL_541;
                        }

                        if (aBlock[0] == 17)
                        {
                          v437 = __nwlog_obj();
                          v438 = aBlock[0];
                          if (!os_log_type_enabled(v437, aBlock[0]))
                          {
                            goto LABEL_541;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v260 = "%{public}s called with null http1_stream";
                          goto LABEL_787;
                        }

                        if (v456[0] == OS_LOG_TYPE_INFO)
                        {
                          v264 = __nw_create_backtrace_string();
                          v437 = __nwlog_obj();
                          v438 = aBlock[0];
                          v448 = os_log_type_enabled(v437, aBlock[0]);
                          if (v264)
                          {
                            if (!v448)
                            {
                              goto LABEL_405;
                            }

                            *buf = 136446466;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v264;
                            v267 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
                            goto LABEL_777;
                          }

                          if (!v448)
                          {
                            goto LABEL_541;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v260 = "%{public}s called with null http1_stream, no backtrace";
LABEL_787:
                          v360 = v437;
                          v361 = v438;
                          v362 = 12;
                          goto LABEL_540;
                        }

LABEL_779:
                        v437 = __nwlog_obj();
                        v438 = aBlock[0];
                        if (!os_log_type_enabled(v437, aBlock[0]))
                        {
                          goto LABEL_541;
                        }

                        *buf = v454;
                        *(v8 + 68) = v103;
                        v260 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                        goto LABEL_787;
                      }

LABEL_267:
                      if (BYTE1(v12[82].isa) == 1)
                      {
                        v307 = __nwlog_obj();
                        if (os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG))
                        {
                          v308 = *(v11 + 256);
                          v309 = *(*(v11 + 248) + 372);
                          if (v308)
                          {
                            LODWORD(v308) = *(v308 + 860);
                          }

                          v310 = *(v11 + 424);
                          *buf = 136447746;
                          *&buf[4] = "nw_http1_stream_destroy";
                          *&buf[12] = 2082;
                          *&buf[14] = v11 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v309;
                          *&buf[38] = 1024;
                          *&buf[40] = v308;
                          *&buf[44] = 1024;
                          *&buf[46] = v310;
                          *&buf[50] = 2048;
                          *&buf[52] = v11;
                          _os_log_impl(&dword_181A37000, v307, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
                        }
                      }

                      goto LABEL_268;
                    }

                    v16 = v453;
                    if (!v387)
                    {
                      goto LABEL_628;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    v385 = "%{public}s called with null http1_stream, no backtrace";
                  }

                  else
                  {
                    v383 = __nwlog_obj();
                    v384 = aBlock[0];
                    if (!os_log_type_enabled(v383, aBlock[0]))
                    {
                      goto LABEL_628;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    v385 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_181A37000, v383, v384, v385, buf, 0xCu);
                  goto LABEL_628;
                }

LABEL_613:
                free(v291);
                goto LABEL_614;
              }

              v16 = v453;
              v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (v352)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_create";
                v294 = "%{public}s called with null parameters, no backtrace";
LABEL_611:
                _os_log_impl(&dword_181A37000, v292, v293, v294, buf, 0xCu);
              }
            }
          }

          else
          {
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_create";
            v291 = _os_log_send_and_compose_impl();
            v456[0] = OS_LOG_TYPE_ERROR;
            v469[0] = 0;
            if (!__nwlog_fault(v291, v456, v469))
            {
              goto LABEL_612;
            }

            if (v456[0] == OS_LOG_TYPE_FAULT)
            {
              v292 = __nwlog_obj();
              v293 = v456[0];
              if (!os_log_type_enabled(v292, v456[0]))
              {
                goto LABEL_612;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_create";
              v294 = "%{public}s called with null endpoint";
              goto LABEL_611;
            }

            if (v469[0] != 1)
            {
              v292 = __nwlog_obj();
              v293 = v456[0];
              if (!os_log_type_enabled(v292, v456[0]))
              {
                goto LABEL_612;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_create";
              v294 = "%{public}s called with null endpoint, backtrace limit exceeded";
              goto LABEL_611;
            }

            v349 = __nw_create_backtrace_string();
            v292 = __nwlog_obj();
            v293 = v456[0];
            v350 = os_log_type_enabled(v292, v456[0]);
            if (!v349)
            {
              v16 = v453;
              v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (!v350)
              {
                goto LABEL_612;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_create";
              v294 = "%{public}s called with null endpoint, no backtrace";
              goto LABEL_611;
            }

            if (v350)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_create";
              *&buf[12] = 2082;
              *&buf[14] = v349;
              _os_log_impl(&dword_181A37000, v292, v293, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v349);
            v16 = v453;
            v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

LABEL_612:
          if (!v291)
          {
            goto LABEL_614;
          }

          goto LABEL_613;
        }

LABEL_125:
        v86 = *(v8 + 88);
        *(v8 + 88) = v86 - 1;
        if (v86)
        {
          goto LABEL_142;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v87 = *(v8 + 88);
        *buf = 136446978;
        *&buf[4] = "nw_http1_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = "http1->pending_output_handler_count";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v87;
        v88 = _os_log_send_and_compose_impl();
        aBlock[0] = 16;
        v456[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v88, aBlock, v456))
        {
          goto LABEL_139;
        }

        if (aBlock[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = gLogObj;
          v90 = aBlock[0];
          if (os_log_type_enabled(gLogObj, aBlock[0]))
          {
            v91 = *(v8 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_output_handler_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v91;
            v92 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_137:
            v99 = v89;
            v100 = v90;
LABEL_138:
            _os_log_impl(&dword_181A37000, v99, v100, v92, buf, 0x2Au);
          }
        }

        else if (v456[0] == OS_LOG_TYPE_INFO)
        {
          v93 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v94 = gLogObj;
          v95 = aBlock[0];
          v96 = os_log_type_enabled(gLogObj, aBlock[0]);
          if (v93)
          {
            if (v96)
            {
              v97 = *(v8 + 88);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_output_handler_count";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v97;
              *&buf[42] = 2082;
              *&buf[44] = v93;
              _os_log_impl(&dword_181A37000, v94, v95, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v93);
            goto LABEL_139;
          }

          if (v96)
          {
            v229 = *(v8 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_output_handler_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v229;
            v92 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            v99 = v94;
            v100 = v95;
            goto LABEL_138;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = gLogObj;
          v90 = aBlock[0];
          if (os_log_type_enabled(gLogObj, aBlock[0]))
          {
            v98 = *(v8 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_output_handler_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v98;
            v92 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_137;
          }
        }

LABEL_139:
        if (v88)
        {
          free(v88);
        }

        *(v8 + 88) = 0;
        v16 = v453;
        v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        goto LABEL_142;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_disassociate_from_connection";
      v43 = _os_log_send_and_compose_impl();
      aBlock[0] = 16;
      v456[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v43, aBlock, v456))
      {
        goto LABEL_100;
      }

      if (aBlock[0] == 17)
      {
        v328 = __nwlog_obj();
        v329 = aBlock[0];
        if (!os_log_type_enabled(v328, aBlock[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v47 = "%{public}s called with null http1_stream->protocol_http1";
      }

      else if (v456[0] == OS_LOG_TYPE_INFO)
      {
        v363 = __nw_create_backtrace_string();
        v328 = __nwlog_obj();
        v329 = aBlock[0];
        v364 = os_log_type_enabled(v328, aBlock[0]);
        if (v363)
        {
          if (v364)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            *&buf[12] = 2082;
            *&buf[14] = v363;
            _os_log_impl(&dword_181A37000, v328, v329, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v363);
          v16 = v453;
          goto LABEL_100;
        }

        v16 = v453;
        if (!v364)
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v47 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
      }

      else
      {
        v328 = __nwlog_obj();
        v329 = aBlock[0];
        v16 = v453;
        if (!os_log_type_enabled(v328, aBlock[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v47 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
      }

      v65 = v328;
      v66 = v329;
      v67 = 12;
      goto LABEL_99;
    }

    if ((v8[158] & 1) == 0 && gLogDatapath == 1)
    {
      v346 = __nwlog_obj();
      if (os_log_type_enabled(v346, OS_LOG_TYPE_DEBUG))
      {
        v347 = *(v8 + 93);
        v348 = *(v11 + 424);
        *buf = 136447490;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v347;
        *&buf[38] = 1024;
        *&buf[40] = v348;
        *&buf[44] = 2048;
        *&buf[46] = v11;
        _os_log_impl(&dword_181A37000, v346, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
      }
    }

    if ((*(v11 + 428) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_http1_remove_pending_stream";
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v17 = _os_log_send_and_compose_impl();
      aBlock[0] = 16;
      v456[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v17, aBlock, v456))
      {
        goto LABEL_56;
      }

      if (aBlock[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = aBlock[0];
        if (!os_log_type_enabled(gLogObj, aBlock[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v20 = "%{public}s stream %p not in pending list, cannot remove";
      }

      else if (v456[0] == OS_LOG_TYPE_INFO)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = aBlock[0];
        v32 = os_log_type_enabled(gLogObj, aBlock[0]);
        if (v31)
        {
          if (v32)
          {
            *buf = 136446722;
            *&buf[4] = "nw_http1_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = v11;
            *&buf[22] = 2082;
            *&buf[24] = v31;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v31);
          v16 = v453;
          goto LABEL_56;
        }

        v16 = v453;
        if (!v32)
        {
LABEL_56:
          if (v17)
          {
            free(v17);
          }

          goto LABEL_67;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v20 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = aBlock[0];
        if (!os_log_type_enabled(gLogObj, aBlock[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v20 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0x16u);
      goto LABEL_56;
    }

    v21 = *(v11 + 296);
    v22 = *(v11 + 304);
    v23 = v8 + 256;
    if (v21)
    {
      v23 = (v21 + 304);
    }

    *v23 = v22;
    *v22 = v21;
    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
    v24 = *(v8 + 87);
    *(v8 + 87) = v24 - 1;
    if (v24)
    {
LABEL_65:
      *(v11 + 428) &= ~0x2000u;
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v373 = __nwlog_obj();
        if (os_log_type_enabled(v373, OS_LOG_TYPE_DEBUG))
        {
          v374 = *(v11 + 256);
          v375 = *(*(v11 + 248) + 372);
          if (v374)
          {
            LODWORD(v374) = *(v374 + 860);
          }

          v376 = *(v11 + 424);
          v377 = *(v8 + 87);
          *buf = 136448258;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v375;
          *&buf[38] = 1024;
          *&buf[40] = v374;
          *&buf[44] = 1024;
          *&buf[46] = v376;
          *&buf[50] = 1024;
          *&buf[52] = v376;
          *&buf[56] = 2048;
          *&buf[58] = v11;
          *&buf[66] = 1024;
          *&buf[68] = v377;
          _os_log_impl(&dword_181A37000, v373, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
        }
      }

      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = *(v8 + 87);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "http1->pending_stream_count";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v25;
    v26 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v456[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v26, aBlock, v456))
    {
      if (aBlock[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v28 = aBlock[0];
        if (os_log_type_enabled(gLogObj, aBlock[0]))
        {
          v29 = *(v8 + 87);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "http1->pending_stream_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v29;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_60:
          v39 = v27;
          v40 = v28;
LABEL_61:
          _os_log_impl(&dword_181A37000, v39, v40, v30, buf, 0x2Au);
        }
      }

      else if (v456[0] == OS_LOG_TYPE_INFO)
      {
        v33 = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v35 = aBlock[0];
        v36 = os_log_type_enabled(v34, aBlock[0]);
        if (v33)
        {
          if (v36)
          {
            v37 = *(v8 + 87);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_stream_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v37;
            *&buf[42] = 2082;
            *&buf[44] = v33;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v33);
          goto LABEL_62;
        }

        if (v36)
        {
          v234 = *(v8 + 87);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "http1->pending_stream_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v234;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v39 = v34;
          v40 = v35;
          goto LABEL_61;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v28 = aBlock[0];
        if (os_log_type_enabled(v27, aBlock[0]))
        {
          v38 = *(v8 + 87);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "http1->pending_stream_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v38;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_60;
        }
      }
    }

LABEL_62:
    if (v26)
    {
      free(v26);
    }

    *(v8 + 87) = 0;
    v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    goto LABEL_65;
  }

LABEL_691:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_reset";
  v275 = _os_log_send_and_compose_impl();
  aBlock[0] = 16;
  v456[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v275, aBlock, v456))
  {
    goto LABEL_705;
  }

  if (aBlock[0] != 17)
  {
    if (v456[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v276 = gLogObj;
      v277 = aBlock[0];
      if (os_log_type_enabled(gLogObj, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_reset";
        v278 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_703;
      }

      goto LABEL_705;
    }

    v399 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v400 = gLogObj;
    v401 = aBlock[0];
    v404 = os_log_type_enabled(gLogObj, aBlock[0]);
    if (v399)
    {
      if (v404)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_reset";
        *&buf[12] = 2082;
        *&buf[14] = v399;
        v403 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        goto LABEL_699;
      }

      goto LABEL_700;
    }

    if (!v404)
    {
      goto LABEL_705;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_reset";
    v278 = "%{public}s called with null http1_stream, no backtrace";
    goto LABEL_710;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v276 = gLogObj;
  v277 = aBlock[0];
  if (os_log_type_enabled(gLogObj, aBlock[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_reset";
    v278 = "%{public}s called with null http1_stream";
    goto LABEL_703;
  }

LABEL_705:
  if (v275)
  {
    free(v275);
  }

  return 0;
}

uint64_t ___ZL22nw_http1_stream_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_tls(a2))
    {
      if (a2)
      {
        v4 = os_retain(a2);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1[5] + 8);
      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          os_release(v7);
          v6 = *(v5 + 48);
        }
      }

      *(v5 + 40) = v4;
      *(v5 + 48) = v6 | 1;
    }
  }

  else if (nw_protocol_options_get_protocol_handle(a2) == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

uint64_t ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_2(int8x16_t *a1, nw_parameters_t parameters)
{
  v2 = parameters;
  v41 = *MEMORY[0x1E69E9840];
  v4 = nw_parameters_copy_default_protocol_stack(parameters);
  v5 = nw_protocol_stack_copy_transport_protocol(v4);
  is_quic = nw_protocol_options_is_quic(v5);
  if (v5)
  {
    os_release(v5);
  }

  if (is_quic)
  {
    v7 = 1;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_19;
  }

  v8 = *(a1[2].i64[0] + 8);
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *(v8 + 40);
    if (v10)
    {
      os_release(v10);
      v9 = *(v8 + 48);
    }
  }

  *(v8 + 40) = 0;
  *(v8 + 48) = v9 | 1;
  *(*(a1[2].i64[1] + 8) + 24) = 0;
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 0x40000000;
  iterate_block[2] = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_3;
  iterate_block[3] = &unk_1E6A32A98;
  v25 = vextq_s8(a1[2], a1[2], 8uLL);
  v26 = a1[3].i64[0];
  nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
  v11 = *(*(a1[2].i64[0] + 8) + 40) != 0;
  v12 = (*(a1[3].i64[1] + 376) & 2) == 0;
  v13 = v11 ^ v12;
  if (v11 != v12)
  {
    if ((*(a1[3].i64[0] + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = a1[3].i64[0];
        v20 = v19 + 74;
        v21 = *(v19 + 256);
        v22 = *(*(v19 + 248) + 372);
        if (v21)
        {
          LODWORD(v21) = *(v21 + 860);
        }

        v23 = *(v19 + 424);
        *buf = 136447746;
        v28 = "nw_http1_stream_add_input_handler_block_invoke_2";
        v29 = 2082;
        v30 = v20;
        v31 = 2080;
        v32 = " ";
        v33 = 1024;
        v34 = v22;
        v35 = 1024;
        v36 = v21;
        v37 = 1024;
        v38 = v23;
        v39 = 2112;
        v40 = v2;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> saving transformed parameters %@", buf, 0x3Cu);
      }
    }

    if (v2)
    {
      v2 = os_retain(v2);
    }

    v14 = a1[3].i64[0];
    v15 = *(v14 + 328);
    if (v15)
    {
      v16 = *(v14 + 320);
      if (v16)
      {
        os_release(v16);
        v15 = *(v14 + 328);
      }
    }

    *(v14 + 320) = v2;
    *(v14 + 328) = v15 | 1;
  }

  v7 = v13 ^ 1u;
  if (v4)
  {
LABEL_19:
    os_release(v4);
  }

  return v7;
}

void nw_http1_stream::~nw_http1_stream(nw_http1_stream *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    free(v2);
    *(this + 52) = 0;
  }

  if (*(this + 408))
  {
    v3 = *(this + 50);
    if (v3)
    {
      os_release(v3);
    }
  }

  *(this + 50) = 0;
  if (*(this + 392))
  {
    v4 = *(this + 48);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(this + 48) = 0;
  if (*(this + 376))
  {
    v5 = *(this + 46);
    if (v5)
    {
      os_release(v5);
    }
  }

  *(this + 46) = 0;
  if (*(this + 360))
  {
    v6 = *(this + 44);
    if (v6)
    {
      os_release(v6);
    }
  }

  *(this + 44) = 0;
  if (*(this + 344))
  {
    v7 = *(this + 42);
    if (v7)
    {
      os_release(v7);
    }
  }

  *(this + 42) = 0;
  if (*(this + 328))
  {
    v8 = *(this + 40);
    if (v8)
    {
      os_release(v8);
    }
  }

  *(this + 40) = 0;
  if (*(this + 272))
  {
    v9 = *(this + 33);
    if (v9)
    {
      os_release(v9);
    }
  }

  *(this + 33) = 0;
}

void ___ZL23nw_protocol_http1_resetP11nw_protocolS0__block_invoke(uint64_t a1)
{
  v163 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if ((*(v1 + 872) & 0x100) == 0)
  {
    v3 = *(v1 + 32);

    nw_protocol_disconnect(v3, v2);
    return;
  }

  v4 = *(v1 + 480);
  if (v4)
  {
    nw_http_connection_metadata_closed(*(v1 + 768));
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v109 = __nwlog_obj();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        v110 = *(v2 + 488);
        v111 = *(*(v2 + 480) + 372);
        v112 = *(v2 + 860);
        if (v110)
        {
          LODWORD(v110) = *(v110 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v158 = " ";
        v159 = 1024;
        *v160 = v111;
        *&v160[4] = 1024;
        *&v160[6] = v112;
        *&v160[10] = 1024;
        *&v160[12] = v110;
        _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing unprocessed_input_frames", buf, 0x32u);
      }
    }

    v5 = (v2 + 616);
    if (gLogDatapath == 1)
    {
      v107 = __nwlog_obj();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v6 = *v5;
    if (*v5)
    {
      *(v6 + 40) = v149;
      v7 = *(v2 + 624);
      *v149 = v6;
      v150 = v7;
      *(v2 + 616) = 0;
      *(v2 + 624) = v5;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v158 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v159) = 0;
      do
      {
        v8 = *v149;
        if (!*v149)
        {
          break;
        }

        v9 = *(*v149 + 32);
        v10 = *(*v149 + 40);
        v11 = (v9 + 40);
        if (!v9)
        {
          v11 = &v150;
        }

        *v11 = v10;
        *v10 = v9;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v113 = __nwlog_obj();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
      {
        v114 = *(v2 + 488);
        v115 = *(*(v2 + 480) + 372);
        v116 = *(v2 + 860);
        if (v114)
        {
          LODWORD(v114) = *(v114 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v158 = " ";
        v159 = 1024;
        *v160 = v115;
        *&v160[4] = 1024;
        *&v160[6] = v116;
        *&v160[10] = 1024;
        *&v160[12] = v114;
        _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing processed_input_frames", buf, 0x32u);
      }
    }

    v12 = (v2 + 632);
    if (gLogDatapath == 1)
    {
      v108 = __nwlog_obj();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v13 = *v12;
    if (*v12)
    {
      *(v13 + 40) = v149;
      v14 = *(v2 + 640);
      *v149 = v13;
      v150 = v14;
      *(v2 + 632) = 0;
      *(v2 + 640) = v12;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v158 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v159) = 0;
      do
      {
        v15 = *v149;
        if (!*v149)
        {
          break;
        }

        v16 = *(*v149 + 32);
        v17 = *(*v149 + 40);
        v18 = (v16 + 40);
        if (!v16)
        {
          v18 = &v150;
        }

        *v18 = v17;
        *v17 = v16;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v117 = __nwlog_obj();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        v118 = *(v2 + 488);
        v119 = *(*(v2 + 480) + 372);
        v120 = *(v2 + 860);
        if (v118)
        {
          LODWORD(v118) = *(v118 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v158 = " ";
        v159 = 1024;
        *v160 = v119;
        *&v160[4] = 1024;
        *&v160[6] = v120;
        *&v160[10] = 1024;
        *&v160[12] = v118;
        _os_log_impl(&dword_181A37000, v117, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removing pending_output_frames", buf, 0x32u);
      }
    }

    *v149 = MEMORY[0x1E69E9820];
    v150 = 0x40000000;
    v151 = ___ZL29nw_http1_tear_down_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
    v152 = &__block_descriptor_tmp_57_42875;
    v153 = v2;
    v19 = *(v2 + 648);
    do
    {
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 32);
      v21 = v151(v149);
      v19 = v20;
    }

    while ((v21 & 1) != 0);
    nw_frame_cache_remove_all((v2 + 696));
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v121 = __nwlog_obj();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        v122 = *(v2 + 488);
        v123 = *(*(v2 + 480) + 372);
        v124 = *(v2 + 860);
        if (v122)
        {
          LODWORD(v122) = *(v122 + 424);
        }

        v125 = *(v2 + 32);
        *buf = 136447746;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v158 = " ";
        v159 = 1024;
        *v160 = v123;
        *&v160[4] = 1024;
        *&v160[6] = v124;
        *&v160[10] = 1024;
        *&v160[12] = v122;
        *&v160[16] = 2048;
        *&v160[18] = v125;
        _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> calling remove input handler on output handler %p", buf, 0x3Cu);
      }
    }

    v22 = *(v4 + 336);
    *(v4 + 336) = v22 - 1;
    if (v22)
    {
LABEL_50:
      if ((*(v4 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v126 = __nwlog_obj();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          v127 = *(v4 + 372);
          v128 = *(v4 + 336);
          *buf = 136447490;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 74;
          *&buf[22] = 2080;
          v158 = " ";
          v159 = 1024;
          *v160 = v127;
          *&v160[4] = 2048;
          *&v160[6] = v2;
          *&v160[14] = 1024;
          *&v160[16] = v128;
          _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed connection %p, now have %u connections", buf, 0x36u);
        }
      }

      if ((*(v2 + 872) & 0x800) == 0)
      {
LABEL_73:
        nw_protocol_remove_input_handler(*(v2 + 32), v2);
        nw_protocol_set_output_handler(v2, 0);
        if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v129 = __nwlog_obj();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
          {
            v130 = *(v2 + 488);
            v131 = *(*(v2 + 480) + 372);
            v132 = *(v2 + 860);
            if (v130)
            {
              LODWORD(v130) = *(v130 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 74;
            *&buf[22] = 2080;
            v158 = " ";
            v159 = 1024;
            *v160 = v131;
            *&v160[4] = 1024;
            *&v160[6] = v132;
            *&v160[10] = 1024;
            *&v160[12] = v130;
            *&v160[16] = 2048;
            *&v160[18] = v2;
            _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
          }
        }

        v46 = *(v2 + 760);
        if (v46)
        {
          v47 = *(v2 + 752);
          if (v47)
          {
            os_release(v47);
            v46 = *(v2 + 760);
          }
        }

        *(v2 + 752) = 0;
        *(v2 + 760) = v46 | 1;
        v48 = *(v2 + 744);
        if (v48)
        {
          v49 = *(v2 + 736);
          if (v49)
          {
            os_release(v49);
            v48 = *(v2 + 744);
          }
        }

        *(v2 + 736) = 0;
        *(v2 + 744) = v48 | 1;
        v50 = *(v2 + 488);
        if (!v50 || (v51 = *(v50 + 256), v51 != v2))
        {
LABEL_83:
          *(v2 + 488) = 0;
          if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v133 = __nwlog_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              v134 = *(v2 + 488);
              v135 = *(*(v2 + 480) + 372);
              v136 = *(v2 + 860);
              if (v134)
              {
                LODWORD(v134) = *(v134 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v2 + 74;
              *&buf[22] = 2080;
              v158 = " ";
              v159 = 1024;
              *v160 = v135;
              *&v160[4] = 1024;
              *&v160[6] = v136;
              *&v160[10] = 1024;
              *&v160[12] = v134;
              _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing frame arrays", buf, 0x32u);
            }
          }

          if (!*(v2 + 680))
          {
LABEL_107:
            if (!*(v2 + 664))
            {
LABEL_123:
              nw_frame_cache_destroy((v2 + 696));
              v78 = *(v2 + 528);
              if (v78)
              {
                v79 = *(v2 + 544);
                if (v79)
                {
                  nw_association_unregister(v78, v79);
                }
              }

              v80 = *(v2 + 800);
              if (v80)
              {
                free(v80);
                *(v2 + 800) = 0;
              }

              *(v2 + 840) = 0;
              v81 = *(v2 + 808);
              if (v81)
              {
                free(v81);
                *(v2 + 808) = 0;
              }

              *(v2 + 844) = 0;
              v82 = *(v2 + 816);
              if (v82)
              {
                free(v82);
                *(v2 + 816) = 0;
              }

              *(v2 + 848) = 0;
              v83 = *(v2 + 824);
              if (v83)
              {
                free(v83);
                *(v2 + 824) = 0;
              }

              *(v2 + 852) = 0;
              v84 = *(v2 + 832);
              if (v84)
              {
                free(v84);
                *(v2 + 832) = 0;
              }

              *(v2 + 856) = 0;
              (*(*(v2 + 608) + 16))(*(v2 + 608), 0);
              v85 = *(v2 + 608);
              if (v85)
              {
                _Block_release(v85);
                *(v2 + 608) = 0;
              }

              nw_http1_connection::~nw_http1_connection(v2);
              free(v86);
              if (!*(v4 + 336) && !*(v4 + 344))
              {
                nw_protocol_http1_destroy(v4, v4);
              }

              return;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_destroy";
            v68 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v154 = 0;
            if (__nwlog_fault(v68, type, &v154))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v69 = gLogObj;
                v70 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_121;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v71 = "%{public}s input frame array is not empty when http1 connection is destroyed";
LABEL_119:
                v76 = v69;
                v77 = v70;
LABEL_120:
                _os_log_impl(&dword_181A37000, v76, v77, v71, buf, 0xCu);
                goto LABEL_121;
              }

              if (v154 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v69 = gLogObj;
                v70 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_121;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v71 = "%{public}s input frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
                goto LABEL_119;
              }

              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v73 = gLogObj;
              v74 = type[0];
              v75 = os_log_type_enabled(gLogObj, type[0]);
              if (backtrace_string)
              {
                if (v75)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_destroy";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v73, v74, "%{public}s input frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_121;
              }

              if (v75)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v71 = "%{public}s input frame array is not empty when http1 connection is destroyed, no backtrace";
                v76 = v73;
                v77 = v74;
                goto LABEL_120;
              }
            }

LABEL_121:
            if (v68)
            {
              free(v68);
            }

            goto LABEL_123;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_destroy";
          v52 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v154 = 0;
          if (__nwlog_fault(v52, type, &v154))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v53 = gLogObj;
              v54 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_105;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v55 = "%{public}s output frame array is not empty when http1 connection is destroyed";
LABEL_103:
              v66 = v53;
              v67 = v54;
LABEL_104:
              _os_log_impl(&dword_181A37000, v66, v67, v55, buf, 0xCu);
              goto LABEL_105;
            }

            if (v154 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v53 = gLogObj;
              v54 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_105;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v55 = "%{public}s output frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
              goto LABEL_103;
            }

            v56 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v57 = gLogObj;
            v58 = type[0];
            v59 = os_log_type_enabled(gLogObj, type[0]);
            if (v56)
            {
              if (v59)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_destroy";
                *&buf[12] = 2082;
                *&buf[14] = v56;
                _os_log_impl(&dword_181A37000, v57, v58, "%{public}s output frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v56);
              goto LABEL_105;
            }

            if (v59)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v55 = "%{public}s output frame array is not empty when http1 connection is destroyed, no backtrace";
              v66 = v57;
              v67 = v58;
              goto LABEL_104;
            }
          }

LABEL_105:
          if (v52)
          {
            free(v52);
          }

          goto LABEL_107;
        }

        if (*(v50 + 248))
        {
          if (v51[61] == v50)
          {
            if ((*(v50 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v87 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v88 = *(v50 + 256);
                v89 = *(*(v50 + 248) + 372);
                if (v88)
                {
                  LODWORD(v88) = *(v88 + 860);
                }

                v90 = *(v50 + 424);
                *buf = 136448002;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2082;
                *&buf[14] = v50 + 74;
                *&buf[22] = 2080;
                v158 = " ";
                v159 = 1024;
                *v160 = v89;
                *&v160[4] = 1024;
                *&v160[6] = v88;
                *&v160[10] = 1024;
                *&v160[12] = v90;
                *&v160[16] = 2048;
                *&v160[18] = v50;
                v161 = 2048;
                v162 = v2;
                _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
              }
            }

            v91 = v51 + 79;
            if (gLogDatapath == 1)
            {
              v148 = __nwlog_obj();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              }
            }

            v92 = *v91;
            if (*v91)
            {
              *(v92 + 40) = type;
              v93 = v51[80];
              *type = v92;
              v156 = v93;
              v51[79] = 0;
              v51[80] = v91;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              v158 = &__block_descriptor_tmp_21_49595;
              LOBYTE(v159) = 0;
              do
              {
                v94 = *type;
                if (!*type)
                {
                  break;
                }

                v95 = *(*type + 32);
                v96 = *(*type + 40);
                v97 = (v95 + 40);
                if (!v95)
                {
                  v97 = &v156;
                }

                *v97 = v96;
                *v96 = v95;
                *(v94 + 32) = 0;
                *(v94 + 40) = 0;
              }

              while (((*&buf[16])(buf) & 1) != 0);
            }

            *(v50 + 256) = 0;
            v51[61] = 0;
            nw_protocol_set_output_handler(v50, 0);
            nw_protocol_set_input_handler(v51, 0);
            goto LABEL_83;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = v51[61];
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v2;
          *&buf[22] = 2048;
          v158 = v50;
          v159 = 2048;
          *v160 = v60;
          v61 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v154 = 0;
          if (__nwlog_fault(v61, type, &v154))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v62 = gLogObj;
              v63 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_169;
              }

              v64 = v51[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v158 = v50;
              v159 = 2048;
              *v160 = v64;
              v65 = "%{public}s Connection %p does not already have stream %p, has %p";
              goto LABEL_168;
            }

            if (v154 != 1)
            {
              v62 = __nwlog_obj();
              v63 = type[0];
              if (!os_log_type_enabled(v62, type[0]))
              {
                goto LABEL_169;
              }

              v101 = v51[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v158 = v50;
              v159 = 2048;
              *v160 = v101;
              v65 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
              goto LABEL_168;
            }

            v98 = __nw_create_backtrace_string();
            v62 = __nwlog_obj();
            v63 = type[0];
            v99 = os_log_type_enabled(v62, type[0]);
            if (v98)
            {
              if (v99)
              {
                v100 = v51[61];
                *buf = 136447234;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2048;
                *&buf[14] = v2;
                *&buf[22] = 2048;
                v158 = v50;
                v159 = 2048;
                *v160 = v100;
                *&v160[8] = 2082;
                *&v160[10] = v98;
                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v98);
              goto LABEL_169;
            }

            if (v99)
            {
              v102 = v51[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v158 = v50;
              v159 = 2048;
              *v160 = v102;
              v65 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_168:
              _os_log_impl(&dword_181A37000, v62, v63, v65, buf, 0x2Au);
            }
          }

LABEL_169:
          if (v61)
          {
            free(v61);
          }

          goto LABEL_83;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v142 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v154 = 0;
        if (__nwlog_fault(v142, type, &v154))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v143 = __nwlog_obj();
            v144 = type[0];
            if (!os_log_type_enabled(v143, type[0]))
            {
              goto LABEL_235;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v145 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_234;
          }

          if (v154 != 1)
          {
            v143 = __nwlog_obj();
            v144 = type[0];
            if (!os_log_type_enabled(v143, type[0]))
            {
              goto LABEL_235;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v145 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_234;
          }

          v146 = __nw_create_backtrace_string();
          v143 = __nwlog_obj();
          v144 = type[0];
          v147 = os_log_type_enabled(v143, type[0]);
          if (v146)
          {
            if (v147)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v146;
              _os_log_impl(&dword_181A37000, v143, v144, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v146);
            goto LABEL_235;
          }

          if (v147)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v145 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
LABEL_234:
            _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0xCu);
          }
        }

LABEL_235:
        if (v142)
        {
          free(v142);
        }

        goto LABEL_83;
      }

      v34 = *(v4 + 368);
      *(v4 + 368) = v34 - 1;
      if (v34)
      {
LABEL_71:
        if ((*(v4 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v139 = __nwlog_obj();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
          {
            v140 = *(v4 + 372);
            v141 = *(v4 + 368) + *(v4 + 364);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = v4 + 74;
            *&buf[22] = 2080;
            v158 = " ";
            v159 = 1024;
            *v160 = v140;
            *&v160[4] = 1024;
            *&v160[6] = v141;
            *&v160[10] = 2048;
            *&v160[12] = v2;
            _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> decreased connection pool width to %u after removing non-reusable connection %p", buf, 0x36u);
          }
        }

        goto LABEL_73;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = *(v4 + 368);
      *buf = 136446978;
      *&buf[4] = "nw_http1_remove_connection";
      *&buf[12] = 2082;
      *&buf[14] = "http1->nonresuable_connections";
      *&buf[22] = 2048;
      v158 = 1;
      v159 = 2048;
      *v160 = v35;
      v36 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v154 = 0;
      if (__nwlog_fault(v36, type, &v154))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v39 = *(v4 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v158 = 1;
            v159 = 2048;
            *v160 = v39;
            v40 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_67:
            _os_log_impl(&dword_181A37000, v37, v38, v40, buf, 0x2Au);
          }
        }

        else if (v154 == 1)
        {
          v41 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v38 = type[0];
          v42 = os_log_type_enabled(v37, type[0]);
          if (v41)
          {
            if (v42)
            {
              v43 = *(v4 + 368);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              v158 = 1;
              v159 = 2048;
              *v160 = v43;
              *&v160[8] = 2082;
              *&v160[10] = v41;
              _os_log_impl(&dword_181A37000, v37, v38, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v41);
            goto LABEL_68;
          }

          if (v42)
          {
            v45 = *(v4 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v158 = 1;
            v159 = 2048;
            *v160 = v45;
            v40 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_67;
          }
        }

        else
        {
          v37 = __nwlog_obj();
          v38 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            v44 = *(v4 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v158 = 1;
            v159 = 2048;
            *v160 = v44;
            v40 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_67;
          }
        }
      }

LABEL_68:
      if (v36)
      {
        free(v36);
      }

      *(v4 + 368) = 0;
      goto LABEL_71;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = *(v4 + 336);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->connections_count";
    *&buf[22] = 2048;
    v158 = 1;
    v159 = 2048;
    *v160 = v23;
    v24 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v24, type, &v154))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v27 = *(v4 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v158 = 1;
          v159 = 2048;
          *v160 = v27;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_46:
          _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x2Au);
        }
      }

      else if (v154 == 1)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        v30 = os_log_type_enabled(gLogObj, type[0]);
        if (v29)
        {
          if (v30)
          {
            v31 = *(v4 + 336);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v158 = 1;
            v159 = 2048;
            *v160 = v31;
            *&v160[8] = 2082;
            *&v160[10] = v29;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v29);
          goto LABEL_47;
        }

        if (v30)
        {
          v33 = *(v4 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v158 = 1;
          v159 = 2048;
          *v160 = v33;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_46;
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
          v32 = *(v4 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v158 = 1;
          v159 = 2048;
          *v160 = v32;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_46;
        }
      }
    }

LABEL_47:
    if (v24)
    {
      free(v24);
    }

    *(v4 + 336) = 0;
    goto LABEL_50;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_tear_down_connection";
  v103 = _os_log_send_and_compose_impl();
  v149[0] = OS_LOG_TYPE_ERROR;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v103, v149, type))
  {
    if (v149[0] == OS_LOG_TYPE_FAULT)
    {
      v104 = __nwlog_obj();
      v105 = v149[0];
      if (!os_log_type_enabled(v104, v149[0]))
      {
        goto LABEL_226;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v106 = "%{public}s called with null http1";
      goto LABEL_225;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v104 = __nwlog_obj();
      v105 = v149[0];
      if (!os_log_type_enabled(v104, v149[0]))
      {
        goto LABEL_226;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v106 = "%{public}s called with null http1, backtrace limit exceeded";
      goto LABEL_225;
    }

    v137 = __nw_create_backtrace_string();
    v104 = __nwlog_obj();
    v105 = v149[0];
    v138 = os_log_type_enabled(v104, v149[0]);
    if (v137)
    {
      if (v138)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v137;
        _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v137);
      goto LABEL_226;
    }

    if (v138)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v106 = "%{public}s called with null http1, no backtrace";
LABEL_225:
      _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0xCu);
    }
  }

LABEL_226:
  if (v103)
  {
    free(v103);
  }
}
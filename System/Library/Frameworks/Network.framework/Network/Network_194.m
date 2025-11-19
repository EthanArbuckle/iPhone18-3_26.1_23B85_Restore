void nw_protocol_http1_connected(nw_protocol *a1, nw_protocol *a2)
{
  v319 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (!__nwlog_fault(v132, type, &aBlock))
    {
      goto LABEL_432;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_432;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v135 = "%{public}s called with null protocol";
    }

    else
    {
      if (aBlock == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v133 = __nwlog_obj();
        v134 = type[0];
        v145 = os_log_type_enabled(v133, type[0]);
        if (!backtrace_string)
        {
          if (!v145)
          {
            goto LABEL_432;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v135 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_431;
        }

        if (v145)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_432;
      }

      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_432;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v135 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_431;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (!__nwlog_fault(v132, type, &aBlock))
    {
      goto LABEL_432;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (aBlock != 1)
      {
        v133 = __nwlog_obj();
        v134 = type[0];
        if (!os_log_type_enabled(v133, type[0]))
        {
          goto LABEL_432;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v135 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_431;
      }

      v146 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v134 = type[0];
      v147 = os_log_type_enabled(v133, type[0]);
      if (!v146)
      {
        if (!v147)
        {
          goto LABEL_432;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v135 = "%{public}s called with null handle, no backtrace";
        goto LABEL_431;
      }

      if (!v147)
      {
        goto LABEL_232;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v146;
      v148 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_231;
    }

    v133 = __nwlog_obj();
    v134 = type[0];
    if (!os_log_type_enabled(v133, type[0]))
    {
      goto LABEL_432;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v135 = "%{public}s called with null handle";
LABEL_431:
    _os_log_impl(&dword_181A37000, v133, v134, v135, buf, 0xCu);
    goto LABEL_432;
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
      goto LABEL_434;
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
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (__nwlog_fault(v132, type, &aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v133 = __nwlog_obj();
        v134 = type[0];
        if (!os_log_type_enabled(v133, type[0]))
        {
          goto LABEL_432;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v135 = "%{public}s called with null handle->http1_connection";
        goto LABEL_431;
      }

      if (aBlock != 1)
      {
        v133 = __nwlog_obj();
        v134 = type[0];
        if (!os_log_type_enabled(v133, type[0]))
        {
          goto LABEL_432;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v135 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_431;
      }

      v146 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v134 = type[0];
      v217 = os_log_type_enabled(v133, type[0]);
      if (!v146)
      {
        if (!v217)
        {
          goto LABEL_432;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v135 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_431;
      }

      if (v217)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v146;
        v148 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_231;
      }

LABEL_232:
      free(v146);
      if (!v132)
      {
LABEL_434:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_connected";
        v136 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(aBlock) = 0;
        if (!__nwlog_fault(v136, type, &aBlock))
        {
          goto LABEL_472;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v137 = gLogObj;
          v138 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_472;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_connected";
          v139 = "%{public}s called with null http1";
        }

        else
        {
          if (aBlock == 1)
          {
            v260 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v261 = gLogObj;
            v262 = type[0];
            v263 = os_log_type_enabled(gLogObj, type[0]);
            if (!v260)
            {
              if (!v263)
              {
                goto LABEL_472;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_connected";
              v139 = "%{public}s called with null http1, no backtrace";
              goto LABEL_477;
            }

            if (v263)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_connected";
              *&buf[12] = 2082;
              *&buf[14] = v260;
              _os_log_impl(&dword_181A37000, v261, v262, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v260);
LABEL_472:
            if (!v136)
            {
              return;
            }

            goto LABEL_473;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v137 = gLogObj;
          v138 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_472;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_connected";
          v139 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_470:
        v266 = v137;
        v267 = v138;
LABEL_471:
        _os_log_impl(&dword_181A37000, v266, v267, v139, buf, 0xCu);
        goto LABEL_472;
      }

LABEL_433:
      free(v132);
      goto LABEL_434;
    }

LABEL_432:
    if (!v132)
    {
      goto LABEL_434;
    }

    goto LABEL_433;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (!__nwlog_fault(v132, type, &aBlock))
    {
      goto LABEL_432;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_432;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v135 = "%{public}s called with null handle->http1_stream";
      goto LABEL_431;
    }

    if (aBlock != 1)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_432;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v135 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_431;
    }

    v146 = __nw_create_backtrace_string();
    v133 = __nwlog_obj();
    v134 = type[0];
    v216 = os_log_type_enabled(v133, type[0]);
    if (!v146)
    {
      if (!v216)
      {
        goto LABEL_432;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v135 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_431;
    }

    if (!v216)
    {
      goto LABEL_232;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v146;
    v148 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_231:
    _os_log_impl(&dword_181A37000, v133, v134, v148, buf, 0x16u);
    goto LABEL_232;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!*v4)
  {
    goto LABEL_434;
  }

  if (a2)
  {
    if (v3 != 2)
    {
      if (v3 != 3 || *(handle + 2))
      {
        goto LABEL_21;
      }

      v8 = a1;
      v9 = a2;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v10 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(aBlock) = 0;
      if (!__nwlog_fault(v10, type, &aBlock))
      {
        goto LABEL_450;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          v13 = "%{public}s called with null handle->http1_connection";
LABEL_449:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
        }
      }

      else if (aBlock == 1)
      {
        v218 = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type[0];
        v219 = os_log_type_enabled(v11, type[0]);
        if (v218)
        {
          if (v219)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_get_stream_for_protocol";
            *&buf[12] = 2082;
            *&buf[14] = v218;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v218);
          goto LABEL_450;
        }

        if (v219)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          v13 = "%{public}s called with null handle->http1_connection, no backtrace";
          goto LABEL_449;
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v12 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          v13 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
          goto LABEL_449;
        }
      }

LABEL_450:
      if (v10)
      {
        free(v10);
      }

      a2 = v9;
      a1 = v8;
      goto LABEL_21;
    }

    v14 = *(handle + 1);
    if (!v14 || *(v14 + 256))
    {
      goto LABEL_21;
    }

    if ((*(v14 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v222 = a2;
      v223 = a1;
      v224 = __nwlog_obj();
      v225 = os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG);
      a2 = v222;
      v226 = v225;
      a1 = v223;
      if (v226)
      {
        v227 = *(v14 + 256);
        v228 = *(*(v14 + 248) + 372);
        if (v227)
        {
          LODWORD(v227) = *(v227 + 860);
        }

        v229 = *(v14 + 424);
        output_handler = v223->output_handler;
        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_connected";
        *&buf[12] = 2082;
        *&buf[14] = v14 + 74;
        *&buf[22] = 2080;
        v311 = " ";
        *v312 = 1024;
        *&v312[2] = v228;
        *&v312[6] = 1024;
        *&v312[8] = v227;
        *&v312[12] = 1024;
        *&v312[14] = v229;
        *&v312[18] = 2048;
        *v313 = output_handler;
        _os_log_impl(&dword_181A37000, v224, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> associating connected output handler %p", buf, 0x3Cu);
        a1 = v223;
        a2 = v222;
      }
    }

    v32 = a1->output_handler;
    if (!v32)
    {
      goto LABEL_21;
    }

    v33 = *(v14 + 336);
    v293 = a1;
    v294 = a1->output_handler;
    v292 = a2;
    if (v33)
    {
      v34 = *(v14 + 320);
      if (v34)
      {
        v35 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
        v36 = v35;
        if (v35)
        {
          bzero(v35, 0x370uLL);
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_http1_connection_create";
          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          v311 = 880;
          v37 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort(v37) || (free(v37), bzero(0, 0x370uLL), MEMORY[0x1F0] = 0, MEMORY[0x1F8] &= ~1u, MEMORY[0x200] = 0, MEMORY[0x208] &= ~1u, MEMORY[0x210] = 0, MEMORY[0x218] &= ~1u, MEMORY[0x220] = 0, MEMORY[0x228] &= ~1u, MEMORY[0x230] = 0, MEMORY[0x238] &= ~1u, MEMORY[0x240] = 0, MEMORY[0x248] &= ~1u, MEMORY[0x2E0] = 0, MEMORY[0x2E8] &= ~1u, MEMORY[0x2F0] = 0, MEMORY[0x2F8] &= ~1u, MEMORY[0x300] = 0, MEMORY[0x308] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, *&buf[4] = "nw_http1_connection_create", v38 = _os_log_send_and_compose_impl(), __nwlog_should_abort(v38)))
          {
            __break(1u);
            return;
          }

          free(v38);
        }

        if (nw_protocol_http1_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
        }

        *(v36 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
        if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
        }

        *(v36 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
        *(v36 + 184) = 3;
        *(v36 + 176) = v36;
        *(v36 + 40) = v36 + 160;
        *(v36 + 480) = v7;
        nw_protocol_set_output_handler(v36, v32);
        v39 = os_retain(v33);
        v40 = *(v36 + 760);
        if ((v40 & 1) != 0 && *(v36 + 752))
        {
          v41 = v39;
          os_release(*(v36 + 752));
          v39 = v41;
          v40 = *(v36 + 760);
        }

        *(v36 + 752) = v39;
        *(v36 + 760) = v40 | 1;
        v42 = os_retain(v34);
        v43 = *(v36 + 744);
        if ((v43 & 1) != 0 && *(v36 + 736))
        {
          v44 = v42;
          os_release(*(v36 + 736));
          v42 = v44;
          v43 = *(v36 + 744);
        }

        *(v36 + 736) = v42;
        *(v36 + 744) = v43 | 1;
        v45 = _nw_parameters_copy_context(v34);
        v46 = *(v36 + 504);
        if ((v46 & 1) != 0 && *(v36 + 496))
        {
          v47 = v45;
          os_release(*(v36 + 496));
          v45 = v47;
          v46 = *(v36 + 504);
        }

        *(v36 + 496) = v45;
        *(v36 + 504) = v46 | 1;
        *(v36 + 192) = *(v7 + 192);
        *type = MEMORY[0x1E69E9820];
        v298 = 0x40000000;
        v299 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
        v300 = &__block_descriptor_tmp_43_43000;
        v301 = v36;
        metadata = nw_http_connection_create_metadata(v45, type, 0);
        v49 = *(v36 + 776);
        if ((v49 & 1) != 0 && *(v36 + 768))
        {
          v50 = metadata;
          os_release(*(v36 + 768));
          metadata = v50;
          v49 = *(v36 + 776);
        }

        *(v36 + 768) = metadata;
        *(v36 + 776) = v49 | 1;
        nw_http_connection_metadata_set_version(metadata, 3);
        nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v36 + 768), *(v7 + 312));
        *(v36 + 616) = 0;
        *(v36 + 624) = v36 + 616;
        *(v36 + 632) = 0;
        *(v36 + 640) = v36 + 632;
        *(v36 + 648) = 0;
        *(v36 + 656) = v36 + 648;
        *(v36 + 664) = 0;
        *(v36 + 672) = v36 + 664;
        *(v36 + 680) = 0;
        *(v36 + 688) = v36 + 680;
        nw_frame_cache_init(v36 + 696, v36, 256, 0x40000, 16);
        v51 = *(v36 + 480);
        if (v51)
        {
          *(v36 + 360) = 0u;
          *(v36 + 376) = 0u;
          *(v36 + 392) = 0u;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 440) = 0u;
          *(v36 + 328) = 0u;
          *(v36 + 344) = 0u;
          *(v36 + 296) = nw_http1_on_message_begin;
          *(v36 + 384) = nw_http1_on_message_complete;
          *(v36 + 368) = nw_http1_on_headers_complete;
          *(v36 + 472) = nw_http1_on_reset;
          *(v36 + 320) = nw_http1_on_method;
          *(v36 + 408) = nw_http1_on_method_complete;
          *(v36 + 304) = nw_http1_on_url;
          *(v36 + 392) = nw_http1_on_url_complete;
          *(v36 + 312) = nw_http1_on_status;
          *(v36 + 400) = nw_http1_on_status_complete;
          *(v36 + 336) = nw_http1_on_header_field;
          *(v36 + 424) = nw_http1_on_header_field_complete;
          *(v36 + 344) = nw_http1_on_header_value;
          *(v36 + 432) = nw_http1_on_header_value_complete;
          *(v36 + 376) = nw_http1_on_body;
          *(v36 + 456) = nw_http1_on_chunk_header;
          *(v36 + 464) = nw_http1_on_chunk_complete;
          v52 = *(v51 + 376);
          *(v36 + 248) = 0u;
          *(v36 + 200) = 0u;
          *(v36 + 264) = 0u;
          *(v36 + 232) = 0u;
          *(v36 + 216) = 0u;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = 2;
          }

          *(v36 + 272) = v53;
          *(v36 + 280) = 0;
          *(v36 + 288) = v36 + 296;
          *(v36 + 278) = 16131;
          *(v36 + 248) = v36;
          *(v36 + 256) = 237;
          if ((*(v36 + 158) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v54 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              v55 = *(v36 + 488);
              v56 = *(*(v36 + 480) + 372);
              v57 = *(v36 + 860);
              if (v55)
              {
                LODWORD(v55) = *(v55 + 424);
              }

              *buf = 136448258;
              *&buf[4] = "nw_http1_connection_log_parser_version";
              *&buf[12] = 2082;
              *&buf[14] = v36 + 74;
              *&buf[22] = 2080;
              v311 = " ";
              *v312 = 1024;
              *&v312[2] = v56;
              *&v312[6] = 1024;
              *&v312[8] = v57;
              *&v312[12] = 1024;
              *&v312[14] = v55;
              *&v312[18] = 1024;
              *v313 = 9;
              *&v313[4] = 1024;
              *&v313[6] = 2;
              *v314 = 1024;
              *&v314[2] = 1;
              _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
            }
          }

          goto LABEL_81;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_parser_init";
        v235 = _os_log_send_and_compose_impl();
        v315[0] = 16;
        v309 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v235, v315, &v309))
        {
          if (v315[0] == 17)
          {
            v236 = __nwlog_obj();
            v237 = v315[0];
            if (os_log_type_enabled(v236, v315[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_parser_init";
              v238 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_563:
              _os_log_impl(&dword_181A37000, v236, v237, v238, buf, 0xCu);
            }
          }

          else if (v309 == OS_LOG_TYPE_INFO)
          {
            v272 = __nw_create_backtrace_string();
            v236 = __nwlog_obj();
            v237 = v315[0];
            v273 = os_log_type_enabled(v236, v315[0]);
            if (v272)
            {
              if (v273)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_parser_init";
                *&buf[12] = 2082;
                *&buf[14] = v272;
                _os_log_impl(&dword_181A37000, v236, v237, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v272);
              goto LABEL_564;
            }

            if (v273)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_parser_init";
              v238 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
              goto LABEL_563;
            }
          }

          else
          {
            v236 = __nwlog_obj();
            v237 = v315[0];
            if (os_log_type_enabled(v236, v315[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_parser_init";
              v238 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
              goto LABEL_563;
            }
          }
        }

LABEL_564:
        if (v235)
        {
          free(v235);
        }

        v32 = v294;
LABEL_81:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v311 = v36;
        aBlock = MEMORY[0x1E69E9820];
        p_aBlock = 0x40000000;
        v306 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
        v307 = &unk_1E6A32758;
        v308 = buf;
        *(v36 + 608) = _Block_copy(&aBlock);
        _Block_object_dispose(buf, 8);
        if ((*(v36 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v247 = __nwlog_obj();
          if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
          {
            v248 = *(v36 + 488);
            v249 = *(*(v36 + 480) + 372);
            v250 = *(v36 + 860);
            if (v248)
            {
              LODWORD(v248) = *(v248 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v36 + 74;
            *&buf[22] = 2080;
            v311 = " ";
            *v312 = 1024;
            *&v312[2] = v249;
            *&v312[6] = 1024;
            *&v312[8] = v250;
            *&v312[12] = 1024;
            *&v312[14] = v248;
            *&v312[18] = 2048;
            *v313 = v36;
            _os_log_impl(&dword_181A37000, v247, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
            v32 = v294;
          }
        }

        nw_protocol_replace_input_handler(v32, v14, v36);
        *v36 = *v32->flow_id;
        v58 = *(v36 + 736);
        if (v58)
        {
          if (!*(v36 + 528))
          {
            v59 = _nw_parameters_copy_context(*(v36 + 736));
            v60 = nw_path_copy_flow_registration(v59, v36);
            v61 = *(v36 + 568);
            if ((v61 & 1) != 0 && *(v36 + 560))
            {
              v62 = v60;
              os_release(*(v36 + 560));
              v60 = v62;
              v61 = *(v36 + 568);
            }

            *(v36 + 560) = v60;
            *(v36 + 568) = v61 | 1;
            if (v60)
            {
              v63 = nw_path_flow_registration_copy_endpoint(v60);
              v64 = nw_path_flow_registration_copy_parameters(*(v36 + 560));
              v65 = nw_endpoint_copy_association_with_evaluator(v63, v64, 0);
              v66 = *(v36 + 536);
              if ((v66 & 1) != 0 && *(v36 + 528))
              {
                v67 = v65;
                os_release(*(v36 + 528));
                v65 = v67;
                v66 = *(v36 + 536);
              }

              *(v36 + 528) = v65;
              *(v36 + 536) = v66 | 1;
              if (v65)
              {
                *buf = nw_protocol_instance_stub_create(v36);
                nw::retained_ptr<nw_endpoint *>::operator=(v36 + 544, buf);
                nw_association_register_internal(*(v36 + 528), v58, *(v36 + 544), 0, 0, &__block_literal_global_69_43019);
                v68 = nw_association_copy_current_path(*(v36 + 528), v64);
                if (v68)
                {
                  v69 = v68;
                  v70 = nw_path_copy_for_flow_registration(v68, *(v36 + 560));
                  if (v70)
                  {
                    v71 = v70;
                    if (*(v36 + 512) != v70)
                    {
                      *buf = os_retain(v70);
                      nw::retained_ptr<nw_endpoint *>::operator=(v36 + 512, buf);
                    }

                    if (nw_path_has_flows(v71))
                    {
                      v72 = 4096;
                    }

                    else
                    {
                      v72 = 0;
                    }

                    *(v36 + 872) = *(v36 + 872) & 0xEFFF | v72;
                    v73 = _nw_parameters_copy_effective_proxy_config(v58);
                    if (v73)
                    {
                      v74 = v73;
                      if (nw_path_has_proxy_config(v69, v73))
                      {
                        *buf = os_retain(v74);
                        nw::retained_ptr<nw_endpoint *>::operator=(v36 + 576, buf);
                      }

                      os_release(v74);
                    }

                    os_release(v71);
                  }

                  os_release(v69);
                }
              }

              if (v64)
              {
                os_release(v64);
              }

              v32 = v294;
              if (v63)
              {
                os_release(v63);
              }
            }

            if (v59)
            {
              os_release(v59);
            }
          }

          v75 = *(v36 + 512);
          if (v75)
          {
LABEL_113:
            if (_nw_path_uses_interface_type(v75, 2u))
            {
              *(v36 + 192) = 1000;
            }
          }

LABEL_115:
          v76 = *(v7 + 336) + 1;
          *(v7 + 336) = v76;
          if (v76 == v76 << 31 >> 31)
          {
            goto LABEL_133;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v77 = *(v7 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_add_connection_for_output_handler";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v311 = 1;
          *v312 = 2048;
          *&v312[2] = v77;
          v78 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(aBlock) = 0;
          if (__nwlog_fault(v78, type, &aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v79 = __nwlog_obj();
              v80 = type[0];
              if (os_log_type_enabled(v79, type[0]))
              {
                v81 = *(v7 + 336);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->connections_count";
                *&buf[22] = 2048;
                v311 = 1;
                *v312 = 2048;
                *&v312[2] = v81;
                v82 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_129:
                _os_log_impl(&dword_181A37000, v79, v80, v82, buf, 0x2Au);
              }
            }

            else if (aBlock == 1)
            {
              v83 = __nw_create_backtrace_string();
              v79 = __nwlog_obj();
              v80 = type[0];
              v84 = os_log_type_enabled(v79, type[0]);
              if (v83)
              {
                if (v84)
                {
                  v85 = *(v7 + 336);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v311 = 1;
                  *v312 = 2048;
                  *&v312[2] = v85;
                  *&v312[10] = 2082;
                  *&v312[12] = v83;
                  _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v83);
                v32 = v294;
                goto LABEL_130;
              }

              v32 = v294;
              if (v84)
              {
                v87 = *(v7 + 336);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->connections_count";
                *&buf[22] = 2048;
                v311 = 1;
                *v312 = 2048;
                *&v312[2] = v87;
                v82 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_129;
              }
            }

            else
            {
              v79 = __nwlog_obj();
              v80 = type[0];
              if (os_log_type_enabled(v79, type[0]))
              {
                v86 = *(v7 + 336);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->connections_count";
                *&buf[22] = 2048;
                v311 = 1;
                *v312 = 2048;
                *&v312[2] = v86;
                v82 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_129;
              }
            }
          }

LABEL_130:
          if (v78)
          {
            free(v78);
          }

          *(v7 + 336) = -1;
LABEL_133:
          v88 = *(v7 + 360) + 1;
          *(v7 + 360) = v88;
          if (v88 == v88 << 31 >> 31)
          {
            goto LABEL_151;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = *(v7 + 360);
          *buf = 136446978;
          *&buf[4] = "nw_http1_add_connection_for_output_handler";
          *&buf[12] = 2082;
          *&buf[14] = "http1->next_connection_log_num";
          *&buf[22] = 2048;
          v311 = 1;
          *v312 = 2048;
          *&v312[2] = v89;
          v90 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(aBlock) = 0;
          if (__nwlog_fault(v90, type, &aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v91 = __nwlog_obj();
              v92 = type[0];
              if (os_log_type_enabled(v91, type[0]))
              {
                v93 = *(v7 + 360);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->next_connection_log_num";
                *&buf[22] = 2048;
                v311 = 1;
                *v312 = 2048;
                *&v312[2] = v93;
                v94 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_147:
                _os_log_impl(&dword_181A37000, v91, v92, v94, buf, 0x2Au);
              }
            }

            else if (aBlock == 1)
            {
              v95 = __nw_create_backtrace_string();
              v91 = __nwlog_obj();
              v92 = type[0];
              v96 = os_log_type_enabled(v91, type[0]);
              if (v95)
              {
                if (v96)
                {
                  v97 = *(v7 + 360);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v311 = 1;
                  *v312 = 2048;
                  *&v312[2] = v97;
                  *&v312[10] = 2082;
                  *&v312[12] = v95;
                  _os_log_impl(&dword_181A37000, v91, v92, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v95);
                v32 = v294;
                goto LABEL_148;
              }

              v32 = v294;
              if (v96)
              {
                v99 = *(v7 + 360);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->next_connection_log_num";
                *&buf[22] = 2048;
                v311 = 1;
                *v312 = 2048;
                *&v312[2] = v99;
                v94 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_147;
              }
            }

            else
            {
              v91 = __nwlog_obj();
              v92 = type[0];
              if (os_log_type_enabled(v91, type[0]))
              {
                v98 = *(v7 + 360);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->next_connection_log_num";
                *&buf[22] = 2048;
                v311 = 1;
                *v312 = 2048;
                *&v312[2] = v98;
                v94 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_147;
              }
            }
          }

LABEL_148:
          if (v90)
          {
            free(v90);
          }

          LODWORD(v88) = -1;
          *(v7 + 360) = -1;
LABEL_151:
          *(v36 + 860) = v88;
          if ((*(v36 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v251 = __nwlog_obj();
            if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
            {
              v252 = *(v36 + 488);
              v253 = *(*(v36 + 480) + 372);
              v254 = *(v36 + 860);
              if (v252)
              {
                LODWORD(v252) = *(v252 + 424);
              }

              v255 = *(v7 + 336);
              *buf = 136448002;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              *&buf[12] = 2082;
              *&buf[14] = v36 + 74;
              *&buf[22] = 2080;
              v311 = " ";
              *v312 = 1024;
              *&v312[2] = v253;
              *&v312[6] = 1024;
              *&v312[8] = v254;
              *&v312[12] = 1024;
              *&v312[14] = v252;
              *&v312[18] = 2048;
              *v313 = v36;
              *&v313[8] = 1024;
              *v314 = v255;
              _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
              v32 = v294;
            }
          }

          if (*(v14 + 248))
          {
            if (*(v36 + 488))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v100 = *(v36 + 488);
              *buf = 136446722;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              *&buf[12] = 2048;
              *&buf[14] = v36;
              *&buf[22] = 2048;
              v311 = v100;
              v101 = _os_log_send_and_compose_impl();
              LOBYTE(aBlock) = 16;
              v315[0] = 0;
              if (!__nwlog_fault(v101, &aBlock, v315))
              {
                goto LABEL_190;
              }

              if (aBlock == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v102 = gLogObj;
                v103 = aBlock;
                if (!os_log_type_enabled(gLogObj, aBlock))
                {
                  goto LABEL_190;
                }

                v104 = *(v36 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v36;
                *&buf[22] = 2048;
                v311 = v104;
                v105 = "%{public}s Connection %p already has a stream (%p)";
              }

              else if (v315[0] == 1)
              {
                v108 = __nw_create_backtrace_string();
                v102 = __nwlog_obj();
                v103 = aBlock;
                v109 = os_log_type_enabled(v102, aBlock);
                if (v108)
                {
                  if (v109)
                  {
                    v110 = *(v36 + 488);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v36;
                    *&buf[22] = 2048;
                    v311 = v110;
                    *v312 = 2082;
                    *&v312[2] = v108;
                    _os_log_impl(&dword_181A37000, v102, v103, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v108);
                  v32 = v294;
                  goto LABEL_190;
                }

                v32 = v294;
                if (!v109)
                {
LABEL_190:
                  if (v101)
                  {
                    free(v101);
                  }

                  goto LABEL_280;
                }

                v127 = *(v36 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v36;
                *&buf[22] = 2048;
                v311 = v127;
                v105 = "%{public}s Connection %p already has a stream (%p), no backtrace";
              }

              else
              {
                v102 = __nwlog_obj();
                v103 = aBlock;
                if (!os_log_type_enabled(v102, aBlock))
                {
                  goto LABEL_190;
                }

                v111 = *(v36 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v36;
                *&buf[22] = 2048;
                v311 = v111;
                v105 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v102, v103, v105, buf, 0x20u);
              goto LABEL_190;
            }

            *(v14 + 256) = v36;
            *(v36 + 488) = v14;
            v106 = *(v14 + 320);
            if (v106)
            {
              v107 = os_retain(v106);
            }

            else
            {
              v107 = 0;
            }

            v112 = *(v36 + 744);
            if (v112)
            {
              v113 = *(v36 + 736);
              if (v113)
              {
                os_release(v113);
                v112 = *(v36 + 744);
              }
            }

            *(v36 + 736) = v107;
            *(v36 + 744) = v112 | 1;
            if ((*(*(v14 + 248) + 376) & 2) == 0)
            {
LABEL_252:
              v150 = *(v14 + 32);
              if (!v150 || v150 == *(v36 + 32))
              {
LABEL_270:
                nw_protocol_set_output_handler(v14, *(v36 + 32));
                nw_protocol_set_input_handler(v36, *(v14 + 48));
                *v14 = *v36;
                v167 = *(v14 + 96);
                v168 = *(v14 + 112);
                v169 = *(v14 + 128);
                *(v36 + 144) = *(v14 + 144);
                v170 = *(v14 + 80);
                *(v36 + 64) = *(v14 + 64);
                *(v36 + 80) = v170;
                *(v36 + 112) = v168;
                *(v36 + 128) = v169;
                *(v36 + 96) = v167;
                *(v36 + 872) &= 0xFFD7u;
                *(v36 + 864) = 1;
                if ((*(v36 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v171 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    v172 = *(v36 + 488);
                    v173 = *(*(v36 + 480) + 372);
                    v174 = *(v36 + 860);
                    if (v172)
                    {
                      LODWORD(v172) = *(v172 + 424);
                    }

                    *buf = 136447490;
                    *&buf[4] = "nw_http1_update_connection_input_state";
                    *&buf[12] = 2082;
                    *&buf[14] = v36 + 74;
                    *&buf[22] = 2080;
                    v311 = " ";
                    *v312 = 1024;
                    *&v312[2] = v173;
                    *&v312[6] = 1024;
                    *&v312[8] = v174;
                    *&v312[12] = 1024;
                    *&v312[14] = v172;
                    _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                  }
                }

                if ((*(v14 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v175 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v176 = *(v14 + 256);
                    v177 = *(*(v14 + 248) + 372);
                    if (v176)
                    {
                      LODWORD(v176) = *(v176 + 860);
                    }

                    v178 = *(v14 + 424);
                    *buf = 136448002;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v14 + 74;
                    *&buf[22] = 2080;
                    v311 = " ";
                    *v312 = 1024;
                    *&v312[2] = v177;
                    *&v312[6] = 1024;
                    *&v312[8] = v176;
                    *&v312[12] = 1024;
                    *&v312[14] = v178;
                    *&v312[18] = 2048;
                    *v313 = v14;
                    *&v313[8] = 2048;
                    *v314 = v36;
                    _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                  }
                }

                goto LABEL_280;
              }

              __nwlog_obj();
              v151 = *(v14 + 32);
              v152 = *(v36 + 32);
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              *&buf[12] = 2048;
              *&buf[14] = v151;
              *&buf[22] = 2048;
              v311 = v14;
              *v312 = 2048;
              *&v312[2] = v152;
              v153 = _os_log_send_and_compose_impl();
              LOBYTE(aBlock) = 16;
              v315[0] = 0;
              if (__nwlog_fault(v153, &aBlock, v315))
              {
                if (aBlock == 17)
                {
                  v154 = __nwlog_obj();
                  v155 = aBlock;
                  if (!os_log_type_enabled(v154, aBlock))
                  {
                    goto LABEL_268;
                  }

                  v156 = *(v14 + 32);
                  v157 = *(v36 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v156;
                  *&buf[22] = 2048;
                  v311 = v14;
                  *v312 = 2048;
                  *&v312[2] = v157;
                  v158 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                  goto LABEL_267;
                }

                if (v315[0] != 1)
                {
                  v154 = __nwlog_obj();
                  v155 = aBlock;
                  if (!os_log_type_enabled(v154, aBlock))
                  {
                    goto LABEL_268;
                  }

                  v163 = *(v14 + 32);
                  v164 = *(v36 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v163;
                  *&buf[22] = 2048;
                  v311 = v14;
                  *v312 = 2048;
                  *&v312[2] = v164;
                  v158 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                  goto LABEL_267;
                }

                v159 = __nw_create_backtrace_string();
                v154 = __nwlog_obj();
                v155 = aBlock;
                v160 = os_log_type_enabled(v154, aBlock);
                if (v159)
                {
                  if (v160)
                  {
                    v161 = *(v14 + 32);
                    v162 = *(v36 + 32);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v161;
                    *&buf[22] = 2048;
                    v311 = v14;
                    *v312 = 2048;
                    *&v312[2] = v162;
                    *&v312[10] = 2082;
                    *&v312[12] = v159;
                    _os_log_impl(&dword_181A37000, v154, v155, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v159);
                  v32 = v294;
                  goto LABEL_268;
                }

                v32 = v294;
                if (v160)
                {
                  v165 = *(v14 + 32);
                  v166 = *(v36 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v165;
                  *&buf[22] = 2048;
                  v311 = v14;
                  *v312 = 2048;
                  *&v312[2] = v166;
                  v158 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_267:
                  _os_log_impl(&dword_181A37000, v154, v155, v158, buf, 0x2Au);
                }
              }

LABEL_268:
              if (v153)
              {
                free(v153);
              }

              goto LABEL_270;
            }

            v114 = nw_parameters_copy_default_protocol_stack(*(v14 + 320));
            aBlock = 0;
            p_aBlock = &aBlock;
            v306 = 0x2000000000;
            LOBYTE(v307) = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v311 = __Block_byref_object_copy__42960;
            *v312 = __Block_byref_object_dispose__42961;
            *&v312[8] = 0;
            v312[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v298 = 0x40000000;
            v299 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
            v300 = &unk_1E6A32930;
            v301 = &aBlock;
            v302 = buf;
            v303 = v14;
            nw_protocol_stack_iterate_application_protocols(v114, type);
            if (*(*&buf[8] + 40))
            {
              v115 = v36;
              while (1)
              {
                v115 = *(v115 + 32);
                if (!v115)
                {
                  break;
                }

                if (nw_protocol_is_tls_over_stream(v115))
                {
                  v116 = *(*&buf[8] + 40);
                  v117 = nw_protocol_boringssl_copy_definition();
                  nw_parameters_set_protocol_instance(v116, v118, v115);
                  if (v117)
                  {
                    os_release(v117);
                  }

                  goto LABEL_239;
                }
              }

              __nwlog_obj();
              *v315 = 136446210;
              v316 = "nw_http1_stream_associate_with_connection";
              v123 = _os_log_send_and_compose_impl();
              v309 = OS_LOG_TYPE_ERROR;
              v296 = 0;
              if (!__nwlog_fault(v123, &v309, &v296))
              {
                goto LABEL_243;
              }

              if (v309 == OS_LOG_TYPE_FAULT)
              {
                v124 = __nwlog_obj();
                v125 = v309;
                if (os_log_type_enabled(v124, v309))
                {
                  *v315 = 136446210;
                  v316 = "nw_http1_stream_associate_with_connection";
                  v126 = "%{public}s tls should have been in the stack but could not find it";
LABEL_242:
                  _os_log_impl(&dword_181A37000, v124, v125, v126, v315, 0xCu);
                }
              }

              else if (v296 == 1)
              {
                v130 = __nw_create_backtrace_string();
                v124 = __nwlog_obj();
                v125 = v309;
                v131 = os_log_type_enabled(v124, v309);
                if (v130)
                {
                  if (v131)
                  {
                    *v315 = 136446466;
                    v316 = "nw_http1_stream_associate_with_connection";
                    v317 = 2082;
                    v318 = v130;
                    _os_log_impl(&dword_181A37000, v124, v125, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v315, 0x16u);
                  }

                  free(v130);
                  goto LABEL_243;
                }

                if (v131)
                {
                  *v315 = 136446210;
                  v316 = "nw_http1_stream_associate_with_connection";
                  v126 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                  goto LABEL_242;
                }
              }

              else
              {
                v124 = __nwlog_obj();
                v125 = v309;
                if (os_log_type_enabled(v124, v309))
                {
                  *v315 = 136446210;
                  v316 = "nw_http1_stream_associate_with_connection";
                  v126 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                  goto LABEL_242;
                }
              }

LABEL_243:
              if (v123)
              {
                free(v123);
              }

              v149 = 0;
              goto LABEL_246;
            }

            __nwlog_obj();
            *v315 = 136446210;
            v316 = "nw_http1_stream_associate_with_connection";
            v119 = _os_log_send_and_compose_impl();
            v309 = OS_LOG_TYPE_ERROR;
            v296 = 0;
            if (__nwlog_fault(v119, &v309, &v296))
            {
              if (v309 == OS_LOG_TYPE_FAULT)
              {
                v120 = __nwlog_obj();
                v121 = v309;
                if (os_log_type_enabled(v120, v309))
                {
                  *v315 = 136446210;
                  v316 = "nw_http1_stream_associate_with_connection";
                  v122 = "%{public}s unable to find tls options";
LABEL_236:
                  _os_log_impl(&dword_181A37000, v120, v121, v122, v315, 0xCu);
                }
              }

              else if (v296 == 1)
              {
                v128 = __nw_create_backtrace_string();
                v120 = __nwlog_obj();
                v121 = v309;
                v129 = os_log_type_enabled(v120, v309);
                if (v128)
                {
                  if (v129)
                  {
                    *v315 = 136446466;
                    v316 = "nw_http1_stream_associate_with_connection";
                    v317 = 2082;
                    v318 = v128;
                    _os_log_impl(&dword_181A37000, v120, v121, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v315, 0x16u);
                  }

                  free(v128);
                }

                else if (v129)
                {
                  *v315 = 136446210;
                  v316 = "nw_http1_stream_associate_with_connection";
                  v122 = "%{public}s unable to find tls options, no backtrace";
                  goto LABEL_236;
                }
              }

              else
              {
                v120 = __nwlog_obj();
                v121 = v309;
                if (os_log_type_enabled(v120, v309))
                {
                  *v315 = 136446210;
                  v316 = "nw_http1_stream_associate_with_connection";
                  v122 = "%{public}s unable to find tls options, backtrace limit exceeded";
                  goto LABEL_236;
                }
              }
            }

            if (v119)
            {
              free(v119);
            }

LABEL_239:
            v149 = 1;
LABEL_246:
            v32 = v294;
            _Block_object_dispose(buf, 8);
            if ((v312[16] & 1) != 0 && *&v312[8])
            {
              os_release(*&v312[8]);
            }

            _Block_object_dispose(&aBlock, 8);
            if (v114)
            {
              os_release(v114);
            }

            if (v149)
            {
              goto LABEL_252;
            }

LABEL_280:
            if ((*(v14 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v179 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v180 = *(v14 + 256);
                v181 = *(*(v14 + 248) + 372);
                if (v180)
                {
                  LODWORD(v180) = *(v180 + 860);
                }

                v182 = *(v14 + 424);
                *buf = 136448258;
                *&buf[4] = "nw_http1_start_new_connection_for_stream";
                *&buf[12] = 2082;
                *&buf[14] = v14 + 74;
                *&buf[22] = 2080;
                v311 = " ";
                *v312 = 1024;
                *&v312[2] = v181;
                *&v312[6] = 1024;
                *&v312[8] = v180;
                *&v312[12] = 1024;
                *&v312[14] = v182;
                *&v312[18] = 2048;
                *v313 = v36;
                *&v313[8] = 1024;
                *v314 = v182;
                *&v314[4] = 2048;
                *&v314[6] = v14;
                _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
              }
            }

            *(v14 + 428) |= 1u;
            v183 = nw_protocol_copy_info(v32);
            v184 = v183;
            if (v183)
            {
              object = _nw_array_copy_last_object(v183);
              v186 = object;
              if (object)
              {
                if (nw_protocol_metadata_is_tls(object))
                {
                  v186 = v186;
                  nw_http_connection_metadata_set_sec_metadata(*(v36 + 768), v186);
                  os_release(v186);
                  nw_protocol_connect(v32, v36);
                  goto LABEL_298;
                }

                v187 = 0;
LABEL_292:
                if (v36)
                {
                  v188 = v32;
                  v189 = v36;
                  goto LABEL_294;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_get_output_protocol";
                v256 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(aBlock) = 0;
                if (__nwlog_fault(v256, type, &aBlock))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v257 = __nwlog_obj();
                    v258 = type[0];
                    if (os_log_type_enabled(v257, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_output_protocol";
                      v259 = "%{public}s called with null connection";
LABEL_582:
                      _os_log_impl(&dword_181A37000, v257, v258, v259, buf, 0xCu);
                    }
                  }

                  else if (aBlock == 1)
                  {
                    v278 = __nw_create_backtrace_string();
                    v257 = __nwlog_obj();
                    v258 = type[0];
                    v279 = os_log_type_enabled(v257, type[0]);
                    if (v278)
                    {
                      if (v279)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_get_output_protocol";
                        *&buf[12] = 2082;
                        *&buf[14] = v278;
                        _os_log_impl(&dword_181A37000, v257, v258, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v278);
                      goto LABEL_583;
                    }

                    if (v279)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_output_protocol";
                      v259 = "%{public}s called with null connection, no backtrace";
                      goto LABEL_582;
                    }
                  }

                  else
                  {
                    v257 = __nwlog_obj();
                    v258 = type[0];
                    if (os_log_type_enabled(v257, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_output_protocol";
                      v259 = "%{public}s called with null connection, backtrace limit exceeded";
                      goto LABEL_582;
                    }
                  }
                }

LABEL_583:
                if (v256)
                {
                  free(v256);
                }

                v188 = v294;
                v189 = 0;
LABEL_294:
                nw_protocol_connect(v188, v189);
                if (v186)
                {
                  v190 = v187;
                }

                else
                {
                  v190 = 1;
                }

                if (v190)
                {
LABEL_299:
                  if (v184)
                  {
                    os_release(v184);
                  }

                  v191 = *(v14 + 428);
                  a2 = v292;
                  a1 = v293;
                  if ((v191 & 0x10) != 0)
                  {
                    *(v14 + 428) = v191 & 0xFFEF;
                    v192 = *(v7 + 352);
                    *(v7 + 352) = v192 - 1;
                    if (!v192)
                    {
                      __nwlog_obj();
                      v193 = *(v7 + 352);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_http1_connected";
                      *&buf[12] = 2082;
                      *&buf[14] = "http1->pending_output_handler_count";
                      *&buf[22] = 2048;
                      v311 = 1;
                      *v312 = 2048;
                      *&v312[2] = v193;
                      v194 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(aBlock) = 0;
                      if (__nwlog_fault(v194, type, &aBlock))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v195 = __nwlog_obj();
                          v196 = type[0];
                          if (os_log_type_enabled(v195, type[0]))
                          {
                            v197 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v311 = 1;
                            *v312 = 2048;
                            *&v312[2] = v197;
                            v198 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_314:
                            v204 = v195;
LABEL_315:
                            _os_log_impl(&dword_181A37000, v204, v196, v198, buf, 0x2Au);
                          }
                        }

                        else if (aBlock == 1)
                        {
                          v199 = __nw_create_backtrace_string();
                          v200 = __nwlog_obj();
                          v196 = type[0];
                          v201 = os_log_type_enabled(v200, type[0]);
                          if (v199)
                          {
                            if (v201)
                            {
                              v202 = *(v7 + 352);
                              *buf = 136447234;
                              *&buf[4] = "nw_protocol_http1_connected";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v311 = 1;
                              *v312 = 2048;
                              *&v312[2] = v202;
                              *&v312[10] = 2082;
                              *&v312[12] = v199;
                              _os_log_impl(&dword_181A37000, v200, v196, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v199);
                            goto LABEL_316;
                          }

                          if (v201)
                          {
                            v205 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v311 = 1;
                            *v312 = 2048;
                            *&v312[2] = v205;
                            v198 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                            v204 = v200;
                            goto LABEL_315;
                          }
                        }

                        else
                        {
                          v195 = __nwlog_obj();
                          v196 = type[0];
                          if (os_log_type_enabled(v195, type[0]))
                          {
                            v203 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v311 = 1;
                            *v312 = 2048;
                            *&v312[2] = v203;
                            v198 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_314;
                          }
                        }
                      }

LABEL_316:
                      if (v194)
                      {
                        free(v194);
                      }

                      *(v7 + 352) = 0;
                      a2 = v292;
                      a1 = v293;
                    }
                  }

LABEL_21:
                  v15 = a1->handle;
                  if (v15)
                  {
                    v16 = *(v15 + 6);
                    if (v16 != 2)
                    {
                      if (v16 != 3)
                      {
                        goto LABEL_458;
                      }

                      v17 = (v15 + 16);
                      goto LABEL_27;
                    }

                    v18 = *(v15 + 1);
                    if (v18)
                    {
                      v17 = (v18 + 256);
LABEL_27:
                      v19 = *v17;
                      if (*v17)
                      {
                        v20 = *(v19 + 488);
                        if (v20)
                        {
                          v21 = a2;
                          nw_protocol_connected(*(v20 + 48), a2);
                          a2 = v21;
                        }

                        if (*(v19 + 32) == a2)
                        {
                          if ((*(v19 + 158) & 1) == 0 && gLogDatapath == 1)
                          {
                            v210 = a2;
                            v211 = __nwlog_obj();
                            if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
                            {
                              v212 = *(v19 + 488);
                              v213 = *(*(v19 + 480) + 372);
                              v214 = *(v19 + 860);
                              if (v212)
                              {
                                LODWORD(v212) = *(v212 + 424);
                              }

                              identifier = v210->identifier;
                              *buf = 136447746;
                              *&buf[4] = "nw_protocol_http1_connected";
                              *&buf[12] = 2082;
                              *&buf[14] = v19 + 74;
                              *&buf[22] = 2080;
                              v311 = " ";
                              *v312 = 1024;
                              *&v312[2] = v213;
                              *&v312[6] = 1024;
                              *&v312[8] = v214;
                              *&v312[12] = 1024;
                              *&v312[14] = v212;
                              *&v312[18] = 2080;
                              *v313 = identifier;
                              _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connected protocol %s is our output_handler, forwarding", buf, 0x3Cu);
                            }
                          }

                          *(v19 + 872) |= 0x40u;
                          v28 = *(v19 + 488);
                          if (v28)
                          {
                            *(v28 + 428) |= 0x8000u;
                            v29 = *(v28 + 352);
                            v295[0] = MEMORY[0x1E69E9820];
                            v295[1] = 0x40000000;
                            v295[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke;
                            v295[3] = &__block_descriptor_tmp_87;
                            v295[4] = v28;
                            nw_http_transaction_metadata_set_event_handler(v29, v295);
                            if (*(v28 + 428))
                            {
                              nw_http_transaction_metadata_set_first_on_connection(*(v28 + 352));
                              nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v19 + 768));
                            }

                            nw_http_transaction_metadata_set_connection_metadata(*(v28 + 352), *(v19 + 768));
                            v30 = *(v19 + 488);
                            if (v30)
                            {
                              v31 = *(v30 + 48);
                            }

                            else
                            {
                              v31 = 0;
                            }

                            nw_protocol_connected(v31, v30);
                          }
                        }

                        else if ((*(v19 + 158) & 1) == 0 && gLogDatapath == 1)
                        {
                          v22 = a2;
                          v23 = __nwlog_obj();
                          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                          {
                            v24 = *(v19 + 488);
                            v25 = *(*(v19 + 480) + 372);
                            v26 = *(v19 + 860);
                            if (v24)
                            {
                              LODWORD(v24) = *(v24 + 424);
                            }

                            v27 = v22->identifier;
                            *buf = 136447746;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = v19 + 74;
                            *&buf[22] = 2080;
                            v311 = " ";
                            *v312 = 1024;
                            *&v312[2] = v25;
                            *&v312[6] = 1024;
                            *&v312[8] = v26;
                            *&v312[12] = 1024;
                            *&v312[14] = v24;
                            *&v312[18] = 2080;
                            *v313 = v27;
                            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connected protocol %s is not our output_handler, ignoring", buf, 0x3Cu);
                          }
                        }

                        return;
                      }

LABEL_458:
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_http1_connected";
                      v136 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(aBlock) = 0;
                      if (!__nwlog_fault(v136, type, &aBlock))
                      {
                        goto LABEL_472;
                      }

                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v137 = gLogObj;
                        v138 = type[0];
                        if (!os_log_type_enabled(gLogObj, type[0]))
                        {
                          goto LABEL_472;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_http1_connected";
                        v139 = "%{public}s called with null http1_connection";
                        goto LABEL_470;
                      }

                      if (aBlock != 1)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v137 = gLogObj;
                        v138 = type[0];
                        if (!os_log_type_enabled(gLogObj, type[0]))
                        {
                          goto LABEL_472;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_http1_connected";
                        v139 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                        goto LABEL_470;
                      }

                      v264 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v261 = gLogObj;
                      v262 = type[0];
                      v265 = os_log_type_enabled(gLogObj, type[0]);
                      if (v264)
                      {
                        if (v265)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_protocol_http1_connected";
                          *&buf[12] = 2082;
                          *&buf[14] = v264;
                          _os_log_impl(&dword_181A37000, v261, v262, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v264);
                        if (!v136)
                        {
                          return;
                        }

LABEL_473:
                        free(v136);
                        return;
                      }

                      if (v265)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_http1_connected";
                        v139 = "%{public}s called with null http1_connection, no backtrace";
LABEL_477:
                        v266 = v261;
                        v267 = v262;
                        goto LABEL_471;
                      }

                      goto LABEL_472;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_get_connection_for_protocol";
                    v140 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(aBlock) = 0;
                    if (!__nwlog_fault(v140, type, &aBlock))
                    {
                      goto LABEL_456;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v141 = __nwlog_obj();
                      v142 = type[0];
                      if (!os_log_type_enabled(v141, type[0]))
                      {
                        goto LABEL_456;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v143 = "%{public}s called with null handle->http1_stream";
                      goto LABEL_455;
                    }

                    if (aBlock != 1)
                    {
                      v141 = __nwlog_obj();
                      v142 = type[0];
                      if (!os_log_type_enabled(v141, type[0]))
                      {
                        goto LABEL_456;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v143 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
                      goto LABEL_455;
                    }

                    v220 = __nw_create_backtrace_string();
                    v141 = __nwlog_obj();
                    v142 = type[0];
                    v221 = os_log_type_enabled(v141, type[0]);
                    if (v220)
                    {
                      if (v221)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_get_connection_for_protocol";
                        *&buf[12] = 2082;
                        *&buf[14] = v220;
                        _os_log_impl(&dword_181A37000, v141, v142, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v220);
                      if (!v140)
                      {
                        goto LABEL_458;
                      }

LABEL_457:
                      free(v140);
                      goto LABEL_458;
                    }

                    if (v221)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v143 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_455:
                      _os_log_impl(&dword_181A37000, v141, v142, v143, buf, 0xCu);
                    }
                  }

                  else
                  {
                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_get_connection_for_protocol";
                    v140 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(aBlock) = 0;
                    if (!__nwlog_fault(v140, type, &aBlock))
                    {
                      goto LABEL_456;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v141 = __nwlog_obj();
                      v142 = type[0];
                      if (!os_log_type_enabled(v141, type[0]))
                      {
                        goto LABEL_456;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v143 = "%{public}s called with null handle";
                      goto LABEL_455;
                    }

                    if (aBlock != 1)
                    {
                      v141 = __nwlog_obj();
                      v142 = type[0];
                      if (!os_log_type_enabled(v141, type[0]))
                      {
                        goto LABEL_456;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v143 = "%{public}s called with null handle, backtrace limit exceeded";
                      goto LABEL_455;
                    }

                    v208 = __nw_create_backtrace_string();
                    v141 = __nwlog_obj();
                    v142 = type[0];
                    v209 = os_log_type_enabled(v141, type[0]);
                    if (!v208)
                    {
                      if (!v209)
                      {
                        goto LABEL_456;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v143 = "%{public}s called with null handle, no backtrace";
                      goto LABEL_455;
                    }

                    if (v209)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      *&buf[12] = 2082;
                      *&buf[14] = v208;
                      _os_log_impl(&dword_181A37000, v141, v142, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v208);
                  }

LABEL_456:
                  if (!v140)
                  {
                    goto LABEL_458;
                  }

                  goto LABEL_457;
                }

LABEL_298:
                os_release(v186);
                goto LABEL_299;
              }
            }

            else
            {
              v186 = 0;
            }

            v187 = 1;
            goto LABEL_292;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_associate_with_connection";
          v243 = _os_log_send_and_compose_impl();
          LOBYTE(aBlock) = 16;
          v315[0] = 0;
          if (__nwlog_fault(v243, &aBlock, v315))
          {
            if (aBlock == 17)
            {
              v244 = __nwlog_obj();
              v245 = aBlock;
              if (os_log_type_enabled(v244, aBlock))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v246 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_576:
                _os_log_impl(&dword_181A37000, v244, v245, v246, buf, 0xCu);
              }
            }

            else if (v315[0] == 1)
            {
              v276 = __nw_create_backtrace_string();
              v244 = __nwlog_obj();
              v245 = aBlock;
              v277 = os_log_type_enabled(v244, aBlock);
              if (v276)
              {
                if (v277)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v276;
                  _os_log_impl(&dword_181A37000, v244, v245, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v276);
                goto LABEL_577;
              }

              if (v277)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v246 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                goto LABEL_576;
              }
            }

            else
            {
              v244 = __nwlog_obj();
              v245 = aBlock;
              if (os_log_type_enabled(v244, aBlock))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v246 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                goto LABEL_576;
              }
            }
          }

LABEL_577:
          if (v243)
          {
            free(v243);
          }

          v32 = v294;
          goto LABEL_280;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_set_up_association";
        v239 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(aBlock) = 0;
        if (__nwlog_fault(v239, type, &aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v240 = __nwlog_obj();
            v241 = type[0];
            if (!os_log_type_enabled(v240, type[0]))
            {
              goto LABEL_570;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            v242 = "%{public}s called with null parameters";
LABEL_569:
            _os_log_impl(&dword_181A37000, v240, v241, v242, buf, 0xCu);
            goto LABEL_570;
          }

          if (aBlock != 1)
          {
            v240 = __nwlog_obj();
            v241 = type[0];
            if (!os_log_type_enabled(v240, type[0]))
            {
              goto LABEL_570;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            v242 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_569;
          }

          v274 = __nw_create_backtrace_string();
          v240 = __nwlog_obj();
          v241 = type[0];
          v275 = os_log_type_enabled(v240, type[0]);
          if (!v274)
          {
            if (!v275)
            {
              goto LABEL_570;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            v242 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_569;
          }

          if (v275)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            *&buf[12] = 2082;
            *&buf[14] = v274;
            _os_log_impl(&dword_181A37000, v240, v241, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v274);
        }

LABEL_570:
        if (v239)
        {
          free(v239);
        }

        v32 = v294;
        v75 = *(v36 + 512);
        if (v75)
        {
          goto LABEL_113;
        }

        goto LABEL_115;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v231 = _os_log_send_and_compose_impl();
      v315[0] = 16;
      v309 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v231, v315, &v309))
      {
        if (v315[0] == 17)
        {
          v232 = __nwlog_obj();
          v233 = v315[0];
          if (!os_log_type_enabled(v232, v315[0]))
          {
            goto LABEL_526;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v234 = "%{public}s called with null parameters";
          goto LABEL_525;
        }

        if (v309 != OS_LOG_TYPE_INFO)
        {
          v232 = __nwlog_obj();
          v233 = v315[0];
          if (!os_log_type_enabled(v232, v315[0]))
          {
            goto LABEL_526;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v234 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_525;
        }

        v270 = __nw_create_backtrace_string();
        v232 = __nwlog_obj();
        v233 = v315[0];
        v271 = os_log_type_enabled(v232, v315[0]);
        if (v270)
        {
          if (v271)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v270;
            _os_log_impl(&dword_181A37000, v232, v233, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v270);
          if (!v231)
          {
LABEL_528:
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v280 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(aBlock) = 0;
            if (!__nwlog_fault(v280, type, &aBlock))
            {
              goto LABEL_542;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v281 = __nwlog_obj();
              v282 = type[0];
              if (!os_log_type_enabled(v281, type[0]))
              {
                goto LABEL_542;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v283 = "%{public}s called with null http1_connection";
            }

            else if (aBlock == 1)
            {
              v284 = __nw_create_backtrace_string();
              v281 = __nwlog_obj();
              v282 = type[0];
              v285 = os_log_type_enabled(v281, type[0]);
              if (v284)
              {
                if (v285)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v284;
                  _os_log_impl(&dword_181A37000, v281, v282, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v284);
LABEL_542:
                if (v280)
                {
                  free(v280);
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v286 = _os_log_send_and_compose_impl();
                LOBYTE(aBlock) = 16;
                v315[0] = 0;
                if (!__nwlog_fault(v286, &aBlock, v315))
                {
                  goto LABEL_558;
                }

                if (aBlock == 17)
                {
                  v287 = __nwlog_obj();
                  v288 = aBlock;
                  if (os_log_type_enabled(v287, aBlock))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v289 = "%{public}s called with null http1_connection";
LABEL_557:
                    _os_log_impl(&dword_181A37000, v287, v288, v289, buf, 0xCu);
                  }
                }

                else if (v315[0] == 1)
                {
                  v290 = __nw_create_backtrace_string();
                  v287 = __nwlog_obj();
                  v288 = aBlock;
                  v291 = os_log_type_enabled(v287, aBlock);
                  if (v290)
                  {
                    if (v291)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v290;
                      _os_log_impl(&dword_181A37000, v287, v288, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v290);
                    goto LABEL_558;
                  }

                  if (v291)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v289 = "%{public}s called with null http1_connection, no backtrace";
                    goto LABEL_557;
                  }
                }

                else
                {
                  v287 = __nwlog_obj();
                  v288 = aBlock;
                  if (os_log_type_enabled(v287, aBlock))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v289 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                    goto LABEL_557;
                  }
                }

LABEL_558:
                if (v286)
                {
                  free(v286);
                }

                v36 = 0;
                goto LABEL_280;
              }

              if (!v285)
              {
                goto LABEL_542;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v283 = "%{public}s called with null http1_connection, no backtrace";
            }

            else
            {
              v281 = __nwlog_obj();
              v282 = type[0];
              if (!os_log_type_enabled(v281, type[0]))
              {
                goto LABEL_542;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v283 = "%{public}s called with null http1_connection, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v281, v282, v283, buf, 0xCu);
            goto LABEL_542;
          }

LABEL_527:
          free(v231);
          goto LABEL_528;
        }

        if (v271)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v234 = "%{public}s called with null parameters, no backtrace";
LABEL_525:
          _os_log_impl(&dword_181A37000, v232, v233, v234, buf, 0xCu);
        }
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v231 = _os_log_send_and_compose_impl();
      v315[0] = 16;
      v309 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v231, v315, &v309))
      {
        goto LABEL_526;
      }

      if (v315[0] == 17)
      {
        v232 = __nwlog_obj();
        v233 = v315[0];
        if (!os_log_type_enabled(v232, v315[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v234 = "%{public}s called with null endpoint";
        goto LABEL_525;
      }

      if (v309 != OS_LOG_TYPE_INFO)
      {
        v232 = __nwlog_obj();
        v233 = v315[0];
        if (!os_log_type_enabled(v232, v315[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v234 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_525;
      }

      v268 = __nw_create_backtrace_string();
      v232 = __nwlog_obj();
      v233 = v315[0];
      v269 = os_log_type_enabled(v232, v315[0]);
      if (!v268)
      {
        if (!v269)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v234 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_525;
      }

      if (v269)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_create";
        *&buf[12] = 2082;
        *&buf[14] = v268;
        _os_log_impl(&dword_181A37000, v232, v233, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v268);
    }

LABEL_526:
    if (!v231)
    {
      goto LABEL_528;
    }

    goto LABEL_527;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_connected";
  v136 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(aBlock) = 0;
  if (!__nwlog_fault(v136, type, &aBlock))
  {
    goto LABEL_472;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v137 = __nwlog_obj();
    v138 = type[0];
    if (!os_log_type_enabled(v137, type[0]))
    {
      goto LABEL_472;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connected";
    v139 = "%{public}s called with null other_protocol";
    goto LABEL_470;
  }

  if (aBlock != 1)
  {
    v137 = __nwlog_obj();
    v138 = type[0];
    if (!os_log_type_enabled(v137, type[0]))
    {
      goto LABEL_472;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connected";
    v139 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_470;
  }

  v206 = __nw_create_backtrace_string();
  v137 = __nwlog_obj();
  v138 = type[0];
  v207 = os_log_type_enabled(v137, type[0]);
  if (!v206)
  {
    if (!v207)
    {
      goto LABEL_472;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connected";
    v139 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_470;
  }

  if (v207)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_connected";
    *&buf[12] = 2082;
    *&buf[14] = v206;
    _os_log_impl(&dword_181A37000, v137, v138, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v206);
  if (v136)
  {
    goto LABEL_473;
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke(uint64_t a1, void *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v12 = outbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v14 = *(a1 + 32);
      v15 = v14 + 74;
      v16 = *(v14 + 256);
      v17 = *(*(v14 + 248) + 372);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 860);
      }

      v18 = *(v14 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v15;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v17;
      v72 = 1024;
      v73 = v16;
      v74 = 1024;
      v75 = v18;
      v76 = 2048;
      v77 = v12;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished sending {body_bytes=%llu}";
      goto LABEL_36;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v41 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_2;
      v63[3] = &__block_descriptor_tmp_80_44020;
      v63[4] = *(a1 + 32);
      v42 = v21;
      v43 = v63;
      _nw_http_request_access_method(v42, v43);
    }

    if (v41)
    {
      v25 = v41;
      status_code = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      v46 = v45 + 74;
      v47 = *(v45 + 256);
      v48 = *(*(v45 + 248) + 372);
      if (v47)
      {
        LODWORD(v47) = *(v47 + 860);
      }

      v49 = *(v45 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v46;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v48;
      v72 = 1024;
      v73 = v47;
      v74 = 1024;
      v75 = v49;
      v76 = 1024;
      LODWORD(v77) = status_code;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> sending response header {status=%hu}";
      goto LABEL_47;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          return;
        }

        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 0x40000000;
        v58 = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_83;
        v59 = &__block_descriptor_tmp_84;
        v5 = *(a1 + 32);
        v60 = a2;
        v61 = v5;
        v6 = nw_http_transaction_metadata_get_outbound_message(a2);
        v7 = v6;
        if (v6)
        {
          v8 = nw_http_metadata_copy_request(v6);
          v9 = nw_http_metadata_copy_response(v7);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_57;
          }

          if (v8)
          {
            if (v9)
            {
              goto LABEL_58;
            }

LABEL_56:
            v9 = nw_http_metadata_copy_response(inbound_message);
LABEL_57:
            if (!v9)
            {
              v52 = 0;
              if (!v8)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }

LABEL_58:
            v9 = v9;
            v52 = _nw_http_response_get_status_code(v9);

            if (!v8)
            {
LABEL_72:
              v58(v57, "", v52);
              v53 = 0;
              if (!inbound_message)
              {
LABEL_63:
                if (v7)
                {
                  os_release(v7);
                }

                if (v9)
                {
                  os_release(v9);
                }

                if (v53)
                {
                  v50 = v53;
                  goto LABEL_69;
                }

                return;
              }

LABEL_62:
              os_release(inbound_message);
              goto LABEL_63;
            }

LABEL_61:
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 0x40000000;
            v55[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_85;
            v55[3] = &unk_1E6A329B8;
            v55[4] = v57;
            v56 = v52;
            v53 = v8;
            v54 = v55;
            _nw_http_request_access_method(v53, v54);

            if (!inbound_message)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v51 = nw_http_transaction_metadata_get_inbound_message(a2);
          v9 = 0;
          if (!v51)
          {
            v52 = 0;
            inbound_message = 0;
            goto LABEL_72;
          }

          inbound_message = v51;
        }

        v8 = nw_http_metadata_copy_request(inbound_message);
        if (v9)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v35 = inbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v36 = *(a1 + 32);
      v37 = v36 + 74;
      v38 = *(v36 + 256);
      v39 = *(*(v36 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v36 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v37;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v39;
      v72 = 1024;
      v73 = v38;
      v74 = 1024;
      v75 = v40;
      v76 = 2048;
      v77 = v35;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished receiving {body_bytes=%llu}";
LABEL_36:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v19, buf, 0x3Cu);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v22 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_81;
      v62[3] = &__block_descriptor_tmp_82;
      v62[4] = *(a1 + 32);
      v23 = v21;
      v24 = v62;
      _nw_http_request_access_method(v23, v24);
    }

    if (v22)
    {
      v25 = v22;
      v26 = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v28 = *(a1 + 32);
      v29 = v28 + 74;
      v30 = *(v28 + 256);
      v31 = *(*(v28 + 248) + 372);
      if (v30)
      {
        LODWORD(v30) = *(v30 + 860);
      }

      v32 = *(v28 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v29;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v31;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v32;
      v76 = 1024;
      LODWORD(v77) = v26;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> receiving response header {status=%hu}";
LABEL_47:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, v33, buf, 0x38u);
LABEL_48:
      os_release(v25);
    }
  }

  if (v21)
  {
    os_release(v21);
  }

  if (outbound_message)
  {
    v50 = outbound_message;
LABEL_69:
    os_release(v50);
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connected_block_invoke_2";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> sending request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_81(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connected_block_invoke";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> receiving request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_83(uint64_t a1, uint64_t a2, int a3)
{
  v67 = *MEMORY[0x1E69E9840];
  start_reason = nw_http_transaction_metadata_get_start_reason(*(a1 + 32));
  start_time = nw_http_transaction_metadata_get_start_time(*(a1 + 32));
  end_time = nw_http_transaction_metadata_get_end_time(*(a1 + 32));
  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(*(a1 + 32));
  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(*(a1 + 32));
  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(*(a1 + 32));
  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(*(a1 + 32));
  outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(*(a1 + 32));
  inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(*(a1 + 32));
  if ((*(*(a1 + 40) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v12 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a3;
      v13 = *(a1 + 40);
      v14 = *(v13 + 256);
      if (v14)
      {
        v30 = *(v14 + 860);
      }

      else
      {
        v30 = 0;
      }

      if ((start_reason - 1) > 3)
      {
        v15 = "initial";
      }

      else
      {
        v15 = off_1E6A3AE00[start_reason - 1];
      }

      v29 = v15;
      v27 = *(*(v13 + 248) + 372);
      v28 = *(v13 + 424);
      v16 = -1;
      if (start_time && end_time)
      {
        v17 = nw_delta_nanos(start_time, end_time);
        if (v17 > 0xF423FFFFFFFFFLL)
        {
          v16 = -1;
        }

        else
        {
          v16 = v17 / 0xF4240;
        }
      }

      v18 = -1;
      if (start_time && outbound_message_start_time)
      {
        v19 = nw_delta_nanos(start_time, outbound_message_start_time);
        if (v19 > 0xF423FFFFFFFFFLL)
        {
          v18 = -1;
        }

        else
        {
          v18 = v19 / 0xF4240;
        }
      }

      v20 = -1;
      if (outbound_message_start_time && outbound_message_end_time)
      {
        v21 = nw_delta_nanos(outbound_message_start_time, outbound_message_end_time);
        if (v21 > 0xF423FFFFFFFFFLL)
        {
          v20 = -1;
        }

        else
        {
          v20 = v21 / 0xF4240;
        }
      }

      v22 = v13 + 74;
      v23 = -1;
      if (start_time && inbound_message_start_time)
      {
        v24 = nw_delta_nanos(start_time, inbound_message_start_time);
        if (v24 > 0xF423FFFFFFFFFLL)
        {
          v23 = -1;
        }

        else
        {
          v23 = v24 / 0xF4240;
        }
      }

      LODWORD(v25) = -1;
      if (inbound_message_start_time && inbound_message_end_time)
      {
        v26 = nw_delta_nanos(inbound_message_start_time, inbound_message_end_time);
        v25 = v26 / 0xF4240;
        if (v26 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v25) = -1;
        }
      }

      *buf = 136450050;
      v36 = "nw_protocol_http1_connected_block_invoke";
      v37 = 2082;
      v38 = v22;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v30;
      v45 = 1024;
      v46 = v28;
      v47 = 2080;
      v48 = v29;
      v49 = 1024;
      v50 = v16;
      v51 = 2082;
      v52 = a2;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v18;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v25;
      v63 = 2048;
      v64 = outbound_body_size;
      v65 = 2048;
      v66 = inbound_body_size;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> transaction summary {start_reason=%s, duration_ms=%d, request_method=%{public}s, response_status=%hu, outbound_start_ms=%d, outbound_duration_ms=%d, inbound_start_ms=%d, inbound_duration_ms=%d, outbound_body_bytes=%llu, inbound_body_bytes=%llu}", buf, 0x7Eu);
    }
  }
}

uint64_t nw_protocol_http1_connect(nw_protocol *a1, nw_protocol *a2, __n128 a3)
{
  v934 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v242 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v242, type, aBlock))
    {
      goto LABEL_1007;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v243 = __nwlog_obj();
      v244 = type[0];
      if (!os_log_type_enabled(v243, type[0]))
      {
        goto LABEL_1007;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v245 = "%{public}s called with null protocol";
    }

    else
    {
      if (aBlock[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v243 = __nwlog_obj();
        v244 = type[0];
        v282 = os_log_type_enabled(v243, type[0]);
        if (!backtrace_string)
        {
          if (!v282)
          {
            goto LABEL_1007;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v245 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_1006;
        }

        if (v282)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v243, v244, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_1007;
      }

      v243 = __nwlog_obj();
      v244 = type[0];
      if (!os_log_type_enabled(v243, type[0]))
      {
        goto LABEL_1007;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v245 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_1006:
    _os_log_impl(&dword_181A37000, v243, v244, v245, buf, 0xCu);
    goto LABEL_1007;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v242 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v242, type, aBlock))
    {
      goto LABEL_1007;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v243 = __nwlog_obj();
      v244 = type[0];
      if (!os_log_type_enabled(v243, type[0]))
      {
        goto LABEL_1007;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v245 = "%{public}s called with null handle";
    }

    else
    {
      if (aBlock[0] == 1)
      {
        v283 = __nw_create_backtrace_string();
        v243 = __nwlog_obj();
        v244 = type[0];
        v284 = os_log_type_enabled(v243, type[0]);
        if (!v283)
        {
          if (!v284)
          {
            goto LABEL_1007;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v245 = "%{public}s called with null handle, no backtrace";
          goto LABEL_1006;
        }

        if (v284)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v283;
          _os_log_impl(&dword_181A37000, v243, v244, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v283);
        if (!v242)
        {
LABEL_1009:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_connect";
          v250 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v250, type, aBlock))
          {
            goto LABEL_1040;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v251 = gLogObj;
            v252 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_1040;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_connect";
            v253 = "%{public}s called with null http1";
          }

          else
          {
            if (aBlock[0] == 1)
            {
              v614 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v615 = gLogObj;
              v616 = type[0];
              v617 = os_log_type_enabled(gLogObj, type[0]);
              if (v614)
              {
                if (v617)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_http1_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v614;
                  v618 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_1034:
                  _os_log_impl(&dword_181A37000, v615, v616, v618, buf, 0x16u);
                }

LABEL_1035:
                free(v614);
                goto LABEL_1040;
              }

              if (!v617)
              {
                goto LABEL_1040;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_connect";
              v253 = "%{public}s called with null http1, no backtrace";
LABEL_1045:
              v620 = v615;
              v621 = v616;
              goto LABEL_1039;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v251 = gLogObj;
            v252 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_1040;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_connect";
            v253 = "%{public}s called with null http1, backtrace limit exceeded";
          }

LABEL_1038:
          v620 = v251;
          v621 = v252;
LABEL_1039:
          _os_log_impl(&dword_181A37000, v620, v621, v253, buf, 0xCu);
          goto LABEL_1040;
        }

LABEL_1008:
        free(v242);
        goto LABEL_1009;
      }

      v243 = __nwlog_obj();
      v244 = type[0];
      if (!os_log_type_enabled(v243, type[0]))
      {
        goto LABEL_1007;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v245 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    goto LABEL_1006;
  }

  v4 = handle[6];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_1009;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      handle = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v242 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (__nwlog_fault(v242, type, aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v243 = __nwlog_obj();
        v244 = type[0];
        if (!os_log_type_enabled(v243, type[0]))
        {
          goto LABEL_1007;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v245 = "%{public}s called with null handle->http1_connection";
        goto LABEL_1006;
      }

      if (aBlock[0] != 1)
      {
        v243 = __nwlog_obj();
        v244 = type[0];
        if (!os_log_type_enabled(v243, type[0]))
        {
          goto LABEL_1007;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v245 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_1006;
      }

      v422 = __nw_create_backtrace_string();
      v243 = __nwlog_obj();
      v244 = type[0];
      v425 = os_log_type_enabled(v243, type[0]);
      if (!v422)
      {
        if (!v425)
        {
          goto LABEL_1007;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v245 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_1006;
      }

      if (v425)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v422;
        v424 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_688;
      }

      goto LABEL_689;
    }

LABEL_1007:
    if (!v242)
    {
      goto LABEL_1009;
    }

    goto LABEL_1008;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v242 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v242, type, aBlock))
    {
      goto LABEL_1007;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (aBlock[0] != 1)
      {
        v243 = __nwlog_obj();
        v244 = type[0];
        if (!os_log_type_enabled(v243, type[0]))
        {
          goto LABEL_1007;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v245 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_1006;
      }

      v422 = __nw_create_backtrace_string();
      v243 = __nwlog_obj();
      v244 = type[0];
      v423 = os_log_type_enabled(v243, type[0]);
      if (!v422)
      {
        if (!v423)
        {
          goto LABEL_1007;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v245 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_1006;
      }

      if (v423)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v422;
        v424 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_688:
        _os_log_impl(&dword_181A37000, v243, v244, v424, buf, 0x16u);
      }

LABEL_689:
      free(v422);
      if (!v242)
      {
        goto LABEL_1009;
      }

      goto LABEL_1008;
    }

    v243 = __nwlog_obj();
    v244 = type[0];
    if (!os_log_type_enabled(v243, type[0]))
    {
      goto LABEL_1007;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v245 = "%{public}s called with null handle->http1_stream";
    goto LABEL_1006;
  }

  handle = (v6 + 248);
LABEL_10:
  v7 = *handle;
  if (!*handle)
  {
    goto LABEL_1009;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connect";
    v250 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v250, type, aBlock))
    {
      goto LABEL_1040;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v251 = __nwlog_obj();
      v252 = type[0];
      if (!os_log_type_enabled(v251, type[0]))
      {
        goto LABEL_1040;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_connect";
      v253 = "%{public}s called with null other_protocol";
    }

    else if (aBlock[0] == 1)
    {
      v291 = __nw_create_backtrace_string();
      v251 = __nwlog_obj();
      v252 = type[0];
      v292 = os_log_type_enabled(v251, type[0]);
      if (v291)
      {
        if (v292)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_connect";
          *&buf[12] = 2082;
          *&buf[14] = v291;
          _os_log_impl(&dword_181A37000, v251, v252, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v291);
        goto LABEL_1040;
      }

      if (!v292)
      {
        goto LABEL_1040;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_connect";
      v253 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v251 = __nwlog_obj();
      v252 = type[0];
      if (!os_log_type_enabled(v251, type[0]))
      {
        goto LABEL_1040;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_connect";
      v253 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_1038;
  }

  v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v258 = a1;
    v260 = __nwlog_obj();
    v261 = os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG);
    v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v262 = v261;
    a1 = v258;
    if (v262)
    {
      v263 = *(v7 + 372);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http1_connect";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 74;
      *&buf[22] = 2080;
      v932 = " ";
      *v933 = 1024;
      *&v933[2] = v263;
      *&v933[6] = 2048;
      *&v933[8] = a2;
      _os_log_impl(&dword_181A37000, v260, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called by protocol %p", buf, 0x30u);
      v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      a1 = v258;
    }
  }

  v9 = a1->handle;
  if (!v9)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_stream_for_protocol";
    v254 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v254, type, aBlock))
    {
      goto LABEL_1024;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v255 = __nwlog_obj();
      v256 = type[0];
      if (!os_log_type_enabled(v255, type[0]))
      {
        goto LABEL_1024;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v257 = "%{public}s called with null handle";
      goto LABEL_1023;
    }

    if (aBlock[0] != 1)
    {
      v255 = __nwlog_obj();
      v256 = type[0];
      if (!os_log_type_enabled(v255, type[0]))
      {
        goto LABEL_1024;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v257 = "%{public}s called with null handle, backtrace limit exceeded";
      goto LABEL_1023;
    }

    v293 = __nw_create_backtrace_string();
    v255 = __nwlog_obj();
    v256 = type[0];
    v294 = os_log_type_enabled(v255, type[0]);
    if (!v293)
    {
      if (!v294)
      {
        goto LABEL_1024;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v257 = "%{public}s called with null handle, no backtrace";
      goto LABEL_1023;
    }

    if (v294)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v293;
      _os_log_impl(&dword_181A37000, v255, v256, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v293);
LABEL_1024:
    if (!v254)
    {
      goto LABEL_1026;
    }

    goto LABEL_1025;
  }

  v10 = *(v9 + 6);
  if (v10 != 2)
  {
    if (v10 != 3)
    {
      goto LABEL_1026;
    }

    v11 = *(v9 + 2);
    if (v11)
    {
      v12 = (v11 + 488);
      goto LABEL_20;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_stream_for_protocol";
    v254 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v254, type, aBlock))
    {
      goto LABEL_1024;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v255 = __nwlog_obj();
      v256 = type[0];
      if (!os_log_type_enabled(v255, type[0]))
      {
        goto LABEL_1024;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v257 = "%{public}s called with null handle->http1_connection";
      goto LABEL_1023;
    }

    if (aBlock[0] != 1)
    {
      v255 = __nwlog_obj();
      v256 = type[0];
      if (!os_log_type_enabled(v255, type[0]))
      {
        goto LABEL_1024;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v257 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_1023;
    }

    v426 = __nw_create_backtrace_string();
    v255 = __nwlog_obj();
    v256 = type[0];
    v427 = os_log_type_enabled(v255, type[0]);
    if (v426)
    {
      if (v427)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v426;
        _os_log_impl(&dword_181A37000, v255, v256, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v426);
      if (!v254)
      {
        goto LABEL_1026;
      }

LABEL_1025:
      free(v254);
      goto LABEL_1026;
    }

    if (v427)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v257 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_1023:
      _os_log_impl(&dword_181A37000, v255, v256, v257, buf, 0xCu);
      goto LABEL_1024;
    }

    goto LABEL_1024;
  }

  v12 = (v9 + 8);
LABEL_20:
  v13 = *v12;
  if (*v12)
  {
    if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v285 = __nwlog_obj();
      v286 = os_log_type_enabled(v285, OS_LOG_TYPE_DEBUG);
      v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      if (v286)
      {
        v287 = *(v13 + 256);
        v288 = *(*(v13 + 248) + 372);
        if (v287)
        {
          LODWORD(v287) = *(v287 + 860);
        }

        v289 = *(v13 + 424);
        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_connect";
        *&buf[12] = 2082;
        *&buf[14] = v13 + 74;
        *&buf[22] = 2080;
        v932 = " ";
        *v933 = 1024;
        *&v933[2] = v288;
        *&v933[6] = 1024;
        *&v933[8] = v287;
        *&v933[12] = 1024;
        *&v933[14] = v289;
        *&v933[18] = 2048;
        *&v933[20] = v13;
        _os_log_impl(&dword_181A37000, v285, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream %p", buf, 0x3Cu);
        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      }
    }

    v14 = *(v13 + 428);
    if ((v14 & 0x2000) != 0)
    {
      if (*(v13 + 158))
      {
        return 1;
      }

      if (gLogDatapath != 1)
      {
        return 1;
      }

      v16 = __nwlog_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v17 = *(v13 + 256);
      v18 = *(*(v13 + 248) + 372);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 860);
      }

      v19 = *(v13 + 424);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_http1_connect";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 74;
      *&buf[22] = 2080;
      v932 = " ";
      *v933 = 1024;
      *&v933[2] = v18;
      *&v933[6] = 1024;
      *&v933[8] = v17;
      *&v933[12] = 1024;
      *&v933[14] = v19;
      v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> ignoring duplicate call to connect";
LABEL_42:
      v24 = v16;
      v25 = 50;
LABEL_43:
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, v20, buf, v25);
      return 1;
    }

    if ((v14 & 0x10) == 0)
    {
      if ((v14 & 8) != 0)
      {
        if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v464 = __nwlog_obj();
          if (os_log_type_enabled(v464, OS_LOG_TYPE_DEBUG))
          {
            v465 = *(v13 + 256);
            v466 = *(*(v13 + 248) + 372);
            if (v465)
            {
              LODWORD(v465) = *(v465 + 860);
            }

            v467 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http1_connect";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v932 = " ";
            *v933 = 1024;
            *&v933[2] = v466;
            *&v933[6] = 1024;
            *&v933[8] = v465;
            *&v933[12] = 1024;
            *&v933[14] = v467;
            _os_log_impl(&dword_181A37000, v464, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> new flow stream already attached, sending connected immediately", buf, 0x32u);
          }
        }

        *(v13 + 428) = *(v13 + 428) & 0x7FF7 | 0x8000;
        v26 = *(v13 + 352);
        v909[0] = MEMORY[0x1E69E9820];
        v909[1] = 0x40000000;
        v909[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke;
        v909[3] = &__block_descriptor_tmp_31_44027;
        v909[4] = v13;
        nw_http_transaction_metadata_set_event_handler(v26, v909);
        v27 = *(v13 + 256);
        if ((*(v13 + 428) & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_47:
        nw_http_transaction_metadata_set_first_on_connection(*(v13 + 352));
        nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v27 + 768));
LABEL_48:
        nw_http_transaction_metadata_set_connection_metadata(*(v13 + 352), *(v27 + 768));
        nw_protocol_connected(*(v13 + 48), v13);
        return 1;
      }

      v15 = *(v13 + 256);
      if (v15)
      {
        if ((*(v13 + 158) & 1) != 0 || gLogDatapath != 1)
        {
          goto LABEL_29;
        }

        v468 = __nwlog_obj();
        v469 = os_log_type_enabled(v468, OS_LOG_TYPE_DEBUG);
        v15 = *(v13 + 256);
        if (v469)
        {
          v470 = *(*(v13 + 248) + 372);
          if (v15)
          {
            v471 = *(v15 + 860);
          }

          else
          {
            v471 = 0;
          }

          v736 = *(v13 + 424);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_http1_connect";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 74;
          *&buf[22] = 2080;
          v932 = " ";
          *v933 = 1024;
          *&v933[2] = v470;
          *&v933[6] = 1024;
          *&v933[8] = v471;
          *&v933[12] = 1024;
          *&v933[14] = v736;
          _os_log_impl(&dword_181A37000, v468, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already associated with connection, forwarding connect", buf, 0x32u);
          v15 = *(v13 + 256);
        }

        if (v15)
        {
LABEL_29:
          nw_protocol_connect(*(v15 + 32), v15);
        }

        else
        {
          nw_protocol_connect(0, 0);
        }

        return 1;
      }

      v33 = *(v7 + 208);
      if (v33)
      {
        v27 = 0;
        a3.n128_u64[0] = 136447234;
        do
        {
          v34 = v33;
          v33 = *(v33 + 592);
          if ((*(v34 + 872) & 0x800) == 0)
          {
            if ((*(v7 + 158) & 1) != 0 || BYTE1(v8[82].isa) != 1)
            {
              v27 = v34;
            }

            else
            {
              v905 = a3;
              v35 = __nwlog_obj();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v36 = *(v7 + 372);
                *buf = v905.n128_u32[0];
                *&buf[4] = "nw_http1_get_next_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 74;
                *&buf[22] = 2080;
                v932 = " ";
                *v933 = 1024;
                *&v933[2] = v36;
                *&v933[6] = 2048;
                *&v933[8] = v34;
                _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> found idle connection connection %p", buf, 0x30u);
                a3 = v905;
                v27 = v34;
                v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              }

              else
              {
                v27 = v34;
                v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                a3 = v905;
              }
            }
          }
        }

        while (v33);
        if (v27)
        {
          v906 = a3.n128_u32[0];
          if ((*(v27 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
          {
            v730 = v8;
            v731 = __nwlog_obj();
            v732 = os_log_type_enabled(v731, OS_LOG_TYPE_DEBUG);
            v8 = v730;
            if (v732)
            {
              v733 = *(v27 + 488);
              v734 = *(*(v27 + 480) + 372);
              v735 = *(v27 + 860);
              if (v733)
              {
                LODWORD(v733) = *(v733 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2082;
              *&buf[14] = v27 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v734;
              *&v933[6] = 1024;
              *&v933[8] = v735;
              *&v933[12] = 1024;
              *&v933[14] = v733;
              *&v933[18] = 2048;
              *&v933[20] = v27;
              _os_log_impl(&dword_181A37000, v731, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
              v8 = v730;
            }
          }

          if ((*(v27 + 874) & 8) == 0)
          {
            __nwlog_obj();
            *buf = 136446466;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2048;
            *&buf[14] = v27;
            v41 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (!__nwlog_fault(v41, type, aBlock))
            {
              goto LABEL_381;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v42 = __nwlog_obj();
              v43 = type[0];
              if (!os_log_type_enabled(v42, type[0]))
              {
                goto LABEL_381;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              v44 = "%{public}s connection %p not in idle list, cannot remove";
            }

            else if (aBlock[0] == 1)
            {
              v143 = __nw_create_backtrace_string();
              v42 = __nwlog_obj();
              v43 = type[0];
              v144 = os_log_type_enabled(v42, type[0]);
              if (v143)
              {
                if (v144)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2082;
                  v932 = v143;
                  _os_log_impl(&dword_181A37000, v42, v43, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v143);
                goto LABEL_381;
              }

              if (!v144)
              {
LABEL_381:
                if (v41)
                {
                  free(v41);
                }

                goto LABEL_541;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              v44 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
            }

            else
            {
              v42 = __nwlog_obj();
              v43 = type[0];
              if (!os_log_type_enabled(v42, type[0]))
              {
                goto LABEL_381;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              v44 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0x16u);
            goto LABEL_381;
          }

          v125 = *(v27 + 592);
          v126 = *(v27 + 600);
          v127 = (v7 + 216);
          if (v125)
          {
            v127 = (v125 + 600);
          }

          *v127 = v126;
          *v126 = v125;
          *(v27 + 592) = 0u;
          v128 = *(v7 + 340);
          *(v7 + 340) = v128 - 1;
          if (v128)
          {
LABEL_535:
            *(v27 + 874) &= ~8u;
            if ((*(v27 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
            {
              v737 = v8;
              v738 = __nwlog_obj();
              v739 = os_log_type_enabled(v738, OS_LOG_TYPE_DEBUG);
              v8 = v737;
              if (v739)
              {
                v740 = *(v27 + 488);
                v741 = *(*(v27 + 480) + 372);
                v742 = *(v27 + 860);
                if (v740)
                {
                  LODWORD(v740) = *(v740 + 424);
                }

                v743 = *(v7 + 340);
                *buf = 136448002;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = v27 + 74;
                *&buf[22] = 2080;
                v932 = " ";
                *v933 = 1024;
                *&v933[2] = v741;
                *&v933[6] = 1024;
                *&v933[8] = v742;
                *&v933[12] = 1024;
                *&v933[14] = v740;
                *&v933[18] = 2048;
                *&v933[20] = v27;
                *&v933[28] = 1024;
                *&v933[30] = v743;
                _os_log_impl(&dword_181A37000, v738, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
                v8 = v737;
              }
            }

            if (*(v27 + 784))
            {
              if ((*(v27 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
              {
                v746 = __nwlog_obj();
                if (os_log_type_enabled(v746, OS_LOG_TYPE_DEBUG))
                {
                  v747 = *(v27 + 488);
                  v748 = *(*(v27 + 480) + 372);
                  v749 = *(v27 + 860);
                  if (v747)
                  {
                    LODWORD(v747) = *(v747 + 424);
                  }

                  *buf = 136447746;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v27 + 74;
                  *&buf[22] = 2080;
                  v932 = " ";
                  *v933 = 1024;
                  *&v933[2] = v748;
                  *&v933[6] = 1024;
                  *&v933[8] = v749;
                  *&v933[12] = 1024;
                  *&v933[14] = v747;
                  *&v933[18] = 2048;
                  *&v933[20] = v27;
                  _os_log_impl(&dword_181A37000, v746, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
                }
              }

              nw_queue_cancel_source(*(v27 + 784), v15);
              *(v27 + 784) = 0;
            }

LABEL_541:
            if (*(v13 + 248))
            {
              if (*(v27 + 488))
              {
                __nwlog_obj();
                v349 = *(v27 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v27;
                *&buf[22] = 2048;
                v932 = v349;
                v350 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                aBlock[0] = 0;
                if (!__nwlog_fault(v350, type, aBlock))
                {
                  goto LABEL_576;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v351 = __nwlog_obj();
                  v352 = type[0];
                  if (!os_log_type_enabled(v351, type[0]))
                  {
                    goto LABEL_576;
                  }

                  v353 = *(v27 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v932 = v353;
                  v354 = "%{public}s Connection %p already has a stream (%p)";
LABEL_574:
                  v374 = v351;
                  v375 = v352;
                  v376 = 32;
LABEL_575:
                  _os_log_impl(&dword_181A37000, v374, v375, v354, buf, v376);
                  goto LABEL_576;
                }

                if (aBlock[0] != 1)
                {
                  v351 = __nwlog_obj();
                  v352 = type[0];
                  if (!os_log_type_enabled(v351, type[0]))
                  {
                    goto LABEL_576;
                  }

                  v364 = *(v27 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v932 = v364;
                  v354 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                  goto LABEL_574;
                }

                v361 = __nw_create_backtrace_string();
                v351 = __nwlog_obj();
                v352 = type[0];
                v362 = os_log_type_enabled(v351, type[0]);
                if (!v361)
                {
                  if (!v362)
                  {
                    goto LABEL_576;
                  }

                  v373 = *(v27 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v932 = v373;
                  v354 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                  goto LABEL_574;
                }

                if (v362)
                {
                  v363 = *(v27 + 488);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v932 = v363;
                  *v933 = 2082;
                  *&v933[2] = v361;
                  _os_log_impl(&dword_181A37000, v351, v352, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v361);
                if (v350)
                {
LABEL_577:
                  free(v350);
                }

LABEL_748:
                *(v13 + 428) |= 0x8000u;
                v460 = *(v13 + 352);
                v908[0] = MEMORY[0x1E69E9820];
                v908[1] = 0x40000000;
                v908[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_32;
                v908[3] = &__block_descriptor_tmp_41_44028;
                v908[4] = v13;
                nw_http_transaction_metadata_set_event_handler(v460, v908);
                if ((*(v13 + 428) & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_47;
              }

              *(v13 + 256) = v27;
              *(v27 + 488) = v13;
              v355 = *(v13 + 320);
              if (v355)
              {
                v355 = os_retain(v355);
              }

              *buf = v355;
              nw::retained_ptr<nw_endpoint *>::operator=(v27 + 736, buf);
              if ((*(*(v13 + 248) + 376) & 2) == 0)
              {
LABEL_720:
                v431 = *(v13 + 32);
                if (!v431 || v431 == *(v27 + 32))
                {
LABEL_738:
                  nw_protocol_set_output_handler(v13, *(v27 + 32));
                  nw_protocol_set_input_handler(v27, *(v13 + 48));
                  *v13 = *v27;
                  v448 = *(v13 + 96);
                  v449 = *(v13 + 112);
                  v450 = *(v13 + 128);
                  *(v27 + 144) = *(v13 + 144);
                  v451 = *(v13 + 80);
                  *(v27 + 64) = *(v13 + 64);
                  *(v27 + 80) = v451;
                  *(v27 + 112) = v449;
                  *(v27 + 128) = v450;
                  *(v27 + 96) = v448;
                  *(v27 + 872) &= 0xFFD7u;
                  *(v27 + 864) = 1;
                  if ((*(v27 + 158) & 1) == 0)
                  {
                    v452 = __nwlog_obj();
                    if (os_log_type_enabled(v452, OS_LOG_TYPE_DEBUG))
                    {
                      v453 = *(v27 + 488);
                      v454 = *(*(v27 + 480) + 372);
                      v455 = *(v27 + 860);
                      if (v453)
                      {
                        LODWORD(v453) = *(v453 + 424);
                      }

                      *buf = 136447490;
                      *&buf[4] = "nw_http1_update_connection_input_state";
                      *&buf[12] = 2082;
                      *&buf[14] = v27 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v454;
                      *&v933[6] = 1024;
                      *&v933[8] = v455;
                      *&v933[12] = 1024;
                      *&v933[14] = v453;
                      _os_log_impl(&dword_181A37000, v452, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                    }
                  }

                  if ((*(v13 + 158) & 1) == 0)
                  {
                    v456 = __nwlog_obj();
                    if (os_log_type_enabled(v456, OS_LOG_TYPE_INFO))
                    {
                      v457 = *(v13 + 256);
                      v458 = *(*(v13 + 248) + 372);
                      if (v457)
                      {
                        LODWORD(v457) = *(v457 + 860);
                      }

                      v459 = *(v13 + 424);
                      *buf = 136448002;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v13 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v458;
                      *&v933[6] = 1024;
                      *&v933[8] = v457;
                      *&v933[12] = 1024;
                      *&v933[14] = v459;
                      *&v933[18] = 2048;
                      *&v933[20] = v13;
                      *&v933[28] = 2048;
                      *&v933[30] = v27;
                      _os_log_impl(&dword_181A37000, v456, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                    }
                  }

                  goto LABEL_748;
                }

                __nwlog_obj();
                v432 = *(v13 + 32);
                v433 = *(v27 + 32);
                *buf = 136446978;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v432;
                *&buf[22] = 2048;
                v932 = v13;
                *v933 = 2048;
                *&v933[2] = v433;
                v434 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                v928[0] = 0;
                if (__nwlog_fault(v434, aBlock, v928))
                {
                  if (aBlock[0] == 17)
                  {
                    v435 = __nwlog_obj();
                    v436 = aBlock[0];
                    if (!os_log_type_enabled(v435, aBlock[0]))
                    {
                      goto LABEL_736;
                    }

                    v437 = *(v13 + 32);
                    v438 = *(v27 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v437;
                    *&buf[22] = 2048;
                    v932 = v13;
                    *v933 = 2048;
                    *&v933[2] = v438;
                    v439 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                    goto LABEL_735;
                  }

                  if (v928[0] != 1)
                  {
                    v435 = __nwlog_obj();
                    v436 = aBlock[0];
                    if (!os_log_type_enabled(v435, aBlock[0]))
                    {
                      goto LABEL_736;
                    }

                    v444 = *(v13 + 32);
                    v445 = *(v27 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v444;
                    *&buf[22] = 2048;
                    v932 = v13;
                    *v933 = 2048;
                    *&v933[2] = v445;
                    v439 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                    goto LABEL_735;
                  }

                  v440 = __nw_create_backtrace_string();
                  v435 = __nwlog_obj();
                  v436 = aBlock[0];
                  v441 = os_log_type_enabled(v435, aBlock[0]);
                  if (v440)
                  {
                    if (v441)
                    {
                      v442 = *(v13 + 32);
                      v443 = *(v27 + 32);
                      *buf = v906;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v442;
                      *&buf[22] = 2048;
                      v932 = v13;
                      *v933 = 2048;
                      *&v933[2] = v443;
                      *&v933[10] = 2082;
                      *&v933[12] = v440;
                      _os_log_impl(&dword_181A37000, v435, v436, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v440);
                    goto LABEL_736;
                  }

                  if (v441)
                  {
                    v446 = *(v13 + 32);
                    v447 = *(v27 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v446;
                    *&buf[22] = 2048;
                    v932 = v13;
                    *v933 = 2048;
                    *&v933[2] = v447;
                    v439 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_735:
                    _os_log_impl(&dword_181A37000, v435, v436, v439, buf, 0x2Au);
                  }
                }

LABEL_736:
                if (v434)
                {
                  free(v434);
                }

                goto LABEL_738;
              }

              v356 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
              *aBlock = 0;
              *&aBlock[8] = aBlock;
              *&aBlock[16] = 0x2000000000;
              LOBYTE(v924) = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3802000000;
              v932 = __Block_byref_object_copy__42960;
              *v933 = __Block_byref_object_dispose__42961;
              *&v933[8] = 0;
              v933[16] |= 1u;
              *type = MEMORY[0x1E69E9820];
              v917 = 0x40000000;
              v918 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
              v919 = &unk_1E6A32930;
              v920 = aBlock;
              v921 = buf;
              v922 = v13;
              nw_protocol_stack_iterate_application_protocols(v356, type);
              if (*(*&buf[8] + 40))
              {
                v357 = v27;
                while (1)
                {
                  v357 = *(v357 + 32);
                  if (!v357)
                  {
                    break;
                  }

                  if (nw_protocol_is_tls_over_stream(v357))
                  {
                    v358 = *(*&buf[8] + 40);
                    v359 = nw_protocol_boringssl_copy_definition();
                    nw_parameters_set_protocol_instance(v358, v360, v357);
                    if (v359)
                    {
                      os_release(v359);
                    }

                    goto LABEL_702;
                  }
                }

                __nwlog_obj();
                *v928 = 136446210;
                *&v928[4] = "nw_http1_stream_associate_with_connection";
                v369 = _os_log_send_and_compose_impl();
                v911[0] = OS_LOG_TYPE_ERROR;
                v915 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v369, v911, &v915))
                {
                  goto LABEL_711;
                }

                if (v911[0] == OS_LOG_TYPE_FAULT)
                {
                  v370 = __nwlog_obj();
                  v371 = v911[0];
                  if (os_log_type_enabled(v370, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v372 = "%{public}s tls should have been in the stack but could not find it";
LABEL_710:
                    _os_log_impl(&dword_181A37000, v370, v371, v372, v928, 0xCu);
                  }
                }

                else if (v915 == OS_LOG_TYPE_INFO)
                {
                  v379 = __nw_create_backtrace_string();
                  v370 = __nwlog_obj();
                  v371 = v911[0];
                  v380 = os_log_type_enabled(v370, v911[0]);
                  if (v379)
                  {
                    if (v380)
                    {
                      *v928 = 136446466;
                      *&v928[4] = "nw_http1_stream_associate_with_connection";
                      *&v928[12] = 2082;
                      *&v928[14] = v379;
                      _os_log_impl(&dword_181A37000, v370, v371, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v928, 0x16u);
                    }

                    free(v379);
                    goto LABEL_711;
                  }

                  if (v380)
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v372 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                    goto LABEL_710;
                  }
                }

                else
                {
                  v370 = __nwlog_obj();
                  v371 = v911[0];
                  if (os_log_type_enabled(v370, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v372 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                    goto LABEL_710;
                  }
                }

LABEL_711:
                if (v369)
                {
                  free(v369);
                }

                v428 = 0;
                goto LABEL_714;
              }

              __nwlog_obj();
              *v928 = 136446210;
              *&v928[4] = "nw_http1_stream_associate_with_connection";
              v365 = _os_log_send_and_compose_impl();
              v911[0] = OS_LOG_TYPE_ERROR;
              v915 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v365, v911, &v915))
              {
                if (v911[0] == OS_LOG_TYPE_FAULT)
                {
                  v366 = __nwlog_obj();
                  v367 = v911[0];
                  if (os_log_type_enabled(v366, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v368 = "%{public}s unable to find tls options";
LABEL_699:
                    _os_log_impl(&dword_181A37000, v366, v367, v368, v928, 0xCu);
                  }
                }

                else if (v915 == OS_LOG_TYPE_INFO)
                {
                  v377 = __nw_create_backtrace_string();
                  v366 = __nwlog_obj();
                  v367 = v911[0];
                  v378 = os_log_type_enabled(v366, v911[0]);
                  if (v377)
                  {
                    if (v378)
                    {
                      *v928 = 136446466;
                      *&v928[4] = "nw_http1_stream_associate_with_connection";
                      *&v928[12] = 2082;
                      *&v928[14] = v377;
                      _os_log_impl(&dword_181A37000, v366, v367, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v928, 0x16u);
                    }

                    free(v377);
                  }

                  else if (v378)
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v368 = "%{public}s unable to find tls options, no backtrace";
                    goto LABEL_699;
                  }
                }

                else
                {
                  v366 = __nwlog_obj();
                  v367 = v911[0];
                  if (os_log_type_enabled(v366, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v368 = "%{public}s unable to find tls options, backtrace limit exceeded";
                    goto LABEL_699;
                  }
                }
              }

              if (v365)
              {
                free(v365);
              }

LABEL_702:
              v428 = 1;
LABEL_714:
              _Block_object_dispose(buf, 8);
              if ((v933[16] & 1) != 0 && *&v933[8])
              {
                os_release(*&v933[8]);
              }

              _Block_object_dispose(aBlock, 8);
              if (v356)
              {
                os_release(v356);
              }

              if (!v428)
              {
                goto LABEL_748;
              }

              goto LABEL_720;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_associate_with_connection";
            v350 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v350, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v728 = __nwlog_obj();
                v729 = type[0];
                if (os_log_type_enabled(v728, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v354 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1394:
                  v374 = v728;
                  v375 = v729;
                  v376 = 12;
                  goto LABEL_575;
                }
              }

              else if (aBlock[0] == 1)
              {
                v744 = __nw_create_backtrace_string();
                v728 = __nwlog_obj();
                v729 = type[0];
                v745 = os_log_type_enabled(v728, type[0]);
                if (v744)
                {
                  if (v745)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v744;
                    _os_log_impl(&dword_181A37000, v728, v729, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v744);
                }

                else if (v745)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v354 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                  goto LABEL_1394;
                }
              }

              else
              {
                v728 = __nwlog_obj();
                v729 = type[0];
                if (os_log_type_enabled(v728, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v354 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                  goto LABEL_1394;
                }
              }
            }

LABEL_576:
            if (!v350)
            {
              goto LABEL_748;
            }

            goto LABEL_577;
          }

          __nwlog_obj();
          v129 = *(v7 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v932 = 1;
          *v933 = 2048;
          *&v933[2] = v129;
          v130 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v130, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v131 = __nwlog_obj();
              v132 = type[0];
              if (os_log_type_enabled(v131, type[0]))
              {
                v133 = *(v7 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                v932 = 1;
                *v933 = 2048;
                *&v933[2] = v133;
                v134 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_531:
                _os_log_impl(&dword_181A37000, v131, v132, v134, buf, 0x2Au);
              }
            }

            else if (aBlock[0] == 1)
            {
              v205 = __nw_create_backtrace_string();
              v131 = __nwlog_obj();
              v132 = type[0];
              v206 = os_log_type_enabled(v131, type[0]);
              if (v205)
              {
                if (v206)
                {
                  v207 = *(v7 + 340);
                  *buf = v906;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->idle_connections_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v207;
                  *&v933[10] = 2082;
                  *&v933[12] = v205;
                  _os_log_impl(&dword_181A37000, v131, v132, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v205);
                goto LABEL_532;
              }

              if (v206)
              {
                v348 = *(v7 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                v932 = 1;
                *v933 = 2048;
                *&v933[2] = v348;
                v134 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_531;
              }
            }

            else
            {
              v131 = __nwlog_obj();
              v132 = type[0];
              if (os_log_type_enabled(v131, type[0]))
              {
                v246 = *(v7 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                v932 = 1;
                *v933 = 2048;
                *&v933[2] = v246;
                v134 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_531;
              }
            }
          }

LABEL_532:
          if (v130)
          {
            free(v130);
          }

          *(v7 + 340) = 0;
          v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_535;
        }
      }

      if ((*(v7 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
      {
        v680 = v8;
        v681 = __nwlog_obj();
        v682 = os_log_type_enabled(v681, OS_LOG_TYPE_DEBUG);
        v8 = v680;
        if (v682)
        {
          v683 = *(v7 + 372);
          *buf = 136446978;
          *&buf[4] = "nw_http1_get_next_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 74;
          *&buf[22] = 2080;
          v932 = " ";
          *v933 = 1024;
          *&v933[2] = v683;
          _os_log_impl(&dword_181A37000, v681, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no idle connections", buf, 0x26u);
          v8 = v680;
        }
      }

      if (*(v13 + 256))
      {
        v45 = v8;
        if ((*(v13 + 158) & 1) == 0)
        {
          v46 = __nwlog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = *(v13 + 256);
            v48 = *(*(v13 + 248) + 372);
            if (v47)
            {
              LODWORD(v47) = *(v47 + 860);
            }

            v49 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v932 = " ";
            *v933 = 1024;
            *&v933[2] = v48;
            *&v933[6] = 1024;
            *&v933[8] = v47;
            *&v933[12] = 1024;
            *&v933[14] = v49;
            v50 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
            v51 = v46;
            v52 = 50;
LABEL_89:
            _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, v50, buf, v52);
            goto LABEL_90;
          }
        }

        goto LABEL_90;
      }

      if ((*(v13 + 428) & 0x10) == 0)
      {
        if (*(v7 + 336) + *(v7 + 352) >= (*(v7 + 368) + *(v7 + 364)))
        {
          v45 = v8;
          if ((*(v13 + 158) & 1) == 0)
          {
            v192 = __nwlog_obj();
            if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
            {
              v193 = *(v13 + 256);
              v194 = *(*(v13 + 248) + 372);
              if (v193)
              {
                LODWORD(v193) = *(v193 + 860);
              }

              v195 = *(v13 + 424);
              v196 = *(v7 + 364);
              *buf = 136447746;
              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v194;
              *&v933[6] = 1024;
              *&v933[8] = v193;
              *&v933[12] = 1024;
              *&v933[14] = v195;
              *&v933[18] = 1024;
              *&v933[20] = v196;
              v50 = "%{public}s %{public}s%s<i%u:c%u:s%u> already at max connection width %u, cannot create new connection";
              v51 = v192;
              v52 = 56;
              goto LABEL_89;
            }
          }

LABEL_90:
          if ((*(v13 + 158) & 1) == 0)
          {
            v53 = __nwlog_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v54 = *(v13 + 256);
              v55 = *(*(v13 + 248) + 372);
              if (v54)
              {
                LODWORD(v54) = *(v54 + 860);
              }

              v56 = *(v13 + 424);
              *buf = 136447490;
              *&buf[4] = "nw_protocol_http1_connect";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v55;
              *&v933[6] = 1024;
              *&v933[8] = v54;
              *&v933[12] = 1024;
              *&v933[14] = v56;
              _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> no available connections, waiting", buf, 0x32u);
            }
          }

          v57 = v45;
          if ((*(v13 + 158) & 1) == 0 && BYTE1(v45[82].isa) == 1)
          {
            v686 = __nwlog_obj();
            if (os_log_type_enabled(v686, OS_LOG_TYPE_DEBUG))
            {
              v687 = *(v13 + 256);
              v688 = *(*(v13 + 248) + 372);
              if (v687)
              {
                LODWORD(v687) = *(v687 + 860);
              }

              v689 = *(v13 + 424);
              *buf = 136447746;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v688;
              *&v933[6] = 1024;
              *&v933[8] = v687;
              *&v933[12] = 1024;
              *&v933[14] = v689;
              *&v933[18] = 2048;
              *&v933[20] = v13;
              _os_log_impl(&dword_181A37000, v686, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream (%p)", buf, 0x3Cu);
            }
          }

          if ((*(v13 + 428) & 0x2000) == 0)
          {
            *(v13 + 296) = 0;
            v58 = *(v7 + 256);
            *(v13 + 304) = v58;
            *v58 = v13;
            *(v7 + 256) = v13 + 296;
            v59 = *(v7 + 348) + 1;
            *(v7 + 348) = v59;
            if (v59 == v59 << 31 >> 31)
            {
LABEL_413:
              *(v13 + 428) |= 0x2000u;
              if (*(v13 + 158))
              {
                return 1;
              }

              if (BYTE1(v57[82].isa) != 1)
              {
                return 1;
              }

              v276 = __nwlog_obj();
              if (!os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
              {
                return 1;
              }

              v277 = *(v13 + 256);
              v278 = *(*(v13 + 248) + 372);
              if (v277)
              {
                LODWORD(v277) = *(v277 + 860);
              }

              v279 = *(v13 + 424);
              v280 = *(v7 + 348);
              *buf = 136448258;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v278;
              *&v933[6] = 1024;
              *&v933[8] = v277;
              *&v933[12] = 1024;
              *&v933[14] = v279;
              *&v933[18] = 1024;
              *&v933[20] = v279;
              *&v933[24] = 2048;
              *&v933[26] = v13;
              *&v933[34] = 1024;
              *&v933[36] = v280;
              v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> added stream %u (%p), now have %u pending streams";
              v24 = v276;
              v25 = 72;
              goto LABEL_43;
            }

            __nwlog_obj();
            v60 = *(v7 + 348);
            *buf = 136446978;
            *&buf[4] = "nw_http1_add_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_stream_count";
            *&buf[22] = 2048;
            v932 = 1;
            *v933 = 2048;
            *&v933[2] = v60;
            v61 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v61, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v62 = __nwlog_obj();
                v63 = type[0];
                if (os_log_type_enabled(v62, type[0]))
                {
                  v64 = *(v7 + 348);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_pending_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->pending_stream_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v64;
                  v65 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_409:
                  _os_log_impl(&dword_181A37000, v62, v63, v65, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v145 = __nw_create_backtrace_string();
                v62 = __nwlog_obj();
                v63 = type[0];
                v146 = os_log_type_enabled(v62, type[0]);
                if (v145)
                {
                  if (v146)
                  {
                    v147 = *(v7 + 348);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_add_pending_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->pending_stream_count";
                    *&buf[22] = 2048;
                    v932 = 1;
                    *v933 = 2048;
                    *&v933[2] = v147;
                    *&v933[10] = 2082;
                    *&v933[12] = v145;
                    _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v145);
                  goto LABEL_410;
                }

                if (v146)
                {
                  v275 = *(v7 + 348);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_pending_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->pending_stream_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v275;
                  v65 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_409;
                }
              }

              else
              {
                v62 = __nwlog_obj();
                v63 = type[0];
                if (os_log_type_enabled(v62, type[0]))
                {
                  v208 = *(v7 + 348);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_pending_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->pending_stream_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v208;
                  v65 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_409;
                }
              }
            }

LABEL_410:
            if (v61)
            {
              free(v61);
            }

            *(v7 + 348) = -1;
            goto LABEL_413;
          }

          __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_http1_add_pending_stream";
          *&buf[12] = 2048;
          *&buf[14] = v13;
          v116 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v116, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v117 = __nwlog_obj();
              v118 = type[0];
              if (!os_log_type_enabled(v117, type[0]))
              {
                goto LABEL_364;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = v13;
              v119 = "%{public}s stream %p already in pending list, cannot add again";
              goto LABEL_363;
            }

            if (aBlock[0] != 1)
            {
              v117 = __nwlog_obj();
              v118 = type[0];
              if (!os_log_type_enabled(v117, type[0]))
              {
                goto LABEL_364;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = v13;
              v119 = "%{public}s stream %p already in pending list, cannot add again, backtrace limit exceeded";
              goto LABEL_363;
            }

            v136 = __nw_create_backtrace_string();
            v117 = __nwlog_obj();
            v118 = type[0];
            v137 = os_log_type_enabled(v117, type[0]);
            if (v136)
            {
              if (v137)
              {
                *buf = 136446722;
                *&buf[4] = "nw_http1_add_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                *&buf[22] = 2082;
                v932 = v136;
                _os_log_impl(&dword_181A37000, v117, v118, "%{public}s stream %p already in pending list, cannot add again, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v136);
              goto LABEL_364;
            }

            if (v137)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = v13;
              v119 = "%{public}s stream %p already in pending list, cannot add again, no backtrace";
LABEL_363:
              _os_log_impl(&dword_181A37000, v117, v118, v119, buf, 0x16u);
            }
          }

LABEL_364:
          if (v116)
          {
            free(v116);
          }

          return 1;
        }

        if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
        {
          v797 = v8;
          v798 = __nwlog_obj();
          v799 = os_log_type_enabled(v798, OS_LOG_TYPE_DEBUG);
          v8 = v797;
          if (v799)
          {
            v800 = *(v13 + 256);
            v801 = *(*(v13 + 248) + 372);
            if (v800)
            {
              LODWORD(v800) = *(v800 + 860);
            }

            v802 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v932 = " ";
            *v933 = 1024;
            *&v933[2] = v801;
            *&v933[6] = 1024;
            *&v933[8] = v800;
            *&v933[12] = 1024;
            *&v933[14] = v802;
            _os_log_impl(&dword_181A37000, v798, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> width allows new connection, creating", buf, 0x32u);
            v8 = v797;
          }
        }

        if ((*(v13 + 428) & 0x2000) == 0)
        {
LABEL_836:
          if (*(v13 + 32))
          {
            if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
            {
              v811 = __nwlog_obj();
              if (os_log_type_enabled(v811, OS_LOG_TYPE_DEBUG))
              {
                v812 = *(v13 + 256);
                v813 = *(*(v13 + 248) + 372);
                if (v812)
                {
                  LODWORD(v812) = *(v812 + 860);
                }

                v814 = *(v13 + 424);
                v815 = *(v13 + 32);
                *buf = 136447746;
                *&buf[4] = "nw_http1_establish_new_connection_for_stream";
                *&buf[12] = 2082;
                *&buf[14] = v13 + 74;
                *&buf[22] = 2080;
                v932 = " ";
                *v933 = 1024;
                *&v933[2] = v813;
                *&v933[6] = 1024;
                *&v933[8] = v812;
                *&v933[12] = 1024;
                *&v933[14] = v814;
                *&v933[18] = 2048;
                *&v933[20] = v815;
                _os_log_impl(&dword_181A37000, v811, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using already established output handler %p", buf, 0x3Cu);
              }
            }

            v510 = *(v13 + 32);
            v907 = v510;
            if (v510)
            {
              v511 = *(v13 + 336);
              if (v511)
              {
                v512 = *(v13 + 320);
                if (v512)
                {
                  v513 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
                  v514 = v513;
                  if (v513)
                  {
                    bzero(v513, 0x370uLL);
                    nw_http1_connection::nw_http1_connection(v514);
                    goto LABEL_856;
                  }

                  v525 = __nwlog_obj();
                  os_log_type_enabled(v525, OS_LOG_TYPE_ERROR);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_connection_create";
                  *&buf[12] = 2048;
                  *&buf[14] = 1;
                  *&buf[22] = 2048;
                  v932 = 880;
                  v526 = _os_log_send_and_compose_impl();
                  result = __nwlog_should_abort(v526);
                  if (!result)
                  {
                    free(v526);
                    bzero(0, 0x370uLL);
                    nw_http1_connection::nw_http1_connection(0);
                    v527 = __nwlog_obj();
                    os_log_type_enabled(v527, OS_LOG_TYPE_ERROR);
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v528 = _os_log_send_and_compose_impl();
                    result = __nwlog_should_abort(v528);
                    if (!result)
                    {
                      free(v528);
LABEL_856:
                      if (nw_protocol_http1_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
                      }

                      *(v514 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
                      if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
                      {
                        dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
                      }

                      *(v514 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
                      *(v514 + 184) = 3;
                      *(v514 + 176) = v514;
                      *(v514 + 40) = v514 + 160;
                      *(v514 + 480) = v7;
                      nw_protocol_set_output_handler(v514, v510);
                      *buf = os_retain(v511);
                      nw::retained_ptr<nw_endpoint *>::operator=(v514 + 752, buf);
                      *buf = os_retain(v512);
                      nw::retained_ptr<nw_endpoint *>::operator=(v514 + 736, buf);
                      *buf = _nw_parameters_copy_context(v512);
                      nw::retained_ptr<nw_endpoint *>::operator=(v514 + 496, buf);
                      *(v514 + 192) = *(v7 + 192);
                      v529 = *(v514 + 496);
                      *type = MEMORY[0x1E69E9820];
                      v917 = 0x40000000;
                      v918 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
                      v919 = &__block_descriptor_tmp_43_43000;
                      v920 = v514;
                      *buf = nw_http_connection_create_metadata(v529, type, 0);
                      nw::retained_ptr<nw_endpoint *>::operator=(v514 + 768, buf);
                      nw_http_connection_metadata_set_version(*(v514 + 768), 3);
                      nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v514 + 768), *(v7 + 312));
                      *(v514 + 616) = 0;
                      *(v514 + 624) = v514 + 616;
                      *(v514 + 632) = 0;
                      *(v514 + 640) = v514 + 632;
                      *(v514 + 648) = 0;
                      *(v514 + 656) = v514 + 648;
                      *(v514 + 664) = 0;
                      *(v514 + 672) = v514 + 664;
                      *(v514 + 680) = 0;
                      *(v514 + 688) = v514 + 680;
                      nw_frame_cache_init(v514 + 696, v514, 256, 0x40000, 16);
                      v530 = *(v514 + 480);
                      if (v530)
                      {
                        *(v514 + 360) = 0u;
                        *(v514 + 376) = 0u;
                        *(v514 + 392) = 0u;
                        *(v514 + 408) = 0u;
                        *(v514 + 424) = 0u;
                        *(v514 + 440) = 0u;
                        *(v514 + 328) = 0u;
                        *(v514 + 344) = 0u;
                        *(v514 + 296) = nw_http1_on_message_begin;
                        *(v514 + 384) = nw_http1_on_message_complete;
                        *(v514 + 368) = nw_http1_on_headers_complete;
                        *(v514 + 472) = nw_http1_on_reset;
                        *(v514 + 320) = nw_http1_on_method;
                        *(v514 + 408) = nw_http1_on_method_complete;
                        *(v514 + 304) = nw_http1_on_url;
                        *(v514 + 392) = nw_http1_on_url_complete;
                        *(v514 + 312) = nw_http1_on_status;
                        *(v514 + 400) = nw_http1_on_status_complete;
                        *(v514 + 336) = nw_http1_on_header_field;
                        *(v514 + 424) = nw_http1_on_header_field_complete;
                        *(v514 + 344) = nw_http1_on_header_value;
                        *(v514 + 432) = nw_http1_on_header_value_complete;
                        *(v514 + 376) = nw_http1_on_body;
                        *(v514 + 456) = nw_http1_on_chunk_header;
                        *(v514 + 464) = nw_http1_on_chunk_complete;
                        v531 = *(v530 + 376);
                        *(v514 + 248) = 0u;
                        *(v514 + 200) = 0u;
                        *(v514 + 264) = 0u;
                        *(v514 + 232) = 0u;
                        *(v514 + 216) = 0u;
                        if (v531)
                        {
                          v532 = 1;
                        }

                        else
                        {
                          v532 = 2;
                        }

                        *(v514 + 272) = v532;
                        *(v514 + 280) = 0;
                        *(v514 + 288) = v514 + 296;
                        *(v514 + 278) = 16131;
                        *(v514 + 248) = v514;
                        *(v514 + 256) = 237;
                        if ((*(v514 + 158) & 1) == 0)
                        {
                          v533 = __nwlog_obj();
                          if (os_log_type_enabled(v533, OS_LOG_TYPE_DEBUG))
                          {
                            v534 = *(v514 + 488);
                            v535 = *(*(v514 + 480) + 372);
                            v536 = *(v514 + 860);
                            if (v534)
                            {
                              LODWORD(v534) = *(v534 + 424);
                            }

                            *buf = 136448258;
                            *&buf[4] = "nw_http1_connection_log_parser_version";
                            *&buf[12] = 2082;
                            *&buf[14] = v514 + 74;
                            *&buf[22] = 2080;
                            v932 = " ";
                            *v933 = 1024;
                            *&v933[2] = v535;
                            *&v933[6] = 1024;
                            *&v933[8] = v536;
                            *&v933[12] = 1024;
                            *&v933[14] = v534;
                            *&v933[18] = 1024;
                            *&v933[20] = 9;
                            *&v933[24] = 1024;
                            *&v933[26] = 2;
                            *&v933[30] = 1024;
                            *&v933[32] = 1;
                            _os_log_impl(&dword_181A37000, v533, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
                          }
                        }

                        goto LABEL_869;
                      }

                      v822 = v7;
                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_connection_parser_init";
                      v823 = _os_log_send_and_compose_impl();
                      v928[0] = 16;
                      v911[0] = OS_LOG_TYPE_DEFAULT;
                      if (__nwlog_fault(v823, v928, v911))
                      {
                        if (v928[0] == 17)
                        {
                          v824 = __nwlog_obj();
                          v825 = v928[0];
                          if (os_log_type_enabled(v824, v928[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_connection_parser_init";
                            v826 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1658:
                            _os_log_impl(&dword_181A37000, v824, v825, v826, buf, 0xCu);
                          }
                        }

                        else if (v911[0] == OS_LOG_TYPE_INFO)
                        {
                          v865 = __nw_create_backtrace_string();
                          v824 = __nwlog_obj();
                          v825 = v928[0];
                          v866 = os_log_type_enabled(v824, v928[0]);
                          if (v865)
                          {
                            if (v866)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_parser_init";
                              *&buf[12] = 2082;
                              *&buf[14] = v865;
                              _os_log_impl(&dword_181A37000, v824, v825, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v865);
                            goto LABEL_1659;
                          }

                          if (v866)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_connection_parser_init";
                            v826 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                            goto LABEL_1658;
                          }
                        }

                        else
                        {
                          v824 = __nwlog_obj();
                          v825 = v928[0];
                          if (os_log_type_enabled(v824, v928[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_connection_parser_init";
                            v826 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                            goto LABEL_1658;
                          }
                        }
                      }

LABEL_1659:
                      if (v823)
                      {
                        free(v823);
                      }

                      v7 = v822;
LABEL_869:
                      v537 = v7;
                      *buf = 0;
                      *&buf[8] = buf;
                      *&buf[16] = 0x2000000000;
                      v932 = v514;
                      *aBlock = MEMORY[0x1E69E9820];
                      *&aBlock[8] = 0x40000000;
                      *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
                      v924 = &unk_1E6A32758;
                      *v925 = buf;
                      *(v514 + 608) = _Block_copy(aBlock);
                      _Block_object_dispose(buf, 8);
                      if ((*(v514 + 158) & 1) == 0 && gLogDatapath == 1)
                      {
                        v835 = __nwlog_obj();
                        if (os_log_type_enabled(v835, OS_LOG_TYPE_DEBUG))
                        {
                          v836 = *(v514 + 488);
                          v837 = *(*(v514 + 480) + 372);
                          v838 = *(v514 + 860);
                          if (v836)
                          {
                            LODWORD(v836) = *(v836 + 424);
                          }

                          *buf = 136447746;
                          *&buf[4] = "nw_http1_connection_create";
                          *&buf[12] = 2082;
                          *&buf[14] = v514 + 74;
                          *&buf[22] = 2080;
                          v932 = " ";
                          *v933 = 1024;
                          *&v933[2] = v837;
                          *&v933[6] = 1024;
                          *&v933[8] = v838;
                          *&v933[12] = 1024;
                          *&v933[14] = v836;
                          *&v933[18] = 2048;
                          *&v933[20] = v514;
                          _os_log_impl(&dword_181A37000, v835, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                        }
                      }

                      nw_protocol_replace_input_handler(v510, v13, v514);
                      *v514 = *v510;
                      v538 = *(v514 + 736);
                      if (v538)
                      {
                        if (!*(v514 + 528))
                        {
                          v539 = _nw_parameters_copy_context(*(v514 + 736));
                          *buf = nw_path_copy_flow_registration(v539, v514);
                          v540 = (v514 + 560);
                          nw::retained_ptr<nw_endpoint *>::operator=(v514 + 560, buf);
                          v541 = *(v514 + 560);
                          if (v541)
                          {
                            v542 = nw_path_flow_registration_copy_endpoint(v541);
                            v543 = nw_path_flow_registration_copy_parameters(*v540);
                            *buf = nw_endpoint_copy_association_with_evaluator(v542, v543, 0);
                            nw::retained_ptr<nw_endpoint *>::operator=(v514 + 528, buf);
                            if (*(v514 + 528))
                            {
                              *buf = nw_protocol_instance_stub_create(v514);
                              nw::retained_ptr<nw_endpoint *>::operator=(v514 + 544, buf);
                              nw_association_register_internal(*(v514 + 528), v538, *(v514 + 544), 0, 0, &__block_literal_global_69_43019);
                              v544 = nw_association_copy_current_path(*(v514 + 528), v543);
                              if (v544)
                              {
                                v545 = v544;
                                v546 = nw_path_copy_for_flow_registration(v544, *v540);
                                if (v546)
                                {
                                  v547 = v546;
                                  if (*(v514 + 512) != v546)
                                  {
                                    *buf = os_retain(v546);
                                    nw::retained_ptr<nw_endpoint *>::operator=(v514 + 512, buf);
                                  }

                                  if (nw_path_has_flows(v547))
                                  {
                                    v548 = 4096;
                                  }

                                  else
                                  {
                                    v548 = 0;
                                  }

                                  *(v514 + 872) = *(v514 + 872) & 0xEFFF | v548;
                                  v549 = _nw_parameters_copy_effective_proxy_config(v538);
                                  if (v549)
                                  {
                                    v550 = v549;
                                    if (nw_path_has_proxy_config(v545, v549))
                                    {
                                      *buf = os_retain(v550);
                                      nw::retained_ptr<nw_endpoint *>::operator=(v514 + 576, buf);
                                    }

                                    os_release(v550);
                                  }

                                  os_release(v547);
                                }

                                os_release(v545);
                              }
                            }

                            if (v543)
                            {
                              os_release(v543);
                            }

                            if (v542)
                            {
                              os_release(v542);
                            }
                          }

                          v510 = v907;
                          if (v539)
                          {
                            os_release(v539);
                          }
                        }

                        v551 = *(v514 + 512);
                        if (v551)
                        {
LABEL_895:
                          if (_nw_path_uses_interface_type(v551, 2u))
                          {
                            *(v514 + 192) = 1000;
                          }
                        }

LABEL_897:
                        v552 = v537;
                        v553 = *(v537 + 336) + 1;
                        *(v537 + 336) = v553;
                        if (v553 == v553 << 31 >> 31)
                        {
                          goto LABEL_922;
                        }

                        __nwlog_obj();
                        v554 = *(v537 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v554;
                        v555 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v555, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v556 = __nwlog_obj();
                            v557 = type[0];
                            if (os_log_type_enabled(v556, type[0]))
                            {
                              v558 = *(v537 + 336);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->connections_count";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v558;
                              v559 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_918:
                              _os_log_impl(&dword_181A37000, v556, v557, v559, buf, 0x2Au);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v560 = __nw_create_backtrace_string();
                            v556 = __nwlog_obj();
                            v557 = type[0];
                            v561 = os_log_type_enabled(v556, type[0]);
                            if (v560)
                            {
                              if (v561)
                              {
                                v562 = *(v537 + 336);
                                *buf = 136447234;
                                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                                *&buf[12] = 2082;
                                *&buf[14] = "http1->connections_count";
                                *&buf[22] = 2048;
                                v932 = 1;
                                *v933 = 2048;
                                *&v933[2] = v562;
                                *&v933[10] = 2082;
                                *&v933[12] = v560;
                                _os_log_impl(&dword_181A37000, v556, v557, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v560);
                              v552 = v537;
                              goto LABEL_919;
                            }

                            v552 = v537;
                            if (v561)
                            {
                              v568 = *(v537 + 336);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->connections_count";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v568;
                              v559 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                              goto LABEL_918;
                            }
                          }

                          else
                          {
                            v556 = __nwlog_obj();
                            v557 = type[0];
                            if (os_log_type_enabled(v556, type[0]))
                            {
                              v566 = *(v537 + 336);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->connections_count";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v566;
                              v559 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                              goto LABEL_918;
                            }
                          }
                        }

LABEL_919:
                        if (v555)
                        {
                          free(v555);
                        }

                        *(v552 + 336) = -1;
                        v510 = v907;
LABEL_922:
                        v569 = *(v552 + 360) + 1;
                        *(v552 + 360) = v569;
                        v570 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        if (v569 == v569 << 31 >> 31)
                        {
                          goto LABEL_940;
                        }

                        __nwlog_obj();
                        v571 = *(v552 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v571;
                        v572 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v572, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v573 = __nwlog_obj();
                            v574 = type[0];
                            if (os_log_type_enabled(v573, type[0]))
                            {
                              v575 = *(v552 + 360);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->next_connection_log_num";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v575;
                              v576 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_936:
                              _os_log_impl(&dword_181A37000, v573, v574, v576, buf, 0x2Au);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v577 = __nw_create_backtrace_string();
                            v573 = __nwlog_obj();
                            v574 = type[0];
                            v578 = os_log_type_enabled(v573, type[0]);
                            if (v577)
                            {
                              if (v578)
                              {
                                v579 = *(v537 + 360);
                                *buf = 136447234;
                                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                                *&buf[12] = 2082;
                                *&buf[14] = "http1->next_connection_log_num";
                                *&buf[22] = 2048;
                                v932 = 1;
                                *v933 = 2048;
                                *&v933[2] = v579;
                                *&v933[10] = 2082;
                                *&v933[12] = v577;
                                _os_log_impl(&dword_181A37000, v573, v574, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v577);
                              v552 = v537;
                              goto LABEL_937;
                            }

                            v552 = v537;
                            if (v578)
                            {
                              v581 = *(v537 + 360);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->next_connection_log_num";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v581;
                              v576 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                              goto LABEL_936;
                            }
                          }

                          else
                          {
                            v573 = __nwlog_obj();
                            v574 = type[0];
                            if (os_log_type_enabled(v573, type[0]))
                            {
                              v580 = *(v552 + 360);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->next_connection_log_num";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v580;
                              v576 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                              goto LABEL_936;
                            }
                          }
                        }

LABEL_937:
                        if (v572)
                        {
                          free(v572);
                        }

                        LODWORD(v569) = -1;
                        *(v552 + 360) = -1;
                        v570 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        v510 = v907;
LABEL_940:
                        *(v514 + 860) = v569;
                        if ((*(v514 + 158) & 1) == 0 && BYTE1(v570[82].isa) == 1)
                        {
                          v839 = __nwlog_obj();
                          if (os_log_type_enabled(v839, OS_LOG_TYPE_DEBUG))
                          {
                            v840 = *(v514 + 488);
                            v841 = *(*(v514 + 480) + 372);
                            v842 = *(v514 + 860);
                            if (v840)
                            {
                              LODWORD(v840) = *(v840 + 424);
                            }

                            v843 = *(v537 + 336);
                            *buf = 136448002;
                            *&buf[4] = "nw_http1_add_connection_for_output_handler";
                            *&buf[12] = 2082;
                            *&buf[14] = v514 + 74;
                            *&buf[22] = 2080;
                            v932 = " ";
                            *v933 = 1024;
                            *&v933[2] = v841;
                            *&v933[6] = 1024;
                            *&v933[8] = v842;
                            *&v933[12] = 1024;
                            *&v933[14] = v840;
                            *&v933[18] = 2048;
                            *&v933[20] = v514;
                            *&v933[28] = 1024;
                            *&v933[30] = v843;
                            _os_log_impl(&dword_181A37000, v839, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                            v510 = v907;
                          }
                        }

                        if (*(v13 + 248))
                        {
                          if (*(v514 + 488))
                          {
                            __nwlog_obj();
                            v582 = *(v514 + 488);
                            *buf = 136446722;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2048;
                            *&buf[14] = v514;
                            *&buf[22] = 2048;
                            v932 = v582;
                            v583 = _os_log_send_and_compose_impl();
                            aBlock[0] = 16;
                            v928[0] = 0;
                            if (!__nwlog_fault(v583, aBlock, v928))
                            {
                              goto LABEL_975;
                            }

                            if (aBlock[0] == 17)
                            {
                              v584 = __nwlog_obj();
                              v585 = aBlock[0];
                              if (!os_log_type_enabled(v584, aBlock[0]))
                              {
                                goto LABEL_975;
                              }

                              v586 = *(v514 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v514;
                              *&buf[22] = 2048;
                              v932 = v586;
                              v587 = "%{public}s Connection %p already has a stream (%p)";
                            }

                            else if (v928[0] == 1)
                            {
                              v594 = __nw_create_backtrace_string();
                              v584 = __nwlog_obj();
                              v585 = aBlock[0];
                              v595 = os_log_type_enabled(v584, aBlock[0]);
                              if (v594)
                              {
                                if (v595)
                                {
                                  v596 = *(v514 + 488);
                                  *buf = 136446978;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v514;
                                  *&buf[22] = 2048;
                                  v932 = v596;
                                  *v933 = 2082;
                                  *&v933[2] = v594;
                                  _os_log_impl(&dword_181A37000, v584, v585, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                                }

                                free(v594);
                                goto LABEL_975;
                              }

                              if (!v595)
                              {
LABEL_975:
                                if (v583)
                                {
                                  free(v583);
                                }

LABEL_1221:
                                v690 = 0;
                                goto LABEL_1222;
                              }

                              v606 = *(v514 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v514;
                              *&buf[22] = 2048;
                              v932 = v606;
                              v587 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                            }

                            else
                            {
                              v584 = __nwlog_obj();
                              v585 = aBlock[0];
                              if (!os_log_type_enabled(v584, aBlock[0]))
                              {
                                goto LABEL_975;
                              }

                              v597 = *(v514 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v514;
                              *&buf[22] = 2048;
                              v932 = v597;
                              v587 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                            }

                            _os_log_impl(&dword_181A37000, v584, v585, v587, buf, 0x20u);
                            goto LABEL_975;
                          }

                          *(v13 + 256) = v514;
                          *(v514 + 488) = v13;
                          v588 = *(v13 + 320);
                          if (v588)
                          {
                            v588 = os_retain(v588);
                          }

                          *buf = v588;
                          nw::retained_ptr<nw_endpoint *>::operator=(v514 + 736, buf);
                          if ((*(*(v13 + 248) + 376) & 2) == 0)
                          {
                            goto LABEL_1191;
                          }

                          v589 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
                          *aBlock = 0;
                          *&aBlock[8] = aBlock;
                          *&aBlock[16] = 0x2000000000;
                          LOBYTE(v924) = 0;
                          *buf = 0;
                          *&buf[8] = buf;
                          *&buf[16] = 0x3802000000;
                          v932 = __Block_byref_object_copy__42960;
                          *v933 = __Block_byref_object_dispose__42961;
                          *&v933[8] = 0;
                          v933[16] |= 1u;
                          *type = MEMORY[0x1E69E9820];
                          v917 = 0x40000000;
                          v918 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                          v919 = &unk_1E6A32930;
                          v920 = aBlock;
                          v921 = buf;
                          v922 = v13;
                          nw_protocol_stack_iterate_application_protocols(v589, type);
                          if (*(*&buf[8] + 40))
                          {
                            v590 = v514;
                            while (1)
                            {
                              v590 = *(v590 + 32);
                              if (!v590)
                              {
                                break;
                              }

                              if (nw_protocol_is_tls_over_stream(v590))
                              {
                                v591 = *(*&buf[8] + 40);
                                v592 = nw_protocol_boringssl_copy_definition();
                                nw_parameters_set_protocol_instance(v591, v593, v590);
                                if (v592)
                                {
                                  os_release(v592);
                                }

                                goto LABEL_1178;
                              }
                            }

                            __nwlog_obj();
                            *v928 = 136446210;
                            *&v928[4] = "nw_http1_stream_associate_with_connection";
                            v602 = _os_log_send_and_compose_impl();
                            v911[0] = OS_LOG_TYPE_ERROR;
                            v915 = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v602, v911, &v915))
                            {
                              goto LABEL_1182;
                            }

                            if (v911[0] == OS_LOG_TYPE_FAULT)
                            {
                              v603 = __nwlog_obj();
                              v604 = v911[0];
                              if (os_log_type_enabled(v603, v911[0]))
                              {
                                *v928 = 136446210;
                                *&v928[4] = "nw_http1_stream_associate_with_connection";
                                v605 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1181:
                                _os_log_impl(&dword_181A37000, v603, v604, v605, v928, 0xCu);
                              }
                            }

                            else if (v915 == OS_LOG_TYPE_INFO)
                            {
                              v609 = __nw_create_backtrace_string();
                              v603 = __nwlog_obj();
                              v604 = v911[0];
                              v610 = os_log_type_enabled(v603, v911[0]);
                              if (v609)
                              {
                                if (v610)
                                {
                                  *v928 = 136446466;
                                  *&v928[4] = "nw_http1_stream_associate_with_connection";
                                  *&v928[12] = 2082;
                                  *&v928[14] = v609;
                                  _os_log_impl(&dword_181A37000, v603, v604, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v928, 0x16u);
                                }

                                free(v609);
                                goto LABEL_1182;
                              }

                              if (v610)
                              {
                                *v928 = 136446210;
                                *&v928[4] = "nw_http1_stream_associate_with_connection";
                                v605 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                                goto LABEL_1181;
                              }
                            }

                            else
                            {
                              v603 = __nwlog_obj();
                              v604 = v911[0];
                              if (os_log_type_enabled(v603, v911[0]))
                              {
                                *v928 = 136446210;
                                *&v928[4] = "nw_http1_stream_associate_with_connection";
                                v605 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                                goto LABEL_1181;
                              }
                            }

LABEL_1182:
                            if (v602)
                            {
                              free(v602);
                            }

                            v690 = 0;
                            goto LABEL_1185;
                          }

                          __nwlog_obj();
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v598 = _os_log_send_and_compose_impl();
                          v911[0] = OS_LOG_TYPE_ERROR;
                          v915 = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v598, v911, &v915))
                          {
                            if (v911[0] == OS_LOG_TYPE_FAULT)
                            {
                              v599 = __nwlog_obj();
                              v600 = v911[0];
                              if (os_log_type_enabled(v599, v911[0]))
                              {
                                *v928 = 136446210;
                                *&v928[4] = "nw_http1_stream_associate_with_connection";
                                v601 = "%{public}s unable to find tls options";
LABEL_1175:
                                _os_log_impl(&dword_181A37000, v599, v600, v601, v928, 0xCu);
                              }
                            }

                            else if (v915 == OS_LOG_TYPE_INFO)
                            {
                              v607 = __nw_create_backtrace_string();
                              v599 = __nwlog_obj();
                              v600 = v911[0];
                              v608 = os_log_type_enabled(v599, v911[0]);
                              if (v607)
                              {
                                if (v608)
                                {
                                  *v928 = 136446466;
                                  *&v928[4] = "nw_http1_stream_associate_with_connection";
                                  *&v928[12] = 2082;
                                  *&v928[14] = v607;
                                  _os_log_impl(&dword_181A37000, v599, v600, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v928, 0x16u);
                                }

                                free(v607);
                              }

                              else if (v608)
                              {
                                *v928 = 136446210;
                                *&v928[4] = "nw_http1_stream_associate_with_connection";
                                v601 = "%{public}s unable to find tls options, no backtrace";
                                goto LABEL_1175;
                              }
                            }

                            else
                            {
                              v599 = __nwlog_obj();
                              v600 = v911[0];
                              if (os_log_type_enabled(v599, v911[0]))
                              {
                                *v928 = 136446210;
                                *&v928[4] = "nw_http1_stream_associate_with_connection";
                                v601 = "%{public}s unable to find tls options, backtrace limit exceeded";
                                goto LABEL_1175;
                              }
                            }
                          }

                          if (v598)
                          {
                            free(v598);
                          }

LABEL_1178:
                          v690 = 1;
LABEL_1185:
                          v510 = v907;
                          _Block_object_dispose(buf, 8);
                          if ((v933[16] & 1) != 0 && *&v933[8])
                          {
                            os_release(*&v933[8]);
                          }

                          _Block_object_dispose(aBlock, 8);
                          if (v589)
                          {
                            os_release(v589);
                          }

                          if (!v690)
                          {
LABEL_1222:
                            if ((*(v13 + 158) & 1) == 0)
                            {
                              v720 = __nwlog_obj();
                              if (os_log_type_enabled(v720, OS_LOG_TYPE_DEBUG))
                              {
                                v721 = *(v13 + 256);
                                v722 = *(*(v13 + 248) + 372);
                                if (v721)
                                {
                                  LODWORD(v721) = *(v721 + 860);
                                }

                                v723 = *(v13 + 424);
                                *buf = 136448258;
                                *&buf[4] = "nw_http1_start_new_connection_for_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v13 + 74;
                                *&buf[22] = 2080;
                                v932 = " ";
                                *v933 = 1024;
                                *&v933[2] = v722;
                                *&v933[6] = 1024;
                                *&v933[8] = v721;
                                *&v933[12] = 1024;
                                *&v933[14] = v723;
                                *&v933[18] = 2048;
                                *&v933[20] = v514;
                                *&v933[28] = 1024;
                                *&v933[30] = v723;
                                *&v933[34] = 2048;
                                *&v933[36] = v13;
                                _os_log_impl(&dword_181A37000, v720, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                              }
                            }

                            *(v13 + 428) |= 1u;
                            v724 = nw_protocol_copy_info(v510);
                            v515 = v724;
                            if (v724)
                            {
                              object = _nw_array_copy_last_object(v724);
                              v726 = object;
                              if (object)
                              {
                                if (nw_protocol_metadata_is_tls(object))
                                {
                                  v726 = v726;
                                  nw_http_connection_metadata_set_sec_metadata(*(v514 + 768), v726);
                                  os_release(v726);
                                }

                                v727 = 0;
LABEL_1234:
                                if (!v690)
                                {
                                  goto LABEL_1235;
                                }

                                __nwlog_obj();
                                *buf = 136446210;
                                *&buf[4] = "nw_http1_get_output_protocol";
                                v807 = _os_log_send_and_compose_impl();
                                type[0] = OS_LOG_TYPE_ERROR;
                                aBlock[0] = 0;
                                if (__nwlog_fault(v807, type, aBlock))
                                {
                                  if (type[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v808 = __nwlog_obj();
                                    v809 = type[0];
                                    if (os_log_type_enabled(v808, type[0]))
                                    {
                                      *buf = 136446210;
                                      *&buf[4] = "nw_http1_get_output_protocol";
                                      v810 = "%{public}s called with null connection";
LABEL_1612:
                                      _os_log_impl(&dword_181A37000, v808, v809, v810, buf, 0xCu);
                                    }
                                  }

                                  else if (aBlock[0] == 1)
                                  {
                                    v859 = __nw_create_backtrace_string();
                                    v808 = __nwlog_obj();
                                    v809 = type[0];
                                    v860 = os_log_type_enabled(v808, type[0]);
                                    if (v859)
                                    {
                                      if (v860)
                                      {
                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_get_output_protocol";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v859;
                                        _os_log_impl(&dword_181A37000, v808, v809, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                                      }

                                      free(v859);
                                      goto LABEL_1613;
                                    }

                                    if (v860)
                                    {
                                      *buf = 136446210;
                                      *&buf[4] = "nw_http1_get_output_protocol";
                                      v810 = "%{public}s called with null connection, no backtrace";
                                      goto LABEL_1612;
                                    }
                                  }

                                  else
                                  {
                                    v808 = __nwlog_obj();
                                    v809 = type[0];
                                    if (os_log_type_enabled(v808, type[0]))
                                    {
                                      *buf = 136446210;
                                      *&buf[4] = "nw_http1_get_output_protocol";
                                      v810 = "%{public}s called with null connection, backtrace limit exceeded";
                                      goto LABEL_1612;
                                    }
                                  }
                                }

LABEL_1613:
                                if (v807)
                                {
                                  free(v807);
                                }

                                v514 = 0;
                                v510 = v907;
LABEL_1235:
                                nw_protocol_connect(v510, v514);
                                if ((v727 & 1) == 0)
                                {
                                  os_release(v726);
                                }

                                if (!v515)
                                {
                                  return 1;
                                }

                                goto LABEL_1238;
                              }
                            }

                            else
                            {
                              v726 = 0;
                            }

                            v727 = 1;
                            goto LABEL_1234;
                          }

LABEL_1191:
                          v691 = *(v13 + 32);
                          if (!v691 || v691 == *(v514 + 32))
                          {
LABEL_1210:
                            nw_protocol_set_output_handler(v13, *(v514 + 32));
                            nw_protocol_set_input_handler(v514, *(v13 + 48));
                            *v13 = *v514;
                            v708 = *(v13 + 96);
                            v709 = *(v13 + 112);
                            v710 = *(v13 + 128);
                            *(v514 + 144) = *(v13 + 144);
                            v711 = *(v13 + 80);
                            *(v514 + 64) = *(v13 + 64);
                            *(v514 + 80) = v711;
                            *(v514 + 112) = v709;
                            *(v514 + 128) = v710;
                            *(v514 + 96) = v708;
                            *(v514 + 872) &= 0xFFD7u;
                            *(v514 + 864) = 1;
                            if ((*(v514 + 158) & 1) == 0)
                            {
                              v712 = __nwlog_obj();
                              if (os_log_type_enabled(v712, OS_LOG_TYPE_DEBUG))
                              {
                                v713 = *(v514 + 488);
                                v714 = *(*(v514 + 480) + 372);
                                v715 = *(v514 + 860);
                                if (v713)
                                {
                                  LODWORD(v713) = *(v713 + 424);
                                }

                                *buf = 136447490;
                                *&buf[4] = "nw_http1_update_connection_input_state";
                                *&buf[12] = 2082;
                                *&buf[14] = v514 + 74;
                                *&buf[22] = 2080;
                                v932 = " ";
                                *v933 = 1024;
                                *&v933[2] = v714;
                                *&v933[6] = 1024;
                                *&v933[8] = v715;
                                *&v933[12] = 1024;
                                *&v933[14] = v713;
                                _os_log_impl(&dword_181A37000, v712, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                                v510 = v907;
                              }
                            }

                            if (*(v13 + 158))
                            {
                              goto LABEL_1221;
                            }

                            v716 = __nwlog_obj();
                            if (!os_log_type_enabled(v716, OS_LOG_TYPE_INFO))
                            {
                              goto LABEL_1221;
                            }

                            v717 = *(v13 + 256);
                            v718 = *(*(v13 + 248) + 372);
                            if (v717)
                            {
                              LODWORD(v717) = *(v717 + 860);
                            }

                            v719 = *(v13 + 424);
                            *buf = 136448002;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v13 + 74;
                            *&buf[22] = 2080;
                            v932 = " ";
                            *v933 = 1024;
                            *&v933[2] = v718;
                            *&v933[6] = 1024;
                            *&v933[8] = v717;
                            *&v933[12] = 1024;
                            *&v933[14] = v719;
                            *&v933[18] = 2048;
                            *&v933[20] = v13;
                            *&v933[28] = 2048;
                            *&v933[30] = v514;
                            _os_log_impl(&dword_181A37000, v716, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                            v690 = 0;
                            goto LABEL_1220;
                          }

                          __nwlog_obj();
                          v692 = *(v13 + 32);
                          v693 = *(v514 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v692;
                          *&buf[22] = 2048;
                          v932 = v13;
                          *v933 = 2048;
                          *&v933[2] = v693;
                          v694 = _os_log_send_and_compose_impl();
                          aBlock[0] = 16;
                          v928[0] = 0;
                          if (__nwlog_fault(v694, aBlock, v928))
                          {
                            if (aBlock[0] == 17)
                            {
                              v695 = __nwlog_obj();
                              v696 = aBlock[0];
                              if (os_log_type_enabled(v695, aBlock[0]))
                              {
                                v697 = *(v13 + 32);
                                v698 = *(v514 + 32);
                                *buf = 136446978;
                                *&buf[4] = "nw_http1_stream_associate_with_connection";
                                *&buf[12] = 2048;
                                *&buf[14] = v697;
                                *&buf[22] = 2048;
                                v932 = v13;
                                *v933 = 2048;
                                *&v933[2] = v698;
                                v699 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_1206:
                                _os_log_impl(&dword_181A37000, v695, v696, v699, buf, 0x2Au);
                              }
                            }

                            else if (v928[0] == 1)
                            {
                              v700 = __nw_create_backtrace_string();
                              v695 = __nwlog_obj();
                              v696 = aBlock[0];
                              v701 = os_log_type_enabled(v695, aBlock[0]);
                              if (v700)
                              {
                                if (v701)
                                {
                                  v702 = *(v13 + 32);
                                  v703 = *(v514 + 32);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v702;
                                  *&buf[22] = 2048;
                                  v932 = v13;
                                  *v933 = 2048;
                                  *&v933[2] = v703;
                                  *&v933[10] = 2082;
                                  *&v933[12] = v700;
                                  _os_log_impl(&dword_181A37000, v695, v696, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                                }

                                free(v700);
                                goto LABEL_1207;
                              }

                              if (v701)
                              {
                                v706 = *(v13 + 32);
                                v707 = *(v514 + 32);
                                *buf = 136446978;
                                *&buf[4] = "nw_http1_stream_associate_with_connection";
                                *&buf[12] = 2048;
                                *&buf[14] = v706;
                                *&buf[22] = 2048;
                                v932 = v13;
                                *v933 = 2048;
                                *&v933[2] = v707;
                                v699 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                                goto LABEL_1206;
                              }
                            }

                            else
                            {
                              v695 = __nwlog_obj();
                              v696 = aBlock[0];
                              if (os_log_type_enabled(v695, aBlock[0]))
                              {
                                v704 = *(v13 + 32);
                                v705 = *(v514 + 32);
                                *buf = 136446978;
                                *&buf[4] = "nw_http1_stream_associate_with_connection";
                                *&buf[12] = 2048;
                                *&buf[14] = v704;
                                *&buf[22] = 2048;
                                v932 = v13;
                                *v933 = 2048;
                                *&v933[2] = v705;
                                v699 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                                goto LABEL_1206;
                              }
                            }
                          }

LABEL_1207:
                          if (v694)
                          {
                            free(v694);
                          }

                          v510 = v907;
                          goto LABEL_1210;
                        }

                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v831 = _os_log_send_and_compose_impl();
                        aBlock[0] = 16;
                        v928[0] = 0;
                        if (!__nwlog_fault(v831, aBlock, v928))
                        {
                          goto LABEL_1672;
                        }

                        if (aBlock[0] == 17)
                        {
                          v832 = __nwlog_obj();
                          v833 = aBlock[0];
                          if (os_log_type_enabled(v832, aBlock[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v834 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1671:
                            _os_log_impl(&dword_181A37000, v832, v833, v834, buf, 0xCu);
                          }
                        }

                        else if (v928[0] == 1)
                        {
                          v869 = __nw_create_backtrace_string();
                          v832 = __nwlog_obj();
                          v833 = aBlock[0];
                          v870 = os_log_type_enabled(v832, aBlock[0]);
                          if (v869)
                          {
                            if (v870)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2082;
                              *&buf[14] = v869;
                              _os_log_impl(&dword_181A37000, v832, v833, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v869);
                            goto LABEL_1672;
                          }

                          if (v870)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v834 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                            goto LABEL_1671;
                          }
                        }

                        else
                        {
                          v832 = __nwlog_obj();
                          v833 = aBlock[0];
                          if (os_log_type_enabled(v832, aBlock[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v834 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                            goto LABEL_1671;
                          }
                        }

LABEL_1672:
                        if (v831)
                        {
                          free(v831);
                        }

                        v690 = 0;
LABEL_1220:
                        v510 = v907;
                        goto LABEL_1222;
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_http1_set_up_association";
                      v827 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      aBlock[0] = 0;
                      if (__nwlog_fault(v827, type, aBlock))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v828 = __nwlog_obj();
                          v829 = type[0];
                          if (!os_log_type_enabled(v828, type[0]))
                          {
                            goto LABEL_1665;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          v830 = "%{public}s called with null parameters";
LABEL_1664:
                          _os_log_impl(&dword_181A37000, v828, v829, v830, buf, 0xCu);
                          goto LABEL_1665;
                        }

                        if (aBlock[0] != 1)
                        {
                          v828 = __nwlog_obj();
                          v829 = type[0];
                          if (!os_log_type_enabled(v828, type[0]))
                          {
                            goto LABEL_1665;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          v830 = "%{public}s called with null parameters, backtrace limit exceeded";
                          goto LABEL_1664;
                        }

                        v867 = __nw_create_backtrace_string();
                        v828 = __nwlog_obj();
                        v829 = type[0];
                        v868 = os_log_type_enabled(v828, type[0]);
                        if (!v867)
                        {
                          if (!v868)
                          {
                            goto LABEL_1665;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          v830 = "%{public}s called with null parameters, no backtrace";
                          goto LABEL_1664;
                        }

                        if (v868)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          *&buf[12] = 2082;
                          *&buf[14] = v867;
                          _os_log_impl(&dword_181A37000, v828, v829, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v867);
                      }

LABEL_1665:
                      if (v827)
                      {
                        free(v827);
                      }

                      v551 = *(v514 + 512);
                      if (v551)
                      {
                        goto LABEL_895;
                      }

                      goto LABEL_897;
                    }
                  }

                  goto LABEL_1675;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_create";
                v803 = _os_log_send_and_compose_impl();
                v928[0] = 16;
                v911[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v803, v928, v911))
                {
                  if (v928[0] == 17)
                  {
                    v804 = __nwlog_obj();
                    v805 = v928[0];
                    if (!os_log_type_enabled(v804, v928[0]))
                    {
                      goto LABEL_1621;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v806 = "%{public}s called with null parameters";
                    goto LABEL_1620;
                  }

                  if (v911[0] != OS_LOG_TYPE_INFO)
                  {
                    v804 = __nwlog_obj();
                    v805 = v928[0];
                    if (!os_log_type_enabled(v804, v928[0]))
                    {
                      goto LABEL_1621;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v806 = "%{public}s called with null parameters, backtrace limit exceeded";
                    goto LABEL_1620;
                  }

                  v861 = __nw_create_backtrace_string();
                  v804 = __nwlog_obj();
                  v805 = v928[0];
                  v864 = os_log_type_enabled(v804, v928[0]);
                  if (!v861)
                  {
                    if (!v864)
                    {
                      goto LABEL_1621;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v806 = "%{public}s called with null parameters, no backtrace";
                    goto LABEL_1620;
                  }

                  if (v864)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_connection_create";
                    *&buf[12] = 2082;
                    *&buf[14] = v861;
                    v863 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
                    goto LABEL_1495;
                  }

                  goto LABEL_1496;
                }

LABEL_1621:
                if (!v803)
                {
                  goto LABEL_1623;
                }

                goto LABEL_1622;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v803 = _os_log_send_and_compose_impl();
              v928[0] = 16;
              v911[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v803, v928, v911))
              {
                goto LABEL_1621;
              }

              if (v928[0] != 17)
              {
                if (v911[0] != OS_LOG_TYPE_INFO)
                {
                  v804 = __nwlog_obj();
                  v805 = v928[0];
                  if (!os_log_type_enabled(v804, v928[0]))
                  {
                    goto LABEL_1621;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v806 = "%{public}s called with null endpoint, backtrace limit exceeded";
                  goto LABEL_1620;
                }

                v861 = __nw_create_backtrace_string();
                v804 = __nwlog_obj();
                v805 = v928[0];
                v862 = os_log_type_enabled(v804, v928[0]);
                if (!v861)
                {
                  if (!v862)
                  {
                    goto LABEL_1621;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v806 = "%{public}s called with null endpoint, no backtrace";
                  goto LABEL_1620;
                }

                if (v862)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v861;
                  v863 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1495:
                  _os_log_impl(&dword_181A37000, v804, v805, v863, buf, 0x16u);
                }

LABEL_1496:
                free(v861);
                if (!v803)
                {
LABEL_1623:
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  v890 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  aBlock[0] = 0;
                  if (!__nwlog_fault(v890, type, aBlock))
                  {
                    goto LABEL_1637;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v891 = __nwlog_obj();
                    v892 = type[0];
                    if (!os_log_type_enabled(v891, type[0]))
                    {
                      goto LABEL_1637;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    v893 = "%{public}s called with null http1_connection";
                  }

                  else if (aBlock[0] == 1)
                  {
                    v894 = __nw_create_backtrace_string();
                    v891 = __nwlog_obj();
                    v892 = type[0];
                    v895 = os_log_type_enabled(v891, type[0]);
                    if (v894)
                    {
                      if (v895)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v894;
                        _os_log_impl(&dword_181A37000, v891, v892, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v894);
LABEL_1637:
                      if (v890)
                      {
                        free(v890);
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      v896 = _os_log_send_and_compose_impl();
                      aBlock[0] = 16;
                      v928[0] = 0;
                      if (!__nwlog_fault(v896, aBlock, v928))
                      {
                        goto LABEL_1653;
                      }

                      if (aBlock[0] == 17)
                      {
                        v897 = __nwlog_obj();
                        v898 = aBlock[0];
                        if (os_log_type_enabled(v897, aBlock[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v899 = "%{public}s called with null http1_connection";
LABEL_1652:
                          _os_log_impl(&dword_181A37000, v897, v898, v899, buf, 0xCu);
                        }
                      }

                      else if (v928[0] == 1)
                      {
                        v900 = __nw_create_backtrace_string();
                        v897 = __nwlog_obj();
                        v898 = aBlock[0];
                        v901 = os_log_type_enabled(v897, aBlock[0]);
                        if (v900)
                        {
                          if (v901)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v900;
                            _os_log_impl(&dword_181A37000, v897, v898, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v900);
                          goto LABEL_1653;
                        }

                        if (v901)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v899 = "%{public}s called with null http1_connection, no backtrace";
                          goto LABEL_1652;
                        }
                      }

                      else
                      {
                        v897 = __nwlog_obj();
                        v898 = aBlock[0];
                        if (os_log_type_enabled(v897, aBlock[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v899 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                          goto LABEL_1652;
                        }
                      }

LABEL_1653:
                      if (v896)
                      {
                        free(v896);
                      }

                      v514 = 0;
                      v690 = 1;
                      goto LABEL_1220;
                    }

                    if (!v895)
                    {
                      goto LABEL_1637;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    v893 = "%{public}s called with null http1_connection, no backtrace";
                  }

                  else
                  {
                    v891 = __nwlog_obj();
                    v892 = type[0];
                    if (!os_log_type_enabled(v891, type[0]))
                    {
                      goto LABEL_1637;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    v893 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_181A37000, v891, v892, v893, buf, 0xCu);
                  goto LABEL_1637;
                }

LABEL_1622:
                free(v803);
                goto LABEL_1623;
              }

              v804 = __nwlog_obj();
              v805 = v928[0];
              if (!os_log_type_enabled(v804, v928[0]))
              {
                goto LABEL_1621;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v806 = "%{public}s called with null endpoint";
            }

            else
            {
              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v803 = _os_log_send_and_compose_impl();
              v928[0] = 16;
              v911[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v803, v928, v911))
              {
                goto LABEL_1621;
              }

              if (v928[0] != 17)
              {
                if (v911[0] != OS_LOG_TYPE_INFO)
                {
                  v804 = __nwlog_obj();
                  v805 = v928[0];
                  if (!os_log_type_enabled(v804, v928[0]))
                  {
                    goto LABEL_1621;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v806 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  goto LABEL_1620;
                }

                v857 = __nw_create_backtrace_string();
                v804 = __nwlog_obj();
                v805 = v928[0];
                v858 = os_log_type_enabled(v804, v928[0]);
                if (!v857)
                {
                  if (!v858)
                  {
                    goto LABEL_1621;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v806 = "%{public}s called with null output_handler, no backtrace";
                  goto LABEL_1620;
                }

                if (v858)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v857;
                  _os_log_impl(&dword_181A37000, v804, v805, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v857);
                goto LABEL_1621;
              }

              v804 = __nwlog_obj();
              v805 = v928[0];
              if (!os_log_type_enabled(v804, v928[0]))
              {
                goto LABEL_1621;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v806 = "%{public}s called with null output_handler";
            }

LABEL_1620:
            _os_log_impl(&dword_181A37000, v804, v805, v806, buf, 0xCu);
            goto LABEL_1621;
          }

          v515 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
          *v911 = 0;
          v912 = v911;
          v913 = 0x2000000000;
          v914 = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3802000000;
          v932 = __Block_byref_object_copy__42960;
          *v933 = __Block_byref_object_dispose__42961;
          *&v933[8] = 0;
          v933[16] |= 1u;
          *type = MEMORY[0x1E69E9820];
          v917 = 0x40000000;
          v918 = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke;
          v919 = &unk_1E6A328B8;
          v920 = v911;
          v921 = buf;
          v922 = v13;
          nw_protocol_stack_iterate_application_protocols(v515, type);
          v516 = *(*&buf[8] + 40);
          if (v516)
          {
            v517 = v516;
            *aBlock = 0;
            *&aBlock[8] = aBlock;
            *&aBlock[16] = 0x2000000000;
            LOBYTE(v924) = 0;
            *v928 = MEMORY[0x1E69E9820];
            *&v928[8] = 0x40000000;
            *&v928[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2;
            v929 = &unk_1E6A328E0;
            v930 = aBlock;
            nw_sec_protocol_options_iterate_application_protocols(v517, 1, v928);
            if (*(*&aBlock[8] + 24) == 1)
            {
              sec_protocol_options_clear_tls_application_protocols();
              sec_protocol_options_add_tls_application_protocol(v517, "http/1.1");
            }

            _Block_object_dispose(aBlock, 8);
            os_release(v517);
          }

          nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(v515, v13);
          *(v13 + 428) |= 0x10u;
          v518 = *(v7 + 352) + 1;
          *(v7 + 352) = v518;
          if (v518 == v518 << 31 >> 31)
          {
LABEL_993:
            v612 = *(v13 + 312);
            v613 = *(v13 + 264);
            *aBlock = MEMORY[0x1E69E9820];
            *&aBlock[8] = 0x40000000;
            *&aBlock[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76;
            v924 = &unk_1E6A32908;
            *v925 = v612;
            nw_queue_context_async(v613, aBlock);
            _Block_object_dispose(buf, 8);
            if ((v933[16] & 1) != 0 && *&v933[8])
            {
              os_release(*&v933[8]);
            }

            _Block_object_dispose(v911, 8);
            if (!v515)
            {
              return 1;
            }

LABEL_1238:
            os_release(v515);
            return 1;
          }

          __nwlog_obj();
          v519 = *(v7 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v924 = 1;
          *v925 = 2048;
          *&v925[2] = v519;
          v520 = _os_log_send_and_compose_impl();
          v915 = OS_LOG_TYPE_ERROR;
          v910 = 0;
          if (__nwlog_fault(v520, &v915, &v910))
          {
            if (v915 == OS_LOG_TYPE_FAULT)
            {
              v521 = __nwlog_obj();
              v522 = v915;
              if (os_log_type_enabled(v521, v915))
              {
                v523 = *(v7 + 352);
                *aBlock = 136446978;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v924 = 1;
                *v925 = 2048;
                *&v925[2] = v523;
                v524 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_989:
                _os_log_impl(&dword_181A37000, v521, v522, v524, aBlock, 0x2Au);
              }
            }

            else if (v910 == 1)
            {
              v563 = __nw_create_backtrace_string();
              v521 = __nwlog_obj();
              v522 = v915;
              v564 = os_log_type_enabled(v521, v915);
              if (v563)
              {
                if (v564)
                {
                  v565 = *(v7 + 352);
                  *aBlock = 136447234;
                  *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->pending_output_handler_count";
                  *&aBlock[22] = 2048;
                  v924 = 1;
                  *v925 = 2048;
                  *&v925[2] = v565;
                  v926 = 2082;
                  v927 = v563;
                  _os_log_impl(&dword_181A37000, v521, v522, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                }

                free(v563);
                goto LABEL_990;
              }

              if (v564)
              {
                v611 = *(v7 + 352);
                *aBlock = 136446978;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v924 = 1;
                *v925 = 2048;
                *&v925[2] = v611;
                v524 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_989;
              }
            }

            else
            {
              v521 = __nwlog_obj();
              v522 = v915;
              if (os_log_type_enabled(v521, v915))
              {
                v567 = *(v7 + 352);
                *aBlock = 136446978;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v924 = 1;
                *v925 = 2048;
                *&v925[2] = v567;
                v524 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_989;
              }
            }
          }

LABEL_990:
          if (v520)
          {
            free(v520);
          }

          *(v7 + 352) = -1;
          goto LABEL_993;
        }

        if ((*(v7 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
        {
          v852 = v8;
          v853 = __nwlog_obj();
          v854 = os_log_type_enabled(v853, OS_LOG_TYPE_DEBUG);
          v8 = v852;
          if (v854)
          {
            v855 = *(v7 + 372);
            v856 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 74;
            *&buf[22] = 2080;
            v932 = " ";
            *v933 = 1024;
            *&v933[2] = v855;
            *&v933[6] = 1024;
            *&v933[8] = v856;
            *&v933[12] = 2048;
            *&v933[14] = v13;
            _os_log_impl(&dword_181A37000, v853, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
            v8 = v852;
          }
        }

        if ((*(v13 + 428) & 0x2000) == 0)
        {
          v120 = v8;
          __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2048;
          *&buf[14] = v13;
          v121 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v121, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v122 = __nwlog_obj();
              v123 = type[0];
              if (os_log_type_enabled(v122, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                v124 = "%{public}s stream %p not in pending list, cannot remove";
LABEL_765:
                _os_log_impl(&dword_181A37000, v122, v123, v124, buf, 0x16u);
              }
            }

            else if (aBlock[0] == 1)
            {
              v295 = __nw_create_backtrace_string();
              v122 = __nwlog_obj();
              v123 = type[0];
              v296 = os_log_type_enabled(v122, type[0]);
              if (v295)
              {
                if (v296)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_remove_pending_stream";
                  *&buf[12] = 2048;
                  *&buf[14] = v13;
                  *&buf[22] = 2082;
                  v932 = v295;
                  _os_log_impl(&dword_181A37000, v122, v123, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v295);
                goto LABEL_766;
              }

              if (v296)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                v124 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
                goto LABEL_765;
              }
            }

            else
            {
              v122 = __nwlog_obj();
              v123 = type[0];
              if (os_log_type_enabled(v122, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                v124 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
                goto LABEL_765;
              }
            }
          }

LABEL_766:
          if (v121)
          {
            free(v121);
          }

          v8 = v120;
          goto LABEL_836;
        }

        v264 = *(v13 + 296);
        v265 = *(v13 + 304);
        v266 = (v7 + 256);
        if (v264)
        {
          v266 = (v264 + 304);
        }

        *v266 = v265;
        *v265 = v264;
        *(v13 + 296) = 0;
        *(v13 + 304) = 0;
        v267 = *(v7 + 348);
        *(v7 + 348) = v267 - 1;
        if (v267)
        {
LABEL_834:
          *(v13 + 428) &= ~0x2000u;
          if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
          {
            v871 = v8;
            v872 = __nwlog_obj();
            v873 = os_log_type_enabled(v872, OS_LOG_TYPE_DEBUG);
            v8 = v871;
            if (v873)
            {
              v874 = *(v13 + 256);
              v875 = *(*(v13 + 248) + 372);
              if (v874)
              {
                LODWORD(v874) = *(v874 + 860);
              }

              v876 = *(v13 + 424);
              v877 = *(v7 + 348);
              *buf = 136448258;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v875;
              *&v933[6] = 1024;
              *&v933[8] = v874;
              *&v933[12] = 1024;
              *&v933[14] = v876;
              *&v933[18] = 1024;
              *&v933[20] = v876;
              *&v933[24] = 2048;
              *&v933[26] = v13;
              *&v933[34] = 1024;
              *&v933[36] = v877;
              _os_log_impl(&dword_181A37000, v872, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
              v8 = v871;
            }
          }

          goto LABEL_836;
        }

        v268 = v8;
        __nwlog_obj();
        v269 = *(v7 + 348);
        *buf = 136446978;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = "http1->pending_stream_count";
        *&buf[22] = 2048;
        v932 = 1;
        *v933 = 2048;
        *&v933[2] = v269;
        v270 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (__nwlog_fault(v270, type, aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v271 = __nwlog_obj();
            v272 = type[0];
            if (os_log_type_enabled(v271, type[0]))
            {
              v273 = *(v7 + 348);
              *buf = 136446978;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_stream_count";
              *&buf[22] = 2048;
              v932 = 1;
              *v933 = 2048;
              *&v933[2] = v273;
              v274 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_830:
              _os_log_impl(&dword_181A37000, v271, v272, v274, buf, 0x2Au);
            }
          }

          else if (aBlock[0] == 1)
          {
            v419 = __nw_create_backtrace_string();
            v271 = __nwlog_obj();
            v272 = type[0];
            v420 = os_log_type_enabled(v271, type[0]);
            if (v419)
            {
              if (v420)
              {
                v421 = *(v7 + 348);
                *buf = 136447234;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2082;
                *&buf[14] = "http1->pending_stream_count";
                *&buf[22] = 2048;
                v932 = 1;
                *v933 = 2048;
                *&v933[2] = v421;
                *&v933[10] = 2082;
                *&v933[12] = v419;
                _os_log_impl(&dword_181A37000, v271, v272, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v419);
              goto LABEL_831;
            }

            if (v420)
            {
              v509 = *(v7 + 348);
              *buf = 136446978;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_stream_count";
              *&buf[22] = 2048;
              v932 = 1;
              *v933 = 2048;
              *&v933[2] = v509;
              v274 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_830;
            }
          }

          else
          {
            v271 = __nwlog_obj();
            v272 = type[0];
            if (os_log_type_enabled(v271, type[0]))
            {
              v463 = *(v7 + 348);
              *buf = 136446978;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_stream_count";
              *&buf[22] = 2048;
              v932 = 1;
              *v933 = 2048;
              *&v933[2] = v463;
              v274 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_830;
            }
          }
        }

LABEL_831:
        if (v270)
        {
          free(v270);
        }

        *(v7 + 348) = 0;
        v8 = v268;
        goto LABEL_834;
      }

      if (!*(v13 + 32))
      {
        v45 = v8;
        if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
        {
          v199 = __nwlog_obj();
          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
          {
            v200 = *(v13 + 256);
            v201 = *(*(v13 + 248) + 372);
            if (v200)
            {
              LODWORD(v200) = *(v200 + 860);
            }

            v202 = *(v13 + 424);
            *buf = 136447746;
            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v932 = " ";
            *v933 = 1024;
            *&v933[2] = v201;
            *&v933[6] = 1024;
            *&v933[8] = v200;
            *&v933[12] = 1024;
            *&v933[14] = v202;
            *&v933[18] = 2048;
            *&v933[20] = v13;
            v50 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
            v51 = v199;
            v52 = 60;
            goto LABEL_89;
          }
        }

        goto LABEL_90;
      }

      if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
      {
        v767 = __nwlog_obj();
        if (os_log_type_enabled(v767, OS_LOG_TYPE_DEBUG))
        {
          v768 = *(v13 + 256);
          v769 = *(*(v13 + 248) + 372);
          if (v768)
          {
            LODWORD(v768) = *(v768 + 860);
          }

          v770 = *(v13 + 424);
          v771 = *(v13 + 32);
          *buf = 136448002;
          *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 74;
          *&buf[22] = 2080;
          v932 = " ";
          *v933 = 1024;
          *&v933[2] = v769;
          *&v933[6] = 1024;
          *&v933[8] = v768;
          *&v933[12] = 1024;
          *&v933[14] = v770;
          *&v933[18] = 2048;
          *&v933[20] = v13;
          *&v933[28] = 2048;
          *&v933[30] = v771;
          _os_log_impl(&dword_181A37000, v767, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
        }
      }

      v138 = *(v13 + 32);
      v902 = v7;
      if (v138)
      {
        v139 = *(v13 + 336);
        if (v139)
        {
          v140 = *(v13 + 320);
          if (v140)
          {
            v141 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
            v142 = v141;
            if (v141)
            {
              bzero(v141, 0x370uLL);
              nw_http1_connection::nw_http1_connection(v142);
              goto LABEL_315;
            }

            v209 = __nwlog_obj();
            os_log_type_enabled(v209, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            v932 = 880;
            v210 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v210);
            if (!result)
            {
              free(v210);
              bzero(0, 0x370uLL);
              nw_http1_connection::nw_http1_connection(0);
              v211 = __nwlog_obj();
              os_log_type_enabled(v211, OS_LOG_TYPE_ERROR);
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v212 = _os_log_send_and_compose_impl();
              result = __nwlog_should_abort(v212);
              if (!result)
              {
                free(v212);
LABEL_315:
                if (nw_protocol_http1_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
                }

                *(v142 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
                if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
                {
                  dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
                }

                *(v142 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
                *(v142 + 184) = 3;
                *(v142 + 176) = v142;
                *(v142 + 40) = v142 + 160;
                *(v142 + 480) = v7;
                nw_protocol_set_output_handler(v142, v138);
                *buf = os_retain(v139);
                nw::retained_ptr<nw_endpoint *>::operator=(v142 + 752, buf);
                *buf = os_retain(v140);
                nw::retained_ptr<nw_endpoint *>::operator=(v142 + 736, buf);
                *buf = _nw_parameters_copy_context(v140);
                nw::retained_ptr<nw_endpoint *>::operator=(v142 + 496, buf);
                *(v142 + 192) = *(v7 + 192);
                v213 = *(v142 + 496);
                *type = MEMORY[0x1E69E9820];
                v917 = 0x40000000;
                v918 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
                v919 = &__block_descriptor_tmp_43_43000;
                v920 = v142;
                *buf = nw_http_connection_create_metadata(v213, type, 0);
                nw::retained_ptr<nw_endpoint *>::operator=(v142 + 768, buf);
                nw_http_connection_metadata_set_version(*(v142 + 768), 3);
                nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v142 + 768), *(v7 + 312));
                *(v142 + 616) = 0;
                *(v142 + 624) = v142 + 616;
                *(v142 + 632) = 0;
                *(v142 + 640) = v142 + 632;
                *(v142 + 648) = 0;
                *(v142 + 656) = v142 + 648;
                *(v142 + 664) = 0;
                *(v142 + 672) = v142 + 664;
                *(v142 + 680) = 0;
                *(v142 + 688) = v142 + 680;
                nw_frame_cache_init(v142 + 696, v142, 256, 0x40000, 16);
                v214 = *(v142 + 480);
                if (v214)
                {
                  *(v142 + 360) = 0u;
                  *(v142 + 376) = 0u;
                  *(v142 + 392) = 0u;
                  *(v142 + 408) = 0u;
                  *(v142 + 424) = 0u;
                  *(v142 + 440) = 0u;
                  *(v142 + 328) = 0u;
                  *(v142 + 344) = 0u;
                  *(v142 + 296) = nw_http1_on_message_begin;
                  *(v142 + 384) = nw_http1_on_message_complete;
                  *(v142 + 368) = nw_http1_on_headers_complete;
                  *(v142 + 472) = nw_http1_on_reset;
                  *(v142 + 320) = nw_http1_on_method;
                  *(v142 + 408) = nw_http1_on_method_complete;
                  *(v142 + 304) = nw_http1_on_url;
                  *(v142 + 392) = nw_http1_on_url_complete;
                  *(v142 + 312) = nw_http1_on_status;
                  *(v142 + 400) = nw_http1_on_status_complete;
                  *(v142 + 336) = nw_http1_on_header_field;
                  *(v142 + 424) = nw_http1_on_header_field_complete;
                  *(v142 + 344) = nw_http1_on_header_value;
                  *(v142 + 432) = nw_http1_on_header_value_complete;
                  *(v142 + 376) = nw_http1_on_body;
                  *(v142 + 456) = nw_http1_on_chunk_header;
                  *(v142 + 464) = nw_http1_on_chunk_complete;
                  v215 = *(v214 + 376);
                  *(v142 + 248) = 0u;
                  *(v142 + 200) = 0u;
                  *(v142 + 264) = 0u;
                  *(v142 + 232) = 0u;
                  *(v142 + 216) = 0u;
                  if (v215)
                  {
                    v216 = 1;
                  }

                  else
                  {
                    v216 = 2;
                  }

                  *(v142 + 272) = v216;
                  *(v142 + 280) = 0;
                  *(v142 + 288) = v142 + 296;
                  *(v142 + 278) = 16131;
                  *(v142 + 248) = v142;
                  *(v142 + 256) = 237;
                  if ((*(v142 + 158) & 1) == 0)
                  {
                    v217 = __nwlog_obj();
                    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
                    {
                      v218 = *(v142 + 488);
                      v219 = *(*(v142 + 480) + 372);
                      v220 = *(v142 + 860);
                      if (v218)
                      {
                        LODWORD(v218) = *(v218 + 424);
                      }

                      *buf = 136448258;
                      *&buf[4] = "nw_http1_connection_log_parser_version";
                      *&buf[12] = 2082;
                      *&buf[14] = v142 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v219;
                      *&v933[6] = 1024;
                      *&v933[8] = v220;
                      *&v933[12] = 1024;
                      *&v933[14] = v218;
                      *&v933[18] = 1024;
                      *&v933[20] = 9;
                      *&v933[24] = 1024;
                      *&v933[26] = 2;
                      *&v933[30] = 1024;
                      *&v933[32] = 1;
                      _os_log_impl(&dword_181A37000, v217, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
                    }
                  }

                  goto LABEL_328;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v772 = _os_log_send_and_compose_impl();
                v928[0] = 16;
                v911[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v772, v928, v911))
                {
                  if (v928[0] == 17)
                  {
                    v773 = __nwlog_obj();
                    v774 = v928[0];
                    if (!os_log_type_enabled(v773, v928[0]))
                    {
                      goto LABEL_1586;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_parser_init";
                    v775 = "%{public}s called with null http1_connection->protocol_http1";
                    goto LABEL_1585;
                  }

                  if (v911[0] != OS_LOG_TYPE_INFO)
                  {
                    v773 = __nwlog_obj();
                    v774 = v928[0];
                    if (!os_log_type_enabled(v773, v928[0]))
                    {
                      goto LABEL_1586;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_parser_init";
                    v775 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                    goto LABEL_1585;
                  }

                  v844 = __nw_create_backtrace_string();
                  v773 = __nwlog_obj();
                  v774 = v928[0];
                  v845 = os_log_type_enabled(v773, v928[0]);
                  if (v844)
                  {
                    if (v845)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_connection_parser_init";
                      *&buf[12] = 2082;
                      *&buf[14] = v844;
                      _os_log_impl(&dword_181A37000, v773, v774, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v844);
                    goto LABEL_1586;
                  }

                  if (v845)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_parser_init";
                    v775 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
LABEL_1585:
                    _os_log_impl(&dword_181A37000, v773, v774, v775, buf, 0xCu);
                  }
                }

LABEL_1586:
                if (v772)
                {
                  free(v772);
                }

LABEL_328:
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2000000000;
                v932 = v142;
                *aBlock = MEMORY[0x1E69E9820];
                *&aBlock[8] = 0x40000000;
                *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
                v924 = &unk_1E6A32758;
                *v925 = buf;
                *(v142 + 608) = _Block_copy(aBlock);
                _Block_object_dispose(buf, 8);
                if ((*(v142 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v784 = __nwlog_obj();
                  if (os_log_type_enabled(v784, OS_LOG_TYPE_DEBUG))
                  {
                    v785 = *(v142 + 488);
                    v786 = *(*(v142 + 480) + 372);
                    v787 = *(v142 + 860);
                    if (v785)
                    {
                      LODWORD(v785) = *(v785 + 424);
                    }

                    *buf = 136447746;
                    *&buf[4] = "nw_http1_connection_create";
                    *&buf[12] = 2082;
                    *&buf[14] = v142 + 74;
                    *&buf[22] = 2080;
                    v932 = " ";
                    *v933 = 1024;
                    *&v933[2] = v786;
                    *&v933[6] = 1024;
                    *&v933[8] = v787;
                    *&v933[12] = 1024;
                    *&v933[14] = v785;
                    *&v933[18] = 2048;
                    *&v933[20] = v142;
                    _os_log_impl(&dword_181A37000, v784, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                  }
                }

                nw_protocol_replace_input_handler(v138, v13, v142);
                *v142 = *v138;
                v221 = *(v142 + 736);
                if (v221)
                {
                  if (!*(v142 + 528))
                  {
                    v222 = _nw_parameters_copy_context(*(v142 + 736));
                    *buf = nw_path_copy_flow_registration(v222, v142);
                    v223 = (v142 + 560);
                    nw::retained_ptr<nw_endpoint *>::operator=(v142 + 560, buf);
                    v224 = *(v142 + 560);
                    if (v224)
                    {
                      v225 = nw_path_flow_registration_copy_endpoint(v224);
                      v226 = nw_path_flow_registration_copy_parameters(*v223);
                      *buf = nw_endpoint_copy_association_with_evaluator(v225, v226, 0);
                      nw::retained_ptr<nw_endpoint *>::operator=(v142 + 528, buf);
                      if (*(v142 + 528))
                      {
                        *buf = nw_protocol_instance_stub_create(v142);
                        nw::retained_ptr<nw_endpoint *>::operator=(v142 + 544, buf);
                        nw_association_register_internal(*(v142 + 528), v221, *(v142 + 544), 0, 0, &__block_literal_global_69_43019);
                        v227 = nw_association_copy_current_path(*(v142 + 528), v226);
                        if (v227)
                        {
                          v228 = v227;
                          v229 = nw_path_copy_for_flow_registration(v227, *v223);
                          if (v229)
                          {
                            v230 = v229;
                            if (*(v142 + 512) != v229)
                            {
                              *buf = os_retain(v229);
                              nw::retained_ptr<nw_endpoint *>::operator=(v142 + 512, buf);
                            }

                            if (nw_path_has_flows(v230))
                            {
                              v231 = 4096;
                            }

                            else
                            {
                              v231 = 0;
                            }

                            *(v142 + 872) = *(v142 + 872) & 0xEFFF | v231;
                            v232 = _nw_parameters_copy_effective_proxy_config(v221);
                            if (v232)
                            {
                              v233 = v232;
                              if (nw_path_has_proxy_config(v228, v232))
                              {
                                *buf = os_retain(v233);
                                nw::retained_ptr<nw_endpoint *>::operator=(v142 + 576, buf);
                              }

                              os_release(v233);
                            }

                            os_release(v230);
                          }

                          os_release(v228);
                        }
                      }

                      if (v226)
                      {
                        os_release(v226);
                      }

                      if (v225)
                      {
                        os_release(v225);
                      }
                    }

                    if (v222)
                    {
                      os_release(v222);
                    }
                  }

                  v234 = *(v142 + 512);
                  if (v234)
                  {
LABEL_354:
                    if (_nw_path_uses_interface_type(v234, 2u))
                    {
                      *(v142 + 192) = 1000;
                    }
                  }

LABEL_356:
                  v7 = v902;
                  v235 = *(v902 + 336) + 1;
                  *(v902 + 336) = v235;
                  if (v235 == v235 << 31 >> 31)
                  {
                    goto LABEL_620;
                  }

                  __nwlog_obj();
                  v236 = *(v902 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v236;
                  v237 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  aBlock[0] = 0;
                  if (__nwlog_fault(v237, type, aBlock))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v238 = __nwlog_obj();
                      v239 = type[0];
                      if (os_log_type_enabled(v238, type[0]))
                      {
                        v240 = *(v902 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v240;
                        v241 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_616:
                        _os_log_impl(&dword_181A37000, v238, v239, v241, buf, 0x2Au);
                      }
                    }

                    else if (aBlock[0] == 1)
                    {
                      v247 = __nw_create_backtrace_string();
                      v238 = __nwlog_obj();
                      v239 = type[0];
                      v248 = os_log_type_enabled(v238, type[0]);
                      if (v247)
                      {
                        if (v248)
                        {
                          v249 = *(v902 + 336);
                          *buf = 136447234;
                          *&buf[4] = "nw_http1_add_connection_for_output_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->connections_count";
                          *&buf[22] = 2048;
                          v932 = 1;
                          *v933 = 2048;
                          *&v933[2] = v249;
                          *&v933[10] = 2082;
                          *&v933[12] = v247;
                          _os_log_impl(&dword_181A37000, v238, v239, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v247);
                        v7 = v902;
                        goto LABEL_617;
                      }

                      v7 = v902;
                      if (v248)
                      {
                        v381 = *(v902 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v381;
                        v241 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                        goto LABEL_616;
                      }
                    }

                    else
                    {
                      v238 = __nwlog_obj();
                      v239 = type[0];
                      if (os_log_type_enabled(v238, type[0]))
                      {
                        v290 = *(v902 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v290;
                        v241 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                        goto LABEL_616;
                      }
                    }
                  }

LABEL_617:
                  if (v237)
                  {
                    free(v237);
                  }

                  *(v7 + 336) = -1;
LABEL_620:
                  v382 = *(v7 + 360) + 1;
                  *(v7 + 360) = v382;
                  if (v382 == v382 << 31 >> 31)
                  {
                    goto LABEL_638;
                  }

                  __nwlog_obj();
                  v383 = *(v7 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v383;
                  v384 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  aBlock[0] = 0;
                  if (__nwlog_fault(v384, type, aBlock))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v385 = __nwlog_obj();
                      v386 = type[0];
                      if (os_log_type_enabled(v385, type[0]))
                      {
                        v387 = *(v7 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v387;
                        v388 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_634:
                        _os_log_impl(&dword_181A37000, v385, v386, v388, buf, 0x2Au);
                      }
                    }

                    else if (aBlock[0] == 1)
                    {
                      v389 = __nw_create_backtrace_string();
                      v385 = __nwlog_obj();
                      v386 = type[0];
                      v390 = os_log_type_enabled(v385, type[0]);
                      if (v389)
                      {
                        if (v390)
                        {
                          v391 = *(v902 + 360);
                          *buf = 136447234;
                          *&buf[4] = "nw_http1_add_connection_for_output_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->next_connection_log_num";
                          *&buf[22] = 2048;
                          v932 = 1;
                          *v933 = 2048;
                          *&v933[2] = v391;
                          *&v933[10] = 2082;
                          *&v933[12] = v389;
                          _os_log_impl(&dword_181A37000, v385, v386, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v389);
                        v7 = v902;
                        goto LABEL_635;
                      }

                      v7 = v902;
                      if (v390)
                      {
                        v393 = *(v902 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v393;
                        v388 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                        goto LABEL_634;
                      }
                    }

                    else
                    {
                      v385 = __nwlog_obj();
                      v386 = type[0];
                      if (os_log_type_enabled(v385, type[0]))
                      {
                        v392 = *(v7 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v932 = 1;
                        *v933 = 2048;
                        *&v933[2] = v392;
                        v388 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                        goto LABEL_634;
                      }
                    }
                  }

LABEL_635:
                  if (v384)
                  {
                    free(v384);
                  }

                  LODWORD(v382) = -1;
                  *(v7 + 360) = -1;
LABEL_638:
                  *(v142 + 860) = v382;
                  if ((*(v142 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v788 = __nwlog_obj();
                    if (os_log_type_enabled(v788, OS_LOG_TYPE_DEBUG))
                    {
                      v789 = *(v142 + 488);
                      v790 = *(*(v142 + 480) + 372);
                      v791 = *(v142 + 860);
                      if (v789)
                      {
                        LODWORD(v789) = *(v789 + 424);
                      }

                      v7 = v902;
                      v792 = *(v902 + 336);
                      *buf = 136448002;
                      *&buf[4] = "nw_http1_add_connection_for_output_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v142 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v790;
                      *&v933[6] = 1024;
                      *&v933[8] = v791;
                      *&v933[12] = 1024;
                      *&v933[14] = v789;
                      *&v933[18] = 2048;
                      *&v933[20] = v142;
                      *&v933[28] = 1024;
                      *&v933[30] = v792;
                      _os_log_impl(&dword_181A37000, v788, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                    }
                  }

                  if (*(v13 + 248))
                  {
                    if (*(v142 + 488))
                    {
                      __nwlog_obj();
                      v394 = *(v142 + 488);
                      *buf = 136446722;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v142;
                      *&buf[22] = 2048;
                      v932 = v394;
                      v395 = _os_log_send_and_compose_impl();
                      aBlock[0] = 16;
                      v928[0] = 0;
                      if (!__nwlog_fault(v395, aBlock, v928))
                      {
                        goto LABEL_673;
                      }

                      if (aBlock[0] == 17)
                      {
                        v396 = __nwlog_obj();
                        v397 = aBlock[0];
                        if (!os_log_type_enabled(v396, aBlock[0]))
                        {
                          goto LABEL_673;
                        }

                        v398 = *(v142 + 488);
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v142;
                        *&buf[22] = 2048;
                        v932 = v398;
                        v399 = "%{public}s Connection %p already has a stream (%p)";
                      }

                      else if (v928[0] == 1)
                      {
                        v406 = __nw_create_backtrace_string();
                        v396 = __nwlog_obj();
                        v397 = aBlock[0];
                        v407 = os_log_type_enabled(v396, aBlock[0]);
                        if (v406)
                        {
                          if (v407)
                          {
                            v408 = *(v142 + 488);
                            *buf = 136446978;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2048;
                            *&buf[14] = v142;
                            *&buf[22] = 2048;
                            v932 = v408;
                            *v933 = 2082;
                            *&v933[2] = v406;
                            _os_log_impl(&dword_181A37000, v396, v397, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                          }

                          free(v406);
                          v7 = v902;
                          goto LABEL_673;
                        }

                        v7 = v902;
                        if (!v407)
                        {
LABEL_673:
                          if (v395)
                          {
                            free(v395);
                          }

                          goto LABEL_1092;
                        }

                        v418 = *(v142 + 488);
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v142;
                        *&buf[22] = 2048;
                        v932 = v418;
                        v399 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                      }

                      else
                      {
                        v396 = __nwlog_obj();
                        v397 = aBlock[0];
                        if (!os_log_type_enabled(v396, aBlock[0]))
                        {
                          goto LABEL_673;
                        }

                        v409 = *(v142 + 488);
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v142;
                        *&buf[22] = 2048;
                        v932 = v409;
                        v399 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                      }

                      _os_log_impl(&dword_181A37000, v396, v397, v399, buf, 0x20u);
                      goto LABEL_673;
                    }

                    *(v13 + 256) = v142;
                    *(v142 + 488) = v13;
                    v400 = *(v13 + 320);
                    if (v400)
                    {
                      v400 = os_retain(v400);
                    }

                    *buf = v400;
                    nw::retained_ptr<nw_endpoint *>::operator=(v142 + 736, buf);
                    if ((*(*(v13 + 248) + 376) & 2) == 0)
                    {
LABEL_1064:
                      v623 = *(v13 + 32);
                      if (!v623 || v623 == *(v142 + 32))
                      {
LABEL_1082:
                        nw_protocol_set_output_handler(v13, *(v142 + 32));
                        nw_protocol_set_input_handler(v142, *(v13 + 48));
                        *v13 = *v142;
                        v640 = *(v13 + 96);
                        v641 = *(v13 + 112);
                        v642 = *(v13 + 128);
                        *(v142 + 144) = *(v13 + 144);
                        v643 = *(v13 + 80);
                        *(v142 + 64) = *(v13 + 64);
                        *(v142 + 80) = v643;
                        *(v142 + 112) = v641;
                        *(v142 + 128) = v642;
                        *(v142 + 96) = v640;
                        *(v142 + 872) &= 0xFFD7u;
                        *(v142 + 864) = 1;
                        if ((*(v142 + 158) & 1) == 0)
                        {
                          v644 = __nwlog_obj();
                          if (os_log_type_enabled(v644, OS_LOG_TYPE_DEBUG))
                          {
                            v645 = *(v142 + 488);
                            v646 = *(*(v142 + 480) + 372);
                            v647 = *(v142 + 860);
                            if (v645)
                            {
                              LODWORD(v645) = *(v645 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_update_connection_input_state";
                            *&buf[12] = 2082;
                            *&buf[14] = v142 + 74;
                            *&buf[22] = 2080;
                            v932 = " ";
                            *v933 = 1024;
                            *&v933[2] = v646;
                            *&v933[6] = 1024;
                            *&v933[8] = v647;
                            *&v933[12] = 1024;
                            *&v933[14] = v645;
                            _os_log_impl(&dword_181A37000, v644, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                          }
                        }

                        if ((*(v13 + 158) & 1) == 0)
                        {
                          v648 = __nwlog_obj();
                          if (os_log_type_enabled(v648, OS_LOG_TYPE_INFO))
                          {
                            v649 = *(v13 + 256);
                            v650 = *(*(v13 + 248) + 372);
                            if (v649)
                            {
                              LODWORD(v649) = *(v649 + 860);
                            }

                            v651 = *(v13 + 424);
                            *buf = 136448002;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v13 + 74;
                            *&buf[22] = 2080;
                            v932 = " ";
                            *v933 = 1024;
                            *&v933[2] = v650;
                            *&v933[6] = 1024;
                            *&v933[8] = v649;
                            *&v933[12] = 1024;
                            *&v933[14] = v651;
                            *&v933[18] = 2048;
                            *&v933[20] = v13;
                            *&v933[28] = 2048;
                            *&v933[30] = v142;
                            _os_log_impl(&dword_181A37000, v648, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                          }
                        }

                        goto LABEL_1092;
                      }

                      __nwlog_obj();
                      v624 = *(v13 + 32);
                      v625 = *(v142 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v624;
                      *&buf[22] = 2048;
                      v932 = v13;
                      *v933 = 2048;
                      *&v933[2] = v625;
                      v626 = _os_log_send_and_compose_impl();
                      aBlock[0] = 16;
                      v928[0] = 0;
                      if (__nwlog_fault(v626, aBlock, v928))
                      {
                        if (aBlock[0] == 17)
                        {
                          v627 = __nwlog_obj();
                          v628 = aBlock[0];
                          if (!os_log_type_enabled(v627, aBlock[0]))
                          {
                            goto LABEL_1080;
                          }

                          v629 = *(v13 + 32);
                          v630 = *(v142 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v629;
                          *&buf[22] = 2048;
                          v932 = v13;
                          *v933 = 2048;
                          *&v933[2] = v630;
                          v631 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                          goto LABEL_1079;
                        }

                        if (v928[0] != 1)
                        {
                          v627 = __nwlog_obj();
                          v628 = aBlock[0];
                          v7 = v902;
                          if (!os_log_type_enabled(v627, aBlock[0]))
                          {
                            goto LABEL_1080;
                          }

                          v636 = *(v13 + 32);
                          v637 = *(v142 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v636;
                          *&buf[22] = 2048;
                          v932 = v13;
                          *v933 = 2048;
                          *&v933[2] = v637;
                          v631 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                          goto LABEL_1079;
                        }

                        v632 = __nw_create_backtrace_string();
                        v627 = __nwlog_obj();
                        v628 = aBlock[0];
                        v633 = os_log_type_enabled(v627, aBlock[0]);
                        if (v632)
                        {
                          if (v633)
                          {
                            v634 = *(v13 + 32);
                            v635 = *(v142 + 32);
                            *buf = 136447234;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2048;
                            *&buf[14] = v634;
                            *&buf[22] = 2048;
                            v932 = v13;
                            *v933 = 2048;
                            *&v933[2] = v635;
                            *&v933[10] = 2082;
                            *&v933[12] = v632;
                            _os_log_impl(&dword_181A37000, v627, v628, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                          }

                          free(v632);
                          v7 = v902;
                          goto LABEL_1080;
                        }

                        v7 = v902;
                        if (v633)
                        {
                          v638 = *(v13 + 32);
                          v639 = *(v142 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v638;
                          *&buf[22] = 2048;
                          v932 = v13;
                          *v933 = 2048;
                          *&v933[2] = v639;
                          v631 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_1079:
                          _os_log_impl(&dword_181A37000, v627, v628, v631, buf, 0x2Au);
                        }
                      }

LABEL_1080:
                      if (v626)
                      {
                        free(v626);
                      }

                      goto LABEL_1082;
                    }

                    v401 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
                    *aBlock = 0;
                    *&aBlock[8] = aBlock;
                    *&aBlock[16] = 0x2000000000;
                    LOBYTE(v924) = 0;
                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v932 = __Block_byref_object_copy__42960;
                    *v933 = __Block_byref_object_dispose__42961;
                    *&v933[8] = 0;
                    v933[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    v917 = 0x40000000;
                    v918 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                    v919 = &unk_1E6A32930;
                    v920 = aBlock;
                    v921 = buf;
                    v922 = v13;
                    nw_protocol_stack_iterate_application_protocols(v401, type);
                    if (*(*&buf[8] + 40))
                    {
                      v402 = v142;
                      while (1)
                      {
                        v402 = *(v402 + 32);
                        if (!v402)
                        {
                          break;
                        }

                        if (nw_protocol_is_tls_over_stream(v402))
                        {
                          v403 = *(*&buf[8] + 40);
                          v404 = nw_protocol_boringssl_copy_definition();
                          nw_parameters_set_protocol_instance(v403, v405, v402);
                          if (v404)
                          {
                            os_release(v404);
                          }

                          goto LABEL_1051;
                        }
                      }

                      __nwlog_obj();
                      *v928 = 136446210;
                      *&v928[4] = "nw_http1_stream_associate_with_connection";
                      v414 = _os_log_send_and_compose_impl();
                      v911[0] = OS_LOG_TYPE_ERROR;
                      v915 = OS_LOG_TYPE_DEFAULT;
                      if (!__nwlog_fault(v414, v911, &v915))
                      {
                        goto LABEL_1055;
                      }

                      if (v911[0] == OS_LOG_TYPE_FAULT)
                      {
                        v415 = __nwlog_obj();
                        v416 = v911[0];
                        if (os_log_type_enabled(v415, v911[0]))
                        {
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v417 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1054:
                          _os_log_impl(&dword_181A37000, v415, v416, v417, v928, 0xCu);
                        }
                      }

                      else if (v915 == OS_LOG_TYPE_INFO)
                      {
                        v461 = __nw_create_backtrace_string();
                        v415 = __nwlog_obj();
                        v416 = v911[0];
                        v462 = os_log_type_enabled(v415, v911[0]);
                        if (v461)
                        {
                          if (v462)
                          {
                            *v928 = 136446466;
                            *&v928[4] = "nw_http1_stream_associate_with_connection";
                            *&v928[12] = 2082;
                            *&v928[14] = v461;
                            _os_log_impl(&dword_181A37000, v415, v416, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v928, 0x16u);
                          }

                          free(v461);
                          goto LABEL_1055;
                        }

                        if (v462)
                        {
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v417 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                          goto LABEL_1054;
                        }
                      }

                      else
                      {
                        v415 = __nwlog_obj();
                        v416 = v911[0];
                        if (os_log_type_enabled(v415, v911[0]))
                        {
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v417 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                          goto LABEL_1054;
                        }
                      }

LABEL_1055:
                      if (v414)
                      {
                        free(v414);
                      }

                      v622 = 0;
                      goto LABEL_1058;
                    }

                    __nwlog_obj();
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v410 = _os_log_send_and_compose_impl();
                    v911[0] = OS_LOG_TYPE_ERROR;
                    v915 = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v410, v911, &v915))
                    {
                      if (v911[0] == OS_LOG_TYPE_FAULT)
                      {
                        v411 = __nwlog_obj();
                        v412 = v911[0];
                        if (os_log_type_enabled(v411, v911[0]))
                        {
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v413 = "%{public}s unable to find tls options";
LABEL_1048:
                          _os_log_impl(&dword_181A37000, v411, v412, v413, v928, 0xCu);
                        }
                      }

                      else if (v915 == OS_LOG_TYPE_INFO)
                      {
                        v429 = __nw_create_backtrace_string();
                        v411 = __nwlog_obj();
                        v412 = v911[0];
                        v430 = os_log_type_enabled(v411, v911[0]);
                        if (v429)
                        {
                          if (v430)
                          {
                            *v928 = 136446466;
                            *&v928[4] = "nw_http1_stream_associate_with_connection";
                            *&v928[12] = 2082;
                            *&v928[14] = v429;
                            _os_log_impl(&dword_181A37000, v411, v412, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v928, 0x16u);
                          }

                          free(v429);
                        }

                        else if (v430)
                        {
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v413 = "%{public}s unable to find tls options, no backtrace";
                          goto LABEL_1048;
                        }
                      }

                      else
                      {
                        v411 = __nwlog_obj();
                        v412 = v911[0];
                        if (os_log_type_enabled(v411, v911[0]))
                        {
                          *v928 = 136446210;
                          *&v928[4] = "nw_http1_stream_associate_with_connection";
                          v413 = "%{public}s unable to find tls options, backtrace limit exceeded";
                          goto LABEL_1048;
                        }
                      }
                    }

                    if (v410)
                    {
                      free(v410);
                    }

LABEL_1051:
                    v622 = 1;
LABEL_1058:
                    v7 = v902;
                    _Block_object_dispose(buf, 8);
                    if ((v933[16] & 1) != 0 && *&v933[8])
                    {
                      os_release(*&v933[8]);
                    }

                    _Block_object_dispose(aBlock, 8);
                    if (v401)
                    {
                      os_release(v401);
                    }

                    if (v622)
                    {
                      goto LABEL_1064;
                    }

LABEL_1092:
                    if ((*(v13 + 158) & 1) == 0)
                    {
                      v652 = __nwlog_obj();
                      if (os_log_type_enabled(v652, OS_LOG_TYPE_DEBUG))
                      {
                        v653 = *(v13 + 256);
                        v654 = *(*(v13 + 248) + 372);
                        if (v653)
                        {
                          LODWORD(v653) = *(v653 + 860);
                        }

                        v655 = *(v13 + 424);
                        *buf = 136448258;
                        *&buf[4] = "nw_http1_start_new_connection_for_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v13 + 74;
                        *&buf[22] = 2080;
                        v932 = " ";
                        *v933 = 1024;
                        *&v933[2] = v654;
                        *&v933[6] = 1024;
                        *&v933[8] = v653;
                        *&v933[12] = 1024;
                        *&v933[14] = v655;
                        *&v933[18] = 2048;
                        *&v933[20] = v142;
                        *&v933[28] = 1024;
                        *&v933[30] = v655;
                        *&v933[34] = 2048;
                        *&v933[36] = v13;
                        _os_log_impl(&dword_181A37000, v652, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                      }
                    }

                    *(v13 + 428) |= 1u;
                    v656 = nw_protocol_copy_info(v138);
                    v657 = v656;
                    if (v656)
                    {
                      v658 = _nw_array_copy_last_object(v656);
                      v659 = v658;
                      if (v658)
                      {
                        if (nw_protocol_metadata_is_tls(v658))
                        {
                          v659 = v659;
                          nw_http_connection_metadata_set_sec_metadata(*(v142 + 768), v659);
                          os_release(v659);
                          nw_protocol_connect(v138, v142);
                          goto LABEL_1110;
                        }

                        v660 = 0;
LABEL_1104:
                        if (v142)
                        {
                          nw_protocol_connect(v138, v142);
                          goto LABEL_1106;
                        }

                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_get_output_protocol";
                        v793 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v793, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v794 = __nwlog_obj();
                            v795 = type[0];
                            if (os_log_type_enabled(v794, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v796 = "%{public}s called with null connection";
LABEL_1604:
                              _os_log_impl(&dword_181A37000, v794, v795, v796, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v850 = __nw_create_backtrace_string();
                            v794 = __nwlog_obj();
                            v795 = type[0];
                            v851 = os_log_type_enabled(v794, type[0]);
                            if (v850)
                            {
                              if (v851)
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_http1_get_output_protocol";
                                *&buf[12] = 2082;
                                *&buf[14] = v850;
                                _os_log_impl(&dword_181A37000, v794, v795, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v850);
                              goto LABEL_1605;
                            }

                            if (v851)
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v796 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1604;
                            }
                          }

                          else
                          {
                            v794 = __nwlog_obj();
                            v795 = type[0];
                            if (os_log_type_enabled(v794, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v796 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1604;
                            }
                          }
                        }

LABEL_1605:
                        if (v793)
                        {
                          free(v793);
                        }

                        nw_protocol_connect(v138, 0);
                        v7 = v902;
LABEL_1106:
                        if (v659)
                        {
                          v661 = v660;
                        }

                        else
                        {
                          v661 = 1;
                        }

                        if (v661)
                        {
LABEL_1111:
                          if (v657)
                          {
                            os_release(v657);
                          }

                          *(v13 + 428) &= ~0x10u;
                          v662 = *(v7 + 352);
                          *(v7 + 352) = v662 - 1;
                          if (v662)
                          {
                            return 1;
                          }

                          __nwlog_obj();
                          v663 = *(v7 + 352);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->pending_output_handler_count";
                          *&buf[22] = 2048;
                          v932 = 1;
                          *v933 = 2048;
                          *&v933[2] = v663;
                          v340 = _os_log_send_and_compose_impl();
                          type[0] = OS_LOG_TYPE_ERROR;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v340, type, aBlock))
                          {
                            if (type[0] != OS_LOG_TYPE_FAULT)
                            {
                              if (aBlock[0] == 1)
                              {
                                v664 = __nw_create_backtrace_string();
                                v341 = __nwlog_obj();
                                v342 = type[0];
                                v346 = os_log_type_enabled(v341, type[0]);
                                if (v664)
                                {
                                  if (v346)
                                  {
                                    v665 = *(v7 + 352);
                                    *buf = 136447234;
                                    *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                                    *&buf[12] = 2082;
                                    *&buf[14] = "http1->pending_output_handler_count";
                                    *&buf[22] = 2048;
                                    v932 = 1;
                                    *v933 = 2048;
                                    *&v933[2] = v665;
                                    *&v933[10] = 2082;
                                    *&v933[12] = v664;
                                    _os_log_impl(&dword_181A37000, v341, v342, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                                  }

                                  free(v664);
                                  if (!v340)
                                  {
                                    goto LABEL_1129;
                                  }

                                  goto LABEL_1128;
                                }

                                goto LABEL_1124;
                              }

                              goto LABEL_1122;
                            }

LABEL_522:
                            v341 = __nwlog_obj();
                            v342 = type[0];
                            if (!os_log_type_enabled(v341, type[0]))
                            {
                              goto LABEL_1127;
                            }

                            v343 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v932 = 1;
                            *v933 = 2048;
                            *&v933[2] = v343;
                            v344 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_1126:
                            _os_log_impl(&dword_181A37000, v341, v342, v344, buf, 0x2Au);
                            goto LABEL_1127;
                          }

                          goto LABEL_1127;
                        }

LABEL_1110:
                        os_release(v659);
                        goto LABEL_1111;
                      }
                    }

                    else
                    {
                      v659 = 0;
                    }

                    v660 = 1;
                    goto LABEL_1104;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v780 = _os_log_send_and_compose_impl();
                  aBlock[0] = 16;
                  v928[0] = 0;
                  if (__nwlog_fault(v780, aBlock, v928))
                  {
                    if (aBlock[0] == 17)
                    {
                      v781 = __nwlog_obj();
                      v782 = aBlock[0];
                      if (os_log_type_enabled(v781, aBlock[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v783 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1598:
                        _os_log_impl(&dword_181A37000, v781, v782, v783, buf, 0xCu);
                      }
                    }

                    else if (v928[0] == 1)
                    {
                      v848 = __nw_create_backtrace_string();
                      v781 = __nwlog_obj();
                      v782 = aBlock[0];
                      v849 = os_log_type_enabled(v781, aBlock[0]);
                      if (v848)
                      {
                        if (v849)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2082;
                          *&buf[14] = v848;
                          _os_log_impl(&dword_181A37000, v781, v782, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v848);
                        goto LABEL_1599;
                      }

                      if (v849)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v783 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                        goto LABEL_1598;
                      }
                    }

                    else
                    {
                      v781 = __nwlog_obj();
                      v782 = aBlock[0];
                      if (os_log_type_enabled(v781, aBlock[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v783 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                        goto LABEL_1598;
                      }
                    }
                  }

LABEL_1599:
                  if (v780)
                  {
                    free(v780);
                  }

                  v7 = v902;
                  goto LABEL_1092;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_set_up_association";
                v776 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                aBlock[0] = 0;
                if (__nwlog_fault(v776, type, aBlock))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v777 = __nwlog_obj();
                    v778 = type[0];
                    if (!os_log_type_enabled(v777, type[0]))
                    {
                      goto LABEL_1592;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    v779 = "%{public}s called with null parameters";
LABEL_1591:
                    _os_log_impl(&dword_181A37000, v777, v778, v779, buf, 0xCu);
                    goto LABEL_1592;
                  }

                  if (aBlock[0] != 1)
                  {
                    v777 = __nwlog_obj();
                    v778 = type[0];
                    if (!os_log_type_enabled(v777, type[0]))
                    {
                      goto LABEL_1592;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    v779 = "%{public}s called with null parameters, backtrace limit exceeded";
                    goto LABEL_1591;
                  }

                  v846 = __nw_create_backtrace_string();
                  v777 = __nwlog_obj();
                  v778 = type[0];
                  v847 = os_log_type_enabled(v777, type[0]);
                  if (!v846)
                  {
                    if (!v847)
                    {
                      goto LABEL_1592;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    v779 = "%{public}s called with null parameters, no backtrace";
                    goto LABEL_1591;
                  }

                  if (v847)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    *&buf[12] = 2082;
                    *&buf[14] = v846;
                    _os_log_impl(&dword_181A37000, v777, v778, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v846);
                }

LABEL_1592:
                if (v776)
                {
                  free(v776);
                }

                v234 = *(v142 + 512);
                if (v234)
                {
                  goto LABEL_354;
                }

                goto LABEL_356;
              }
            }

LABEL_1675:
            __break(1u);
            return result;
          }

          v762 = v7;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v763 = _os_log_send_and_compose_impl();
          v928[0] = 16;
          v911[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v763, v928, v911))
          {
            if (v928[0] == 17)
            {
              v764 = __nwlog_obj();
              v765 = v928[0];
              if (!os_log_type_enabled(v764, v928[0]))
              {
                goto LABEL_1548;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v766 = "%{public}s called with null parameters";
              goto LABEL_1547;
            }

            if (v911[0] != OS_LOG_TYPE_INFO)
            {
              v764 = __nwlog_obj();
              v765 = v928[0];
              if (!os_log_type_enabled(v764, v928[0]))
              {
                goto LABEL_1548;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v766 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1547;
            }

            v818 = __nw_create_backtrace_string();
            v764 = __nwlog_obj();
            v765 = v928[0];
            v821 = os_log_type_enabled(v764, v928[0]);
            if (!v818)
            {
              if (!v821)
              {
                goto LABEL_1548;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v766 = "%{public}s called with null parameters, no backtrace";
              goto LABEL_1547;
            }

            if (v821)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_create";
              *&buf[12] = 2082;
              *&buf[14] = v818;
              v820 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
              goto LABEL_1428;
            }

            goto LABEL_1429;
          }

LABEL_1548:
          if (!v763)
          {
            goto LABEL_1550;
          }

          goto LABEL_1549;
        }

        v762 = v7;
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v763 = _os_log_send_and_compose_impl();
        v928[0] = 16;
        v911[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v763, v928, v911))
        {
          goto LABEL_1548;
        }

        if (v928[0] != 17)
        {
          if (v911[0] != OS_LOG_TYPE_INFO)
          {
            v764 = __nwlog_obj();
            v765 = v928[0];
            if (!os_log_type_enabled(v764, v928[0]))
            {
              goto LABEL_1548;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v766 = "%{public}s called with null endpoint, backtrace limit exceeded";
            goto LABEL_1547;
          }

          v818 = __nw_create_backtrace_string();
          v764 = __nwlog_obj();
          v765 = v928[0];
          v819 = os_log_type_enabled(v764, v928[0]);
          if (!v818)
          {
            if (!v819)
            {
              goto LABEL_1548;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v766 = "%{public}s called with null endpoint, no backtrace";
            goto LABEL_1547;
          }

          if (v819)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v818;
            v820 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1428:
            _os_log_impl(&dword_181A37000, v764, v765, v820, buf, 0x16u);
          }

LABEL_1429:
          free(v818);
          if (!v763)
          {
LABEL_1550:
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v878 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (!__nwlog_fault(v878, type, aBlock))
            {
              goto LABEL_1564;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v879 = __nwlog_obj();
              v880 = type[0];
              if (!os_log_type_enabled(v879, type[0]))
              {
                goto LABEL_1564;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v881 = "%{public}s called with null http1_connection";
            }

            else if (aBlock[0] == 1)
            {
              v882 = __nw_create_backtrace_string();
              v879 = __nwlog_obj();
              v880 = type[0];
              v883 = os_log_type_enabled(v879, type[0]);
              if (v882)
              {
                if (v883)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v882;
                  _os_log_impl(&dword_181A37000, v879, v880, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v882);
LABEL_1564:
                if (v878)
                {
                  free(v878);
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v884 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                v928[0] = 0;
                if (!__nwlog_fault(v884, aBlock, v928))
                {
                  goto LABEL_1580;
                }

                if (aBlock[0] == 17)
                {
                  v885 = __nwlog_obj();
                  v886 = aBlock[0];
                  if (os_log_type_enabled(v885, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v887 = "%{public}s called with null http1_connection";
LABEL_1579:
                    _os_log_impl(&dword_181A37000, v885, v886, v887, buf, 0xCu);
                  }
                }

                else if (v928[0] == 1)
                {
                  v888 = __nw_create_backtrace_string();
                  v885 = __nwlog_obj();
                  v886 = aBlock[0];
                  v889 = os_log_type_enabled(v885, aBlock[0]);
                  if (v888)
                  {
                    if (v889)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v888;
                      _os_log_impl(&dword_181A37000, v885, v886, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v888);
                    goto LABEL_1580;
                  }

                  if (v889)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v887 = "%{public}s called with null http1_connection, no backtrace";
                    goto LABEL_1579;
                  }
                }

                else
                {
                  v885 = __nwlog_obj();
                  v886 = aBlock[0];
                  if (os_log_type_enabled(v885, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v887 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                    goto LABEL_1579;
                  }
                }

LABEL_1580:
                if (v884)
                {
                  free(v884);
                }

                v142 = 0;
                v7 = v762;
                goto LABEL_1092;
              }

              if (!v883)
              {
                goto LABEL_1564;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v881 = "%{public}s called with null http1_connection, no backtrace";
            }

            else
            {
              v879 = __nwlog_obj();
              v880 = type[0];
              if (!os_log_type_enabled(v879, type[0]))
              {
                goto LABEL_1564;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v881 = "%{public}s called with null http1_connection, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v879, v880, v881, buf, 0xCu);
            goto LABEL_1564;
          }

LABEL_1549:
          free(v763);
          goto LABEL_1550;
        }

        v764 = __nwlog_obj();
        v765 = v928[0];
        if (!os_log_type_enabled(v764, v928[0]))
        {
          goto LABEL_1548;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v766 = "%{public}s called with null endpoint";
      }

      else
      {
        v762 = v7;
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v763 = _os_log_send_and_compose_impl();
        v928[0] = 16;
        v911[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v763, v928, v911))
        {
          goto LABEL_1548;
        }

        if (v928[0] != 17)
        {
          if (v911[0] != OS_LOG_TYPE_INFO)
          {
            v764 = __nwlog_obj();
            v765 = v928[0];
            if (!os_log_type_enabled(v764, v928[0]))
            {
              goto LABEL_1548;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v766 = "%{public}s called with null output_handler, backtrace limit exceeded";
            goto LABEL_1547;
          }

          v816 = __nw_create_backtrace_string();
          v764 = __nwlog_obj();
          v765 = v928[0];
          v817 = os_log_type_enabled(v764, v928[0]);
          if (!v816)
          {
            if (!v817)
            {
              goto LABEL_1548;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v766 = "%{public}s called with null output_handler, no backtrace";
            goto LABEL_1547;
          }

          if (v817)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v816;
            _os_log_impl(&dword_181A37000, v764, v765, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v816);
          goto LABEL_1548;
        }

        v764 = __nwlog_obj();
        v765 = v928[0];
        if (!os_log_type_enabled(v764, v928[0]))
        {
          goto LABEL_1548;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v766 = "%{public}s called with null output_handler";
      }

LABEL_1547:
      _os_log_impl(&dword_181A37000, v764, v765, v766, buf, 0xCu);
      goto LABEL_1548;
    }

    if (*(v13 + 256))
    {
      if (*(v13 + 158))
      {
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v21 = *(v13 + 256);
      v22 = *(*(v13 + 248) + 372);
      if (v21)
      {
        LODWORD(v21) = *(v21 + 860);
      }

      v23 = *(v13 + 424);
      *buf = 136447490;
      *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 74;
      *&buf[22] = 2080;
      v932 = " ";
      *v933 = 1024;
      *&v933[2] = v22;
      *&v933[6] = 1024;
      *&v933[8] = v21;
      *&v933[12] = 1024;
      *&v933[14] = v23;
      v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
      goto LABEL_42;
    }

    if (!*(v13 + 32))
    {
      if (*(v13 + 158))
      {
        return 1;
      }

      if (gLogDatapath != 1)
      {
        return 1;
      }

      v37 = __nwlog_obj();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v38 = *(v13 + 256);
      v39 = *(*(v13 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v13 + 424);
      *buf = 136447746;
      *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 74;
      *&buf[22] = 2080;
      v932 = " ";
      *v933 = 1024;
      *&v933[2] = v39;
      *&v933[6] = 1024;
      *&v933[8] = v38;
      *&v933[12] = 1024;
      *&v933[14] = v40;
      *&v933[18] = 2048;
      *&v933[20] = v13;
      v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
      v24 = v37;
      v25 = 60;
      goto LABEL_43;
    }

    if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v477 = __nwlog_obj();
      if (os_log_type_enabled(v477, OS_LOG_TYPE_DEBUG))
      {
        v478 = *(v13 + 256);
        v479 = *(*(v13 + 248) + 372);
        if (v478)
        {
          LODWORD(v478) = *(v478 + 860);
        }

        v480 = *(v13 + 424);
        v481 = *(v13 + 32);
        *buf = 136448002;
        *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
        *&buf[12] = 2082;
        *&buf[14] = v13 + 74;
        *&buf[22] = 2080;
        v932 = " ";
        *v933 = 1024;
        *&v933[2] = v479;
        *&v933[6] = 1024;
        *&v933[8] = v478;
        *&v933[12] = 1024;
        *&v933[14] = v480;
        *&v933[18] = 2048;
        *&v933[20] = v13;
        *&v933[28] = 2048;
        *&v933[30] = v481;
        _os_log_impl(&dword_181A37000, v477, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
      }
    }

    v28 = *(v13 + 32);
    if (v28)
    {
      v29 = *(v13 + 336);
      if (v29)
      {
        v30 = *(v13 + 320);
        if (v30)
        {
          v31 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
          v32 = v31;
          if (v31)
          {
            bzero(v31, 0x370uLL);
            nw_http1_connection::nw_http1_connection(v32);
          }

          else
          {
            v66 = __nwlog_obj();
            os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            v932 = 880;
            v67 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v67);
            if (result)
            {
              goto LABEL_1675;
            }

            free(v67);
            bzero(0, 0x370uLL);
            nw_http1_connection::nw_http1_connection(0);
            v69 = __nwlog_obj();
            os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v70 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v70);
            if (result)
            {
              goto LABEL_1675;
            }

            free(v70);
          }

          if (nw_protocol_http1_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
          }

          *(v32 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
          if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
          }

          *(v32 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
          *(v32 + 184) = 3;
          *(v32 + 176) = v32;
          *(v32 + 40) = v32 + 160;
          *(v32 + 480) = v7;
          nw_protocol_set_output_handler(v32, v28);
          v71 = os_retain(v29);
          v72 = *(v32 + 760);
          if ((v72 & 1) != 0 && *(v32 + 752))
          {
            v73 = v71;
            os_release(*(v32 + 752));
            v71 = v73;
            v72 = *(v32 + 760);
          }

          *(v32 + 752) = v71;
          *(v32 + 760) = v72 | 1;
          v74 = os_retain(v30);
          v75 = *(v32 + 744);
          if ((v75 & 1) != 0 && *(v32 + 736))
          {
            v76 = v74;
            os_release(*(v32 + 736));
            v74 = v76;
            v75 = *(v32 + 744);
          }

          *(v32 + 736) = v74;
          *(v32 + 744) = v75 | 1;
          v77 = _nw_parameters_copy_context(v30);
          v78 = *(v32 + 504);
          if ((v78 & 1) != 0 && *(v32 + 496))
          {
            v79 = v77;
            os_release(*(v32 + 496));
            v77 = v79;
            v78 = *(v32 + 504);
          }

          *(v32 + 496) = v77;
          *(v32 + 504) = v78 | 1;
          *(v32 + 192) = *(v7 + 192);
          *type = MEMORY[0x1E69E9820];
          v917 = 0x40000000;
          v918 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
          v919 = &__block_descriptor_tmp_43_43000;
          v920 = v32;
          metadata = nw_http_connection_create_metadata(v77, type, 0);
          v81 = *(v32 + 776);
          if ((v81 & 1) != 0 && *(v32 + 768))
          {
            v82 = metadata;
            os_release(*(v32 + 768));
            metadata = v82;
            v81 = *(v32 + 776);
          }

          *(v32 + 768) = metadata;
          *(v32 + 776) = v81 | 1;
          nw_http_connection_metadata_set_version(metadata, 3);
          nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v32 + 768), *(v7 + 312));
          *(v32 + 616) = 0;
          *(v32 + 624) = v32 + 616;
          *(v32 + 632) = 0;
          *(v32 + 640) = v32 + 632;
          *(v32 + 648) = 0;
          *(v32 + 656) = v32 + 648;
          *(v32 + 664) = 0;
          *(v32 + 672) = v32 + 664;
          *(v32 + 680) = 0;
          *(v32 + 688) = v32 + 680;
          nw_frame_cache_init(v32 + 696, v32, 256, 0x40000, 16);
          v83 = *(v32 + 480);
          if (v83)
          {
            *(v32 + 360) = 0u;
            *(v32 + 376) = 0u;
            *(v32 + 392) = 0u;
            *(v32 + 408) = 0u;
            *(v32 + 424) = 0u;
            *(v32 + 440) = 0u;
            *(v32 + 328) = 0u;
            *(v32 + 344) = 0u;
            *(v32 + 296) = nw_http1_on_message_begin;
            *(v32 + 384) = nw_http1_on_message_complete;
            *(v32 + 368) = nw_http1_on_headers_complete;
            *(v32 + 472) = nw_http1_on_reset;
            *(v32 + 320) = nw_http1_on_method;
            *(v32 + 408) = nw_http1_on_method_complete;
            *(v32 + 304) = nw_http1_on_url;
            *(v32 + 392) = nw_http1_on_url_complete;
            *(v32 + 312) = nw_http1_on_status;
            *(v32 + 400) = nw_http1_on_status_complete;
            *(v32 + 336) = nw_http1_on_header_field;
            *(v32 + 424) = nw_http1_on_header_field_complete;
            *(v32 + 344) = nw_http1_on_header_value;
            *(v32 + 432) = nw_http1_on_header_value_complete;
            *(v32 + 376) = nw_http1_on_body;
            *(v32 + 456) = nw_http1_on_chunk_header;
            *(v32 + 464) = nw_http1_on_chunk_complete;
            v84 = *(v83 + 376);
            *(v32 + 248) = 0u;
            *(v32 + 200) = 0u;
            *(v32 + 264) = 0u;
            *(v32 + 232) = 0u;
            *(v32 + 216) = 0u;
            if (v84)
            {
              v85 = 1;
            }

            else
            {
              v85 = 2;
            }

            *(v32 + 272) = v85;
            *(v32 + 280) = 0;
            *(v32 + 288) = v32 + 296;
            *(v32 + 278) = 16131;
            *(v32 + 248) = v32;
            *(v32 + 256) = 237;
            if ((*(v32 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v86 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v87 = *(v32 + 488);
                v88 = *(*(v32 + 480) + 372);
                v89 = *(v32 + 860);
                if (v87)
                {
                  LODWORD(v87) = *(v87 + 424);
                }

                *buf = 136448258;
                *&buf[4] = "nw_http1_connection_log_parser_version";
                *&buf[12] = 2082;
                *&buf[14] = v32 + 74;
                *&buf[22] = 2080;
                v932 = " ";
                *v933 = 1024;
                *&v933[2] = v88;
                *&v933[6] = 1024;
                *&v933[8] = v89;
                *&v933[12] = 1024;
                *&v933[14] = v87;
                *&v933[18] = 1024;
                *&v933[20] = 9;
                *&v933[24] = 1024;
                *&v933[26] = 2;
                *&v933[30] = 1024;
                *&v933[32] = 1;
                _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
              }
            }

            goto LABEL_131;
          }

          v482 = v7;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_parser_init";
          v483 = _os_log_send_and_compose_impl();
          v928[0] = 16;
          v911[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v483, v928, v911))
          {
            if (v928[0] == 17)
            {
              v484 = __nwlog_obj();
              v485 = v928[0];
              if (os_log_type_enabled(v484, v928[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v486 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1324:
                _os_log_impl(&dword_181A37000, v484, v485, v486, buf, 0xCu);
              }
            }

            else if (v911[0] == OS_LOG_TYPE_INFO)
            {
              v674 = __nw_create_backtrace_string();
              v484 = __nwlog_obj();
              v485 = v928[0];
              v675 = os_log_type_enabled(v484, v928[0]);
              if (v674)
              {
                if (v675)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_parser_init";
                  *&buf[12] = 2082;
                  *&buf[14] = v674;
                  _os_log_impl(&dword_181A37000, v484, v485, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v674);
                goto LABEL_1325;
              }

              if (v675)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v486 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                goto LABEL_1324;
              }
            }

            else
            {
              v484 = __nwlog_obj();
              v485 = v928[0];
              if (os_log_type_enabled(v484, v928[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v486 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                goto LABEL_1324;
              }
            }
          }

LABEL_1325:
          if (v483)
          {
            free(v483);
          }

          v7 = v482;
LABEL_131:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v932 = v32;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
          v924 = &unk_1E6A32758;
          *v925 = buf;
          *(v32 + 608) = _Block_copy(aBlock);
          _Block_object_dispose(buf, 8);
          if ((*(v32 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v496 = __nwlog_obj();
            if (os_log_type_enabled(v496, OS_LOG_TYPE_DEBUG))
            {
              v497 = *(v32 + 488);
              v498 = *(*(v32 + 480) + 372);
              v499 = *(v32 + 860);
              if (v497)
              {
                LODWORD(v497) = *(v497 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_http1_connection_create";
              *&buf[12] = 2082;
              *&buf[14] = v32 + 74;
              *&buf[22] = 2080;
              v932 = " ";
              *v933 = 1024;
              *&v933[2] = v498;
              *&v933[6] = 1024;
              *&v933[8] = v499;
              *&v933[12] = 1024;
              *&v933[14] = v497;
              *&v933[18] = 2048;
              *&v933[20] = v32;
              _os_log_impl(&dword_181A37000, v496, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
            }
          }

          nw_protocol_replace_input_handler(v28, v13, v32);
          *v32 = *v28;
          v90 = *(v32 + 736);
          if (v90)
          {
            if (!*(v32 + 528))
            {
              v91 = _nw_parameters_copy_context(*(v32 + 736));
              *buf = nw_path_copy_flow_registration(v91, v32);
              v92 = (v32 + 560);
              nw::retained_ptr<nw_endpoint *>::operator=(v32 + 560, buf);
              v93 = *(v32 + 560);
              if (v93)
              {
                v94 = v7;
                v95 = nw_path_flow_registration_copy_endpoint(v93);
                v96 = nw_path_flow_registration_copy_parameters(*v92);
                *buf = nw_endpoint_copy_association_with_evaluator(v95, v96, 0);
                nw::retained_ptr<nw_endpoint *>::operator=(v32 + 528, buf);
                if (*(v32 + 528))
                {
                  *buf = nw_protocol_instance_stub_create(v32);
                  nw::retained_ptr<nw_endpoint *>::operator=(v32 + 544, buf);
                  nw_association_register_internal(*(v32 + 528), v90, *(v32 + 544), 0, 0, &__block_literal_global_69_43019);
                  v97 = nw_association_copy_current_path(*(v32 + 528), v96);
                  if (v97)
                  {
                    v98 = v97;
                    v99 = nw_path_copy_for_flow_registration(v97, *v92);
                    if (v99)
                    {
                      v100 = v99;
                      if (*(v32 + 512) != v99)
                      {
                        *buf = os_retain(v99);
                        nw::retained_ptr<nw_endpoint *>::operator=(v32 + 512, buf);
                      }

                      if (nw_path_has_flows(v100))
                      {
                        v101 = 4096;
                      }

                      else
                      {
                        v101 = 0;
                      }

                      *(v32 + 872) = *(v32 + 872) & 0xEFFF | v101;
                      v102 = _nw_parameters_copy_effective_proxy_config(v90);
                      if (v102)
                      {
                        v103 = v102;
                        if (nw_path_has_proxy_config(v98, v102))
                        {
                          *buf = os_retain(v103);
                          nw::retained_ptr<nw_endpoint *>::operator=(v32 + 576, buf);
                        }

                        os_release(v103);
                      }

                      os_release(v100);
                    }

                    os_release(v98);
                  }
                }

                if (v96)
                {
                  os_release(v96);
                }

                v7 = v94;
                if (v95)
                {
                  os_release(v95);
                }
              }

              if (v91)
              {
                os_release(v91);
              }
            }

            v104 = *(v32 + 512);
            if (v104)
            {
LABEL_157:
              if (_nw_path_uses_interface_type(v104, 2u))
              {
                *(v32 + 192) = 1000;
              }
            }

LABEL_159:
            v105 = *(v7 + 336) + 1;
            *(v7 + 336) = v105;
            if (v105 == v105 << 31 >> 31)
            {
              goto LABEL_225;
            }

            __nwlog_obj();
            v106 = v7;
            v107 = *(v7 + 336);
            *buf = 136446978;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v932 = 1;
            *v933 = 2048;
            *&v933[2] = v107;
            v108 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v108, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v109 = __nwlog_obj();
                v110 = type[0];
                if (os_log_type_enabled(v109, type[0]))
                {
                  v111 = *(v106 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v111;
                  v112 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_221:
                  _os_log_impl(&dword_181A37000, v109, v110, v112, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v113 = __nw_create_backtrace_string();
                v109 = __nwlog_obj();
                v110 = type[0];
                v114 = os_log_type_enabled(v109, type[0]);
                if (v113)
                {
                  if (v114)
                  {
                    v115 = *(v106 + 336);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->connections_count";
                    *&buf[22] = 2048;
                    v932 = 1;
                    *v933 = 2048;
                    *&v933[2] = v115;
                    *&v933[10] = 2082;
                    *&v933[12] = v113;
                    _os_log_impl(&dword_181A37000, v109, v110, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v113);
                  goto LABEL_222;
                }

                if (v114)
                {
                  v148 = *(v106 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v148;
                  v112 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_221;
                }
              }

              else
              {
                v109 = __nwlog_obj();
                v110 = type[0];
                if (os_log_type_enabled(v109, type[0]))
                {
                  v135 = *(v106 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v135;
                  v112 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_221;
                }
              }
            }

LABEL_222:
            if (v108)
            {
              free(v108);
            }

            v7 = v106;
            *(v106 + 336) = -1;
LABEL_225:
            v149 = *(v7 + 360) + 1;
            *(v7 + 360) = v149;
            if (v149 == v149 << 31 >> 31)
            {
              goto LABEL_243;
            }

            __nwlog_obj();
            v150 = v7;
            v151 = *(v7 + 360);
            *buf = 136446978;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = "http1->next_connection_log_num";
            *&buf[22] = 2048;
            v932 = 1;
            *v933 = 2048;
            *&v933[2] = v151;
            v152 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v152, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v153 = __nwlog_obj();
                v154 = type[0];
                if (os_log_type_enabled(v153, type[0]))
                {
                  v155 = *(v150 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v155;
                  v156 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_239:
                  _os_log_impl(&dword_181A37000, v153, v154, v156, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v157 = __nw_create_backtrace_string();
                v153 = __nwlog_obj();
                v154 = type[0];
                v158 = os_log_type_enabled(v153, type[0]);
                if (v157)
                {
                  if (v158)
                  {
                    v159 = *(v150 + 360);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->next_connection_log_num";
                    *&buf[22] = 2048;
                    v932 = 1;
                    *v933 = 2048;
                    *&v933[2] = v159;
                    *&v933[10] = 2082;
                    *&v933[12] = v157;
                    _os_log_impl(&dword_181A37000, v153, v154, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v157);
                  goto LABEL_240;
                }

                if (v158)
                {
                  v161 = *(v150 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v161;
                  v156 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_239;
                }
              }

              else
              {
                v153 = __nwlog_obj();
                v154 = type[0];
                if (os_log_type_enabled(v153, type[0]))
                {
                  v160 = *(v150 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v932 = 1;
                  *v933 = 2048;
                  *&v933[2] = v160;
                  v156 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_239;
                }
              }
            }

LABEL_240:
            if (v152)
            {
              free(v152);
            }

            LODWORD(v149) = -1;
            v7 = v150;
            *(v150 + 360) = -1;
LABEL_243:
            *(v32 + 860) = v149;
            if ((*(v32 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v500 = __nwlog_obj();
              if (os_log_type_enabled(v500, OS_LOG_TYPE_DEBUG))
              {
                v501 = *(v32 + 488);
                v502 = *(*(v32 + 480) + 372);
                v503 = *(v32 + 860);
                if (v501)
                {
                  LODWORD(v501) = *(v501 + 424);
                }

                v504 = *(v7 + 336);
                *buf = 136448002;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = v32 + 74;
                *&buf[22] = 2080;
                v932 = " ";
                *v933 = 1024;
                *&v933[2] = v502;
                *&v933[6] = 1024;
                *&v933[8] = v503;
                *&v933[12] = 1024;
                *&v933[14] = v501;
                *&v933[18] = 2048;
                *&v933[20] = v32;
                *&v933[28] = 1024;
                *&v933[30] = v504;
                _os_log_impl(&dword_181A37000, v500, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
              }
            }

            if (*(v13 + 248))
            {
              if (*(v32 + 488))
              {
                __nwlog_obj();
                v162 = *(v32 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v32;
                *&buf[22] = 2048;
                v932 = v162;
                v163 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                v928[0] = 0;
                if (!__nwlog_fault(v163, aBlock, v928))
                {
                  goto LABEL_279;
                }

                if (aBlock[0] == 17)
                {
                  v164 = __nwlog_obj();
                  v165 = aBlock[0];
                  if (!os_log_type_enabled(v164, aBlock[0]))
                  {
                    goto LABEL_279;
                  }

                  v166 = *(v32 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v932 = v166;
                  v167 = "%{public}s Connection %p already has a stream (%p)";
                }

                else if (v928[0] == 1)
                {
                  v177 = v28;
                  v178 = v7;
                  v179 = __nw_create_backtrace_string();
                  v164 = __nwlog_obj();
                  v165 = aBlock[0];
                  v180 = os_log_type_enabled(v164, aBlock[0]);
                  if (v179)
                  {
                    if (v180)
                    {
                      v181 = *(v32 + 488);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v32;
                      *&buf[22] = 2048;
                      v932 = v181;
                      *v933 = 2082;
                      *&v933[2] = v179;
                      _os_log_impl(&dword_181A37000, v164, v165, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v179);
                    v7 = v178;
                    v28 = v177;
LABEL_279:
                    if (v163)
                    {
                      free(v163);
                      if (*(v13 + 158))
                      {
                        goto LABEL_503;
                      }

                      goto LABEL_499;
                    }

LABEL_498:
                    if (*(v13 + 158))
                    {
                      goto LABEL_503;
                    }

LABEL_499:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v328 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      v329 = *(v13 + 256);
                      v330 = *(*(v13 + 248) + 372);
                      if (v329)
                      {
                        LODWORD(v329) = *(v329 + 860);
                      }

                      v331 = *(v13 + 424);
                      *buf = 136448258;
                      *&buf[4] = "nw_http1_start_new_connection_for_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v13 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v330;
                      *&v933[6] = 1024;
                      *&v933[8] = v329;
                      *&v933[12] = 1024;
                      *&v933[14] = v331;
                      *&v933[18] = 2048;
                      *&v933[20] = v32;
                      *&v933[28] = 1024;
                      *&v933[30] = v331;
                      *&v933[34] = 2048;
                      *&v933[36] = v13;
                      _os_log_impl(&dword_181A37000, v328, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                    }

LABEL_503:
                    *(v13 + 428) |= 1u;
                    v332 = nw_protocol_copy_info(v28);
                    v333 = v332;
                    if (v332)
                    {
                      v334 = _nw_array_copy_last_object(v332);
                      v335 = v334;
                      if (v334)
                      {
                        if (nw_protocol_metadata_is_tls(v334))
                        {
                          v335 = v335;
                          nw_http_connection_metadata_set_sec_metadata(*(v32 + 768), v335);
                          os_release(v335);
                          nw_protocol_connect(v28, v32);
                          goto LABEL_516;
                        }

                        v336 = 0;
LABEL_510:
                        if (v32)
                        {
                          nw_protocol_connect(v28, v32);
                          goto LABEL_512;
                        }

                        v904 = v7;
                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_get_output_protocol";
                        v505 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v505, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v506 = __nwlog_obj();
                            v507 = type[0];
                            if (os_log_type_enabled(v506, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v508 = "%{public}s called with null connection";
LABEL_1342:
                              _os_log_impl(&dword_181A37000, v506, v507, v508, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v684 = __nw_create_backtrace_string();
                            v506 = __nwlog_obj();
                            v507 = type[0];
                            v685 = os_log_type_enabled(v506, type[0]);
                            if (v684)
                            {
                              if (v685)
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_http1_get_output_protocol";
                                *&buf[12] = 2082;
                                *&buf[14] = v684;
                                _os_log_impl(&dword_181A37000, v506, v507, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v684);
                              goto LABEL_1343;
                            }

                            if (v685)
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v508 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1342;
                            }
                          }

                          else
                          {
                            v506 = __nwlog_obj();
                            v507 = type[0];
                            if (os_log_type_enabled(v506, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v508 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1342;
                            }
                          }
                        }

LABEL_1343:
                        if (v505)
                        {
                          free(v505);
                        }

                        nw_protocol_connect(v28, 0);
                        v7 = v904;
LABEL_512:
                        if (v335)
                        {
                          v337 = v336;
                        }

                        else
                        {
                          v337 = 1;
                        }

                        if (v337)
                        {
LABEL_517:
                          if (v333)
                          {
                            os_release(v333);
                          }

                          *(v13 + 428) &= ~0x10u;
                          v338 = *(v7 + 352);
                          *(v7 + 352) = v338 - 1;
                          if (v338)
                          {
                            return 1;
                          }

                          __nwlog_obj();
                          v339 = *(v7 + 352);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->pending_output_handler_count";
                          *&buf[22] = 2048;
                          v932 = 1;
                          *v933 = 2048;
                          *&v933[2] = v339;
                          v340 = _os_log_send_and_compose_impl();
                          type[0] = OS_LOG_TYPE_ERROR;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v340, type, aBlock))
                          {
                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              goto LABEL_522;
                            }

                            if (aBlock[0] != 1)
                            {
LABEL_1122:
                              v341 = __nwlog_obj();
                              v342 = type[0];
                              if (!os_log_type_enabled(v341, type[0]))
                              {
                                goto LABEL_1127;
                              }

                              v666 = *(v7 + 352);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v666;
                              v344 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                              goto LABEL_1126;
                            }

                            v345 = __nw_create_backtrace_string();
                            v341 = __nwlog_obj();
                            v342 = type[0];
                            v346 = os_log_type_enabled(v341, type[0]);
                            if (!v345)
                            {
LABEL_1124:
                              if (!v346)
                              {
                                goto LABEL_1127;
                              }

                              v667 = *(v7 + 352);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v667;
                              v344 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                              goto LABEL_1126;
                            }

                            if (v346)
                            {
                              v347 = *(v7 + 352);
                              *buf = 136447234;
                              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v932 = 1;
                              *v933 = 2048;
                              *&v933[2] = v347;
                              *&v933[10] = 2082;
                              *&v933[12] = v345;
                              _os_log_impl(&dword_181A37000, v341, v342, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v345);
                          }

LABEL_1127:
                          if (!v340)
                          {
LABEL_1129:
                            *(v7 + 352) = 0;
                            return 1;
                          }

LABEL_1128:
                          free(v340);
                          goto LABEL_1129;
                        }

LABEL_516:
                        os_release(v335);
                        goto LABEL_517;
                      }
                    }

                    else
                    {
                      v335 = 0;
                    }

                    v336 = 1;
                    goto LABEL_510;
                  }

                  v7 = v178;
                  v28 = v177;
                  if (!v180)
                  {
                    goto LABEL_279;
                  }

                  v191 = *(v32 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v932 = v191;
                  v167 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                }

                else
                {
                  v164 = __nwlog_obj();
                  v165 = aBlock[0];
                  if (!os_log_type_enabled(v164, aBlock[0]))
                  {
                    goto LABEL_279;
                  }

                  v182 = *(v32 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v932 = v182;
                  v167 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                }

                _os_log_impl(&dword_181A37000, v164, v165, v167, buf, 0x20u);
                goto LABEL_279;
              }

              *(v13 + 256) = v32;
              *(v32 + 488) = v13;
              v168 = *(v13 + 320);
              if (v168)
              {
                v168 = os_retain(v168);
              }

              *buf = v168;
              nw::retained_ptr<nw_endpoint *>::operator=(v32 + 736, buf);
              if ((*(*(v13 + 248) + 376) & 2) == 0)
              {
LABEL_470:
                v297 = *(v13 + 32);
                if (!v297 || v297 == *(v32 + 32))
                {
LABEL_488:
                  nw_protocol_set_output_handler(v13, *(v32 + 32));
                  nw_protocol_set_input_handler(v32, *(v13 + 48));
                  *v13 = *v32;
                  v316 = *(v13 + 96);
                  v317 = *(v13 + 112);
                  v318 = *(v13 + 128);
                  *(v32 + 144) = *(v13 + 144);
                  v319 = *(v13 + 80);
                  *(v32 + 64) = *(v13 + 64);
                  *(v32 + 80) = v319;
                  *(v32 + 112) = v317;
                  *(v32 + 128) = v318;
                  *(v32 + 96) = v316;
                  *(v32 + 872) &= 0xFFD7u;
                  *(v32 + 864) = 1;
                  if ((*(v32 + 158) & 1) == 0)
                  {
                    v320 = __nwlog_obj();
                    if (os_log_type_enabled(v320, OS_LOG_TYPE_DEBUG))
                    {
                      v321 = *(v32 + 488);
                      v322 = *(*(v32 + 480) + 372);
                      v323 = *(v32 + 860);
                      if (v321)
                      {
                        LODWORD(v321) = *(v321 + 424);
                      }

                      *buf = 136447490;
                      *&buf[4] = "nw_http1_update_connection_input_state";
                      *&buf[12] = 2082;
                      *&buf[14] = v32 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v322;
                      *&v933[6] = 1024;
                      *&v933[8] = v323;
                      *&v933[12] = 1024;
                      *&v933[14] = v321;
                      _os_log_impl(&dword_181A37000, v320, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                    }
                  }

                  if ((*(v13 + 158) & 1) == 0)
                  {
                    v324 = __nwlog_obj();
                    if (os_log_type_enabled(v324, OS_LOG_TYPE_INFO))
                    {
                      v325 = *(v13 + 256);
                      v326 = *(*(v13 + 248) + 372);
                      if (v325)
                      {
                        LODWORD(v325) = *(v325 + 860);
                      }

                      v327 = *(v13 + 424);
                      *buf = 136448002;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v13 + 74;
                      *&buf[22] = 2080;
                      v932 = " ";
                      *v933 = 1024;
                      *&v933[2] = v326;
                      *&v933[6] = 1024;
                      *&v933[8] = v325;
                      *&v933[12] = 1024;
                      *&v933[14] = v327;
                      *&v933[18] = 2048;
                      *&v933[20] = v13;
                      *&v933[28] = 2048;
                      *&v933[30] = v32;
                      _os_log_impl(&dword_181A37000, v324, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                    }
                  }

                  goto LABEL_498;
                }

                __nwlog_obj();
                v298 = *(v13 + 32);
                v299 = *(v32 + 32);
                *buf = 136446978;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v298;
                *&buf[22] = 2048;
                v932 = v13;
                *v933 = 2048;
                *&v933[2] = v299;
                v300 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                v928[0] = 0;
                if (__nwlog_fault(v300, aBlock, v928))
                {
                  if (aBlock[0] == 17)
                  {
                    v301 = __nwlog_obj();
                    v302 = aBlock[0];
                    if (!os_log_type_enabled(v301, aBlock[0]))
                    {
                      goto LABEL_486;
                    }

                    v303 = *(v13 + 32);
                    v304 = *(v32 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v303;
                    *&buf[22] = 2048;
                    v932 = v13;
                    *v933 = 2048;
                    *&v933[2] = v304;
                    v305 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                    goto LABEL_485;
                  }

                  if (v928[0] != 1)
                  {
                    v301 = __nwlog_obj();
                    v302 = aBlock[0];
                    if (!os_log_type_enabled(v301, aBlock[0]))
                    {
                      goto LABEL_486;
                    }

                    v312 = *(v13 + 32);
                    v313 = *(v32 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v312;
                    *&buf[22] = 2048;
                    v932 = v13;
                    *v933 = 2048;
                    *&v933[2] = v313;
                    v305 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                    goto LABEL_485;
                  }

                  v306 = v28;
                  v307 = v7;
                  v308 = __nw_create_backtrace_string();
                  v301 = __nwlog_obj();
                  v302 = aBlock[0];
                  v309 = os_log_type_enabled(v301, aBlock[0]);
                  if (v308)
                  {
                    if (v309)
                    {
                      v310 = *(v13 + 32);
                      v311 = *(v32 + 32);
                      *buf = 136447234;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v310;
                      *&buf[22] = 2048;
                      v932 = v13;
                      *v933 = 2048;
                      *&v933[2] = v311;
                      *&v933[10] = 2082;
                      *&v933[12] = v308;
                      _os_log_impl(&dword_181A37000, v301, v302, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v308);
                    v7 = v307;
                    v28 = v306;
                    goto LABEL_486;
                  }

                  v7 = v307;
                  v28 = v306;
                  if (v309)
                  {
                    v314 = *(v13 + 32);
                    v315 = *(v32 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v314;
                    *&buf[22] = 2048;
                    v932 = v13;
                    *v933 = 2048;
                    *&v933[2] = v315;
                    v305 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_485:
                    _os_log_impl(&dword_181A37000, v301, v302, v305, buf, 0x2Au);
                  }
                }

LABEL_486:
                if (v300)
                {
                  free(v300);
                }

                goto LABEL_488;
              }

              v169 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
              *aBlock = 0;
              *&aBlock[8] = aBlock;
              *&aBlock[16] = 0x2000000000;
              LOBYTE(v924) = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3802000000;
              v932 = __Block_byref_object_copy__42960;
              *v933 = __Block_byref_object_dispose__42961;
              *&v933[8] = 0;
              v933[16] |= 1u;
              *type = MEMORY[0x1E69E9820];
              v917 = 0x40000000;
              v918 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
              v919 = &unk_1E6A32930;
              v920 = aBlock;
              v921 = buf;
              v922 = v13;
              nw_protocol_stack_iterate_application_protocols(v169, type);
              if (*(*&buf[8] + 40))
              {
                v170 = v32;
                while (1)
                {
                  v170 = *(v170 + 32);
                  if (!v170)
                  {
                    break;
                  }

                  if (nw_protocol_is_tls_over_stream(v170))
                  {
                    v171 = v28;
                    v172 = v7;
                    v173 = *(*&buf[8] + 40);
                    v174 = nw_protocol_boringssl_copy_definition();
                    nw_parameters_set_protocol_instance(v173, v175, v170);
                    if (v174)
                    {
                      os_release(v174);
                    }

                    v176 = 1;
                    v7 = v172;
                    v28 = v171;
                    goto LABEL_464;
                  }
                }

                v903 = v7;
                __nwlog_obj();
                *v928 = 136446210;
                *&v928[4] = "nw_http1_stream_associate_with_connection";
                v187 = _os_log_send_and_compose_impl();
                v911[0] = OS_LOG_TYPE_ERROR;
                v915 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v187, v911, &v915))
                {
                  goto LABEL_460;
                }

                if (v911[0] == OS_LOG_TYPE_FAULT)
                {
                  v188 = __nwlog_obj();
                  v189 = v911[0];
                  if (os_log_type_enabled(v188, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v190 = "%{public}s tls should have been in the stack but could not find it";
LABEL_459:
                    _os_log_impl(&dword_181A37000, v188, v189, v190, v928, 0xCu);
                  }
                }

                else if (v915 == OS_LOG_TYPE_INFO)
                {
                  v203 = __nw_create_backtrace_string();
                  v188 = __nwlog_obj();
                  v189 = v911[0];
                  v204 = os_log_type_enabled(v188, v911[0]);
                  if (v203)
                  {
                    if (v204)
                    {
                      *v928 = 136446466;
                      *&v928[4] = "nw_http1_stream_associate_with_connection";
                      *&v928[12] = 2082;
                      *&v928[14] = v203;
                      _os_log_impl(&dword_181A37000, v188, v189, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v928, 0x16u);
                    }

                    free(v203);
                    goto LABEL_460;
                  }

                  if (v204)
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v190 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                    goto LABEL_459;
                  }
                }

                else
                {
                  v188 = __nwlog_obj();
                  v189 = v911[0];
                  if (os_log_type_enabled(v188, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v190 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                    goto LABEL_459;
                  }
                }

LABEL_460:
                if (v187)
                {
                  free(v187);
                }

                v176 = 0;
LABEL_463:
                v7 = v903;
LABEL_464:
                _Block_object_dispose(buf, 8);
                if ((v933[16] & 1) != 0 && *&v933[8])
                {
                  os_release(*&v933[8]);
                }

                _Block_object_dispose(aBlock, 8);
                if (v169)
                {
                  os_release(v169);
                }

                if (!v176)
                {
                  goto LABEL_498;
                }

                goto LABEL_470;
              }

              v903 = v7;
              __nwlog_obj();
              *v928 = 136446210;
              *&v928[4] = "nw_http1_stream_associate_with_connection";
              v183 = _os_log_send_and_compose_impl();
              v911[0] = OS_LOG_TYPE_ERROR;
              v915 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v183, v911, &v915))
              {
                if (v911[0] == OS_LOG_TYPE_FAULT)
                {
                  v184 = __nwlog_obj();
                  v185 = v911[0];
                  if (os_log_type_enabled(v184, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v186 = "%{public}s unable to find tls options";
LABEL_438:
                    _os_log_impl(&dword_181A37000, v184, v185, v186, v928, 0xCu);
                  }
                }

                else if (v915 == OS_LOG_TYPE_INFO)
                {
                  v197 = __nw_create_backtrace_string();
                  v184 = __nwlog_obj();
                  v185 = v911[0];
                  v198 = os_log_type_enabled(v184, v911[0]);
                  if (v197)
                  {
                    if (v198)
                    {
                      *v928 = 136446466;
                      *&v928[4] = "nw_http1_stream_associate_with_connection";
                      *&v928[12] = 2082;
                      *&v928[14] = v197;
                      _os_log_impl(&dword_181A37000, v184, v185, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v928, 0x16u);
                    }

                    free(v197);
                    goto LABEL_439;
                  }

                  if (v198)
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v186 = "%{public}s unable to find tls options, no backtrace";
                    goto LABEL_438;
                  }
                }

                else
                {
                  v184 = __nwlog_obj();
                  v185 = v911[0];
                  if (os_log_type_enabled(v184, v911[0]))
                  {
                    *v928 = 136446210;
                    *&v928[4] = "nw_http1_stream_associate_with_connection";
                    v186 = "%{public}s unable to find tls options, backtrace limit exceeded";
                    goto LABEL_438;
                  }
                }
              }

LABEL_439:
              if (v183)
              {
                free(v183);
              }

              v176 = 1;
              goto LABEL_463;
            }

            v472 = v7;
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_associate_with_connection";
            v492 = _os_log_send_and_compose_impl();
            aBlock[0] = 16;
            v928[0] = 0;
            if (!__nwlog_fault(v492, aBlock, v928))
            {
              goto LABEL_1338;
            }

            if (aBlock[0] == 17)
            {
              v493 = __nwlog_obj();
              v494 = aBlock[0];
              if (!os_log_type_enabled(v493, aBlock[0]))
              {
                goto LABEL_1338;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v495 = "%{public}s called with null http1_stream->protocol_http1";
            }

            else if (v928[0] == 1)
            {
              v678 = __nw_create_backtrace_string();
              v493 = __nwlog_obj();
              v494 = aBlock[0];
              v679 = os_log_type_enabled(v493, aBlock[0]);
              if (v678)
              {
                if (v679)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v678;
                  _os_log_impl(&dword_181A37000, v493, v494, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v678);
                goto LABEL_1338;
              }

              if (!v679)
              {
LABEL_1338:
                if (v492)
                {
                  free(v492);
                }

                goto LABEL_1320;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v495 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
            }

            else
            {
              v493 = __nwlog_obj();
              v494 = aBlock[0];
              if (!os_log_type_enabled(v493, aBlock[0]))
              {
                goto LABEL_1338;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v495 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v493, v494, v495, buf, 0xCu);
            goto LABEL_1338;
          }

          v487 = v7;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_set_up_association";
          v488 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v488, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v489 = __nwlog_obj();
              v490 = type[0];
              if (!os_log_type_enabled(v489, type[0]))
              {
                goto LABEL_1331;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              v491 = "%{public}s called with null parameters";
LABEL_1330:
              _os_log_impl(&dword_181A37000, v489, v490, v491, buf, 0xCu);
              goto LABEL_1331;
            }

            if (aBlock[0] != 1)
            {
              v489 = __nwlog_obj();
              v490 = type[0];
              if (!os_log_type_enabled(v489, type[0]))
              {
                goto LABEL_1331;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              v491 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1330;
            }

            v676 = __nw_create_backtrace_string();
            v489 = __nwlog_obj();
            v490 = type[0];
            v677 = os_log_type_enabled(v489, type[0]);
            if (!v676)
            {
              if (!v677)
              {
                goto LABEL_1331;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              v491 = "%{public}s called with null parameters, no backtrace";
              goto LABEL_1330;
            }

            if (v677)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              *&buf[12] = 2082;
              *&buf[14] = v676;
              _os_log_impl(&dword_181A37000, v489, v490, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v676);
          }

LABEL_1331:
          if (v488)
          {
            free(v488);
          }

          v7 = v487;
          v104 = *(v32 + 512);
          if (v104)
          {
            goto LABEL_157;
          }

          goto LABEL_159;
        }

        v472 = v7;
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v473 = _os_log_send_and_compose_impl();
        v928[0] = 16;
        v911[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v473, v928, v911))
        {
          if (v928[0] == 17)
          {
            v474 = __nwlog_obj();
            v475 = v928[0];
            if (!os_log_type_enabled(v474, v928[0]))
            {
              goto LABEL_1285;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v476 = "%{public}s called with null parameters";
            goto LABEL_1284;
          }

          if (v911[0] != OS_LOG_TYPE_INFO)
          {
            v474 = __nwlog_obj();
            v475 = v928[0];
            if (!os_log_type_enabled(v474, v928[0]))
            {
              goto LABEL_1285;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v476 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_1284;
          }

          v670 = __nw_create_backtrace_string();
          v474 = __nwlog_obj();
          v475 = v928[0];
          v673 = os_log_type_enabled(v474, v928[0]);
          if (!v670)
          {
            if (!v673)
            {
              goto LABEL_1285;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v476 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_1284;
          }

          if (v673)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v670;
            v672 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
            goto LABEL_1144;
          }

          goto LABEL_1145;
        }

LABEL_1285:
        if (!v473)
        {
          goto LABEL_1287;
        }

        goto LABEL_1286;
      }

      v472 = v7;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v473 = _os_log_send_and_compose_impl();
      v928[0] = 16;
      v911[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v473, v928, v911))
      {
        goto LABEL_1285;
      }

      if (v928[0] != 17)
      {
        if (v911[0] != OS_LOG_TYPE_INFO)
        {
          v474 = __nwlog_obj();
          v475 = v928[0];
          if (!os_log_type_enabled(v474, v928[0]))
          {
            goto LABEL_1285;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v476 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_1284;
        }

        v670 = __nw_create_backtrace_string();
        v474 = __nwlog_obj();
        v475 = v928[0];
        v671 = os_log_type_enabled(v474, v928[0]);
        if (!v670)
        {
          if (!v671)
          {
            goto LABEL_1285;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v476 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_1284;
        }

        if (v671)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_create";
          *&buf[12] = 2082;
          *&buf[14] = v670;
          v672 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1144:
          _os_log_impl(&dword_181A37000, v474, v475, v672, buf, 0x16u);
        }

LABEL_1145:
        free(v670);
        if (!v473)
        {
LABEL_1287:
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_add_connection_for_output_handler";
          v750 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v750, type, aBlock))
          {
            goto LABEL_1301;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v751 = __nwlog_obj();
            v752 = type[0];
            if (!os_log_type_enabled(v751, type[0]))
            {
              goto LABEL_1301;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v753 = "%{public}s called with null http1_connection";
          }

          else if (aBlock[0] == 1)
          {
            v754 = __nw_create_backtrace_string();
            v751 = __nwlog_obj();
            v752 = type[0];
            v755 = os_log_type_enabled(v751, type[0]);
            if (v754)
            {
              if (v755)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = v754;
                _os_log_impl(&dword_181A37000, v751, v752, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v754);
LABEL_1301:
              if (v750)
              {
                free(v750);
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v756 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              v928[0] = 0;
              if (!__nwlog_fault(v756, aBlock, v928))
              {
                goto LABEL_1317;
              }

              if (aBlock[0] == 17)
              {
                v757 = __nwlog_obj();
                v758 = aBlock[0];
                if (os_log_type_enabled(v757, aBlock[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v759 = "%{public}s called with null http1_connection";
LABEL_1316:
                  _os_log_impl(&dword_181A37000, v757, v758, v759, buf, 0xCu);
                }
              }

              else if (v928[0] == 1)
              {
                v760 = __nw_create_backtrace_string();
                v757 = __nwlog_obj();
                v758 = aBlock[0];
                v761 = os_log_type_enabled(v757, aBlock[0]);
                if (v760)
                {
                  if (v761)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v760;
                    _os_log_impl(&dword_181A37000, v757, v758, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v760);
                  goto LABEL_1317;
                }

                if (v761)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v759 = "%{public}s called with null http1_connection, no backtrace";
                  goto LABEL_1316;
                }
              }

              else
              {
                v757 = __nwlog_obj();
                v758 = aBlock[0];
                if (os_log_type_enabled(v757, aBlock[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v759 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  goto LABEL_1316;
                }
              }

LABEL_1317:
              if (v756)
              {
                free(v756);
              }

              v32 = 0;
LABEL_1320:
              v7 = v472;
              if (*(v13 + 158))
              {
                goto LABEL_503;
              }

              goto LABEL_499;
            }

            if (!v755)
            {
              goto LABEL_1301;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v753 = "%{public}s called with null http1_connection, no backtrace";
          }

          else
          {
            v751 = __nwlog_obj();
            v752 = type[0];
            if (!os_log_type_enabled(v751, type[0]))
            {
              goto LABEL_1301;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v753 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v751, v752, v753, buf, 0xCu);
          goto LABEL_1301;
        }

LABEL_1286:
        free(v473);
        goto LABEL_1287;
      }

      v474 = __nwlog_obj();
      v475 = v928[0];
      if (!os_log_type_enabled(v474, v928[0]))
      {
        goto LABEL_1285;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v476 = "%{public}s called with null endpoint";
    }

    else
    {
      v472 = v7;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v473 = _os_log_send_and_compose_impl();
      v928[0] = 16;
      v911[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v473, v928, v911))
      {
        goto LABEL_1285;
      }

      if (v928[0] != 17)
      {
        if (v911[0] != OS_LOG_TYPE_INFO)
        {
          v474 = __nwlog_obj();
          v475 = v928[0];
          if (!os_log_type_enabled(v474, v928[0]))
          {
            goto LABEL_1285;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v476 = "%{public}s called with null output_handler, backtrace limit exceeded";
          goto LABEL_1284;
        }

        v668 = __nw_create_backtrace_string();
        v474 = __nwlog_obj();
        v475 = v928[0];
        v669 = os_log_type_enabled(v474, v928[0]);
        if (!v668)
        {
          if (!v669)
          {
            goto LABEL_1285;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v476 = "%{public}s called with null output_handler, no backtrace";
          goto LABEL_1284;
        }

        if (v669)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_create";
          *&buf[12] = 2082;
          *&buf[14] = v668;
          _os_log_impl(&dword_181A37000, v474, v475, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v668);
        goto LABEL_1285;
      }

      v474 = __nwlog_obj();
      v475 = v928[0];
      if (!os_log_type_enabled(v474, v928[0]))
      {
        goto LABEL_1285;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v476 = "%{public}s called with null output_handler";
    }

LABEL_1284:
    _os_log_impl(&dword_181A37000, v474, v475, v476, buf, 0xCu);
    goto LABEL_1285;
  }

LABEL_1026:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_connect";
  v250 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (!__nwlog_fault(v250, type, aBlock))
  {
    goto LABEL_1040;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (aBlock[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v251 = gLogObj;
      v252 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_connect";
        v253 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_1038;
      }

      goto LABEL_1040;
    }

    v614 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v615 = gLogObj;
    v616 = type[0];
    v619 = os_log_type_enabled(gLogObj, type[0]);
    if (v614)
    {
      if (v619)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_connect";
        *&buf[12] = 2082;
        *&buf[14] = v614;
        v618 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        goto LABEL_1034;
      }

      goto LABEL_1035;
    }

    if (!v619)
    {
      goto LABEL_1040;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connect";
    v253 = "%{public}s called with null http1_stream, no backtrace";
    goto LABEL_1045;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v251 = gLogObj;
  v252 = type[0];
  if (os_log_type_enabled(gLogObj, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connect";
    v253 = "%{public}s called with null http1_stream";
    goto LABEL_1038;
  }

LABEL_1040:
  if (v250)
  {
    free(v250);
  }

  return 0;
}
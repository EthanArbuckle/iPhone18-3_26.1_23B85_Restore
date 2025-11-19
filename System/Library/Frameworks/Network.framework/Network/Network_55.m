void nw_protocol_http3_untyped_stream_destroy(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  if (v2)
  {
    v4 = (v2 + 160);
  }

  else
  {
    v4 = (*(a1 + 104) + 992);
  }

  *v4 = v3;
  *v3 = v2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  nw_protocol_set_output_handler(a1, 0);
  if (gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "nw_protocol_http3_untyped_stream_destroy";
      v25 = 2048;
      v26 = a1;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
    }
  }

  if (*(a1 + 64))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = *(a1 + 80);
    *buf = 136446722;
    v24 = "nw_protocol_http3_untyped_stream_destroy";
    v25 = 2048;
    v26 = a1;
    v27 = 2048;
    v28 = v5;
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v6, &type, &v21))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      v9 = *(a1 + 80);
      *buf = 136446722;
      v24 = "nw_protocol_http3_untyped_stream_destroy";
      v25 = 2048;
      v26 = a1;
      v27 = 2048;
      v28 = v9;
      v10 = "%{public}s input_frames_unprocessed is not empty for untyped stream %p with stream id %llu";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v12 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v12)
        {
          v13 = *(a1 + 80);
          *buf = 136446978;
          v24 = "nw_protocol_http3_untyped_stream_destroy";
          v25 = 2048;
          v26 = a1;
          v27 = 2048;
          v28 = v13;
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s input_frames_unprocessed is not empty for untyped stream %p with stream id %llu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v12)
      {
LABEL_20:
        if (v6)
        {
          free(v6);
        }

        goto LABEL_22;
      }

      v15 = *(a1 + 80);
      *buf = 136446722;
      v24 = "nw_protocol_http3_untyped_stream_destroy";
      v25 = 2048;
      v26 = a1;
      v27 = 2048;
      v28 = v15;
      v10 = "%{public}s input_frames_unprocessed is not empty for untyped stream %p with stream id %llu, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 80);
      *buf = 136446722;
      v24 = "nw_protocol_http3_untyped_stream_destroy";
      v25 = 2048;
      v26 = a1;
      v27 = 2048;
      v28 = v14;
      v10 = "%{public}s input_frames_unprocessed is not empty for untyped stream %p with stream id %llu, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v10, buf, 0x20u);
    goto LABEL_20;
  }

LABEL_22:
  v16 = *(a1 + 112);
  if (v16)
  {
    os_release(v16);
    *(a1 + 112) = 0;
  }

  (*(*(a1 + 168) + 16))(*(a1 + 168), 0);
  v17 = *(a1 + 168);
  if (v17)
  {
    _Block_release(v17);
    *(a1 + 168) = 0;
  }

  if (*(a1 + 144))
  {
    v18 = *(a1 + 136);
    if (v18)
    {
      os_release(v18);
    }
  }

  *(a1 + 136) = 0;
  if (*(a1 + 128))
  {
    v19 = *(a1 + 120);
    if (v19)
    {
      os_release(v19);
    }
  }

  free(a1);
}

void nw_http3_control_stream_process_input(uint64_t a1)
{
  v215 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http3_control_stream_process_input";
    v160 = _os_log_send_and_compose_impl();
    v198[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v160, v198, type))
    {
      goto LABEL_248;
    }

    if (v198[0] == OS_LOG_TYPE_FAULT)
    {
      v161 = __nwlog_obj();
      v162 = v198[0];
      if (!os_log_type_enabled(v161, v198[0]))
      {
        goto LABEL_248;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_control_stream_process_input";
      v163 = "%{public}s called with null http3";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v161 = __nwlog_obj();
      v162 = v198[0];
      v169 = os_log_type_enabled(v161, v198[0]);
      if (backtrace_string)
      {
        if (v169)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http3_control_stream_process_input";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v161, v162, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_248;
      }

      if (!v169)
      {
LABEL_248:
        if (v160)
        {
          free(v160);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_control_stream_process_input";
      v163 = "%{public}s called with null http3, no backtrace";
    }

    else
    {
      v161 = __nwlog_obj();
      v162 = v198[0];
      if (!os_log_type_enabled(v161, v198[0]))
      {
        goto LABEL_248;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_control_stream_process_input";
      v163 = "%{public}s called with null http3, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v161, v162, v163, buf, 0xCu);
    goto LABEL_248;
  }

  v2 = (a1 + 1397);
  v175 = a1 + 1313;
  v3 = &__block_descriptor_tmp_171_63621;
  for (i = (a1 + 1397); ; v2 = i)
  {
    *v198 = 0;
    v199 = v198;
    v200 = 0x3802000000;
    v201 = __Block_byref_object_copy__63268;
    v202 = __Block_byref_object_dispose__63269;
    v203[0] = 0;
    v203[1] = v203;
    v196 = 0;
    v197 = -1;
    v195 = 0;
    if (!nw_http3_framer_get_input_frames((a1 + 160), 0xFFFFu, 0xFFFFu, 0xFFFFFFFF, &v197, &v196, &v195, 0, v203))
    {
      goto LABEL_221;
    }

    v4 = *v2;
    if ((*v2 & 0x1000) == 0)
    {
      break;
    }

    v15 = v199;
    v16 = v199 + 40;
    v17 = *(v199 + 5);
    if (v17)
    {
      *(v17 + 40) = type;
      v18 = *(v15 + 6);
      *type = v17;
      v191 = v18;
      *(v15 + 5) = 0;
      *(v15 + 6) = v16;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
      v208 = v3;
      LOBYTE(v209) = 1;
      do
      {
        v19 = *type;
        if (!*type)
        {
          break;
        }

        v20 = *(*type + 32);
        v21 = *(*type + 40);
        v22 = (v20 + 40);
        if (!v20)
        {
          v22 = &v191;
        }

        *v22 = v21;
        *v21 = v20;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if (v195 == 1)
    {
      *i &= ~0x1000u;
    }

LABEL_3:
    _Block_object_dispose(v198, 8);
  }

  if ((v195 & 1) == 0)
  {
    v23 = v199;
    v24 = v199 + 40;
    v25 = *(v199 + 5);
    if (v25)
    {
      *(v25 + 40) = type;
      v26 = *(v23 + 6);
      *type = v25;
      v191 = v26;
      *(v23 + 5) = 0;
      *(v23 + 6) = v24;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
      v208 = v3;
      LOBYTE(v209) = 1;
      do
      {
        v27 = *type;
        if (!*type)
        {
          break;
        }

        v28 = *(*type + 32);
        v29 = *(*type + 40);
        v30 = (v28 + 40);
        if (!v28)
        {
          v30 = &v191;
        }

        *v30 = v29;
        *v29 = v28;
        *(v27 + 32) = 0;
        *(v27 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
      v4 = *v2;
    }

    *v2 = v4 | 0x1000;
    if ((*(a1 + 1399) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 1304);
        *buf = 136447490;
        *&buf[4] = "nw_http3_control_stream_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v175;
        *&buf[22] = 2080;
        v208 = " ";
        v209 = 1024;
        v210 = v32;
        v211 = 2048;
        v212 = v196;
        v213 = 2048;
        v214 = v197;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Dropping oversized frame %llu of type %llu on control stream", buf, 0x3Au);
      }
    }

    goto LABEL_3;
  }

  v5 = v197;
  v6 = *(a1 + 1192);
  if (v197 == 4)
  {
    if (!v6)
    {
      *buf = 0;
      nw_frame_array_get_frame_count(v199 + 5, 1, buf);
      v7 = *buf;
      v8 = *buf;
      v194 = 0;
      *(a1 + 1192) = dispatch_data_create_alloc();
      *v194 = v7;
      v9 = v194 + 1;
      *type = 0;
      v191 = type;
      v192 = 0x2000000000;
      v193 = 0;
      v184[0] = MEMORY[0x1E69E9820];
      v184[1] = 0x40000000;
      v185 = ___ZL37nw_http3_control_stream_process_inputP17nw_protocol_http3_block_invoke;
      v186 = &unk_1E6A392B0;
      v188 = type;
      v189 = v194 + 1;
      v187 = v198;
      v10 = *(v199 + 5);
      do
      {
        if (!v10)
        {
          break;
        }

        v11 = *(v10 + 32);
        v12 = v185(v184);
        v10 = v11;
      }

      while ((v12 & 1) != 0);
      if (!nw_http3_parse_settings(a1, v9, v8))
      {
        v140 = v199;
        v141 = v199 + 40;
        v142 = *(v199 + 5);
        if (v142)
        {
          *(v142 + 5) = &error;
          v143 = *(v140 + 6);
          error = v142;
          v205 = v143;
          *(v140 + 5) = 0;
          *(v140 + 6) = v141;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
          v208 = v3;
          LOBYTE(v209) = 1;
          do
          {
            v144 = error;
            if (!error)
            {
              break;
            }

            v145 = *(error + 4);
            v146 = *(error + 5);
            v147 = (v145 + 40);
            if (!v145)
            {
              v147 = &v205;
            }

            *v147 = v146;
            *v146 = v145;
            *(v144 + 4) = 0;
            *(v144 + 5) = 0;
          }

          while (((*&buf[16])(buf) & 1) != 0);
        }

        v148 = a1;
        v149 = 265;
        goto LABEL_220;
      }

      v13 = *(a1 + 872);
      if (v13 && *(a1 + 880))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v208 = *(a1 + 1192);
        dispatch_retain(v208);
        v14 = *(a1 + 880);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZL37nw_http3_control_stream_process_inputP17nw_protocol_http3_block_invoke_2;
        block[3] = &unk_1E6A392D8;
        block[4] = v13;
        block[5] = buf;
        dispatch_async(v14, block);
        _Block_object_dispose(buf, 8);
      }

      nw_http3_try_persist_0rtt_state(a1);
      _Block_object_dispose(type, 8);
      goto LABEL_111;
    }

    if ((*(a1 + 1399) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v130 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v131 = *(a1 + 1304);
        *buf = 136446978;
        *&buf[4] = "nw_http3_control_stream_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v175;
        *&buf[22] = 2080;
        v208 = " ";
        v209 = 1024;
        v210 = v131;
        _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Duplicated SETTINGS frame", buf, 0x26u);
      }
    }

    v132 = v199;
    v133 = v199 + 40;
    v134 = *(v199 + 5);
    if (v134)
    {
      *(v134 + 40) = type;
      v135 = *(v132 + 6);
      *type = v134;
      v191 = v135;
      *(v132 + 5) = 0;
      *(v132 + 6) = v133;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
      v208 = v3;
      LOBYTE(v209) = 1;
      do
      {
        v136 = *type;
        if (!*type)
        {
          break;
        }

        v137 = *(*type + 32);
        v138 = *(*type + 40);
        v139 = (v137 + 40);
        if (!v137)
        {
          v139 = &v191;
        }

        *v139 = v138;
        *v138 = v137;
        *(v136 + 32) = 0;
        *(v136 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

LABEL_200:
    v128 = a1;
    v129 = 261;
LABEL_201:
    nw_http3_fail_all_streams(v128, v129);
    goto LABEL_221;
  }

  if (!v6)
  {
    if ((*(a1 + 1399) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v118 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v119 = *(a1 + 1304);
        *buf = 136446978;
        *&buf[4] = "nw_http3_control_stream_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v175;
        *&buf[22] = 2080;
        v208 = " ";
        v209 = 1024;
        v210 = v119;
        _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> First frame is not SETTINGS", buf, 0x26u);
      }
    }

    v120 = v199;
    v121 = v199 + 40;
    v122 = *(v199 + 5);
    if (v122)
    {
      *(v122 + 40) = type;
      v123 = *(v120 + 6);
      *type = v122;
      v191 = v123;
      *(v120 + 5) = 0;
      *(v120 + 6) = v121;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
      v208 = v3;
      LOBYTE(v209) = 1;
      do
      {
        v124 = *type;
        if (!*type)
        {
          break;
        }

        v125 = *(*type + 32);
        v126 = *(*type + 40);
        v127 = (v125 + 40);
        if (!v125)
        {
          v127 = &v191;
        }

        *v127 = v126;
        *v126 = v125;
        *(v124 + 32) = 0;
        *(v124 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v128 = a1;
    v129 = 266;
    goto LABEL_201;
  }

  if (v197 <= 64)
  {
    if (v197 == 7)
    {
      if ((*(a1 + 1399) & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v34 = *(a1 + 1304);
          *buf = 136446978;
          *&buf[4] = "nw_http3_control_stream_process_input";
          *&buf[12] = 2082;
          *&buf[14] = v175;
          *&buf[22] = 2080;
          v208 = " ";
          v209 = 1024;
          v210 = v34;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> received a GOAWAY, connection will not be reused", buf, 0x26u);
        }
      }

      nw_http3_async_close_connection_if_no_stream(a1);
      v35 = *(a1 + 32);
      if (v35)
      {
        v36 = *(v35 + 24);
        if (v36)
        {
          v37 = *(v36 + 240);
          if (v37)
          {
            v37();
            goto LABEL_45;
          }
        }
      }

      __nwlog_obj();
      v75 = *(a1 + 32);
      if (v75)
      {
        v76 = *(v75 + 16);
        if (!v76)
        {
          v76 = "invalid";
        }
      }

      else
      {
        v76 = "invalid";
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_control_stream_process_input";
      *&buf[12] = 2082;
      *&buf[14] = v76;
      v77 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(error) = 0;
      if (__nwlog_fault(v77, type, &error))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v78 = __nwlog_obj();
          v79 = type[0];
          if (os_log_type_enabled(v78, type[0]))
          {
            v80 = *(a1 + 32);
            if (v80)
            {
              v81 = *(v80 + 16);
              if (!v81)
              {
                v81 = "invalid";
              }
            }

            else
            {
              v81 = "invalid";
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_control_stream_process_input";
            *&buf[12] = 2082;
            *&buf[14] = v81;
            v103 = v78;
            v104 = v79;
            v105 = "%{public}s protocol %{public}s has invalid remove_listen_handler callback";
            goto LABEL_161;
          }
        }

        else if (error == 1)
        {
          v82 = v3;
          v83 = __nw_create_backtrace_string();
          v84 = __nwlog_obj();
          v85 = type[0];
          v86 = os_log_type_enabled(v84, type[0]);
          if (v83)
          {
            if (v86)
            {
              v87 = *(a1 + 32);
              if (v87)
              {
                v88 = *(v87 + 16);
                if (!v88)
                {
                  v88 = "invalid";
                }
              }

              else
              {
                v88 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "nw_http3_control_stream_process_input";
              *&buf[12] = 2082;
              *&buf[14] = v88;
              *&buf[22] = 2082;
              v208 = v83;
              _os_log_impl(&dword_181A37000, v84, v85, "%{public}s protocol %{public}s has invalid remove_listen_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v83);
          }

          else
          {
            v3 = v82;
            if (!v86)
            {
              goto LABEL_168;
            }

            v106 = *(a1 + 32);
            if (v106)
            {
              v107 = *(v106 + 16);
              if (!v107)
              {
                v107 = "invalid";
              }
            }

            else
            {
              v107 = "invalid";
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_control_stream_process_input";
            *&buf[12] = 2082;
            *&buf[14] = v107;
            _os_log_impl(&dword_181A37000, v84, v85, "%{public}s protocol %{public}s has invalid remove_listen_handler callback, no backtrace", buf, 0x16u);
          }

          v3 = v82;
        }

        else
        {
          v93 = __nwlog_obj();
          v94 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            v95 = *(a1 + 32);
            if (v95)
            {
              v96 = *(v95 + 16);
              if (!v96)
              {
                v96 = "invalid";
              }
            }

            else
            {
              v96 = "invalid";
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_control_stream_process_input";
            *&buf[12] = 2082;
            *&buf[14] = v96;
            v103 = v93;
            v104 = v94;
            v105 = "%{public}s protocol %{public}s has invalid remove_listen_handler callback, backtrace limit exceeded";
LABEL_161:
            _os_log_impl(&dword_181A37000, v103, v104, v105, buf, 0x16u);
          }
        }
      }

LABEL_168:
      if (v77)
      {
        free(v77);
      }

LABEL_45:
      nw_http3_notify_do_not_reuse(a1);
LABEL_111:
      v67 = v199;
      v68 = v199 + 40;
      v69 = *(v199 + 5);
      if (v69)
      {
        *(v69 + 40) = type;
        v70 = *(v67 + 6);
        *type = v69;
        v191 = v70;
        *(v67 + 5) = 0;
        *(v67 + 6) = v68;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
        v208 = v3;
        LOBYTE(v209) = 1;
        do
        {
          v71 = *type;
          if (!*type)
          {
            break;
          }

          v72 = *(*type + 32);
          v73 = *(*type + 40);
          v74 = (v72 + 40);
          if (!v72)
          {
            v74 = &v191;
          }

          *v74 = v73;
          *v73 = v72;
          *(v71 + 32) = 0;
          *(v71 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      goto LABEL_3;
    }

    if (v197 < 2 || v197 == 5)
    {
LABEL_171:
      if ((*(a1 + 1399) & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v108 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v109 = *(a1 + 1304);
          *buf = 136447234;
          *&buf[4] = "nw_http3_control_stream_process_input";
          *&buf[12] = 2082;
          *&buf[14] = v175;
          *&buf[22] = 2080;
          v208 = " ";
          v209 = 1024;
          v210 = v109;
          v211 = 2048;
          v212 = v5;
          _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Invalid frame %llu on control stream", buf, 0x30u);
        }
      }

      v110 = v199;
      v111 = v199 + 40;
      v112 = *(v199 + 5);
      if (v112)
      {
        *(v112 + 40) = type;
        v113 = *(v110 + 6);
        *type = v112;
        v191 = v113;
        *(v110 + 5) = 0;
        *(v110 + 6) = v111;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
        v208 = v3;
        LOBYTE(v209) = 1;
        do
        {
          v114 = *type;
          if (!*type)
          {
            break;
          }

          v115 = *(*type + 32);
          v116 = *(*type + 40);
          v117 = (v115 + 40);
          if (!v115)
          {
            v117 = &v191;
          }

          *v117 = v116;
          *v116 = v115;
          *(v114 + 32) = 0;
          *(v114 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      goto LABEL_200;
    }

LABEL_62:
    if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
    {
      v47 = __nwlog_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a1 + 1304);
        *buf = 136447234;
        *&buf[4] = "nw_http3_control_stream_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v175;
        *&buf[22] = 2080;
        v208 = " ";
        v209 = 1024;
        v210 = v48;
        v211 = 2048;
        v212 = v5;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> received unsupported frame %llu", buf, 0x30u);
      }
    }

    goto LABEL_111;
  }

  if (v197 != 4287504053)
  {
    if (v197 == 65)
    {
      goto LABEL_171;
    }

    goto LABEL_62;
  }

  v38 = *(a1 + 1200);
  if (v38)
  {
    dispatch_release(v38);
    *(a1 + 1200) = 0;
  }

  *buf = 0;
  nw_frame_array_get_frame_count(v199 + 5, 1, buf);
  v39 = *buf;
  v194 = 0;
  *(a1 + 1200) = dispatch_data_create_alloc();
  *v194 = v39;
  *type = 0;
  v191 = type;
  v192 = 0x2000000000;
  v193 = 0;
  v177[0] = MEMORY[0x1E69E9820];
  v177[1] = 0x40000000;
  v178 = ___ZL37nw_http3_control_stream_process_inputP17nw_protocol_http3_block_invoke_169;
  v179 = &unk_1E6A39300;
  v181 = type;
  v182 = v194 + 1;
  v180 = v198;
  v40 = *(v199 + 5);
  do
  {
    if (!v40)
    {
      break;
    }

    v41 = *(v40 + 32);
    v42 = v178(v177);
    v40 = v41;
  }

  while ((v42 & 1) != 0);
  v43 = nw_quic_connection_copy_sec_protocol_metadata(*(a1 + 1256));
  if (v43)
  {
    v44 = v43;
    trust = sec_protocol_metadata_copy_authenticator_trust();
    if (!trust)
    {
      if ((*(a1 + 1399) & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v150 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v151 = *(a1 + 1304);
          *buf = 136447234;
          *&buf[4] = "nw_http3_parse_certificate";
          *&buf[12] = 2082;
          *&buf[14] = v175;
          *&buf[22] = 2080;
          v208 = " ";
          v209 = 1024;
          v210 = v151;
          v211 = 2112;
          v212 = v44;
          _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to copy authenticator trust from received certificate, sec_protocol_metadata: %@", buf, 0x30u);
        }
      }

      os_release(v44);
      goto LABEL_213;
    }

    if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v90 = *(a1 + 1304);
        *buf = 136447234;
        *&buf[4] = "nw_http3_parse_certificate";
        *&buf[12] = 2082;
        *&buf[14] = v175;
        *&buf[22] = 2080;
        v208 = " ";
        v209 = 1024;
        v210 = v90;
        v211 = 2112;
        v212 = trust;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received trust %@", buf, 0x30u);
      }
    }

    object = v44;
    v45 = *(a1 + 1112);
    if (v45)
    {
      v46 = os_retain(v45);
    }

    else
    {
      v46 = 0;
    }

    v174 = sec_trust_copy_ref(trust);
    if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
    {
      v91 = __nwlog_obj();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        v92 = *(a1 + 1304);
        *buf = 136447234;
        *&buf[4] = "nw_http3_parse_certificate";
        *&buf[12] = 2082;
        *&buf[14] = v175;
        *&buf[22] = 2080;
        v208 = " ";
        v209 = 1024;
        v210 = v92;
        v211 = 2112;
        v212 = v174;
        _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received Authenticator trustRef: %@", buf, 0x30u);
      }
    }

    if (*(a1 + 1264))
    {
      if ((nw_parameters_get_should_trust_invalid_certificates(*(a1 + 1136)) & 1) != 0 || (error = 0, v49 = SecTrustEvaluateWithError(v174, &error), v50 = error, v49) && !error)
      {
        if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
        {
          v97 = __nwlog_obj();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            v98 = *(a1 + 1304);
            *buf = 136446978;
            *&buf[4] = "nw_http3_parse_certificate";
            *&buf[12] = 2082;
            *&buf[14] = v175;
            *&buf[22] = 2080;
            v208 = " ";
            v209 = 1024;
            v210 = v98;
            _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Trusted incoming secondary certificate", buf, 0x26u);
          }
        }

        if (v174)
        {
          v51 = SecTrustCopyCertificateChain(v174);
          for (j = 0; CFArrayGetCount(v51) > j; ++j)
          {
            v53 = v51;
            CFArrayGetValueAtIndex(v51, 0);
            v54 = SecCertificateCopyDNSNames();
            for (k = 0; CFArrayGetCount(v54) > k; ++k)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v54, k);
              c_string_from_cfstring = nw_utilities_create_c_string_from_cfstring(ValueAtIndex);
              if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v60 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v61 = *(a1 + 1304);
                  *buf = 136447234;
                  *&buf[4] = "nw_http3_parse_certificate";
                  *&buf[12] = 2082;
                  *&buf[14] = v175;
                  *&buf[22] = 2080;
                  v208 = " ";
                  v209 = 1024;
                  v210 = v61;
                  v211 = 2080;
                  v212 = c_string_from_cfstring;
                  _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received name in cert %s", buf, 0x30u);
                }
              }

              port = nw_endpoint_get_port(v46);
              host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(c_string_from_cfstring, port);
              if (c_string_from_cfstring)
              {
                free(c_string_from_cfstring);
              }

              nw_http_connection_metadata_store_secondary_certificate(*(a1 + 1264), host_with_numeric_port);
              if (host_with_numeric_port)
              {
                os_release(host_with_numeric_port);
              }
            }

            if (v54)
            {
              CFRelease(v54);
            }

            v51 = v53;
          }

          if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
          {
            v101 = __nwlog_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              v102 = *(a1 + 1304);
              *buf = 136447234;
              *&buf[4] = "nw_http3_parse_certificate";
              *&buf[12] = 2082;
              *&buf[14] = v175;
              *&buf[22] = 2080;
              v208 = " ";
              v209 = 1024;
              v210 = v102;
              v211 = 2112;
              v212 = v51;
              _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received Authenticator certChain: %@", buf, 0x30u);
            }
          }

          v3 = &__block_descriptor_tmp_171_63621;
          if (v51)
          {
            CFRelease(v51);
          }
        }

        if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
        {
          v99 = __nwlog_obj();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v100 = *(a1 + 1304);
            *buf = 136446978;
            *&buf[4] = "nw_http3_all_streams_metadata_changed";
            *&buf[12] = 2082;
            *&buf[14] = v175;
            *&buf[22] = 2080;
            v208 = " ";
            v209 = 1024;
            v210 = v100;
            _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
          }
        }

        v62 = *(a1 + 888);
        if (v62)
        {
          do
          {
            v63 = *(v62 + 536);
            if ((*(v62 + 734) & 8) != 0)
            {
              nw_protocol_notify(*(v62 + 48), a1, 5);
            }

            v62 = v63;
          }

          while (v63);
        }
      }

      else
      {
        if ((*(a1 + 1399) & 0x20) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v64 = gLogObj;
          v65 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          v50 = error;
          if (v65)
          {
            v66 = *(a1 + 1304);
            *buf = 136447234;
            *&buf[4] = "nw_http3_parse_certificate";
            *&buf[12] = 2082;
            *&buf[14] = v175;
            *&buf[22] = 2080;
            v208 = " ";
            v209 = 1024;
            v210 = v66;
            v211 = 2112;
            v212 = error;
            _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Trust evaluation on secondary certificate failed with error: %@, ignoring secondary certificates", buf, 0x30u);
            v50 = error;
          }
        }

        if (v50)
        {
          CFRelease(v50);
        }
      }
    }

    if (v174)
    {
      CFRelease(v174);
    }

    os_release(trust);
    os_release(object);
    _Block_object_dispose(type, 8);
    goto LABEL_111;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_parse_certificate";
  v164 = _os_log_send_and_compose_impl();
  LOBYTE(error) = 16;
  v206 = 0;
  if (!__nwlog_fault(v164, &error, &v206))
  {
    goto LABEL_253;
  }

  if (error != 17)
  {
    if (v206 == 1)
    {
      v170 = __nw_create_backtrace_string();
      v165 = __nwlog_obj();
      v166 = error;
      v171 = os_log_type_enabled(v165, error);
      if (v170)
      {
        if (v171)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http3_parse_certificate";
          *&buf[12] = 2082;
          *&buf[14] = v170;
          _os_log_impl(&dword_181A37000, v165, v166, "%{public}s called with null sec_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v170);
        goto LABEL_253;
      }

      if (!v171)
      {
        goto LABEL_253;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_parse_certificate";
      v167 = "%{public}s called with null sec_metadata, no backtrace";
    }

    else
    {
      v165 = __nwlog_obj();
      v166 = error;
      if (!os_log_type_enabled(v165, error))
      {
        goto LABEL_253;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_parse_certificate";
      v167 = "%{public}s called with null sec_metadata, backtrace limit exceeded";
    }

LABEL_252:
    _os_log_impl(&dword_181A37000, v165, v166, v167, buf, 0xCu);
    goto LABEL_253;
  }

  v165 = __nwlog_obj();
  v166 = error;
  if (os_log_type_enabled(v165, error))
  {
    *buf = 136446210;
    *&buf[4] = "nw_http3_parse_certificate";
    v167 = "%{public}s called with null sec_metadata";
    goto LABEL_252;
  }

LABEL_253:
  if (v164)
  {
    free(v164);
  }

LABEL_213:
  v152 = v199;
  v153 = v199 + 40;
  v154 = *(v199 + 5);
  if (v154)
  {
    *(v154 + 5) = &error;
    v155 = *(v152 + 6);
    error = v154;
    v205 = v155;
    *(v152 + 5) = 0;
    *(v152 + 6) = v153;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
    v208 = v3;
    LOBYTE(v209) = 1;
    do
    {
      v156 = error;
      if (!error)
      {
        break;
      }

      v157 = *(error + 4);
      v158 = *(error + 5);
      v159 = (v157 + 40);
      if (!v157)
      {
        v159 = &v205;
      }

      *v159 = v158;
      *v158 = v157;
      *(v156 + 4) = 0;
      *(v156 + 5) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v148 = a1;
  v149 = 262;
LABEL_220:
  nw_http3_fail_all_streams(v148, v149);
  _Block_object_dispose(type, 8);
LABEL_221:
  _Block_object_dispose(v198, 8);
}

uint64_t nw_protocol_http3_uni_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
    v22 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v22, type, &v40))
    {
      goto LABEL_51;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v40 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type[0];
        if (!os_log_type_enabled(v23, type[0]))
        {
          goto LABEL_51;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
        v25 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_50;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type[0];
      v28 = os_log_type_enabled(v23, type[0]);
      if (!backtrace_string)
      {
        if (!v28)
        {
          goto LABEL_51;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
        v25 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_50;
      }

      if (v28)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v29 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_40:
        _os_log_impl(&dword_181A37000, v23, v24, v29, buf, 0x16u);
      }

LABEL_41:
      free(backtrace_string);
      goto LABEL_51;
    }

    v23 = __nwlog_obj();
    v24 = type[0];
    if (!os_log_type_enabled(v23, type[0]))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
    v25 = "%{public}s called with null protocol";
LABEL_50:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
LABEL_51:
    if (v22)
    {
      free(v22);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
    v22 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v22, type, &v40))
    {
      goto LABEL_51;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
      v25 = "%{public}s called with null http3_stream";
      goto LABEL_50;
    }

    if (v40 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
      v25 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type[0];
    v30 = os_log_type_enabled(v23, type[0]);
    if (backtrace_string)
    {
      if (v30)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v29 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (!v30)
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
    v25 = "%{public}s called with null http3_stream, no backtrace";
    goto LABEL_50;
  }

  if (gLogDatapath == 1)
  {
    v26 = __nwlog_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_uni_stream_get_input_frames";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_uni_stream %p", buf, 0x16u);
    }
  }

  if ((handle[121] & 2) != 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v42 = 0;
    *type = 0;
    v37 = type;
    v38 = 0x2000000000;
    v39 = 0;
    v13 = (handle + 104);
    v12 = *(handle + 13);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v32 = ___ZL45nw_protocol_http3_uni_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v33 = &unk_1E6A38BB8;
    v34 = buf;
    v35 = type;
    do
    {
      if (!v12)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = v32(v31);
      v12 = v14;
    }

    while ((v15 & 1) != 0);
    if (a3 > *(*&buf[8] + 24) && a5 > *(v37 + 6))
    {
      output_handler = a1->output_handler;
      if (!output_handler || (callbacks = output_handler->callbacks) == 0 || (get_input_frames = callbacks->get_input_frames) == 0 || (v19 = get_input_frames()) == 0)
      {
        v11 = 0;
LABEL_19:
        _Block_object_dispose(type, 8);
        _Block_object_dispose(buf, 8);
        return v11;
      }

      *(v37 + 6) += v19;
    }

    if (*v13)
    {
      tqh_last = a6->tqh_last;
      *tqh_last = *v13;
      *(*(handle + 13) + 40) = tqh_last;
      a6->tqh_last = *(handle + 14);
      *(handle + 13) = 0;
      *(handle + 14) = v13;
    }

    v11 = *(v37 + 6);
    goto LABEL_19;
  }

  return 0;
}

uint64_t ___ZL45nw_protocol_http3_uni_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, _DWORD *a2)
{
  *(*(*(a1 + 32) + 8) + 24) += nw_frame_unclaimed_length(a2);
  ++*(*(*(a1 + 40) + 8) + 24);
  return 1;
}

uint64_t ___ZL32nw_http3_framer_get_input_framesP15nw_http3_framerjjjP21nw_http3_frame_type_tPyPbPjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v30 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v30);
  v5 = a1[5];
  if (v4)
  {
    v6 = *(v5 + 80);
    if (16 - v6 >= v30)
    {
      v7 = v30;
    }

    else
    {
      v7 = 16 - v6;
    }

    memcpy((v5 + v6 + 64), v4, v7);
    v9 = a1[5];
    v10 = *(v9 + 80) + v7;
    *(v9 + 80) = v10;
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = (v9 + 64);
    v12 = *(v9 + 64);
    if (v12 <= 0x3F)
    {
      v13 = 1;
      goto LABEL_8;
    }

    v22 = v12 >> 6;
    if (v22 == 2)
    {
      if (v10 < 4u)
      {
        goto LABEL_26;
      }

      v12 = bswap32(*v11 & 0xFFFFFF7F);
      v13 = 4;
    }

    else
    {
      if (v22 == 1)
      {
        if (v10 != 1)
        {
          v12 = bswap32(*v11 & 0xFFBF) >> 16;
          v13 = 2;
          goto LABEL_8;
        }

LABEL_26:
        v13 = 0;
        goto LABEL_27;
      }

      if (v10 < 8u)
      {
        goto LABEL_26;
      }

      v12 = bswap64(*v11 & 0xFFFFFFFFFFFFFF3FLL);
      v13 = 8;
    }

LABEL_8:
    *v9 = v12;
    v14 = v10 - v13;
    if (v10 != v13)
    {
      v15 = *(v11 + v13);
      if (v15 <= 0x3F)
      {
        v16 = 1;
LABEL_11:
        v13 += v16;
        *(v9 + 80) = 0;
        v17 = 1;
        *(v9 + 8) = v15;
        *(v9 + 16) = v15;
LABEL_28:
        *(*(a1[4] + 8) + 24) = v17;
        v24 = *(*(a1[4] + 8) + 24);
        if (v24)
        {
          nw_frame_claim(a2, v8, v13 - v6, 0);
          v25 = a1[6];
          if (v25)
          {
            *v25 = v13;
          }
        }

        else
        {
          v26 = (v9 + 56);
          v27 = *(a2 + 32);
          v28 = *(a2 + 40);
          if (v27)
          {
            v26 = (v27 + 40);
          }

          *v26 = v28;
          *v28 = v27;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          nw_frame_finalize(a2);
        }

        return v24 ^ 1u;
      }

      v23 = v15 >> 6;
      if (v23 == 2)
      {
        if (v14 >= 4)
        {
          v15 = bswap32(*(v11 + v13) & 0xFFFFFF7F);
          v16 = 4;
          goto LABEL_11;
        }
      }

      else if (v23 == 1)
      {
        if (v14 != 1)
        {
          v15 = bswap32(*(v11 + v13) & 0xFFBF) >> 16;
          v16 = 2;
          goto LABEL_11;
        }
      }

      else if (v14 >= 8)
      {
        v15 = bswap64(*(v11 + v13) & 0xFFFFFFFFFFFFFF3FLL);
        v16 = 8;
        goto LABEL_11;
      }
    }

LABEL_27:
    v17 = 0;
    goto LABEL_28;
  }

  v18 = (v5 + 56);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  if (v19)
  {
    v18 = (v19 + 40);
  }

  *v18 = v20;
  *v20 = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v21 = 1;
  nw_frame_finalize(a2);
  return v21;
}

uint64_t nw_http3_framer_deliver_http3_frame_body(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5, void *a6, _BYTE *a7, uint64_t a8)
{
  v66 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 0x40000000;
  v50 = ___ZL40nw_http3_framer_deliver_http3_frame_bodyP15nw_http3_framerjjjP21nw_http3_frame_type_tPyPbP16nw_frame_array_s_block_invoke;
  v51 = &unk_1E6A39020;
  v52 = &v58;
  v53 = &v54;
  v16 = a1[6];
  do
  {
    if (!v16)
    {
      break;
    }

    v17 = *(v16 + 32);
    v18 = v50(v49);
    v16 = v17;
  }

  while ((v18 & 1) != 0);
  v19 = *(v59 + 6);
  v20 = a1[2];
  if (v19 < a3 && v20 > v19)
  {
    v22 = a1[5];
    if (*(v55 + 6) < a4 && v22 != 0)
    {
      v24 = *(v22 + 24);
      if (v24)
      {
        if (*(v24 + 80))
        {
          v45 = 0;
          v46 = &v45;
          if (v20 >= a2)
          {
            LODWORD(v20) = a2;
          }

          v25 = (v20 - v19);
          if (v20 < v19 && gLogDatapath == 1)
          {
            v35 = v22;
            v33 = __nwlog_obj();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = *(v59 + 6);
              *buf = 136446978;
              *&buf[4] = "nw_http3_framer_deliver_http3_frame_body";
              *&buf[12] = 2082;
              *&buf[14] = "final_minimum_bytes";
              *&buf[22] = 2048;
              v63 = v34;
              v64 = 2048;
              v65 = v25;
              _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }

            v22 = v35;
          }

          if (!(*(*(v22 + 24) + 80))())
          {
            v31 = 0;
            goto LABEL_26;
          }

          if (v45)
          {
            v26 = a1[7];
            *v26 = v45;
            v27 = v46;
            *(v45 + 40) = v26;
            a1[7] = v27;
          }
        }
      }
    }
  }

  *a5 = *a1;
  *a6 = a1[1];
  *a7 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LODWORD(v63) = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 0x40000000;
  v37 = ___ZL40nw_http3_framer_deliver_http3_frame_bodyP15nw_http3_framerjjjP21nw_http3_frame_type_tPyPbP16nw_frame_array_s_block_invoke_133;
  v38 = &unk_1E6A39048;
  v44 = a3;
  v41 = a1;
  v42 = a8;
  v39 = buf;
  v40 = &v45;
  v43 = a7;
  v28 = a1[6];
  do
  {
    if (!v28)
    {
      break;
    }

    v29 = *(v28 + 32);
    v30 = (v37)(v36);
    v28 = v29;
  }

  while ((v30 & 1) != 0);
  v31 = *(v46 + 6);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(buf, 8);
LABEL_26:
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  return v31;
}

uint64_t ___ZL40nw_http3_framer_deliver_http3_frame_bodyP15nw_http3_framerjjjP21nw_http3_frame_type_tPyPbP16nw_frame_array_s_block_invoke(uint64_t a1, _DWORD *a2)
{
  *(*(*(a1 + 32) + 8) + 24) += nw_frame_unclaimed_length(a2);
  ++*(*(*(a1 + 40) + 8) + 24);
  return 1;
}

uint64_t ___ZL37nw_http3_control_stream_process_inputP17nw_protocol_http3_block_invoke(void *a1, uint64_t a2)
{
  v4 = (*(a1[4] + 8) + 48);
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
  LODWORD(__n) = 0;
  v7 = nw_frame_unclaimed_bytes(a2, &__n);
  memcpy((a1[6] + *(*(a1[5] + 8) + 24)), v7, __n);
  *(*(a1[5] + 8) + 24) += __n;
  nw_frame_finalize(a2);
  return 1;
}

BOOL nw_http3_parse_settings(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v57 = *MEMORY[0x1E69E9840];
  nw_http_connection_metadata_set_settings_received(*(a1 + 1264));
  if (a3)
  {
    v42 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = a3;
    v40 = 0;
    v41 = -1;
    while (a2)
    {
      v10 = *a2;
      if (v10 > 0x3F)
      {
        if (v10 >> 6 == 2)
        {
          if (v9 < 4)
          {
            return 0;
          }

          v10 = bswap32(*a2 & 0xFFFFFF7F);
          v11 = 4;
          v12 = v9 - 4;
          if (v9 == 4)
          {
            return 0;
          }
        }

        else if (v10 >> 6 == 1)
        {
          if (v9 == 1)
          {
            return 0;
          }

          v10 = bswap32(*a2 & 0xFFBF) >> 16;
          v11 = 2;
          v12 = v9 - 2;
          if (v9 == 2)
          {
            return 0;
          }
        }

        else
        {
          if (v9 < 8)
          {
            return 0;
          }

          v10 = bswap64(*a2 & 0xFFFFFFFFFFFFFF3FLL);
          v11 = 8;
          v12 = v9 - 8;
          if (v9 == 8)
          {
            return 0;
          }
        }
      }

      else
      {
        v11 = 1;
        v12 = v9 - 1;
        if (v9 == 1)
        {
          return 0;
        }
      }

      v13 = (a2 + v11);
      v14 = *(a2 + v11);
      if (v14 > 0x3F)
      {
        if (v14 >> 6 == 2)
        {
          if (v12 < 4)
          {
            return 0;
          }

          v14 = bswap32(*v13 & 0xFFFFFF7F);
          v15 = 4;
        }

        else if (v14 >> 6 == 1)
        {
          if (v12 == 1)
          {
            return 0;
          }

          v14 = bswap32(*v13 & 0xFFBF) >> 16;
          v15 = 2;
        }

        else
        {
          if (v12 < 8)
          {
            return 0;
          }

          v14 = bswap64(*v13 & 0xFFFFFFFFFFFFFF3FLL);
          v15 = 8;
        }
      }

      else
      {
        v15 = 1;
      }

      if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
      {
        log = __nwlog_obj();
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 1304);
          *buf = 136447490;
          v46 = "nw_http3_parse_settings";
          v47 = 2082;
          v48 = (a1 + 1313);
          v49 = 2080;
          v50 = " ";
          v51 = 1024;
          v52 = v19;
          v53 = 2048;
          v54 = v10;
          v55 = 2048;
          v56 = v14;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> setting %llu = %llu", buf, 0x3Au);
        }
      }

      if (v10 <= 6)
      {
        if (v10 == 1)
        {
          if (v42)
          {
            return 0;
          }

          v42 = 1;
          v8 = v14;
        }

        else if (v10 == 6)
        {
          if (v6)
          {
            return 0;
          }

          v6 = 1;
          v41 = v14;
        }

        else if ((v10 - 2) < 4)
        {
          return 0;
        }
      }

      else
      {
        switch(v10)
        {
          case 7:
            if (v7)
            {
              return 0;
            }

            v7 = 1;
            v40 = v14;
            break;
          case 8:
            nw_http_connection_metadata_set_connect_enabled(*(a1 + 1264), v14 != 0);
            break;
          case 3329323114:
            webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(a1 + 1264));
            nw_webtransport_connection_state_set_max_sessions(webtransport_state, v14);
            if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
            {
              v17 = __nwlog_obj();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = *(a1 + 1304);
                *buf = 136447234;
                v46 = "nw_http3_parse_settings";
                v47 = 2082;
                v48 = (a1 + 1313);
                v49 = 2080;
                v50 = " ";
                v51 = 1024;
                v52 = v18;
                v53 = 2048;
                v54 = v14;
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> received max webtransport session update: %llu", buf, 0x30u);
              }
            }

            break;
        }
      }

      a2 = (v13 + v15);
      v9 = v12 - v15;
      if (v12 == v15)
      {
        goto LABEL_52;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v46 = "_http_vle_decode";
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v33, &type, &v43))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v46 = "_http_vle_decode";
      v36 = "%{public}s called with null *buffer";
    }

    else if (v43 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v38 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (v38)
        {
          *buf = 136446466;
          v46 = "_http_vle_decode";
          v47 = 2082;
          v48 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_106;
      }

      if (!v38)
      {
LABEL_106:
        if (v33)
        {
          free(v33);
        }

        return 0;
      }

      *buf = 136446210;
      v46 = "_http_vle_decode";
      v36 = "%{public}s called with null *buffer, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v46 = "_http_vle_decode";
      v36 = "%{public}s called with null *buffer, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    goto LABEL_106;
  }

  v8 = 0;
  v40 = 0;
  v41 = -1;
LABEL_52:
  if ((*(a1 + 1397) & 0x100) == 0)
  {
    *(a1 + 1016) = v8;
    *(a1 + 1032) = v41;
    *(a1 + 1024) = v40;
    if (v8 >= 0x10000)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = v8;
    }

    if (v20 > v8)
    {
      v21 = 22;
LABEL_58:
      *__error() = v21;
      v22 = 8;
LABEL_88:
      *(a1 + 1216) = dispatch_data_create(buf, v22, 0, 0);
      nw_http3_start_encoder_stream_if_needed(a1);
      nw_http3_encoder_stream_process_output(a1);
      return 1;
    }

    if (!v8)
    {
      v22 = 0;
LABEL_79:
      v29 = v20 / 0x60;
      if (v8 <= 0x4DF)
      {
        v29 = 12;
      }

      *(a1 + 476) = v29;
      v30 = malloc_type_malloc(8 * v29 + 8, 0x100004000313F17uLL);
      *(a1 + 464) = v30;
      if (v30)
      {
        if (v8 >= 0x20)
        {
          v31 = malloc_type_malloc(0x80uLL, 0xA004088793A40uLL);
          if (!v31)
          {
            free(*(a1 + 464));
            if (v22)
            {
              goto LABEL_88;
            }

            goto LABEL_91;
          }

          v31[2] = 0;
          v31[3] = v31 + 2;
          v31[4] = 0;
          v31[5] = v31 + 4;
          v31[6] = 0;
          v31[7] = v31 + 6;
          v31[8] = 0;
          v31[9] = v31 + 8;
          v31[10] = 0;
          v31[11] = v31 + 10;
          v31[12] = 0;
          v31[13] = v31 + 12;
          v31[14] = 0;
          v31[15] = v31 + 14;
          v32 = 2;
          *v31 = 0;
          v31[1] = v31;
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        *(a1 + 276) = v8 >> 5;
        *(a1 + 272) = v8;
        *(a1 + 268) = v20;
        *(a1 + 284) = v40;
        *(a1 + 320) = v31;
        *(a1 + 300) = v32;
        *(a1 + 448) = 0;
        *(a1 + 260) |= 2u;
      }

      if (v22)
      {
        goto LABEL_88;
      }

LABEL_91:
      *(a1 + 1397) |= 0x2000u;
      return 1;
    }

    buf[0] = 32;
    if (v8 <= 0x1E)
    {
      v24 = &buf[1];
      buf[0] = v20 | 0x20;
      goto LABEL_75;
    }

    buf[0] = 63;
    v25 = v20 - 31;
    if ((v20 - 31) < 0x80)
    {
      v26 = 1;
      v27 = buf;
    }

    else
    {
      buf[1] = v25 | 0x80;
      if (v25 < 0x4000)
      {
        v27 = &buf[1];
        v25 >>= 7;
        v26 = 2;
      }

      else
      {
        buf[2] = (v25 >> 7) | 0x80;
        if (v25 >= 0x200000)
        {
          buf[3] = (v25 >> 14) | 0x80;
          LOBYTE(v46) = (v25 >> 21) | 0x80;
          BYTE1(v46) = (v25 >> 28) | 0x80;
          BYTE2(v46) = (v25 >> 35) | 0x80;
          BYTE3(v46) = (v25 >> 42) | 0x80;
          goto LABEL_77;
        }

        v27 = &buf[2];
        v25 >>= 14;
        v26 = 3;
      }
    }

    v24 = v27 + 2;
    buf[v26] = v25;
    if (v27 + 2 > buf)
    {
LABEL_75:
      v28 = *(a1 + 448);
      if (v28)
      {
        fwrite("qenc: debug: ", 0xDuLL, 1uLL, v28);
        v22 = v24 - buf;
        fprintf(*(a1 + 448), "generated TSU=%u instruction %zd byte%.*s in size", v20, v22, v22 != 1, "s");
        fputc(10, *(a1 + 448));
      }

      else
      {
        v22 = v24 - buf;
      }

      goto LABEL_79;
    }

LABEL_77:
    v21 = 55;
    goto LABEL_58;
  }

  if (*(a1 + 1016) > v8 || *(a1 + 1032) > v41)
  {
    return 0;
  }

  return *(a1 + 1024) <= v40;
}

void nw_http_connection_metadata_set_settings_received(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_connection_metadata_set_settings_received";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_connection_metadata_set_settings_received";
        v7 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v20 = "nw_http_connection_metadata_set_settings_received";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v4);
        goto LABEL_7;
      }

      if (v10)
      {
        *buf = 136446210;
        v20 = "nw_http_connection_metadata_set_settings_received";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_connection_metadata_set_settings_received";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_connection_definition_definition))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __nw_http_connection_metadata_set_settings_received_block_invoke;
    v15 = &__block_descriptor_33_e9_B16__0_v8l;
    v16 = 1;
    handle = _nw_protocol_metadata_get_handle(v1);
    if (handle)
    {
      v14(v13, handle);
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_connection_metadata_set_settings_received";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_connection_metadata_set_settings_received";
      v7 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_connection_metadata_set_settings_received";
      v7 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v20 = "nw_http_connection_metadata_set_settings_received";
      v7 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    *buf = 136446466;
    v20 = "nw_http_connection_metadata_set_settings_received";
    v21 = 2082;
    v22 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http3_try_persist_0rtt_state(uint64_t a1)
{
  if (uuid_is_null((a1 + 840)) && *(a1 + 1176) && *(a1 + 1184) && *(a1 + 1192))
  {
    v2 = nw_storage_copy_shared();
    v3 = *(a1 + 1112);
    if (v3)
    {
      v4 = os_retain(v3);
    }

    else
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = v4;
      v6 = nw_endpoint_copy_parent_endpoint(v4);
      if (!v6)
      {
        break;
      }

      v4 = v6;
      if (v5)
      {
        os_release(v5);
      }
    }

    nw_storage_store_http_early_data_state(v2, 0, v4, *(a1 + 1192), *(a1 + 1176), *(a1 + 1184));
    if (v4)
    {
      os_release(v4);
    }

    if (v2)
    {

      os_release(v2);
    }
  }
}

void nw_http3_encoder_stream_process_input(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = (a1 + 976);
    while (1)
    {
      *v63 = 0;
      *&v63[8] = v63;
      *&v63[16] = 0x3802000000;
      v64 = __Block_byref_object_copy__63268;
      v65 = __Block_byref_object_dispose__63269;
      v66[0] = 0;
      v66[1] = v66;
      if (!(*(*(*(a1 + 1080) + 24) + 80))(*(a1 + 1080), a1))
      {
        _Block_object_dispose(v63, 8);
        return;
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 0x40000000;
      v49 = ___ZL37nw_http3_encoder_stream_process_inputP17nw_protocol_http3_block_invoke;
      v50 = &unk_1E6A39348;
      v51 = v63;
      v52 = a1;
      v3 = *(*&v63[8] + 40);
      do
      {
        if (!v3)
        {
          break;
        }

        v4 = *(v3 + 32);
        v5 = (v49)(v48);
        v3 = v4;
      }

      while ((v5 & 1) != 0);
      v6 = *&v63[8];
      v7 = *&v63[8] + 40;
      v8 = *(*&v63[8] + 40);
      if (v8)
      {
        *(v8 + 40) = &v53;
        v9 = *(v6 + 48);
        v53 = v8;
        v54[0] = v9;
        *(v6 + 40) = 0;
        *(v6 + 48) = v7;
        *type = MEMORY[0x1E69E9820];
        v56 = 0x40000000;
        v57 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
        v58 = &__block_descriptor_tmp_171_63621;
        LOBYTE(v59) = 0;
        do
        {
          v10 = v53;
          if (!v53)
          {
            break;
          }

          v11 = *(v53 + 32);
          v12 = *(v53 + 40);
          v13 = (v11 + 40);
          if (!v11)
          {
            v13 = v54;
          }

          *v13 = v12;
          *v12 = v11;
          *(v10 + 32) = 0;
          *(v10 + 40) = 0;
        }

        while ((v57(type) & 1) != 0);
      }

      while (1)
      {
        v14 = *(a1 + 968);
        if (!v14)
        {
          break;
        }

        v15 = *(v14 + 600);
        v16 = *(v14 + 608);
        v17 = (v15 + 608);
        if (!v15)
        {
          v17 = v2;
        }

        *v17 = v16;
        *v16 = v15;
        *(v14 + 600) = 0u;
        v18 = *(v14 + 380);
        if (v18 > 8)
        {
LABEL_35:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          *&buf[24] = 0;
          *type = MEMORY[0x1E69E9820];
          v56 = 0x40000000;
          v57 = ___ZL40nw_http3_stream_fields_process_unblockedP24nw_protocol_http3_stream_block_invoke;
          v58 = &unk_1E6A39370;
          v59 = buf;
          v60 = v14;
          v36 = *(v14 + 216);
          do
          {
            if (!v36)
            {
              break;
            }

            output_handler = v36->output_handler;
            v38 = v57(type);
            v36 = output_handler;
          }

          while ((v38 & 1) != 0);
          if (*(*&buf[8] + 24))
          {
            if ((*(v14 + 732) & 0x400) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            nw_protocol_http3_stream_input_available(v14, v36);
            if ((*(v14 + 732) & 0x400) == 0)
            {
              goto LABEL_15;
            }
          }

          v39 = *(v14 + 336);
          v40 = *(*(v14 + 344) + 1272);
          v53 = MEMORY[0x1E69E9820];
          v54[0] = 0x40000000;
          v54[1] = ___ZL40nw_http3_stream_fields_process_unblockedP24nw_protocol_http3_stream_block_invoke_2;
          v54[2] = &unk_1E6A39398;
          v54[3] = v39;
          v54[4] = v14;
          nw_queue_context_async(v40, &v53);
LABEL_15:
          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (((1 << v18) & 0x1BB) == 0)
          {
            if (v18 == 2)
            {
              *(v14 + 380) = 1;
              v32 = nw_http3_encoder_stream_get_and_reset_received_size(*(v14 + 344));
              nw_http_transaction_metadata_increment_inbound_header_size(*(v14 + 400), v32);
            }

            else
            {
              *(v14 + 380) = 5;
            }

            goto LABEL_35;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = *(v14 + 380);
          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_fields_process_unblocked";
          *&buf[12] = 1024;
          *&buf[14] = v19;
          v20 = _os_log_send_and_compose_impl();
          v62 = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v20, &v62, &v61))
          {
            if (v62 == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v21 = gLogObj;
              v22 = v62;
              if (os_log_type_enabled(gLogObj, v62))
              {
                v23 = *(v14 + 380);
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_fields_process_unblocked";
                *&buf[12] = 1024;
                *&buf[14] = v23;
                v24 = v21;
                v25 = v22;
                v26 = "%{public}s Unexpected input state %d";
LABEL_45:
                _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x12u);
              }
            }

            else if (v61 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v28 = gLogObj;
              v29 = v62;
              v30 = os_log_type_enabled(gLogObj, v62);
              if (backtrace_string)
              {
                if (v30)
                {
                  v31 = *(v14 + 380);
                  *buf = 136446722;
                  *&buf[4] = "nw_http3_stream_fields_process_unblocked";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  *&buf[18] = 2082;
                  *&buf[20] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Unexpected input state %d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(backtrace_string);
              }

              else if (v30)
              {
                v41 = *(v14 + 380);
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_fields_process_unblocked";
                *&buf[12] = 1024;
                *&buf[14] = v41;
                v24 = v28;
                v25 = v29;
                v26 = "%{public}s Unexpected input state %d, no backtrace";
                goto LABEL_45;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v33 = gLogObj;
              v34 = v62;
              if (os_log_type_enabled(gLogObj, v62))
              {
                v35 = *(v14 + 380);
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_fields_process_unblocked";
                *&buf[12] = 1024;
                *&buf[14] = v35;
                v24 = v33;
                v25 = v34;
                v26 = "%{public}s Unexpected input state %d, backtrace limit exceeded";
                goto LABEL_45;
              }
            }
          }

          if (v20)
          {
            free(v20);
          }
        }
      }

      if (*(a1 + 520) != *(a1 + 524))
      {
        nw_http3_start_decoder_stream_if_needed(a1);
        nw_http3_decoder_stream_process_output(a1);
      }

      _Block_object_dispose(v63, 8);
    }
  }

  __nwlog_obj();
  *v63 = 136446210;
  *&v63[4] = "nw_http3_encoder_stream_process_input";
  v42 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v53) = 0;
  if (__nwlog_fault(v42, type, &v53))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (!os_log_type_enabled(v43, type[0]))
      {
        goto LABEL_66;
      }

      *v63 = 136446210;
      *&v63[4] = "nw_http3_encoder_stream_process_input";
      v45 = "%{public}s called with null http3";
      goto LABEL_65;
    }

    if (v53 != 1)
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (!os_log_type_enabled(v43, type[0]))
      {
        goto LABEL_66;
      }

      *v63 = 136446210;
      *&v63[4] = "nw_http3_encoder_stream_process_input";
      v45 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_65;
    }

    v46 = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v44 = type[0];
    v47 = os_log_type_enabled(v43, type[0]);
    if (v46)
    {
      if (v47)
      {
        *v63 = 136446466;
        *&v63[4] = "nw_http3_encoder_stream_process_input";
        *&v63[12] = 2082;
        *&v63[14] = v46;
        _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null http3, dumping backtrace:%{public}s", v63, 0x16u);
      }

      free(v46);
      goto LABEL_66;
    }

    if (v47)
    {
      *v63 = 136446210;
      *&v63[4] = "nw_http3_encoder_stream_process_input";
      v45 = "%{public}s called with null http3, no backtrace";
LABEL_65:
      _os_log_impl(&dword_181A37000, v43, v44, v45, v63, 0xCu);
    }
  }

LABEL_66:
  if (v42)
  {
    free(v42);
  }
}

void nw_http3_decoder_stream_process_input(uint64_t a1)
{
  v34[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    while (1)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v32 = __Block_byref_object_copy__63268;
      v33 = __Block_byref_object_dispose__63269;
      v34[0] = 0;
      v34[1] = v34;
      if (!(*(*(*(a1 + 1096) + 24) + 80))())
      {
        break;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v20 = ___ZL37nw_http3_decoder_stream_process_inputP17nw_protocol_http3_block_invoke;
      v21 = &unk_1E6A393E8;
      v22 = buf;
      v23 = a1;
      v2 = *(*&buf[8] + 40);
      do
      {
        if (!v2)
        {
          break;
        }

        v3 = *(v2 + 32);
        v4 = (v20)(v19);
        v2 = v3;
      }

      while ((v4 & 1) != 0);
      v5 = *&buf[8];
      v6 = *&buf[8] + 40;
      v7 = *(*&buf[8] + 40);
      if (v7)
      {
        *(v7 + 40) = &v29;
        v8 = *(v5 + 48);
        v29 = v7;
        v30 = v8;
        *(v5 + 40) = 0;
        *(v5 + 48) = v6;
        *type = MEMORY[0x1E69E9820];
        v25 = 0x40000000;
        v26 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_63620;
        v27 = &__block_descriptor_tmp_171_63621;
        v28 = 0;
        do
        {
          v9 = v29;
          if (!v29)
          {
            break;
          }

          v10 = *(v29 + 32);
          v11 = *(v29 + 40);
          v12 = (v10 + 40);
          if (!v10)
          {
            v12 = &v30;
          }

          *v12 = v11;
          *v11 = v10;
          *(v9 + 32) = 0;
          *(v9 + 40) = 0;
        }

        while (((v26)(type) & 1) != 0);
      }

      _Block_object_dispose(buf, 8);
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_decoder_stream_process_input";
  v13 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v29) = 0;
  if (__nwlog_fault(v13, type, &v29))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_decoder_stream_process_input";
      v16 = "%{public}s called with null http3";
      goto LABEL_30;
    }

    if (v29 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_decoder_stream_process_input";
      v16 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_30;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type[0];
    v18 = os_log_type_enabled(v14, type[0]);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http3_decoder_stream_process_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_31;
    }

    if (v18)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http3_decoder_stream_process_input";
      v16 = "%{public}s called with null http3, no backtrace";
LABEL_30:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    }
  }

LABEL_31:
  if (v13)
  {
    free(v13);
  }
}

uint64_t ___ZL33nw_http3_uni_stream_type_receivedP32nw_protocol_http3_untyped_stream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (nw_protocol_metadata_is_quic_stream(a3))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return 1;
}

void nw_protocol_http3_untyped_stream_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http3_untyped_stream_disconnected";
    v5 = _os_log_send_and_compose_impl();
    v16 = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v5, &v16, &v15))
    {
      goto LABEL_37;
    }

    if (v16 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v16;
      if (!os_log_type_enabled(v6, v16))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http3_untyped_stream_disconnected";
      v8 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = v16;
      v11 = os_log_type_enabled(v6, v16);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v18 = "nw_protocol_http3_untyped_stream_disconnected";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v5)
        {
          return;
        }

LABEL_38:
        free(v5);
        return;
      }

      if (!v11)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http3_untyped_stream_disconnected";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = v16;
      if (!os_log_type_enabled(v6, v16))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http3_untyped_stream_disconnected";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (handle)
  {
    if (gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v18 = "nw_protocol_http3_untyped_stream_disconnected";
        v19 = 2048;
        v20 = handle;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_untyped_stream %p", buf, 0x16u);
      }
    }

    if (handle[188])
    {
      handle[188] &= ~1u;
      v3 = *(handle + 21);
      v4 = *(*(handle + 13) + 1272);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = ___ZL45nw_protocol_http3_untyped_stream_disconnectedP11nw_protocolS0__block_invoke;
      v14[3] = &unk_1E6A394C8;
      v14[4] = v3;
      nw_queue_context_async(v4, v14);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_http3_untyped_stream_disconnected";
  v5 = _os_log_send_and_compose_impl();
  v16 = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v5, &v16, &v15))
  {
    goto LABEL_37;
  }

  if (v16 == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = v16;
    if (!os_log_type_enabled(v6, v16))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http3_untyped_stream_disconnected";
    v8 = "%{public}s called with null http3_stream";
    goto LABEL_36;
  }

  if (v15 != 1)
  {
    v6 = __nwlog_obj();
    v7 = v16;
    if (!os_log_type_enabled(v6, v16))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http3_untyped_stream_disconnected";
    v8 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    goto LABEL_36;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = v16;
  v13 = os_log_type_enabled(v6, v16);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http3_untyped_stream_disconnected";
    v8 = "%{public}s called with null http3_stream, no backtrace";
    goto LABEL_36;
  }

  if (v13)
  {
    *buf = 136446466;
    v18 = "nw_protocol_http3_untyped_stream_disconnected";
    v19 = 2082;
    v20 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_38;
  }
}

void ___ZL45nw_protocol_http3_untyped_stream_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = v1;
    v3 = (v1 + 64);
    if (gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
      }
    }

    v4 = *v3;
    if (*v3)
    {
      *(v4 + 40) = &v11;
      v5 = *(v2 + 72);
      v11 = v4;
      v12 = v5;
      *(v2 + 64) = 0;
      *(v2 + 72) = v3;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v14 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v15 = &__block_descriptor_tmp_21_49595;
      v16 = 0;
      do
      {
        v6 = v11;
        if (!v11)
        {
          break;
        }

        v7 = *(v11 + 32);
        v8 = *(v11 + 40);
        v9 = (v7 + 40);
        if (!v7)
        {
          v9 = &v12;
        }

        *v9 = v8;
        *v8 = v7;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
      }

      while (((v14)(&buf) & 1) != 0);
    }

    nw_protocol_remove_input_handler(*(v2 + 32), v2);
    nw_protocol_http3_untyped_stream_destroy(v2);
  }
}

void nw_protocol_http3_stream_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[366] & 0x2000) == 0 && gLogDatapath == 1)
      {
        v24 = a1->handle;
        v25 = a1;
        v26 = __nwlog_obj();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
        handle = v24;
        v28 = v27;
        a1 = v25;
        if (v28)
        {
          v29 = *(*(v24 + 43) + 1304);
          v30 = *(v24 + 30);
          *buf = 136447234;
          v47 = "nw_protocol_http3_stream_input_available";
          v48 = 2082;
          v49 = v24 + 632;
          v50 = 2080;
          v51 = " ";
          v52 = 1024;
          v53 = v29;
          v54 = 2048;
          v55 = v30;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
          a1 = v25;
          handle = v24;
        }
      }

      v3 = *(handle + 6);
      if (v3)
      {
        v4 = *(v3 + 24);
        if (v4)
        {
          v5 = *(v4 + 64);
          if (v5)
          {
            v5(a1->default_input_handler);
            return;
          }
        }
      }

      v6 = handle;
      __nwlog_obj();
      v7 = *(v6 + 6);
      v8 = "invalid";
      if (v7)
      {
        v9 = *(v7 + 16);
        if (v9)
        {
          v8 = v9;
        }
      }

      *buf = 136446466;
      v47 = "nw_protocol_http3_stream_input_available";
      v48 = 2082;
      v49 = v8;
      v10 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v44 = 0;
      if (__nwlog_fault(v10, &type, &v44))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v12 = type;
          if (!os_log_type_enabled(v11, type))
          {
            goto LABEL_70;
          }

          v13 = *(v6 + 6);
          v14 = "invalid";
          if (v13)
          {
            v15 = *(v13 + 16);
            if (v15)
            {
              v14 = v15;
            }
          }

          *buf = 136446466;
          v47 = "nw_protocol_http3_stream_input_available";
          v48 = 2082;
          v49 = v14;
          v16 = "%{public}s protocol %{public}s has invalid input_available callback";
LABEL_59:
          v41 = v11;
          v42 = v12;
          v43 = 22;
LABEL_69:
          _os_log_impl(&dword_181A37000, v41, v42, v16, buf, v43);
          goto LABEL_70;
        }

        if (v44 != 1)
        {
          v11 = __nwlog_obj();
          v12 = type;
          if (!os_log_type_enabled(v11, type))
          {
            goto LABEL_70;
          }

          v31 = *(v6 + 6);
          v32 = "invalid";
          if (v31)
          {
            v33 = *(v31 + 16);
            if (v33)
            {
              v32 = v33;
            }
          }

          *buf = 136446466;
          v47 = "nw_protocol_http3_stream_input_available";
          v48 = 2082;
          v49 = v32;
          v16 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
          goto LABEL_59;
        }

        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v18 = os_log_type_enabled(v11, type);
        if (!backtrace_string)
        {
          if (!v18)
          {
            goto LABEL_70;
          }

          v38 = *(v6 + 6);
          v39 = "invalid";
          if (v38)
          {
            v40 = *(v38 + 16);
            if (v40)
            {
              v39 = v40;
            }
          }

          *buf = 136446466;
          v47 = "nw_protocol_http3_stream_input_available";
          v48 = 2082;
          v49 = v39;
          v16 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
          goto LABEL_59;
        }

        if (v18)
        {
          v19 = *(v6 + 6);
          v20 = "invalid";
          if (v19)
          {
            v21 = *(v19 + 16);
            if (v21)
            {
              v20 = v21;
            }
          }

          *buf = 136446722;
          v47 = "nw_protocol_http3_stream_input_available";
          v48 = 2082;
          v49 = v20;
          v50 = 2082;
          v51 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
      }

LABEL_70:
      if (v10)
      {
        goto LABEL_71;
      }

      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_http3_stream_input_available";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http3_stream_input_available";
      v16 = "%{public}s called with null http3_stream";
      goto LABEL_68;
    }

    if (v44 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http3_stream_input_available";
      v16 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_68;
    }

    v34 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v37 = os_log_type_enabled(v22, type);
    if (!v34)
    {
      if (!v37)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http3_stream_input_available";
      v16 = "%{public}s called with null http3_stream, no backtrace";
      goto LABEL_68;
    }

    if (v37)
    {
      *buf = 136446466;
      v47 = "nw_protocol_http3_stream_input_available";
      v48 = 2082;
      v49 = v34;
      v36 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_51;
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_http3_stream_input_available";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http3_stream_input_available";
      v16 = "%{public}s called with null protocol";
LABEL_68:
      v41 = v22;
      v42 = v23;
      v43 = 12;
      goto LABEL_69;
    }

    if (v44 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http3_stream_input_available";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_68;
    }

    v34 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v35 = os_log_type_enabled(v22, type);
    if (!v34)
    {
      if (!v35)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http3_stream_input_available";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_68;
    }

    if (v35)
    {
      *buf = 136446466;
      v47 = "nw_protocol_http3_stream_input_available";
      v48 = 2082;
      v49 = v34;
      v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_51:
      _os_log_impl(&dword_181A37000, v22, v23, v36, buf, 0x16u);
    }
  }

  free(v34);
  if (v10)
  {
LABEL_71:
    free(v10);
  }
}

void nw_protocol_masque_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v146 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v116 = 1;
      goto LABEL_11;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v116 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v116 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v139 = "nw_protocol_masque_input_available";
        v7 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v136[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v7, type, v136))
        {
          goto LABEL_56;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_56;
          }

          *buf = 136446210;
          v139 = "nw_protocol_masque_input_available";
          v10 = "%{public}s called with null masque";
          goto LABEL_54;
        }

        if (v136[0] != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_56;
          }

          *buf = 136446210;
          v139 = "nw_protocol_masque_input_available";
          v10 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_54;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v139 = "nw_protocol_masque_input_available";
            v140 = 2082;
            v141 = backtrace_string;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v32)
        {
          *buf = 136446210;
          v139 = "nw_protocol_masque_input_available";
          v10 = "%{public}s called with null masque, no backtrace";
          v33 = v30;
          v34 = v31;
          goto LABEL_55;
        }

LABEL_56:
        if (v7)
        {
          v35 = v7;
LABEL_58:
          free(v35);
        }

LABEL_59:
        v2 = a1;
        goto LABEL_60;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = (v6 + 96);
    v12 = 32;
    if (&v6[1].output_handler == a1)
    {
      v12 = 128;
      v13 = 584;
    }

    else
    {
      v13 = 580;
    }

    v14 = *&v6->flow_id[v13];
    if (v14 == 4)
    {
      if ((HIBYTE(v6[9].identifier) & 0x10) != 0)
      {
        nw_protocol_masque_listener_read_input(&v6[1].output_handler, 0, 0, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
        goto LABEL_59;
      }

      default_input_handler = v6->default_input_handler;
      if (!default_input_handler)
      {
        __nwlog_obj();
        *buf = 136446210;
        v139 = "__nw_protocol_input_available";
        v7 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v136[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v7, type, v136))
        {
          goto LABEL_56;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v9 = type[0];
          if (!os_log_type_enabled(v8, type[0]))
          {
            goto LABEL_56;
          }

          *buf = 136446210;
          v139 = "__nw_protocol_input_available";
          v10 = "%{public}s called with null protocol";
        }

        else if (v136[0] == OS_LOG_TYPE_INFO)
        {
          v92 = __nw_create_backtrace_string();
          v8 = __nwlog_obj();
          v9 = type[0];
          v93 = os_log_type_enabled(v8, type[0]);
          if (v92)
          {
            if (v93)
            {
              *buf = 136446466;
              v139 = "__nw_protocol_input_available";
              v140 = 2082;
              v141 = v92;
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v92);
            goto LABEL_56;
          }

          if (!v93)
          {
            goto LABEL_56;
          }

          *buf = 136446210;
          v139 = "__nw_protocol_input_available";
          v10 = "%{public}s called with null protocol, no backtrace";
        }

        else
        {
          v8 = __nwlog_obj();
          v9 = type[0];
          if (!os_log_type_enabled(v8, type[0]))
          {
            goto LABEL_56;
          }

          *buf = 136446210;
          v139 = "__nw_protocol_input_available";
          v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        }

LABEL_54:
        v33 = v8;
        v34 = v9;
LABEL_55:
        _os_log_impl(&dword_181A37000, v33, v34, v10, buf, 0xCu);
        goto LABEL_56;
      }

      v16 = default_input_handler->handle;
      v17 = v6->default_input_handler;
      if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *default_input_handler[1].flow_id) != 0)
      {
        v44 = v17[1].callbacks;
        v18 = 0;
        if (v44)
        {
          v17[1].callbacks = (&v44->add_input_handler + 1);
        }
      }

      else
      {
        v18 = 1;
      }

      v60 = v6->handle;
      v61 = v6;
      if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v61 = *v6[1].flow_id) != 0)
      {
        v63 = v61[1].callbacks;
        v62 = 0;
        if (v63)
        {
          v61[1].callbacks = (&v63->add_input_handler + 1);
        }
      }

      else
      {
        v62 = 1;
      }

      v64 = default_input_handler->callbacks;
      if (v64)
      {
        input_available = v64->input_available;
        if (input_available)
        {
          input_available(default_input_handler, v6);
LABEL_118:
          v2 = a1;
          if ((v62 & 1) == 0)
          {
            v66 = v6->handle;
            if (v66 == &nw_protocol_ref_counted_handle || v66 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
            {
              v67 = v6[1].callbacks;
              if (v67)
              {
                v68 = (v67 - 1);
                v6[1].callbacks = v68;
                if (!v68)
                {
                  v69 = *v6[1].flow_id;
                  if (v69)
                  {
                    *v6[1].flow_id = 0;
                    v69[2](v69);
                    _Block_release(v69);
                  }

                  if (v6[1].flow_id[8])
                  {
                    v70 = *v6[1].flow_id;
                    if (v70)
                    {
                      _Block_release(v70);
                    }
                  }

                  free(v6);
                  v2 = a1;
                }
              }
            }
          }

          if ((v18 & 1) != 0 || (v71 = default_input_handler->handle, v71 != &nw_protocol_ref_counted_handle) && (v71 != &nw_protocol_ref_counted_additional_handle || (default_input_handler = *default_input_handler[1].flow_id) == 0) || (v72 = default_input_handler[1].callbacks) == 0 || (v73 = (v72 - 1), (default_input_handler[1].callbacks = v73) != 0))
          {
LABEL_60:
            if ((v116 & 1) == 0)
            {
              v36 = v2->handle;
              if (v36 == &nw_protocol_ref_counted_handle || v36 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
              {
                v37 = v2[1].callbacks;
                if (v37)
                {
                  v38 = (v37 - 1);
                  v2[1].callbacks = v38;
                  if (!v38)
                  {
                    v39 = *v2[1].flow_id;
                    if (v39)
                    {
                      *v2[1].flow_id = 0;
                      v40 = v2;
                      v39[2](v39);
                      _Block_release(v39);
                      v2 = v40;
                    }

                    if (v2[1].flow_id[8])
                    {
                      v41 = *v2[1].flow_id;
                      if (v41)
                      {
                        v42 = v2;
                        _Block_release(v41);
                        v2 = v42;
                      }
                    }

                    v43 = v2;
                    goto LABEL_72;
                  }
                }
              }
            }

            return;
          }

          v74 = *default_input_handler[1].flow_id;
          if (v74)
          {
            *default_input_handler[1].flow_id = 0;
            v74[2](v74);
            _Block_release(v74);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v75 = *default_input_handler[1].flow_id;
            if (v75)
            {
              _Block_release(v75);
            }
          }

          v35 = default_input_handler;
          goto LABEL_58;
        }
      }

      __nwlog_obj();
      name = default_input_handler->identifier->name;
      *buf = 136446722;
      v139 = "__nw_protocol_input_available";
      if (!name)
      {
        name = "invalid";
      }

      v140 = 2082;
      v141 = name;
      v142 = 2048;
      v143 = default_input_handler;
      type[0] = OS_LOG_TYPE_ERROR;
      v136[0] = OS_LOG_TYPE_DEFAULT;
      v115 = _os_log_send_and_compose_impl();
      if (__nwlog_fault(v115, type, v136))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v83 = __nwlog_obj();
          v84 = type[0];
          v85 = v83;
          if (!os_log_type_enabled(v83, type[0]))
          {
            goto LABEL_188;
          }

          v86 = default_input_handler->identifier->name;
          if (!v86)
          {
            v86 = "invalid";
          }

          *buf = 136446722;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v86;
          v142 = 2048;
          v143 = default_input_handler;
          v87 = "%{public}s protocol %{public}s (%p) has invalid input_available callback";
LABEL_186:
          v95 = v85;
          v96 = v84;
LABEL_187:
          _os_log_impl(&dword_181A37000, v95, v96, v87, buf, 0x20u);
          goto LABEL_188;
        }

        if (v136[0] != OS_LOG_TYPE_INFO)
        {
          v85 = __nwlog_obj();
          v84 = type[0];
          if (!os_log_type_enabled(v85, type[0]))
          {
            goto LABEL_188;
          }

          v94 = default_input_handler->identifier->name;
          if (!v94)
          {
            v94 = "invalid";
          }

          *buf = 136446722;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v94;
          v142 = 2048;
          v143 = default_input_handler;
          v87 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded";
          goto LABEL_186;
        }

        v88 = __nw_create_backtrace_string();
        v89 = __nwlog_obj();
        v114 = type[0];
        v90 = os_log_type_enabled(v89, type[0]);
        if (v88)
        {
          if (v90)
          {
            v91 = default_input_handler->identifier->name;
            if (!v91)
            {
              v91 = "invalid";
            }

            *buf = 136446978;
            v139 = "__nw_protocol_input_available";
            v140 = 2082;
            v141 = v91;
            v142 = 2048;
            v143 = default_input_handler;
            v144 = 2082;
            v145 = v88;
            _os_log_impl(&dword_181A37000, v89, v114, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v88);
          goto LABEL_188;
        }

        if (v90)
        {
          v109 = default_input_handler->identifier->name;
          if (!v109)
          {
            v109 = "invalid";
          }

          *buf = 136446722;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v109;
          v142 = 2048;
          v143 = default_input_handler;
          v87 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace";
          v95 = v89;
          v96 = v114;
          goto LABEL_187;
        }
      }

LABEL_188:
      if (v115)
      {
        free(v115);
      }

      goto LABEL_118;
    }

    if ((v14 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_60;
    }

    v19 = *&v6->flow_id[v12];
    v20 = v11 == a1;
    if (v11 == a1)
    {
      while (1)
      {
        v130 = 0;
        v131 = &v130;
        if (!(*(*(v19 + 24) + 80))(v19, v2, 0, 0, 1, &v130))
        {
          goto LABEL_59;
        }

        *type = 0;
        v127 = type;
        v128 = 0x2000000000;
        v129 = 0;
        v118 = MEMORY[0x1E69E9820];
        v119 = 0x40000000;
        v120 = ___ZL34nw_protocol_masque_input_availableP11nw_protocolS0__block_invoke;
        v121 = &unk_1E6A2FBB0;
        v122 = type;
        p_output_handler = &v6[1].output_handler;
        v125 = v20;
        v124 = v14;
        do
        {
          v25 = v130;
          if (!v130)
          {
            break;
          }

          v26 = *(v130 + 32);
          v27 = *(v130 + 40);
          v28 = (v26 + 40);
          if (!v26)
          {
            v28 = &v131;
          }

          *v28 = v27;
          *v27 = v26;
          *(v25 + 32) = 0;
          *(v25 + 40) = 0;
        }

        while ((v120(&v118) & 1) != 0);
        v14 = *&v6->flow_id[v13];
        _Block_object_dispose(type, 8);
        v2 = a1;
        if ((v14 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_60;
        }
      }
    }

    while (1)
    {
      v130 = 0;
      v131 = &v130;
      if (!(*(*(v19 + 24) + 80))(v19, v2, 0, 0, 1, &v130))
      {
        goto LABEL_59;
      }

      *type = 0;
      v127 = type;
      v128 = 0x2000000000;
      v129 = 0;
      v118 = MEMORY[0x1E69E9820];
      v119 = 0x40000000;
      v120 = ___ZL34nw_protocol_masque_input_availableP11nw_protocolS0__block_invoke;
      v121 = &unk_1E6A2FBB0;
      v122 = type;
      p_output_handler = &v6[1].output_handler;
      v125 = v20;
      v124 = v14;
      do
      {
        v21 = v130;
        if (!v130)
        {
          break;
        }

        v22 = *(v130 + 32);
        v23 = *(v130 + 40);
        v24 = (v22 + 40);
        if (!v22)
        {
          v24 = &v131;
        }

        *v24 = v23;
        *v23 = v22;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
      }

      while ((v120(&v118) & 1) != 0);
      v14 = *&v6->flow_id[v13];
      if (v14 == 4)
      {
        break;
      }

      _Block_object_dispose(type, 8);
      v2 = a1;
      if ((v14 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_60;
      }
    }

    v45 = v6->default_input_handler;
    if (v45)
    {
      nw::share(v136, v6->default_input_handler);
      nw::share(&v134, v6);
      v46 = v45->callbacks;
      if (v46)
      {
        v47 = v46->input_available;
        if (v47)
        {
          v47(v45, v6);
          if ((v135 & 1) == 0)
          {
LABEL_95:
            if ((v137 & 1) == 0)
            {
              goto LABEL_108;
            }

            v54 = *v136;
            if (!*v136)
            {
              goto LABEL_108;
            }

            v55 = *(*v136 + 40);
            if (v55 != &nw_protocol_ref_counted_handle)
            {
              if (v55 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_108;
              }

              v54 = *(*v136 + 64);
              if (!v54)
              {
                goto LABEL_108;
              }
            }

            v56 = *(v54 + 88);
            if (!v56)
            {
              goto LABEL_108;
            }

            v57 = v56 - 1;
            *(v54 + 88) = v57;
            if (v57)
            {
              goto LABEL_108;
            }

            v58 = *(v54 + 64);
            if (v58)
            {
              *(v54 + 64) = 0;
              v58[2](v58);
              _Block_release(v58);
            }

            if (*(v54 + 72))
            {
              v59 = *(v54 + 64);
              if (v59)
              {
                _Block_release(v59);
              }
            }

            goto LABEL_107;
          }

LABEL_83:
          v48 = v134;
          if (v134)
          {
            v49 = *(v134 + 5);
            if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v48 = *(v134 + 8)) != 0)
            {
              v50 = v48[11];
              if (v50)
              {
                v51 = v50 - 1;
                v48[11] = v51;
                if (!v51)
                {
                  v52 = v48[8];
                  if (v52)
                  {
                    v48[8] = 0;
                    v52[2](v52);
                    _Block_release(v52);
                  }

                  if (v48[9])
                  {
                    v53 = v48[8];
                    if (v53)
                    {
                      _Block_release(v53);
                    }
                  }

                  free(v48);
                }
              }
            }
          }

          goto LABEL_95;
        }
      }

      __nwlog_obj();
      v97 = v45->identifier->name;
      *buf = 136446722;
      v139 = "__nw_protocol_input_available";
      if (!v97)
      {
        v97 = "invalid";
      }

      v140 = 2082;
      v141 = v97;
      v142 = 2048;
      v143 = v45;
      v98 = _os_log_send_and_compose_impl();
      v133 = OS_LOG_TYPE_ERROR;
      v132 = 0;
      if (__nwlog_fault(v98, &v133, &v132))
      {
        if (v133 == OS_LOG_TYPE_FAULT)
        {
          v99 = __nwlog_obj();
          v100 = v133;
          if (!os_log_type_enabled(v99, v133))
          {
            goto LABEL_234;
          }

          v101 = v45->identifier->name;
          if (!v101)
          {
            v101 = "invalid";
          }

          *buf = 136446722;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v101;
          v142 = 2048;
          v143 = v45;
          v102 = "%{public}s protocol %{public}s (%p) has invalid input_available callback";
LABEL_233:
          _os_log_impl(&dword_181A37000, v99, v100, v102, buf, 0x20u);
          goto LABEL_234;
        }

        if (v132 != 1)
        {
          v99 = __nwlog_obj();
          v100 = v133;
          if (!os_log_type_enabled(v99, v133))
          {
            goto LABEL_234;
          }

          v112 = v45->identifier->name;
          if (!v112)
          {
            v112 = "invalid";
          }

          *buf = 136446722;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v112;
          v142 = 2048;
          v143 = v45;
          v102 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded";
          goto LABEL_233;
        }

        v106 = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v100 = v133;
        v107 = os_log_type_enabled(v99, v133);
        if (!v106)
        {
          if (!v107)
          {
            goto LABEL_234;
          }

          v113 = v45->identifier->name;
          if (!v113)
          {
            v113 = "invalid";
          }

          *buf = 136446722;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v113;
          v142 = 2048;
          v143 = v45;
          v102 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace";
          goto LABEL_233;
        }

        if (v107)
        {
          v108 = v45->identifier->name;
          if (!v108)
          {
            v108 = "invalid";
          }

          *buf = 136446978;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v108;
          v142 = 2048;
          v143 = v45;
          v144 = 2082;
          v145 = v106;
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v106);
      }

LABEL_234:
      if (v98)
      {
        free(v98);
      }

      if ((v135 & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_83;
    }

    __nwlog_obj();
    *buf = 136446210;
    v139 = "__nw_protocol_input_available";
    v54 = _os_log_send_and_compose_impl();
    v136[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v134) = 0;
    if (__nwlog_fault(v54, v136, &v134))
    {
      if (v136[0] == OS_LOG_TYPE_FAULT)
      {
        v103 = __nwlog_obj();
        v104 = v136[0];
        if (!os_log_type_enabled(v103, v136[0]))
        {
          goto LABEL_241;
        }

        *buf = 136446210;
        v139 = "__nw_protocol_input_available";
        v105 = "%{public}s called with null protocol";
        goto LABEL_240;
      }

      if (v134 != 1)
      {
        v103 = __nwlog_obj();
        v104 = v136[0];
        if (!os_log_type_enabled(v103, v136[0]))
        {
          goto LABEL_241;
        }

        *buf = 136446210;
        v139 = "__nw_protocol_input_available";
        v105 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_240;
      }

      v110 = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v104 = v136[0];
      v111 = os_log_type_enabled(v103, v136[0]);
      if (v110)
      {
        if (v111)
        {
          *buf = 136446466;
          v139 = "__nw_protocol_input_available";
          v140 = 2082;
          v141 = v110;
          _os_log_impl(&dword_181A37000, v103, v104, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v110);
        if (!v54)
        {
          goto LABEL_108;
        }

LABEL_107:
        free(v54);
LABEL_108:
        _Block_object_dispose(type, 8);
        goto LABEL_59;
      }

      if (v111)
      {
        *buf = 136446210;
        v139 = "__nw_protocol_input_available";
        v105 = "%{public}s called with null protocol, no backtrace";
LABEL_240:
        _os_log_impl(&dword_181A37000, v103, v104, v105, buf, 0xCu);
      }
    }

LABEL_241:
    if (!v54)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  __nwlog_obj();
  *buf = 136446210;
  v139 = "nw_protocol_masque_input_available";
  v76 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v136[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v76, type, v136))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_175;
      }

      *buf = 136446210;
      v139 = "nw_protocol_masque_input_available";
      v79 = "%{public}s called with null protocol";
LABEL_174:
      _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
      goto LABEL_175;
    }

    if (v136[0] != OS_LOG_TYPE_INFO)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_175;
      }

      *buf = 136446210;
      v139 = "nw_protocol_masque_input_available";
      v79 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_174;
    }

    v80 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = type[0];
    v81 = os_log_type_enabled(v77, type[0]);
    if (!v80)
    {
      if (!v81)
      {
        goto LABEL_175;
      }

      *buf = 136446210;
      v139 = "nw_protocol_masque_input_available";
      v79 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_174;
    }

    if (v81)
    {
      *buf = 136446466;
      v139 = "nw_protocol_masque_input_available";
      v140 = 2082;
      v141 = v80;
      _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v80);
  }

LABEL_175:
  if (v76)
  {
    v43 = v76;
LABEL_72:
    free(v43);
  }
}

void ___ZL41nw_protocol_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_128(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 16))())
  {
    v2 = *(a1 + 40);
    if ((*(v2 + 732) & 0x400) != 0)
    {
      if ((*(v2 + 732) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v21 = __nwlog_obj();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        v2 = *(a1 + 40);
        if (v22)
        {
          v23 = (v2 + 632);
          v24 = "";
          v25 = *(*(v2 + 344) + 1304);
          v26 = v2 == 0;
          v27 = *(v2 + 240);
          if (v26)
          {
            v23 = "";
          }

          else
          {
            v24 = " ";
          }

          *buf = 136447234;
          v37 = "nw_protocol_http3_stream_get_input_frames_block_invoke";
          v38 = 2082;
          v39 = v23;
          v40 = 2080;
          v41 = v24;
          v42 = 1024;
          v43 = v25;
          v44 = 2048;
          v45 = v27;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> delivering deferred input finished", buf, 0x30u);
          v2 = *(a1 + 40);
        }
      }

      *(v2 + 732) &= ~0x400u;
      v3 = *(*(a1 + 40) + 48);
      if (v3)
      {
        v4 = *(v3 + 24);
        if (v4)
        {
          v5 = *(v4 + 184);
          if (v5)
          {
            v5();
            return;
          }
        }
      }

      __nwlog_obj();
      v6 = *(*(a1 + 40) + 48);
      v7 = "invalid";
      if (v6)
      {
        v8 = *(v6 + 16);
        if (v8)
        {
          v7 = v8;
        }
      }

      *buf = 136446466;
      v37 = "nw_protocol_http3_stream_get_input_frames_block_invoke";
      v38 = 2082;
      v39 = v7;
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v9, &type, &v34))
      {
        goto LABEL_44;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_44;
        }

        v12 = *(*(a1 + 40) + 48);
        v13 = "invalid";
        if (v12)
        {
          v14 = *(v12 + 16);
          if (v14)
          {
            v13 = v14;
          }
        }

        *buf = 136446466;
        v37 = "nw_protocol_http3_stream_get_input_frames_block_invoke";
        v38 = 2082;
        v39 = v13;
        v15 = "%{public}s protocol %{public}s has invalid input_finished callback";
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v17 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v17)
          {
            v18 = *(*(a1 + 40) + 48);
            v19 = "invalid";
            if (v18)
            {
              v20 = *(v18 + 16);
              if (v20)
              {
                v19 = v20;
              }
            }

            *buf = 136446722;
            v37 = "nw_protocol_http3_stream_get_input_frames_block_invoke";
            v38 = 2082;
            v39 = v19;
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (!v17)
        {
LABEL_44:
          if (v9)
          {
            free(v9);
          }

          return;
        }

        v31 = *(*(a1 + 40) + 48);
        v32 = "invalid";
        if (v31)
        {
          v33 = *(v31 + 16);
          if (v33)
          {
            v32 = v33;
          }
        }

        *buf = 136446466;
        v37 = "nw_protocol_http3_stream_get_input_frames_block_invoke";
        v38 = 2082;
        v39 = v32;
        v15 = "%{public}s protocol %{public}s has invalid input_finished callback, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_44;
        }

        v28 = *(*(a1 + 40) + 48);
        v29 = "invalid";
        if (v28)
        {
          v30 = *(v28 + 16);
          if (v30)
          {
            v29 = v30;
          }
        }

        *buf = 136446466;
        v37 = "nw_protocol_http3_stream_get_input_frames_block_invoke";
        v38 = 2082;
        v39 = v29;
        v15 = "%{public}s protocol %{public}s has invalid input_finished callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v10, v11, v15, buf, 0x16u);
      goto LABEL_44;
    }
  }
}

uint64_t _nw_http_parsed_fields_create()
{
  type metadata accessor for __NWHTTPParsedFields();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t nw_http3_stream_handle_fields(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v8 = nw_frame_unclaimed_bytes(a3, &v72);
  if (!v8)
  {
    goto LABEL_40;
  }

  v10 = v8;
  v70 = v8;
  v71 = 10;
  v11 = *(a1 + 344);
  if ((*(a1 + 732) & 0x10) != 0)
  {
    v16 = *(a1 + 240);
    if (a2 > 1)
    {
      v20 = v72;
      v79 = 0u;
      v81 = 0;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      *&v78[8] = 0u;
      memset(buf, 0, 32);
      *&buf[32] = a1;
      v76 = v16;
      v77 = a2;
      *v78 = a2;
      v80 = parse_header_prefix;
      v21 = *(v11 + 536);
      if (v21)
      {
        fwrite("qdec: debug: ", 0xDuLL, 1uLL, v21);
        fprintf(*(v11 + 536), "begin reading header block for stream %llu", v16);
        fputc(10, *(v11 + 536));
      }

      v15 = qdec_header_process(v11 + 488, buf, &v70, v20, (a1 + 716), &v71);
    }

    else
    {
      v17 = *(v11 + 536);
      if (v17)
      {
        fwrite("qdec: debug: ", 0xDuLL, 1uLL, v17);
        fprintf(*(v11 + 536), "header block for stream %llu is too short (%zd byte%.*s)", v16, a2, a2 != 1, "s");
        fputc(10, *(v11 + 536));
      }

      *(v11 + 816) = 0x10D600000000;
      *(v11 + 824) = 0;
      *(v11 + 832) = v16;
      v15 = 3;
    }

    v19 = *(a1 + 732) & 0xFFEF;
    *(a1 + 732) = v19;
  }

  else
  {
    v12 = v72;
    v13 = (v11 + 568);
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (v13[4] == a1)
      {
        v14 = *(v11 + 536);
        if (v14)
        {
          fwrite("qdec: debug: ", 0xDuLL, 1uLL, v14);
          fprintf(*(v11 + 536), "continue reading header block for stream %llu", v13[5]);
          fputc(10, *(v11 + 536));
        }

        v15 = qdec_header_process(v11 + 488, v13, &v70, v12, (a1 + 716), &v71);
        goto LABEL_16;
      }
    }

    v18 = *(v11 + 536);
    if (v18)
    {
      fwrite("qdec: info: ", 0xCuLL, 1uLL, v18);
      fwrite("could not find header block to continue reading", 0x2FuLL, 1uLL, *(v11 + 536));
      fputc(10, *(v11 + 536));
    }

    v15 = 3;
LABEL_16:
    v19 = *(a1 + 732);
  }

  v22 = v70 - v10;
  if ((v19 & 0x2000) == 0 && gLogDatapath == 1)
  {
    v65 = v15;
    v66 = __nwlog_obj();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
    v15 = v65;
    if (v67)
    {
      v68 = *(*(a1 + 344) + 1304);
      v69 = *(a1 + 240);
      *buf = 136447746;
      *&buf[4] = "nw_http3_stream_handle_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v68;
      *&buf[38] = 2048;
      v76 = v69;
      LOWORD(v77) = 1024;
      *(&v77 + 2) = v65;
      HIWORD(v77) = 1024;
      *v78 = v22;
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> qpack returned status %d, consumed %u bytes", buf, 0x3Cu);
      v15 = v65;
    }
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      nw_frame_finalize(a3);
      *(*(a1 + 344) + 1397) |= 8u;
      nw_protocol_remove_instance(*(a1 + 344));
      *(a1 + 272) = 270;
      if ((*(a1 + 732) & 0x2000) == 0)
      {
        v39 = *(a1 + 344);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v40 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v41 = *(*(a1 + 344) + 1304);
          v42 = *(a1 + 240);
          v43 = *(v39 + 816);
          v44 = *(v39 + 820);
          v45 = *(v39 + 824);
          v46 = *(v39 + 832);
          *buf = 136448258;
          *&buf[4] = "nw_http3_stream_handle_fields";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v41;
          *&buf[38] = 2048;
          v76 = v42;
          LOWORD(v77) = 1024;
          *(&v77 + 2) = v43;
          HIWORD(v77) = 1024;
          *v78 = v44;
          *&v78[4] = 2048;
          *&v78[6] = v45;
          *&v78[14] = 2048;
          *&v78[16] = v46;
          _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> qpack dec error type %d line %d off %llu id %llu", buf, 0x50u);
        }
      }

      nw_protocol_http3_stream_error(a1, a1);
      nw_protocol_http3_stream_disconnect(a1, a1);
      return 2;
    }

    if (v72 == v22)
    {
      if (a4)
      {
LABEL_39:
        nw_frame_finalize(a3);
        nw_http3_fail_all_streams(*(a1 + 344), 512);
        return 2;
      }

LABEL_40:
      nw_frame_finalize(a3);
      return 0;
    }

    nw_frame_finalize(a3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http3_stream_handle_fields";
    *&buf[12] = 1024;
    *&buf[14] = v22;
    *&buf[18] = 1024;
    *&buf[20] = v72;
    v47 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v47, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v49 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_94;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_handle_fields";
        *&buf[12] = 1024;
        *&buf[14] = v22;
        *&buf[18] = 1024;
        *&buf[20] = v72;
        v50 = "%{public}s Expected consumed_size (%u) to be equal to frame_size (%u)";
        goto LABEL_93;
      }

      if (v73 != 1)
      {
        v48 = __nwlog_obj();
        v49 = type;
        if (!os_log_type_enabled(v48, type))
        {
          goto LABEL_94;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_handle_fields";
        *&buf[12] = 1024;
        *&buf[14] = v22;
        *&buf[18] = 1024;
        *&buf[20] = v72;
        v50 = "%{public}s Expected consumed_size (%u) to be equal to frame_size (%u), backtrace limit exceeded";
        goto LABEL_93;
      }

      backtrace_string = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = type;
      v55 = os_log_type_enabled(v48, type);
      if (backtrace_string)
      {
        if (v55)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http3_stream_handle_fields";
          *&buf[12] = 1024;
          *&buf[14] = v22;
          *&buf[18] = 1024;
          *&buf[20] = v72;
          *&buf[24] = 2082;
          *&buf[26] = backtrace_string;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s Expected consumed_size (%u) to be equal to frame_size (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(backtrace_string);
        goto LABEL_94;
      }

      if (v55)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_handle_fields";
        *&buf[12] = 1024;
        *&buf[14] = v22;
        *&buf[18] = 1024;
        *&buf[20] = v72;
        v50 = "%{public}s Expected consumed_size (%u) to be equal to frame_size (%u), no backtrace";
LABEL_93:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0x18u);
      }
    }

LABEL_94:
    if (v47)
    {
      free(v47);
    }

    return 2;
  }

  if (v15)
  {
    nw_frame_claim(a3, v9, v22, 0);
    v32 = *(a1 + 380);
    if (v32 <= 8)
    {
      if (((1 << v32) & 0x1DD) != 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = *(a1 + 380);
        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_received_fields_blocked";
        *&buf[12] = 1024;
        *&buf[14] = v33;
        v34 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v73 = 0;
        if (!__nwlog_fault(v34, &type, &v73))
        {
          goto LABEL_81;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v36 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_81;
          }

          v37 = *(a1 + 380);
          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_received_fields_blocked";
          *&buf[12] = 1024;
          *&buf[14] = v37;
          v38 = "%{public}s Unexpected input state %d";
        }

        else if (v73 == 1)
        {
          v51 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v36 = type;
          v52 = os_log_type_enabled(gLogObj, type);
          if (v51)
          {
            if (v52)
            {
              v53 = *(a1 + 380);
              *buf = 136446722;
              *&buf[4] = "nw_http3_stream_received_fields_blocked";
              *&buf[12] = 1024;
              *&buf[14] = v53;
              *&buf[18] = 2082;
              *&buf[20] = v51;
              _os_log_impl(&dword_181A37000, v35, v36, "%{public}s Unexpected input state %d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v51);
            goto LABEL_81;
          }

          if (!v52)
          {
LABEL_81:
            if (v34)
            {
              free(v34);
            }

            goto LABEL_83;
          }

          v60 = *(a1 + 380);
          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_received_fields_blocked";
          *&buf[12] = 1024;
          *&buf[14] = v60;
          v38 = "%{public}s Unexpected input state %d, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v36 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_81;
          }

          v56 = *(a1 + 380);
          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_received_fields_blocked";
          *&buf[12] = 1024;
          *&buf[14] = v56;
          v38 = "%{public}s Unexpected input state %d, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v35, v36, v38, buf, 0x12u);
        goto LABEL_81;
      }

      if (v32 == 1)
      {
        *(a1 + 380) = 2;
      }

      else
      {
        *(a1 + 380) = 6;
      }
    }

LABEL_83:
    nw_frame_array_prepend((a1 + 216), 1, a3);
    result = 1;
    if (a4)
    {
      v61 = 32;
    }

    else
    {
      v61 = 0;
    }

    *(a1 + 732) = *(a1 + 732) & 0xFFDF | v61;
    return result;
  }

  v23 = *(a1 + 480);
  if (v23)
  {
    free(v23);
    *(a1 + 480) = 0;
  }

  *(a1 + 488) = 0;
  *(a1 + 732) |= 0x10u;
  if (!a4 || v72 > v22)
  {
    goto LABEL_39;
  }

  if (!v71)
  {
    *(a1 + 384) = a3;
    return nw_http3_stream_received_fields_done(a1);
  }

  *(a1 + 630) = v71;
  v24 = *(a1 + 380);
  if (v24 > 8)
  {
    goto LABEL_104;
  }

  if (((1 << v24) & 0x1DD) == 0)
  {
    if (v24 == 1)
    {
      *(a1 + 380) = 3;
    }

    else
    {
      *(a1 + 380) = 7;
    }

    goto LABEL_104;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = *(a1 + 380);
  *buf = 136446466;
  *&buf[4] = "nw_http3_stream_need_section_ack";
  *&buf[12] = 1024;
  *&buf[14] = v25;
  v26 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v73 = 0;
  if (__nwlog_fault(v26, &type, &v73))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_102;
      }

      v29 = *(a1 + 380);
      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_need_section_ack";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      v30 = "%{public}s Unexpected input state %d";
      goto LABEL_101;
    }

    if (v73 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_102;
      }

      v62 = *(a1 + 380);
      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_need_section_ack";
      *&buf[12] = 1024;
      *&buf[14] = v62;
      v30 = "%{public}s Unexpected input state %d, backtrace limit exceeded";
      goto LABEL_101;
    }

    v57 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v58 = os_log_type_enabled(v27, type);
    if (v57)
    {
      if (v58)
      {
        v59 = *(a1 + 380);
        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_need_section_ack";
        *&buf[12] = 1024;
        *&buf[14] = v59;
        *&buf[18] = 2082;
        *&buf[20] = v57;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Unexpected input state %d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v57);
      goto LABEL_102;
    }

    if (v58)
    {
      v63 = *(a1 + 380);
      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_need_section_ack";
      *&buf[12] = 1024;
      *&buf[14] = v63;
      v30 = "%{public}s Unexpected input state %d, no backtrace";
LABEL_101:
      _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x12u);
    }
  }

LABEL_102:
  if (v26)
  {
    free(v26);
  }

LABEL_104:
  v64 = nw_http3_stream_send_section_ack(a1);
  *(a1 + 384) = a3;
  if (v64)
  {
    return nw_http3_stream_received_fields_done(a1);
  }

  return 1;
}

uint64_t qdec_header_process(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5, uint64_t *a6)
{
  v9 = a2;
  a2[14] = *a3;
  a2[15] = a4;
  a2[16] = 0;
  v11 = a2[7];
  while (1)
  {
    if (!v11)
    {
      goto LABEL_37;
    }

    v12 = *(v9 + 26);
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 1;
    }

    v15 = v9[15];
    v14 = v9[16];
    v16 = v9[14];
    if (v15 - v14 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15 - v14;
    }

    v9[16] = v17 + v14;
    if (v15 == v14)
    {
      goto LABEL_17;
    }

    v9[7] = v11 - v17;
    v18 = (v9[12])(a1, v9, v16 + v14);
    if (v18 <= 1)
    {
      break;
    }

    if (v18 != 2)
    {
      if (v18 == 3)
      {
LABEL_13:
        v20 = (a1 + 48);
        v19 = *(a1 + 48);
        if (v19)
        {
          fwrite("qdec: debug: ", 0xDuLL, 1uLL, v19);
          fprintf(*v20, "header block for stream %llu has had an error");
          goto LABEL_29;
        }

        goto LABEL_68;
      }

LABEL_36:
      __assert_rtn("qdec_header_process", "lsqpack.c", 4262, "st == LQRHS_ERROR");
    }

    v11 = v9[7];
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v18 != 1)
  {
    if (v18)
    {
      goto LABEL_36;
    }

LABEL_37:
    v40 = *(a1 + 228);
    v41 = *(v9 + 18);
    if (v40 != 0.0)
    {
      v41 = v40 + (v41 - v40) * 0.4;
    }

    *(a1 + 228) = v41;
    if (a6 && a5 && (v9[13] & 2) != 0)
    {
      if (!*a6)
      {
        goto LABEL_68;
      }

      v42 = v9[5];
      *a5 = 0x80;
      if (*a6 <= 0)
      {
        __assert_rtn("lsqpack_enc_int", "lsqpack.c", 793, "dst < end");
      }

      if (v42 > 0x7E)
      {
        v54 = &a5[*a6];
        *a5 = -1;
        v55 = a5 + 1;
        v56 = v42 - 127;
        if (v42 - 127 >= 0x80)
        {
          while (v55 < v54)
          {
            *v55++ = v56 | 0x80;
            v42 = v56 >> 7;
            v57 = v56 >> 14;
            v56 >>= 7;
            if (!v57)
            {
              v58 = v55 - 1;
              goto LABEL_66;
            }
          }

          goto LABEL_68;
        }

        LOBYTE(v42) = v42 - 127;
        v58 = a5;
LABEL_66:
        if (v55 >= v54 || (v43 = v58 + 2, *v55 = v42, v58 + 2 <= a5))
        {
LABEL_68:
          v33 = 3;
          goto LABEL_69;
        }
      }

      else
      {
        *a5 = v42 | 0x80;
        v43 = a5 + 1;
      }

      v44 = v43 - a5;
      *a6 = v44;
      v45 = *(a1 + 20);
      *(a1 + 24) += v44;
      if (v45)
      {
        v46 = *(v9 + 16);
        v47 = 2 * v45 + v46 - *(a1 + 36);
        if (~(v47 / (2 * v45) * 2 * v45) + v47 < v45)
        {
          *(a1 + 36) = v46;
        }
      }
    }

    else if (a6)
    {
      *a6 = 0;
    }

    *a3 += v9[16];
    v48 = *(a1 + 28);
    v49 = *(a1 + 24) + *(v9 + 12);
    *(a1 + 24) = v49;
    if (v48 >= 0x80000001)
    {
      *(a1 + 24) = ((v49 / v48) * 1000.0);
      *(a1 + 28) = 1000;
      v50 = *(a1 + 48);
      if (v50)
      {
        fwrite("qdec: debug: ", 0xDuLL, 1uLL, v50);
        v51 = *(a1 + 48);
        v52 = *(a1 + 28);
        if (v52)
        {
          v53 = *(a1 + 24) / v52;
          if (v51)
          {
            fwrite("qdec: debug: ", 0xDuLL, 1uLL, *(a1 + 48));
            fprintf(*(a1 + 48), "bytes in: %u; bytes out: %u, ratio: %.3f", *(a1 + 28), *(a1 + 24), v53);
            fputc(10, *(a1 + 48));
          }
        }

        else
        {
          v53 = 0.0;
        }

        fprintf(v51, "reset bytes in/out counters, ratio: %.3f", v53);
        fputc(10, *(a1 + 48));
      }
    }

    v20 = (a1 + 48);
    v59 = *(a1 + 48);
    if (v59)
    {
      fwrite("qdec: debug: ", 0xDuLL, 1uLL, v59);
      fprintf(*v20, "header block for stream %llu is done", v9[5]);
      v33 = 0;
LABEL_30:
      fputc(10, *v20);
      goto LABEL_69;
    }

    v33 = 0;
LABEL_69:
    v60 = *(v9 + 26);
    if ((v60 & 0x10) != 0)
    {
      v61 = *v9;
      v62 = v9[1];
      v63 = (a1 + 88);
      if (*v9)
      {
        v63 = (*v9 + 8);
      }

      *v63 = v62;
      *v62 = v61;
      if ((v60 & 4) != 0)
      {
        v64 = v9[2];
        v65 = v9[3];
        if (v64)
        {
          *(v64 + 24) = v65;
        }

        else
        {
          *(a1 + 16 * (v9[8] & 7) + 104) = v65;
        }

        *v65 = v64;
        --*(a1 + 224);
      }

      free(v9);
    }

    return v33;
  }

  v12 = *(v9 + 26);
LABEL_17:
  if ((v12 & 0x10) == 0)
  {
    v21 = malloc_type_malloc(0xC0uLL, 0x10F0040D151BEFFuLL);
    if (!v21)
    {
      goto LABEL_68;
    }

    v22 = *(v9 + 3);
    v24 = *v9;
    v23 = *(v9 + 1);
    v21[2] = *(v9 + 2);
    v21[3] = v22;
    *v21 = v24;
    v21[1] = v23;
    v25 = *(v9 + 4);
    v26 = *(v9 + 5);
    v27 = *(v9 + 7);
    v21[6] = *(v9 + 6);
    v21[7] = v27;
    v21[4] = v25;
    v21[5] = v26;
    v28 = *(v9 + 8);
    v29 = *(v9 + 9);
    v30 = *(v9 + 11);
    v21[10] = *(v9 + 10);
    v21[11] = v30;
    v21[8] = v28;
    v21[9] = v29;
    v31 = *(a1 + 88);
    *v21 = 0;
    *(v21 + 1) = v31;
    *v31 = v21;
    *(a1 + 88) = v21;
    v12 = *(v21 + 26) | 0x10;
    *(v21 + 26) = v12;
    v9 = v21;
  }

  if (v15 == v14)
  {
    *a3 += v9[16];
    v32 = *(a1 + 48);
    if (v32)
    {
      fwrite("qdec: debug: ", 0xDuLL, 1uLL, v32);
      fprintf(*(a1 + 48), "header block for stream %llu needs more bytes", v9[5]);
      fputc(10, *(a1 + 48));
    }

    return 2;
  }

  v34 = *(a1 + 224);
  if (v34 >= *(a1 + 16))
  {
    v20 = (a1 + 48);
    v39 = *(a1 + 48);
    if (!v39)
    {
      goto LABEL_68;
    }

    fwrite("qdec: info: ", 0xCuLL, 1uLL, v39);
    fprintf(*(a1 + 48), "cannot block another header: reached maximum of %u");
LABEL_29:
    v33 = 3;
    goto LABEL_30;
  }

  v35 = v9[8] & 7;
  v9[2] = 0;
  v36 = a1 + 16 * v35;
  v37 = *(v36 + 104);
  v9[3] = v37;
  *v37 = v9;
  *(v36 + 104) = v9 + 2;
  *(a1 + 224) = v34 + 1;
  *(v9 + 26) = v12 | 4;
  *a3 += v9[16];
  v38 = *(a1 + 48);
  v33 = 1;
  if (v38)
  {
    fwrite("qdec: debug: ", 0xDuLL, 1uLL, v38);
    fprintf(*(a1 + 48), "header block for stream %llu is blocked", v9[5]);
    fputc(10, *(a1 + 48));
  }

  return v33;
}

uint64_t parse_header_prefix(uint64_t a1, uint64_t a2, unsigned __int8 *__src, uint64_t a4)
{
  if (a4 < 1)
  {
    goto LABEL_30;
  }

  v4 = &__src[a4];
  v5 = *(a2 + 136);
  if (v5 <= 1)
  {
    if (!v5)
    {
      *(a2 + 144) = 0;
      *(a2 + 136) = 1;
      goto LABEL_12;
    }

    if (v5 == 1)
    {
      if (*(a2 + 144))
      {
        v6 = 0;
        v7 = *(a2 + 160);
        v8 = *(a2 + 148);
        v9 = __src;
        while (1)
        {
          v16 = *v9++;
          v15 = v16;
          v7 += (v16 & 0x7F) << v8;
          v8 += 7;
          if ((v16 & 0x80) == 0)
          {
            break;
          }

LABEL_17:
          if (v9 >= v4)
          {
            if (v6)
            {
              v17 = 0;
            }

            else
            {
              v17 = *(a2 + 152);
            }

            v24 = v17 + v9 - __src;
            if (v24 > 0xA)
            {
              return 3;
            }

            *(a2 + 160) = v7;
            *(a2 + 148) = v8;
            *(a2 + 152) = v24;
            v25 = 1;
            *(a2 + 144) = 1;
            v26 = 2 * *(a1 + 20);
            v27 = vdupq_n_s32(v26);
            if (v26 >= 0xFF)
            {
              v25 = 2;
            }

            v28 = vandq_s8(vcgtq_u32(v27, xmmword_182B08E60), xmmword_182AE3CB0);
            v28.i32[0] = vaddvq_s32(v28) & 0xF;
            *v28.i8 = vcnt_s8(*v28.i8);
            v28.i16[0] = vaddlv_u8(*v28.i8);
            if (*(a2 + 48) - *(a2 + 56) <= v25 + v28.u32[0])
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }

        if (v8 < 0x40)
        {
          goto LABEL_21;
        }

        if (v8 != 70)
        {
          return 3;
        }

        v23 = 3;
        if (v15 <= 1 && (v7 & 0x8000000000000000) != 0)
        {
          *(a2 + 168) = v7;
          goto LABEL_22;
        }

        return v23;
      }

LABEL_12:
      v9 = __src + 1;
      v7 = *__src;
      if (v7 == 255)
      {
        v8 = 0;
        v6 = 1;
        goto LABEL_17;
      }

LABEL_21:
      *(a2 + 168) = v7;
      if (v7)
      {
LABEL_22:
        v18 = *(a1 + 20);
        v19 = (2 * v18);
        if (v7 > v19)
        {
          return 3;
        }

        if (v18)
        {
          v20 = (v7 + v19 - 2) % v19;
        }

        else
        {
          v20 = 0;
        }

        *(a2 + 64) = v20;
        *(a2 + 104) |= 3u;
        *(a2 + 136) = 2;
        v29 = *(a1 + 20);
        v30 = *(a1 + 32);
        v31 = v30 - v29;
        if (v30 >= v29)
        {
          v23 = 1;
          if (v30 < v20 || v31 + 1 > v20)
          {
            return v23;
          }
        }

        else if (v30 < v20 && v30 + v29 >= v20)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 104) |= 1u;
        *(a2 + 136) = 2;
      }

      __src = v9;
      if (v9 < v4)
      {
        goto LABEL_27;
      }

LABEL_30:
      if (*(a2 + 56))
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

LABEL_15:
    __assert_rtn("parse_header_prefix", "lsqpack.c", 4026, "0");
  }

  if (v5 == 2)
  {
LABEL_27:
    *(a2 + 176) = *__src >> 7;
    *(a2 + 144) = 0;
    *(a2 + 136) = 3;
    v14 = 7;
    goto LABEL_28;
  }

  if (v5 != 3)
  {
    goto LABEL_15;
  }

  if (*(a2 + 144))
  {
    v10 = 0;
    v11 = *(a2 + 160);
    v12 = *(a2 + 148);
    v13 = __src;
    goto LABEL_53;
  }

  v14 = -1;
LABEL_28:
  v21 = -1 << v14;
  v13 = __src + 1;
  v22 = *__src;
  v11 = v21 & 0x80 ^ 0xFFu;
  if ((v22 & v11) == v11)
  {
    v12 = 0;
    v10 = 1;
    do
    {
      if (v13 >= v4)
      {
        if (v10)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a2 + 152);
        }

        v38 = v34 + v13 - __src;
        if (v38 < 0xB)
        {
          *(a2 + 160) = v11;
          *(a2 + 148) = v12;
          *(a2 + 152) = v38;
          *(a2 + 144) = 1;
          return 2;
        }

        return 3;
      }

LABEL_53:
      v33 = *v13++;
      v32 = v33;
      v11 += (v33 & 0x7F) << v12;
      v12 += 7;
    }

    while ((v33 & 0x80) != 0);
    if (v12 < 0x40)
    {
      goto LABEL_58;
    }

    if (v12 != 70)
    {
      return 3;
    }

    v23 = 3;
    if (v32 <= 1 && v11 < 0)
    {
      goto LABEL_58;
    }

    return v23;
  }

  v11 &= v22;
LABEL_58:
  *(a2 + 168) = v11;
  if ((*(a2 + 104) & 2) == 0)
  {
    v35 = 0;
    goto LABEL_74;
  }

  v35 = *(a1 + 20);
  if (*(a2 + 176))
  {
    if (!v35)
    {
      goto LABEL_74;
    }

    v36 = 2 * v35;
    v37 = *(a2 + 64) + v36 + ~v11;
  }

  else
  {
    if (!v35)
    {
      goto LABEL_74;
    }

    v37 = v11 + *(a2 + 64);
    v36 = 2 * v35;
  }

  v35 = v37 % v36;
LABEL_74:
  *(a2 + 68) = v35;
  *(a2 + 96) = parse_header_data;
  *(a2 + 136) = 0;
  if (v4 == v13)
  {
    return 2;
  }

  return parse_header_data(a1, a2, v13, v4 - v13);
}

uint64_t parse_header_data(uint64_t a1, uint64_t a2, unsigned __int8 *__src, uint64_t a4)
{
  v4 = __src;
  v7 = __src;
  if (a4 < 1)
  {
LABEL_229:
    if (*(a2 + 56))
    {
      return 2;
    }

    if (*(a2 + 136))
    {
      v153 = 3882;
    }

    else
    {
      v137 = *(a2 + 104);
      if ((v137 & 0x22) == 2)
      {
        v153 = 3876;
      }

      else
      {
        if ((v137 & 0x40) == 0)
        {
          return 0;
        }

        v153 = 3878;
      }
    }

    goto LABEL_345;
  }

  v8 = &__src[a4];
  v9 = -1;
  v10 = __src;
  while (1)
  {
    v11 = *(a2 + 136);
    if (v11 > 5)
    {
      if (v11 <= 8)
      {
        if (v11 != 6)
        {
          if (v11 != 7)
          {
            if (*(a2 + 160))
            {
              v15 = 0;
              v13 = *(a2 + 176);
              v14 = *(a2 + 164);
              v7 = v10;
              goto LABEL_182;
            }

            goto LABEL_116;
          }

          v30 = *(a2 + 140);
          if (v30 >= v8 - v10)
          {
            v31 = (v8 - v10);
          }

          else
          {
            v31 = v30;
          }

          if (!v31)
          {
            v153 = 3736;
            goto LABEL_346;
          }

          v32 = *(a2 + 80);
          if (v32)
          {
            if (*(a2 + 88))
            {
              v33 = *(v32 + 20) - *(v32 + 16) + *(a2 + 92);
            }

            else
            {
              v33 = *(a2 + 92);
            }

            v51 = *(v32 + 26);
            v52 = v51 >= v33;
            v53 = v51 - v33;
            if (v52)
            {
              if (v53 < v31)
              {
                v153 = 3739;
              }

              else
              {
                memcpy((*v32 + *(v32 + 16) + v33), v10, v31);
                if (!header_out_write_value(a1, a2, v31, *(a2 + 140) == v31))
                {
                  v7 = &v10[v31];
                  v54 = *(a2 + 140) - v31;
                  *(a2 + 140) = v54;
                  if (!v54)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_5;
                }

                v153 = 3743;
              }

              goto LABEL_346;
            }

LABEL_350:
            __assert_rtn("get_dst", "lsqpack.c", 3402, "read_ctx->hbrc_out.xhdr->val_len >= off");
          }

LABEL_349:
          __assert_rtn("get_dst", "lsqpack.c", 3395, "read_ctx->hbrc_out.xhdr");
        }

        v20 = *(a2 + 140);
        if (v20 >= v8 - v10)
        {
          v21 = v8 - v10;
        }

        else
        {
          v21 = *(a2 + 140);
        }

        if (!v21)
        {
          v153 = 3702;
          goto LABEL_346;
        }

        v22 = *(a2 + 80);
        if (!v22)
        {
          goto LABEL_349;
        }

        if (*(a2 + 88))
        {
          v23 = *(v22 + 20) - *(v22 + 16) + *(a2 + 92);
        }

        else
        {
          v23 = *(a2 + 92);
        }

        v42 = *(v22 + 26);
        if (v42 < v23)
        {
          goto LABEL_350;
        }

        v43 = lsqpack_huff_decode(v10, v21, (*v22 + *(v22 + 16) + v23), v42 - v23, (a2 + 184), v20 <= v8 - v10);
        v45 = HIDWORD(v43);
        v7 = &v10[v44];
        v46 = *(a2 + 140);
        *(a2 + 140) = v46 - v44;
        if (v43 == 2)
        {
          if (v45)
          {
            *(a2 + 92) += HIDWORD(v43);
          }

          if (!header_out_grow_buf(a1, a2))
          {
            goto LABEL_5;
          }

          v153 = 3727;
          goto LABEL_345;
        }

        if (v43 != 1)
        {
          if (v43)
          {
            v153 = 3730;
          }

          else
          {
            if (!header_out_write_value(a1, a2, SHIDWORD(v43), v46 == v44))
            {
              if (!*(a2 + 140))
              {
                goto LABEL_4;
              }

              goto LABEL_5;
            }

            v153 = 3713;
          }

          goto LABEL_345;
        }

LABEL_88:
        if (v45)
        {
          *(a2 + 92) += v45;
        }

        goto LABEL_5;
      }

      switch(v11)
      {
        case 9:
          v25 = *(a2 + 140);
          if (v25 >= v8 - v10)
          {
            v26 = v8 - v10;
          }

          else
          {
            v26 = *(a2 + 140);
          }

          if (!v26)
          {
            v153 = 3775;
            goto LABEL_346;
          }

          v27 = *(a2 + 80);
          if (!v27)
          {
            goto LABEL_349;
          }

          if (*(a2 + 88))
          {
            v28 = *(v27 + 20) - *(v27 + 16) + *(a2 + 92);
          }

          else
          {
            v28 = *(a2 + 92);
          }

          v47 = *(v27 + 26);
          if (v47 < v28)
          {
            goto LABEL_350;
          }

          v48 = lsqpack_huff_decode(v10, v26, (*v27 + *(v27 + 16) + v28), v47 - v28, (a2 + 184), v25 <= v8 - v10);
          v45 = HIDWORD(v48);
          v7 = &v10[v49];
          v50 = *(a2 + 140);
          *(a2 + 140) = v50 - v49;
          if (v48 == 2)
          {
            if (v45)
            {
              *(a2 + 92) += HIDWORD(v48);
            }

            if (!header_out_grow_buf(a1, a2))
            {
              goto LABEL_5;
            }

            v153 = 3800;
            goto LABEL_345;
          }

          if (v48 == 1)
          {
            goto LABEL_88;
          }

          if (v48)
          {
            v153 = 3803;
            goto LABEL_345;
          }

          if (header_out_write_name(a1, a2, SHIDWORD(v48), v50 == v49))
          {
            v153 = 3786;
            goto LABEL_345;
          }

          if (*(a2 + 140))
          {
            goto LABEL_5;
          }

          break;
        case 10:
          v36 = *(a2 + 140);
          if (v36 >= v8 - v10)
          {
            v37 = (v8 - v10);
          }

          else
          {
            v37 = v36;
          }

          if (!v37)
          {
            v153 = 3809;
            goto LABEL_346;
          }

          v38 = *(a2 + 80);
          if (!v38)
          {
            goto LABEL_349;
          }

          if (*(a2 + 88))
          {
            v39 = *(v38 + 20) - *(v38 + 16) + *(a2 + 92);
          }

          else
          {
            v39 = *(a2 + 92);
          }

          v55 = *(v38 + 26);
          v52 = v55 >= v39;
          v56 = v55 - v39;
          if (!v52)
          {
            goto LABEL_350;
          }

          if (v56 < v37)
          {
            v153 = 3812;
            goto LABEL_346;
          }

          memcpy((*v38 + *(v38 + 16) + v39), v10, v37);
          if (header_out_write_name(a1, a2, v37, *(a2 + 140) == v37))
          {
            v153 = 3816;
            goto LABEL_346;
          }

          v7 = &v10[v37];
          v57 = *(a2 + 140) - v37;
          *(a2 + 140) = v57;
          if (v57)
          {
            goto LABEL_5;
          }

          break;
        case 11:
          if (*(a2 + 160))
          {
            v17 = 0;
            v13 = *(a2 + 176);
            v14 = *(a2 + 164);
            v7 = v10;
            goto LABEL_210;
          }

LABEL_32:
          v7 = v10 + 1;
          v13 = ~(-1 << v9);
          v19 = (*v10 & v13);
          if (v19 != v13)
          {
            goto LABEL_214;
          }

          v14 = 0;
          v17 = 1;
          do
          {
            if (v7 >= v8)
            {
              if (v17)
              {
                v143 = 0;
              }

              else
              {
                v143 = *(a2 + 168);
              }

              v147 = v143 + v7 - v10;
              if (v147 >= 0xB)
              {
                v153 = 3841;
                goto LABEL_346;
              }

              goto LABEL_338;
            }

LABEL_210:
            v123 = *v7++;
            v122 = v123;
            v13 += (v123 & 0x7F) << v14;
            v14 += 7;
          }

          while ((v123 & 0x80) != 0);
          if (v14 >= 0x40)
          {
            v144 = 3841;
            if (v13 > -1 || v122 > 1)
            {
              v146 = v10;
            }

            else
            {
              v146 = v7;
            }

            v153 = 3841;
            goto LABEL_313;
          }

          if (v13 >> 24)
          {
            v153 = 3841;
          }

          else
          {
            LODWORD(v19) = v13;
LABEL_214:
            v124 = *(a1 + 20);
            if (v124)
            {
              v125 = 2 * v124;
              v124 = (v19 + *(a2 + 68) + 1) % (2 * v124);
              v126 = (v125 - v124 + *(a1 + 32)) % v125;
              v127 = *(a1 + 56);
              if (!v127)
              {
                goto LABEL_237;
              }
            }

            else
            {
              v126 = 0;
              v127 = *(a1 + 56);
              if (!v127)
              {
                goto LABEL_237;
              }
            }

            v128 = *(a1 + 60);
            v129 = *(a1 + 64);
            v52 = v128 >= v129;
            v130 = v128 - v129;
            if (v52)
            {
              v131 = 0;
            }

            else
            {
              v131 = v127;
            }

            if (v130 + v131 > v126 && (v132 = *(*(a1 + 72) + 8 * ((v127 + ~v126 + v128) % v127))) != 0)
            {
              v133 = *(a2 + 104);
              if ((v133 & 2) != 0)
              {
                v134 = v133 | (32 * (*(a2 + 64) == v124));
              }

              else
              {
                v134 = v133 | 0x40;
              }

              *(a2 + 104) = v134;
              header_out_begin_dynamic_nameref(a1, a2, v132, *(a2 + 148));
              if (!v135)
              {
                break;
              }

              v153 = 3835;
            }

            else
            {
LABEL_237:
              v153 = 3831;
            }
          }

          goto LABEL_345;
        default:
LABEL_353:
          __assert_rtn("parse_header_data", "lsqpack.c", 3865, "0");
      }

LABEL_227:
      v64 = 4;
      goto LABEL_228;
    }

    if (v11 > 2)
    {
      break;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        if (*(a2 + 160))
        {
          v29 = 0;
          v13 = *(a2 + 176);
          v14 = *(a2 + 164);
          v7 = v10;
          while (1)
          {
            v66 = *v7++;
            v65 = v66;
            v13 += (v66 & 0x7F) << v14;
            v14 += 7;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

LABEL_132:
            if (v7 >= v8)
            {
              if (v29)
              {
                v139 = 0;
              }

              else
              {
                v139 = *(a2 + 168);
              }

              v147 = v139 + v7 - v10;
              if (v147 >= 0xB)
              {
                v153 = 3629;
                goto LABEL_346;
              }

              goto LABEL_338;
            }
          }

          if (v14 >= 0x40)
          {
            v144 = 3629;
            if (v13 > -1 || v65 > 1)
            {
              v146 = v10;
            }

            else
            {
              v146 = v7;
            }

            v153 = 3629;
            goto LABEL_313;
          }

          if (!(v13 >> 24))
          {
            v159 = v9;
            v41 = v13;
            goto LABEL_137;
          }

          v153 = 3629;
          goto LABEL_345;
        }

LABEL_70:
        v159 = v9;
        v7 = v10 + 1;
        v40 = *v10;
        v13 = ~(-1 << v9);
        v41 = v40 & v13;
        if ((v40 & v13) == v13)
        {
          v14 = 0;
          v29 = 1;
          v9 = v159;
          goto LABEL_132;
        }

LABEL_137:
        if (*(a2 + 144))
        {
          if (v41 <= 0x62)
          {
            v156 = v4;
            v157 = v8;
            v67 = a1;
            v68 = 4 * (*a1 & 1);
            v69 = &(&static_table)[3 * v41];
            v71 = *(v69 + 4);
            v70 = *(v69 + 5);
            v72 = (v70 + v71);
            v73 = v67;
            v74 = (*(*(v67 + 40) + 8))(*(a2 + 32), 0, v72 + v68);
            if (v74)
            {
              v75 = v74;
              *(v74 + 35) = v68;
              *(v74 + 31) = v41;
              *(v74 + 33) |= 0x3Au;
              *(v74 + 24) = v71;
              *(v74 + 8) = name_hashes[v41];
              v76 = nameval_hashes[v41];
              *(v74 + 26) = v70;
              *(v74 + 12) = v76;
              v77 = (*v74 + *(v74 + 16));
              memcpy(v77, *v69, v71);
              v78 = &v77[v71];
              if (v68)
              {
                *v78 = 8250;
                v79 = v78 + 2;
                v75[5] = v79 - *v75;
                memcpy(v79, v69[1], v70);
                *&v79[v70] = 2573;
              }

              else
              {
                v75[5] = v78 - *v75;
                memcpy(v78, v69[1], v70);
              }

              v9 = v159;
              a1 = v73;
              if (!(*(*(v73 + 40) + 16))(*(a2 + 32), v75))
              {
                *(v73 + 28) += v72;
                v4 = v156;
                v8 = v157;
                goto LABEL_4;
              }

              v153 = 3624;
              v10 = v7;
              v4 = v156;
            }

            else
            {
              v153 = 3624;
              v10 = v7;
              v4 = v156;
              a1 = v73;
            }

            goto LABEL_346;
          }
        }

        else
        {
          v80 = *(a1 + 20);
          if (v80)
          {
            v81 = (2 * v80 - v41 + *(a2 + 68)) % (2 * v80);
          }

          else
          {
            v81 = 0;
          }

          v9 = v159;
          v82 = header_out_dynamic_entry(a1, a2, v81);
          v83 = *(a2 + 104);
          if ((v83 & 2) != 0)
          {
            *(a2 + 104) = v83 | (32 * (*(a2 + 64) == v81));
            if (!v82)
            {
              goto LABEL_4;
            }
          }

          else
          {
            *(a2 + 104) = v83 | 0x40;
            if (!v82)
            {
              goto LABEL_4;
            }
          }
        }

        v153 = 3624;
        goto LABEL_345;
      }

      if (v11 != 2)
      {
        goto LABEL_353;
      }

      if (*(a2 + 160))
      {
        v12 = 0;
        v13 = *(a2 + 176);
        v14 = *(a2 + 164);
        v7 = v10;
        goto LABEL_197;
      }
    }

    else
    {
      v18 = *v10;
      if (*v10 < 0)
      {
        *(a2 + 144) = v18 & 0x40;
        *(a2 + 160) = 0;
        *(a2 + 136) = 1;
        v9 = 6;
        goto LABEL_70;
      }

      if (v18 >= 0x40)
      {
        *(a2 + 148) = v18 & 0x20;
        *(a2 + 144) = *v10 & 0x10;
        *(a2 + 160) = 0;
        *(a2 + 136) = 3;
        v9 = 4;
        goto LABEL_113;
      }

      if (v18 >= 0x20)
      {
        *(a2 + 148) = v18 & 0x10;
        *(a2 + 152) = *v10 & 8;
        *(a2 + 160) = 0;
        *(a2 + 136) = 8;
        v9 = 3;
LABEL_116:
        v7 = v10 + 1;
        v13 = ~(-1 << v9);
        v60 = (*v10 & v13);
        if (v60 != v13)
        {
          goto LABEL_186;
        }

        v14 = 0;
        v15 = 1;
        do
        {
          if (v7 >= v8)
          {
            if (v15)
            {
              v141 = 0;
            }

            else
            {
              v141 = *(a2 + 168);
            }

            v147 = v141 + v7 - v10;
            if (v147 >= 0xB)
            {
              v153 = 3770;
              goto LABEL_346;
            }

            goto LABEL_338;
          }

LABEL_182:
          v111 = *v7++;
          v110 = v111;
          v13 += (v111 & 0x7F) << v14;
          v14 += 7;
        }

        while ((v111 & 0x80) != 0);
        if (v14 >= 0x40)
        {
          v144 = 3770;
          if (v13 > -1 || v110 > 1)
          {
            v146 = v10;
          }

          else
          {
            v146 = v7;
          }

          v153 = 3770;
          goto LABEL_313;
        }

        if (v13 >> 24)
        {
          v153 = 3770;
        }

        else
        {
          LODWORD(v60) = v13;
LABEL_186:
          *(a2 + 140) = v60;
          if (*(a2 + 80))
          {
            __assert_rtn("header_out_begin_literal", "lsqpack.c", 3213, "!read_ctx->hbrc_out.xhdr");
          }

          v112 = *(a2 + 148);
          if (*(a2 + 152))
          {
            v113 = v60 >> 1;
          }

          else
          {
            v113 = 0;
          }

          v114 = 4 * (*a1 & 1);
          v115 = (*(*(a1 + 40) + 8))(*(a2 + 32), 0, v114 + v113 + v60);
          *(a2 + 80) = v115;
          if (v115)
          {
            *(v115 + 35) = v114;
            if (v112)
            {
              *(v115 + 33) |= 0x40u;
            }

            *(a2 + 88) = 0;
            if (*(a2 + 152))
            {
              *(a2 + 184) = 0;
              v64 = 9;
            }

            else
            {
              v64 = 10;
            }

            goto LABEL_228;
          }

          v153 = 3758;
        }

LABEL_345:
        v10 = v7;
LABEL_346:
        *(a1 + 332) = v153;
        *(a1 + 328) = 0;
        v154 = *(a2 + 40);
        *(a1 + 336) = &v10[*(a2 + 48)] - &v4[*(a2 + 56)];
        *(a1 + 344) = v154;
        v155 = *(a1 + 48);
        if (v155)
        {
          fwrite("qdec: debug: ", 0xDuLL, 1uLL, v155);
          fprintf(*(a1 + 48), "header block error on line %d, offset %llu, stream id %llu", *(a1 + 332), *(a1 + 336), *(a1 + 344));
          fputc(10, *(a1 + 48));
        }

        return 3;
      }

      if (v18 < 0x10)
      {
        *(a2 + 148) = v18 & 8;
        *(a2 + 160) = 0;
        *(a2 + 136) = 11;
        v9 = 3;
        goto LABEL_32;
      }

      *(a2 + 160) = 0;
      *(a2 + 136) = 2;
      v9 = 4;
    }

    v7 = v10 + 1;
    v13 = ~(-1 << v9);
    v61 = (*v10 & v13);
    if (v61 != v13)
    {
      goto LABEL_201;
    }

    v14 = 0;
    v12 = 1;
    do
    {
      if (v7 >= v8)
      {
        if (v12)
        {
          v142 = 0;
        }

        else
        {
          v142 = *(a2 + 168);
        }

        v147 = v142 + v7 - v10;
        if (v147 < 0xB)
        {
          goto LABEL_338;
        }

        v153 = 3860;
        goto LABEL_346;
      }

LABEL_197:
      v117 = *v7++;
      v116 = v117;
      v13 += (v117 & 0x7F) << v14;
      v14 += 7;
    }

    while ((v117 & 0x80) != 0);
    if (v14 >= 0x40)
    {
      v144 = 3860;
      if (v13 > -1 || v116 > 1)
      {
        v146 = v10;
      }

      else
      {
        v146 = v7;
      }

      v153 = 3860;
LABEL_313:
      if (v14 == 70)
      {
        v10 = v146;
      }

      else
      {
        v153 = v144;
      }

      goto LABEL_346;
    }

    if (v13 >> 24)
    {
      v153 = 3860;
      goto LABEL_345;
    }

    LODWORD(v61) = v13;
LABEL_201:
    v118 = *(a1 + 20);
    if (v118)
    {
      v119 = (v61 + *(a2 + 68) + 1) % (2 * v118);
    }

    else
    {
      v119 = 0;
    }

    v120 = header_out_dynamic_entry(a1, a2, v119);
    v121 = *(a2 + 104);
    if ((v121 & 2) != 0)
    {
      *(a2 + 104) = v121 | (32 * (*(a2 + 64) == v119));
      if (!v120)
      {
        goto LABEL_4;
      }

LABEL_269:
      v153 = 3855;
      goto LABEL_345;
    }

    *(a2 + 104) = v121 | 0x40;
    if (v120)
    {
      goto LABEL_269;
    }

LABEL_4:
    *(a2 + 136) = 0;
LABEL_5:
    v10 = v7;
    if (v7 >= v8)
    {
      goto LABEL_229;
    }
  }

  if (v11 == 3)
  {
    if (*(a2 + 160))
    {
      v24 = 0;
      v13 = *(a2 + 176);
      v14 = *(a2 + 164);
      v7 = v10;
      goto LABEL_154;
    }

LABEL_113:
    v7 = v10 + 1;
    v58 = *v10;
    v13 = ~(-1 << v9);
    v59 = v58 & v13;
    if ((v58 & v13) != v13)
    {
      goto LABEL_158;
    }

    v14 = 0;
    v24 = 1;
    do
    {
      if (v7 >= v8)
      {
        if (v24)
        {
          v140 = 0;
        }

        else
        {
          v140 = *(a2 + 168);
        }

        v147 = v140 + v7 - v10;
        if (v147 >= 0xB)
        {
          v153 = 3660;
          goto LABEL_346;
        }

        goto LABEL_338;
      }

LABEL_154:
      v85 = *v7++;
      v84 = v85;
      v13 += (v85 & 0x7F) << v14;
      v14 += 7;
    }

    while ((v85 & 0x80) != 0);
    if (v14 >= 0x40)
    {
      v144 = 3660;
      if (v13 > -1 || v84 > 1)
      {
        v146 = v10;
      }

      else
      {
        v146 = v7;
      }

      v153 = 3660;
      goto LABEL_313;
    }

    if (v13 >> 24)
    {
      v153 = 3660;
      goto LABEL_345;
    }

    v59 = v13;
LABEL_158:
    if (!*(a2 + 144))
    {
      v98 = *(a1 + 20);
      if (v98)
      {
        v99 = 2 * v98;
        v98 = (v99 - v59 + *(a2 + 68)) % v99;
        v100 = (v99 - v98 + *(a1 + 32)) % v99;
      }

      else
      {
        v100 = 0;
      }

      v101 = *(a1 + 56);
      if (v101 && ((v102 = *(a1 + 60), v103 = *(a1 + 64), v52 = v102 >= v103, v104 = v102 - v103, v52) ? (v105 = 0) : (v105 = *(a1 + 56)), v104 + v105 > v100 && (v106 = *(*(a1 + 72) + 8 * ((v101 + ~v100 + v102) % v101))) != 0))
      {
        v107 = *(a2 + 104);
        if ((v107 & 2) != 0)
        {
          v108 = v107 | (32 * (*(a2 + 64) == v98));
        }

        else
        {
          v108 = v107 | 0x40;
        }

        *(a2 + 104) = v108;
        header_out_begin_dynamic_nameref(a1, a2, v106, *(a2 + 148));
        if (!v109)
        {
          goto LABEL_227;
        }

        v153 = 3652;
      }

      else
      {
        v153 = 3648;
      }

      goto LABEL_345;
    }

    if (*(a2 + 80))
    {
      __assert_rtn("header_out_begin_static_nameref", "lsqpack.c", 3124, "!read_ctx->hbrc_out.xhdr");
    }

    if (v59 > 0x62)
    {
      v153 = 3641;
      goto LABEL_345;
    }

    v160 = v9;
    v86 = v4;
    v158 = v8;
    v87 = *(a2 + 148);
    v88 = 4 * (*a1 & 1);
    v89 = a1;
    v90 = &(&static_table)[3 * v59];
    v91 = *(v90 + 4);
    v92 = v89;
    v93 = (*(*(v89 + 40) + 8))(*(a2 + 32), 0, v88 + v91);
    *(a2 + 80) = v93;
    if (v93)
    {
      v94 = v93;
      *(v93 + 35) = v88;
      *(v93 + 31) = v59;
      v95 = *(v93 + 33);
      *(v93 + 33) = v95 | 0xA;
      *(v93 + 8) = name_hashes[v59];
      if (v87)
      {
        *(v93 + 33) = v95 | 0x4A;
      }

      *(v93 + 24) = v91;
      v96 = (*v93 + *(v93 + 16));
      memcpy(v96, *v90, v91);
      v97 = &v96[v91];
      if (v88)
      {
        *v97 = 8250;
        LODWORD(v97) = v97 + 2;
      }

      a1 = v92;
      v4 = v86;
      v94[5] = v97 - *v94;
      *(a2 + 88) = 1;
      v8 = v158;
      v9 = v160;
      goto LABEL_227;
    }

    v153 = 3641;
    v10 = v7;
    a1 = v92;
    v4 = v86;
    goto LABEL_346;
  }

  if (v11 == 4)
  {
    *(a2 + 152) = *v10 & 0x80;
    *(a2 + 160) = 0;
    *(a2 + 136) = 5;
    v9 = 7;
LABEL_60:
    v7 = v10 + 1;
    v34 = *v10;
    v13 = ~(-1 << v9);
    v35 = v34 & v13;
    if ((v34 & v13) == v13)
    {
      v14 = 0;
      v16 = 1;
      goto LABEL_121;
    }

LABEL_126:
    *(a2 + 140) = v35;
    if (!v35)
    {
      if (!header_out_write_value(a1, a2, 0, 1))
      {
        goto LABEL_4;
      }

      v153 = 3692;
      goto LABEL_345;
    }

    if (*(a2 + 152))
    {
      if (guarantee_out_bytes(a1, a2, v35 + (v35 >> 1)))
      {
        v153 = 3678;
        goto LABEL_345;
      }

      *(a2 + 184) = 0;
      v64 = 6;
    }

    else
    {
      if (guarantee_out_bytes(a1, a2, v35))
      {
        v153 = 3685;
        goto LABEL_345;
      }

      v64 = 7;
    }

LABEL_228:
    *(a2 + 136) = v64;
    goto LABEL_5;
  }

  if (!*(a2 + 160))
  {
    goto LABEL_60;
  }

  v16 = 0;
  v13 = *(a2 + 176);
  v14 = *(a2 + 164);
  v7 = v10;
  do
  {
    v63 = *v7++;
    v62 = v63;
    v13 += (v63 & 0x7F) << v14;
    v14 += 7;
    if ((v63 & 0x80) == 0)
    {
      if (v14 >= 0x40)
      {
        v144 = 3697;
        if (v13 > -1 || v62 > 1)
        {
          v146 = v10;
        }

        else
        {
          v146 = v7;
        }

        v153 = 3697;
        goto LABEL_313;
      }

      if (v13 >> 24)
      {
        v153 = 3697;
        goto LABEL_345;
      }

      v35 = v13;
      goto LABEL_126;
    }

LABEL_121:
    ;
  }

  while (v7 < v8);
  if (v16)
  {
    v138 = 0;
  }

  else
  {
    v138 = *(a2 + 168);
  }

  v147 = v138 + v7 - v10;
  if (v147 >= 0xB)
  {
    v153 = 3697;
    goto LABEL_346;
  }

LABEL_338:
  *(a2 + 176) = v13;
  *(a2 + 164) = v14;
  *(a2 + 168) = v147;
  *(a2 + 160) = 1;
  return 2;
}

uint64_t nw_http3_stream_fields_prepare_decode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 488);
  if (v5 >= a3)
  {
    v9 = *(a1 + 480);
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v6 = 2 * v5;
  if (v6 <= a3)
  {
    v6 = a3;
  }

  if (v6 <= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 488) = v7;
  v8 = *(a1 + 480);
  if (v8)
  {
    v9 = nw_reallocf_type<char *>(v8, v7);
    goto LABEL_16;
  }

  v9 = malloc_type_malloc(v7, 0x77742386uLL);
  if (v9)
  {
LABEL_16:
    *(a1 + 480) = v9;
    v5 = *(a1 + 488);
    if (!a2)
    {
LABEL_10:
      *(a1 + 448) = 0u;
      *(a1 + 464) = 0u;
      if (v5 >= 0xFFFF)
      {
        LOWORD(v5) = -1;
      }
    }

LABEL_12:
    *(a1 + 440) = v9;
    *(a1 + 466) = v5;
    return a1 + 440;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v11 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    v9 = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t nw_http3_stream_fields_process_field(uint64_t a1, uint64_t *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 5);
  v5 = *a2 + *(a2 + 4);
  v6 = *(a2 + 12);
  v7 = (v3 + v4);
  v8 = *(a2 + 13);
  if ((!a1 || (*(a1 + 732) & 0x2000) == 0) && gLogDatapath == 1)
  {
    v10 = a1;
    v11 = (v3 + v4);
    v12 = v5;
    v13 = *(a2 + 12);
    v14 = *(a2 + 13);
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    v8 = v14;
    v6 = v13;
    v5 = v12;
    v7 = v11;
    v17 = v16;
    a1 = v10;
    if (v17)
    {
      v18 = (v10 + 632);
      v19 = " ";
      v20 = *(*(v10 + 344) + 1304);
      v21 = "";
      v22 = *(v10 + 240);
      if (!v10)
      {
        v19 = "";
        v18 = "";
      }

      v23 = 136448259;
      v24 = "nw_http3_stream_fields_process_field";
      v25 = 2082;
      if (v14)
      {
        v21 = v11;
      }

      v26 = v18;
      v27 = 2080;
      v28 = v19;
      v29 = 1024;
      v30 = v20;
      v31 = 2048;
      v32 = v22;
      v33 = 1040;
      v34 = v13;
      v35 = 2080;
      v36 = v12;
      v37 = 1040;
      v38 = v14;
      v39 = 2085;
      v40 = v21;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> received header field %.*s: %{sensitive}.*s", &v23, 0x50u);
      v8 = v14;
      v6 = v13;
      v5 = v12;
      v7 = v11;
      a1 = v10;
    }
  }

  return nw_http_parsed_fields_add(*(a1 + 496), v5, v6, v7, v8, 1) - 1;
}

uint64_t nw_http_parsed_fields_add(void *a1, unint64_t a2, uint64_t a3, const char *a4, size_t a5, char a6)
{
  v11 = a1;
  if (!v11)
  {
    v14 = __nwlog_obj();
    os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    v15 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v15);
    if (result)
    {
      goto LABEL_11;
    }

    free(v15);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = __nwlog_obj();
    os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    v17 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v17);
    if (result)
    {
      goto LABEL_11;
    }

    free(v17);
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a4)
  {
LABEL_4:
    v12 = _nw_http_parsed_fields_add(v11, a2, a3, a4, a5, a6);

    return v12;
  }

LABEL_9:
  v18 = __nwlog_obj();
  os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  v19 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v19);
  if (!result)
  {
    free(v19);
    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_181DDD378(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4, size_t a5, char a6)
{
  if (a3 == -1)
  {
    sub_181CA0008(a2, -1, &v43);
LABEL_5:
    v12 = v43;
    v13 = v44;
    v15 = v45;
    v14 = v46;

    if (v13)
    {
      if ((a5 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v10 = sub_182AD30B8();
  v12 = v10;
  v13 = v11;
  if (a6)
  {
    HTTPField.Name.init(parsed:)(v10, v11, &v43);
    goto LABEL_5;
  }

  v16 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (sub_181CA3274(v10, v11) & 1) != 0)
  {
    v15 = sub_182AD3028();
    v14 = v17;

    if ((a5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      if (!a5)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_14:
    a5 = strlen(a4);
    if (!a5)
    {
LABEL_18:
      sub_181DDDC5C(v12, v13);
      v19 = sub_182AD30B8();
      v21 = v20;
      goto LABEL_27;
    }

LABEL_15:
    v18 = 0;
    while ((a4[v18] & 0x80000000) == 0)
    {
      if (a5 == ++v18)
      {
        goto LABEL_18;
      }
    }

    v43 = a4;
    v44 = a5;
    v45 = sub_1822876F4;
    v46 = 0;
    sub_181DDDC5C(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
    sub_182AD30A8();
    v19 = 0;
    v21 = 0xE000000000000000;
LABEL_27:
    v34 = sub_181DDDCA0(v19, v21);
    v36 = v35;

    if (a6)
    {
      sub_181CA2810(v12, v13);
LABEL_29:
      swift_beginAccess();
      v37 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_181DDDFD0(0, *(v37 + 2) + 1, 1, v37);
        *(a1 + 16) = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_181DDDFD0((v39 > 1), v40 + 1, 1, v37);
      }

      *(v37 + 2) = v40 + 1;
      v41 = &v37[56 * v40];
      *(v41 + 4) = v12;
      *(v41 + 5) = v13;
      *(v41 + 6) = v15;
      *(v41 + 7) = v14;
      v41[64] = 0;
      *(v41 + 9) = v34;
      *(v41 + 10) = v36;
      *(a1 + 16) = v37;
      swift_endAccess();

      return 1;
    }

    if (v15 == 0x69726F687475613ALL && v14 == 0xEA00000000007974)
    {
      swift_bridgeObjectRelease_n();
      sub_181CA2810(v12, v13);
    }

    else
    {
      v42 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      sub_181CA2810(v12, v13);
      if ((v42 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    swift_beginAccess();
    v43 = v12;
    v44 = v13;
    v45 = v15;
    v46 = v14;
    v47 = 0;
    v48 = v34;
    v49 = v36;
    sub_181FCDD00(0, 0, &v43);
    swift_endAccess();

    return 1;
  }

LABEL_20:
  sub_1820EBA0C();
  v22 = swift_allocError();
  *v23 = 0;
  swift_willThrow();
  v24 = v22;
  if (qword_1EA836640 != -1)
  {
    swift_once();
  }

  v25 = sub_182AD2698();
  __swift_project_value_buffer(v25, qword_1EA843130);
  v26 = v22;
  v27 = sub_182AD2678();
  v28 = sub_182AD38B8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_181A37000, v27, v28, "Failed to parse HTTP field: %{public}@", v29, 0xCu);
    sub_181F49A88(v30, &unk_1EA83AA30);
    MEMORY[0x1865DF520](v30, -1, -1);
    MEMORY[0x1865DF520](v29, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t HTTPField.Name.init(parsed:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_6:

    *a3 = 0u;
    *(a3 + 1) = 0u;
    return result;
  }

  v28 = a3;
  v7 = sub_181CBD984(a1, a2) & 0x1FF;

  v27 = a1;
  if (v7 == 58)
  {
    v8 = sub_181DDDBAC(1uLL, a1, a2);
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = sub_182AD39F8();
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v10 >> 14;
  v20 = v8 >> 14;
  if (v8 >> 14 == v10 >> 14)
  {
LABEL_9:

    *v28 = v27;
    v28[1] = a2;
    v28[2] = v27;
    v28[3] = a2;
  }

  v21 = (v12 >> 59) & 1;
  if ((v14 & 0x1000000000000000) == 0)
  {
    LOBYTE(v21) = 1;
  }

  v22 = 4 << v21;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v23 = v12 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v24 = v8 & 0xC;
    result = v8;
    if (v24 == v22)
    {
      result = sub_18208A330(v8, v12, v14);
    }

    if (result >> 14 < v20 || result >> 14 >= v19)
    {
      break;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      result = sub_182AD31C8();
      v26 = result;
      if (v24 != v22)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v25 = result >> 16;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v29[0] = v12;
        v29[1] = v14 & 0xFFFFFFFFFFFFFFLL;
        v26 = *(v29 + v25);
        if (v24 != v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v12 & 0x1000000000000000) == 0)
        {
          result = sub_182AD3CF8();
        }

        v26 = *(result + v25);
        if (v24 != v22)
        {
LABEL_32:
          if ((v14 & 0x1000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_33;
        }
      }
    }

    result = sub_18208A330(v8, v12, v14);
    v8 = result;
    if ((v14 & 0x1000000000000000) == 0)
    {
LABEL_17:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_18;
    }

LABEL_33:
    if (v23 <= v8 >> 16)
    {
      goto LABEL_44;
    }

    v8 = sub_182AD3178();
LABEL_18:
    if ((v26 - 33 > 0x3F || ((1 << (v26 - 33)) & 0xE00000000000367DLL) == 0) && v26 != 124 && v26 != 126 && (v26 - 58) <= 0xF5u && (v26 - 123) < 0xE6u)
    {

      a3 = v28;
      goto LABEL_6;
    }

    if (v19 == v8 >> 14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_181DDDBAC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_182AD3128();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_182AD3258();
}

uint64_t sub_181DDDC5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_181DDDCA0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((sub_181DDDE34(a1, a2) & 1) == 0)
  {
    v7 = v3;
    v8 = a2;
    v9 = sub_181FF2830;
    v10 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C8);
    if (swift_dynamicCast())
    {
      sub_181F3CF20(v5, v11);
      __swift_project_boxed_opaque_existential_1(v11, v12);
      if (sub_182AD3F18())
      {
        __swift_project_boxed_opaque_existential_1(v11, v12);
        sub_182AD3F08();
        v3 = *&v5[0];
        __swift_destroy_boxed_opaque_existential_1(v11);
        return v3;
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_181FF3BD4(v5);
    }

    return sub_181FACBA8(v3, a2);
  }

  return v3;
}

unint64_t sub_181DDDE34(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = sub_18208A330(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_182AD31C8();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_182AD3CF8();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v7)
      {
LABEL_17:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    result = sub_18208A330(result, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_21:
      if (v4 <= result >> 16)
      {
        goto LABEL_27;
      }

      result = sub_182AD3178();
      goto LABEL_23;
    }

LABEL_18:
    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_23:
    if (v15 == 10 || v15 == 13)
    {
      return v10 == v5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_181DDDFD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t guarantee_out_bytes(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 80);
  if (!v3)
  {
    __assert_rtn("guarantee_out_bytes", "lsqpack.c", 3368, "read_ctx->hbrc_out.xhdr");
  }

  if (*(a2 + 88) != 1)
  {
    __assert_rtn("guarantee_out_bytes", "lsqpack.c", 3369, "read_ctx->hbrc_out.state == XOUT_VALUE");
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 20);
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  if (v7 < 0 != v6)
  {
    __assert_rtn("guarantee_out_bytes", "lsqpack.c", 3371, "read_ctx->hbrc_out.xhdr->val_offset >= read_ctx->hbrc_out.xhdr->name_offset");
  }

  v8 = *(a2 + 92) + v7;
  v9 = *(v3 + 26);
  v10 = v9 >= v8;
  v11 = v9 - v8;
  if (!v10)
  {
    __assert_rtn("guarantee_out_bytes", "lsqpack.c", 3375, "read_ctx->hbrc_out.xhdr->val_len >= off");
  }

  if (v11 >= a3)
  {
    return 0;
  }

  v13 = (*(*(a1 + 40) + 8))(*(a2 + 32), *(a2 + 80), a3 + *(v3 + 26) - v11);
  *(a2 + 80) = v13;
  if (v13)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t lsqpack_huff_decode(unsigned __int8 *a1, int a2, unsigned __int8 *a3, uint64_t a4, _DWORD *a5, int a6)
{
  if (!a6 || *a5)
  {
    return lsqpack_huff_decode_full(a1, a2, a3, a4, a5, a6);
  }

  v6 = 0;
  v7 = 0;
  v8 = &a1[a2];
  v9 = &a3[a4];
  v10 = a3;
  do
  {
    while (1)
    {
LABEL_4:
      v11 = a1 + 8;
      if ((a1 + 8) <= v8)
      {
        v15 = (64 - v7) >> 3;
        if (v15 != 7)
        {
          if (v15 != 8)
          {
LABEL_20:
            v13 = ((64 - v7) & 0x78) + v7;
            v12 = a1 + 5;
            v14 = (v6 << 48) | (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8);
            v11 = a1 + 6;
            goto LABEL_21;
          }

          v16 = *a1++;
          v6 = v16;
        }

        v17 = *a1++;
        v6 = v17 | (v6 << 8);
        goto LABEL_20;
      }

      if (a1 >= v8)
      {
        if (v7 < 5)
        {
          goto LABEL_87;
        }

        v42 = (v6 << (16 - v7)) & 0xFFFE | ~(-1 << (16 - v7));
        if (v7 <= 7 && v42 == 0xFFFF)
        {
          goto LABEL_90;
        }

        v43 = &hdecs[4 * v42];
        v44 = *v43;
        v45 = v7 - (v44 >> 2);
        if (v7 >= v44 >> 2)
        {
          v46 = v44 & 3;
          v47 = &v10[v46];
          if (v46)
          {
            v48 = v47 > v9;
          }

          else
          {
            v48 = 1;
          }

          if (!v48)
          {
            v49 = v43[1];
            v50 = v43[2];
            v51 = v43[3];
            *v10 = v49;
            v52 = v10 + 1;
            if (v46 == 2)
            {
              v52 = v10 + 2;
              v10[1] = v50;
            }

            else if (v46 == 3)
            {
              v10[1] = v50;
              v52 = v10 + 3;
              v10[2] = v51;
            }

            v7 = v45;
            LODWORD(v10) = v52;
LABEL_87:
            if (v7 && (v6 | (-1 << v7)) != 0xFFFFFFFFFFFFFFFFLL)
            {
              goto LABEL_89;
            }

LABEL_90:
            v34 = 0;
            v33 = (v10 - a3);
            return v34 | (v33 << 32);
          }

          if (v47 > v9)
          {
            goto LABEL_50;
          }
        }

LABEL_89:
        v33 = 0;
        v34 = 3;
        return v34 | (v33 << 32);
      }

      v12 = a1 + 1;
      v6 = *a1 | (v6 << 8);
      if ((a1 + 1) >= v8)
      {
        v13 = v7 + 8;
        goto LABEL_27;
      }

      v12 = a1 + 2;
      v6 = a1[1] | (v6 << 8);
      if ((a1 + 2) >= v8)
      {
        v13 = v7 + 16;
        goto LABEL_27;
      }

      v12 = a1 + 3;
      v6 = a1[2] | (v6 << 8);
      if ((a1 + 3) >= v8)
      {
        v13 = v7 + 24;
        goto LABEL_27;
      }

      v12 = a1 + 4;
      v6 = a1[3] | (v6 << 8);
      if ((a1 + 4) >= v8)
      {
        v13 = v7 + 32;
        goto LABEL_27;
      }

      v12 = a1 + 5;
      v6 = a1[4] | (v6 << 8);
      if ((a1 + 5) >= v8)
      {
        v13 = v7 + 40;
        goto LABEL_27;
      }

      v12 = a1 + 6;
      v6 = a1[5] | (v6 << 8);
      v13 = v7 + 48;
      if ((a1 + 6) < v8 && v7 <= 8)
      {
        v12 = a1 + 7;
        v6 = a1[6] | (v6 << 8);
        v13 = v7 + 56;
        if ((a1 + 7) < v8 && !v7)
        {
          v14 = v6 << 8;
          v13 = 64;
LABEL_21:
          v6 = v14 | *v12;
          v12 = v11;
        }
      }

LABEL_27:
      if (v9 - v10 < 12 || v13 < 0x10)
      {
        break;
      }

      v7 = v13;
      do
      {
        v18 = &hdecs[4 * (v6 >> (v7 - 16))];
        v19 = *v18;
        v20 = *(v18 + 1);
        LOBYTE(v18) = v18[3];
        *v10 = v20;
        v10[2] = v18;
        v10 += v19 & 3;
        v7 -= v19 >> 2;
        if (v19)
        {
          v21 = v7 > 0xF;
        }

        else
        {
          v21 = 0;
        }
      }

      while (v21);
      a1 = v12;
      if (v7 >= 0x10)
      {
        goto LABEL_59;
      }
    }

    v7 = v13;
    a1 = v12;
  }

  while (v13 < 0x10);
  while (1)
  {
    v22 = v10;
    v23 = &hdecs[4 * (v6 >> (v13 - 16))];
    v24 = *v23;
    v25 = v24 & 3;
    v26 = &v22[v24 & 3];
    if ((v24 & 3) == 0 || v26 > v9)
    {
      break;
    }

    v28 = v23[2];
    v29 = v23[3];
    *v22 = v23[1];
    v10 = v22 + 1;
    if (v25 == 2)
    {
      v10 = v22 + 2;
      v22[1] = v28;
    }

    else if (v25 == 3)
    {
      v22[1] = v28;
      v10 = v22 + 3;
      v22[2] = v29;
    }

    v13 -= v24 >> 2;
    if (v13 <= 0xF)
    {
      v7 = v13;
      a1 = v12;
      goto LABEL_4;
    }
  }

  v7 = v13;
  v10 = v22;
  if (v26 <= v9)
  {
LABEL_59:
    v35 = v7 & 7;
    if ((v7 & 7) != 0 && v10 > a3)
    {
      v36 = v10 - 1;
      do
      {
        v21 = v36 > a3;
        v37 = *v36--;
        v7 += encode_table[2 * v37 + 1];
        v35 = v7 & 7;
      }

      while (v21 && (v7 & 7) != 0);
      v10 = v36 + 1;
    }

    if (v35)
    {
      __assert_rtn("huff_decode_fast", "lsqpack.c", 5437, "(avail_bits & 7) == 0");
    }

    v38 = v9 - v10;
    v39 = a4;
    v40 = lsqpack_huff_decode_full(&v12[-(v7 >> 3)], v8 - (v12 - (v7 >> 3)), v10, (v9 - v10), a5, 1);
    v41 = v39 - v38;
    if ((v40 & 0xFFFFFFFD) != 0)
    {
      v41 = 0;
    }

    v33 = (v41 + HIDWORD(v40));
    v34 = v40;
  }

  else
  {
LABEL_50:
    v31 = v7 & 7;
    if ((v7 & 7) != 0 && v10 > a3)
    {
      --v10;
      do
      {
        v21 = v10 > a3;
        v32 = *v10--;
        v7 += encode_table[2 * v32 + 1];
        v31 = v7 & 7;
      }

      while (v21 && (v7 & 7) != 0);
      LODWORD(v10) = v10 + 1;
    }

    if (v31)
    {
      __assert_rtn("huff_decode_fast", "lsqpack.c", 5425, "(avail_bits & 7) == 0");
    }

    v33 = (v10 - a3);
    v34 = 2;
  }

  return v34 | (v33 << 32);
}

uint64_t header_out_write_value(int *a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 92) + a3;
  *(a2 + 92) = v4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 80);
  v8 = *a1;
  if (*a1)
  {
    v9 = *(v7 + 20);
    if (v4 + v9 + 2 > *(v7 + 26))
    {
      v10 = (*(*(a1 + 5) + 8))(*(a2 + 32), *(a2 + 80));
      *(a2 + 80) = v10;
      if (!v10)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = v10;
      v9 = *(v10 + 20);
      v4 = *(a2 + 92);
    }

    *(*v7 + v9 + v4) = 2573;
    LOWORD(v4) = *(a2 + 92);
    v8 = *a1;
  }

  *(v7 + 26) = v4;
  if ((v8 & 2) != 0)
  {
    v11 = *(v7 + 33);
    if ((v11 & 8) == 0)
    {
      __assert_rtn("header_out_write_value", "lsqpack.c", 3302, "xhdr->flags & LSXPACK_NAME_HASH");
    }

    *(v7 + 12) = XXH_INLINE_XXH32((*v7 + *(v7 + 20)), v4, *(v7 + 8));
    *(v7 + 33) = v11 | 0x10;
  }

  result = (*(*(a1 + 5) + 16))(*(a2 + 32), v7);
  if (result)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    a1[7] += *(v7 + 26) + *(v7 + 24);
  }

  ++*(a2 + 72);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t header_out_write_name(int *a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = *(a2 + 92) + a3;
  *(a2 + 92) = v4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 80);
  v7 = *a1;
  if ((*a1 & 1) == 0)
  {
    v8 = *(v6 + 16);
    *(v6 + 20) = v8 + v4;
    goto LABEL_9;
  }

  if (v4 + 2 <= *(v6 + 26))
  {
LABEL_8:
    *(*v6 + *(v6 + 16) + v4) = 8250;
    v8 = *(v6 + 16);
    LODWORD(v4) = *(a2 + 92);
    *(v6 + 20) = v8 + v4 + 2;
    v7 = *a1;
LABEL_9:
    *(v6 + 24) = v4;
    *(a2 + 88) = 1;
    if ((v7 & 6) == 0)
    {
      return 0;
    }

    if (!*v6)
    {
      v23 = 414139866;
LABEL_22:
      result = 0;
      v28 = (-2048144777 * (v23 ^ (v23 >> 15))) ^ ((-2048144777 * (v23 ^ (v23 >> 15))) >> 13);
      *(v6 + 8) = (-1028477379 * v28) ^ ((-1028477379 * v28) >> 16);
      *(v6 + 33) |= 8u;
      return result;
    }

    v12 = (*v6 + v8);
    v4 = v4;
    if (v4 < 0x10u)
    {
      v23 = v4 + 414139866;
      if (v4 < 4uLL)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v12 + v4 - 15;
      v14 = 645669457;
      v15 = -2008766304;
      v16 = 39378473;
      v17 = 1679910008;
      do
      {
        HIDWORD(v18) = v14 - 2048144777 * *v12;
        LODWORD(v18) = HIDWORD(v18);
        v14 = -1640531535 * (v18 >> 19);
        HIDWORD(v18) = v15 - 2048144777 * v12[1];
        LODWORD(v18) = HIDWORD(v18);
        v15 = -1640531535 * (v18 >> 19);
        HIDWORD(v18) = v16 - 2048144777 * v12[2];
        LODWORD(v18) = HIDWORD(v18);
        v16 = -1640531535 * (v18 >> 19);
        HIDWORD(v18) = v17 - 2048144777 * v12[3];
        LODWORD(v18) = HIDWORD(v18);
        v17 = -1640531535 * (v18 >> 19);
        v12 += 4;
      }

      while (v12 < v13);
      HIDWORD(v20) = v14;
      LODWORD(v20) = v14;
      v19 = v20 >> 31;
      HIDWORD(v20) = v15;
      LODWORD(v20) = v15;
      v21 = v20 >> 25;
      HIDWORD(v20) = v16;
      LODWORD(v20) = v16;
      v22 = v20 >> 20;
      HIDWORD(v20) = v17;
      LODWORD(v20) = v17;
      v23 = v19 + v4 + v21 + v22 + (v20 >> 14);
      v4 &= 0xFu;
      if (v4 < 4)
      {
LABEL_20:
        while (v4)
        {
          v26 = *v12;
          v12 = (v12 + 1);
          HIDWORD(v27) = v23 + 374761393 * v26;
          LODWORD(v27) = HIDWORD(v27);
          v23 = -1640531535 * (v27 >> 21);
          --v4;
        }

        goto LABEL_22;
      }
    }

    do
    {
      v24 = *v12++;
      HIDWORD(v25) = v23 - 1028477379 * v24;
      LODWORD(v25) = HIDWORD(v25);
      v23 = 668265263 * (v25 >> 15);
      v4 -= 4;
    }

    while (v4 > 3);
    goto LABEL_20;
  }

  v10 = a1;
  v11 = (*(*(a1 + 5) + 8))(*(a2 + 32));
  *(a2 + 80) = v11;
  if (v11)
  {
    v6 = v11;
    LODWORD(v4) = *(a2 + 92);
    a1 = v10;
    goto LABEL_8;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_protocol_definition_get_metadata_finalizer(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    if (v2)
    {
      v3 = *(v2 + 248);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_get_metadata_finalizer";
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
        v16 = "nw_protocol_definition_get_metadata_finalizer";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_get_metadata_finalizer";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_finalizer";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_finalizer";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_5:

  return v3;
}

uint64_t nw_http3_stream_received_fields_done(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 380);
  if (v1 > 8)
  {
    return 0;
  }

  v3 = 1 << v1;
  if ((v3 & 0x155) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = *(a1 + 380);
    *buf = 136446466;
    v48 = "nw_http3_stream_received_fields_done";
    v49 = 1024;
    *v50 = v4;
    v5 = _os_log_send_and_compose_impl();
    v46 = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v5, &v46, &v45))
    {
      goto LABEL_45;
    }

    if (v46 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = v46;
      if (!os_log_type_enabled(gLogObj, v46))
      {
        goto LABEL_45;
      }

      v8 = *(a1 + 380);
      *buf = 136446466;
      v48 = "nw_http3_stream_received_fields_done";
      v49 = 1024;
      *v50 = v8;
      v9 = "%{public}s Unexpected input state %d";
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = v46;
      v19 = os_log_type_enabled(gLogObj, v46);
      if (backtrace_string)
      {
        if (v19)
        {
          v20 = *(a1 + 380);
          *buf = 136446722;
          v48 = "nw_http3_stream_received_fields_done";
          v49 = 1024;
          *v50 = v20;
          *&v50[4] = 2082;
          *&v50[6] = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Unexpected input state %d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
LABEL_45:
        if (v5)
        {
          v36 = v5;
LABEL_47:
          free(v36);
        }

        return 2;
      }

      if (!v19)
      {
        goto LABEL_45;
      }

      v35 = *(a1 + 380);
      *buf = 136446466;
      v48 = "nw_http3_stream_received_fields_done";
      v49 = 1024;
      *v50 = v35;
      v9 = "%{public}s Unexpected input state %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = v46;
      if (!os_log_type_enabled(gLogObj, v46))
      {
        goto LABEL_45;
      }

      v27 = *(a1 + 380);
      *buf = 136446466;
      v48 = "nw_http3_stream_received_fields_done";
      v49 = 1024;
      *v50 = v27;
      v9 = "%{public}s Unexpected input state %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v9, buf, 0x12u);
    goto LABEL_45;
  }

  if ((v3 & 0xA) == 0)
  {
    v21 = nw_http_parsed_fields_copy_trailer_fields(*(a1 + 496));
    if (v21)
    {
      v22 = v21;
      nw_http_metadata_set_trailer_fields(*(a1 + 408), v21);
      v23 = *(a1 + 384);
      v24 = nw_frame_unclaimed_length(v23);
      nw_frame_claim(v23, v25, v24, 0);
      nw_frame_set_metadata(*(a1 + 384), *(a1 + 408), 1, 1);
      goto LABEL_30;
    }

LABEL_31:
    *(a1 + 272) = 270;
    nw_protocol_http3_stream_error(a1, a1);
    nw_protocol_http3_stream_disconnect(a1, a1);
    return 2;
  }

  v10 = *(a1 + 344);
  if (!v10)
  {
    __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http3_stream_received_fields_done";
    v37 = _os_log_send_and_compose_impl();
    v46 = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v37, &v46, &v45))
    {
      if (v46 == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = v46;
        if (os_log_type_enabled(v38, v46))
        {
          *buf = 136446210;
          v48 = "nw_http3_stream_received_fields_done";
          v40 = "%{public}s called with null http3";
LABEL_68:
          _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
        }
      }

      else if (v45 == 1)
      {
        v41 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = v46;
        v42 = os_log_type_enabled(v38, v46);
        if (v41)
        {
          if (v42)
          {
            *buf = 136446466;
            v48 = "nw_http3_stream_received_fields_done";
            v49 = 2082;
            *v50 = v41;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v41);
          goto LABEL_69;
        }

        if (v42)
        {
          *buf = 136446210;
          v48 = "nw_http3_stream_received_fields_done";
          v40 = "%{public}s called with null http3, no backtrace";
          goto LABEL_68;
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v39 = v46;
        if (os_log_type_enabled(v38, v46))
        {
          *buf = 136446210;
          v48 = "nw_http3_stream_received_fields_done";
          v40 = "%{public}s called with null http3, backtrace limit exceeded";
          goto LABEL_68;
        }
      }
    }

LABEL_69:
    if (!v37)
    {
      return 2;
    }

    v36 = v37;
    goto LABEL_47;
  }

  metadata_with_parsed_fields = nw_http_create_metadata_with_parsed_fields(*(a1 + 496), *(v10 + 1397) & 1);
  v12 = *(a1 + 416);
  if ((v12 & 1) != 0 && *(a1 + 408))
  {
    v13 = metadata_with_parsed_fields;
    os_release(*(a1 + 408));
    metadata_with_parsed_fields = v13;
    v12 = *(a1 + 416);
  }

  *(a1 + 408) = metadata_with_parsed_fields;
  *(a1 + 416) = v12 | 1;
  if (!metadata_with_parsed_fields)
  {
    goto LABEL_31;
  }

  nw_http_metadata_set_version(metadata_with_parsed_fields, 5);
  if (*(v10 + 1397))
  {
    v17 = 0;
  }

  else
  {
    if ((*(v10 + 1399) & 8) != 0 && *(v10 + 1256) && *(v10 + 1292))
    {
      if ((*(v10 + 1399) & 0x20) == 0)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(v10 + 1304);
          *buf = 136446978;
          v48 = "nw_http3_stream_received_fields_done";
          v49 = 2082;
          *v50 = v10 + 1313;
          *&v50[8] = 2080;
          *&v50[10] = " ";
          v51 = 1024;
          v52 = v15;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> decreasing QUIC keepalive frequency after receiving a response", buf, 0x26u);
        }
      }

      *(v10 + 1399) &= ~8u;
      nw_quic_connection_set_keepalive(*(v10 + 1256), 0xFFFFu);
    }

    v16 = nw_http_metadata_copy_response(*(a1 + 408));
    v17 = nw_http_response_get_status_code(v16) - 100 < 0x64;
    if (v16)
    {
      os_release(v16);
    }
  }

  nw_http_connection_metadata_increment_inbound_message_count(*(v10 + 1264));
  nw_http_transaction_metadata_set_inbound_message(*(a1 + 400), *(a1 + 408), a1 + 632);
  nw::http::content_length_manager::set_inbound_message((a1 + 280), *(a1 + 408));
  v28 = *(a1 + 384);
  v29 = nw_frame_unclaimed_length(v28);
  nw_frame_claim(v28, v30, v29, 0);
  v31 = *(a1 + 384);
  v32 = *(a1 + 408);
  is_metadata_complete = nw_frame_is_metadata_complete(v31);
  nw_frame_set_metadata(v31, v32, 1, (is_metadata_complete | v17) & 1);
  v34 = 0;
  if (v17)
  {
    goto LABEL_51;
  }

  if ((*(a1 + 732) & 0x40) != 0)
  {
    v34 = 8;
LABEL_51:
    result = 0;
    *(a1 + 380) = v34;
    return result;
  }

  *(a1 + 380) = 4;
  result = *(a1 + 408);
  if (result)
  {
    result = nw_http_metadata_copy_request(result);
    if (result)
    {
      v22 = result;
      if (nw_http_request_has_method(result, "CONNECT-UDP"))
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 0x40000000;
        v44[2] = ___ZL36nw_http3_stream_received_fields_doneP24nw_protocol_http3_stream_block_invoke;
        v44[3] = &__block_descriptor_tmp_138_63710;
        v44[4] = a1;
        nw_http_fields_access_value_by_name(v22, "Datagram-Flow-Id", v44);
LABEL_54:
        *(a1 + 734) |= 2u;
        goto LABEL_30;
      }

      if (nw_http_request_has_method(v22, "CONNECT"))
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 0x40000000;
        v43[2] = ___ZL36nw_http3_stream_received_fields_doneP24nw_protocol_http3_stream_block_invoke_139;
        v43[3] = &__block_descriptor_tmp_140_63711;
        v43[4] = a1;
        v43[5] = v10;
        nw_http_request_access_extended_connect_protocol(v22, v43);
        goto LABEL_54;
      }

LABEL_30:
      os_release(v22);
      return 0;
    }
  }

  return result;
}

void nw_http_transaction_finalize_metadata(uint64_t a1, void *a2)
{
  v3 = a2[14];
  a2[14] = 0;

  v4 = a2[15];
  a2[15] = 0;

  v5 = a2[16];
  a2[16] = 0;

  v6 = a2[17];
  a2[17] = 0;

  v7 = a2[18];
  a2[18] = 0;
}

void *nw_http_create_metadata_with_parsed_fields(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = v5;
    if (a2)
    {
      _nw_http_parsed_fields_copy_request(v5);
      v8 = v7;

      if (v8)
      {
        metadata_for_request = nw_http_create_metadata_for_request(v8);
LABEL_7:
        v11 = metadata_for_request;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      _nw_http_parsed_fields_copy_response(v5);
      v8 = v10;

      if (v8)
      {
        metadata_for_request = nw_http_create_metadata_for_response(v8);
        goto LABEL_7;
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_create_metadata_with_parsed_fields";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_http_create_metadata_with_parsed_fields";
        v17 = "%{public}s called with null parsed_fields";
LABEL_24:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v23 = "nw_http_create_metadata_with_parsed_fields";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null parsed_fields, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v19)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v23 = "nw_http_create_metadata_with_parsed_fields";
        v17 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_24;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_http_create_metadata_with_parsed_fields";
        v17 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_24;
      }
    }

LABEL_25:
  }

LABEL_26:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_10:

  return v11;
}
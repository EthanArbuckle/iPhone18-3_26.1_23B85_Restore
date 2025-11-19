void nw_flow_connected(nw_protocol *a1, nw_protocol *a2)
{
  v3 = a1;
  v259 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v5 = *(handle + 20);
  v6 = v5;
  if (!v5)
  {
    v140 = __nwlog_obj();
    *buf = 136446210;
    v241 = "nw_flow_connected";
    v141 = _os_log_send_and_compose_impl();

    __str[0] = 16;
    LOBYTE(v236) = 0;
    if (__nwlog_fault(v141, __str, &v236))
    {
      if (__str[0] == 17)
      {
        v142 = __nwlog_obj();
        v143 = __str[0];
        if (os_log_type_enabled(v142, __str[0]))
        {
          *buf = 136446210;
          v241 = "nw_flow_connected";
          _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v236 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v142 = __nwlog_obj();
        v145 = __str[0];
        v146 = os_log_type_enabled(v142, __str[0]);
        if (backtrace_string)
        {
          if (v146)
          {
            *buf = 136446466;
            v241 = "nw_flow_connected";
            v242 = 2082;
            v243 = backtrace_string;
            _os_log_impl(&dword_181A37000, v142, v145, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_180;
        }

        if (v146)
        {
          *buf = 136446210;
          v241 = "nw_flow_connected";
          _os_log_impl(&dword_181A37000, v142, v145, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v142 = __nwlog_obj();
        v147 = __str[0];
        if (os_log_type_enabled(v142, __str[0]))
        {
          *buf = 136446210;
          v241 = "nw_flow_connected";
          _os_log_impl(&dword_181A37000, v142, v147, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_180:
    if (v141)
    {
      free(v141);
    }

    goto LABEL_137;
  }

  v7 = v5;
  mode = v7->mode;

  if (mode == 2)
  {
    v230 = nw_endpoint_handler_copy_flow(v7);
    if ((*(handle + 166) & 0x200) == 0)
    {
      memset(__str, 0, sizeof(__str));
      if (a2 && a2->identifier)
      {
        snprintf(__str, 0x23uLL, " (%s)", a2->identifier->name);
      }

      if (v230 + 376 != handle)
      {
LABEL_8:
        v9 = *(handle + 166);
        if ((v9 & 0x400) != 0)
        {
          v10 = v9 & 0xFBFF;
          *(handle + 166) = v9 & 0xFBFF;
          v11 = *(v230 + 89);
          if (v11)
          {
            v12 = v11;
            v13 = nw_read_request_list_remove_head(*(v230 + 89));
            v14 = *(v230 + 89);
            *(v230 + 89) = v13;

            v15 = v7;
            v16 = (*(v15 + 284) & 0x40) == 0;

            if (!v16)
            {
LABEL_132:
              nw_flow_add_read_request(v15, handle, v12);

              goto LABEL_133;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v17 = gconnectionLogObj;
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
LABEL_131:

              goto LABEL_132;
            }

            log = v15;

            v18 = log;
            v19 = (*(v15 + 284) & 1) == 0;

            v20 = "dry-run ";
            if (v19)
            {
              v20 = "";
            }

            v202 = v20;
            v21 = nw_endpoint_handler_copy_endpoint(v18);
            v22 = v21;
            if (v21)
            {
              logging_description = _nw_endpoint_get_logging_description(v21);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v78 = v18;
            v79 = v78;
            v80 = v78[30];
            if (v80 > 5)
            {
              v81 = "unknown-state";
            }

            else
            {
              v81 = off_1E6A31048[v80];
            }

            v180 = v81;

            v82 = v79;
            v83 = v82;
            v84 = v7->mode;
            if (v84 > 2)
            {
              switch(v84)
              {
                case 3:
                  v85 = "proxy";
                  break;
                case 4:
                  v85 = "fallback";
                  break;
                case 5:
                  v85 = "transform";
                  break;
                default:
LABEL_126:
                  v85 = "unknown-mode";
                  break;
              }
            }

            else
            {
              if (v84)
              {
                if (v84 == 1)
                {
                  v85 = "resolver";
                  goto LABEL_129;
                }

                if (v84 == 2)
                {
                  v179 = nw_endpoint_flow_mode_string(v82[33]);
LABEL_130:

                  v105 = v83;
                  v106 = handle;
                  v107 = v15;
                  v108 = v6;
                  v109 = v3;
                  v110 = a2;
                  v111 = v17;
                  v112 = v22;
                  v113 = v12;
                  v114 = v105;
                  os_unfair_lock_lock(v105 + 28);
                  v115 = *&v114[16]._os_unfair_lock_opaque;
                  os_unfair_lock_unlock(v114 + 28);

                  v12 = v113;
                  v116 = v112;
                  v17 = v111;
                  a2 = v110;
                  v3 = v109;
                  v6 = v108;
                  v15 = v107;
                  handle = v106;
                  *buf = 136448258;
                  v241 = "nw_flow_connected";
                  v242 = 2082;
                  v243 = log + 23;
                  v244 = 2082;
                  v245 = v202;
                  v246 = 2082;
                  v247 = logging_description;
                  v248 = 2082;
                  v249 = v180;
                  v250 = 2082;
                  v251 = v179;
                  v252 = 2114;
                  v253 = v115;
                  v254 = 2112;
                  v255 = v12;
                  v256 = 2048;
                  v257 = v106;
                  _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding new flow read request %@ to %p", buf, 0x5Cu);

                  goto LABEL_131;
                }

                goto LABEL_126;
              }

              v85 = "path";
            }

LABEL_129:
            v179 = v85;
            goto LABEL_130;
          }

          *(handle + 166) = v10 | 0x20;
        }

LABEL_133:
        default_input_handler = v3->default_input_handler;
        if (default_input_handler)
        {
          nw_protocol_connected(default_input_handler, a2);
          if (v3->output_handler == a2)
          {
            nw_protocol_connected(v3->default_input_handler->flow_id, v3);
          }
        }

        goto LABEL_136;
      }

      if (v3->output_handler != a2)
      {
        if (*(v230 + 90) == a2)
        {
          v66 = "Transport";
        }

        else
        {
          if (*(v230 + 92) != a2)
          {
            if (*(v230 + 93) != a2)
            {
              goto LABEL_8;
            }

            v229 = v7;
            if (a2)
            {
              callbacks = a2->callbacks;
              if (callbacks)
              {
                waiting_for_output = callbacks->waiting_for_output;
                if (waiting_for_output)
                {
                  if (waiting_for_output(a2, v3))
                  {
                    minimize_logging = nw_endpoint_handler_get_minimize_logging(v7);
                    logging_disabled = nw_endpoint_handler_get_logging_disabled(v7);
                    if (!minimize_logging)
                    {
                      if (logging_disabled)
                      {
                        goto LABEL_8;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v39 = gconnectionLogObj;
                      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                      {
                        goto LABEL_115;
                      }

                      id_string = nw_endpoint_handler_get_id_string(v7);
                      v203 = v39;
                      v188 = nw_endpoint_handler_dry_run_string(v7);
                      v41 = id_string;
                      logd = nw_endpoint_handler_copy_endpoint(v7);
                      v42 = nw_endpoint_get_logging_description(logd);
                      v43 = nw_endpoint_handler_state_string(v7);
                      v44 = nw_endpoint_handler_mode_string(v7);
                      v45 = nw_endpoint_handler_copy_current_path(v7);
                      *buf = 136448002;
                      v241 = "nw_flow_connected";
                      v242 = 2082;
                      v243 = v41;
                      v244 = 2082;
                      v245 = v188;
                      v246 = 2082;
                      v247 = v42;
                      v248 = 2082;
                      v249 = v43;
                      v250 = 2082;
                      v251 = v44;
                      v252 = 2114;
                      v253 = v45;
                      v254 = 2082;
                      v255 = __str;
                      _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Proxy protocol%{public}s waiting for output, ignore", buf, 0x52u);

                      goto LABEL_114;
                    }

                    if (logging_disabled)
                    {
                      goto LABEL_8;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v152 = gconnectionLogObj;
                    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                    {
                      v214 = nw_endpoint_handler_get_id_string(v7);
                      v200 = nw_endpoint_handler_dry_run_string(v7);
                      logm = nw_endpoint_handler_copy_endpoint(v7);
                      v170 = nw_endpoint_get_logging_description(logm);
                      v171 = nw_endpoint_handler_state_string(v7);
                      v172 = nw_endpoint_handler_mode_string(v7);
                      v173 = nw_endpoint_handler_copy_current_path(v7);
                      *buf = 136448002;
                      v241 = "nw_flow_connected";
                      v242 = 2082;
                      v243 = v214;
                      v244 = 2082;
                      v245 = v200;
                      v246 = 2082;
                      v247 = v170;
                      v248 = 2082;
                      v249 = v171;
                      v250 = 2082;
                      v251 = v172;
                      v252 = 2114;
                      v253 = v173;
                      v254 = 2082;
                      v255 = __str;
                      _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Proxy protocol%{public}s waiting for output, ignore", buf, 0x52u);
                    }

                    goto LABEL_192;
                  }
                }
              }
            }

            v118 = nw_endpoint_handler_get_minimize_logging(v7);
            v119 = nw_endpoint_handler_get_logging_disabled(v7);
            if (v118)
            {
              if (v119)
              {
                goto LABEL_145;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v120 = gconnectionLogObj;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
              {
                v213 = nw_endpoint_handler_get_id_string(v7);
                v199 = nw_endpoint_handler_dry_run_string(v7);
                logl = nw_endpoint_handler_copy_endpoint(v7);
                v166 = nw_endpoint_get_logging_description(logl);
                v167 = nw_endpoint_handler_state_string(v7);
                v168 = nw_endpoint_handler_mode_string(v7);
                v169 = nw_endpoint_handler_copy_current_path(v7);
                *buf = 136448002;
                v241 = "nw_flow_connected";
                v242 = 2082;
                v243 = v213;
                v244 = 2082;
                v245 = v199;
                v246 = 2082;
                v247 = v166;
                v248 = 2082;
                v249 = v167;
                v250 = 2082;
                v251 = v168;
                v252 = 2114;
                v253 = v169;
                v254 = 2082;
                v255 = __str;
                _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Proxy protocol connected%{public}s", buf, 0x52u);
              }
            }

            else
            {
              if (v119)
              {
LABEL_145:
                v7->event = 917507;
                nw_endpoint_handler_report(v7, 0, &v7->event.domain, 0);
                v39 = nw_flow_get_remote(v3);
                if (!v39)
                {
                  goto LABEL_115;
                }

                v127 = *(handle + 22);
                if (!v127 || !*(handle + 23) || !_nw_parameters_get_block_trackers(v127))
                {
                  goto LABEL_115;
                }

                v128 = v39;
                v129 = nw_endpoint_copy_cname_array(v39);
                v130 = v129;
                if (v129 && _nw_array_get_count(v129))
                {
                  v236 = 0;
                  v237 = &v236;
                  v238 = 0x2020000000;
                  v239 = 0;
                  v131 = nw_context_copy_tracker_lookup_callback(*(handle + 23));
                  loga = v131;
                  if (v131)
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = ___ZL17nw_flow_connectedP11nw_protocolS0__block_invoke;
                    aBlock[3] = &unk_1E6A2DD20;
                    v234 = v131;
                    v235 = &v236;
                    _nw_array_apply(v130, aBlock);

                    v131 = loga;
                  }

                  if (*(v237 + 24) == 1)
                  {
                    v132 = nw_endpoint_handler_get_minimize_logging(v7);
                    v133 = nw_endpoint_handler_get_logging_disabled(v7);
                    if (v132)
                    {
                      if (v133)
                      {
                        goto LABEL_161;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v208 = gconnectionLogObj;
                      if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
                      {
                        v201 = nw_endpoint_handler_get_id_string(v7);
                        v186 = nw_endpoint_handler_dry_run_string(v7);
                        v174 = nw_endpoint_handler_copy_endpoint(v7);
                        v175 = nw_endpoint_get_logging_description(v174);
                        v176 = nw_endpoint_handler_state_string(v7);
                        v177 = nw_endpoint_handler_mode_string(v7);
                        v178 = nw_endpoint_handler_copy_current_path(v7);
                        *buf = 136447746;
                        v241 = "nw_flow_connected";
                        v242 = 2082;
                        v243 = v201;
                        v244 = 2082;
                        v245 = v186;
                        v246 = 2082;
                        v247 = v175;
                        v248 = 2082;
                        v249 = v176;
                        v250 = 2082;
                        v251 = v177;
                        v252 = 2114;
                        v253 = v178;
                        _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Proxy protocol detected tracker to block", buf, 0x48u);
                      }
                    }

                    else
                    {
                      if (v133)
                      {
LABEL_161:
                        v139 = *(handle + 23);
                        v231[0] = MEMORY[0x1E69E9820];
                        v231[1] = 3221225472;
                        v231[2] = ___ZL17nw_flow_connectedP11nw_protocolS0__block_invoke_99;
                        v231[3] = &unk_1E6A3D868;
                        v232 = v7;
                        nw_queue_context_async(v139, v231);

                        _Block_object_dispose(&v236, 8);
                        goto LABEL_136;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v208 = gconnectionLogObj;
                      if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
                      {
                        v194 = nw_endpoint_handler_get_id_string(v7);
                        v183 = nw_endpoint_handler_dry_run_string(v7);
                        v134 = nw_endpoint_handler_copy_endpoint(v7);
                        v135 = nw_endpoint_get_logging_description(v134);
                        v136 = nw_endpoint_handler_state_string(v7);
                        v137 = nw_endpoint_handler_mode_string(v7);
                        v138 = nw_endpoint_handler_copy_current_path(v7);
                        *buf = 136447746;
                        v241 = "nw_flow_connected";
                        v242 = 2082;
                        v243 = v194;
                        v244 = 2082;
                        v245 = v183;
                        v246 = 2082;
                        v247 = v135;
                        v248 = 2082;
                        v249 = v136;
                        v250 = 2082;
                        v251 = v137;
                        v252 = 2114;
                        v253 = v138;
                        _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Proxy protocol detected tracker to block", buf, 0x48u);
                      }
                    }

                    goto LABEL_161;
                  }

                  _Block_object_dispose(&v236, 8);
                }

                goto LABEL_115;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v120 = gconnectionLogObj;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
              {
                logi = v120;
                v121 = nw_endpoint_handler_get_id_string(v7);
                v193 = nw_endpoint_handler_dry_run_string(v7);
                v207 = nw_endpoint_handler_copy_endpoint(v7);
                v122 = v121;
                v123 = nw_endpoint_get_logging_description(v207);
                v124 = nw_endpoint_handler_state_string(v7);
                v125 = nw_endpoint_handler_mode_string(v7);
                v126 = nw_endpoint_handler_copy_current_path(v7);
                *buf = 136448002;
                v241 = "nw_flow_connected";
                v242 = 2082;
                v243 = v122;
                v244 = 2082;
                v245 = v193;
                v246 = 2082;
                v247 = v123;
                v248 = 2082;
                v249 = v124;
                v250 = 2082;
                v251 = v125;
                v252 = 2114;
                v253 = v126;
                v254 = 2082;
                v255 = __str;
                _os_log_impl(&dword_181A37000, logi, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Proxy protocol connected%{public}s", buf, 0x52u);

                v120 = logi;
              }
            }

            goto LABEL_145;
          }

          v66 = "Joined";
        }

        v229 = v7;
        if (a2)
        {
          v86 = a2->callbacks;
          if (v86)
          {
            v87 = v86->waiting_for_output;
            if (v87)
            {
              if (v87(a2, v3))
              {
                v88 = nw_endpoint_handler_get_minimize_logging(v7);
                v89 = nw_endpoint_handler_get_logging_disabled(v7);
                if (!v88)
                {
                  if (v89)
                  {
                    goto LABEL_8;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v39 = gconnectionLogObj;
                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_115;
                  }

                  v90 = nw_endpoint_handler_get_id_string(v7);
                  v203 = v39;
                  v181 = nw_endpoint_handler_dry_run_string(v7);
                  v191 = nw_endpoint_handler_copy_endpoint(v7);
                  v91 = v90;
                  logg = v66;
                  v92 = nw_endpoint_get_logging_description(v191);
                  v93 = nw_endpoint_handler_state_string(v7);
                  v94 = nw_endpoint_handler_mode_string(v7);
                  v95 = nw_endpoint_handler_copy_current_path(v7);
                  *buf = 136448258;
                  v241 = "nw_flow_connected";
                  v242 = 2082;
                  v243 = v91;
                  v244 = 2082;
                  v245 = v181;
                  v246 = 2082;
                  v247 = v92;
                  v248 = 2082;
                  v249 = v93;
                  v250 = 2082;
                  v251 = v94;
                  v252 = 2114;
                  v253 = v95;
                  v254 = 2082;
                  v255 = logg;
                  v256 = 2082;
                  v257 = __str;
                  _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s protocol%{public}s waiting for output, ignore", buf, 0x5Cu);

LABEL_114:
                  v39 = v203;
LABEL_115:

                  v7 = v229;
                  goto LABEL_8;
                }

                if (v89)
                {
                  goto LABEL_8;
                }

                logc = v66;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v152 = gconnectionLogObj;
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                {
                  v196 = nw_endpoint_handler_get_id_string(v7);
                  v185 = nw_endpoint_handler_dry_run_string(v7);
                  v210 = nw_endpoint_handler_copy_endpoint(v7);
                  v153 = nw_endpoint_get_logging_description(v210);
                  v154 = nw_endpoint_handler_state_string(v7);
                  v155 = nw_endpoint_handler_mode_string(v7);
                  v156 = nw_endpoint_handler_copy_current_path(v7);
                  *buf = 136448258;
                  v241 = "nw_flow_connected";
                  v242 = 2082;
                  v243 = v196;
                  v244 = 2082;
                  v245 = v185;
                  v246 = 2082;
                  v247 = v153;
                  v248 = 2082;
                  v249 = v154;
                  v250 = 2082;
                  v251 = v155;
                  v252 = 2114;
                  v253 = v156;
                  v254 = 2082;
                  v255 = logc;
                  v256 = 2082;
                  v257 = __str;
                  _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s protocol%{public}s waiting for output, ignore", buf, 0x5Cu);
                }

LABEL_192:
                v39 = v152;
                goto LABEL_115;
              }
            }
          }
        }

        v96 = nw_endpoint_handler_get_minimize_logging(v7);
        v97 = nw_endpoint_handler_get_logging_disabled(v7);
        if (v96)
        {
          if (v97)
          {
            goto LABEL_123;
          }

          logb = v66;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v98 = gconnectionLogObj;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            v195 = nw_endpoint_handler_get_id_string(v7);
            v184 = nw_endpoint_handler_dry_run_string(v7);
            v209 = nw_endpoint_handler_copy_endpoint(v7);
            v148 = nw_endpoint_get_logging_description(v209);
            v149 = nw_endpoint_handler_state_string(v7);
            v150 = nw_endpoint_handler_mode_string(v7);
            v151 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v241 = "nw_flow_connected";
            v242 = 2082;
            v243 = v195;
            v244 = 2082;
            v245 = v184;
            v246 = 2082;
            v247 = v148;
            v248 = 2082;
            v249 = v149;
            v250 = 2082;
            v251 = v150;
            v252 = 2114;
            v253 = v151;
            v254 = 2082;
            v255 = logb;
            v256 = 2082;
            v257 = __str;
            _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s protocol connected%{public}s", buf, 0x5Cu);
          }
        }

        else
        {
          if (v97)
          {
LABEL_123:
            v7->event = 327683;
            nw_endpoint_handler_report(v7, 0, &v7->event.domain, 0);
            goto LABEL_8;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v98 = gconnectionLogObj;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v206 = v98;
            v99 = nw_endpoint_handler_get_id_string(v7);
            v182 = nw_endpoint_handler_dry_run_string(v7);
            v192 = nw_endpoint_handler_copy_endpoint(v7);
            v100 = v99;
            logh = v66;
            v101 = nw_endpoint_get_logging_description(v192);
            v102 = nw_endpoint_handler_state_string(v7);
            v103 = nw_endpoint_handler_mode_string(v7);
            v104 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v241 = "nw_flow_connected";
            v242 = 2082;
            v243 = v100;
            v244 = 2082;
            v245 = v182;
            v246 = 2082;
            v247 = v101;
            v248 = 2082;
            v249 = v102;
            v250 = 2082;
            v251 = v103;
            v252 = 2114;
            v253 = v104;
            v254 = 2082;
            v255 = logh;
            v256 = 2082;
            v257 = __str;
            _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s protocol connected%{public}s", buf, 0x5Cu);

            v98 = v206;
          }
        }

        goto LABEL_123;
      }

      if (a2)
      {
        v55 = a2->callbacks;
        if (v55)
        {
          v56 = v55->waiting_for_output;
          if (v56)
          {
            if (v56(a2, v3))
            {
              v57 = nw_endpoint_handler_get_minimize_logging(v7);
              v58 = nw_endpoint_handler_get_logging_disabled(v7);
              if (v57)
              {
                if (v58)
                {
                  goto LABEL_72;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v161 = gconnectionLogObj;
                if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
                {
                  v212 = nw_endpoint_handler_get_id_string(v7);
                  v198 = nw_endpoint_handler_dry_run_string(v7);
                  logk = nw_endpoint_handler_copy_endpoint(v7);
                  v162 = nw_endpoint_get_logging_description(logk);
                  v163 = nw_endpoint_handler_state_string(v7);
                  v164 = nw_endpoint_handler_mode_string(v7);
                  v165 = nw_endpoint_handler_copy_current_path(v7);
                  *buf = 136447746;
                  v241 = "nw_flow_connected";
                  v242 = 2082;
                  v243 = v212;
                  v244 = 2082;
                  v245 = v198;
                  v246 = 2082;
                  v247 = v162;
                  v248 = 2082;
                  v249 = v163;
                  v250 = 2082;
                  v251 = v164;
                  v252 = 2114;
                  v253 = v165;
                  _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fast open started, need initial data", buf, 0x48u);
                }

                v59 = v161;
              }

              else
              {
                if (v58)
                {
LABEL_72:
                  *(handle + 166) |= 0x800u;
                  nw_endpoint_flow_add_initial_write_request(v7);
                  v7->event = 589827;
                  nw_endpoint_handler_report(v7, 0, &v7->event.domain, 0);
LABEL_89:
                  nw_endpoint_handler_service_writes(v7);
                  nw_endpoint_handler_service_reads(v7);
                  goto LABEL_8;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v59 = gconnectionLogObj;
                if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  v60 = nw_endpoint_handler_get_id_string(v7);
                  loge = v59;
                  v189 = nw_endpoint_handler_dry_run_string(v7);
                  v204 = nw_endpoint_handler_copy_endpoint(v7);
                  v61 = v60;
                  v62 = nw_endpoint_get_logging_description(v204);
                  v63 = nw_endpoint_handler_state_string(v7);
                  v64 = nw_endpoint_handler_mode_string(v7);
                  v65 = nw_endpoint_handler_copy_current_path(v7);
                  *buf = 136447746;
                  v241 = "nw_flow_connected";
                  v242 = 2082;
                  v243 = v61;
                  v244 = 2082;
                  v245 = v189;
                  v246 = 2082;
                  v247 = v62;
                  v248 = 2082;
                  v249 = v63;
                  v250 = 2082;
                  v251 = v64;
                  v252 = 2114;
                  v253 = v65;
                  _os_log_impl(&dword_181A37000, loge, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fast open started, need initial data", buf, 0x48u);

                  v59 = loge;
                }
              }

              goto LABEL_72;
            }
          }
        }
      }

      v69 = nw_endpoint_handler_get_minimize_logging(v7);
      v70 = nw_endpoint_handler_get_logging_disabled(v7);
      if (v69)
      {
        if (v70)
        {
          goto LABEL_88;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v71 = gconnectionLogObj;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v211 = nw_endpoint_handler_get_id_string(v7);
          v197 = nw_endpoint_handler_dry_run_string(v7);
          logj = nw_endpoint_handler_copy_endpoint(v7);
          v157 = nw_endpoint_get_logging_description(logj);
          v158 = nw_endpoint_handler_state_string(v7);
          v159 = nw_endpoint_handler_mode_string(v7);
          v160 = nw_endpoint_handler_copy_current_path(v7);
          *buf = 136448002;
          v241 = "nw_flow_connected";
          v242 = 2082;
          v243 = v211;
          v244 = 2082;
          v245 = v197;
          v246 = 2082;
          v247 = v157;
          v248 = 2082;
          v249 = v158;
          v250 = 2082;
          v251 = v159;
          v252 = 2114;
          v253 = v160;
          v254 = 2082;
          v255 = __str;
          _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol connected%{public}s", buf, 0x52u);
        }
      }

      else
      {
        if (v70)
        {
LABEL_88:
          *(handle + 166) &= ~0x800u;
          *(v230 + 251) = 0;
          nw_endpoint_flow_add_initial_write_request(v7);
          nw_endpoint_flow_connected(v7);
          goto LABEL_89;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v71 = gconnectionLogObj;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          logf = v71;
          v72 = nw_endpoint_handler_get_id_string(v7);
          v190 = nw_endpoint_handler_dry_run_string(v7);
          v205 = nw_endpoint_handler_copy_endpoint(v7);
          v73 = v72;
          v74 = nw_endpoint_get_logging_description(v205);
          v75 = nw_endpoint_handler_state_string(v7);
          v76 = nw_endpoint_handler_mode_string(v7);
          v77 = nw_endpoint_handler_copy_current_path(v7);
          *buf = 136448002;
          v241 = "nw_flow_connected";
          v242 = 2082;
          v243 = v73;
          v244 = 2082;
          v245 = v190;
          v246 = 2082;
          v247 = v74;
          v248 = 2082;
          v249 = v75;
          v250 = 2082;
          v251 = v76;
          v252 = 2114;
          v253 = v77;
          v254 = 2082;
          v255 = __str;
          _os_log_impl(&dword_181A37000, logf, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol connected%{public}s", buf, 0x52u);

          v71 = logf;
        }
      }

      goto LABEL_88;
    }

    v25 = v7;
    v26 = *(v25 + 284);

    if ((v26 & 0x40) != 0)
    {
LABEL_136:

      goto LABEL_137;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v27 = gconnectionLogObj;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_80:

      goto LABEL_136;
    }

    v28 = v25;

    v29 = v28;
    v30 = *(v25 + 284);

    if (v30)
    {
      v31 = "dry-run ";
    }

    else
    {
      v31 = "";
    }

    v32 = nw_endpoint_handler_copy_endpoint(v29);
    v33 = v32;
    if (v32)
    {
      v34 = _nw_endpoint_get_logging_description(v32);
    }

    else
    {
      v34 = "<NULL>";
    }

    id_str = v28->id_str;

    v47 = v29;
    v48 = v47;
    v49 = v47[30];
    if (v49 > 5)
    {
      v50 = "unknown-state";
    }

    else
    {
      v50 = off_1E6A31048[v49];
    }

    v51 = v48;
    v52 = v51;
    v53 = v7->mode;
    if (v53 > 2)
    {
      switch(v53)
      {
        case 3:
          v54 = "proxy";
          goto LABEL_79;
        case 4:
          v54 = "fallback";
          goto LABEL_79;
        case 5:
          v54 = "transform";
          goto LABEL_79;
      }
    }

    else
    {
      switch(v53)
      {
        case 0:
          v54 = "path";
          goto LABEL_79;
        case 1:
          v54 = "resolver";
          goto LABEL_79;
        case 2:
          v54 = nw_endpoint_flow_mode_string(v51[33]);
LABEL_79:

          v67 = v52;
          os_unfair_lock_lock(v67 + 28);
          v68 = v67[8];
          os_unfair_lock_unlock(v67 + 28);

          *buf = 136447746;
          v241 = "nw_flow_connected";
          v242 = 2082;
          v243 = id_str;
          v244 = 2082;
          v245 = v31;
          v246 = 2082;
          v247 = v34;
          v248 = 2082;
          v249 = v50;
          v250 = 2082;
          v251 = v54;
          v252 = 2114;
          v253 = v68;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Flow was disconnected, skipping connected", buf, 0x48u);

          goto LABEL_80;
      }
    }

    v54 = "unknown-mode";
    goto LABEL_79;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v24 = "unknown-mode";
    }

    else
    {
      v24 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v241 = "nw_flow_connected";
    v242 = 2082;
    v243 = v24;
    v244 = 2082;
    v245 = "flow";
    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_137:
}

void sub_181C06A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

nw_parameters_t nw_connection_copy_parameters(nw_connection_t connection)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_copy_parameters";
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
        v16 = "nw_connection_copy_parameters";
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
          v16 = "nw_connection_copy_parameters";
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
        v16 = "nw_connection_copy_parameters";
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
        v16 = "nw_connection_copy_parameters";
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

uint64_t nw_protocol_waiting_for_output(void *a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
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
LABEL_12:
          __nwlog_obj();
          *buf = 136446210;
          v53 = "__nw_protocol_waiting_for_output";
          v12 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v50 = 0;
          if (__nwlog_fault(v12, &type, &v50))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v13 = __nwlog_obj();
              v14 = type;
              if (os_log_type_enabled(v13, type))
              {
                *buf = 136446210;
                v53 = "__nw_protocol_waiting_for_output";
                v15 = "%{public}s called with null other_protocol";
LABEL_103:
                _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
              }
            }

            else if (v50 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v13 = __nwlog_obj();
              v14 = type;
              v47 = os_log_type_enabled(v13, type);
              if (backtrace_string)
              {
                if (v47)
                {
                  *buf = 136446466;
                  v53 = "__nw_protocol_waiting_for_output";
                  v54 = 2082;
                  v55 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_104;
              }

              if (v47)
              {
                *buf = 136446210;
                v53 = "__nw_protocol_waiting_for_output";
                v15 = "%{public}s called with null other_protocol, no backtrace";
                goto LABEL_103;
              }
            }

            else
            {
              v13 = __nwlog_obj();
              v14 = type;
              if (os_log_type_enabled(v13, type))
              {
                *buf = 136446210;
                v53 = "__nw_protocol_waiting_for_output";
                v15 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                goto LABEL_103;
              }
            }
          }

LABEL_104:
          if (v12)
          {
            free(v12);
          }

          result = 0;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v16 = *(v8 + 88);
      if (v16)
      {
        v9 = 0;
        *(v8 + 88) = v16 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_49;
      }
    }

    v17 = *(v10 + 216);
    if (v17)
    {
      result = v17(a1, a2);
      if (v9)
      {
LABEL_36:
        if ((v6 & 1) == 0)
        {
          v25 = v3[5];
          if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
          {
            v26 = v3[11];
            if (v26)
            {
              v27 = v26 - 1;
              v3[11] = v27;
              if (!v27)
              {
                v28 = result;
                v29 = v3[8];
                if (v29)
                {
                  v3[8] = 0;
                  v29[2](v29);
                  _Block_release(v29);
                }

                if (v3[9])
                {
                  v30 = v3[8];
                  if (v30)
                  {
                    _Block_release(v30);
                  }
                }

                free(v3);
                return v28;
              }
            }
          }
        }

        return result;
      }

LABEL_25:
      v19 = *(v2 + 40);
      if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
      {
        v20 = *(v2 + 88);
        if (v20)
        {
          v21 = v20 - 1;
          *(v2 + 88) = v21;
          if (!v21)
          {
            v22 = result;
            v23 = *(v2 + 64);
            if (v23)
            {
              *(v2 + 64) = 0;
              v23[2](v23);
              _Block_release(v23);
            }

            if (*(v2 + 72))
            {
              v24 = *(v2 + 64);
              if (v24)
              {
                _Block_release(v24);
              }
            }

            free(v2);
            result = v22;
          }
        }
      }

      goto LABEL_36;
    }

LABEL_49:
    __nwlog_obj();
    v31 = v3[2];
    *buf = 136446722;
    v53 = "__nw_protocol_waiting_for_output";
    if (!v31)
    {
      v31 = "invalid";
    }

    v54 = 2082;
    v55 = v31;
    v56 = 2048;
    v57 = v3;
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v32, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_91;
        }

        v35 = v3[2];
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v53 = "__nw_protocol_waiting_for_output";
        v54 = 2082;
        v55 = v35;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback";
LABEL_90:
        _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x20u);
        goto LABEL_91;
      }

      if (v50 != 1)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_91;
        }

        v48 = v3[2];
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446722;
        v53 = "__nw_protocol_waiting_for_output";
        v54 = 2082;
        v55 = v48;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, backtrace limit exceeded";
        goto LABEL_90;
      }

      v41 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v42 = os_log_type_enabled(v33, type);
      if (!v41)
      {
        if (!v42)
        {
          goto LABEL_91;
        }

        v49 = v3[2];
        if (!v49)
        {
          v49 = "invalid";
        }

        *buf = 136446722;
        v53 = "__nw_protocol_waiting_for_output";
        v54 = 2082;
        v55 = v49;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, no backtrace";
        goto LABEL_90;
      }

      if (v42)
      {
        v43 = v3[2];
        if (!v43)
        {
          v43 = "invalid";
        }

        *buf = 136446978;
        v53 = "__nw_protocol_waiting_for_output";
        v54 = 2082;
        v55 = v43;
        v56 = 2048;
        v57 = v3;
        v58 = 2082;
        v59 = v41;
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v41);
    }

LABEL_91:
    if (v32)
    {
      free(v32);
    }

    result = 0;
    if (v9)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v53 = "__nw_protocol_waiting_for_output";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (__nwlog_fault(v37, &type, &v50))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v53 = "__nw_protocol_waiting_for_output";
        v40 = "%{public}s called with null protocol";
LABEL_97:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v50 == 1)
    {
      v44 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v45 = os_log_type_enabled(v38, type);
      if (v44)
      {
        if (v45)
        {
          *buf = 136446466;
          v53 = "__nw_protocol_waiting_for_output";
          v54 = 2082;
          v55 = v44;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v44);
        goto LABEL_98;
      }

      if (v45)
      {
        *buf = 136446210;
        v53 = "__nw_protocol_waiting_for_output";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_97;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v53 = "__nw_protocol_waiting_for_output";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_97;
      }
    }
  }

LABEL_98:
  if (v37)
  {
    free(v37);
  }

  return 0;
}

char *nw_endpoint_copy_original_endpoint(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _nw_endpoint_copy_original_endpoint(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_copy_original_endpoint";
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
        v18 = "nw_endpoint_copy_original_endpoint";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
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
          v18 = "nw_endpoint_copy_original_endpoint";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_copy_original_endpoint";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_copy_original_endpoint";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_3:

  return v5;
}

_OWORD *sub_181C0799C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v45 - v7;
  v8 = sub_182AD2738();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - v12;
  v1[3] = xmmword_182AE8E90;
  v13 = *(v9 + 56);
  v50 = v9 + 56;
  v51 = qword_1ED411A90;
  v49 = v13;
  v13(v1 + qword_1ED411A90, 1, 1, v8);
  v59 = qword_1ED411A88;
  *(v1 + qword_1ED411A88) = 0;
  v14 = v1 + *(*v1 + 128);
  v14[4] = 0;
  *v14 = 3;
  v15 = *(*v1 + 136);
  *(v1 + v15) = 0;
  v16 = *(*v1 + 144);
  *(v2 + v16) = 0;
  v17 = v2 + *(*v2 + 152);
  *v17 = 0;
  v17[8] = 1;
  v18 = v2 + *(*v2 + 160);
  *v18 = 0;
  v18[8] = 1;
  v19 = (v2 + *(*v2 + 168));
  *v19 = 0;
  v19[1] = 0;
  v57 = *(*v2 + 176);
  *(v2 + v57) = 0;
  v58 = *(*v2 + 184);
  *(v2 + v58) = 0;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  *(v2 + 8) = *(a1 + 16);
  v54 = v21;
  v55 = v20;
  *(v2 + 3) = v20;
  *(v2 + 4) = v21;
  v53 = v22;
  *(v2 + 40) = v22;
  v23 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 4);
  swift_beginAccess();
  v14[4] = v23;
  *v14 = v24;
  v25 = *(*a1 + 136);
  swift_beginAccess();
  v26 = *(a1 + v25);
  swift_beginAccess();
  *(v2 + v15) = v26;
  v27 = *(*a1 + 144);
  swift_beginAccess();
  v28 = *(a1 + v27);
  swift_beginAccess();
  *(v2 + v16) = v28;
  v29 = qword_1ED411A90;
  swift_beginAccess();
  v30 = a1 + v29;
  v31 = v56;
  sub_181AB5D28(v30, v56, &qword_1EA838E00);
  v32 = v9;
  if ((*(v9 + 48))(v31, 1, v8) == 1)
  {
    sub_181F49A24(v55, v54, v53);

    v33 = v26;
    sub_181F49A88(v31, &qword_1EA838E00);
  }

  else
  {
    v34 = *(v9 + 32);
    v46 = v26;
    v35 = v48;
    v34(v48, v31, v8);
    sub_181F49A24(v55, v54, v53);

    v36 = v46;
    v37 = v47;
    sub_182AD2728();
    sub_182AD2718();
    (*(v32 + 8))(v35, v8);
    v38 = v52;
    v34(v52, v37, v8);
    v49(v38, 0, 1, v8);
    v39 = v51;
    swift_beginAccess();
    sub_181B2D2D8(v38, v2 + v39);
    swift_endAccess();
  }

  *(v2 + v59) = *(a1 + qword_1ED411A88);
  v40 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v57;
  swift_beginAccess();
  *(v2 + v41) = v40;
  v42 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v58;
  swift_beginAccess();
  *(v2 + v43) = v42;
  return v2;
}

void nw_path_flow_registration_set_ecn_cache(void *a1, void *a2, uint64_t a3)
{
  *&v47[13] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_flow_registration_set_ecn_cache";
    v14 = _os_log_send_and_compose_impl();

    v41[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, v41, &type))
    {
      goto LABEL_27;
    }

    if (v41[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = v41[0];
      if (os_log_type_enabled(v24, v41[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v24 = __nwlog_obj();
      v37 = v41[0];
      if (os_log_type_enabled(v24, v41[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v37, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v31 = v41[0];
    v32 = os_log_type_enabled(v24, v41[0]);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v32)
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 2082;
      *v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_59;
  }

  if (!v6)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_flow_registration_set_ecn_cache";
    v14 = _os_log_send_and_compose_impl();

    v41[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, v41, &type))
    {
      goto LABEL_27;
    }

    if (v41[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v27 = v41[0];
      if (os_log_type_enabled(v24, v41[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null flow_registration", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v24 = __nwlog_obj();
      v38 = v41[0];
      if (os_log_type_enabled(v24, v41[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v38, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v33 = v41[0];
    v34 = os_log_type_enabled(v24, v41[0]);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v34)
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 2082;
      *v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_59;
  }

  if (!a3)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_flow_registration_set_ecn_cache";
    v14 = _os_log_send_and_compose_impl();

    v41[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, v41, &type))
    {
      goto LABEL_27;
    }

    if (v41[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v29 = v41[0];
      if (os_log_type_enabled(v24, v41[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null ecn_cache_buffer", buf, 0xCu);
      }

LABEL_78:

LABEL_27:
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_28:
      free(v14);
      goto LABEL_29;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v24 = __nwlog_obj();
      v39 = v41[0];
      if (os_log_type_enabled(v24, v41[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v39, "%{public}s called with null ecn_cache_buffer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v35 = v41[0];
    v36 = os_log_type_enabled(v24, v41[0]);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_set_ecn_cache";
        _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null ecn_cache_buffer, no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v36)
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 2082;
      *v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null ecn_cache_buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_59:

    free(backtrace_string);
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  *v41 = 0;
  v8 = _nw_path_copy_parameters(v5);
  v9 = nw_parameters_copy_context(v8);
  v10 = nw_path_shared_necp_fd(v9);

  if (v10 < 0)
  {
    goto LABEL_29;
  }

  *v41 = 257;
  v42 = a3;
  *&v41[4] = 1;
  if (!necp_client_action())
  {
    goto LABEL_29;
  }

  v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v13 = v12;
  if (v11 == 2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 1024;
      *v47 = 2;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s necp update cache failed for ecn %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_29;
  }

  *buf = 136446466;
  v45 = "nw_path_flow_registration_set_ecn_cache";
  v46 = 1024;
  *v47 = v11;
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (!__nwlog_fault(v14, &type, &v40))
  {
    goto LABEL_27;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 1024;
      *v47 = v11;
      _os_log_impl(&dword_181A37000, v15, v16, "%{public}s necp update cache failed for ecn %{darwin.errno}d", buf, 0x12u);
    }

LABEL_26:

    goto LABEL_27;
  }

  if (v40 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v21 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 1024;
      *v47 = v11;
      _os_log_impl(&dword_181A37000, v15, v21, "%{public}s necp update cache failed for ecn %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
    }

    goto LABEL_26;
  }

  v17 = __nw_create_backtrace_string();
  if (!v17)
  {
    v15 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446466;
      v45 = "nw_path_flow_registration_set_ecn_cache";
      v46 = 1024;
      *v47 = v11;
      _os_log_impl(&dword_181A37000, v15, v22, "%{public}s necp update cache failed for ecn %{darwin.errno}d, no backtrace", buf, 0x12u);
    }

    goto LABEL_26;
  }

  v18 = v17;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v20 = type;
  if (os_log_type_enabled(v19, type))
  {
    *buf = 136446722;
    v45 = "nw_path_flow_registration_set_ecn_cache";
    v46 = 1024;
    *v47 = v11;
    v47[2] = 2082;
    *&v47[3] = v18;
    _os_log_impl(&dword_181A37000, v19, v20, "%{public}s necp update cache failed for ecn %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
  }

  free(v18);
  if (v14)
  {
    goto LABEL_28;
  }

LABEL_29:
}

void nw_protocol_connected_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 40);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

uint64_t nw_settings_get_pqtls_enabled()
{
  v0 = nw_setting_disable_pqtls;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 1;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 1;
  if (!v0)
  {
    goto LABEL_8;
  }

  if (Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (!value)
  {
    goto LABEL_8;
  }

  v5 = value;
  if (object_getClass(value) == MEMORY[0x1E69E9E58])
  {
    v3 = !xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_7:
    v3 = 1;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v3;
}

BOOL nw_path_get_ipv6_network_signature(void *a1, uint64_t a2, _BYTE *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_path_get_ipv6_network_signature";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
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
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      v30 = "nw_path_get_ipv6_network_signature";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_path_get_ipv6_network_signature";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null signature", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null signature, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null signature, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      v30 = "nw_path_get_ipv6_network_signature";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null signature, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_path_get_ipv6_network_signature";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null signature_len", buf, 0xCu);
      }

LABEL_53:

LABEL_54:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_56;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null signature_len, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v30 = "nw_path_get_ipv6_network_signature";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null signature_len, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v22)
    {
      *buf = 136446466;
      v30 = "nw_path_get_ipv6_network_signature";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null signature_len, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    goto LABEL_54;
  }

  if ((_nw_path_network_is_satisfied(v5) & 1) == 0)
  {
LABEL_56:
    ipv6_network_signature = 0;
    goto LABEL_57;
  }

  ipv6_network_signature = _nw_path_get_ipv6_network_signature(v6, a2, a3);
LABEL_57:

  return ipv6_network_signature;
}

BOOL _nw_path_get_ipv6_network_signature(char *a1, uint64_t a2, _BYTE *a3)
{
  if (a1)
  {
    v5 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v6 = a1;
    swift_beginAccess();
    v7 = *(v5 + 1);
    v8 = v7 && (*(v7 + 183) & 1) == 0 && sub_181CA5B7C(a2, a3, *(v7 + 162), *(v7 + 170), *(v7 + 178) | (*(v7 + 182) << 32));
    swift_endAccess();
  }

  else
  {
    return 0;
  }

  return v8;
}

void nw_parameters_set_effective_bundle_id(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_effective_bundle_id(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_effective_bundle_id";
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
        v12 = "nw_parameters_set_effective_bundle_id";
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
            v12 = "nw_parameters_set_effective_bundle_id";
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
        v12 = "nw_parameters_set_effective_bundle_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_effective_bundle_id";
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

void nw_parameters_set_source_application(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = *(a2 + 16);
    buffer[0] = *a2;
    buffer[1] = v5;
    _nw_parameters_set_effective_audit_token(v3, buffer);
    v6 = *(a2 + 20);
    _nw_parameters_set_pid(v4, v6);
    _nw_parameters_set_uid(v4, *(a2 + 4));
    v21 = 0;
    memset(buffer, 0, sizeof(buffer));
    if (proc_pidinfo(v6, 17, 1uLL, buffer, 56) == 56)
    {
      _nw_parameters_set_pid_to_uuid_mapping_failed(v4, 0);
      _nw_parameters_set_e_proc_uuid(v4, buffer);
    }

    else
    {
      _nw_parameters_set_pid_to_uuid_mapping_failed(v4, 1);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v17 = "nw_parameters_set_source_application";
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Failed to convert from PID (%d) to UUID. This could lead to incorrect policies and accounting.", buf, 0x12u);
      }
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  LODWORD(buffer[0]) = 136446210;
  *(buffer + 4) = "nw_parameters_set_source_application";
  v9 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v15 = 0;
  if (__nwlog_fault(v9, buf, &v15))
  {
    if (buf[0] == 17)
    {
      v10 = __nwlog_obj();
      v11 = buf[0];
      if (os_log_type_enabled(v10, buf[0]))
      {
        LODWORD(buffer[0]) = 136446210;
        *(buffer + 4) = "nw_parameters_set_source_application";
        v12 = "%{public}s called with null parameters";
LABEL_21:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buffer, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = buf[0];
        v14 = os_log_type_enabled(v10, buf[0]);
        if (backtrace_string)
        {
          if (v14)
          {
            LODWORD(buffer[0]) = 136446466;
            *(buffer + 4) = "nw_parameters_set_source_application";
            WORD6(buffer[0]) = 2082;
            *(buffer + 14) = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buffer, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v14)
        {
          goto LABEL_22;
        }

        LODWORD(buffer[0]) = 136446210;
        *(buffer + 4) = "nw_parameters_set_source_application";
        v12 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_21;
      }

      v10 = __nwlog_obj();
      v11 = buf[0];
      if (os_log_type_enabled(v10, buf[0]))
      {
        LODWORD(buffer[0]) = 136446210;
        *(buffer + 4) = "nw_parameters_set_source_application";
        v12 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

LABEL_7:
}

uint64_t sub_181C09A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 16);

    v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
    v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v5 + v7));
    sub_181C09C40(v5 + v6, &v16);
    os_unfair_lock_unlock((v5 + v7));
    v8 = v16;

    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v12 = *(v1 + 16);
        v10 = v1 + 16;
        v11 = v12;
        v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
        v14 = *(v10 + 56);
        do
        {
          v11(v3, v13, v0);
          sub_182AD3598();
          (*(v10 - 8))(v3, v0);
          v13 += v14;
          --v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

uint64_t sub_181C09C40@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
  v67 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v55 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  *(a1 + locked[10]) = 1;
  v15 = locked[11];

  *(a1 + v15) = 0;
  if (nw_utilities_minos_atleast(1))
  {
    v16 = (a1 + locked[5]);
    sub_181A554F4(*v16);
    *v16 = 0;
    v16[1] = 0;
  }

  v17 = *(a1 + locked[8]);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v63 = (v67 + 16);
  v66 = (v67 + 32);
  v57 = v67 + 8;
  v59 = v17;

  v68 = 0;
  v24 = 0;
  v56 = xmmword_182AE9730;
  v64 = v13;
  v60 = v18;
  while (v21)
  {
    v28 = v24;
LABEL_18:
    v31 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v58;
    v34 = *(*(v59 + 48) + 8 * v32);
    v35 = v67;
    (*(v67 + 16))(v58, *(v59 + 56) + *(v67 + 72) * v32, v3);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F68);
    v37 = *(v36 + 48);
    v38 = v61;
    *v61 = v34;
    v39 = v38;
    v40 = v33;
    v41 = v66;
    (*(v35 + 32))(&v38[v37], v40, v3);
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);
    v13 = v64;
LABEL_19:
    sub_181B7D08C(v39, v13, &qword_1EA839F60);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F68);
    if ((*(*(v42 - 8) + 48))(v13, 1, v42) == 1)
    {

      *v55 = v68;
      return result;
    }

    v43 = *v41;
    v44 = &v13[*(v42 + 48)];
    v45 = v65;
    (*v41)(v65, v44, v3);
    v46 = v68;
    if (v68)
    {
      v47 = v3;
      (*v63)(v62, v45, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_181F5A7D4(0, v46[2] + 1, 1, v46);
      }

      v49 = v46[2];
      v48 = v46[3];
      if (v49 >= v48 >> 1)
      {
        v68 = sub_181F5A7D4(v48 > 1, v49 + 1, 1, v46);
      }

      else
      {
        v68 = v46;
      }

      v50 = v67;
      (*(v67 + 8))(v65, v47);
      v51 = v68;
      *(v68 + 16) = v49 + 1;
      v52 = v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49;
      v3 = v47;
      result = v43(v52, v62, v47);
      v13 = v64;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F70);
      v25 = v45;
      v26 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v56;
      v68 = v27;
      result = v43((v27 + v26), v25, v3);
    }

    v18 = v60;
  }

  if (v22 <= v24 + 1)
  {
    v29 = v24 + 1;
  }

  else
  {
    v29 = v22;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F68);
      v54 = v61;
      (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
      v21 = 0;
      v24 = v30;
      v39 = v54;
      v41 = v66;
      goto LABEL_19;
    }

    v21 = *(v18 + 8 * v28);
    ++v24;
    if (v21)
    {
      v24 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t NWPathMonitor.__deallocating_deinit()
{
  nw_path_monitor_cancel(*(v0 + 24));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t nw_utilities_minos_atleast(int a1)
{
  if (a1 == 1)
  {
    return MEMORY[0x1EEE706D8](0x7E60901FFFFFFFFLL);
  }

  else
  {
    return MEMORY[0x1EEE706D8](0);
  }
}

uint64_t nw_parameters_get_effective_audit_token(void *a1, uint64x2_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      effective_audit_token = _nw_parameters_get_effective_audit_token(v3, a2);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_get_effective_audit_token";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_get_effective_audit_token";
          v11 = "%{public}s called with null audit_token_dst";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_get_effective_audit_token";
          v11 = "%{public}s called with null audit_token_dst, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v20 = "nw_parameters_get_effective_audit_token";
          v11 = "%{public}s called with null audit_token_dst, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v16)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_get_effective_audit_token";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null audit_token_dst, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_get_effective_audit_token";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_get_effective_audit_token";
          v11 = "%{public}s called with null parameters";
LABEL_31:
          _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_get_effective_audit_token";
          v11 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_parameters_get_effective_audit_token";
          v11 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_get_effective_audit_token";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v8)
  {
    free(v8);
  }

  effective_audit_token = 0;
LABEL_4:

  return effective_audit_token;
}

Swift::Void __swiftcall NWPathMonitor.cancel()()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  *(v2 + *(type metadata accessor for NWPathMonitor.LockedState(0) + 40)) = 1;
  os_unfair_lock_unlock((v1 + v3));
  v4 = *(v0 + 24);

  nw_path_monitor_cancel(v4);
}

void nw_path_monitor_cancel(nw_path_monitor_t monitor)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = monitor;
  v2 = v1;
  if (v1)
  {
    nw_path_evaluator_cancel(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_monitor_cancel";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_cancel";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null monitor", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_path_monitor_cancel";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_cancel";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_cancel";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

BOOL nw_frame_set_external_data(uint64_t a1, dispatch_data_t data, unsigned int *a3)
{
  *&v30[13] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 204) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446210;
        v28 = "__nw_frame_set_external_data";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s Frame does not use external data", buf, 0xCu);
        return 0;
      }

      return result;
    }

    v8 = *(a1 + 96);
    if (v8)
    {
      os_release(v8);
      *(a1 + 96) = 0;
    }

    *(a1 + 56) = 0;
    if (!data || ((v9 = *(a1 + 48) - *(a1 + 60), size = dispatch_data_get_size(data), v9 >= size) ? (v11 = size) : (v11 = v9), !v11))
    {
      *(a1 + 52) = 0;
      *(a1 + 196) = 0;
      return 1;
    }

    dispatch_retain(data);
    *(a1 + 96) = data;
    *(a1 + 52) = *(a1 + 60) + v11;
    if ((*(a1 + 204) & 0x80) == 0)
    {
LABEL_34:
      if (a3)
      {
        *a3 = v11;
      }

      return 1;
    }

    if (!HIWORD(v11))
    {
      v12 = v11;
LABEL_33:
      *(a1 + 196) = v12;
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v28 = "__nw_frame_set_external_data";
    v29 = 1024;
    *v30 = v11;
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v13, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446466;
          v28 = "__nw_frame_set_external_data";
          v29 = 1024;
          *v30 = v11;
          v16 = "%{public}s Frame-length is too big for aggregate_buffer_length: %u";
LABEL_29:
          _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x12u);
        }
      }

      else if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446722;
            v28 = "__nw_frame_set_external_data";
            v29 = 1024;
            *v30 = v11;
            v30[2] = 2082;
            *&v30[3] = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Frame-length is too big for aggregate_buffer_length: %u, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v18)
        {
          *buf = 136446466;
          v28 = "__nw_frame_set_external_data";
          v29 = 1024;
          *v30 = v11;
          v16 = "%{public}s Frame-length is too big for aggregate_buffer_length: %u, no backtrace";
          goto LABEL_29;
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v28 = "__nw_frame_set_external_data";
          v29 = 1024;
          *v30 = v11;
          v16 = "%{public}s Frame-length is too big for aggregate_buffer_length: %u, backtrace limit exceeded";
          goto LABEL_29;
        }
      }
    }

LABEL_30:
    if (v13)
    {
      free(v13);
    }

    v12 = -1;
    goto LABEL_33;
  }

  __nwlog_obj();
  *buf = 136446210;
  v28 = "__nw_frame_set_external_data";
  v19 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v19, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v28 = "__nw_frame_set_external_data";
        v22 = "%{public}s called with null frame";
LABEL_51:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v24 = os_log_type_enabled(v20, type);
      if (v23)
      {
        if (v24)
        {
          *buf = 136446466;
          v28 = "__nw_frame_set_external_data";
          v29 = 2082;
          *v30 = v23;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_52;
      }

      if (v24)
      {
        *buf = 136446210;
        v28 = "__nw_frame_set_external_data";
        v22 = "%{public}s called with null frame, no backtrace";
        goto LABEL_51;
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v28 = "__nw_frame_set_external_data";
        v22 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  if (v19)
  {
    free(v19);
  }

  return 0;
}

void nw_establishment_report_enumerate_resolution_reports(nw_establishment_report_t report, nw_report_resolution_report_enumerator_t enumerate_block)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = enumerate_block;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_resolution_reports";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_resolution_reports";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_resolution_reports";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_resolution_reports";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_resolution_reports";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    isa = v3[9].isa;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_resolution_reports_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (isa)
    {
      _nw_array_apply(isa, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_resolution_reports";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_resolution_reports";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_resolution_reports";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_resolution_reports";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_resolution_reports";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_protocol_copy_info(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    v3 = a1;
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a1[8]) != 0)
    {
      v6 = v3[11];
      if (v6)
      {
        v4 = 0;
        v3[11] = v6 + 1;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v4 = 1;
      v5 = a1[3];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    v7 = *(v5 + 224);
    if (v7)
    {
      result = v7(a1);
      if (v4)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_25:
    __nwlog_obj();
    v15 = v1[2];
    *buf = 136446722;
    v35 = "__nw_protocol_copy_info";
    if (!v15)
    {
      v15 = "invalid";
    }

    v36 = 2082;
    v37 = v15;
    v38 = 2048;
    v39 = v1;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v16, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v19 = v1[2];
        if (!v19)
        {
          v19 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_copy_info";
        v36 = 2082;
        v37 = v19;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback";
LABEL_59:
        _os_log_impl(&dword_181A37000, v17, v18, v20, buf, 0x20u);
        goto LABEL_60;
      }

      if (v32 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v30 = v1[2];
        if (!v30)
        {
          v30 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_copy_info";
        v36 = 2082;
        v37 = v30;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v26 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (!v26)
        {
          goto LABEL_60;
        }

        v31 = v1[2];
        if (!v31)
        {
          v31 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_copy_info";
        v36 = 2082;
        v37 = v31;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, no backtrace";
        goto LABEL_59;
      }

      if (v26)
      {
        v27 = v1[2];
        if (!v27)
        {
          v27 = "invalid";
        }

        *buf = 136446978;
        v35 = "__nw_protocol_copy_info";
        v36 = 2082;
        v37 = v27;
        v38 = 2048;
        v39 = v1;
        v40 = 2082;
        v41 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_60:
    if (v16)
    {
      free(v16);
    }

    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_13:
    v9 = v1[5];
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v10 = v1[11];
      if (v10)
      {
        v11 = v10 - 1;
        v1[11] = v11;
        if (!v11)
        {
          v12 = result;
          v13 = v1[8];
          if (v13)
          {
            v1[8] = 0;
            v13[2](v13);
            _Block_release(v13);
          }

          if (v1[9])
          {
            v14 = v1[8];
            if (v14)
            {
              _Block_release(v14);
            }
          }

          free(v1);
          return v12;
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v35 = "__nw_protocol_copy_info";
  v21 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v21, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_copy_info";
        v24 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v29 = os_log_type_enabled(v22, type);
      if (v28)
      {
        if (v29)
        {
          *buf = 136446466;
          v35 = "__nw_protocol_copy_info";
          v36 = 2082;
          v37 = v28;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_67;
      }

      if (v29)
      {
        *buf = 136446210;
        v35 = "__nw_protocol_copy_info";
        v24 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_copy_info";
        v24 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v21)
  {
    free(v21);
  }

  return 0;
}

void nw_establishment_report_enumerate_protocols(nw_establishment_report_t report, nw_report_protocol_enumerator_t enumerate_block)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = enumerate_block;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_protocols";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocols";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_protocols";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocols";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocols";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    isa = v3[8].isa;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_protocols_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (isa)
    {
      _nw_array_apply(isa, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_protocols";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocols";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocols";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocols";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_protocols";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void *nw_protocol_copy_info_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 224)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

nw_protocol_definition_t nw_protocol_metadata_copy_definition(nw_protocol_metadata_t metadata)
{
  v15 = *MEMORY[0x1E69E9840];
  if (metadata)
  {

    return _nw_protocol_metadata_copy_definition(metadata);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_copy_definition";
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
        v12 = "nw_protocol_metadata_copy_definition";
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
            v12 = "nw_protocol_metadata_copy_definition";
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
        v12 = "nw_protocol_metadata_copy_definition";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_copy_definition";
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

void nw_connection_modify_estimated_bytes(void *a1, char a2, char a3, uint64_t a4)
{
  v7 = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __nw_connection_modify_estimated_bytes_block_invoke;
  v9[3] = &unk_1E6A3D8E0;
  v12 = a2;
  v8 = v7;
  v13 = a3;
  v10 = v8;
  v11 = a4;
  nw_connection_async_if_needed(v8, v9);
}

void __nw_connection_modify_estimated_bytes_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 48) != 1)
  {
    v4 = *(v2 + 304);
    if (*(a1 + 49))
    {
      *(v2 + 304) = v4 + v3;
      if (!__CFADD__(v4, v3))
      {
        goto LABEL_22;
      }

      if (gLogDatapath != 1)
      {
        v5 = -1;
LABEL_19:
        v6 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_upload;
        goto LABEL_20;
      }

      v38 = __nwlog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 40);
        v42 = *(*(a1 + 32) + 304);
        v47 = 136446978;
        v48 = "nw_connection_modify_estimated_bytes_block_invoke";
        v49 = 2082;
        *v50 = "connection->estimated_bytes_upload";
        *&v50[8] = 2048;
        *&v50[10] = v41;
        *&v50[18] = 2048;
        *&v50[20] = v42;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v47, 0x2Au);
      }

      v5 = -1;
    }

    else
    {
      *(v2 + 304) = v4 - v3;
      if (v4 >= v3)
      {
LABEL_22:
        v6 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_upload;
        goto LABEL_23;
      }

      if (gLogDatapath != 1)
      {
        v5 = 0;
        goto LABEL_19;
      }

      v38 = __nwlog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(a1 + 40);
        v46 = *(*(a1 + 32) + 304);
        v47 = 136446978;
        v48 = "nw_connection_modify_estimated_bytes_block_invoke";
        v49 = 2082;
        *v50 = "connection->estimated_bytes_upload";
        *&v50[8] = 2048;
        *&v50[10] = v45;
        *&v50[18] = 2048;
        *&v50[20] = v46;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &v47, 0x2Au);
      }

      v5 = 0;
    }

    v6 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_upload;
    goto LABEL_87;
  }

  v4 = *(v2 + 296);
  if (!*(a1 + 49))
  {
    *(v2 + 296) = v4 - v3;
    if (v4 >= v3)
    {
LABEL_21:
      v6 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_download;
      goto LABEL_23;
    }

    if (gLogDatapath != 1)
    {
      v5 = 0;
      goto LABEL_15;
    }

    v38 = __nwlog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a1 + 40);
      v44 = *(*(a1 + 32) + 296);
      v47 = 136446978;
      v48 = "nw_connection_modify_estimated_bytes_block_invoke";
      v49 = 2082;
      *v50 = "connection->estimated_bytes_download";
      *&v50[8] = 2048;
      *&v50[10] = v43;
      *&v50[18] = 2048;
      *&v50[20] = v44;
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &v47, 0x2Au);
    }

    v5 = 0;
    goto LABEL_82;
  }

  *(v2 + 296) = v4 + v3;
  if (!__CFADD__(v4, v3))
  {
    goto LABEL_21;
  }

  if (gLogDatapath == 1)
  {
    v38 = __nwlog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(a1 + 40);
      v40 = *(*(a1 + 32) + 296);
      v47 = 136446978;
      v48 = "nw_connection_modify_estimated_bytes_block_invoke";
      v49 = 2082;
      *v50 = "connection->estimated_bytes_download";
      *&v50[8] = 2048;
      *&v50[10] = v39;
      *&v50[18] = 2048;
      *&v50[20] = v40;
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v47, 0x2Au);
    }

    v5 = -1;
LABEL_82:
    v6 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_download;
LABEL_87:

    goto LABEL_20;
  }

  v5 = -1;
LABEL_15:
  v6 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_download;
LABEL_20:
  *(*(a1 + 32) + *v6) = v5;
LABEL_23:
  v7 = *(a1 + 32);
  v8 = *(v7 + *v6);
  v9 = *(v7 + 16);
  if (v9 && !_nw_parameters_get_logging_disabled(v9))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(v11 + 448);
      if (*(a1 + 49))
      {
        v14 = "Incremented";
      }

      else
      {
        v14 = "Decremented";
      }

      v15 = *(a1 + 48) == 0;
      v16 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_upload;
      if (*(a1 + 48))
      {
        v16 = &OBJC_IVAR___NWConcrete_nw_connection_estimated_bytes_download;
      }

      v17 = *(v11 + *v16);
      v18 = "send";
      v47 = 136447490;
      v48 = "nw_connection_modify_estimated_bytes_block_invoke";
      v49 = 1024;
      if (!v15)
      {
        v18 = "receive";
      }

      *v50 = v13;
      *&v50[4] = 2080;
      *&v50[6] = v14;
      *&v50[14] = 2080;
      *&v50[16] = v18;
      *&v50[24] = 2048;
      *&v50[26] = v12;
      v51 = 2048;
      v52 = v17;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] %s estimated bytes to %s by %llu, total now %llu", &v47, 0x3Au);
    }
  }

  int64_with_default = networkd_settings_get_int64_with_default(nw_setting_estimated_byte_threshold_lower, 12582912);
  v20 = networkd_settings_get_int64_with_default(nw_setting_estimated_byte_threshold_upper, 31457280);
  v21 = *(*(a1 + 32) + 16);
  if (v21 && !_nw_parameters_get_logging_disabled(v21))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(*(a1 + 32) + 448);
      v47 = 136446978;
      v48 = "nw_connection_modify_estimated_bytes_block_invoke";
      v49 = 1024;
      *v50 = v23;
      *&v50[4] = 2048;
      *&v50[6] = int64_with_default;
      *&v50[14] = 2048;
      *&v50[16] = v20;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Using lower threshold %llu, upper threshold %llu", &v47, 0x26u);
    }
  }

  v24 = v4 < int64_with_default && v8 > int64_with_default;
  if (v24 || (v4 > int64_with_default ? (v25 = v8 >= int64_with_default) : (v25 = 1), !v25))
  {
    v26 = *(*(a1 + 32) + 16);
    if (v26 && !_nw_parameters_get_logging_disabled(v26))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v27 = gconnectionLogObj;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 32);
        v29 = *(v28 + 448);
        v31 = *(v28 + 296);
        v30 = *(v28 + 304);
        v47 = 136446978;
        v48 = "nw_connection_modify_estimated_bytes_block_invoke";
        v49 = 1024;
        *v50 = v29;
        *&v50[4] = 2048;
        *&v50[6] = v31;
        *&v50[14] = 2048;
        *&v50[16] = v30;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, "%{public}s [C%u] Crossed lower estimated byte threshold, sending notification (down: %llu, up: %llu)", &v47, 0x26u);
      }
    }

    nw_connection_report_estimated_byte_threshold_change_on_queue(*(a1 + 32), v8, *(a1 + 48), v8 > int64_with_default, 0);
  }

  if (v4 < v20 && v8 > v20 || v4 > v20 && v8 < v20)
  {
    v32 = *(*(a1 + 32) + 16);
    if (v32 && !_nw_parameters_get_logging_disabled(v32))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 32);
        v35 = *(v34 + 448);
        v37 = *(v34 + 296);
        v36 = *(v34 + 304);
        v47 = 136446978;
        v48 = "nw_connection_modify_estimated_bytes_block_invoke";
        v49 = 1024;
        *v50 = v35;
        *&v50[4] = 2048;
        *&v50[6] = v37;
        *&v50[14] = 2048;
        *&v50[16] = v36;
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_INFO, "%{public}s [C%u] Crossed upper estimated byte threshold, sending notification (down: %llu, up: %llu)", &v47, 0x26u);
      }
    }

    nw_connection_report_estimated_byte_threshold_change_on_queue(*(a1 + 32), v8, *(a1 + 48), v8 > v20, 1);
  }
}

uint64_t sub_181C0CC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v27 = a2;
  v7 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_cnames);

  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_182AD3EB8())
    {
      v11 = 0;
      v12 = v7 & 0xC000000000000001;
      v21[0] = v9;
      v21[1] = v25 + 16;
      v23 = i;
      v24 = v7;
      v22 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v12)
        {
          v13 = MEMORY[0x1865DA790](v11, v7);
        }

        else
        {
          if (v11 >= *(v21[0] + 16))
          {
            goto LABEL_25;
          }

          v13 = *(v7 + 8 * v11 + 32);
        }

        v14 = v13;
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = OBJC_IVAR____TtC7Network8Endpoint_type;
        swift_beginAccess();
        sub_181A546E0(v14 + v15, v6, type metadata accessor for Endpoint.EndpointType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3)
        {

          sub_181A5513C(v6, type metadata accessor for Endpoint.EndpointType);
          goto LABEL_6;
        }

        v17 = *(v6 + 3);
        v19 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v21[-2] = sub_1820D2390;
        v21[-1] = &v26;
        if ((v17 & 0x1000000000000000) == 0)
        {
          if ((v17 & 0x2000000000000000) != 0)
          {
            v28[0] = v18;
            v28[1] = v17 & 0xFFFFFFFFFFFFFFLL;
            v20 = (*(v25 + 16))(v25, v28, v19);
            goto LABEL_18;
          }

          if ((v18 & 0x1000000000000000) != 0)
          {
            v20 = (*(v25 + 16))(v25, (v17 & 0xFFFFFFFFFFFFFFFLL) + 32, v19);
LABEL_18:
            v29 = v20;
            goto LABEL_19;
          }
        }

        sub_182AD3B78();
LABEL_19:

        i = v23;
        v7 = v24;
        v12 = v22;
        if ((v29 & 1) == 0)
        {
        }

LABEL_6:
        ++v11;
        if (v9 == i)
        {
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }
  }

  return result;
}

uint64_t nw_protocol_ipv4_copy_info(uint64_t a1, int a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_ipv4_copy_info";
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
          v37 = "nw_protocol_ipv4_copy_info";
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
            v37 = "nw_protocol_ipv4_copy_info";
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
          v37 = "nw_protocol_ipv4_copy_info";
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
          v37 = "nw_protocol_ipv4_copy_info";
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
      result = malloc_type_calloc(1uLL, 0xE0uLL, 0x854C9562uLL);
      if (!result)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v37 = "nw_protocol_ipv4_copy_info";
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
  v37 = "nw_protocol_ipv4_copy_info";
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
    v37 = "nw_protocol_ipv4_copy_info";
    v12 = "%{public}s called with null ipv4";
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
    v37 = "nw_protocol_ipv4_copy_info";
    v12 = "%{public}s called with null ipv4, backtrace limit exceeded";
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
      v37 = "nw_protocol_ipv4_copy_info";
      v38 = 2082;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v16);
  }

  else if (v19)
  {
    *buf = 136446210;
    v37 = "nw_protocol_ipv4_copy_info";
    v12 = "%{public}s called with null ipv4, no backtrace";
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

uint64_t nw_protocol_default_copy_info(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_default_copy_info";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v5, &type, &v11))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_copy_info";
      v8 = "%{public}s called with null protocol";
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
          v14 = "nw_protocol_default_copy_info";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v10)
      {
LABEL_22:
        if (v5)
        {
          free(v5);
        }

        return 0;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_copy_info";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_copy_info";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_22;
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 224);
  if (!v3)
  {
    return 0;
  }

  return v3();
}

void nw_endpoint_enumerate_cnames(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_enumerate_cnames";
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
        v23 = "nw_endpoint_enumerate_cnames";
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
          v23 = "nw_endpoint_enumerate_cnames";
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
        v23 = "nw_endpoint_enumerate_cnames";
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
        v23 = "nw_endpoint_enumerate_cnames";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_enumerate_cnames(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_enumerate_cnames";
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
      v23 = "nw_endpoint_enumerate_cnames";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null enumerate_block", buf, 0xCu);
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
      v23 = "nw_endpoint_enumerate_cnames";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_endpoint_enumerate_cnames";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_enumerate_cnames";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_endpoint_handler_fillout_data_transfer_snapshot(void *a1, uint64_t *a2, void *a3, _BYTE *a4, int a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    *v64 = 0;
    *&v64[8] = v64;
    *&v64[16] = 0x2020000000;
    v65 = 0;
    os_unfair_lock_lock(v9 + 28);
    v11 = *&v10[66]._os_unfair_lock_opaque;
    if (v10[29]._os_unfair_lock_opaque != 2)
    {
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __nw_endpoint_handler_fillout_data_transfer_snapshot_block_invoke;
      v60[3] = &unk_1E6A30E38;
      v60[6] = a3;
      v60[7] = a4;
      v61 = a5;
      v60[4] = v64;
      v60[5] = a2;
      [v11 applyWithHandler:v10 toChildren:v60];
LABEL_35:
      os_unfair_lock_unlock(v10 + 28);
      v27 = *(*&v64[8] + 24);
      _Block_object_dispose(v64, 8);
      goto LABEL_36;
    }

    v12 = v11;
    v13 = v12;
    if (v12)
    {
      if (a2)
      {
        if (a3)
        {
          if (a4)
          {
            *a4 = 0;
            v14 = v12[101];
            if (v14)
            {
              *a2 = v14;
              *a3 = v12[102];
              if (a5 != 1)
              {
                goto LABEL_9;
              }

              goto LABEL_26;
            }

            v16 = v12[51];
            if (!v16 || (v17 = v16[3]) == 0 || (v18 = *(v17 + 224)) == 0)
            {
LABEL_33:
              v25 = 0;
              goto LABEL_34;
            }

            v19 = v16[5];
            v20 = v13[51];
            if (v19 != &nw_protocol_ref_counted_handle)
            {
              if (v19 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v20) = 0;
                v21 = 1;
LABEL_22:
                *buf = v16;
                buf[8] = v20;
                v23 = v18();
                if ((v21 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(buf);
                }

                *a2 = v23;
                if (v23)
                {
                  *a4 = 1;
                  if (a5 != 1)
                  {
LABEL_9:
                    if (!a5)
                    {
                      v15 = *(v13 + 206) + 1;
LABEL_28:
                      *(v13 + 206) = v15;
                      goto LABEL_29;
                    }

                    goto LABEL_29;
                  }

LABEL_26:
                  v24 = *(v13 + 206);
                  if (v24)
                  {
                    v15 = v24 - 1;
                    goto LABEL_28;
                  }

LABEL_29:
                  v25 = 1;
LABEL_34:

                  *(*&v64[8] + 24) = v25;
                  goto LABEL_35;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v26 = gLogObj;
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
                  _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s copy_info() returned NULL", buf, 0xCu);
                }

                goto LABEL_33;
              }

              v20 = v16[8];
              if (!v20)
              {
                v21 = 1;
                goto LABEL_22;
              }
            }

            v22 = *(v20 + 88);
            v21 = 0;
            if (v22)
            {
              *(v20 + 88) = v22 + 1;
            }

            LOBYTE(v20) = -1;
            goto LABEL_22;
          }

          v44 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
          v34 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v34, &type, &v62))
          {
LABEL_121:
            if (v34)
            {
              free(v34);
            }

            goto LABEL_33;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v35 = __nwlog_obj();
            v45 = type;
            if (os_log_type_enabled(v35, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
              _os_log_impl(&dword_181A37000, v35, v45, "%{public}s called with null should_release_snapshot", buf, 0xCu);
            }

LABEL_120:

            goto LABEL_121;
          }

          if (v62 != 1)
          {
            v35 = __nwlog_obj();
            v59 = type;
            if (os_log_type_enabled(v35, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
              _os_log_impl(&dword_181A37000, v35, v59, "%{public}s called with null should_release_snapshot, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_120;
          }

          backtrace_string = __nw_create_backtrace_string();
          v35 = __nwlog_obj();
          v54 = type;
          v55 = os_log_type_enabled(v35, type);
          if (!backtrace_string)
          {
            if (v55)
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
              _os_log_impl(&dword_181A37000, v35, v54, "%{public}s called with null should_release_snapshot, no backtrace", buf, 0xCu);
            }

            goto LABEL_120;
          }

          if (v55)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v35, v54, "%{public}s called with null should_release_snapshot, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          v42 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
          v34 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v34, &type, &v62))
          {
            goto LABEL_121;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v35 = __nwlog_obj();
            v43 = type;
            if (os_log_type_enabled(v35, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
              _os_log_impl(&dword_181A37000, v35, v43, "%{public}s called with null snapshot_length", buf, 0xCu);
            }

            goto LABEL_120;
          }

          if (v62 != 1)
          {
            v35 = __nwlog_obj();
            v58 = type;
            if (os_log_type_enabled(v35, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
              _os_log_impl(&dword_181A37000, v35, v58, "%{public}s called with null snapshot_length, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_120;
          }

          backtrace_string = __nw_create_backtrace_string();
          v35 = __nwlog_obj();
          v52 = type;
          v53 = os_log_type_enabled(v35, type);
          if (!backtrace_string)
          {
            if (v53)
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
              _os_log_impl(&dword_181A37000, v35, v52, "%{public}s called with null snapshot_length, no backtrace", buf, 0xCu);
            }

            goto LABEL_120;
          }

          if (v53)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v35, v52, "%{public}s called with null snapshot_length, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }
      }

      else
      {
        v40 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
        v34 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (!__nwlog_fault(v34, &type, &v62))
        {
          goto LABEL_121;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v35 = __nwlog_obj();
          v41 = type;
          if (os_log_type_enabled(v35, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
            _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null snapshot", buf, 0xCu);
          }

          goto LABEL_120;
        }

        if (v62 != 1)
        {
          v35 = __nwlog_obj();
          v57 = type;
          if (os_log_type_enabled(v35, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
            _os_log_impl(&dword_181A37000, v35, v57, "%{public}s called with null snapshot, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_120;
        }

        backtrace_string = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v50 = type;
        v51 = os_log_type_enabled(v35, type);
        if (!backtrace_string)
        {
          if (v51)
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
            _os_log_impl(&dword_181A37000, v35, v50, "%{public}s called with null snapshot, no backtrace", buf, 0xCu);
          }

          goto LABEL_120;
        }

        if (v51)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
          v67 = 2082;
          v68 = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v50, "%{public}s called with null snapshot, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
      v34 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (!__nwlog_fault(v34, &type, &v62))
      {
        goto LABEL_121;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }

        goto LABEL_120;
      }

      if (v62 != 1)
      {
        v35 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
          _os_log_impl(&dword_181A37000, v35, v56, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_120;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v48 = type;
      v49 = os_log_type_enabled(v35, type);
      if (!backtrace_string)
      {
        if (v49)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
          _os_log_impl(&dword_181A37000, v35, v48, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }

        goto LABEL_120;
      }

      if (v49)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_flow_fillout_data_transfer_snapshot";
        v67 = 2082;
        v68 = backtrace_string;
        _os_log_impl(&dword_181A37000, v35, v48, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_121;
  }

  v29 = __nwlog_obj();
  *v64 = 136446210;
  *&v64[4] = "nw_endpoint_handler_fillout_data_transfer_snapshot";
  v30 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v30, buf, &type))
  {
    if (buf[0] == 17)
    {
      v31 = __nwlog_obj();
      v32 = buf[0];
      if (os_log_type_enabled(v31, buf[0]))
      {
        *v64 = 136446210;
        *&v64[4] = "nw_endpoint_handler_fillout_data_transfer_snapshot";
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null handler", v64, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v38 = buf[0];
      v39 = os_log_type_enabled(v31, buf[0]);
      if (v37)
      {
        if (v39)
        {
          *v64 = 136446466;
          *&v64[4] = "nw_endpoint_handler_fillout_data_transfer_snapshot";
          *&v64[12] = 2082;
          *&v64[14] = v37;
          _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null handler, dumping backtrace:%{public}s", v64, 0x16u);
        }

        free(v37);
        goto LABEL_106;
      }

      if (v39)
      {
        *v64 = 136446210;
        *&v64[4] = "nw_endpoint_handler_fillout_data_transfer_snapshot";
        _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null handler, no backtrace", v64, 0xCu);
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v46 = buf[0];
      if (os_log_type_enabled(v31, buf[0]))
      {
        *v64 = 136446210;
        *&v64[4] = "nw_endpoint_handler_fillout_data_transfer_snapshot";
        _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null handler, backtrace limit exceeded", v64, 0xCu);
      }
    }
  }

LABEL_106:
  if (v30)
  {
    free(v30);
  }

  v27 = 0;
LABEL_36:

  return v27 & 1;
}

void sub_181C0EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if ((v17 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>((v18 - 96));
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_connection_end_activity(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_connection_end_activity";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_end_activity";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
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
          v23 = "nw_connection_end_activity";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v7);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_connection_end_activity";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_end_activity";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    nw_activity_activate(v4);
    if (nw_activity_should_log(v5))
    {
      nw_connection_add_client_event_internal(v3, 5, 0, v5);
    }

    goto LABEL_5;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_connection_end_activity";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_connection_end_activity";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_connection_end_activity";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
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
      v23 = "nw_connection_end_activity";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null activity, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_connection_end_activity";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t nw_connection_get_privacy_stance(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_get_privacy_stance_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_get_privacy_stance_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_get_privacy_stance";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_get_privacy_stance";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_get_privacy_stance";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_get_privacy_stance";
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
        *&buf[4] = "nw_connection_get_privacy_stance";
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

uint64_t nw_frame_copy_external_data(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "__nw_frame_get_external_data";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v7, &type, &v13))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      v10 = "%{public}s called with null frame";
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
          v16 = "__nw_frame_get_external_data";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v12)
      {
LABEL_27:
        if (v7)
        {
          free(v7);
        }

        return 0;
      }

      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      v10 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      v10 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_27;
  }

  if ((*(a1 + 204) & 2) != 0)
  {
    if (a2)
    {
      *a2 = *(a1 + 56);
    }

    if (a3)
    {
      v4 = *(a1 + 52);
      if (v4)
      {
        v4 -= *(a1 + 56) + *(a1 + 60);
      }

      *a3 = v4;
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      dispatch_retain(*(a1 + 96));
      return v5;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Frame does not use external data", buf, 0xCu);
    }
  }

  return 0;
}

void nw_protocol_default_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_output_available";
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
      v16 = "nw_protocol_default_output_available";
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
          v16 = "nw_protocol_default_output_available";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_output_available";
      v8 = "%{public}s called with null protocol, no backtrace";
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
      v16 = "nw_protocol_default_output_available";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_36;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    callbacks = default_input_handler->callbacks;
    if (callbacks)
    {
      output_available = callbacks->output_available;
      if (output_available)
      {

        output_available();
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_default_output_available";
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
    v16 = "nw_protocol_default_output_available";
    v8 = "%{public}s called with null protocol->default_input_handler";
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
    v16 = "nw_protocol_default_output_available";
    v8 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
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
    v16 = "nw_protocol_default_output_available";
    v8 = "%{public}s called with null protocol->default_input_handler, no backtrace";
    goto LABEL_35;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_default_output_available";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
LABEL_37:
    free(v5);
  }
}

void nw_connection_increment_estimated_bytes(void *a1, char a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_increment_estimated_bytes";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_connection_increment_estimated_bytes";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "nw_connection_increment_estimated_bytes";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v8);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_connection_increment_estimated_bytes";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_connection_increment_estimated_bytes";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a3)
  {
    nw_connection_modify_estimated_bytes(v5, a2, 1, a3);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_connection_increment_estimated_bytes";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v8, &type, &v21))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_connection_increment_estimated_bytes";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null estimated_bytes", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_connection_increment_estimated_bytes";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null estimated_bytes, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v24 = "nw_connection_increment_estimated_bytes";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null estimated_bytes, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v24 = "nw_connection_increment_estimated_bytes";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null estimated_bytes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_2(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v2 = *(a1 + 32);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_3;
  aBlock[3] = &unk_1E6A3D738;
  v42 = v2;
  v43 = &v44;
  v3 = _Block_copy(aBlock);
  os_unfair_lock_lock(v2 + 10);
  v3[2](v3);
  os_unfair_lock_unlock(v2 + 10);

  if (*(v45 + 24) == 1)
  {
    v4 = mach_continuous_time();
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 32);
        *buf = 136446466;
        *&buf[4] = "nw_data_transfer_report_collect_inner_block_invoke_2";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s report %p adding collecting snapshot", buf, 0x16u);
      }
    }

    nw_data_transfer_report_add_snapshot_on_nw_queue(*(a1 + 32));
    v6 = *(a1 + 32);
    v7 = v6[1];
    if (v7)
    {
      v8 = nw_delta_nanos(v7, v5);
      v9 = (v8 / 0xF4240);
      if (v8 > 0xF423FFFFFFFFFLL)
      {
        v9 = 0xFFFFFFFFLL;
      }

      *(*(a1 + 32) + 16) = v9;
      v6 = *(a1 + 32);
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = v6;
    v12 = v11;
    if (v10)
    {
      if (v11)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_connection_remove_data_transfer_report_block_invoke;
        v51 = &unk_1E6A3D760;
        v13 = v10;
        v52 = v13;
        v53 = v12;
        nw_connection_async_if_needed(v13, buf);

LABEL_13:
        v14 = *(a1 + 32);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_239;
        v39[3] = &unk_1E6A3D868;
        v40 = v14;
        v15 = _Block_copy(v39);
        os_unfair_lock_lock(v14 + 10);
        v15[2](v15);
        os_unfair_lock_unlock(v14 + 10);

        v16 = v40;
LABEL_14:

        goto LABEL_16;
      }

      v26 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_remove_data_transfer_report";
      v23 = _os_log_send_and_compose_impl();

      v49 = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &v49, &v48))
      {
        goto LABEL_59;
      }

      if (v49 == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v27 = v49;
        if (os_log_type_enabled(v24, v49))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_remove_data_transfer_report";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v48 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v32 = v49;
        v33 = os_log_type_enabled(v24, v49);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_remove_data_transfer_report";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v32, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v23)
          {
            goto LABEL_13;
          }

          goto LABEL_60;
        }

        if (v33)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_remove_data_transfer_report";
          _os_log_impl(&dword_181A37000, v24, v32, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v35 = v49;
        if (os_log_type_enabled(v24, v49))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_remove_data_transfer_report";
          _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v22 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_remove_data_transfer_report";
      v23 = _os_log_send_and_compose_impl();

      v49 = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &v49, &v48))
      {
        goto LABEL_59;
      }

      if (v49 == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = v49;
        if (os_log_type_enabled(v24, v49))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_remove_data_transfer_report";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v48 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v29 = v49;
        v30 = os_log_type_enabled(v24, v49);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_remove_data_transfer_report";
            *&buf[12] = 2082;
            *&buf[14] = v28;
            _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
LABEL_59:
          if (!v23)
          {
            goto LABEL_13;
          }

LABEL_60:
          free(v23);
          goto LABEL_13;
        }

        if (v30)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_remove_data_transfer_report";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v34 = v49;
        if (os_log_type_enabled(v24, v49))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_remove_data_transfer_report";
          _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_59;
  }

  if (gLogDatapath == 1)
  {
    v16 = __nwlog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      *buf = 136446466;
      *&buf[4] = "nw_data_transfer_report_collect_inner_block_invoke_2";
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s report %p already collected, delivering", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_16:
  v17 = *(a1 + 48);
  if (v17)
  {
    if (*(a1 + 64) == 1)
    {
      v17[2](v17, *(a1 + 32));
    }

    else
    {
      v18 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_240;
      block[3] = &unk_1E6A3D710;
      v38 = v17;
      v37 = *(a1 + 32);
      dispatch_async(v18, block);
    }
  }

  _Block_object_dispose(&v44, 8);
}

uint64_t ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 52) == 2 && (*(v1 + 424) & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  return result;
}

void nw_data_transfer_report_add_snapshot_on_nw_queue(void *a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
    v37 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61) = 0;
    if (!__nwlog_fault(v37, type, &v61))
    {
      goto LABEL_97;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v45 = type[0];
      v46 = os_log_type_enabled(v38, type[0]);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
          v71 = 2082;
          v72 = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_97:
        if (!v37)
        {
          goto LABEL_16;
        }

LABEL_98:
        free(v37);
        goto LABEL_16;
      }

      if (v46)
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v52, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_96:

    goto LABEL_97;
  }

  v3 = v1[3];
  if (!v3)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
    v37 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61) = 0;
    if (!__nwlog_fault(v37, type, &v61))
    {
      goto LABEL_97;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null report->connection", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v61 != 1)
    {
      v38 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v53, "%{public}s called with null report->connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_96;
    }

    v47 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v48 = type[0];
    v49 = os_log_type_enabled(v38, type[0]);
    if (!v47)
    {
      if (v49)
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v48, "%{public}s called with null report->connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v49)
    {
      *buf = 136446466;
      v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
      v71 = 2082;
      v72 = v47;
      _os_log_impl(&dword_181A37000, v38, v48, "%{public}s called with null report->connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_77;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
    v37 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61) = 0;
    if (!__nwlog_fault(v37, type, &v61))
    {
      goto LABEL_97;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v43, "%{public}s called with null report->connection->context", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v61 != 1)
    {
      v38 = __nwlog_obj();
      v54 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v54, "%{public}s called with null report->connection->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_96;
    }

    v47 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v50 = type[0];
    v51 = os_log_type_enabled(v38, type[0]);
    if (!v47)
    {
      if (v51)
      {
        *buf = 136446210;
        v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v38, v50, "%{public}s called with null report->connection->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v51)
    {
      *buf = 136446466;
      v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
      v71 = 2082;
      v72 = v47;
      _os_log_impl(&dword_181A37000, v38, v50, "%{public}s called with null report->connection->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_77:

    free(v47);
    if (!v37)
    {
      goto LABEL_16;
    }

    goto LABEL_98;
  }

  v5 = v4;
  v6 = v5;
  if ((v5[19] & 8) == 0)
  {
    dispatch_assert_queue_V2(v5[1]);
  }

  *type = 0;
  v66 = type;
  v67 = 0x2020000000;
  v68 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke;
  aBlock[3] = &unk_1E6A3D738;
  v64 = type;
  v7 = v2;
  v63 = v7;
  v8 = _Block_copy(aBlock);
  os_unfair_lock_lock(v2 + 10);
  v8[2](v8);
  os_unfair_lock_unlock(v2 + 10);

  if (*(v66 + 24) != 1)
  {
    v61 = 0;
    v60 = 0;
    v59 = 0;
    nw_connection_fillout_data_transfer_snapshot_on_nw_queue(*(v2 + 3), &v61, &v59, &v60, 0);
    if (!v61 || __ROR8__(0x6DB6DB6DB6DB6DB7 * v59, 5) > 0x124924924924924uLL)
    {
      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
      v71 = 2048;
      v72 = v7;
      v73 = 2048;
      v74 = v61;
      v75 = 2048;
      v76 = ((v59 >> 5) * 0x2492492492492493uLL) >> 64;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s report %p adding snapshot %p with snapshot path count %lu", buf, 0x2Au);
    }

    v11 = v59;
    if (v59 - 224 <= 0xDF)
    {
      v12 = *(v2 + 3);
      if ((*(v12 + 109) & 0x40) != 0)
      {
        v25 = nw_endpoint_handler_copy_connected_flow_handler(*(v12 + 144));
        v26 = nw_endpoint_handler_copy_current_path(v25);
        v27 = nw_path_copy_interface(v26);

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          if (v27)
          {
            radio_type = _nw_interface_get_radio_type(v27);
            v30 = nw_interface_radio_type_to_string(radio_type);
          }

          else
          {
            v30 = "none";
          }

          v31 = *(v7 + 4);
          if (v31)
          {
            v32 = _nw_interface_get_radio_type(*(v7 + 4));
            v33 = nw_interface_radio_type_to_string(v32);
          }

          else
          {
            v33 = "none";
          }

          *buf = 136447490;
          v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
          v71 = 2048;
          v72 = v7;
          v73 = 2112;
          v74 = v27;
          v75 = 2080;
          v76 = v30;
          v77 = 2112;
          v78 = v31;
          v79 = 2080;
          v80 = v33;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s report %p got snapshot for interface %@[%s] (currently collecting interface: %@[%s])", buf, 0x3Eu);
        }

        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke_192;
        v55[3] = &unk_1E6A3BCF0;
        v56 = v7;
        v58 = v61;
        v34 = v27;
        v57 = v34;
        v35 = _Block_copy(v55);
        os_unfair_lock_lock(v2 + 10);
        v35[2](v35);
        os_unfair_lock_unlock(v2 + 10);

        goto LABEL_12;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
      v71 = 2048;
      v72 = v7;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s report %p adding multipath snapshot", buf, 0x16u);
    }

    if (v11 < 0xE0)
    {
LABEL_12:
      if (v60 == 1 && v61)
      {
        free(v61);
      }

      goto LABEL_15;
    }

    v14 = 0;
LABEL_28:
    v16 = (v61 + 224 * v14);
    var0 = v16->var0;
    v15 = (v7 + 56);
    if (!v16->var0)
    {
      goto LABEL_26;
    }

    v18 = *(v7 + 51);
    if (v18)
    {
      index = _nw_interface_get_index(v18);
      var0 = v16->var0;
      v15 = (v7 + 56);
      if (v16->var0 == index)
      {
        goto LABEL_26;
      }
    }

    if (*(v7 + 11) < 2u)
    {
      goto LABEL_38;
    }

    v20 = 0;
    v21 = 352;
    while (1)
    {
      v22 = *(*(v7 + 52) + v21);
      if (v22)
      {
        v23 = _nw_interface_get_index(v22);
        var0 = v16->var0;
        if (v16->var0 == v23)
        {
LABEL_37:
          v24 = *(v7 + 52);
          if (v24)
          {
            v15 = (v24 + 360 * v20);
LABEL_26:
            nw_data_transfer_update_path_report_end(v15, v16);
            nw_data_transfer_update_path_report_begin(v15, v16);
            goto LABEL_27;
          }

LABEL_38:
          nw_data_transfer_add_initial_snapshot(v7, *(v7 + 51), v16);
LABEL_27:
          if (++v14 == ((v11 >> 5) * 0x2492492492492493uLL) >> 64)
          {
            goto LABEL_12;
          }

          goto LABEL_28;
        }
      }

      else if (!var0)
      {
        goto LABEL_37;
      }

      ++v20;
      v21 += 360;
      if (v20 >= (*(v7 + 11) - 1))
      {
        goto LABEL_38;
      }
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v70 = "nw_data_transfer_report_add_snapshot_on_nw_queue";
    v71 = 2048;
    v72 = v7;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s skipping snapshot for collected report %p", buf, 0x16u);
  }

LABEL_15:
  _Block_object_dispose(type, 8);
LABEL_16:
}

void sub_181C11458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void __nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke_192(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  path_report_for_interface_locked = nw_data_transfer_report_get_path_report_for_interface_locked(*(a1 + 32), *(*(a1 + 32) + 32), 0);
  if (!path_report_for_interface_locked)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
        v11 = "%{public}s called with null ending_path_report";
LABEL_36:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null ending_path_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          return;
        }

        goto LABEL_39;
      }

      if (v14)
      {
        *buf = 136446210;
        v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
        v11 = "%{public}s called with null ending_path_report, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
        v11 = "%{public}s called with null ending_path_report, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  v3 = path_report_for_interface_locked;
  nw_data_transfer_update_path_report_end(path_report_for_interface_locked, *(a1 + 48));
  v4 = *(a1 + 40);
  if (!v4)
  {
    v6 = *(a1 + 48);
    v5 = v3;
    goto LABEL_6;
  }

  objc_storeStrong((*(a1 + 32) + 32), v4);
  v5 = nw_data_transfer_report_get_path_report_for_interface_locked(*(a1 + 32), *(a1 + 40), 1);
  if (v5)
  {
    v6 = *(a1 + 48);
LABEL_6:

    nw_data_transfer_update_path_report_begin(v5, v6);
    return;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
      v11 = "%{public}s called with null beginning_path_report";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v17 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
      v11 = "%{public}s called with null beginning_path_report, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v16 = os_log_type_enabled(v9, type);
  if (!v15)
  {
    if (v16)
    {
      *buf = 136446210;
      v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
      v11 = "%{public}s called with null beginning_path_report, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v20 = "nw_data_transfer_report_add_snapshot_on_nw_queue_block_invoke";
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null beginning_path_report, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
LABEL_39:
    free(v8);
  }
}

void nw_data_transfer_update_path_report_end(nw_data_transfer_path_report *a1, nw_data_transfer_snapshot *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_data_transfer_update_path_report_end";
    v50 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v50, &type, &v62))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v65 = "nw_data_transfer_update_path_report_end";
        v53 = "%{public}s called with null path_report";
LABEL_69:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v62 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v59 = os_log_type_enabled(v51, type);
      if (backtrace_string)
      {
        if (v59)
        {
          *buf = 136446466;
          v65 = "nw_data_transfer_update_path_report_end";
          v66 = 2082;
          v67 = backtrace_string;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null path_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_71:
        if (!v50)
        {
          return;
        }

LABEL_72:
        free(v50);
        return;
      }

      if (v59)
      {
        *buf = 136446210;
        v65 = "nw_data_transfer_update_path_report_end";
        v53 = "%{public}s called with null path_report, no backtrace";
        goto LABEL_69;
      }
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v65 = "nw_data_transfer_update_path_report_end";
        v53 = "%{public}s called with null path_report, backtrace limit exceeded";
        goto LABEL_69;
      }
    }

LABEL_70:

    goto LABEL_71;
  }

  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v55 = a2;
      v56 = a1;
      v57 = __nwlog_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v65 = "nw_data_transfer_update_path_report_end";
        v66 = 2048;
        v67 = v56;
        v68 = 2048;
        v69 = v55;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s updating path report %p with ending snapshot %p", buf, 0x20u);
      }

      a1 = v56;
      a2 = v55;
    }

    var1 = a2->var1;
    if (var1 >= a1->total.received_ip_packet_count)
    {
      v3 = a1->total.received_ip_packet_count + var1 - a1->incremental.received_ip_packet_count;
    }

    else
    {
      v3 = 0;
    }

    v4 = 0;
    a1->total.received_ip_packet_count = v3;
    a1->incremental.received_ip_packet_count = 0;
    var2 = a2->var2;
    received_ip_ect1_packet_count = a1->total.received_ip_ect1_packet_count;
    if (var2 >= received_ip_ect1_packet_count)
    {
      v4 = received_ip_ect1_packet_count + var2 - a1->incremental.received_ip_ect1_packet_count;
    }

    v7 = 0;
    a1->total.received_ip_ect1_packet_count = v4;
    a1->incremental.received_ip_ect1_packet_count = 0;
    var3 = a2->var3;
    received_ip_ect0_packet_count = a1->total.received_ip_ect0_packet_count;
    if (var3 >= received_ip_ect0_packet_count)
    {
      v7 = received_ip_ect0_packet_count + var3 - a1->incremental.received_ip_ect0_packet_count;
    }

    v10 = 0;
    a1->total.received_ip_ect0_packet_count = v7;
    a1->incremental.received_ip_ect0_packet_count = 0;
    var4 = a2->var4;
    received_ip_ce_packet_count = a1->total.received_ip_ce_packet_count;
    if (var4 >= received_ip_ce_packet_count)
    {
      v10 = received_ip_ce_packet_count + var4 - a1->incremental.received_ip_ce_packet_count;
    }

    v13 = 0;
    a1->total.received_ip_ce_packet_count = v10;
    a1->incremental.received_ip_ce_packet_count = 0;
    var5 = a2->var5;
    sent_ip_packet_count = a1->total.sent_ip_packet_count;
    if (var5 >= sent_ip_packet_count)
    {
      v13 = sent_ip_packet_count + var5 - a1->incremental.sent_ip_packet_count;
    }

    v16 = 0;
    a1->total.sent_ip_packet_count = v13;
    a1->incremental.sent_ip_packet_count = 0;
    var6 = a2->var6;
    received_transport_byte_count = a1->total.received_transport_byte_count;
    if (var6 >= received_transport_byte_count)
    {
      v16 = received_transport_byte_count + var6 - a1->incremental.received_transport_byte_count;
    }

    v19 = 0;
    a1->total.received_transport_byte_count = v16;
    a1->incremental.received_transport_byte_count = 0;
    var7 = a2->var7;
    received_transport_duplicate_byte_count = a1->total.received_transport_duplicate_byte_count;
    if (var7 >= received_transport_duplicate_byte_count)
    {
      v19 = received_transport_duplicate_byte_count + var7 - a1->incremental.received_transport_duplicate_byte_count;
    }

    v22 = 0;
    a1->total.received_transport_duplicate_byte_count = v19;
    a1->incremental.received_transport_duplicate_byte_count = 0;
    var8 = a2->var8;
    received_transport_out_of_order_byte_count = a1->total.received_transport_out_of_order_byte_count;
    if (var8 >= received_transport_out_of_order_byte_count)
    {
      v22 = received_transport_out_of_order_byte_count + var8 - a1->incremental.received_transport_out_of_order_byte_count;
    }

    v25 = 0;
    a1->total.received_transport_out_of_order_byte_count = v22;
    a1->incremental.received_transport_out_of_order_byte_count = 0;
    var9 = a2->var9;
    sent_transport_byte_count = a1->total.sent_transport_byte_count;
    if (var9 >= sent_transport_byte_count)
    {
      v25 = sent_transport_byte_count + var9 - a1->incremental.sent_transport_byte_count;
    }

    v28 = 0;
    a1->total.sent_transport_byte_count = v25;
    a1->incremental.sent_transport_byte_count = 0;
    var10 = a2->var10;
    sent_transport_retransmitted_byte_count = a1->total.sent_transport_retransmitted_byte_count;
    if (var10 >= sent_transport_retransmitted_byte_count)
    {
      v28 = sent_transport_retransmitted_byte_count + var10 - a1->incremental.sent_transport_retransmitted_byte_count;
    }

    v31 = 0;
    a1->total.sent_transport_retransmitted_byte_count = v28;
    a1->incremental.sent_transport_retransmitted_byte_count = 0;
    var11 = a2->var11;
    sent_transport_ecn_capable_packet_count = a1->total.sent_transport_ecn_capable_packet_count;
    if (var11 >= sent_transport_ecn_capable_packet_count)
    {
      v31 = sent_transport_ecn_capable_packet_count + var11 - a1->incremental.sent_transport_ecn_capable_packet_count;
    }

    v34 = 0;
    a1->total.sent_transport_ecn_capable_packet_count = v31;
    a1->incremental.sent_transport_ecn_capable_packet_count = 0;
    var12 = a2->var12;
    sent_transport_ecn_capable_acked_packet_count = a1->total.sent_transport_ecn_capable_acked_packet_count;
    if (var12 >= sent_transport_ecn_capable_acked_packet_count)
    {
      v34 = sent_transport_ecn_capable_acked_packet_count + var12 - a1->incremental.sent_transport_ecn_capable_acked_packet_count;
    }

    v37 = 0;
    a1->total.sent_transport_ecn_capable_acked_packet_count = v34;
    a1->incremental.sent_transport_ecn_capable_acked_packet_count = 0;
    var13 = a2->var13;
    sent_transport_ecn_capable_marked_packet_count = a1->total.sent_transport_ecn_capable_marked_packet_count;
    if (var13 >= sent_transport_ecn_capable_marked_packet_count)
    {
      v37 = sent_transport_ecn_capable_marked_packet_count + var13 - a1->incremental.sent_transport_ecn_capable_marked_packet_count;
    }

    v40 = 0;
    a1->total.sent_transport_ecn_capable_marked_packet_count = v37;
    a1->incremental.sent_transport_ecn_capable_marked_packet_count = 0;
    var14 = a2->var14;
    sent_transport_ecn_capable_lost_packet_count = a1->total.sent_transport_ecn_capable_lost_packet_count;
    if (var14 >= sent_transport_ecn_capable_lost_packet_count)
    {
      v40 = sent_transport_ecn_capable_lost_packet_count + var14 - a1->incremental.sent_transport_ecn_capable_lost_packet_count;
    }

    v43 = 0;
    a1->total.sent_transport_ecn_capable_lost_packet_count = v40;
    a1->incremental.sent_transport_ecn_capable_lost_packet_count = 0;
    var21 = a2->var21;
    received_application_byte_count = a1->total.received_application_byte_count;
    if (var21 >= received_application_byte_count)
    {
      v43 = received_application_byte_count + var21 - a1->incremental.received_application_byte_count;
    }

    v46 = 0;
    a1->total.received_application_byte_count = v43;
    a1->incremental.received_application_byte_count = 0;
    var22 = a2->var22;
    sent_application_byte_count = a1->total.sent_application_byte_count;
    if (var22 >= sent_application_byte_count)
    {
      v46 = sent_application_byte_count + var22 - a1->incremental.sent_application_byte_count;
    }

    a1->total.sent_application_byte_count = v46;
    a1->incremental.sent_application_byte_count = 0;
    *&a1->total.transport_smoothed_rtt_milliseconds = *&a2->var15;
    *&a1->total.transport_current_rtt_milliseconds = *&a2->var17;
    *&a1->total.transport_congestion_window = *&a2->var19;
    return;
  }

  v54 = __nwlog_obj();
  *buf = 136446210;
  v65 = "nw_data_transfer_update_path_report_end";
  v50 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (!__nwlog_fault(v50, &type, &v62))
  {
    goto LABEL_71;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v51 = __nwlog_obj();
    v52 = type;
    if (os_log_type_enabled(v51, type))
    {
      *buf = 136446210;
      v65 = "nw_data_transfer_update_path_report_end";
      v53 = "%{public}s called with null snapshot";
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  if (v62 != 1)
  {
    v51 = __nwlog_obj();
    v52 = type;
    if (os_log_type_enabled(v51, type))
    {
      *buf = 136446210;
      v65 = "nw_data_transfer_update_path_report_end";
      v53 = "%{public}s called with null snapshot, backtrace limit exceeded";
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v60 = __nw_create_backtrace_string();
  v51 = __nwlog_obj();
  v52 = type;
  v61 = os_log_type_enabled(v51, type);
  if (!v60)
  {
    if (v61)
    {
      *buf = 136446210;
      v65 = "nw_data_transfer_update_path_report_end";
      v53 = "%{public}s called with null snapshot, no backtrace";
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  if (v61)
  {
    *buf = 136446466;
    v65 = "nw_data_transfer_update_path_report_end";
    v66 = 2082;
    v67 = v60;
    _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null snapshot, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v60);
  if (v50)
  {
    goto LABEL_72;
  }
}

uint64_t _nw_array_duplicate_array_without_object(void *a1, uint64_t a2)
{
  v3 = a1;
  swift_unknownObjectRetain();
  sub_181C1FBF4(v3, a2, &v5);

  swift_unknownObjectRelease();
  return v5;
}

void ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_239(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(*(a1 + 32) + 52) = 2;
  *(*(a1 + 32) + 424) &= ~1u;
}

uint64_t nw_data_transfer_report_get_sent_application_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_application_byte_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null report", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_application_byte_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_sent_application_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[28].isa;
    isa_high = HIDWORD(v4[5].isa);
    if (isa_high < 2)
    {
      goto LABEL_14;
    }

    if (isa_high == 2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = isa_high - 1;
      v13 = v4[52].isa;
      v14 = (isa_high - 1) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        isa += *(v13 + 21);
        v11 += *(v13 + 66);
        v13 = (v13 + 720);
        v14 -= 2;
      }

      while (v14);
      isa += v11;
      if (v12 == ((isa_high - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      v9 = v12 | 1;
    }

    v15 = isa_high - v9;
    v16 = (v4[52].isa + 360 * v9 - 192);
    do
    {
      isa += *v16;
      v16 += 45;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  if (HIDWORD(v4[5].isa) <= path_index)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_application_byte_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null (path_index < report->path_count)", buf, 0xCu);
      }

LABEL_56:

LABEL_57:
      if (v18)
      {
        free(v18);
      }

LABEL_59:
      isa = 0;
      goto LABEL_14;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null (path_index < report->path_count), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_application_byte_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_57;
  }

  v5 = v4;
  if (HIDWORD(v4[5].isa) <= path_index)
  {
    v6 = 0;
  }

  else if (path_index)
  {
    v6 = v5[52].isa + 360 * path_index - 360;
  }

  else
  {
    v6 = &v5[7];
  }

  isa = *(v6 + 168);
LABEL_14:

  return isa;
}

uint64_t nw_protocol_get_output_frames_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 88) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void nw_data_transfer_report_collect_on_nw_queue(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (!v4 && gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v18 = "nw_data_transfer_report_collect_on_nw_queue";
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s called without collect_block", buf, 0xCu);
      }
    }

    nw_data_transfer_report_collect_inner(v3, 0, v5, 1);
    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_data_transfer_report_collect_on_nw_queue";
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
        v18 = "nw_data_transfer_report_collect_on_nw_queue";
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
          v18 = "nw_data_transfer_report_collect_on_nw_queue";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_data_transfer_report_collect_on_nw_queue";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_data_transfer_report_collect_on_nw_queue";
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v7)
  {
    free(v7);
  }

LABEL_5:
}

void __nw_connection_remove_data_transfer_report_block_invoke(uint64_t a1)
{
  v2 = nw_array_duplicate_array_without_object(*(*(a1 + 32) + 424), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  *(v3 + 424) = v2;
}

nw_interface_t nw_data_transfer_report_copy_path_interface(nw_data_transfer_report_t report, uint32_t path_index)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_copy_path_interface";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_copy_path_interface";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_copy_path_interface";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_copy_path_interface";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_copy_path_interface";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_copy_path_interface";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (path_index == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = path_index;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_copy_path_interface";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_copy_path_interface";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_copy_path_interface";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_copy_path_interface";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_copy_path_interface";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  v8 = *(v7 + 352);
LABEL_13:

  return v8;
}

void nw_data_transfer_report_collect_inner(void *a1, void *a2, void *a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (!v9 || v8 || (a4 & 1) != 0)
  {
    if (!v9 && gLogDatapath == 1)
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_collect_inner";
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s called without collect_block", buf, 0xCu);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__8362;
    v49 = __Block_byref_object_dispose__8363;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke;
    aBlock[3] = &unk_1E6A2EF68;
    v11 = v7;
    v35 = v11;
    v36 = &v39;
    v37 = &v43;
    v38 = buf;
    v12 = _Block_copy(aBlock);
    os_unfair_lock_lock(v7 + 10);
    v12[2](v12);
    os_unfair_lock_unlock(v7 + 10);

    if (*(v40 + 24) == 1)
    {
      if (!v10)
      {
LABEL_16:

        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_17;
      }

      if (a4)
      {
        (v10)[2](v10, v11);
        goto LABEL_16;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_238;
      block[3] = &unk_1E6A3D710;
      v15 = &v33;
      v33 = v10;
      v16 = &v32;
      v32 = v11;
      dispatch_async(v8, block);
    }

    else
    {
      if (*(v44 + 24) != 1)
      {
        goto LABEL_16;
      }

      v13 = *(*&buf[8] + 40);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = *(v13 + 24);
      if (!v14)
      {
        goto LABEL_16;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke_2;
      v26[3] = &unk_1E6A2C870;
      v27 = v11;
      v29[1] = buf;
      v29[0] = v10;
      v30 = a4;
      v28 = v8;
      nw_queue_context_async_if_needed(v14, v26);

      v15 = &v27;
      v16 = v29;
    }

    goto LABEL_16;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_data_transfer_report_collect_inner";
  v18 = _os_log_send_and_compose_impl();

  LOBYTE(v43) = 16;
  LOBYTE(v39) = 0;
  if (__nwlog_fault(v18, &v43, &v39))
  {
    if (v43 == 17)
    {
      v19 = __nwlog_obj();
      v20 = v43;
      if (os_log_type_enabled(v19, v43))
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_collect_inner";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null queue", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v23 = v43;
      v24 = os_log_type_enabled(v19, v43);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_data_transfer_report_collect_inner";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_collect_inner";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null queue, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v25 = v43;
      if (os_log_type_enabled(v19, v43))
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_collect_inner";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_37:
  if (v18)
  {
    free(v18);
  }

LABEL_17:
}

void sub_181C13720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v40 - 192), 8);
  _Block_object_dispose((v40 - 160), 8);

  _Unwind_Resume(a1);
}

void ___ZL37nw_data_transfer_report_collect_innerP34NWConcrete_nw_data_transfer_reportPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvS0_Eb_block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (*(v1 + 52) == 2)
  {
    *(*(a1[5] + 8) + 24) = 1;
    return;
  }

  *(v1 + 424) |= 1u;
  *(*(a1[6] + 8) + 24) = 1;
  v2 = a1[4];
  if (!*(v2 + 24))
  {
    v3 = a1;
    v4 = *(v2 + 424);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v19 = "nw_data_transfer_report_collect_inner_block_invoke";
      v7 = _os_log_send_and_compose_impl();

      if (!__nwlog_should_abort(v7))
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    *buf = 136446210;
    v19 = "nw_data_transfer_report_collect_inner_block_invoke";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v19 = "nw_data_transfer_report_collect_inner_block_invoke";
          v10 = "%{public}s Report's (not in progress) associated connection unexpectedly nil";
LABEL_18:
          v14 = v8;
          v15 = v9;
LABEL_19:
          _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v19 = "nw_data_transfer_report_collect_inner_block_invoke";
          v10 = "%{public}s Report's (not in progress) associated connection unexpectedly nil, backtrace limit exceeded";
          goto LABEL_18;
        }

LABEL_20:

        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v19 = "nw_data_transfer_report_collect_inner_block_invoke";
        v10 = "%{public}s Report's (not in progress) associated connection unexpectedly nil, no backtrace";
        v14 = v8;
        v15 = v12;
        goto LABEL_19;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "nw_data_transfer_report_collect_inner_block_invoke";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s Report's (not in progress) associated connection unexpectedly nil, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v7)
    {
LABEL_23:
      a1 = v3;
      goto LABEL_24;
    }

LABEL_22:
    free(v7);
    goto LABEL_23;
  }

LABEL_24:
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 24));
}

void nw_data_transfer_report_collect(nw_data_transfer_report_t report, dispatch_queue_t queue, nw_data_transfer_report_collect_block_t collect_block)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = report;
  v6 = queue;
  v7 = collect_block;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_data_transfer_report_collect";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_data_transfer_report_collect";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_data_transfer_report_collect";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v10)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v10);
        goto LABEL_5;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_data_transfer_report_collect";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_data_transfer_report_collect";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v6 || !v7)
  {
    nw_data_transfer_report_collect_inner(v5, v6, v7, 0);
    goto LABEL_5;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_data_transfer_report_collect";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v10, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_data_transfer_report_collect";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null queue", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_data_transfer_report_collect";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v19 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v11, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v26 = "nw_data_transfer_report_collect";
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v21)
  {
    *buf = 136446466;
    v26 = "nw_data_transfer_report_collect";
    v27 = 2082;
    v28 = v19;
    _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v10)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint32_t nw_data_transfer_report_get_path_count(nw_data_transfer_report_t report)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = report;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_data_transfer_report_get_path_count";
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
          v17 = "nw_data_transfer_report_get_path_count";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v11 = type;
        v12 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v17 = "nw_data_transfer_report_get_path_count";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_data_transfer_report_get_path_count";
          _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_data_transfer_report_get_path_count";
          _os_log_impl(&dword_181A37000, v7, v13, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_26;
  }

  if (nw_data_transfer_report_get_state(v1) != nw_data_transfer_report_state_collected)
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "nw_data_transfer_report_get_path_count";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

LABEL_26:
    isa_high = 0;
    goto LABEL_4;
  }

  isa_high = HIDWORD(v2[5].isa);
LABEL_4:

  return isa_high;
}

nw_data_transfer_report_state_t nw_data_transfer_report_get_state(nw_data_transfer_report_t report)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = report;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_data_transfer_report_get_state_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 10);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 10);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_data_transfer_report_get_state";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_get_state";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          *&buf[4] = "nw_data_transfer_report_get_state";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_get_state";
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
        *&buf[4] = "nw_data_transfer_report_get_state";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = nw_data_transfer_report_state_collecting;
LABEL_3:

  return v4;
}

void sub_181C146DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

nw_protocol_metadata_t nw_connection_copy_protocol_metadata(nw_connection_t connection, nw_protocol_definition_t definition)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = definition;
  if (v3)
  {
    v5 = nw_connection_copy_protocol_metadata_internal(v3, v4, 0);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_connection_copy_protocol_metadata";
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
        v18 = "nw_connection_copy_protocol_metadata";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
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
          v18 = "nw_connection_copy_protocol_metadata";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_connection_copy_protocol_metadata";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_connection_copy_protocol_metadata";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_3:

  return v5;
}
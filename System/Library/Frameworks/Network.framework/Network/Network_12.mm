nw_endpoint_t nw_flow_get_remote(nw_protocol *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1->handle + 20);
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_get_remote";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v14, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v24 = "nw_flow_get_remote";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v24 = "nw_flow_get_remote";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v19)
        {
          *buf = 136446210;
          v24 = "nw_flow_get_remote";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v24 = "nw_flow_get_remote";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_14;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 2)
  {
    v5 = nw_endpoint_handler_copy_flow(v3);
    v6 = v5;
    v7 = *(v5 + 121);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(v5 + 120);
      if (v8)
      {
        nw_flow_copy_flow_divert_endpoint(*(v5 + 120));
      }

      else
      {
        v12 = nw_endpoint_flow_copy_path(v3);
        v8 = nw_path_copy_effective_remote_endpoint(v12);
      }
    }

    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v10 = "unknown-mode";
    }

    else
    {
      v10 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v24 = "nw_flow_get_remote";
    v25 = 2082;
    v26 = v10;
    v27 = 2082;
    v28 = "flow";
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_14:
  v8 = 0;
LABEL_15:

  return v8;
}

void nw_endpoint_flow_start_child(void *a1)
{
  v154 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v71 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v150 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v71, type, &v150))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v72 = __nwlog_obj();
        v73 = type[0];
        if (os_log_type_enabled(v72, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v150 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v72 = __nwlog_obj();
        v90 = type[0];
        v91 = os_log_type_enabled(v72, type[0]);
        if (backtrace_string)
        {
          if (v91)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_mode";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v72, v90, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_159;
        }

        if (v91)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v72, v90, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v72 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v72, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v72, v104, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_159:
    if (v71)
    {
      free(v71);
    }

    v3 = 0;
    goto LABEL_162;
  }

  v3 = v1[29];

  if (v3 == 2)
  {
    v4 = v2;
    v5 = v4[284];
    v145 = v4;

    if ((v5 & 0x40) != 0)
    {
      goto LABEL_32;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_31:

LABEL_32:
      v25 = nw_endpoint_handler_copy_flow(v145);
      v26 = nw_endpoint_handler_copy_endpoint(v145);
      v27 = v145;
      v146 = v27[4];

      v28 = _nw_parameters_copy(v146);
      v29 = *(v25 + 94);
      if (!v29)
      {
        goto LABEL_64;
      }

      v30 = v29[5];
      v31 = *(v25 + 94);
      if (v30 != &nw_protocol_ref_counted_handle)
      {
        if (v30 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v31) = 0;
          v32 = 1;
          goto LABEL_40;
        }

        v31 = v29[8];
        if (!v31)
        {
          v32 = 1;
          goto LABEL_40;
        }
      }

      v33 = *(v31 + 88);
      v32 = 0;
      if (v33)
      {
        *(v31 + 88) = v33 + 1;
      }

      LOBYTE(v31) = -1;
LABEL_40:
      *type = v29;
      v149 = v31;
      v34 = v29[3];
      if (v34)
      {
        v35 = *(v34 + 136);
        if (v35)
        {
          v37 = v35();
          if (v32)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      v74 = v29;
      v75 = __nwlog_obj();
      v76 = v74[2];
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_remote_endpoint";
      if (!v76)
      {
        v76 = "invalid";
      }

      *&buf[12] = 2082;
      *&buf[14] = v76;
      *&buf[22] = 2048;
      v141 = v74;
      *&buf[24] = v74;
      v143 = _os_log_send_and_compose_impl();

      v150 = OS_LOG_TYPE_ERROR;
      v147 = 0;
      v77 = v143;
      if (!__nwlog_fault(v143, &v150, &v147))
      {
LABEL_211:
        if (v77)
        {
          free(v77);
        }

        v37 = 0;
        if (v32)
        {
LABEL_44:
          if (v37)
          {
            v38 = v37;

            v26 = v38;
          }

          v39 = *(v25 + 94);
          if (v39)
          {
            v40 = v39[5];
            v41 = *(v25 + 94);
            if (v40 != &nw_protocol_ref_counted_handle)
            {
              if (v40 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v41) = 0;
                v42 = 1;
                goto LABEL_54;
              }

              v41 = v39[8];
              if (!v41)
              {
                v42 = 1;
                goto LABEL_54;
              }
            }

            v43 = *(v41 + 88);
            v42 = 0;
            if (v43)
            {
              *(v41 + 88) = v43 + 1;
            }

            LOBYTE(v41) = -1;
LABEL_54:
            *type = v39;
            v149 = v41;
            v44 = v39[3];
            if (v44)
            {
              v45 = *(v44 + 112);
              if (v45)
              {
                v46 = v45(v39, v36);
                if (v42)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }
            }

            v81 = v39;
            v82 = __nwlog_obj();
            v83 = v81[2];
            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            if (!v83)
            {
              v83 = "invalid";
            }

            *&buf[12] = 2082;
            *&buf[14] = v83;
            *&buf[22] = 2048;
            v84 = v81;
            *&buf[24] = v81;
            v144 = _os_log_send_and_compose_impl();

            v150 = OS_LOG_TYPE_ERROR;
            v147 = 0;
            v85 = v144;
            if (!__nwlog_fault(v144, &v150, &v147))
            {
LABEL_221:
              if (v85)
              {
                free(v85);
              }

              v46 = 0;
              if (v42)
              {
                goto LABEL_58;
              }

LABEL_57:
              nw::release_if_needed<nw_protocol *>(type);
LABEL_58:
              if (v46)
              {
                v47 = _nw_parameters_copy(v46);

                if (v37)
                {
                  v48 = v37;
                  is_registered = _nw_endpoint_is_registered(v48);

                  if (is_registered)
                  {
                    v50 = v48;
                    v51 = _nw_endpoint_copy_context();

                    nw_parameters_set_context(v47, v51);
                  }
                }

                v28 = v47;
              }

LABEL_63:

LABEL_64:
              nw_parameters_clear_protocol_stack(v28, 5);
              if ((*(v25 + 35) & 0x20) == 0)
              {
LABEL_69:
                v53 = v27;
                os_unfair_lock_lock(v53 + 28);
                v54 = v53[8];
                os_unfair_lock_unlock(v53 + 28);

                has_custom_proxy_configs = nw_parameters_has_custom_proxy_configs(v28);
                should_use_proxy = nw_endpoint_proxy_handler_should_use_proxy(v53, v54, has_custom_proxy_configs);

                if (should_use_proxy)
                {
                  if (nw_parameters_get_logging_disabled(v28))
                  {
                    nw_parameters_set_website_attribution(v28, 0);
                  }

                  else
                  {
                    v57 = v53;
                    v58 = v26;
                    v59 = v28;
                    v60 = v59;
                    if (v58)
                    {
                      if (v59)
                      {
                        v142 = v58;
                        known_tracker_name = _nw_endpoint_get_known_tracker_name(v142);

                        if (!known_tracker_name || (v62 = v142, v63 = _nw_endpoint_hostname_matches_tracker(v62), v62, (v63 & 1) == 0))
                        {
                          v64 = v142;
                          v65 = _nw_endpoint_get_type(v64);

                          if (v65 == 2)
                          {
                            v66 = v64;
                            hostname = _nw_endpoint_get_hostname(v66);

                            if (hostname)
                            {
                              v153 = 0;
                              v152 = 0u;
                              memset(buf, 0, sizeof(buf));
                              nw_parameters_to_ne_app_context(v60, buf);
                              *type = 0;
                              v150 = OS_LOG_TYPE_DEFAULT;
                              disposition = ne_tracker_get_disposition();
                              if (disposition != 1)
                              {
                                _nw_parameters_set_is_known_tracker(v60, 1);
                                nw_endpoint_set_tracker_owner(v66, *type);
                                nw_endpoint_set_can_block_request(v66, v150);
                                nw_endpoint_set_known_tracker_name(v66, hostname);
                                nw_endpoint_set_is_approved_app_domain(v66, disposition == 3);
                              }

                              if (*type)
                              {
                                free(*type);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                inner = nw_endpoint_handler_create_inner(v26, v28, nw_endpoint_flow_receive_report, v53, v53, 0, 0, 0);
                v69 = *(v25 + 116);
                *(v25 + 116) = inner;

                *(v53 + 20) = 786435;
                nw_endpoint_handler_report(v53, 0, v53 + 40, 0);
                nw_endpoint_handler_start(*(v25 + 116));

                goto LABEL_183;
              }

              nw_parameters_set_use_enhanced_privacy_mode(v28);
              v52 = nw_parameters_copy_context(v146);
              if (nw_context_get_privacy_level(v52) != 4)
              {
LABEL_68:

                goto LABEL_69;
              }

              if (v28)
              {
                _nw_parameters_set_inherited_from_silent_context(v28, 1);
                goto LABEL_68;
              }

              v113 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_parameters_set_inherited_from_silent_context";
              v114 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v150 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v114, type, &v150))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v115 = __nwlog_obj();
                  v116 = type[0];
                  if (os_log_type_enabled(v115, type[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_parameters_set_inherited_from_silent_context";
                    _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null parameters", buf, 0xCu);
                  }
                }

                else
                {
                  if (v150 == OS_LOG_TYPE_INFO)
                  {
                    v131 = __nw_create_backtrace_string();
                    v132 = __nwlog_obj();
                    v133 = type[0];
                    v134 = os_log_type_enabled(v132, type[0]);
                    if (v131)
                    {
                      if (v134)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_parameters_set_inherited_from_silent_context";
                        *&buf[12] = 2082;
                        *&buf[14] = v131;
                        _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v131);
                    }

                    else
                    {
                      if (v134)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_parameters_set_inherited_from_silent_context";
                        _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
                      }
                    }

                    goto LABEL_237;
                  }

                  v115 = __nwlog_obj();
                  v137 = type[0];
                  if (os_log_type_enabled(v115, type[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_parameters_set_inherited_from_silent_context";
                    _os_log_impl(&dword_181A37000, v115, v137, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_237:
              if (v114)
              {
                free(v114);
              }

              goto LABEL_68;
            }

            if (v150 == OS_LOG_TYPE_FAULT)
            {
              v86 = __nwlog_obj();
              v87 = v150;
              if (os_log_type_enabled(v86, v150))
              {
                v88 = v84[2];
                if (!v88)
                {
                  v88 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_parameters";
                *&buf[12] = 2082;
                *&buf[14] = v88;
                *&buf[22] = 2048;
                *&buf[24] = v84;
                _os_log_impl(&dword_181A37000, v86, v87, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 0x20u);
              }
            }

            else
            {
              if (v147 == 1)
              {
                v100 = __nw_create_backtrace_string();
                v101 = __nwlog_obj();
                v139 = v150;
                v102 = os_log_type_enabled(v101, v150);
                if (v100)
                {
                  if (v102)
                  {
                    v103 = v84[2];
                    if (!v103)
                    {
                      v103 = "invalid";
                    }

                    *buf = 136446978;
                    *&buf[4] = "__nw_protocol_get_parameters";
                    *&buf[12] = 2082;
                    *&buf[14] = v103;
                    *&buf[22] = 2048;
                    *&buf[24] = v84;
                    *&buf[32] = 2082;
                    *&buf[34] = v100;
                    _os_log_impl(&dword_181A37000, v101, v139, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v100);
                }

                else
                {
                  if (v102)
                  {
                    v136 = v84[2];
                    if (!v136)
                    {
                      v136 = "invalid";
                    }

                    *buf = 136446722;
                    *&buf[4] = "__nw_protocol_get_parameters";
                    *&buf[12] = 2082;
                    *&buf[14] = v136;
                    *&buf[22] = 2048;
                    *&buf[24] = v84;
                    _os_log_impl(&dword_181A37000, v101, v139, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace", buf, 0x20u);
                  }
                }

                goto LABEL_220;
              }

              v86 = __nwlog_obj();
              v111 = v150;
              if (os_log_type_enabled(v86, v150))
              {
                v112 = v84[2];
                if (!v112)
                {
                  v112 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_parameters";
                *&buf[12] = 2082;
                *&buf[14] = v112;
                *&buf[22] = 2048;
                *&buf[24] = v84;
                _os_log_impl(&dword_181A37000, v86, v111, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded", buf, 0x20u);
              }
            }

LABEL_220:
            v85 = v144;
            goto LABEL_221;
          }

          v92 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v93 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v150 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v93, type, &v150))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v94 = __nwlog_obj();
              v95 = type[0];
              if (os_log_type_enabled(v94, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_get_parameters";
                _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null protocol", buf, 0xCu);
              }
            }

            else
            {
              if (v150 == OS_LOG_TYPE_INFO)
              {
                v105 = __nw_create_backtrace_string();
                v106 = __nwlog_obj();
                v107 = type[0];
                v108 = os_log_type_enabled(v106, type[0]);
                if (v105)
                {
                  if (v108)
                  {
                    *buf = 136446466;
                    *&buf[4] = "__nw_protocol_get_parameters";
                    *&buf[12] = 2082;
                    *&buf[14] = v105;
                    _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v105);
                }

                else
                {
                  if (v108)
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_get_parameters";
                    _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                  }
                }

                goto LABEL_231;
              }

              v94 = __nwlog_obj();
              v130 = type[0];
              if (os_log_type_enabled(v94, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_get_parameters";
                _os_log_impl(&dword_181A37000, v94, v130, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_231:
          if (v93)
          {
            free(v93);
          }

          v46 = 0;
          goto LABEL_63;
        }

LABEL_43:
        nw::release_if_needed<nw_protocol *>(type);
        goto LABEL_44;
      }

      if (v150 == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = v150;
        if (os_log_type_enabled(v78, v150))
        {
          v80 = v141[2];
          if (!v80)
          {
            v80 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v80;
          *&buf[22] = 2048;
          *&buf[24] = v141;
          _os_log_impl(&dword_181A37000, v78, v79, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 0x20u);
        }
      }

      else
      {
        if (v147 == 1)
        {
          v96 = __nw_create_backtrace_string();
          v97 = __nwlog_obj();
          v138 = v150;
          v98 = os_log_type_enabled(v97, v150);
          if (v96)
          {
            if (v98)
            {
              v99 = v141[2];
              if (!v99)
              {
                v99 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v99;
              *&buf[22] = 2048;
              *&buf[24] = v141;
              *&buf[32] = 2082;
              *&buf[34] = v96;
              _os_log_impl(&dword_181A37000, v97, v138, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v96);
          }

          else
          {
            if (v98)
            {
              v135 = v141[2];
              if (!v135)
              {
                v135 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v135;
              *&buf[22] = 2048;
              *&buf[24] = v141;
              _os_log_impl(&dword_181A37000, v97, v138, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace", buf, 0x20u);
            }
          }

          goto LABEL_210;
        }

        v78 = __nwlog_obj();
        v109 = v150;
        if (os_log_type_enabled(v78, v150))
        {
          v110 = v141[2];
          if (!v110)
          {
            v110 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v110;
          *&buf[22] = 2048;
          *&buf[24] = v141;
          _os_log_impl(&dword_181A37000, v78, v109, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_210:
      v77 = v143;
      goto LABEL_211;
    }

    v7 = v145;

    v8 = v7;
    v9 = *(v145 + 284);

    if (v9)
    {
      v10 = "dry-run ";
    }

    else
    {
      v10 = "";
    }

    v11 = nw_endpoint_handler_copy_endpoint(v8);
    v12 = v11;
    if (v11)
    {
      logging_description = _nw_endpoint_get_logging_description(v11);
    }

    else
    {
      logging_description = "<NULL>";
    }

    id_str = v7->id_str;

    v15 = v8;
    v16 = v15;
    v17 = v15[30];
    if (v17 > 5)
    {
      v18 = "unknown-state";
    }

    else
    {
      v18 = off_1E6A31048[v17];
    }

    v19 = v16;
    v20 = v19;
    v21 = v2[29];
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          v22 = "proxy";
          goto LABEL_30;
        case 4:
          v22 = "fallback";
          goto LABEL_30;
        case 5:
          v22 = "transform";
          goto LABEL_30;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          v22 = "path";
          goto LABEL_30;
        case 1:
          v22 = "resolver";
          goto LABEL_30;
        case 2:
          v22 = nw_endpoint_flow_mode_string(v19[33]);
LABEL_30:

          v23 = v20;
          os_unfair_lock_lock(v23 + 28);
          v24 = v23[8];
          os_unfair_lock_unlock(v23 + 28);

          *buf = 136447746;
          *&buf[4] = "nw_endpoint_flow_start_child";
          *&buf[12] = 2082;
          *&buf[14] = id_str;
          *&buf[22] = 2082;
          *&buf[24] = v10;
          *&buf[32] = 2082;
          *&buf[34] = logging_description;
          *&buf[42] = 2082;
          *&buf[44] = v18;
          *&buf[52] = 2082;
          *&buf[54] = v22;
          *&buf[62] = 2114;
          *&v152 = v24;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] creating and starting child handler", buf, 0x48u);

          goto LABEL_31;
      }
    }

    v22 = "unknown-mode";
    goto LABEL_30;
  }

LABEL_162:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v117 = gLogObj;
  if (v3 > 5)
  {
    v118 = "unknown-mode";
  }

  else
  {
    v118 = off_1E6A31018[v3];
  }

  *buf = 136446722;
  *&buf[4] = "nw_endpoint_flow_start_child";
  *&buf[12] = 2082;
  *&buf[14] = v118;
  *&buf[22] = 2082;
  *&buf[24] = "flow";
  v119 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v150 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v119, type, &v150))
  {
LABEL_181:
    if (!v119)
    {
      goto LABEL_183;
    }

LABEL_182:
    free(v119);
    goto LABEL_183;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v120 = gLogObj;
    v121 = type[0];
    if (os_log_type_enabled(v120, type[0]))
    {
      if (v3 > 5)
      {
        v122 = "unknown-mode";
      }

      else
      {
        v122 = off_1E6A31018[v3];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_flow_start_child";
      *&buf[12] = 2082;
      *&buf[14] = v122;
      *&buf[22] = 2082;
      *&buf[24] = "flow";
      _os_log_impl(&dword_181A37000, v120, v121, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_180:

    goto LABEL_181;
  }

  if (v150 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v120 = gLogObj;
    v127 = type[0];
    if (os_log_type_enabled(v120, type[0]))
    {
      if (v3 > 5)
      {
        v128 = "unknown-mode";
      }

      else
      {
        v128 = off_1E6A31018[v3];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_flow_start_child";
      *&buf[12] = 2082;
      *&buf[14] = v128;
      *&buf[22] = 2082;
      *&buf[24] = "flow";
      _os_log_impl(&dword_181A37000, v120, v127, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_180;
  }

  v123 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v120 = gLogObj;
  v124 = type[0];
  v125 = os_log_type_enabled(v120, type[0]);
  if (!v123)
  {
    if (v125)
    {
      if (v3 > 5)
      {
        v129 = "unknown-mode";
      }

      else
      {
        v129 = off_1E6A31018[v3];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_flow_start_child";
      *&buf[12] = 2082;
      *&buf[14] = v129;
      *&buf[22] = 2082;
      *&buf[24] = "flow";
      _os_log_impl(&dword_181A37000, v120, v124, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_180;
  }

  if (v125)
  {
    if (v3 > 5)
    {
      v126 = "unknown-mode";
    }

    else
    {
      v126 = off_1E6A31018[v3];
    }

    *buf = 136446978;
    *&buf[4] = "nw_endpoint_flow_start_child";
    *&buf[12] = 2082;
    *&buf[14] = v126;
    *&buf[22] = 2082;
    *&buf[24] = "flow";
    *&buf[32] = 2082;
    *&buf[34] = v123;
    _os_log_impl(&dword_181A37000, v120, v124, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v123);
  if (v119)
  {
    goto LABEL_182;
  }

LABEL_183:
}

uint64_t _nw_protocol_stack_clear_protocols_at_level(uint64_t a1, int a2)
{

  sub_181B1C7E4(v3, a2);
}

void nw_endpoint_transform_add_children(NWConcrete_nw_endpoint_handler *a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v27 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v76) = 0;
    if (__nwlog_fault(v27, type, &v76))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v76 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v31 = type[0];
        v32 = os_log_type_enabled(v28, type[0]);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_mode";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_49;
        }

        if (v32)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v33 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_49:
    if (v27)
    {
      free(v27);
    }

    mode = 0;
    goto LABEL_52;
  }

  mode = v1->mode;

  if (mode == 5)
  {
    v58 = nw_endpoint_handler_copy_transform(v2);
    v4 = v2;
    os_unfair_lock_lock(&v4->lock);
    v57 = v4->current_path;
    os_unfair_lock_unlock(&v4->lock);

    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 1;
    v5 = v4;
    v59 = v5[4];

    v6 = nw_parameters_copy_transform_array(v59);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v83 = __Block_byref_object_copy__82355;
    *&v84 = __Block_byref_object_dispose__82356;
    *(&v84 + 1) = 0;
    *type = 0;
    v71 = type;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__82355;
    v74 = __Block_byref_object_dispose__82356;
    v75 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL34nw_endpoint_transform_add_childrenP30NWConcrete_nw_endpoint_handler_block_invoke;
    aBlock[3] = &unk_1E6A3B3C8;
    v7 = v59;
    v63 = v7;
    v8 = v58;
    v64 = v8;
    v9 = v5;
    v65 = v9;
    v67 = &v76;
    v10 = v57;
    v66 = v10;
    v68 = buf;
    v69 = type;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
    }

    if (*(v77 + 24) != 1)
    {
      goto LABEL_16;
    }

    v11 = *(v8 + 7);
    v12 = _nw_parameters_copy(v7);
    v13 = v12;
    if (v12)
    {
      _nw_parameters_clear_transforms(v12);
LABEL_8:
      *v85 = 0;
      *&v85[8] = 0;
      if (nw_path_get_client_id(v10, v85))
      {
        nw_parameters_set_parent_id_internal(v13, v85);
      }

      endpoint_without_alternatives = nw_endpoint_transform_create_endpoint_without_alternatives(v9, v11);
      inner = nw_endpoint_handler_create_inner(endpoint_without_alternatives, v13, nw_endpoint_transform_receive_report, v9, v9, 0, 0, 0);
      v16 = *(v8 + 1);
      if (!v16)
      {
        v17 = _nw_array_create();
        v18 = *(v8 + 1);
        *(v8 + 1) = v17;

        v16 = *(v8 + 1);
      }

      if (v16 && inner)
      {
        _nw_array_append(v16, inner);
      }

LABEL_16:
      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        if (*(v71 + 5))
        {
          count = _nw_array_get_count(v19);
          if (count == xpc_array_get_count(*(v71 + 5)))
          {
            combined_array = nw_array_create_combined_array(*(v8 + 1), *(*&buf[8] + 40));
            v22 = *(v8 + 1);
            *(v8 + 1) = combined_array;

            if (!*(v8 + 3))
            {
              v23 = xpc_array_create(0, 0);
              v24 = *(v8 + 3);
              *(v8 + 3) = v23;
            }

            v25 = *(v71 + 5);
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = ___ZL34nw_endpoint_transform_add_childrenP30NWConcrete_nw_endpoint_handler_block_invoke_101;
            applier[3] = &unk_1E6A3D300;
            v61 = v8;
            xpc_array_apply(v25, applier);
          }
        }
      }

      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v76, 8);
      goto LABEL_86;
    }

    v34 = __nwlog_obj();
    *v85 = 136446210;
    *&v85[4] = "nw_parameters_clear_transforms";
    v56 = _os_log_send_and_compose_impl();

    v81 = OS_LOG_TYPE_ERROR;
    v80 = 0;
    v35 = v56;
    if (!__nwlog_fault(v56, &v81, &v80))
    {
LABEL_94:
      if (v35)
      {
        free(v35);
      }

      goto LABEL_8;
    }

    if (v81 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v53 = v81;
      if (os_log_type_enabled(v36, v81))
      {
        *v85 = 136446210;
        *&v85[4] = "nw_parameters_clear_transforms";
        _os_log_impl(&dword_181A37000, v36, v53, "%{public}s called with null parameters", v85, 0xCu);
      }
    }

    else
    {
      if (v80 == 1)
      {
        v37 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v52 = v81;
        v38 = os_log_type_enabled(v54, v81);
        if (v37)
        {
          if (v38)
          {
            *v85 = 136446466;
            *&v85[4] = "nw_parameters_clear_transforms";
            *&v85[12] = 2082;
            *&v85[14] = v37;
            _os_log_impl(&dword_181A37000, v54, v52, "%{public}s called with null parameters, dumping backtrace:%{public}s", v85, 0x16u);
          }

          free(v37);
        }

        else
        {
          if (v38)
          {
            *v85 = 136446210;
            *&v85[4] = "nw_parameters_clear_transforms";
            _os_log_impl(&dword_181A37000, v54, v52, "%{public}s called with null parameters, no backtrace", v85, 0xCu);
          }
        }

        goto LABEL_93;
      }

      v36 = __nwlog_obj();
      v55 = v81;
      if (os_log_type_enabled(v36, v81))
      {
        *v85 = 136446210;
        *&v85[4] = "nw_parameters_clear_transforms";
        _os_log_impl(&dword_181A37000, v36, v55, "%{public}s called with null parameters, backtrace limit exceeded", v85, 0xCu);
      }
    }

LABEL_93:
    v35 = v56;
    goto LABEL_94;
  }

LABEL_52:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v39 = gLogObj;
  if (mode > 5)
  {
    v40 = "unknown-mode";
  }

  else
  {
    v40 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  *&buf[4] = "nw_endpoint_transform_add_children";
  *&buf[12] = 2082;
  *&buf[14] = v40;
  *&buf[22] = 2082;
  v83 = "transform";
  v41 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v76) = 0;
  if (!__nwlog_fault(v41, type, &v76))
  {
LABEL_84:
    if (!v41)
    {
      goto LABEL_86;
    }

LABEL_85:
    free(v41);
    goto LABEL_86;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    v43 = type[0];
    if (os_log_type_enabled(v42, type[0]))
    {
      if (mode > 5)
      {
        v44 = "unknown-mode";
      }

      else
      {
        v44 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_transform_add_children";
      *&buf[12] = 2082;
      *&buf[14] = v44;
      *&buf[22] = 2082;
      v83 = "transform";
      _os_log_impl(&dword_181A37000, v42, v43, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_83:

    goto LABEL_84;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    v49 = type[0];
    if (os_log_type_enabled(v42, type[0]))
    {
      if (mode > 5)
      {
        v50 = "unknown-mode";
      }

      else
      {
        v50 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_transform_add_children";
      *&buf[12] = 2082;
      *&buf[14] = v50;
      *&buf[22] = 2082;
      v83 = "transform";
      _os_log_impl(&dword_181A37000, v42, v49, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_83;
  }

  v45 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v42 = gLogObj;
  v46 = type[0];
  v47 = os_log_type_enabled(v42, type[0]);
  if (!v45)
  {
    if (v47)
    {
      if (mode > 5)
      {
        v51 = "unknown-mode";
      }

      else
      {
        v51 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_transform_add_children";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      *&buf[22] = 2082;
      v83 = "transform";
      _os_log_impl(&dword_181A37000, v42, v46, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_83;
  }

  if (v47)
  {
    if (mode > 5)
    {
      v48 = "unknown-mode";
    }

    else
    {
      v48 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    *&buf[4] = "nw_endpoint_transform_add_children";
    *&buf[12] = 2082;
    *&buf[14] = v48;
    *&buf[22] = 2082;
    v83 = "transform";
    LOWORD(v84) = 2082;
    *(&v84 + 2) = v45;
    _os_log_impl(&dword_181A37000, v42, v46, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v45);
  if (v41)
  {
    goto LABEL_85;
  }

LABEL_86:
}

void sub_181B2665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  _Block_object_dispose(&a38, 8);

  _Block_object_dispose((v45 - 192), 8);
  _Block_object_dispose((v45 - 232), 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_parameters_copy_transform_array_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = _nw_array_create();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (v4)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    _nw_array_append(v4, v3);
  }

  return 1;
}

BOOL nw_parameters_has_delegated_proc_uuid(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_delegated_proc_uuid(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_delegated_proc_uuid";
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
        v12 = "nw_parameters_has_delegated_proc_uuid";
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
            v12 = "nw_parameters_has_delegated_proc_uuid";
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
        v12 = "nw_parameters_has_delegated_proc_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_delegated_proc_uuid";
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

  return 0;
}

void nw_connection_report_state_with_handler_on_nw_queue(void *a1, unsigned int a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_connection_report_state_with_handler_on_nw_queue";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v30, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v45 = "nw_connection_report_state_with_handler_on_nw_queue";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v31, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v45 = "nw_connection_report_state_with_handler_on_nw_queue";
            v46 = 2082;
            *v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_73;
        }

        if (v35)
        {
          *buf = 136446210;
          v45 = "nw_connection_report_state_with_handler_on_nw_queue";
          _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v45 = "nw_connection_report_state_with_handler_on_nw_queue";
          _os_log_impl(&dword_181A37000, v31, v36, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_73:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_53;
  }

  nw_context_assert_queue(*(v7 + 3));
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_247);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (v8)
  {
    v10 = _Block_copy(v8);
    if (a2 - 4 > 0xFFFFFFFD)
    {
      if (a2 == 3)
      {
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_247);
        }

        if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
        }
      }

      goto LABEL_38;
    }

    v11 = *(v7 + 55);
    if (v11 && _nw_array_get_count(v11) && (v12 = *(v7 + 55)) != 0)
    {
      count = _nw_array_get_count(*(v7 + 55));
      v14 = _nw_array_get_object_at_index(v12, count - 1);
      if (a2 != 4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v14 = 0;
      if (a2 != 4)
      {
        goto LABEL_30;
      }
    }

    if (!v14)
    {
      v14 = [[NWConcrete_nw_error alloc] initWithDomain:50 code:?];
    }

LABEL_30:
    if (v14)
    {
      v19 = *(v7 + 2);
      if (!v19 || _nw_parameters_get_logging_disabled(v19))
      {
        goto LABEL_49;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v20 = gconnectionLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v7 + 112);
        if (a2 > 5)
        {
          v22 = "unknown";
        }

        else
        {
          v22 = off_1E6A2EFF0[a2];
        }

        *buf = 136446978;
        v45 = "nw_connection_report_state_with_handler_on_nw_queue";
        v46 = 1024;
        *v47 = v21;
        *&v47[4] = 2082;
        *&v47[6] = v22;
        v48 = 2114;
        v49 = v14;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] reporting state %{public}s error %{public}@", buf, 0x26u);
      }

      goto LABEL_48;
    }

LABEL_38:
    v23 = *(v7 + 2);
    if (!v23 || _nw_parameters_get_logging_disabled(v23))
    {
      v14 = 0;
      goto LABEL_49;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v7 + 112);
      if (a2 > 5)
      {
        v25 = "unknown";
      }

      else
      {
        v25 = off_1E6A2F020[a2];
      }

      *buf = 136446722;
      v45 = "nw_connection_report_state_with_handler_on_nw_queue";
      v46 = 1024;
      *v47 = v24;
      *&v47[4] = 2082;
      *&v47[6] = v25;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] reporting state %{public}s", buf, 0x1Cu);
    }

    v14 = 0;
LABEL_48:

LABEL_49:
    v26 = *(v7 + 48);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___ZL51nw_connection_report_state_with_handler_on_nw_queueP24NWConcrete_nw_connection21nw_connection_state_tU13block_pointerFvS1_PU22objcproto11OS_nw_error8NSObjectEPU28objcproto17OS_dispatch_queueS2__block_invoke;
    v37[3] = &unk_1E6A36198;
    v27 = v10;
    v41 = a2;
    v40 = v27;
    v38 = v14;
    v39 = v7;
    v28 = v14;
    nw_connection_async_on_queue(v39, v9, v26, v37);

    goto LABEL_53;
  }

  v15 = *(v7 + 2);
  if (v15 && !_nw_parameters_get_logging_disabled(v15))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v16 = gconnectionLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v7 + 112);
      if (a2 > 5)
      {
        v18 = "unknown";
      }

      else
      {
        v18 = off_1E6A2F020[a2];
      }

      *buf = 136446722;
      v45 = "nw_connection_report_state_with_handler_on_nw_queue";
      v46 = 1024;
      *v47 = v17;
      *&v47[4] = 2082;
      *&v47[6] = v18;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] not reporting state %{public}s", buf, 0x1Cu);
    }
  }

LABEL_53:
}

uint64_t sub_181B271F0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

nw_protocol_definition_t nw_protocol_copy_udp_definition(void)
{
  if (nw_protocol_setup_udp_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_udp_definition_onceToken, &__block_literal_global_5_47888);
  }

  v1 = g_udp_definition;

  return v1;
}

uint64_t __nwlog_get_sensitive_redacted_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  strcpy(__s2, "not redacted");
  __s1 = 0;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = 136642819;
  v25 = __s2;
  v0 = _os_log_send_and_compose_impl();
  if (v0 == &__s1)
  {
LABEL_14:
    result = strncmp(&__s1, __s2, 0xDuLL);
    nwlog_get_sensitive_redacted::sensitiveRedacted = result != 0;
    return result;
  }

  if (v0)
  {
LABEL_3:
    v1 = __s1;
    *v0 = __s1;
    if (v1)
    {
      v2 = v14;
      v0[1] = v14;
      if (v2)
      {
        v3 = v15;
        v0[2] = v15;
        if (v3)
        {
          v4 = v16;
          v0[3] = v16;
          if (v4)
          {
            v5 = v17;
            v0[4] = v17;
            if (v5)
            {
              v6 = v18;
              v0[5] = v18;
              if (v6)
              {
                v7 = v19;
                v0[6] = v19;
                if (v7)
                {
                  v8 = v20;
                  v0[7] = v20;
                  if (v8)
                  {
                    v9 = v21;
                    v0[8] = v21;
                    if (v9)
                    {
                      v0[9] = v22;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    free(v0);
    goto LABEL_14;
  }

  v11 = __nwlog_obj();
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  v24 = 136446210;
  v25 = "_strict_strlcpy";
  v12 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v12);
  if (!result)
  {
    free(v12);
    v0 = 0;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

double ___ZL34nw_flow_initialize_replay_protocolv_block_invoke()
{
  dword_1ED4113F4 = 0;
  unk_1ED4113E4 = 0u;
  strcpy(&g_replay_protocol_identifier, "flow_replay");
  *&result = 0x300000004;
  qword_1ED4113F8 = 0x300000004;
  qword_1ED411260 = nw_protocol_default_replace_input_handler;
  qword_1ED411290 = nw_protocol_default_input_available;
  qword_1ED411308 = nw_protocol_default_input_finished;
  qword_1ED411358 = nw_protocol_default_input_flush;
  qword_1ED4112B8 = nw_protocol_default_link_state;
  qword_1ED4112C0 = nw_protocol_default_get_parameters;
  qword_1ED4112D0 = nw_protocol_default_get_local;
  qword_1ED4112D8 = nw_protocol_default_get_remote;
  qword_1ED4112C8 = nw_protocol_default_get_path;
  qword_1ED411318 = nw_protocol_default_get_output_local;
  qword_1ED411320 = nw_protocol_default_get_output_interface;
  qword_1ED411288 = nw_protocol_default_error;
  qword_1ED411350 = nw_protocol_default_reset;
  qword_1ED411330 = nw_protocol_default_copy_info;
  qword_1ED411338 = nw_protocol_default_add_listen_handler;
  qword_1ED411340 = nw_protocol_default_remove_listen_handler;
  g_replay_protocol_callbacks = nw_flow_replay_add_input_handler;
  qword_1ED411258 = nw_flow_replay_remove_input_handler;
  qword_1ED4112A0 = nw_flow_replay_get_input_frames;
  qword_1ED4112A8 = nw_flow_replay_get_output_frames;
  qword_1ED4112B0 = nw_flow_replay_finalize_output_frames;
  qword_1ED411310 = nw_flow_replay_output_finished;
  qword_1ED411298 = nw_flow_replay_output_available;
  qword_1ED4112F0 = nw_flow_replay_notify;
  qword_1ED4112F8 = nw_flow_replay_updated_path;
  qword_1ED411268 = nw_flow_replay_connect;
  qword_1ED411270 = nw_flow_replay_disconnect;
  qword_1ED411278 = nw_flow_replay_connected;
  qword_1ED411348 = nw_flow_replay_get_message_properties;
  qword_1ED411328 = nw_flow_replay_waiting_for_output;
  qword_1ED4112E0 = nw_flow_replay_register_notification;
  qword_1ED4112E8 = nw_flow_replay_unregister_notification;
  qword_1ED411300 = nw_flow_passthrough_supports_external_data;
  qword_1ED411280 = nw_flow_replay_disconnected;
  return result;
}

void ___ZL36nw_endpoint_flow_validate_delegationP30NWConcrete_nw_endpoint_handler_block_invoke()
{
  v0 = nw_utilities_copy_local_entitlement_value("com.apple.private.network.delegation-allowlist");
  v1 = nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist;
  nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist = v0;

  if (!nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist)
  {
    v2 = nw_utilities_copy_local_entitlement_value("com.apple.private.network.delegation-whitelist");
    v3 = nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist;
    nw_endpoint_flow_validate_delegation(NWConcrete_nw_endpoint_handler *)::delegation_allowlist = v2;
  }
}

uint64_t nw_utilities_copy_local_entitlement_value(char *cStr)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!cStr)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_utilities_copy_local_entitlement_value";
    v13 = _os_log_send_and_compose_impl();

    LOBYTE(error) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v13, &error, &type))
    {
      goto LABEL_77;
    }

    if (error == 17)
    {
      v17 = __nwlog_obj();
      v42 = error;
      if (os_log_type_enabled(v17, error))
      {
        *buf = 136446210;
        v51 = "nw_utilities_copy_local_entitlement_value";
        _os_log_impl(&dword_181A37000, v17, v42, "%{public}s called with null entitlement", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v44 = error;
      v45 = os_log_type_enabled(v17, error);
      if (backtrace_string)
      {
        if (v45)
        {
          *buf = 136446466;
          v51 = "nw_utilities_copy_local_entitlement_value";
          v52 = 2082;
          v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v44, "%{public}s called with null entitlement, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_77;
      }

      if (v45)
      {
        *buf = 136446210;
        v51 = "nw_utilities_copy_local_entitlement_value";
        _os_log_impl(&dword_181A37000, v17, v44, "%{public}s called with null entitlement, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v46 = error;
      if (os_log_type_enabled(v17, error))
      {
        *buf = 136446210;
        v51 = "nw_utilities_copy_local_entitlement_value";
        _os_log_impl(&dword_181A37000, v17, v46, "%{public}s called with null entitlement, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_76:

    goto LABEL_77;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v3)
  {
    v4 = v3;
    v5 = SecTaskCreateFromSelf(v2);
    if (v5)
    {
      v6 = v5;
      error = 0;
      v7 = SecTaskCopyValueForEntitlement(v5, v4, &error);
      if (!error)
      {
        goto LABEL_57;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      *buf = 136446466;
      v51 = "nw_utilities_copy_local_entitlement_value";
      v52 = 2114;
      v53 = error;
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v47 = 0;
      if (__nwlog_fault(v9, &type, &v47))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (os_log_type_enabled(v10, type))
          {
            *buf = 136446466;
            v51 = "nw_utilities_copy_local_entitlement_value";
            v52 = 2114;
            v53 = error;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s SecTaskCopyValueForEntitlement %{public}@ failed", buf, 0x16u);
          }
        }

        else if (v47 == 1)
        {
          v22 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v23 = type;
          v24 = os_log_type_enabled(v10, type);
          if (v22)
          {
            if (v24)
            {
              *buf = 136446722;
              v51 = "nw_utilities_copy_local_entitlement_value";
              v52 = 2114;
              v53 = error;
              v54 = 2082;
              v55 = v22;
              _os_log_impl(&dword_181A37000, v10, v23, "%{public}s SecTaskCopyValueForEntitlement %{public}@ failed, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v22);
            if (!v9)
            {
              goto LABEL_55;
            }

LABEL_54:
            free(v9);
LABEL_55:
            if (error)
            {
              CFRelease(error);
              error = 0;
            }

LABEL_57:
            if (!v7)
            {
              v31 = 0;
LABEL_86:
              CFRelease(v6);
              CFRelease(v4);
              return v31;
            }

            v31 = _CFXPCCreateXPCObjectFromCFObject();
            if (!v31)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              *buf = 136446210;
              v51 = "nw_utilities_copy_local_entitlement_value";
              v33 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v47 = 0;
              if (__nwlog_fault(v33, &type, &v47))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v34 = gLogObj;
                  v35 = type;
                  if (os_log_type_enabled(v34, type))
                  {
                    *buf = 136446210;
                    v51 = "nw_utilities_copy_local_entitlement_value";
                    _os_log_impl(&dword_181A37000, v34, v35, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 0xCu);
                  }
                }

                else if (v47 == 1)
                {
                  v36 = __nw_create_backtrace_string();
                  v34 = __nwlog_obj();
                  v37 = type;
                  v38 = os_log_type_enabled(v34, type);
                  if (v36)
                  {
                    if (v38)
                    {
                      *buf = 136446466;
                      v51 = "nw_utilities_copy_local_entitlement_value";
                      v52 = 2082;
                      v53 = v36;
                      _os_log_impl(&dword_181A37000, v34, v37, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v36);
                    if (!v33)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_84;
                  }

                  if (v38)
                  {
                    *buf = 136446210;
                    v51 = "nw_utilities_copy_local_entitlement_value";
                    _os_log_impl(&dword_181A37000, v34, v37, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v34 = gLogObj;
                  v39 = type;
                  if (os_log_type_enabled(v34, type))
                  {
                    *buf = 136446210;
                    v51 = "nw_utilities_copy_local_entitlement_value";
                    _os_log_impl(&dword_181A37000, v34, v39, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

              if (v33)
              {
LABEL_84:
                free(v33);
              }
            }

LABEL_85:
            CFRelease(v7);
            goto LABEL_86;
          }

          if (v24)
          {
            *buf = 136446466;
            v51 = "nw_utilities_copy_local_entitlement_value";
            v52 = 2114;
            v53 = error;
            _os_log_impl(&dword_181A37000, v10, v23, "%{public}s SecTaskCopyValueForEntitlement %{public}@ failed, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v29 = type;
          if (os_log_type_enabled(v10, type))
          {
            *buf = 136446466;
            v51 = "nw_utilities_copy_local_entitlement_value";
            v52 = 2114;
            v53 = error;
            _os_log_impl(&dword_181A37000, v10, v29, "%{public}s SecTaskCopyValueForEntitlement %{public}@ failed, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

      if (!v9)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    CFRelease(v4);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446210;
    v51 = "nw_utilities_copy_local_entitlement_value";
    v13 = _os_log_send_and_compose_impl();

    LOBYTE(error) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v13, &error, &type))
    {
      if (error == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = error;
        if (os_log_type_enabled(v17, error))
        {
          *buf = 136446210;
          v51 = "nw_utilities_copy_local_entitlement_value";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s SecTaskCreateFromSelf failed", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v25 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v26 = error;
        v27 = os_log_type_enabled(v17, error);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v51 = "nw_utilities_copy_local_entitlement_value";
            v52 = 2082;
            v53 = v25;
            _os_log_impl(&dword_181A37000, v17, v26, "%{public}s SecTaskCreateFromSelf failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          if (!v13)
          {
            return 0;
          }

          goto LABEL_78;
        }

        if (v27)
        {
          *buf = 136446210;
          v51 = "nw_utilities_copy_local_entitlement_value";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s SecTaskCreateFromSelf failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v30 = error;
        if (os_log_type_enabled(v17, error))
        {
          *buf = 136446210;
          v51 = "nw_utilities_copy_local_entitlement_value";
          _os_log_impl(&dword_181A37000, v17, v30, "%{public}s SecTaskCreateFromSelf failed, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_76;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446466;
    v51 = "nw_utilities_copy_local_entitlement_value";
    v52 = 2082;
    v53 = cStr;
    v13 = _os_log_send_and_compose_impl();

    LOBYTE(error) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v13, &error, &type))
    {
      if (error == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = error;
        if (os_log_type_enabled(v14, error))
        {
          *buf = 136446466;
          v51 = "nw_utilities_copy_local_entitlement_value";
          v52 = 2082;
          v53 = cStr;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s CFStringCreateWithCString(%{public}s) failed", buf, 0x16u);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v19 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v20 = error;
        v21 = os_log_type_enabled(v14, error);
        if (v19)
        {
          if (v21)
          {
            *buf = 136446722;
            v51 = "nw_utilities_copy_local_entitlement_value";
            v52 = 2082;
            v53 = cStr;
            v54 = 2082;
            v55 = v19;
            _os_log_impl(&dword_181A37000, v14, v20, "%{public}s CFStringCreateWithCString(%{public}s) failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v19);
          if (!v13)
          {
            return 0;
          }

          goto LABEL_78;
        }

        if (v21)
        {
          *buf = 136446466;
          v51 = "nw_utilities_copy_local_entitlement_value";
          v52 = 2082;
          v53 = cStr;
          _os_log_impl(&dword_181A37000, v14, v20, "%{public}s CFStringCreateWithCString(%{public}s) failed, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v28 = error;
        if (os_log_type_enabled(v14, error))
        {
          *buf = 136446466;
          v51 = "nw_utilities_copy_local_entitlement_value";
          v52 = 2082;
          v53 = cStr;
          _os_log_impl(&dword_181A37000, v14, v28, "%{public}s CFStringCreateWithCString(%{public}s) failed, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }
  }

LABEL_77:
  if (v13)
  {
LABEL_78:
    free(v13);
  }

  return 0;
}

uint64_t sub_181B285A8(uint64_t a1, char a2, uint64_t *a3)
{
  result = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0);
  v7 = result;
  v8 = *a3;
  if (!*a3)
  {
    type metadata accessor for ProtocolStack();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 40) = xmmword_182AE3C80;
    *(v8 + 56) = 0xF000000000000007;
    *(v8 + 64) = 2;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = xmmword_182AE3C90;
    *(v8 + 104) = 0xF000000000000007;
    swift_beginAccess();
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    *(v8 + 48) = xmmword_182AE3CA0;
    result = sub_181A52FE0(v9, v10);
    *a3 = v8;
  }

  switch(a2)
  {
    case 1:

      sub_181F61FE0(v14, v7, v21);
      v15 = v21[0];
      v16 = v21[1];
      swift_beginAccess();
      v17 = *(v8 + 48);
      v18 = *(v8 + 56);
      *(v8 + 48) = v15;
      *(v8 + 56) = v16;
      sub_181A52FE0(v17, v18);
      break;
    case 2:
      v11 = v7 | 0xA000000000000000;
      v12 = *(v8 + 32);
      v13 = *(v8 + 40);
      *(v8 + 32) = a1;
      *(v8 + 40) = v11;

      sub_181A5301C(v12, v13);
      break;
    case 3:
      v19 = a1;
      v20 = v7 | 0x4000000000000000;

      sub_181B2A5BC(&v19);
      sub_181AAD084(v19, v20);
      break;
    default:
      return result;
  }
}

uint64_t sub_181B28748(uint64_t a1, char a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  result = sub_181AA8428(a4, a5);
  v12 = result;
  v13 = *a3;
  if (!*a3)
  {
    type metadata accessor for ProtocolStack();
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0;
    *(v13 + 40) = xmmword_182AE3C80;
    *(v13 + 56) = 0xF000000000000007;
    *(v13 + 64) = 2;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 88) = xmmword_182AE3C90;
    *(v13 + 104) = 0xF000000000000007;
    swift_beginAccess();
    v14 = *(v13 + 48);
    v15 = *(v13 + 56);
    *(v13 + 48) = xmmword_182AE3CA0;
    result = sub_181A52FE0(v14, v15);
    *a3 = v13;
  }

  switch(a2)
  {
    case 1:

      sub_181F61FE0(v18, v12, v25);
      v19 = v25[0];
      v20 = v25[1];
      swift_beginAccess();
      v21 = *(v13 + 48);
      v22 = *(v13 + 56);
      *(v13 + 48) = v19;
      *(v13 + 56) = v20;
      sub_181A52FE0(v21, v22);
      break;
    case 2:
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      *(v13 + 32) = a1;
      *(v13 + 40) = a7;

      sub_181A5301C(v16, v17);
      break;
    case 3:
      v23 = a1;
      v24 = v12 | 0x4000000000000000;

      sub_181B2A5BC(&v23);
      sub_181AAD084(v23, v24);
      break;
    default:
      return result;
  }
}

void sub_181B288D8(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[56 * v4];
  if (v12 != __dst || &v12[56 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 56 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[56 * v8];
  v17 = 56 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

uint64_t sub_181B28A14(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *v14 = *(a1 + 16);
  v15 = v2;
  v16 = v3;
  v17 = v4;
  sub_181F49A24(v2, v3, v4);
  if (qword_1ED4100E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED411CB8;
  v6 = unk_1ED411CC0;
  v7 = byte_1ED411CC8;
  v10 = word_1ED411CB0;
  v11 = qword_1ED411CB8;
  v12 = unk_1ED411CC0;
  v13 = byte_1ED411CC8;
  v8 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v14, &v10);
  sub_181F49A24(v5, v6, v7);

  sub_181F48350(v11, v12, v13);
  sub_181F48350(v15, v16, v17);
  return v8 & 1;
}

uint64_t nw_protocol_options_is_quic_connection(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_is_quic_connection(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_is_quic_connection";
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
        v12 = "nw_protocol_options_is_quic_connection";
        v6 = "%{public}s called with null options";
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
            v12 = "nw_protocol_options_is_quic_connection";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_options_is_quic_connection";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_is_quic_connection";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
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

void nw_quic_connection_set_idle_timeout(void *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_idle_timeout(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_idle_timeout";
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
        v14 = "nw_quic_connection_set_idle_timeout";
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
            v14 = "nw_quic_connection_set_idle_timeout";
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
        v14 = "nw_quic_connection_set_idle_timeout";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_idle_timeout";
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

LABEL_3:
}

uint64_t _nw_quic_connection_set_idle_timeout(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout) = a2;
    }
  }

  return result;
}

void nw_quic_connection_set_initial_max_streams_bidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_streams_bidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_streams_bidirectional";
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
            v14 = "nw_quic_connection_set_initial_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_streams_bidirectional";
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

LABEL_3:
}

void nw_quic_connection_set_max_streams_update_block(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_max_streams_update_block(v5, v6, v7);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_max_streams_update_block";
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
        v18 = "nw_quic_connection_set_max_streams_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
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
            v18 = "nw_quic_connection_set_max_streams_update_block";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_max_streams_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_max_streams_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

void _nw_quic_connection_set_max_streams_update_blockTm(uint64_t a1, void *aBlock, void *a3, void *a4, void *a5)
{
  v9 = _Block_copy(aBlock);
  v10 = a3;
  sub_181B29660(a1, v9, v10, a4, a5);

  _Block_release(v9);
}

void sub_181B29660(uint64_t a1, void *aBlock, void *a3, void *a4, void *a5)
{
  v9 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v10 = sub_181AA8420(a1);
  if (v10)
  {
    v11 = *(*v10 + 128);
    v12 = v10;
    swift_beginAccess();
    v13 = *(v12 + v11);

    if (v13)
    {
      v14 = _Block_copy(v9);
      _Block_release(v9);
      v15 = *(v13 + *a4);
      *(v13 + *a4) = v14;
      _Block_release(v15);
      v16 = *(v13 + *a5);
      *(v13 + *a5) = a3;

      v17 = a3;

      return;
    }
  }

  _Block_release(v9);
}

void nw_quic_connection_set_keepalive_count(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_keepalive_count(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_keepalive_count";
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
        v14 = "nw_quic_connection_set_keepalive_count";
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
            v14 = "nw_quic_connection_set_keepalive_count";
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
        v14 = "nw_quic_connection_set_keepalive_count";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_keepalive_count";
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

LABEL_3:
}

uint64_t _nw_quic_connection_set_max_udp_payload_sizeTm(uint64_t a1, __int16 a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v7 = *(*result + 128);
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      *(v9 + *a3) = a2;
    }
  }

  return result;
}

uint64_t sub_181B29AC4(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838700);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_1820E5268(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838700);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 56;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181B288D8(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838700);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 56;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_181F47360(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

void *sub_181B29C9C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        v7 = a2 + 56 * v5;
        v8 = *(a3 + 16);
        *v7 = *a3;
        *(v7 + 16) = v8;
        *(v7 + 32) = *(a3 + 32);
        *(v7 + 48) = *(a3 + 48);
        v6 = __OFADD__(v3, 1);
        v9 = v3 + 1;
        if (!v6)
        {
          result[1] = v9;
          return sub_181B29D44(a3, v10);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void nw_parameters_set_context(char *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_context(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_context";
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
        v12 = "nw_parameters_set_context";
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
            v12 = "nw_parameters_set_context";
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
        v12 = "nw_parameters_set_context";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_context";
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

void nw_parameters_set_is_third_party_web_content(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_is_third_party_web_content(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_is_third_party_web_content";
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
        v12 = "nw_parameters_set_is_third_party_web_content";
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
            v12 = "nw_parameters_set_is_third_party_web_content";
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
        v12 = "nw_parameters_set_is_third_party_web_content";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_is_third_party_web_content";
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

uint64_t nw_protocol_create_options(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_create_options();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_create_options";
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
        v12 = "nw_protocol_create_options";
        v6 = "%{public}s called with null definition";
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
            v12 = "nw_protocol_create_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_create_options";
        v6 = "%{public}s called with null definition, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_create_options";
        v6 = "%{public}s called with null definition, backtrace limit exceeded";
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

uint64_t sub_181B2A5BC(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  if (v4 >> 62)
  {
    if (v4 >> 62 != 1)
    {
LABEL_12:
      result = sub_181A54748();
      v19 = result;
      v15 = *(result + 24);
      v16 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        v14 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (*(v14 + 16) < v16 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v16);
          v14 = v19;
        }

        sub_181B2A7C0((v14 + 16), v14 + 40, v3, v4);
        goto LABEL_17;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v5 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
  }

  ObjectType = swift_getObjectType();
  v7 = *(v5 + 328);
  sub_181B2C3E0(v3, v4);
  if ((v7(ObjectType, v5) & 1) == 0)
  {
    sub_181AAD084(v3, v4);
    goto LABEL_12;
  }

  v8 = sub_181A54748();
  v18 = sub_181AC9084();
  sub_181CC402C(v8);

  v9 = v18;
  *(v2 + 16) = v18;

  v11 = *(v18 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_21;
  }

  v13 = swift_isUniquelyReferenced_nonNull_native();
  if (*(v18 + 16) < v12 || (v13 & 1) == 0)
  {
    sub_181B2C3FC(v13, v12);
    v9 = v18;
  }

  sub_181B2A7C0((v9 + 16), v9 + 40, v3, v4);
  *(v2 + 16) = v9;

  v14 = *sub_182AD2388();

  sub_181AAD084(v3, v4);
LABEL_17:
  *(v2 + 24) = v14;
}

void *sub_181B2A7C0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result[1];
  v5 = result[2];
  v7 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (!v7)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = (a2 + 16 * v6);
        *v8 = a3;
        v8[1] = a4;
        v7 = __OFADD__(v4, 1);
        v9 = v4 + 1;
        if (!v7)
        {
          result[1] = v9;
          return sub_181B2C3E0(a3, a4);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t _nw_tcp_options_set_no_delay_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 2) == 0)
      {
        v7 = v6 | 2;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 2) != 0)
    {
      v7 = v6 & 0xFFFFFFFD;
      goto LABEL_8;
    }
  }

  return result;
}

void nw_parameters_set_indefinite(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_indefinite();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_indefinite";
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
        v11 = "nw_parameters_set_indefinite";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
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
            v11 = "nw_parameters_set_indefinite";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_indefinite";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_indefinite";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_set_skip_stack_trace_capture(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_skip_stack_trace_capture(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_skip_stack_trace_capture";
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
        v12 = "nw_parameters_set_skip_stack_trace_capture";
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
            v12 = "nw_parameters_set_skip_stack_trace_capture";
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
        v12 = "nw_parameters_set_skip_stack_trace_capture";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_skip_stack_trace_capture";
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

uint64_t nw_parameters_create_protocol_parameters(__int128 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_definition_create_with_identifier(a1);
    options = nw_protocol_create_options(v1);

    return options;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_parameters_create_protocol_parameters";
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
        v14 = "nw_parameters_create_protocol_parameters";
        v8 = "%{public}s called with null protocol_identifier";
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
            v14 = "nw_parameters_create_protocol_parameters";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol_identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_parameters_create_protocol_parameters";
        v8 = "%{public}s called with null protocol_identifier, no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_parameters_create_protocol_parameters";
        v8 = "%{public}s called with null protocol_identifier, backtrace limit exceeded";
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

  return 0;
}

uint64_t _nw_protocol_create_options()
{
  v0 = swift_unknownObjectRetain();
  v1 = sub_181B2C5AC(v0);
  swift_unknownObjectRelease();
  return v1;
}

void *sub_181B2B0E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_182AD2058();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181B2B19C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_182AD2058();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_181B2B254(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2);
  v5 = v1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort;
  *v5 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort);
  *(v5 + 2) = v4;
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
  if ((*(a1 + v6) & 0x10) != 0)
  {
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_13;
    }

    v8 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v7 |= 0x10u;
  }

  else
  {
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    v8 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v7 &= ~0x10u;
  }

  *(v1 + v8) = v7;
LABEL_13:
  if ((*(a1 + v6) & 0x80) != 0)
  {
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_19;
    }

    v9 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v7 |= 0x80u;
  }

  else
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    v9 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v7 &= ~0x80u;
  }

  *(v1 + v9) = v7;
LABEL_19:
  if (*(a1 + v6))
  {
    if (v7)
    {
      goto LABEL_25;
    }

    v10 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v7 |= 1u;
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }

    v10 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v7 &= ~1u;
  }

  *(v1 + v10) = v7;
LABEL_25:
  if ((*(a1 + v6) & 2) != 0)
  {
    if ((v7 & 2) != 0)
    {
      goto LABEL_31;
    }

    v11 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v12 = v7 | 2;
  }

  else
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_31;
    }

    v11 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v12 = v7 & 0xFFFD;
  }

  *(v1 + v11) = v12;
LABEL_31:
  v13 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  v14 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint) = v13;
  v15 = v13;

  v16 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((*(a1 + v6) & 0x100) != 0)
  {
    if ((*(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x100) != 0)
    {
      goto LABEL_37;
    }

    v16 |= 0x100u;
  }

  else
  {
    if ((*(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x100) == 0)
    {
      goto LABEL_37;
    }

    v16 &= ~0x100u;
  }

  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v16;
LABEL_37:
  if ((*(a1 + v6) & 0x200) != 0)
  {
    if ((v16 & 0x200) != 0)
    {
      goto LABEL_43;
    }

    v17 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v18 = v16 | 0x200;
  }

  else
  {
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    v17 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v18 = v16 & 0xFDFF;
  }

  *(v2 + v17) = v18;
LABEL_43:
  if (sub_181B53584(19))
  {
    v19 = sub_182AD3158();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_storageLock);
  os_unfair_lock_lock(v22 + 4);
  if (v21)
  {
    v23 = sub_181AB284C(v19, v21);
    v24 = OBJC_IVAR____TtC7Network8Endpoint_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v2 + v24);
    *(v2 + v24) = 0x8000000000000000;
    sub_181AB36FC(v23, 0x13u, isUniquelyReferenced_nonNull_native);
    *(v2 + v24) = v42;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v22 + 4);

  if (sub_181B53584(20))
  {
    v26 = sub_182AD3158();
    v28 = v27;
    os_unfair_lock_lock(v22 + 4);
    if (v28)
    {
      v29 = sub_181AB284C(v26, v28);
      v30 = OBJC_IVAR____TtC7Network8Endpoint_storage;
      swift_beginAccess();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v2 + v30);
      *(v2 + v30) = 0x8000000000000000;
      sub_181AB36FC(v29, 0x14u, v31);
      *(v2 + v30) = v43;
      swift_endAccess();
    }
  }

  else
  {
    os_unfair_lock_lock(v22 + 4);
  }

  os_unfair_lock_unlock(v22 + 4);

  v32 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  swift_beginAccess();
  *(v2 + v34) = v33;

  v35 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig);
  v36 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_echConfig);
  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_echConfig) = v35;
  v37 = v35;

  *(v2 + OBJC_IVAR____TtC7Network8Endpoint__publicKeys) = *(a1 + OBJC_IVAR____TtC7Network8Endpoint__publicKeys);

  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_signature) = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_signature);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  v39 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage);
  if (v39)
  {
    result = swift_slowAlloc();
    v40 = *v39;
    *(result + 4) = *(v39 + 2);
    *result = v40;
    *(v2 + OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage) = result;
  }

  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType) = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType);
  v41 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((v41 & 8) == 0 && (*(a1 + v6) & 8) != 0)
  {
    *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v41 | 8;
  }

  return result;
}

id sub_181B2B674(const char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for URLEndpoint();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = sub_182AD2058();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  if (a1)
  {
    v43 = v6;
    v40 = v4;
    v23 = v5;
    v24 = strlen(a1);
    v25 = *MEMORY[0x1E695E480];
    v26 = sub_182AD1F18();
    v27 = CFURLCreateAbsoluteURLWithBytes(v25, a1, v24, v26, 0, 0);
    if (v27)
    {
      v28 = v27;
      sub_182AD1FD8();

      (*(v17 + 56))(v12, 0, 1, v16);
    }

    else
    {
      (*(v17 + 56))(v12, 1, 1, v16);
    }

    sub_181B2BAC0(v12, v15);
    v29 = (*(v17 + 48))(v15, 1, v16);
    v30 = v43;
    if (v29 == 1)
    {
      v31 = &unk_1EA838BB0;
      v32 = v15;
    }

    else
    {
      v33 = v23;
      (*(v17 + 32))(v22, v15, v16);
      (*(v17 + 16))(v19, v22, v16);
      v34 = v40;
      sub_181B2BB30(v19, v40);
      if ((*(v30 + 48))(v34, 1, v33) != 1)
      {
        v36 = v41;
        sub_181B2BEE4(v34, v41);
        v37 = v42;
        sub_181A546E0(v36, v42, type metadata accessor for URLEndpoint);
        v38 = objc_allocWithZone(type metadata accessor for Endpoint(0));
        v39 = Endpoint.init(_:)(v37);
        sub_181A5513C(v36, type metadata accessor for URLEndpoint);
        (*(v17 + 8))(v22, v16);
        return v39;
      }

      (*(v17 + 8))(v22, v16);
      v31 = &unk_1EA83A470;
      v32 = v34;
    }

    sub_181F49A88(v32, v31);
  }

  return 0;
}

uint64_t sub_181B2BAC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_181B2BB30@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URLEndpoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 28);
  *(v7 + v9) = 0;
  *v7 = 0;
  v7[1] = 0;
  v10 = *(v8 + 20);
  sub_182AD1F58();
  sub_182AD2038();
  if (v11)
  {
    *(v7 + *(v4 + 24)) = sub_182184C38() & 1;
    sub_182AD2028();
    if (v12)
    {
      HIWORD(v22) = 0;
      v13 = sub_182AD3048();

      v14 = nw_utilities_port_for_string((v13 + 32), &v22 + 3);

      if (v14)
      {
        v15 = bswap32(HIWORD(v22)) >> 16;
        v16 = sub_182AD2058();
        (*(*(v16 - 8) + 8))(a1, v16);
        *(v7 + v9) = v15;
      }

      else
      {
        v21 = sub_182AD2058();
        (*(*(v21 - 8) + 8))(a1, v21);
      }
    }

    else
    {
      v20 = sub_182AD2058();
      (*(*(v20 - 8) + 8))(a1, v20);
    }

    sub_181B2BE24(v7, a2);
    (*(v5 + 56))(a2, 0, 1, v4);
    return sub_181B2BE88(v7);
  }

  else
  {
    v17 = sub_182AD2058();
    v18 = *(*(v17 - 8) + 8);
    v18(a1, v17);

    v18(v7 + v10, v17);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_181B2BE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLEndpoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181B2BE88(uint64_t a1)
{
  v2 = type metadata accessor for URLEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181B2BEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLEndpoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id Endpoint.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v4 = 0;
  v4[2] = 1;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v5 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v8 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v1[v8] = sub_181A552E8(v7);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v10 = swift_allocObject();
  *&v1[v9] = v10;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v7;
  *(v10 + 16) = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  sub_181ACC828(a1, &v1[OBJC_IVAR____TtC7Network8Endpoint_type], type metadata accessor for URLEndpoint);
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_181A5513C(a1, type metadata accessor for URLEndpoint);
  return v11;
}

void sub_181B2C138(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLEndpoint();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if (!a2)
  {
    goto LABEL_5;
  }

  v13 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v14 = a2;
  swift_beginAccess();
  sub_181ACC828(a2 + v13, v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  sub_181B2BEE4(v6, v12);
  sub_181ACC828(v12, v10, type metadata accessor for URLEndpoint);
  v15 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  v16 = Endpoint.init(_:)(v10);

  sub_181AB7264(v12, type metadata accessor for URLEndpoint);
LABEL_6:

  *(a1 + 368) = v16;
}

uint64_t _nw_protocol_options_set_legacy_parameters(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_181B2D13C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t _nw_parameters_set_context(char *a1, void *a2)
{
  swift_unknownObjectRetain();
  sub_1821FF1F4(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_181B2C3E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    return swift_unknownObjectRetain();
  }

  if (!(a2 >> 62))
  {
  }

  return result;
}

uint64_t sub_181B2C3FC(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386F8);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_181E5D914(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386F8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 25;
      }

      *(v8 + 16) = v10 >> 4;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181EDDEE0(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386F8);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 25;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 4;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181B688DC(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_181B2C5AC(uint64_t definition1)
{
  v1 = definition1;
  if (qword_1ED410028 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED40FF98)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED40FF98);
  if (definition1)
  {
    v2 = *(&xmmword_1ED40FF68 + 1);
    v3 = unk_1ED40FF78;
    v4 = byte_1ED40FF80;
    v5 = xmmword_1ED40FF68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
    swift_allocObject();
    v6 = sub_181CFD414(v5, v2, v3, v4, 0);
LABEL_16:
    v9 = v6;
    sub_181F49A24(v2, v3, v4);
    return v9;
  }

  if (qword_1ED40FE40 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED411BE8)
  {
    goto LABEL_59;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED411BE8);
  if (definition1)
  {
    v2 = *(&xmmword_1ED411BB8 + 1);
    v3 = unk_1ED411BC8;
    v4 = byte_1ED411BD0;
    v7 = xmmword_1ED411BB8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0);
    swift_allocObject();
    v6 = sub_181CFD414(v7, v2, v3, v4, 0);
    goto LABEL_16;
  }

  if (qword_1ED4102F0 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED411D90)
  {
    goto LABEL_60;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED411D90);
  if (definition1)
  {
    v2 = *(&xmmword_1ED411D60 + 1);
    v3 = unk_1ED411D70;
    LOBYTE(v4) = byte_1ED411D78;
    v8 = xmmword_1ED411D60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
    swift_allocObject();
    v6 = sub_181BB68A0(v8, v2, v3, v4, 0);
    goto LABEL_16;
  }

  if (qword_1ED410038 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED411C78)
  {
    goto LABEL_61;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED411C78);
  if (definition1)
  {
    v10 = *(&xmmword_1ED411C48 + 1);
    v11 = unk_1ED411C58;
    v12 = byte_1ED411C60;
    v62 = 0u;
    v63 = 0u;
    *&v64 = 0;
    *(&v64 + 1) = 0x100000201;
    v13 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v14 = sub_181AAC92C(v13, v10, v11, v12, &v62);
    sub_181F49A24(v10, v11, v12);
    return v14;
  }

  if (qword_1ED40FF40 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED411C20)
  {
    goto LABEL_62;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED411C20);
  if (definition1)
  {
    v15 = *(&xmmword_1ED411BF0 + 1);
    v16 = unk_1ED411C00;
    v17 = byte_1ED411C08;
    v18 = xmmword_1ED411BF0;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
    swift_allocObject();
    sub_181F49A24(v15, v16, v17);
    v19 = sub_181AACB6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
    swift_allocObject();
    return sub_181AA94EC(v18, v15, v16, v17, v19);
  }

  if (qword_1ED40FE60 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED40FE98)
  {
    goto LABEL_63;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED40FE98);
  if (definition1)
  {
    v20 = *(&xmmword_1ED40FE68 + 1);
    v21 = unk_1ED40FE78;
    v22 = byte_1ED40FE80;
    v23 = xmmword_1ED40FE68;
    type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 1;
    *(v24 + 32) = 0;
    *(v24 + 40) = 1;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
    swift_allocObject();
    sub_181F49A24(v20, v21, v22);
    *(v24 + 48) = sub_181AACB6C();
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
    swift_allocObject();
    return sub_181AA94EC(v23, v20, v21, v22, v24);
  }

  if (qword_1ED40FDC8 != -1)
  {
    definition1 = swift_once();
  }

  if (!qword_1ED40FE00)
  {
    goto LABEL_64;
  }

  definition1 = nw_protocol_definition_is_equal(v1, qword_1ED40FE00);
  if (definition1)
  {
    v25 = *(&xmmword_1ED40FDD0 + 1);
    v26 = unk_1ED40FDE0;
    v27 = byte_1ED40FDE8;
    v28 = xmmword_1ED40FDD0;
    type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    *(v29 + 32) = 0;
    *(v29 + 40) = 1;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
    swift_allocObject();
    sub_181F49A24(v25, v26, v27);
    *(v29 + 48) = sub_181AACB6C();
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50);
    swift_allocObject();
    return sub_181AA94EC(v28, v25, v26, v27, v29);
  }

  if (qword_1ED40FD30 != -1)
  {
    definition1 = swift_once();
  }

  if (qword_1ED411AC8)
  {
    if (nw_protocol_definition_is_equal(v1, qword_1ED411AC8))
    {
      v2 = *(&xmmword_1ED411A98 + 1);
      v3 = unk_1ED411AA8;
      v4 = byte_1ED411AB0;
      v30 = xmmword_1ED411A98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
      swift_allocObject();
      v6 = sub_181CFD414(v30, v2, v3, v4, 0);
      goto LABEL_16;
    }

    if (nw_protocol_copy_tls_definition())
    {
      v31 = swift_unknownObjectRetain();
      v32 = v31;
    }

    else
    {
      v31 = nw_protocol_copy_tls_definition();
      v32 = 0;
    }

    sub_181AA82BC(v31, 0, 0, 0, 255, v32, &v62);
    v60[2] = v64;
    v60[3] = v65;
    v33 = v66;
    v61 = v66;
    v60[0] = v62;
    v60[1] = v63;
    swift_unknownObjectRetain();
    definition1 = sub_181F49A88(v60, &unk_1EA838740);
    if (v33)
    {
      is_equal = nw_protocol_definition_is_equal(v1, v33);
      swift_unknownObjectRelease();
      if (is_equal)
      {
        if (nw_protocol_copy_tls_definition())
        {
          v35 = swift_unknownObjectRetain();
          v36 = v35;
        }

        else
        {
          v35 = nw_protocol_copy_tls_definition();
          v36 = 0;
        }

        sub_181AA82BC(v35, 0, 0, 0, 255, v36, &v55);
        v53[0] = v55;
        v53[1] = v56;
        v53[2] = v57;
        v53[3] = v58;
        v54 = v59;
        v47 = *(&v55 + 1);
        v48 = v56;
        v49 = BYTE8(v56);
        v50 = v57;
        v51 = v55;
        sub_181F49A24(*(&v55 + 1), v56, SBYTE8(v56));
        v52 = sub_181AA90F0(v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
        swift_allocObject();
        v14 = sub_181AA94EC(v51, v47, v48, v49, v52);
        sub_181F49A88(v53, &unk_1EA838740);
      }

      else
      {
        v37 = swift_unknownObjectRetain_n();
        sub_181AA82BC(v37, 0, 0, 0, 255, v1, &v55);
        v38 = v55;
        v39 = BYTE1(v55);
        v40 = *(&v55 + 1);
        v41 = v56;
        v42 = BYTE8(v56);
        v43 = v57;
        if (v57)
        {
          type metadata accessor for CProtocol.COptions();
          v44 = swift_allocObject();
          *(v44 + 16) = 0;
          *(v44 + 24) = v43;
          swift_unknownObjectRetain_n();
          sub_181F49A24(v40, v41, v42);
          options_allocator = nw_protocol_definition_get_options_allocator(v43);
          if (options_allocator)
          {
            v46 = options_allocator(v43);
            swift_unknownObjectRelease();
            *(v44 + 16) = v46;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_181F49A24(*(&v55 + 1), v56, SBYTE8(v56));
          v44 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838DB8);
        swift_allocObject();
        v14 = sub_181AA94EC(v38 | (v39 << 8), v40, v41, v42, v44);
        sub_181F49A88(&v55, &unk_1EA838DC0);
        *(v14 + qword_1ED411A88) = 1;
      }

      return v14;
    }

    goto LABEL_66;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return definition1;
}

uint64_t sub_181B2CF10(uint64_t a1)
{
  v2 = sub_182AD2738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - v7;

  v9 = qword_1ED411A90;
  swift_beginAccess();
  sub_181AB5D28(a1 + v9, v8, &qword_1EA838E00);
  if ((*(v3 + 48))(v8, 1, v2))
  {

    sub_181F49A88(v8, &qword_1EA838E00);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_181F49A88(v8, &qword_1EA838E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E08);
    sub_182AD2708();

    (*(v3 + 8))(v5, v2);
    return v11[5];
  }
}

uint64_t sub_181B2D13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;

  if (a2)
  {
    swift_unknownObjectRetain_n();
    sub_182AD2748();
    v7 = sub_182AD2738();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = qword_1ED411A90;
    swift_beginAccess();
    sub_181B2D2D8(v6, a1 + v8);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = sub_182AD2738();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = qword_1ED411A90;
    swift_beginAccess();
    sub_181B2D2D8(v6, a1 + v10);
    swift_endAccess();
  }
}

uint64_t sub_181B2D2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t nw_parameters_add_protocol_stack_member(void *a1, int a2, int a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = _nw_parameters_copy_default_protocol_stack(v7);
      v11 = v10;
      if (v10)
      {
        if ((a2 & 0xFFFFFFFE) == 4)
        {
          v12 = v10;
          v13 = v9;
          if (a3)
          {
            _nw_protocol_stack_append_application_protocol(v12, v13);
          }

          else
          {
            _nw_protocol_stack_prepend_application_protocol(v12, v13);
          }

          v14 = 1;
          goto LABEL_17;
        }

        if (a2 == 2)
        {
          _nw_protocol_stack_set_internet_protocol(v10, v9);
          v14 = 1;
          goto LABEL_17;
        }

        if (a2 == 3)
        {
          _nw_protocol_stack_set_transport_protocol(v10, v9);
          v14 = 1;
LABEL_17:

          goto LABEL_18;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v37 = "nw_parameters_add_protocol_stack_member";
          v38 = 1024;
          LODWORD(v39) = a2;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s Unsupported protocol level %u", buf, 0x12u);
        }

LABEL_16:
        v14 = 0;
        goto LABEL_17;
      }

      v23 = __nwlog_obj();
      *buf = 136446210;
      v37 = "nw_parameters_add_protocol_stack_member";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v24, &type, &v34))
      {
LABEL_65:
        if (v24)
        {
          free(v24);
        }

        goto LABEL_16;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v27 = "%{public}s called with null stack";
LABEL_63:
          _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
        }
      }

      else
      {
        if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v25 = __nwlog_obj();
          v26 = type;
          v33 = os_log_type_enabled(v25, type);
          if (backtrace_string)
          {
            if (v33)
            {
              *buf = 136446466;
              v37 = "nw_parameters_add_protocol_stack_member";
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_65;
          }

          if (!v33)
          {
            goto LABEL_64;
          }

          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v27 = "%{public}s called with null stack, no backtrace";
          goto LABEL_63;
        }

        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v27 = "%{public}s called with null stack, backtrace limit exceeded";
          goto LABEL_63;
        }
      }

LABEL_64:

      goto LABEL_65;
    }

    v22 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_parameters_add_protocol_stack_member";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v18, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v21 = "%{public}s called with null protocol_parameters";
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      if (v34 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v21 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v28 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v31 = os_log_type_enabled(v19, type);
      if (!v28)
      {
        if (v31)
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v21 = "%{public}s called with null protocol_parameters, no backtrace";
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      if (!v31)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v37 = "nw_parameters_add_protocol_stack_member";
      v38 = 2082;
      v39 = v28;
      v30 = "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s";
LABEL_39:
      _os_log_impl(&dword_181A37000, v19, v20, v30, buf, 0x16u);
LABEL_40:

      free(v28);
    }
  }

  else
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_parameters_add_protocol_stack_member";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v18, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v21 = "%{public}s called with null parameters";
LABEL_56:
          _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
        }

LABEL_57:

        goto LABEL_58;
      }

      if (v34 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v21 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v28 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v29 = os_log_type_enabled(v19, type);
      if (!v28)
      {
        if (v29)
        {
          *buf = 136446210;
          v37 = "nw_parameters_add_protocol_stack_member";
          v21 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      if (!v29)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v37 = "nw_parameters_add_protocol_stack_member";
      v38 = 2082;
      v39 = v28;
      v30 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_39;
    }
  }

LABEL_58:
  if (v18)
  {
    free(v18);
  }

  v14 = 0;
LABEL_18:

  return v14;
}

uint64_t _nw_protocol_stack_prepend_application_protocol(uint64_t a1, uint64_t a2)
{

  v3 = sub_181AA847C(a2);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  v6 = swift_dynamicCastClass();
  v7 = v5 | 0x4000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (v6)
  {
    v7 = 0;
  }

  v10 = v8;
  v11 = v7;
  swift_unknownObjectRetain();
  sub_181B2DB04(&v10);

  swift_unknownObjectRelease();
  return sub_181AAD084(v10, v11);
}

uint64_t sub_181B2DB04(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(sub_181AC9084() + 24);

  if (v5 < 1)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 16);
  v8 = v7[3];
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (v7[2] < v9 || (result & 1) == 0)
  {
    result = sub_181B2C3FC(result, v9);
    v10 = v7[4];
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = v7[2];
    v11 = __OFSUB__(v14, 1);
    v12 = v14 - 1;
    if (v11)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_14;
  }

  v10 = v7[4];
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_6:
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
LABEL_14:
    v15 = &v7[2 * v12];
    v15[5] = v4;
    v15[6] = v3;
    v7[4] = v12;
    v16 = v7[3];
    v11 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (!v11)
    {
      v7[3] = v17;
      *(v2 + 16) = v7;
LABEL_38:
      sub_181B2C3E0(v4, v3);
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_9:
  if (v3 >> 62)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_27;
    }

    v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
  }

  ObjectType = swift_getObjectType();
  v19 = *(v13 + 328);
  sub_181B2C3E0(v4, v3);
  result = v19(ObjectType, v13);
  if ((result & 1) == 0)
  {
LABEL_26:
    sub_181AAD084(v4, v3);
LABEL_27:
    result = sub_181A54748();
    v38 = result;
    v25 = *(result + 24);
    v26 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      v27 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v27[2] < v26 || (result & 1) == 0)
      {
        goto LABEL_34;
      }

      v28 = v27[4];
      if (v28)
      {
        while (1)
        {
          v11 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (!v11)
          {
            break;
          }

          __break(1u);
LABEL_34:
          result = sub_181B2C3FC(result, v26);
          v27 = v38;
          v28 = v38[4];
          if (!v28)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
LABEL_35:
        v30 = v27[2];
        v11 = __OFSUB__(v30, 1);
        v29 = v30 - 1;
        if (v11)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      v31 = &v27[2 * v29];
      v31[5] = v4;
      v31[6] = v3;
      v27[4] = v29;
      v32 = v27[3];
      v11 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (!v11)
      {
        v27[3] = v33;
        *(v2 + 24) = v27;
        goto LABEL_38;
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v20 = *(v2 + 16);
  v21 = v20[3];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (v20[2] < v22 || (result & 1) == 0)
  {
    result = sub_181B2C3FC(result, v22);
  }

  v23 = v20[4];
  if (v23)
  {
    v11 = __OFSUB__(v23, 1);
    v24 = v23 - 1;
    if (!v11)
    {
LABEL_41:
      v35 = &v20[2 * v24];
      v35[5] = v4;
      v35[6] = v3;
      v20[4] = v24;
      v36 = v20[3];
      v11 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v11)
      {
        v20[3] = v37;
        *(v2 + 16) = v20;
      }

      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_26;
  }

  v34 = v20[2];
  v11 = __OFSUB__(v34, 1);
  v24 = v34 - 1;
  if (!v11)
  {
    goto LABEL_41;
  }

LABEL_51:
  __break(1u);
  return result;
}

void nw_parameters_set_url(void *a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2 && *a2)
    {
      url = _nw_endpoint_create_url(a2);
      _nw_parameters_set_url_endpoint(v4, url);
    }

    else
    {
      _nw_parameters_set_url_endpoint(v3, 0);
    }

    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_set_url";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_url";
        v10 = "%{public}s called with null parameters";
LABEL_20:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_parameters_set_url";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v12)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "nw_parameters_set_url";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_url";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

LABEL_6:
}

uint64_t nw_proxy_create_options(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    options = _nw_protocol_create_options();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_create_options";
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
        v15 = "nw_proxy_create_options";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null proxy_definition", buf, 0xCu);
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
          v15 = "nw_proxy_create_options";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null proxy_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_create_options";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null proxy_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_create_options";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null proxy_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  options = 0;
LABEL_3:

  return options;
}

void nw_proxy_options_set_authentication_challenge_handler(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_proxy_options_set_authentication_challenge_handler_block_invoke;
    v14[3] = &unk_1E6A3A978;
    v15 = v4;
    nw_protocol_options_access_handle(v3, v14);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_proxy_options_set_authentication_challenge_handler";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v7, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_proxy_options_set_authentication_challenge_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          v19 = "nw_proxy_options_set_authentication_challenge_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_proxy_options_set_authentication_challenge_handler";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_proxy_options_set_authentication_challenge_handler";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void nw_parameters_set_protocol_value(void *a1, const char *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = _nw_protocol_options_copy_legacy_parameters(v5);
    v8 = v7;
    if (!v7 || object_getClass(v7) != MEMORY[0x1E69E9E80])
    {
      v9 = xpc_dictionary_create(0, 0, 0);

      v8 = v9;
    }

    xpc_dictionary_set_value(v8, a2, v6);
    _nw_protocol_options_set_legacy_parameters(v5, v8);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_set_protocol_value";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_set_protocol_value";
        v14 = "%{public}s called with null protocol_parameters";
LABEL_20:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "nw_parameters_set_protocol_value";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v20 = "nw_parameters_set_protocol_value";
        v14 = "%{public}s called with null protocol_parameters, no backtrace";
        goto LABEL_20;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_set_protocol_value";
        v14 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v11)
  {
    free(v11);
  }

LABEL_6:
}

uint64_t nw_proxy_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA3F85DF8uLL);
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

    return v2;
  }

  __break(1u);
  return result;
}

id nw_endpoint_flow_copy_connected_path(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 220);
    if ((v2[8]._os_unfair_lock_opaque & 2) != 0 || (v2[8]._os_unfair_lock_opaque & 0x100) != 0)
    {
      v5 = *&v2[2]._os_unfair_lock_opaque;
    }

    else
    {
      v3 = *&v2[234]._os_unfair_lock_opaque;
      if (v3)
      {
        v4 = nw_endpoint_handler_copy_connected_path(v3);
        v5 = v4;
        if (v4)
        {
          v6 = *&v2[2]._os_unfair_lock_opaque;
          if (v6)
          {
            nw_path_apply_override_interface_types_from_path(v4, v6);
          }
        }
      }

      else
      {
        v5 = 0;
      }
    }

    os_unfair_lock_unlock(v2 + 220);
    goto LABEL_10;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_endpoint_flow_copy_connected_path";
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
        v19 = "nw_endpoint_flow_copy_connected_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint_flow", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_endpoint_flow_copy_connected_path";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_endpoint_flow_copy_connected_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_flow_copy_connected_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_28:
  if (v9)
  {
    free(v9);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

uint64_t ProtocolOptions.matches(identifier:)(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  *v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  *v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  LOBYTE(v2) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v18, v14);
  v10 = v19;
  v11 = v20;
  v12 = v21;
  sub_181F49A24(v7, v8, v9);
  sub_181F48350(v10, v11, v12);
  return v2 & 1;
}

const char *nw_endpoint_flow_mode_string(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if ((v1[32] & 3) == 1)
    {
      v2 = "parent-flow";
    }

    else if ((v1[32] & 2) != 0)
    {
      if (v1[33] < 0)
      {
        v3 = "multipath-socket-flow";
      }

      else
      {
        v3 = "socket-flow";
      }

      if ((v1[33] & 0x40) != 0)
      {
        v2 = "channel-flow";
      }

      else
      {
        v2 = v3;
      }
    }

    else
    {
      v2 = "intermediate-flow";
    }

    goto LABEL_12;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_flow_mode_string";
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
        v16 = "nw_endpoint_flow_mode_string";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint_flow", buf, 0xCu);
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
          v16 = "nw_endpoint_flow_mode_string";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_flow_mode_string";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_flow_mode_string";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v6)
  {
    free(v6);
  }

  v2 = "null-flow";
  v1 = 0;
LABEL_12:

  return v2;
}

const char *nw_endpoint_handler_mode_string(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = *(v1 + 29);
    if (v2 > 2)
    {
      switch(v2)
      {
        case 3:
          v4 = "proxy";
          goto LABEL_16;
        case 4:
          v4 = "fallback";
          goto LABEL_16;
        case 5:
          v4 = "transform";
          goto LABEL_16;
      }
    }

    else
    {
      switch(v2)
      {
        case 0:
          v4 = "path";
          goto LABEL_16;
        case 1:
          v4 = "resolver";
          goto LABEL_16;
        case 2:
          v3 = v1;
          v4 = nw_endpoint_flow_mode_string(*(v1 + 33));
          v1 = v3;
          goto LABEL_16;
      }
    }

    v4 = "unknown-mode";
    goto LABEL_16;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_endpoint_handler_mode_string";
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
        v17 = "nw_endpoint_handler_mode_string";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handler", buf, 0xCu);
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
          v17 = "nw_endpoint_handler_mode_string";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_33;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_endpoint_handler_mode_string";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_endpoint_handler_mode_string";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_33:
  if (v7)
  {
    free(v7);
  }

  v4 = "null";
  v1 = 0;
LABEL_16:

  return v4;
}

void nw_endpoint_handler_report(void *a1, void *a2, _WORD *a3, void *a4)
{
  v17 = a1;
  v7 = a2;
  v8 = a4;
  if (v17[30] != 5)
  {
    v9 = v17;
    v10 = v9;
    if (a3)
    {
      if ((*(v9 + 284) & 0x10) == 0 && *a3 == 3)
      {
        v11 = a3[1];
        if (v11 <= 0xD && ((1 << v11) & 0x2060) != 0)
        {
          *(v9 + 284) |= 0x10u;
        }
      }
    }

    if (v9->fallback_timer)
    {
      if ((nw_endpoint_handler_should_reset_for_fallback(v9) & 1) == 0)
      {
        fallback_timer = v10->fallback_timer;
        if (fallback_timer)
        {
          nw_queue_cancel_source(fallback_timer, v12);
          v10->fallback_timer = 0;
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&v10->callback_context);
    v15 = v7 + 30;
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v15 = v17 + 30;
      v16 = v10;
    }

    (v10->report_callback)(v16, v16[29], *v15, a3, v8, WeakRetained);
  }
}

void ___ZL41nw_connection_endpoint_report_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke(uint64_t a1)
{
  v661 = *MEMORY[0x1E69E9840];
  v2 = mach_continuous_time();
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = nw_delta_nanos(*(*(a1 + 32) + 72), v3);
  v5 = v4 / 0xF4240;
  if (v4 > 0xF423FFFFFFFFFLL)
  {
    LODWORD(v5) = -1;
  }

  v618 = v5;
  if (*(a1 + 56))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = v6;
      v8 = v7[284];

      if ((v8 & 1) == 0)
      {
        v9 = *(a1 + 48);
        if (!v9)
        {
          count = -1;
LABEL_39:
          *buf = v3;
          *&buf[8] = 0;
          *&buf[8] = **(a1 + 56);
          v26 = *(a1 + 32);
          v27 = *(a1 + 40);
          if (v27)
          {
            v28 = WORD1(v27) ^ WORD2(v27) ^ HIWORD(v27) ^ v27;
          }

          else
          {
            v28 = 0;
          }

          *&buf[12] = v28;
          *&buf[14] = count;
          nw_connection_add_timestamp_locked_on_nw_queue(v26, buf);
          v29 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          if (v29)
          {
            v30 = *(*(a1 + 32) + 328);
            if (v30 || (v31 = _nw_array_create(), v32 = *(a1 + 32), v33 = *(v32 + 328), *(v32 + 328) = v31, v33, (v30 = *(*(a1 + 32) + 328)) != 0))
            {
              if ((_nw_array_contains_object(v30, v29) & 1) == 0)
              {
                v34 = *(*(a1 + 32) + 328);
                if (v34)
                {
                  _nw_array_append(v34, v29);
                }
              }
            }
          }

          goto LABEL_49;
        }

        v10 = *(a1 + 32);
        v11 = v9;
        if (v10)
        {
          nw_context_assert_queue(*(v10 + 3));
          v12 = *(v10 + 55);
          if (!v12)
          {
            v13 = _nw_array_create();
            v14 = *(v10 + 55);
            *(v10 + 55) = v13;

            v12 = *(v10 + 55);
            if (!v12)
            {
LABEL_18:
              count = 0;
LABEL_38:

              goto LABEL_39;
            }
          }

          if (_nw_array_get_count(v12) <= 0xFE)
          {
            v15 = *(v10 + 55);
            if (v15)
            {
              count = _nw_array_get_count(v15);
              v17 = *(v10 + 55);
              if (v17)
              {
                _nw_array_append(v17, v11);
              }

              goto LABEL_38;
            }

            goto LABEL_18;
          }

LABEL_37:
          count = -1;
          goto LABEL_38;
        }

        v18 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_connection_add_error_locked_on_nw_queue";
        v19 = _os_log_send_and_compose_impl();

        type[0] = 16;
        applier[0] = 0;
        if (__nwlog_fault(v19, type, applier))
        {
          if (type[0] == 17)
          {
            v20 = __nwlog_obj();
            v21 = type[0];
            if (os_log_type_enabled(v20, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_add_error_locked_on_nw_queue";
              _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null connection", buf, 0xCu);
            }
          }

          else if (applier[0] == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v20 = __nwlog_obj();
            v23 = type[0];
            v24 = os_log_type_enabled(v20, type[0]);
            if (backtrace_string)
            {
              if (v24)
              {
                *buf = 136446466;
                *&buf[4] = "nw_connection_add_error_locked_on_nw_queue";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_35;
            }

            if (v24)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_add_error_locked_on_nw_queue";
              _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null connection, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v20 = __nwlog_obj();
            v25 = type[0];
            if (os_log_type_enabled(v20, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_add_error_locked_on_nw_queue";
              _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_35:
        if (v19)
        {
          free(v19);
        }

        goto LABEL_37;
      }
    }
  }

LABEL_49:
  v35 = *(a1 + 40);
  if (!v35)
  {
    goto LABEL_175;
  }

  v36 = *(a1 + 56);
  if (!*(a1 + 48))
  {
    if (v36 && *v36 == 1 && v36[1] != 1)
    {
      *type = 0;
      *&type[8] = 0;
      nw_endpoint_handler_get_client_id(v35, type);
      if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v39 = gconnectionLogObj;
        if (nw_endpoint_handler_get_minimize_logging(*(a1 + 40)))
        {
          is_dry_run = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          is_dry_run = nw_endpoint_handler_is_dry_run(*(a1 + 40));
        }

        if (os_log_type_enabled(v39, is_dry_run))
        {
          id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v84 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v85 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          loga = v84;
          logging_description = nw_endpoint_get_logging_description(v85);
          v87 = nw_endpoint_handler_state_string(*(a1 + 40));
          v88 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v89 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          v90 = *(a1 + 56);
          if (v90)
          {
            v91 = *v90;
            if ((v91 - 1) > 6)
            {
              v92 = "unknown";
            }

            else
            {
              v92 = off_1E6A31638[v91 - 1];
            }

            v139 = nw_endpoint_event_event_string(v91, v90[1]);
          }

          else
          {
            v92 = "null";
            v139 = "null";
          }

          *buf = 136449026;
          *&buf[4] = id_string;
          *&buf[12] = 2082;
          *&buf[14] = loga;
          *&buf[22] = 2082;
          *&buf[24] = logging_description;
          *v628 = 2082;
          *&v628[2] = v87;
          *&v628[10] = 2082;
          *&v628[12] = v88;
          *&v628[20] = 2114;
          *&v628[22] = v89;
          v629 = 2082;
          v630 = v92;
          v631 = 2082;
          v632 = v139;
          v633 = 1024;
          v634 = v618 / 1000;
          v635 = 1024;
          v636 = v618 % 1000;
          v637 = 1042;
          *v638 = 16;
          *&v638[4] = 2098;
          *&v638[6] = type;
          _os_log_impl(&dword_181A37000, v39, is_dry_run, "[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] event: %{public}s:%{public}s @%d.%03ds, uuid: %{public,uuid_t}.16P", buf, 0x6Eu);
        }

        goto LABEL_166;
      }

      goto LABEL_167;
    }

    v41 = v35;
    v42 = (v41[284] & 0x40) == 0;

    if (!v42)
    {
      goto LABEL_167;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v39 = gconnectionLogObj;
    if (nw_endpoint_handler_get_minimize_logging(*(a1 + 40)))
    {
      v43 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v43 = nw_endpoint_handler_is_dry_run(*(a1 + 40));
    }

    if (!os_log_type_enabled(v39, v43))
    {
      goto LABEL_166;
    }

    v49 = nw_endpoint_handler_get_id_string(*(a1 + 40));
    v50 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
    v51 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
    v52 = v51;
    if (v51)
    {
      v53 = _nw_endpoint_get_logging_description(v51);
    }

    else
    {
      v53 = "<NULL>";
    }

    v66 = nw_endpoint_handler_state_string(*(a1 + 40));
    v67 = nw_endpoint_handler_mode_string(*(a1 + 40));
    v68 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
    v69 = v68;
    v70 = *(a1 + 56);
    if (v70)
    {
      v71 = *v70;
      if ((v71 - 1) > 6)
      {
        v72 = "unknown";
      }

      else
      {
        v72 = off_1E6A31638[v71 - 1];
      }

      v75 = v70[1];
      v73 = "unknown";
      if (v71 <= 3)
      {
        switch(v71)
        {
          case 1:
            v76 = v75 - 1;
            if ((v75 - 1) < 0xC)
            {
              v77 = off_1E6A31670;
              goto LABEL_163;
            }

            goto LABEL_164;
          case 2:
            v76 = v75 - 1;
            if ((v75 - 1) < 8u)
            {
              v77 = off_1E6A316D0;
              goto LABEL_163;
            }

            goto LABEL_164;
          case 3:
            v76 = v75 - 1;
            if ((v75 - 1) < 0xF)
            {
              v77 = off_1E6A31710;
              goto LABEL_163;
            }

LABEL_164:
            v73 = "unknown";
            break;
        }
      }

      else
      {
        if (v71 <= 5)
        {
          if (v71 == 4)
          {
            v76 = v75 - 1;
            if ((v75 - 1) < 6)
            {
              v77 = off_1E6A31788;
              goto LABEL_163;
            }
          }

          else
          {
            v76 = v75 - 1;
            if ((v75 - 1) < 5)
            {
              v77 = off_1E6A317B8;
LABEL_163:
              v73 = v77[v76];
              goto LABEL_165;
            }
          }

          goto LABEL_164;
        }

        if (v71 == 6)
        {
          v76 = v75 - 1;
          if ((v75 - 1) < 5)
          {
            v77 = off_1E6A317F8;
            goto LABEL_163;
          }

          goto LABEL_164;
        }

        if (v71 == 7)
        {
          v76 = v75 - 1;
          if ((v75 - 1) < 3)
          {
            v77 = off_1E6A317E0;
            goto LABEL_163;
          }

          goto LABEL_164;
        }
      }
    }

    else
    {
      v72 = "null";
      v73 = "null";
    }

LABEL_165:
    *buf = 136448514;
    *&buf[4] = v49;
    *&buf[12] = 2082;
    *&buf[14] = v50;
    *&buf[22] = 2082;
    *&buf[24] = v53;
    *v628 = 2082;
    *&v628[2] = v66;
    *&v628[10] = 2082;
    *&v628[12] = v67;
    *&v628[20] = 2114;
    *&v628[22] = v68;
    v629 = 2082;
    v630 = v72;
    v631 = 2082;
    v632 = v73;
    v633 = 1024;
    v634 = v618 / 1000;
    v635 = 1024;
    v636 = v618 % 1000;
    _os_log_impl(&dword_181A37000, v39, v43, "[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] event: %{public}s:%{public}s @%d.%03ds", buf, 0x5Eu);

LABEL_166:
    goto LABEL_167;
  }

  if (v36 && *v36 == 1 && v36[1] != 1)
  {
    *type = 0;
    *&type[8] = 0;
    nw_endpoint_handler_get_client_id(v35, type);
    if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      if (nw_endpoint_handler_get_minimize_logging(*(a1 + 40)))
      {
        v62 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        v62 = nw_endpoint_handler_is_dry_run(*(a1 + 40));
      }

      if (os_log_type_enabled(v39, v62))
      {
        v78 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v79 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
        v80 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
        v81 = v80;
        if (v80)
        {
          log = _nw_endpoint_get_logging_description(v80);
          v82 = v78;
        }

        else
        {
          v82 = v78;
          log = "<NULL>";
        }

        v94 = nw_endpoint_handler_state_string(*(a1 + 40));
        v95 = nw_endpoint_handler_mode_string(*(a1 + 40));
        v96 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
        v97 = *(a1 + 56);
        if (v97)
        {
          v98 = *v97;
          if ((v98 - 1) > 6)
          {
            v99 = "unknown";
          }

          else
          {
            v99 = off_1E6A31638[v98 - 1];
          }

          v100 = nw_endpoint_event_event_string(v98, v97[1]);
        }

        else
        {
          v99 = "null";
          v100 = "null";
        }

        v101 = *(a1 + 48);
        *buf = 136449282;
        *&buf[4] = v82;
        *&buf[12] = 2082;
        *&buf[14] = v79;
        *&buf[22] = 2082;
        *&buf[24] = log;
        *v628 = 2082;
        *&v628[2] = v94;
        *&v628[10] = 2082;
        *&v628[12] = v95;
        *&v628[20] = 2114;
        *&v628[22] = v96;
        v629 = 2082;
        v630 = v99;
        v631 = 2082;
        v632 = v100;
        v633 = 1024;
        v634 = v618 / 1000;
        v635 = 1024;
        v636 = v618 % 1000;
        v637 = 2114;
        *v638 = v101;
        *&v638[8] = 1042;
        *&v638[10] = 16;
        v639 = 2098;
        v640 = type;
        _os_log_impl(&dword_181A37000, v39, v62, "[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] event: %{public}s:%{public}s @%d.%03ds, error %{public}@, uuid: %{public,uuid_t}.16P", buf, 0x78u);
      }

      goto LABEL_166;
    }
  }

  else
  {
    v37 = v35;
    v38 = (v37[284] & 0x40) == 0;

    if (v38)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      if (nw_endpoint_handler_get_minimize_logging(*(a1 + 40)))
      {
        v40 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        v40 = nw_endpoint_handler_is_dry_run(*(a1 + 40));
      }

      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_166;
      }

      v44 = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v45 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
      v46 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
      v47 = v46;
      if (v46)
      {
        v48 = _nw_endpoint_get_logging_description(v46);
      }

      else
      {
        v48 = "<NULL>";
      }

      v54 = nw_endpoint_handler_state_string(*(a1 + 40));
      v55 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v56 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
      v57 = v56;
      v58 = *(a1 + 56);
      if (v58)
      {
        v59 = *v58;
        if ((v59 - 1) > 6)
        {
          v60 = "unknown";
        }

        else
        {
          v60 = off_1E6A31638[v59 - 1];
        }

        v63 = v58[1];
        v61 = "unknown";
        if (v59 <= 3)
        {
          switch(v59)
          {
            case 1:
              v64 = v63 - 1;
              if ((v63 - 1) < 0xC)
              {
                v65 = off_1E6A31670;
                goto LABEL_142;
              }

              goto LABEL_143;
            case 2:
              v64 = v63 - 1;
              if ((v63 - 1) < 8u)
              {
                v65 = off_1E6A316D0;
                goto LABEL_142;
              }

              goto LABEL_143;
            case 3:
              v64 = v63 - 1;
              if ((v63 - 1) < 0xF)
              {
                v65 = off_1E6A31710;
                goto LABEL_142;
              }

LABEL_143:
              v61 = "unknown";
              break;
          }
        }

        else
        {
          if (v59 <= 5)
          {
            if (v59 == 4)
            {
              v64 = v63 - 1;
              if ((v63 - 1) < 6)
              {
                v65 = off_1E6A31788;
                goto LABEL_142;
              }
            }

            else
            {
              v64 = v63 - 1;
              if ((v63 - 1) < 5)
              {
                v65 = off_1E6A317B8;
LABEL_142:
                v61 = v65[v64];
                goto LABEL_144;
              }
            }

            goto LABEL_143;
          }

          if (v59 == 6)
          {
            v64 = v63 - 1;
            if ((v63 - 1) < 5)
            {
              v65 = off_1E6A317F8;
              goto LABEL_142;
            }

            goto LABEL_143;
          }

          if (v59 == 7)
          {
            v64 = v63 - 1;
            if ((v63 - 1) < 3)
            {
              v65 = off_1E6A317E0;
              goto LABEL_142;
            }

            goto LABEL_143;
          }
        }
      }

      else
      {
        v60 = "null";
        v61 = "null";
      }

LABEL_144:
      v93 = *(a1 + 48);
      *buf = 136448770;
      *&buf[4] = v44;
      *&buf[12] = 2082;
      *&buf[14] = v45;
      *&buf[22] = 2082;
      *&buf[24] = v48;
      *v628 = 2082;
      *&v628[2] = v54;
      *&v628[10] = 2082;
      *&v628[12] = v55;
      *&v628[20] = 2114;
      *&v628[22] = v56;
      v629 = 2082;
      v630 = v60;
      v631 = 2082;
      v632 = v61;
      v633 = 1024;
      v634 = v618 / 1000;
      v635 = 1024;
      v636 = v618 % 1000;
      v637 = 2114;
      *v638 = v93;
      _os_log_impl(&dword_181A37000, v39, v40, "[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] event: %{public}s:%{public}s @%d.%03ds, error %{public}@", buf, 0x68u);

      goto LABEL_166;
    }
  }

LABEL_167:
  v102 = *(a1 + 40);
  if (v102)
  {
    v103 = *(a1 + 32);
    if (v102 == *(v103 + 144) && !*(v103 + 280))
    {
      v104 = *(a1 + 64);
      if (v104 <= 5 && ((1 << v104) & 0x3A) != 0)
      {
        v105 = v102;
        os_unfair_lock_lock(v105 + 28);
        v106 = *(v105 + 8);
        os_unfair_lock_unlock(v105 + 28);

        if (v106)
        {
          v107 = v106;
          interface_time_delta = _nw_path_get_interface_time_delta(v107);

          *(*(a1 + 32) + 280) = interface_time_delta;
        }
      }
    }
  }

LABEL_175:
  v109 = *(a1 + 56);
  if (!v109)
  {
    goto LABEL_192;
  }

  v110 = *v109;
  if (v110 != 4)
  {
    goto LABEL_182;
  }

  v111 = *(a1 + 40);
  if (v111)
  {
    v112 = v111;
    v113 = v112[29] == 3;

    if (v113)
    {
      *(*(a1 + 32) + 504) = nw_endpoint_handler_get_proxy_privacy_stance(*(a1 + 40));
    }
  }

  v114 = *(a1 + 56);
  if (v114)
  {
    v110 = *v114;
LABEL_182:
    if (v110 == 5 && (nw_parameters_get_multipath(*(*(a1 + 32) + 16)) & 1) == 0)
    {
      nw_connection_enable_stats_report_on_nw_queue(*(a1 + 32), 1);
    }

    v115 = *(a1 + 56);
    if (v115)
    {
      if (*v115 == 5 && v115[1] == 1)
      {
        if (*(*(a1 + 32) + 288))
        {
          v116 = *(a1 + 40);
          if (v116)
          {
            v117 = v116;
            v118 = v117[29] == 4;

            if (v118)
            {
              nw_endpoint_handler_reset_expected_progress_target(*(a1 + 40), *(*(a1 + 32) + 288), (*(a1 + 32) + 452));
            }
          }
        }
      }
    }
  }

LABEL_192:
  v119 = *(a1 + 32);
  v120 = *(v119 + 109);
  if ((v120 & 0x40) != 0 && *(v119 + 144) == *(a1 + 40) && *(a1 + 68) != 2)
  {
    *(v119 + 109) = v120 & 0xBF;
    v119 = *(a1 + 32);
    v120 = *(v119 + 109);
  }

  v121 = (v120 >> 6) & 1;
  if (*(a1 + 68) == 2 && *(a1 + 64) == 3 && (v120 & 0x40) == 0)
  {
    v121 = 0;
    v122 = *(a1 + 40);
    if (v122)
    {
      if (v122 == *(v119 + 144))
      {
        v123 = *(v119 + 152);
        *(v119 + 152) = 0;

        *(*(a1 + 32) + 109) |= 0x40u;
        v124 = *(a1 + 32);
        v125 = v124;
        if (v124)
        {
          nw_context_assert_queue(v124[3]);
          if ((*(v125 + 109) & 0x40) != 0)
          {
            v126 = v125[18];
            if (v126)
            {
              v127 = v125[36];
              if (v127)
              {
                v128 = v126;
                v129 = v128;
                v130 = v128[29];
                if (v130 == 4)
                {
                  nw_endpoint_fallback_reset_expected_progress_target(v128, v127);
                }

                else if (v130 == 2)
                {
                  nw_endpoint_flow_reset_expected_progress_target(v128, v127, v125 + 452);
                }
              }

              v131 = v125[25];
              if (v131)
              {
                v132 = v125[18];
                v133 = v131;
                if (v132)
                {
                  v134 = v132;
                  mode = v134->mode;

                  if (mode == 2)
                  {
                    v136 = nw_endpoint_handler_copy_flow(v134);
                    objc_storeStrong(v136 + 105, v131);

LABEL_253:
                    goto LABEL_254;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v137 = gLogObj;
                  if (mode > 5)
                  {
                    v138 = "unknown-mode";
                  }

                  else
                  {
                    v138 = off_1E6A31018[mode];
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_endpoint_handler_set_client_queue";
                  *&buf[12] = 2082;
                  *&buf[14] = v138;
                  *&buf[22] = 2082;
                  *&buf[24] = "flow";
                  v140 = _os_log_send_and_compose_impl();

                  type[0] = 16;
                  applier[0] = 0;
                  if (!__nwlog_fault(v140, type, applier))
                  {
                    goto LABEL_251;
                  }

                  if (type[0] == 17)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v141 = gLogObj;
                    v142 = type[0];
                    if (os_log_type_enabled(v141, type[0]))
                    {
                      if (mode > 5)
                      {
                        v143 = "unknown-mode";
                      }

                      else
                      {
                        v143 = off_1E6A31018[mode];
                      }

                      *buf = 136446722;
                      *&buf[4] = "nw_endpoint_handler_set_client_queue";
                      *&buf[12] = 2082;
                      *&buf[14] = v143;
                      *&buf[22] = 2082;
                      *&buf[24] = "flow";
                      _os_log_impl(&dword_181A37000, v141, v142, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
                    }
                  }

                  else if (applier[0] == 1)
                  {
                    v144 = __nw_create_backtrace_string();
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v141 = gLogObj;
                    v145 = type[0];
                    v146 = os_log_type_enabled(v141, type[0]);
                    if (v144)
                    {
                      if (v146)
                      {
                        if (mode > 5)
                        {
                          v147 = "unknown-mode";
                        }

                        else
                        {
                          v147 = off_1E6A31018[mode];
                        }

                        *buf = 136446978;
                        *&buf[4] = "nw_endpoint_handler_set_client_queue";
                        *&buf[12] = 2082;
                        *&buf[14] = v147;
                        *&buf[22] = 2082;
                        *&buf[24] = "flow";
                        *v628 = 2082;
                        *&v628[2] = v144;
                        _os_log_impl(&dword_181A37000, v141, v145, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v144);
                      if (!v140)
                      {
                        goto LABEL_253;
                      }

                      goto LABEL_252;
                    }

                    if (v146)
                    {
                      if (mode > 5)
                      {
                        v150 = "unknown-mode";
                      }

                      else
                      {
                        v150 = off_1E6A31018[mode];
                      }

                      *buf = 136446722;
                      *&buf[4] = "nw_endpoint_handler_set_client_queue";
                      *&buf[12] = 2082;
                      *&buf[14] = v150;
                      *&buf[22] = 2082;
                      *&buf[24] = "flow";
                      _os_log_impl(&dword_181A37000, v141, v145, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
                    }
                  }

                  else
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v141 = gLogObj;
                    v148 = type[0];
                    if (os_log_type_enabled(v141, type[0]))
                    {
                      if (mode > 5)
                      {
                        v149 = "unknown-mode";
                      }

                      else
                      {
                        v149 = off_1E6A31018[mode];
                      }

                      *buf = 136446722;
                      *&buf[4] = "nw_endpoint_handler_set_client_queue";
                      *&buf[12] = 2082;
                      *&buf[14] = v149;
                      *&buf[22] = 2082;
                      *&buf[24] = "flow";
                      _os_log_impl(&dword_181A37000, v141, v148, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
                    }
                  }

                  goto LABEL_250;
                }

                v585 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_endpoint_handler_set_client_queue";
                v140 = _os_log_send_and_compose_impl();

                type[0] = 16;
                applier[0] = 0;
                if (__nwlog_fault(v140, type, applier))
                {
                  if (type[0] == 17)
                  {
                    v141 = __nwlog_obj();
                    v586 = type[0];
                    if (os_log_type_enabled(v141, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_endpoint_handler_set_client_queue";
                      _os_log_impl(&dword_181A37000, v141, v586, "%{public}s called with null handler", buf, 0xCu);
                    }

LABEL_250:

                    goto LABEL_251;
                  }

                  if (applier[0] != 1)
                  {
                    v141 = __nwlog_obj();
                    v598 = type[0];
                    if (os_log_type_enabled(v141, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_endpoint_handler_set_client_queue";
                      _os_log_impl(&dword_181A37000, v141, v598, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_250;
                  }

                  v588 = __nw_create_backtrace_string();
                  v141 = __nwlog_obj();
                  v589 = type[0];
                  v590 = os_log_type_enabled(v141, type[0]);
                  if (!v588)
                  {
                    if (v590)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_endpoint_handler_set_client_queue";
                      _os_log_impl(&dword_181A37000, v141, v589, "%{public}s called with null handler, no backtrace", buf, 0xCu);
                    }

                    goto LABEL_250;
                  }

                  if (v590)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_endpoint_handler_set_client_queue";
                    *&buf[12] = 2082;
                    *&buf[14] = v588;
                    _os_log_impl(&dword_181A37000, v141, v589, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v588);
                }

LABEL_251:
                if (!v140)
                {
                  goto LABEL_253;
                }

LABEL_252:
                free(v140);
                goto LABEL_253;
              }
            }
          }

LABEL_254:

          v151 = *(a1 + 32);
          v152 = v151;
          if (v151)
          {
            nw_context_assert_queue(*(v151 + 3));
            v153 = v152[53];
            if (v153)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = ___ZL62nw_connection_take_initial_data_transfer_snapshots_on_nw_queueP24NWConcrete_nw_connection_block_invoke;
              *&buf[24] = &unk_1E6A3CCB8;
              *v628 = v152;
              _nw_array_apply(v153, buf);
            }

            goto LABEL_257;
          }

          v235 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_connection_take_initial_data_transfer_snapshots_on_nw_queue";
          v236 = _os_log_send_and_compose_impl();

          type[0] = 16;
          applier[0] = 0;
          if (__nwlog_fault(v236, type, applier))
          {
            if (type[0] == 17)
            {
              v237 = __nwlog_obj();
              v238 = type[0];
              if (os_log_type_enabled(v237, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_take_initial_data_transfer_snapshots_on_nw_queue";
                _os_log_impl(&dword_181A37000, v237, v238, "%{public}s called with null connection", buf, 0xCu);
              }
            }

            else if (applier[0] == 1)
            {
              v563 = __nw_create_backtrace_string();
              v237 = __nwlog_obj();
              v564 = type[0];
              v565 = os_log_type_enabled(v237, type[0]);
              if (v563)
              {
                if (v565)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_take_initial_data_transfer_snapshots_on_nw_queue";
                  *&buf[12] = 2082;
                  *&buf[14] = v563;
                  _os_log_impl(&dword_181A37000, v237, v564, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v563);
                goto LABEL_1048;
              }

              if (v565)
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_take_initial_data_transfer_snapshots_on_nw_queue";
                _os_log_impl(&dword_181A37000, v237, v564, "%{public}s called with null connection, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v237 = __nwlog_obj();
              v578 = type[0];
              if (os_log_type_enabled(v237, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_take_initial_data_transfer_snapshots_on_nw_queue";
                _os_log_impl(&dword_181A37000, v237, v578, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_1048:
          if (v236)
          {
            free(v236);
          }

LABEL_257:

          v154 = *(a1 + 32);
          v155 = v154;
          if (v154)
          {
            nw_context_assert_queue(v154[3]);
            if (nw_parameters_get_is_probe(v155[2]))
            {
              goto LABEL_497;
            }

            v156 = v155;
            nw_context_assert_queue(v155[3]);
            if (!nw_connection_should_run_probe_locked(v156) || (nw_parameters_get_should_skip_probe_sampling(v155[2]) & 1) == 0 && !networkd_settings_get_BOOL(nw_setting_tcpconn_enable_tls_experiments))
            {
LABEL_282:

              v172 = v156;
              nw_context_assert_queue(v155[3]);
              if (!nw_connection_should_run_probe_locked(v172))
              {
                goto LABEL_446;
              }

              if (nw_protocol_setup_tcp_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
              }

              v173 = g_tcp_definition;
              v174 = nw_endpoint_handler_copy_protocol_metadata(v172->parent_endpoint_handler, v173, 0, 0);

              if (!v174)
              {
                v183 = v155[2];
                if (!v183 || _nw_parameters_get_logging_disabled(v183))
                {
                  goto LABEL_445;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v175 = gconnectionLogObj;
                if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
                {
                  top_id = v172->top_id;
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                  *&buf[12] = 1024;
                  *&buf[14] = top_id;
                  _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] No TCP metadata; not running PQ-TLS probe", buf, 0x12u);
                }

LABEL_444:

LABEL_445:
LABEL_446:

                v252 = v172;
                nw_context_assert_queue(v155[3]);
                if (!nw_connection_should_run_probe_locked(v252))
                {
LABEL_496:

                  goto LABEL_497;
                }

                if ((nw_parameters_get_tls(v155[2]) & 1) == 0)
                {
                  v278 = v155[2];
                  if (!v278 || _nw_parameters_get_logging_disabled(v278))
                  {
                    goto LABEL_496;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v253 = gconnectionLogObj;
                  if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
                  {
                    v279 = v252->top_id;
                    *buf = 136446466;
                    *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                    *&buf[12] = 1024;
                    *&buf[14] = v279;
                    _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] stack doesn't include TLS; not running ECH probe", buf, 0x12u);
                  }

                  goto LABEL_495;
                }

                v253 = nw_protocol_boringssl_copy_definition();
                v254 = nw_connection_copy_protocol_metadata_locked(v252, v253, 0, 0);
                v255 = v254;
                if (v254)
                {
                  v256 = v254;
                  if (sec_protocol_metadata_get_negotiated_protocol_version(v256) == kTLSProtocol13)
                  {
                    if (nw_endpoint_get_type(v252->endpoint) != nw_endpoint_type_host)
                    {
                      goto LABEL_493;
                    }

                    v257 = v252;
                    v258 = nw_endpoint_handler_copy_connected_path(v257->parent_endpoint_handler);
                    v259 = v258;
                    if (v258)
                    {
                      v260 = nw_path_copy_interface(v258);
                      v261 = v260;
                      if (!v260 || _nw_interface_get_type(v260) != 2 && _nw_interface_get_type(v261) != 1 && _nw_interface_get_type(v261) != 3)
                      {
                        v407 = v155[2];
                        if (v407 && !_nw_parameters_get_logging_disabled(v407))
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v408 = gconnectionLogObj;
                          if (os_log_type_enabled(v408, OS_LOG_TYPE_DEBUG))
                          {
                            v409 = v257->top_id;
                            *buf = 136446466;
                            *&buf[4] = "nw_connection_has_eligible_interface_for_probe";
                            *&buf[12] = 1024;
                            *&buf[14] = v409;
                            _os_log_impl(&dword_181A37000, v408, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] no interface or ineligible interface type, not probing", buf, 0x12u);
                          }
                        }

                        goto LABEL_493;
                      }

                      if (nw_parameters_get_should_skip_probe_sampling(v155[2]))
                      {
                        v262 = v155[2];
                        if (v262 && !_nw_parameters_get_logging_disabled(v262))
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v263 = gconnectionLogObj;
                          if (!os_log_type_enabled(v263, OS_LOG_TYPE_INFO))
                          {
                            goto LABEL_464;
                          }

                          v264 = v257->top_id;
                          *buf = 136446466;
                          *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                          *&buf[12] = 1024;
                          *&buf[14] = v264;
                          v265 = "%{public}s [C%u] sampling overridden, running ECH probe";
                          v266 = v263;
                          v267 = OS_LOG_TYPE_INFO;
                          v268 = 18;
LABEL_463:
                          _os_log_impl(&dword_181A37000, v266, v267, v265, buf, v268);
LABEL_464:

                          goto LABEL_465;
                        }

                        goto LABEL_465;
                      }

                      if (networkd_settings_get_BOOL(nw_setting_ech_probe_enabled))
                      {
                        int64_with_default = networkd_settings_get_int64_with_default(nw_setting_ech_probe_numerator, 0);
                        v422 = networkd_settings_get_int64_with_default(nw_setting_ech_probe_denominator, 0);
                        if (arc4random_uniform(v422) < int64_with_default)
                        {
                          v423 = v155[2];
                          if (v423 && !_nw_parameters_get_logging_disabled(v423))
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v263 = gconnectionLogObj;
                            if (!os_log_type_enabled(v263, OS_LOG_TYPE_DEBUG))
                            {
                              goto LABEL_464;
                            }

                            v424 = v257->top_id;
                            *buf = 136446978;
                            *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                            *&buf[12] = 1024;
                            *&buf[14] = v424;
                            *&buf[18] = 1024;
                            *&buf[20] = int64_with_default;
                            *&buf[24] = 1024;
                            *&buf[26] = v422;
                            v265 = "%{public}s [C%u] ECH probe sampled at %u / %u";
                            v266 = v263;
                            v267 = OS_LOG_TYPE_DEBUG;
                            v268 = 30;
                            goto LABEL_463;
                          }

LABEL_465:
                          stacka = _nw_parameters_copy(v155[2]);
                          logg = nw_parameters_copy_protocol_options_for_definition(stacka, v253);
                          sec_protocol_options_set_enable_encrypted_client_hello(logg, 1);
                          *applier = 0;
                          *&applier[8] = applier;
                          *&applier[16] = 0x2020000000;
                          applier[24] = 0;
                          v609 = nw_parameters_copy_default_protocol_stack(v155[2]);
                          nw_parameters_clear_protocol_stack(stacka, 5);
                          nw_parameters_clear_protocol_stack(stacka, 4);
                          v269 = nw_parameters_copy_default_protocol_stack(stacka);
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&buf[16] = ___ZL46nw_connection_run_ech_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke;
                          *&buf[24] = &unk_1E6A2EEA0;
                          *&v628[16] = applier;
                          v603 = v269;
                          *v628 = v603;
                          v620 = logg;
                          *&v628[8] = v620;
                          nw_protocol_stack_iterate_application_protocols(v609, buf);
                          probe_locked = nw_connection_create_probe_locked(v257, stacka);
                          if (probe_locked)
                          {
                            v271 = nw_queue_copy_current_workloop();
                            nw_connection_set_queue(&probe_locked->super, v271);

                            nw_connection_add_probe_locked(v257, probe_locked);
                            v272 = v155[3];
                            *type = MEMORY[0x1E69E9820];
                            *&type[8] = 3221225472;
                            *&type[16] = ___ZL46nw_connection_run_ech_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_237;
                            v651 = &unk_1E6A3D868;
                            v273 = probe_locked;
                            v652 = v273;
                            nw_queue_context_async(v272, type);
                            v274 = v155[2];
                            if (v274 && !_nw_parameters_get_logging_disabled(v274))
                            {
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v275 = gconnectionLogObj;
                              if (os_log_type_enabled(v275, OS_LOG_TYPE_INFO))
                              {
                                v276 = v257->top_id;
                                *v655 = 136446722;
                                *&v655[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                                *&v655[12] = 1024;
                                *&v655[14] = v276;
                                *&v655[18] = 2112;
                                *&v655[20] = v273;
                                _os_log_impl(&dword_181A37000, v275, OS_LOG_TYPE_INFO, "%{public}s [C%u] Started ECH probe: %@", v655, 0x1Cu);
                              }
                            }

                            v277 = v652;
                          }

                          else
                          {
                            v445 = v155[2];
                            if (!v445 || _nw_parameters_get_logging_disabled(v445))
                            {
                              goto LABEL_781;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v277 = gconnectionLogObj;
                            if (os_log_type_enabled(v277, OS_LOG_TYPE_INFO))
                            {
                              v446 = v257->top_id;
                              *type = 136446466;
                              *&type[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                              *&type[12] = 1024;
                              *&type[14] = v446;
                              _os_log_impl(&dword_181A37000, v277, OS_LOG_TYPE_INFO, "%{public}s [C%u] Could not create probe, nw_connection_create_probe_locked returned nil connection", type, 0x12u);
                            }
                          }

LABEL_781:
                          _Block_object_dispose(applier, 8);

                          goto LABEL_493;
                        }

LABEL_767:
                        v442 = v155[2];
                        if (v442 && !_nw_parameters_get_logging_disabled(v442))
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v443 = gconnectionLogObj;
                          if (os_log_type_enabled(v443, OS_LOG_TYPE_DEBUG))
                          {
                            v444 = v257->top_id;
                            *buf = 136446466;
                            *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                            *&buf[12] = 1024;
                            *&buf[14] = v444;
                            _os_log_impl(&dword_181A37000, v443, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] connection wasn't sampled for ECH probe", buf, 0x12u);
                          }
                        }

                        goto LABEL_493;
                      }

                      v439 = v155[2];
                      if (v439)
                      {
                        if (!_nw_parameters_get_logging_disabled(v439))
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v440 = gconnectionLogObj;
                          if (os_log_type_enabled(v440, OS_LOG_TYPE_DEBUG))
                          {
                            v441 = v257->top_id;
                            *buf = 136446466;
                            *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                            *&buf[12] = 1024;
                            *&buf[14] = v441;
                            _os_log_impl(&dword_181A37000, v440, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] ECH probes not enabled on this network", buf, 0x12u);
                          }
                        }

                        goto LABEL_767;
                      }

LABEL_493:

LABEL_494:
LABEL_495:

                      goto LABEL_496;
                    }

                    v402 = v155[2];
                    if (v402 && !_nw_parameters_get_logging_disabled(v402))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v403 = gconnectionLogObj;
                      if (os_log_type_enabled(v403, OS_LOG_TYPE_DEBUG))
                      {
                        v404 = v257->top_id;
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_has_eligible_interface_for_probe";
                        *&buf[12] = 1024;
                        *&buf[14] = v404;
                        _os_log_impl(&dword_181A37000, v403, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] no connected path, not probing", buf, 0x12u);
                      }
                    }
                  }

                  else
                  {
                    v282 = v155[2];
                    if (!v282 || _nw_parameters_get_logging_disabled(v282))
                    {
                      goto LABEL_493;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v257 = gconnectionLogObj;
                    if (os_log_type_enabled(&v257->super, OS_LOG_TYPE_DEBUG))
                    {
                      v283 = v252->top_id;
                      *buf = 136446466;
                      *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                      *&buf[12] = 1024;
                      *&buf[14] = v283;
                      _os_log_impl(&dword_181A37000, &v257->super, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] TLS 1.3 wasn't the negotiated protocol; not running ECH probe", buf, 0x12u);
                    }
                  }

                  goto LABEL_493;
                }

                v280 = v155[2];
                if (!v280 || _nw_parameters_get_logging_disabled(v280))
                {
                  goto LABEL_494;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v256 = gconnectionLogObj;
                if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
                {
                  v281 = v252->top_id;
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_run_ech_probe_locked_on_nw_queue";
                  *&buf[12] = 1024;
                  *&buf[14] = v281;
                  _os_log_impl(&dword_181A37000, v256, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] No TLS metadata; not running ECH probe", buf, 0x12u);
                }

                goto LABEL_493;
              }

              v175 = nw_protocol_boringssl_copy_definition();
              v176 = nw_connection_copy_protocol_metadata_locked(v172, v175, 0, 0);
              v177 = v176;
              if (v176)
              {
                v178 = v176;
                if (sec_protocol_metadata_get_negotiated_protocol_version(v178) != kTLSProtocol13)
                {
                  v187 = v155[2];
                  if (!v187 || _nw_parameters_get_logging_disabled(v187))
                  {
                    goto LABEL_442;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v181 = gconnectionLogObj;
                  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                  {
                    v188 = v172->top_id;
                    *buf = 136446466;
                    *&buf[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                    *&buf[12] = 1024;
                    *&buf[14] = v188;
                    _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] TLS 1.3 wasn't the negotiated protocol; not running PQ-TLS probe", buf, 0x12u);
                  }

LABEL_430:

                  goto LABEL_442;
                }

                tls_negotiated_group = sec_protocol_metadata_get_tls_negotiated_group();
                if (tls_negotiated_group && strstr(tls_negotiated_group, "MLKEM"))
                {
                  v180 = v155[2];
                  if (!v180 || _nw_parameters_get_logging_disabled(v180))
                  {
                    goto LABEL_442;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v181 = gconnectionLogObj;
                  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                  {
                    v182 = v172->top_id;
                    *buf = 136446466;
                    *&buf[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                    *&buf[12] = 1024;
                    *&buf[14] = v182;
                    _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] PQ-TLS already used; not running PQ-TLS probe", buf, 0x12u);
                  }

                  goto LABEL_430;
                }

                if (nw_endpoint_get_type(v172->endpoint) == nw_endpoint_type_host)
                {
                  v619 = v172;
                  v189 = nw_endpoint_handler_copy_connected_path(v172->parent_endpoint_handler);
                  if (!v189)
                  {
                    v209 = v155[2];
                    if (v209 && !_nw_parameters_get_logging_disabled(v209))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v210 = gconnectionLogObj;
                      if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
                      {
                        v211 = v619->top_id;
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_has_eligible_interface_for_probe";
                        *&buf[12] = 1024;
                        *&buf[14] = v211;
                        _os_log_impl(&dword_181A37000, v210, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] no connected path, not probing", buf, 0x12u);
                      }
                    }

                    goto LABEL_442;
                  }

                  logb = v189;
                  v190 = nw_path_copy_interface(v189);
                  v191 = v190;
                  if (!v190 || _nw_interface_get_type(v190) != 2 && _nw_interface_get_type(v191) != 1 && _nw_interface_get_type(v191) != 3)
                  {
                    v212 = v155[2];
                    if (v212 && !_nw_parameters_get_logging_disabled(v212))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v213 = gconnectionLogObj;
                      if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
                      {
                        v214 = v619->top_id;
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_has_eligible_interface_for_probe";
                        *&buf[12] = 1024;
                        *&buf[14] = v214;
                        _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] no interface or ineligible interface type, not probing", buf, 0x12u);
                      }
                    }

                    goto LABEL_442;
                  }

                  if (nw_parameters_get_should_skip_probe_sampling(v155[2]))
                  {
                    v192 = v155[2];
                    if (!v192 || _nw_parameters_get_logging_disabled(v192))
                    {
LABEL_330:
                      v195 = _nw_parameters_copy(v155[2]);
                      v196 = v155[2];
                      identifier = nw_protocol_definition_get_identifier(v175);
                      logc = v195;
                      if ((nw_parameters_has_protocol_in_stack(v196, identifier) & 1) == 0)
                      {
                        v198 = nw_parameters_copy_transform_array(v195);
                        if (v198)
                        {
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&buf[16] = ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_234;
                          *&buf[24] = &unk_1E6A3B418;
                          *v628 = v175;
                          *&v628[8] = v619;
                          *&v628[16] = v195;
                          _nw_array_apply(v198, buf);
                        }
                      }

                      v199 = nw_parameters_copy_protocol_options_for_definition(v195, v175);
                      v606 = v199;
                      if (!v199)
                      {
                        v225 = 0;
                        v226 = v155[2];
                        if (!v226 || _nw_parameters_get_logging_disabled(v226))
                        {
                          goto LABEL_441;
                        }

                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v227 = gconnectionLogObj;
                        if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
                        {
                          v228 = v619->top_id;
                          *type = 136446466;
                          *&type[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                          *&type[12] = 1024;
                          *&type[14] = v228;
                          _os_log_impl(&dword_181A37000, v227, OS_LOG_TYPE_INFO, "%{public}s [C%u] No TLS options found; not running PQ-TLS probe", type, 0x12u);
                        }

LABEL_440:

                        v225 = v606;
LABEL_441:

                        goto LABEL_442;
                      }

                      v602 = v199;
                      sec_protocol_options_set_pqtls_mode();
                      v200 = nw_parameters_copy_default_protocol_stack(v195);
                      stack = nw_protocol_stack_copy(v200);

                      v623 = 0;
                      v624 = &v623;
                      v625 = 0x2020000000;
                      v626 = 0;
                      nw_parameters_clear_protocol_stack(v195, 5);
                      nw_parameters_clear_protocol_stack(v195, 4);
                      v201 = nw_parameters_copy_default_protocol_stack(v195);
                      *type = MEMORY[0x1E69E9820];
                      *&type[8] = 3221225472;
                      *&type[16] = ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_235;
                      v651 = &unk_1E6A2EEA0;
                      v654 = &v623;
                      v601 = v201;
                      v652 = v601;
                      v600 = v602;
                      v653 = v600;
                      nw_protocol_stack_iterate_application_protocols(stack, type);
                      if (v624[3])
                      {
                        v202 = nw_connection_create_probe_locked(v619, v195);
                        if (v202)
                        {
                          v203 = nw_queue_copy_current_workloop();
                          nw_connection_set_queue(&v202->super, v203);

                          nw_connection_add_probe_locked(v619, v202);
                          v204 = v155[3];
                          *v647 = MEMORY[0x1E69E9820];
                          *&v647[8] = 3221225472;
                          *&v647[16] = ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_236;
                          v648 = &unk_1E6A3D868;
                          v599 = v202;
                          p_super = &v599->super;
                          nw_queue_context_async(v204, v647);
                          v205 = v155[2];
                          if (v205 && !_nw_parameters_get_logging_disabled(v205))
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v206 = gconnectionLogObj;
                            if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
                            {
                              v207 = v619->top_id;
                              *v641 = 136446722;
                              v642 = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                              v643 = 1024;
                              v644 = v207;
                              v645 = 2112;
                              v646 = v599;
                              _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_INFO, "%{public}s [C%u] Started PQ-TLS probe: %@", v641, 0x1Cu);
                            }
                          }

                          v208 = p_super;
                        }

                        else
                        {
                          v250 = v155[2];
                          if (!v250 || _nw_parameters_get_logging_disabled(v250))
                          {
                            v202 = 0;
                            goto LABEL_438;
                          }

                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v208 = gconnectionLogObj;
                          if (os_log_type_enabled(v208, OS_LOG_TYPE_INFO))
                          {
                            v251 = v619->top_id;
                            *v647 = 136446466;
                            *&v647[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                            *&v647[12] = 1024;
                            *&v647[14] = v251;
                            _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_INFO, "%{public}s [C%u] Could not create PQ-TLS probe, nw_connection_create_probe_locked returned nil connection", v647, 0x12u);
                          }
                        }
                      }

                      else
                      {
                        v229 = v155[2];
                        if (!v229 || _nw_parameters_get_logging_disabled(v229))
                        {
                          goto LABEL_439;
                        }

                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v202 = gconnectionLogObj;
                        if (os_log_type_enabled(&v202->super, OS_LOG_TYPE_INFO))
                        {
                          v230 = v619->top_id;
                          *v647 = 136446466;
                          *&v647[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                          *&v647[12] = 1024;
                          *&v647[14] = v230;
                          _os_log_impl(&dword_181A37000, &v202->super, OS_LOG_TYPE_INFO, "%{public}s [C%u] Did not add modified TLS options; not running PQ-TLS probe", v647, 0x12u);
                        }
                      }

LABEL_438:

LABEL_439:
                      _Block_object_dispose(&v623, 8);

                      v227 = v600;
                      goto LABEL_440;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v193 = gconnectionLogObj;
                    if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
                    {
                      v194 = v619->top_id;
                      *buf = 136446466;
                      *&buf[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                      *&buf[12] = 1024;
                      *&buf[14] = v194;
                      _os_log_impl(&dword_181A37000, v193, OS_LOG_TYPE_INFO, "%{public}s [C%u] sampling overridden, running PQ-TLS probe", buf, 0x12u);
                    }

LABEL_329:

                    goto LABEL_330;
                  }

                  v193 = networkd_settings_copy_value_of_type(nw_setting_pqtls_probe_domains, MEMORY[0x1E69E9E50]);
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  buf[24] = 1;
                  if (v193)
                  {
                    buf[24] = 0;
                    *applier = MEMORY[0x1E69E9820];
                    *&applier[8] = 3221225472;
                    *&applier[16] = ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke;
                    *&applier[24] = &unk_1E6A324A8;
                    v659 = v619;
                    v660 = buf;
                    xpc_array_apply(v193, applier);

                    if ((*(*&buf[8] + 24) & 1) == 0)
                    {
                      goto LABEL_376;
                    }
                  }

                  v215 = networkd_settings_copy_value_of_type(nw_setting_pqtls_probe_exclude_domains, MEMORY[0x1E69E9E50]);
                  if (v215)
                  {
                    *v655 = MEMORY[0x1E69E9820];
                    *&v655[8] = 3221225472;
                    *&v655[16] = ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_2;
                    *&v655[24] = &unk_1E6A324A8;
                    v656 = v619;
                    v657 = buf;
                    xpc_array_apply(v215, v655);
                  }

                  if (*(*&buf[8] + 24))
                  {
                    if (networkd_settings_get_BOOL(nw_setting_pqtls_probe_enabled))
                    {
                      logd = networkd_settings_get_int64_with_default(nw_setting_pqtls_probe_numerator, 0);
                      v607 = networkd_settings_get_int64_with_default(nw_setting_pqtls_probe_denominator, 0);
                      if (arc4random_uniform(v607) < logd)
                      {
                        v216 = v155[2];
                        if (v216 && !_nw_parameters_get_logging_disabled(v216))
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v217 = gconnectionLogObj;
                          if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
                          {
                            v218 = v619->top_id;
                            *type = 136446978;
                            *&type[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                            *&type[12] = 1024;
                            *&type[14] = v218;
                            *&type[18] = 1024;
                            *&type[20] = logd;
                            LOWORD(v651) = 1024;
                            *(&v651 + 2) = v607;
                            _os_log_impl(&dword_181A37000, v217, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] PQ-TLS probe sampled at %u / %u", type, 0x1Eu);
                          }
                        }

                        _Block_object_dispose(buf, 8);
                        goto LABEL_329;
                      }

                      goto LABEL_424;
                    }

                    v243 = v155[2];
                    if (!v243)
                    {
                      goto LABEL_424;
                    }

                    if (!_nw_parameters_get_logging_disabled(v243))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v244 = gconnectionLogObj;
                      if (os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG))
                      {
                        v245 = v619->top_id;
                        *type = 136446466;
                        *&type[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                        *&type[12] = 1024;
                        *&type[14] = v245;
                        _os_log_impl(&dword_181A37000, v244, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] PQ-TLS probes not enabled on this network", type, 0x12u);
                      }
                    }

                    v246 = v155[2];
                    if (!v246 || _nw_parameters_get_logging_disabled(v246))
                    {
LABEL_424:
                      _Block_object_dispose(buf, 8);

                      v248 = v155[2];
                      if (!v248 || _nw_parameters_get_logging_disabled(v248))
                      {
                        goto LABEL_442;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v181 = gconnectionLogObj;
                      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                      {
                        v249 = v619->top_id;
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                        *&buf[12] = 1024;
                        *&buf[14] = v249;
                        _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] connection wasn't sampled for PQ-TLS probe", buf, 0x12u);
                      }

                      goto LABEL_430;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v220 = gconnectionLogObj;
                    if (!os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
                    {
LABEL_423:

                      goto LABEL_424;
                    }

                    logf = v619->top_id;
                    v608 = networkd_settings_get_BOOL(nw_setting_pqtls_probe_enabled);
                    v247 = networkd_settings_get_int64_with_default(nw_setting_pqtls_probe_enabled, 0);
                    *type = 136446978;
                    *&type[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                    *&type[12] = 1024;
                    *&type[14] = logf;
                    *&type[18] = 1024;
                    *&type[20] = v608;
                    LOWORD(v651) = 1024;
                    *(&v651 + 2) = v247;
                    v222 = "%{public}s [C%u] probe enabled %u %u";
                    v223 = v220;
                    v224 = 30;
                  }

                  else
                  {
LABEL_376:
                    v219 = v155[2];
                    if (!v219 || _nw_parameters_get_logging_disabled(v219))
                    {
                      goto LABEL_424;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v220 = gconnectionLogObj;
                    if (!os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_423;
                    }

                    v221 = v619->top_id;
                    *type = 136446466;
                    *&type[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                    *&type[12] = 1024;
                    *&type[14] = v221;
                    v222 = "%{public}s [C%u] PQ-TLS probe not enabled for this domain";
                    v223 = v220;
                    v224 = 18;
                  }

                  _os_log_impl(&dword_181A37000, v223, OS_LOG_TYPE_DEBUG, v222, type, v224);
                  goto LABEL_423;
                }
              }

              else
              {
                v185 = v155[2];
                if (!v185 || _nw_parameters_get_logging_disabled(v185))
                {
                  goto LABEL_443;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v178 = gconnectionLogObj;
                if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
                {
                  v186 = v172->top_id;
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_run_pqtls_probe_locked_on_nw_queue";
                  *&buf[12] = 1024;
                  *&buf[14] = v186;
                  _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] No TLS metadata; not running PQ-TLS probe", buf, 0x12u);
                }
              }

LABEL_442:

LABEL_443:
              goto LABEL_444;
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL51nw_connection_run_sec_experiment_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke;
            *&buf[24] = &unk_1E6A39980;
            v157 = v156;
            *v628 = v157;
            v158 = _Block_copy(buf);
            *type = MEMORY[0x1E69E9820];
            *&type[8] = 3221225472;
            *&type[16] = ___ZL51nw_connection_run_sec_experiment_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_229;
            v651 = &unk_1E6A33B10;
            v159 = v157;
            v652 = v159;
            v160 = _Block_copy(type);
            should_skip_probe_sampling = nw_parameters_get_should_skip_probe_sampling(v155[2]);
            v162 = nw_queue_copy_current_workloop();
            v163 = sec_experiment_run_async_with_sampling_disabled();

            if (v163)
            {
              *(v159 + 109) |= 1u;
              v164 = v155[2];
              if (!v164 || _nw_parameters_get_logging_disabled(v164))
              {
                goto LABEL_281;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v165 = gconnectionLogObj;
              if (!os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
              {
LABEL_280:

LABEL_281:
                goto LABEL_282;
              }

              v166 = *(v159 + 112);
              v167 = "enabled";
              *&applier[4] = "nw_connection_run_sec_experiment_locked_on_nw_queue";
              *applier = 136446722;
              if (should_skip_probe_sampling)
              {
                v167 = "disabled";
              }

              *&applier[12] = 1024;
              *&applier[14] = v166;
              *&applier[18] = 2082;
              *&applier[20] = v167;
              v168 = "%{public}s [C%u] Probe connection started with sampling %{public}s";
            }

            else
            {
              v169 = v155[2];
              if (!v169 || _nw_parameters_get_logging_disabled(v169))
              {
                goto LABEL_281;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v165 = gconnectionLogObj;
              if (!os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_280;
              }

              v170 = *(v159 + 112);
              v171 = "enabled";
              *&applier[4] = "nw_connection_run_sec_experiment_locked_on_nw_queue";
              *applier = 136446722;
              if (should_skip_probe_sampling)
              {
                v171 = "disabled";
              }

              *&applier[12] = 1024;
              *&applier[14] = v170;
              *&applier[18] = 2082;
              *&applier[20] = v171;
              v168 = "%{public}s [C%u] Probe connection not run with sampling %{public}s";
            }

            _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_DEBUG, v168, applier, 0x1Cu);
            goto LABEL_280;
          }

          v239 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_connection_run_probes_locked_on_nw_queue";
          v240 = _os_log_send_and_compose_impl();

          type[0] = 16;
          applier[0] = 0;
          if (__nwlog_fault(v240, type, applier))
          {
            if (type[0] == 17)
            {
              v241 = __nwlog_obj();
              v242 = type[0];
              if (os_log_type_enabled(v241, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_run_probes_locked_on_nw_queue";
                _os_log_impl(&dword_181A37000, v241, v242, "%{public}s called with null connection", buf, 0xCu);
              }
            }

            else if (applier[0] == 1)
            {
              v566 = __nw_create_backtrace_string();
              v241 = __nwlog_obj();
              v567 = type[0];
              v568 = os_log_type_enabled(v241, type[0]);
              if (v566)
              {
                if (v568)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_run_probes_locked_on_nw_queue";
                  *&buf[12] = 2082;
                  *&buf[14] = v566;
                  _os_log_impl(&dword_181A37000, v241, v567, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v566);
                goto LABEL_1053;
              }

              if (v568)
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_run_probes_locked_on_nw_queue";
                _os_log_impl(&dword_181A37000, v241, v567, "%{public}s called with null connection, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v241 = __nwlog_obj();
              v579 = type[0];
              if (os_log_type_enabled(v241, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_run_probes_locked_on_nw_queue";
                _os_log_impl(&dword_181A37000, v241, v579, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_1053:
          if (v240)
          {
            free(v240);
          }

LABEL_497:

          v284 = *(a1 + 32);
          v285 = v284;
          if (v284)
          {
            nw_context_assert_queue(v284[3]);
            v286 = nw_endpoint_handler_copy_connected_flow_handler(v285[18]);
            v287 = v286;
            if (v286)
            {
              v288 = v286;
              v289 = v288[4];

              if (v289)
              {
                if (_nw_parameters_has_racing_proxy(v289))
                {
                  v290 = networkd_settings_get_int64_with_default(nw_setting_proxy_race_report_numerator, 1);
                  v291 = networkd_settings_get_int64_with_default(nw_setting_proxy_race_report_denominator, 20000);
                  if (arc4random_uniform(v291) < v290)
                  {
                    v292 = v285[2];
                    if (v292 && !_nw_parameters_get_logging_disabled(v292))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v293 = gconnectionLogObj;
                      if (os_log_type_enabled(v293, OS_LOG_TYPE_DEBUG))
                      {
                        v294 = *(v285 + 112);
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_check_proxy_race_report_locked_on_nw_queue";
                        *&buf[12] = 1024;
                        *&buf[14] = v294;
                        _os_log_impl(&dword_181A37000, v293, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] selected for reporting (proxy race)", buf, 0x12u);
                      }
                    }

                    *(v285 + 109) |= 2u;
                  }
                }
              }
            }

            goto LABEL_512;
          }

          v552 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_connection_check_proxy_race_report_locked_on_nw_queue";
          v553 = _os_log_send_and_compose_impl();

          type[0] = 16;
          applier[0] = 0;
          if (__nwlog_fault(v553, type, applier))
          {
            if (type[0] == 17)
            {
              v554 = __nwlog_obj();
              v555 = type[0];
              if (os_log_type_enabled(v554, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_check_proxy_race_report_locked_on_nw_queue";
                _os_log_impl(&dword_181A37000, v554, v555, "%{public}s called with null connection", buf, 0xCu);
              }
            }

            else if (applier[0] == 1)
            {
              v569 = __nw_create_backtrace_string();
              v554 = __nwlog_obj();
              v570 = type[0];
              v571 = os_log_type_enabled(v554, type[0]);
              if (v569)
              {
                if (v571)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_check_proxy_race_report_locked_on_nw_queue";
                  *&buf[12] = 2082;
                  *&buf[14] = v569;
                  _os_log_impl(&dword_181A37000, v554, v570, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v569);
                goto LABEL_1058;
              }

              if (v571)
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_check_proxy_race_report_locked_on_nw_queue";
                _os_log_impl(&dword_181A37000, v554, v570, "%{public}s called with null connection, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v554 = __nwlog_obj();
              v580 = type[0];
              if (os_log_type_enabled(v554, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_check_proxy_race_report_locked_on_nw_queue";
                _os_log_impl(&dword_181A37000, v554, v580, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_1058:
          if (v553)
          {
            free(v553);
          }

LABEL_512:

          v295 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          v296 = v295;
          if (v295)
          {
            v297 = v295;
            is_multilayer_packet_logging_enabled = _nw_path_is_multilayer_packet_logging_enabled(v297);

            if (is_multilayer_packet_logging_enabled)
            {
              *type = 0;
              *&type[8] = 0;
              if (nw_endpoint_handler_get_flow_id(*(a1 + 40), type))
              {
                v299 = *(*(a1 + 32) + 16);
                if (v299 && !_nw_parameters_get_logging_disabled(v299))
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v300 = gconnectionLogObj;
                  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
                  {
                    v301 = *(*(a1 + 32) + 448);
                    *buf = 136446466;
                    *&buf[4] = "nw_connection_endpoint_report_on_nw_queue_block_invoke";
                    *&buf[12] = 1024;
                    *&buf[14] = v301;
                    _os_log_impl(&dword_181A37000, v300, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] Multilayer packet logging enabled", buf, 0x12u);
                  }
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v302 = gconnectionLogObj;
                if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                {
                  v303 = *(a1 + 32);
                  v304 = *(v303 + 448);
                  *buf = 67110146;
                  *&buf[4] = v304;
                  *&buf[8] = 1042;
                  *&buf[10] = 16;
                  *&buf[14] = 2098;
                  *&buf[16] = v303 + 452;
                  *&buf[24] = 1042;
                  *&buf[26] = 16;
                  *&buf[30] = 2098;
                  *v628 = type;
                  _os_log_impl(&dword_181A37000, v302, OS_LOG_TYPE_DEFAULT, "[C%u %{public,uuid_t}.16P] newly connected endpoint handler with UUID %{public,uuid_t}.16P", buf, 0x28u);
                }

                pthread_once(&nw_mpkl_log_init(void)::init_once, nw_mpkl_log_init_once);
                v305 = gMpklLogObj;
                if (os_log_type_enabled(gMpklLogObj, OS_LOG_TYPE_DEFAULT))
                {
                  v306 = *(a1 + 32);
                  v307 = v306 + 452;
                  LODWORD(v306) = *(v306 + 500);
                  *buf = 67110658;
                  *&buf[4] = 140;
                  *&buf[8] = 1024;
                  *&buf[10] = 150;
                  *&buf[14] = 1042;
                  *&buf[16] = 16;
                  *&buf[20] = 2098;
                  *&buf[22] = v307;
                  *&buf[30] = 1042;
                  *v628 = 16;
                  *&v628[4] = 2098;
                  *&v628[6] = type;
                  *&v628[14] = 1024;
                  *&v628[16] = v306;
                  _os_log_impl(&dword_181A37000, v305, OS_LOG_TYPE_DEFAULT, "33 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public}.16P, nextUUID: %{public}.16P, logSeqn: %hhu}", buf, 0x34u);
                }

                ++*(*(a1 + 32) + 500);
              }
            }
          }

          v308 = *(a1 + 32);
          v309 = *(v308 + 440);
          *(v308 + 440) = 0;

          v310 = *(*(a1 + 32) + 432);
          *(*(a1 + 32) + 432) = 0;

          v311 = nw_endpoint_handler_copy_connected_flow_handler(*(a1 + 40));
          v621[0] = MEMORY[0x1E69E9820];
          v621[1] = 3221225472;
          v621[2] = ___ZL41nw_connection_endpoint_report_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke_223;
          v621[3] = &unk_1E6A2EE78;
          v622 = *(a1 + 32);
          nw_endpoint_handler_access_proxy_handler(v311, v621);
          nw_connection_fillout_establishment_report_on_nw_queue(*(a1 + 32), 1);
          v312 = *(a1 + 32);
          if ((*(v312 + 108) & 1) == 0)
          {
            v313 = v312;
            v314 = v313[2];

            if (v314 && nw_parameters_get_ip_protocol(v314) == 6 && _nw_parameters_get_multipath(v314))
            {
              nw_connection_enable_stats_report_on_nw_queue(*(a1 + 32), 2);
            }

            v312 = *(a1 + 32);
          }

          v315 = nw_endpoint_handler_copy_current_path(*(v312 + 144));
          v316 = v315;
          if (v315)
          {
            v317 = v315;
            fallback_generation = _nw_path_get_fallback_generation(v317);

            *(*(a1 + 32) + 284) = fallback_generation;
            v319 = *(a1 + 32);
            v320 = *(v319 + 16);
            if (*(v319 + 284))
            {
              if (v320 && !_nw_parameters_get_logging_disabled(v320))
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v321 = gconnectionLogObj;
                if (!os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_550;
                }

                v322 = *(a1 + 32);
                v323 = *(v322 + 448);
                LODWORD(v322) = *(v322 + 284);
                *buf = 136446722;
                *&buf[4] = "nw_connection_endpoint_report_on_nw_queue_block_invoke_2";
                *&buf[12] = 1024;
                *&buf[14] = v323;
                *&buf[18] = 1024;
                *&buf[20] = v322;
                v324 = "%{public}s [C%u] Connected fallback generation %u";
                v325 = v321;
                v326 = OS_LOG_TYPE_INFO;
                v327 = 24;
LABEL_549:
                _os_log_impl(&dword_181A37000, v325, v326, v324, buf, v327);
LABEL_550:
              }
            }

            else if (v320 && !_nw_parameters_get_logging_disabled(v320))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v321 = gconnectionLogObj;
              if (!os_log_type_enabled(v321, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_550;
              }

              v328 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              *&buf[4] = "nw_connection_endpoint_report_on_nw_queue_block_invoke";
              *&buf[12] = 1024;
              *&buf[14] = v328;
              v324 = "%{public}s [C%u] Connected fallback generation 0";
              v325 = v321;
              v326 = OS_LOG_TYPE_DEBUG;
              v327 = 18;
              goto LABEL_549;
            }
          }

          v329 = *(a1 + 32);
          v330 = v329;
          if (v329)
          {
            v331 = v329[2];
            if (v331 && !_nw_parameters_get_logging_disabled(v331))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v332 = gconnectionLogObj;
              if (os_log_type_enabled(v332, OS_LOG_TYPE_INFO))
              {
                v333 = *(v330 + 112);
                *buf = 136446466;
                *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                *&buf[12] = 1024;
                *&buf[14] = v333;
                _os_log_impl(&dword_181A37000, v332, OS_LOG_TYPE_INFO, "%{public}s [C%u] Checking whether to start candidate manager", buf, 0x12u);
              }
            }

            if (nw_parameters_get_multipath_service(*(v330 + 2)))
            {
              v334 = *(v330 + 2);
              if (*(v330 + 52))
              {
                if (nw_parameters_get_server_mode(v334))
                {
                  v335 = *(v330 + 2);
                  if (!v335 || _nw_parameters_get_logging_disabled(v335))
                  {
                    goto LABEL_621;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v336 = gconnectionLogObj;
                  if (os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
                  {
                    v337 = *(v330 + 112);
                    *buf = 136446466;
                    *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                    *&buf[12] = 1024;
                    *&buf[14] = v337;
                    _os_log_impl(&dword_181A37000, v336, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] Server side, will wait for call to set IDS endpoint", buf, 0x12u);
                  }

                  goto LABEL_582;
                }

                *type = 0;
                *&type[8] = type;
                *&type[16] = 0x3032000000;
                v651 = __Block_byref_object_copy__24471;
                v652 = __Block_byref_object_dispose__24472;
                v653 = 0;
                *applier = 0;
                *&applier[8] = applier;
                *&applier[16] = 0x3032000000;
                *&applier[24] = __Block_byref_object_copy__24471;
                v659 = __Block_byref_object_dispose__24472;
                v660 = 0;
                v341 = *(v330 + 52);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL54nw_connection_start_candidate_manager_if_needed_lockedP24NWConcrete_nw_connection_block_invoke;
                *&buf[24] = &unk_1E6A2EEC8;
                v342 = v330;
                *v628 = v342;
                *&v628[8] = type;
                *&v628[16] = applier;
                nw_establishment_report_enumerate_resolution_reports(v341, buf);
                if (nw_parameters_get_server_mode(*(v330 + 2)))
                {
LABEL_620:

                  _Block_object_dispose(applier, 8);
                  _Block_object_dispose(type, 8);

                  goto LABEL_621;
                }

                v343 = *(v330 + 2);
                if (v343 && !_nw_parameters_get_logging_disabled(v343))
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v344 = gconnectionLogObj;
                  if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
                  {
                    v345 = *(v342 + 112);
                    *v655 = 136446466;
                    *&v655[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                    *&v655[12] = 1024;
                    *&v655[14] = v345;
                    _os_log_impl(&dword_181A37000, v344, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] Client side", v655, 0x12u);
                  }
                }

                v346 = *&type[8];
                if (!*(*&type[8] + 40) && *(*&applier[8] + 40))
                {
                  v354 = nw_connection_copy_endpoint(v342);
                  v355 = *(*&type[8] + 40);
                  *(*&type[8] + 40) = v354;

                  v356 = *(v330 + 2);
                  if (v356 && !_nw_parameters_get_logging_disabled(v356))
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v357 = gconnectionLogObj;
                    if (os_log_type_enabled(v357, OS_LOG_TYPE_DEBUG))
                    {
                      v358 = *(v342 + 112);
                      v359 = *(*&type[8] + 40);
                      *v655 = 136446722;
                      *&v655[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                      *&v655[12] = 1024;
                      *&v655[14] = v358;
                      *&v655[18] = 2112;
                      *&v655[20] = v359;
                      _os_log_impl(&dword_181A37000, v357, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Trying to use original endpoint %@", v655, 0x1Cu);
                    }
                  }

                  v360 = nw_endpoint_get_type(*(*&type[8] + 40));
                  v346 = *&type[8];
                  if (v360 != nw_endpoint_type_bonjour_service)
                  {
                    v361 = *(*&type[8] + 40);
                    *(*&type[8] + 40) = 0;

                    v346 = *&type[8];
                  }
                }

                v347 = *(v330 + 2);
                if (*(v346 + 40))
                {
                  if (nw_parameters_get_stricter_path_scoping(v347) && (nw_parameters_has_migration_controller_session_uuid(*(v330 + 2)) & 1) == 0)
                  {
                    v399 = nw_candidate_manager_create_with_connection(v342, *(*&type[8] + 40));
                    v400 = *(v342 + 7);
                    *(v342 + 7) = v399;

                    v401 = *(v342 + 7);
                    if (v401)
                    {
                      nw_candidate_manager_set_original_path(v401, *(*&applier[8] + 40));
                      nw_candidate_manager_start_client(*(v342 + 7), 0);
                      goto LABEL_620;
                    }

                    v405 = *(v330 + 2);
                    if (!v405 || _nw_parameters_get_logging_disabled(v405))
                    {
                      goto LABEL_620;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v349 = gconnectionLogObj;
                    if (!os_log_type_enabled(v349, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_619;
                    }

                    v406 = *(v342 + 112);
                    *v655 = 136446466;
                    *&v655[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                    *&v655[12] = 1024;
                    *&v655[14] = v406;
                    v351 = "%{public}s [C%u] Failed to create candidate manager";
                  }

                  else
                  {
                    v348 = *(v330 + 2);
                    if (!v348 || _nw_parameters_get_logging_disabled(v348))
                    {
                      goto LABEL_620;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v349 = gconnectionLogObj;
                    if (!os_log_type_enabled(v349, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_619;
                    }

                    v350 = *(v342 + 112);
                    *v655 = 136446466;
                    *&v655[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                    *&v655[12] = 1024;
                    *&v655[14] = v350;
                    v351 = "%{public}s [C%u] Not starting candidate manager";
                  }

                  v352 = v349;
                  v353 = OS_LOG_TYPE_INFO;
                }

                else
                {
                  if (!v347 || _nw_parameters_get_logging_disabled(v347))
                  {
                    goto LABEL_620;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v349 = gconnectionLogObj;
                  if (!os_log_type_enabled(v349, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_619;
                  }

                  v362 = *(v342 + 112);
                  *v655 = 136446466;
                  *&v655[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                  *&v655[12] = 1024;
                  *&v655[14] = v362;
                  v351 = "%{public}s [C%u] No bonjour endpoint in establishment report, cannot start candidate manager";
                  v352 = v349;
                  v353 = OS_LOG_TYPE_DEBUG;
                }

                _os_log_impl(&dword_181A37000, v352, v353, v351, v655, 0x12u);
LABEL_619:

                goto LABEL_620;
              }

              if (!v334 || _nw_parameters_get_logging_disabled(v334))
              {
                goto LABEL_621;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v336 = gconnectionLogObj;
              if (os_log_type_enabled(v336, OS_LOG_TYPE_ERROR))
              {
                v340 = *(v330 + 112);
                *buf = 136446466;
                *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                *&buf[12] = 1024;
                *&buf[14] = v340;
                _os_log_impl(&dword_181A37000, v336, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Establishment report is not ready, cannot start candidate manager", buf, 0x12u);
              }
            }

            else
            {
              v338 = *(v330 + 2);
              if (!v338 || _nw_parameters_get_logging_disabled(v338))
              {
                goto LABEL_621;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v336 = gconnectionLogObj;
              if (os_log_type_enabled(v336, OS_LOG_TYPE_DEBUG))
              {
                v339 = *(v330 + 112);
                *buf = 136446466;
                *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                *&buf[12] = 1024;
                *&buf[14] = v339;
                _os_log_impl(&dword_181A37000, v336, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Connection does not support multipath, not starting candidate manager", buf, 0x12u);
              }
            }

LABEL_582:

LABEL_621:
            v119 = *(a1 + 32);
            LOBYTE(v120) = *(v119 + 109);
            v121 = 1;
            goto LABEL_622;
          }

          v556 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
          v557 = _os_log_send_and_compose_impl();

          type[0] = 16;
          applier[0] = 0;
          if (__nwlog_fault(v557, type, applier))
          {
            if (type[0] == 17)
            {
              v558 = __nwlog_obj();
              v559 = type[0];
              if (os_log_type_enabled(v558, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                _os_log_impl(&dword_181A37000, v558, v559, "%{public}s called with null connection", buf, 0xCu);
              }
            }

            else if (applier[0] == 1)
            {
              v572 = __nw_create_backtrace_string();
              v558 = __nwlog_obj();
              v573 = type[0];
              v574 = os_log_type_enabled(v558, type[0]);
              if (v572)
              {
                if (v574)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                  *&buf[12] = 2082;
                  *&buf[14] = v572;
                  _os_log_impl(&dword_181A37000, v558, v573, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v572);
                goto LABEL_1063;
              }

              if (v574)
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                _os_log_impl(&dword_181A37000, v558, v573, "%{public}s called with null connection, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v558 = __nwlog_obj();
              v581 = type[0];
              if (os_log_type_enabled(v558, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_start_candidate_manager_if_needed_locked";
                _os_log_impl(&dword_181A37000, v558, v581, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_1063:
          if (v557)
          {
            free(v557);
          }

          goto LABEL_621;
        }

        v231 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_connection_set_event_handlers_on_connected_on_nw_queue";
        v232 = _os_log_send_and_compose_impl();

        type[0] = 16;
        applier[0] = 0;
        if (__nwlog_fault(v232, type, applier))
        {
          if (type[0] == 17)
          {
            v233 = __nwlog_obj();
            v234 = type[0];
            if (os_log_type_enabled(v233, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_set_event_handlers_on_connected_on_nw_queue";
              _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null connection", buf, 0xCu);
            }
          }

          else if (applier[0] == 1)
          {
            v560 = __nw_create_backtrace_string();
            v233 = __nwlog_obj();
            v561 = type[0];
            v562 = os_log_type_enabled(v233, type[0]);
            if (v560)
            {
              if (v562)
              {
                *buf = 136446466;
                *&buf[4] = "nw_connection_set_event_handlers_on_connected_on_nw_queue";
                *&buf[12] = 2082;
                *&buf[14] = v560;
                _os_log_impl(&dword_181A37000, v233, v561, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v560);
              goto LABEL_1043;
            }

            if (v562)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_set_event_handlers_on_connected_on_nw_queue";
              _os_log_impl(&dword_181A37000, v233, v561, "%{public}s called with null connection, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v233 = __nwlog_obj();
            v577 = type[0];
            if (os_log_type_enabled(v233, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_set_event_handlers_on_connected_on_nw_queue";
              _os_log_impl(&dword_181A37000, v233, v577, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_1043:
        if (v232)
        {
          free(v232);
        }

        goto LABEL_254;
      }
    }
  }

LABEL_622:
  if ((v120 & 0x40) == 0)
  {
    v364 = *(v119 + 152);
    v363 = (v119 + 152);
    if (!v364)
    {
      v365 = *(a1 + 56);
      if (!v365)
      {
        goto LABEL_809;
      }

      v366 = *v365;
      if (v366 != 3)
      {
        goto LABEL_626;
      }

      if (v365[1] == 5)
      {
        objc_storeStrong(v363, *(a1 + 40));
        v383 = *(a1 + 32);
        if ((*(v383 + 108) & 1) == 0)
        {
          v384 = nw_connection_copy_parameters(v383);
          v385 = v384;
          if (v384 && nw_parameters_get_ip_protocol(v384) == 6 && _nw_parameters_get_multipath(v385))
          {
            nw_connection_enable_stats_report_on_nw_queue(*(a1 + 32), 2);
          }
        }
      }
    }
  }

  v365 = *(a1 + 56);
  if (!v365)
  {
    goto LABEL_809;
  }

  v366 = *v365;
LABEL_626:
  if (v366 == 5 && v365[1] - 3 <= 1)
  {
    v367 = *(a1 + 32);
    if ((*(v367 + 109) & 0x40) != 0 || *(v367 + 152))
    {
      if (nw_connection_used_fallback_locked(v367))
      {
        v368 = *(a1 + 32);
        v369 = 144;
        if ((*(v368 + 109) & 0x40) == 0)
        {
          v369 = 152;
        }

        v370 = *(v368 + v369);
        v371 = v370;
        if (v370)
        {
          v372 = v370;
          v373 = v372[29];

          if (v373 == 2)
          {
            v374 = v372;
            v375 = v374->state == 5;

            if (!v375)
            {
              v376 = nw_endpoint_handler_copy_flow(v374);
              if ((*(v376 + 33) & 0x40) != 0)
              {
                goto LABEL_807;
              }

              v377 = v374;
              v378 = v377->parameters;

              LOBYTE(v377) = nw_parameters_multipath_fallback_allowed(v378);
              if (v377)
              {
                goto LABEL_807;
              }

              v379 = *(v376 + 114);
              if (!v379)
              {
                goto LABEL_807;
              }

              v380 = *(v379 + 40);
              v381 = *(v376 + 114);
              if (v380 == &nw_protocol_ref_counted_handle)
              {
                goto LABEL_710;
              }

              if (v380 != &nw_protocol_ref_counted_additional_handle)
              {
                v382 = 1;
                goto LABEL_714;
              }

              v381 = *(v379 + 64);
              if (v381)
              {
LABEL_710:
                v410 = *(v381 + 88);
                if (v410)
                {
                  *(v381 + 88) = v410 + 1;
                }

                if (v380 == &nw_protocol_ref_counted_handle)
                {
                  v411 = 0;
                  v420 = v379;
                  goto LABEL_742;
                }

                v411 = 0;
                v382 = 0;
                if (v380 != &nw_protocol_ref_counted_additional_handle)
                {
LABEL_714:
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_mark_fallback";
                  v412 = _os_log_send_and_compose_impl();
                  type[0] = 16;
                  applier[0] = 0;
                  if (!__nwlog_fault(v412, type, applier))
                  {
                    goto LABEL_736;
                  }

                  if (type[0] == 17)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v413 = gLogObj;
                    v414 = type[0];
                    if (!os_log_type_enabled(gLogObj, type[0]))
                    {
                      goto LABEL_736;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_socket_mark_fallback";
                    v415 = "%{public}s called with null socket_handler";
                  }

                  else
                  {
                    if (applier[0] == 1)
                    {
                      v416 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v417 = gLogObj;
                      v418 = type[0];
                      v419 = os_log_type_enabled(gLogObj, type[0]);
                      if (v416)
                      {
                        if (v419)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_socket_mark_fallback";
                          *&buf[12] = 2082;
                          *&buf[14] = v416;
                          _os_log_impl(&dword_181A37000, v417, v418, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v416);
                      }

                      else if (v419)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_socket_mark_fallback";
                        v415 = "%{public}s called with null socket_handler, no backtrace";
                        v425 = v417;
                        v426 = v418;
                        goto LABEL_735;
                      }

LABEL_736:
                      if (v412)
                      {
                        free(v412);
                      }

                      if (v382)
                      {
                        goto LABEL_807;
                      }

                      goto LABEL_796;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v413 = gLogObj;
                    v414 = type[0];
                    if (!os_log_type_enabled(gLogObj, type[0]))
                    {
                      goto LABEL_736;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_socket_mark_fallback";
                    v415 = "%{public}s called with null socket_handler, backtrace limit exceeded";
                  }

                  v425 = v413;
                  v426 = v414;
LABEL_735:
                  _os_log_impl(&dword_181A37000, v425, v426, v415, buf, 0xCu);
                  goto LABEL_736;
                }
              }

              else
              {
                v411 = 1;
              }

              v420 = *(v379 + 64);
LABEL_742:
              *type = 1;
              if (!setsockopt(*(v420 + 284), 0xFFFF, 4373, type, 4u))
              {
                if ((*(v420 + 413) & 0x80) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v434 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_socket_mark_fallback";
                    *&buf[12] = 2082;
                    *&buf[14] = v420 + 420;
                    v430 = "%{public}s %{public}s Setting SO_MARK_CELLFALLBACK on socket";
                    v431 = v434;
                    v432 = OS_LOG_TYPE_INFO;
                    v433 = 22;
LABEL_755:
                    _os_log_impl(&dword_181A37000, v431, v432, v430, buf, v433);
                  }
                }

LABEL_795:
                if ((v411 & 1) == 0)
                {
LABEL_796:
                  v450 = *(v379 + 40);
                  if (v450 == &nw_protocol_ref_counted_handle || v450 == &nw_protocol_ref_counted_additional_handle && (v379 = *(v379 + 64)) != 0)
                  {
                    v451 = *(v379 + 88);
                    if (v451)
                    {
                      v452 = v451 - 1;
                      *(v379 + 88) = v452;
                      if (!v452)
                      {
                        v453 = *(v379 + 64);
                        if (v453)
                        {
                          *(v379 + 64) = 0;
                          v453[2](v453);
                          _Block_release(v453);
                        }

                        if (*(v379 + 72))
                        {
                          v454 = *(v379 + 64);
                          if (v454)
                          {
                            _Block_release(v454);
                          }
                        }

                        free(v379);
                      }
                    }
                  }
                }

LABEL_807:

                goto LABEL_808;
              }

              v427 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v428 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_mark_fallback";
                *&buf[12] = 2082;
                *&buf[14] = v420 + 420;
                *&buf[22] = 1024;
                *&buf[24] = v427;
                _os_log_impl(&dword_181A37000, v428, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_MARK_CELLFALLBACK failed %{darwin.errno}d", buf, 0x1Cu);
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v429 = gLogObj;
              if (v427 == 22)
              {
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_795;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_mark_fallback";
                *&buf[12] = 1024;
                *&buf[14] = 22;
                v430 = "%{public}s setsockopt SO_MARK_CELLFALLBACK failed %{darwin.errno}d";
                v431 = v429;
                v432 = OS_LOG_TYPE_ERROR;
                v433 = 18;
                goto LABEL_755;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_mark_fallback";
              *&buf[12] = 1024;
              *&buf[14] = v427;
              v435 = _os_log_send_and_compose_impl();
              applier[0] = 16;
              v655[0] = 0;
              if (__nwlog_fault(v435, applier, v655))
              {
                if (applier[0] == 17)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v436 = gLogObj;
                  v437 = applier[0];
                  if (!os_log_type_enabled(gLogObj, applier[0]))
                  {
                    goto LABEL_793;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_socket_mark_fallback";
                  *&buf[12] = 1024;
                  *&buf[14] = v427;
                  v438 = "%{public}s setsockopt SO_MARK_CELLFALLBACK failed %{darwin.errno}d";
LABEL_791:
                  v449 = v436;
LABEL_792:
                  _os_log_impl(&dword_181A37000, v449, v437, v438, buf, 0x12u);
                  goto LABEL_793;
                }

                if (v655[0] != 1)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v436 = gLogObj;
                  v437 = applier[0];
                  if (!os_log_type_enabled(gLogObj, applier[0]))
                  {
                    goto LABEL_793;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_socket_mark_fallback";
                  *&buf[12] = 1024;
                  *&buf[14] = v427;
                  v438 = "%{public}s setsockopt SO_MARK_CELLFALLBACK failed %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_791;
                }

                v447 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v437 = applier[0];
                loge = gLogObj;
                v448 = os_log_type_enabled(gLogObj, applier[0]);
                if (v447)
                {
                  if (v448)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_socket_mark_fallback";
                    *&buf[12] = 1024;
                    *&buf[14] = v427;
                    *&buf[18] = 2082;
                    *&buf[20] = v447;
                    _os_log_impl(&dword_181A37000, loge, v437, "%{public}s setsockopt SO_MARK_CELLFALLBACK failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v447);
                  goto LABEL_793;
                }

                if (v448)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_mark_fallback";
                  *&buf[12] = 1024;
                  *&buf[14] = v427;
                  v438 = "%{public}s setsockopt SO_MARK_CELLFALLBACK failed %{darwin.errno}d, no backtrace";
                  v449 = loge;
                  goto LABEL_792;
                }
              }

LABEL_793:
              if (v435)
              {
                free(v435);
              }

              goto LABEL_795;
            }

LABEL_808:

            goto LABEL_809;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v386 = gLogObj;
          if (v373 > 5)
          {
            v387 = "unknown-mode";
          }

          else
          {
            v387 = off_1E6A31018[v373];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_mark_fallback";
          *&buf[12] = 2082;
          *&buf[14] = v387;
          *&buf[22] = 2082;
          *&buf[24] = "flow";
          v388 = _os_log_send_and_compose_impl();

          type[0] = 16;
          applier[0] = 0;
          if (!__nwlog_fault(v388, type, applier))
          {
            goto LABEL_693;
          }

          if (type[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v389 = gLogObj;
            v390 = type[0];
            if (os_log_type_enabled(v389, type[0]))
            {
              if (v373 > 5)
              {
                v391 = "unknown-mode";
              }

              else
              {
                v391 = off_1E6A31018[v373];
              }

              *buf = 136446722;
              *&buf[4] = "nw_endpoint_handler_mark_fallback";
              *&buf[12] = 2082;
              *&buf[14] = v391;
              *&buf[22] = 2082;
              *&buf[24] = "flow";
              _os_log_impl(&dword_181A37000, v389, v390, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
            }
          }

          else if (applier[0] == 1)
          {
            v392 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v389 = gLogObj;
            v393 = type[0];
            v394 = os_log_type_enabled(v389, type[0]);
            if (v392)
            {
              if (v394)
              {
                if (v373 > 5)
                {
                  v395 = "unknown-mode";
                }

                else
                {
                  v395 = off_1E6A31018[v373];
                }

                *buf = 136446978;
                *&buf[4] = "nw_endpoint_handler_mark_fallback";
                *&buf[12] = 2082;
                *&buf[14] = v395;
                *&buf[22] = 2082;
                *&buf[24] = "flow";
                *v628 = 2082;
                *&v628[2] = v392;
                _os_log_impl(&dword_181A37000, v389, v393, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v392);
              if (!v388)
              {
                goto LABEL_808;
              }

              goto LABEL_694;
            }

            if (v394)
            {
              if (v373 > 5)
              {
                v398 = "unknown-mode";
              }

              else
              {
                v398 = off_1E6A31018[v373];
              }

              *buf = 136446722;
              *&buf[4] = "nw_endpoint_handler_mark_fallback";
              *&buf[12] = 2082;
              *&buf[14] = v398;
              *&buf[22] = 2082;
              *&buf[24] = "flow";
              _os_log_impl(&dword_181A37000, v389, v393, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v389 = gLogObj;
            v396 = type[0];
            if (os_log_type_enabled(v389, type[0]))
            {
              if (v373 > 5)
              {
                v397 = "unknown-mode";
              }

              else
              {
                v397 = off_1E6A31018[v373];
              }

              *buf = 136446722;
              *&buf[4] = "nw_endpoint_handler_mark_fallback";
              *&buf[12] = 2082;
              *&buf[14] = v397;
              *&buf[22] = 2082;
              *&buf[24] = "flow";
              _os_log_impl(&dword_181A37000, v389, v396, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
            }
          }

          goto LABEL_692;
        }

        v575 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_mark_fallback";
        v388 = _os_log_send_and_compose_impl();

        type[0] = 16;
        applier[0] = 0;
        if (__nwlog_fault(v388, type, applier))
        {
          if (type[0] == 17)
          {
            v389 = __nwlog_obj();
            v576 = type[0];
            if (os_log_type_enabled(v389, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_handler_mark_fallback";
              _os_log_impl(&dword_181A37000, v389, v576, "%{public}s called with null handler", buf, 0xCu);
            }

LABEL_692:

            goto LABEL_693;
          }

          if (applier[0] != 1)
          {
            v389 = __nwlog_obj();
            v587 = type[0];
            if (os_log_type_enabled(v389, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_handler_mark_fallback";
              _os_log_impl(&dword_181A37000, v389, v587, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_692;
          }

          v582 = __nw_create_backtrace_string();
          v389 = __nwlog_obj();
          v583 = type[0];
          v584 = os_log_type_enabled(v389, type[0]);
          if (!v582)
          {
            if (v584)
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_handler_mark_fallback";
              _os_log_impl(&dword_181A37000, v389, v583, "%{public}s called with null handler, no backtrace", buf, 0xCu);
            }

            goto LABEL_692;
          }

          if (v584)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_mark_fallback";
            *&buf[12] = 2082;
            *&buf[14] = v582;
            _os_log_impl(&dword_181A37000, v389, v583, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v582);
        }

LABEL_693:
        if (!v388)
        {
          goto LABEL_808;
        }

LABEL_694:
        free(v388);
        goto LABEL_808;
      }
    }
  }

LABEL_809:
  v455 = *(a1 + 64);
  v456 = *(a1 + 68);
  v457 = *(a1 + 56);
  if (v456 == 1 && v455 == 4 && v457 && *v457 == 2 && v457[1] == 2)
  {
    v458 = *(a1 + 48);
    if (v458)
    {
      v459 = v458;
      v460 = v459[3] == -65554;

      if (!v460)
      {
        v461 = *(a1 + 32);
        v462 = *(a1 + 40);
        error_code = nw_error_get_error_code(*(a1 + 48));
        nw_connection_report_symptom_on_nw_queue(v461, 421894, v462, error_code);
      }
    }

    v464 = *(a1 + 40);
    if (v464)
    {
      goto LABEL_818;
    }

    goto LABEL_866;
  }

  v465 = *(a1 + 32);
  v466 = v465;
  if (v465)
  {
    nw_context_assert_queue(v465[3]);
    if (v456 == 2 && v455 == 4 && v457 && *v457 == 3 && v457[1] == 7 && ((nw_parameters_get_tls(v466[2]) & 1) != 0 || (*(v466 + 109) & 0x40) != 0 && nw_endpoint_handler_stack_uses_tls(v466[18])))
    {
      v467 = v466;
      nw_context_assert_queue(v466[3]);
      v468 = *(v467 + 161);
      if (*(v467 + 161))
      {
        v469 = v467[39] + 10;
        while (*(v469 - 1) != 3 || *v469 != 5)
        {
          v469 += 8;
          if (!--v468)
          {
            goto LABEL_836;
          }
        }

        v471 = *(a1 + 32);
        v470 = *(a1 + 40);
        v472 = *(a1 + 48);
        if (v472)
        {
          v473 = v472;
          v474 = v473[3];
        }

        else
        {
          v474 = 0;
        }

        nw_connection_report_symptom_on_nw_queue(v471, 421893, v470, v474);
        goto LABEL_866;
      }

LABEL_836:
    }

    goto LABEL_837;
  }

  v544 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_event_is_tls_failure_on_nw_queue";
  v545 = _os_log_send_and_compose_impl();

  type[0] = 16;
  applier[0] = 0;
  if (__nwlog_fault(v545, type, applier))
  {
    if (type[0] == 17)
    {
      v546 = __nwlog_obj();
      v547 = type[0];
      if (os_log_type_enabled(v546, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_event_is_tls_failure_on_nw_queue";
        _os_log_impl(&dword_181A37000, v546, v547, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (applier[0] == 1)
    {
      v548 = __nw_create_backtrace_string();
      v546 = __nwlog_obj();
      v549 = type[0];
      v550 = os_log_type_enabled(v546, type[0]);
      if (v548)
      {
        if (v550)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_event_is_tls_failure_on_nw_queue";
          *&buf[12] = 2082;
          *&buf[14] = v548;
          _os_log_impl(&dword_181A37000, v546, v549, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v548);
        goto LABEL_973;
      }

      if (v550)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_event_is_tls_failure_on_nw_queue";
        _os_log_impl(&dword_181A37000, v546, v549, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v546 = __nwlog_obj();
      v551 = type[0];
      if (os_log_type_enabled(v546, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_event_is_tls_failure_on_nw_queue";
        _os_log_impl(&dword_181A37000, v546, v551, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_973:
  if (v545)
  {
    free(v545);
  }

LABEL_837:

  v475 = *(a1 + 56);
  v476 = *(a1 + 32);
  if (v475 && *v475 == 5 && v475[1] == 5 && (v477 = v476, tls = nw_parameters_get_tls(v476[2]), v476 = v477, (tls & 1) != 0))
  {

    v479 = *(a1 + 32);
    v480 = *(a1 + 40);
    v481 = *(a1 + 48);
    if (v481)
    {
      v482 = v481;
      v483 = v482[3];
    }

    else
    {
      v483 = 0;
    }

    nw_connection_report_symptom_on_nw_queue(v479, 421895, v480, v483);
    nw_connection_enable_stats_report_on_nw_queue(*(a1 + 32), 5);
  }

  else
  {

    v484 = *(a1 + 64);
    v485 = *(a1 + 68);
    v486 = *(a1 + 56);
    if (v485 == 2 && v484 == 4 && v486)
    {
      if (*v486 == 3 && v486[1] == 7)
      {
        v487 = *(a1 + 32);
        v488 = *(a1 + 40);
        v489 = *(a1 + 48);
        if (v489)
        {
          v490 = v489;
          v491 = v490[3];
        }

        else
        {
          v491 = 0;
        }

        nw_connection_report_symptom_on_nw_queue(v487, 421904, v488, v491);
      }
    }

    else if (v485 == 3 && v484 == 4 && v486 && *v486 == 4 && v486[1] == 5)
    {
      v492 = *(a1 + 32);
      v493 = *(a1 + 40);
      v494 = *(a1 + 48);
      v495 = v494 ? nw_error_get_error_code(v494) : 0;
      nw_connection_report_symptom_on_nw_queue(v492, 421902, v493, v495);
      v464 = *(a1 + 40);
      if (v464)
      {
LABEL_818:
        nw_connection_fillout_failed_resolution_report_on_nw_queue(*(a1 + 32), v464);
      }
    }
  }

LABEL_866:
  if (*(a1 + 64) == 4 && (v496 = *(a1 + 56)) != 0 && *v496 == 1 && v496[1] == 9)
  {
    *(*(a1 + 32) + 110) |= 1u;
  }

  else
  {
    v497 = *(a1 + 40);
    if (v497)
    {
      v498 = *(a1 + 32);
      v499 = nw_endpoint_handler_copy_endpoint(v497);
      v500 = v498;
      v501 = v499;
      v502 = v501;
      if (v501)
      {
        v503 = v501;
        known_tracker_name = _nw_endpoint_get_known_tracker_name(v503);

        if (known_tracker_name)
        {
          if ((*(v500 + 110) & 4) == 0)
          {
            v505 = v503;
            is_approved_app_domain = _nw_endpoint_get_is_approved_app_domain(v505);

            if ((is_approved_app_domain & 1) == 0 && nw_parameters_get_attribution(*(v500 + 2)) == nw_parameters_attribution_developer && ne_tracker_should_save_stacktrace())
            {
              v507 = *(v500 + 110);
              *(v500 + 110) = v507 | 4;
              v508 = *(v500 + 11);
              if (v508)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL49nw_connection_check_for_unlisted_tracker_on_queueP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
                *&buf[24] = &unk_1E6A3A5A8;
                *v628 = v505;
                dispatch_data_apply(v508, buf);
              }

              else
              {
                *(v500 + 110) = v507 | 6;
              }
            }
          }
        }
      }
    }
  }

  if (!v121)
  {
    v511 = *(a1 + 64);
    v512 = *(a1 + 32);
    if (v511 != 5)
    {
      goto LABEL_898;
    }

LABEL_897:
    nw_connection_set_state_on_nw_queue(v512, 5u);
    goto LABEL_914;
  }

  v509 = *(a1 + 32);
  if (!*(v509 + 176) && (nw_endpoint_handler_uses_multipath(*(v509 + 144)) & 1) == 0)
  {
    v510 = *(a1 + 56);
    if (v510)
    {
      if (*v510 == 1 && v510[1] == 5)
      {
        nw_connection_start_dry_run_on_nw_queue(*(a1 + 32));
      }
    }
  }

  v511 = *(a1 + 64);
  v512 = *(a1 + 32);
  if (v511 == 5)
  {
    goto LABEL_897;
  }

  if (*(a1 + 40) == *(v512 + 144))
  {
    v513 = *(a1 + 56);
    if (v513 && *v513 == 3 && v513[1] == 8)
    {
      nw_connection_update_better_path_locked_on_nw_queue(v512);
      v514 = *(a1 + 32);
      is_viable = nw_endpoint_handler_is_viable(*(a1 + 40));
      nw_connection_send_viability_changed_on_nw_queue(v514, is_viable);
      v512 = *(a1 + 32);
      v511 = *(a1 + 64);
    }

    goto LABEL_913;
  }

LABEL_898:
  if ((*(v512 + 109) & 0x40) == 0)
  {
    v516 = *(v512 + 144);
    if (*(a1 + 40) == v516)
    {
      if (v516)
      {
        if (v511 != 1 || (v517 = *(a1 + 56)) == 0 || *v517 != 1 || (v518 = v517[1], v518 != 5) && v518 != 3)
        {
LABEL_913:
          nw_connection_set_state_on_nw_queue(v512, v511);
          goto LABEL_914;
        }

        minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 40));
        logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
        if (minimize_logging)
        {
          if (logging_disabled)
          {
            goto LABEL_914;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v521 = gconnectionLogObj;
          if (os_log_type_enabled(v521, OS_LOG_TYPE_DEBUG))
          {
            v591 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v592 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
            v593 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
            v594 = nw_endpoint_get_logging_description(v593);
            v595 = nw_endpoint_handler_state_string(*(a1 + 40));
            v596 = nw_endpoint_handler_mode_string(*(a1 + 40));
            v597 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
            *buf = 136447746;
            *&buf[4] = "nw_connection_endpoint_report_on_nw_queue_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v591;
            *&buf[22] = 2082;
            *&buf[24] = v592;
            *v628 = 2082;
            *&v628[2] = v594;
            *&v628[10] = 2082;
            *&v628[12] = v595;
            *&v628[20] = 2082;
            *&v628[22] = v596;
            v629 = 2114;
            v630 = v597;
            _os_log_impl(&dword_181A37000, v521, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] skipping state update", buf, 0x48u);
          }

          goto LABEL_912;
        }

        if ((logging_disabled & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v521 = gconnectionLogObj;
          if (os_log_type_enabled(v521, OS_LOG_TYPE_INFO))
          {
            v522 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v523 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
            v524 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
            v525 = nw_endpoint_get_logging_description(v524);
            v526 = nw_endpoint_handler_state_string(*(a1 + 40));
            v527 = nw_endpoint_handler_mode_string(*(a1 + 40));
            v528 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
            *buf = 136447746;
            *&buf[4] = "nw_connection_endpoint_report_on_nw_queue_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v522;
            *&buf[22] = 2082;
            *&buf[24] = v523;
            *v628 = 2082;
            *&v628[2] = v525;
            *&v628[10] = 2082;
            *&v628[12] = v526;
            *&v628[20] = 2082;
            *&v628[22] = v527;
            v629 = 2114;
            v630 = v528;
            _os_log_impl(&dword_181A37000, v521, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] skipping state update", buf, 0x48u);
          }

LABEL_912:
        }
      }
    }
  }

LABEL_914:
  v530 = *(a1 + 32);
  v529 = *(a1 + 40);
  v531 = *(v530 + 144);
  if (v529 == v531 && (*(v530 + 109) & 0x40) != 0)
  {
    v532 = *(a1 + 56);
    if (v532)
    {
      if (*v532 == 1)
      {
        v533 = v532[1];
        if (v533 <= 6 && ((1 << v533) & 0x68) != 0)
        {
          v534 = v530;
          nw_context_assert_queue(v534[3]);
          v535 = v534[53];
          if (v535)
          {
            _nw_array_apply(v535, &__block_literal_global_245);
          }

          v530 = *(a1 + 32);
          v529 = *(a1 + 40);
          v531 = *(v530 + 144);
        }
      }
    }
  }

  if (v529 == v531 && v531)
  {
    v536 = *(a1 + 56);
    if (v536 && *v536 == 1 && (v537 = v536[1], v537 <= 6) && ((1 << v537) & 0x68) != 0)
    {
      v538 = v531;
      os_unfair_lock_lock(v538 + 28);
      v539 = *(v538 + 8);
      os_unfair_lock_unlock(v538 + 28);

      nw_connection_send_path_changed_on_nw_queue(v530, v539);
      v530 = *(a1 + 32);
      v529 = *(a1 + 40);
      v531 = *(v530 + 144);
    }

    else
    {
      v529 = v531;
    }
  }

  if (v529 != v531 || !v531)
  {
LABEL_940:
    if (v529 != v531)
    {
      return;
    }

    goto LABEL_941;
  }

  v540 = *(a1 + 56);
  if (v540)
  {
    if (*v540 == 1)
    {
      if (v540[1] == 10)
      {
        v541 = nw_endpoint_handler_copy_connected_path(v531);
        nw_connection_send_path_changed_on_nw_queue(v530, v541);

        v530 = *(a1 + 32);
        v531 = *(v530 + 144);
        if (*(a1 + 40) != v531)
        {
          return;
        }
      }

      goto LABEL_941;
    }

    v529 = v531;
    goto LABEL_940;
  }

LABEL_941:
  if (v531)
  {
    v542 = *(a1 + 56);
    if (v542)
    {
      if (*v542 == 1 && v542[1] == 11)
      {
        v543 = nw_endpoint_handler_copy_connected_path(v531);
        nw_connection_send_path_changed_on_nw_queue(v530, v543);
      }
    }
  }
}
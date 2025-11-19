uint64_t nw_protocol_default_connect(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_default_connect";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v6, &type, &v12))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_connect";
      v9 = "%{public}s called with null protocol";
    }

    else if (v12 == 1)
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
          v15 = "nw_protocol_default_connect";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v11)
      {
LABEL_22:
        if (v6)
        {
          free(v6);
        }

        return 0;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_connect";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_connect";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_22;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 0;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  connect = callbacks->connect;
  if (!connect)
  {
    return 0;
  }

  return connect();
}

void nw_protocol_ipv4_connected(nw_protocol *a1, nw_protocol *a2)
{
  v143 = *MEMORY[0x1E69E9840];
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
      v5 = 1;
      goto LABEL_11;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_connected";
        default_input_handler = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v132 = 0;
        if (!__nwlog_fault(default_input_handler, &type, &v132))
        {
          goto LABEL_43;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_connected";
          v11 = "%{public}s called with null ipv4";
LABEL_41:
          v25 = v9;
          v26 = v10;
          goto LABEL_42;
        }

        if (v132 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_connected";
          v11 = "%{public}s called with null ipv4, backtrace limit exceeded";
          goto LABEL_41;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(gLogObj, type);
        if (!backtrace_string)
        {
          if (!v24)
          {
LABEL_43:
            if (!default_input_handler)
            {
              goto LABEL_168;
            }

            goto LABEL_44;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_connected";
          v11 = "%{public}s called with null ipv4, no backtrace";
          v25 = v22;
          v26 = v23;
LABEL_42:
          _os_log_impl(&dword_181A37000, v25, v26, v11, buf, 0xCu);
          goto LABEL_43;
        }

        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv4_connected";
          v135 = 2082;
          v136 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!default_input_handler)
        {
LABEL_168:
          if ((v5 & 1) == 0)
          {
            v92 = v2->handle;
            if (v92 == &nw_protocol_ref_counted_handle || v92 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
            {
              v93 = v2[1].callbacks;
              if (v93)
              {
                v94 = (v93 - 1);
                v2[1].callbacks = v94;
                if (!v94)
                {
                  v95 = *v2[1].flow_id;
                  if (v95)
                  {
                    *v2[1].flow_id = 0;
                    v95[2](v95);
                    _Block_release(v95);
                  }

                  if (v2[1].flow_id[8])
                  {
                    v96 = *v2[1].flow_id;
                    if (v96)
                    {
                      _Block_release(v96);
                    }
                  }

                  goto LABEL_179;
                }
              }
            }
          }

          return;
        }

LABEL_44:
        free(default_input_handler);
        goto LABEL_168;
      }

      v7 = *a1[1].flow_id;
    }

    if ((BYTE1(v7[3].handle) & 1) == 0 && gLogDatapath == 1)
    {
      v102 = a2;
      v103 = __nwlog_obj();
      v104 = os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG);
      a2 = v102;
      if (v104)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_ipv4_connected";
        v135 = 2082;
        v136 = &v7[3].handle + 2;
        v137 = 2080;
        v138 = " ";
        v139 = 2048;
        p_output_handler = &v7[1].output_handler;
        _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Got a connected event from the lower layer", buf, 0x2Au);
        a2 = v102;
      }
    }

    default_input_handler = v2->default_input_handler;
    if (v2->output_handler != a2)
    {
      if (!default_input_handler)
      {
        goto LABEL_168;
      }

      v12 = *(default_input_handler + 24);
      if (!v12)
      {
        goto LABEL_168;
      }

      if (!a2)
      {
        goto LABEL_168;
      }

      v13 = *(v12 + 40);
      if (!v13)
      {
        goto LABEL_168;
      }

      v14 = *(default_input_handler + 40);
      v15 = v2->default_input_handler;
      if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(default_input_handler + 64)) != 0)
      {
        v27 = v15[1].callbacks;
        v16 = 0;
        if (v27)
        {
          v15[1].callbacks = (&v27->add_input_handler + 1);
        }
      }

      else
      {
        v16 = 1;
      }

      v28 = a2->handle;
      v29 = a2;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = *a2[1].flow_id) != 0)
      {
        v30 = v29[1].callbacks;
        if (v30)
        {
          v29[1].callbacks = (&v30->add_input_handler + 1);
        }

        v31 = a2;
        v13(default_input_handler);
        v32 = v31;
        v33 = v31->handle;
        if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v32 = *v31[1].flow_id) != 0)
        {
          v34 = v32[1].callbacks;
          if (v34)
          {
            v35 = (v34 - 1);
            v32[1].callbacks = v35;
            if (!v35)
            {
              v36 = *v32[1].flow_id;
              if (v36)
              {
                *v32[1].flow_id = 0;
                v37 = v32;
                v36[2](v36);
                _Block_release(v36);
                v32 = v37;
              }

              if (v32[1].flow_id[8])
              {
                v38 = *v32[1].flow_id;
                if (v38)
                {
                  v39 = v32;
                  _Block_release(v38);
                  v32 = v39;
                }
              }

              free(v32);
            }
          }
        }

        if (v16)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v13(default_input_handler);
        if (v16)
        {
          goto LABEL_168;
        }
      }

LABEL_163:
      v89 = *(default_input_handler + 40);
      if (v89 != &nw_protocol_ref_counted_handle)
      {
        if (v89 != &nw_protocol_ref_counted_additional_handle)
        {
          goto LABEL_168;
        }

        default_input_handler = *(default_input_handler + 64);
        if (!default_input_handler)
        {
          goto LABEL_168;
        }
      }

      v90 = *(default_input_handler + 88);
      if (!v90)
      {
        goto LABEL_168;
      }

      v91 = v90 - 1;
      *(default_input_handler + 88) = v91;
      if (v91)
      {
        goto LABEL_168;
      }

      v97 = *(default_input_handler + 64);
      if (v97)
      {
        *(default_input_handler + 64) = 0;
        v97[2](v97);
        _Block_release(v97);
      }

      if (*(default_input_handler + 72))
      {
        v98 = *(default_input_handler + 64);
        if (v98)
        {
          _Block_release(v98);
        }
      }

      goto LABEL_44;
    }

    if (default_input_handler)
    {
      v17 = *(default_input_handler + 40);
      v18 = v2->default_input_handler;
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *(default_input_handler + 64)) != 0)
      {
        v40 = v18[1].callbacks;
        if (v40)
        {
          v19 = 0;
          v18[1].callbacks = (&v40->add_input_handler + 1);
          v20 = *(default_input_handler + 24);
          if (!v20)
          {
            goto LABEL_198;
          }
        }

        else
        {
          v19 = 0;
          v20 = *(default_input_handler + 24);
          if (!v20)
          {
            goto LABEL_198;
          }
        }
      }

      else
      {
        v19 = 1;
        v20 = *(default_input_handler + 24);
        if (!v20)
        {
          goto LABEL_198;
        }
      }

      v41 = *(v20 + 112);
      if (v41)
      {
        v42 = v41(default_input_handler);
        if (v19)
        {
          goto LABEL_86;
        }

        goto LABEL_75;
      }

LABEL_198:
      __nwlog_obj();
      v107 = *(default_input_handler + 16);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_parameters";
      if (!v107)
      {
        v107 = "invalid";
      }

      v135 = 2082;
      v136 = v107;
      v137 = 2048;
      v138 = default_input_handler;
      type = OS_LOG_TYPE_ERROR;
      v132 = 0;
      v131 = _os_log_send_and_compose_impl();
      if (__nwlog_fault(v131, &type, &v132))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v108 = __nwlog_obj();
          v109 = type;
          log = v108;
          if (!os_log_type_enabled(v108, type))
          {
            goto LABEL_231;
          }

          v110 = *(default_input_handler + 16);
          if (!v110)
          {
            v110 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v110;
          v137 = 2048;
          v138 = default_input_handler;
          v111 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_230:
          _os_log_impl(&dword_181A37000, log, v109, v111, buf, 0x20u);
          goto LABEL_231;
        }

        if (v132 != 1)
        {
          v116 = __nwlog_obj();
          v109 = type;
          log = v116;
          if (!os_log_type_enabled(v116, type))
          {
            goto LABEL_231;
          }

          v117 = *(default_input_handler + 16);
          if (!v117)
          {
            v117 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v117;
          v137 = 2048;
          v138 = default_input_handler;
          v111 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
          goto LABEL_230;
        }

        v112 = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v109 = type;
        log = v113;
        v114 = os_log_type_enabled(v113, type);
        if (!v112)
        {
          if (!v114)
          {
            goto LABEL_231;
          }

          v119 = *(default_input_handler + 16);
          if (!v119)
          {
            v119 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v119;
          v137 = 2048;
          v138 = default_input_handler;
          v111 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
          goto LABEL_230;
        }

        if (v114)
        {
          v115 = *(default_input_handler + 16);
          if (!v115)
          {
            v115 = "invalid";
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v115;
          v137 = 2048;
          v138 = default_input_handler;
          v139 = 2082;
          p_output_handler = v112;
          _os_log_impl(&dword_181A37000, log, v109, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v112);
      }

LABEL_231:
      if (v131)
      {
        free(v131);
      }

      v42 = 0;
      if (v19)
      {
        goto LABEL_86;
      }

LABEL_75:
      v43 = *(default_input_handler + 40);
      if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *(default_input_handler + 64)) != 0)
      {
        v44 = *(default_input_handler + 88);
        if (v44)
        {
          v45 = v44 - 1;
          *(default_input_handler + 88) = v45;
          if (!v45)
          {
            v46 = v42;
            v47 = *(default_input_handler + 64);
            if (v47)
            {
              *(default_input_handler + 64) = 0;
              v47[2](v47);
              _Block_release(v47);
            }

            if (*(default_input_handler + 72))
            {
              v48 = *(default_input_handler + 64);
              if (v48)
              {
                _Block_release(v48);
              }
            }

            free(default_input_handler);
            v42 = v46;
          }
        }
      }

      goto LABEL_86;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_parameters";
    v120 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v132 = 0;
    if (__nwlog_fault(v120, &type, &v132))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v121 = __nwlog_obj();
        v122 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v123 = "%{public}s called with null protocol";
LABEL_246:
          v128 = v121;
          v129 = v122;
LABEL_247:
          _os_log_impl(&dword_181A37000, v128, v129, v123, buf, 0xCu);
        }
      }

      else if (v132 == 1)
      {
        v124 = __nw_create_backtrace_string();
        v125 = __nwlog_obj();
        v126 = type;
        v127 = os_log_type_enabled(v125, type);
        if (v124)
        {
          if (v127)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_parameters";
            v135 = 2082;
            v136 = v124;
            _os_log_impl(&dword_181A37000, v125, v126, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v124);
          goto LABEL_248;
        }

        if (v127)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v123 = "%{public}s called with null protocol, no backtrace";
          v128 = v125;
          v129 = v126;
          goto LABEL_247;
        }
      }

      else
      {
        v121 = __nwlog_obj();
        v122 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v123 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_246;
        }
      }
    }

LABEL_248:
    if (v120)
    {
      free(v120);
    }

    v42 = 0;
LABEL_86:
    v49 = nw_parameters_copy_context(v42);
    v50 = nw_path_copy_flow_registration(v49, v2);
    if (v50)
    {
      v51 = v50;
      stats_region = nw_path_flow_registration_get_stats_region(v50, v7->identifier->name);
      v7[2].identifier = stats_region;
      if (!stats_region)
      {
        if ((BYTE1(v7[3].handle) & 1) == 0 && gLogDatapath == 1)
        {
          v118 = __nwlog_obj();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv4_connected";
            v135 = 2082;
            v136 = &v7[3].handle + 2;
            v137 = 2080;
            v138 = " ";
            v139 = 2048;
            p_output_handler = &v7[1].output_handler;
            v141 = 2048;
            v142 = &g_ip_stats;
            _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p ipv4->ip_stats is NULL setting to global %p", buf, 0x34u);
          }
        }

        v7[2].identifier = &g_ip_stats;
      }

      os_release(v51);
    }

    if (v49)
    {
      os_release(v49);
    }

    *buf = 0;
    output_handler = v2->output_handler;
    if (output_handler)
    {
      v54 = output_handler->callbacks;
      if (v54)
      {
        get_message_properties = v54->get_message_properties;
        if (get_message_properties)
        {
          v56 = output_handler->handle;
          v57 = v2->output_handler;
          if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v57 = *output_handler[1].flow_id) != 0)
          {
            v59 = v57[1].callbacks;
            v58 = 0;
            if (v59)
            {
              v57[1].callbacks = (&v59->add_input_handler + 1);
            }
          }

          else
          {
            v58 = 1;
          }

          v60 = v2->handle;
          v61 = v2;
          if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v61 = *v2[1].flow_id) != 0)
          {
            v62 = v61[1].callbacks;
            if (v62)
            {
              v61[1].callbacks = (&v62->add_input_handler + 1);
            }

            get_message_properties(output_handler, v2, buf);
            v63 = v2->handle;
            v64 = v2;
            if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v64 = *v2[1].flow_id) != 0)
            {
              v65 = v64[1].callbacks;
              if (v65)
              {
                v66 = (v65 - 1);
                v64[1].callbacks = v66;
                if (!v66)
                {
                  v67 = *v64[1].flow_id;
                  if (v67)
                  {
                    *v64[1].flow_id = 0;
                    v67[2](v67);
                    _Block_release(v67);
                  }

                  if (v64[1].flow_id[8])
                  {
                    v68 = *v64[1].flow_id;
                    if (v68)
                    {
                      _Block_release(v68);
                    }
                  }

                  free(v64);
                }
              }
            }
          }

          else
          {
            get_message_properties(output_handler, v2, buf);
          }

          if ((v58 & 1) == 0)
          {
            v69 = output_handler->handle;
            if (v69 == &nw_protocol_ref_counted_handle || v69 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
            {
              v70 = output_handler[1].callbacks;
              if (v70)
              {
                v71 = (v70 - 1);
                output_handler[1].callbacks = v71;
                if (!v71)
                {
                  v72 = *output_handler[1].flow_id;
                  if (v72)
                  {
                    *output_handler[1].flow_id = 0;
                    v72[2](v72);
                    _Block_release(v72);
                  }

                  if (output_handler[1].flow_id[8])
                  {
                    v73 = *output_handler[1].flow_id;
                    if (v73)
                    {
                      _Block_release(v73);
                    }
                  }

                  free(output_handler);
                }
              }
            }
          }

          if ((*buf - 1) <= 0xFFFFFFFD)
          {
            LODWORD(v7[3].callbacks) = *buf;
          }
        }
      }
    }

    default_input_handler = v2->default_input_handler;
    if (!default_input_handler)
    {
      goto LABEL_168;
    }

    v74 = *(default_input_handler + 24);
    if (!v74)
    {
      goto LABEL_168;
    }

    v75 = *(v74 + 40);
    if (!v75)
    {
      goto LABEL_168;
    }

    v76 = *(default_input_handler + 40);
    v77 = v2->default_input_handler;
    if (v76 == &nw_protocol_ref_counted_handle || v76 == &nw_protocol_ref_counted_additional_handle && (v77 = *(default_input_handler + 64)) != 0)
    {
      v79 = v77[1].callbacks;
      v78 = 0;
      if (v79)
      {
        v77[1].callbacks = (&v79->add_input_handler + 1);
      }
    }

    else
    {
      v78 = 1;
    }

    v80 = v2->handle;
    v81 = v2;
    if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *v2[1].flow_id) != 0)
    {
      v82 = v81[1].callbacks;
      if (v82)
      {
        v81[1].callbacks = (&v82->add_input_handler + 1);
      }

      v75(default_input_handler, v2);
      v83 = v2->handle;
      v84 = v2;
      if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v84 = *v2[1].flow_id) != 0)
      {
        v85 = v84[1].callbacks;
        if (v85)
        {
          v86 = (v85 - 1);
          v84[1].callbacks = v86;
          if (!v86)
          {
            v87 = *v84[1].flow_id;
            if (v87)
            {
              *v84[1].flow_id = 0;
              v87[2](v87);
              _Block_release(v87);
            }

            if (v84[1].flow_id[8])
            {
              v88 = *v84[1].flow_id;
              if (v88)
              {
                _Block_release(v88);
              }
            }

            free(v84);
          }
        }
      }
    }

    else
    {
      v75(default_input_handler, v2);
    }

    if (v78)
    {
      goto LABEL_168;
    }

    goto LABEL_163;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ipv4_connected";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v132 = 0;
  if (__nwlog_fault(v2, &type, &v132))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv4_connected";
      v101 = "%{public}s called with null protocol";
    }

    else if (v132 == 1)
    {
      v105 = __nw_create_backtrace_string();
      v99 = __nwlog_obj();
      v100 = type;
      v106 = os_log_type_enabled(v99, type);
      if (v105)
      {
        if (v106)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv4_connected";
          v135 = 2082;
          v136 = v105;
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v105);
        if (v2)
        {
          goto LABEL_179;
        }

        return;
      }

      if (!v106)
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv4_connected";
      v101 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv4_connected";
      v101 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v99, v100, v101, buf, 0xCu);
  }

LABEL_222:
  if (v2)
  {
LABEL_179:
    free(v2);
  }
}

void nw_channel_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *&v26[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_channel_get_message_properties";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v5, &type, &v21))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v24 = "nw_channel_get_message_properties";
      v8 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
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
          v24 = "nw_channel_get_message_properties";
          v25 = 2082;
          *v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v5)
        {
          return;
        }

        goto LABEL_47;
      }

      if (!v14)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v24 = "nw_channel_get_message_properties";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v24 = "nw_channel_get_message_properties";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_45:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_46;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (a2)
    {
      v4 = *(a2 + 56);
      if (v4)
      {
        if (a3)
        {
          *a3 = *(v3 + 452);
          a3[1] = a3[1] & 0xFFFFFFF8 | (*(v4 + 153) >> 2) & 1;
        }

        return;
      }

      goto LABEL_54;
    }

    __nwlog_obj();
    *buf = 136446210;
    v24 = "__nw_protocol_get_output_handler_context";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "__nw_protocol_get_output_handler_context";
          v12 = "%{public}s called with null protocol";
LABEL_50:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }
      }

      else if (v21 == 1)
      {
        v17 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v18 = os_log_type_enabled(v10, type);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "__nw_protocol_get_output_handler_context";
            v25 = 2082;
            *v26 = v17;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          goto LABEL_51;
        }

        if (v18)
        {
          *buf = 136446210;
          v24 = "__nw_protocol_get_output_handler_context";
          v12 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_50;
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "__nw_protocol_get_output_handler_context";
          v12 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_50;
        }
      }
    }

LABEL_51:
    if (v9)
    {
      free(v9);
    }

    a2 = 0;
LABEL_54:
    v19 = a2;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "nw_channel_get_message_properties";
      v25 = 1042;
      *v26 = 16;
      v26[2] = 2098;
      *&v26[3] = v19;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s Can't find hash table entry for %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_channel_get_message_properties";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v5, &type, &v21))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v24 = "nw_channel_get_message_properties";
    v8 = "%{public}s called with null channel";
    goto LABEL_45;
  }

  if (v21 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v24 = "nw_channel_get_message_properties";
    v8 = "%{public}s called with null channel, backtrace limit exceeded";
    goto LABEL_45;
  }

  v15 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v24 = "nw_channel_get_message_properties";
    v8 = "%{public}s called with null channel, no backtrace";
    goto LABEL_45;
  }

  if (v16)
  {
    *buf = 136446466;
    v24 = "nw_channel_get_message_properties";
    v25 = 2082;
    *v26 = v15;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v5)
  {
LABEL_47:
    free(v5);
  }
}

uint64_t nw_interface_get_subtype(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_subtype(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_subtype";
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
        v12 = "nw_interface_get_subtype";
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
            v12 = "nw_interface_get_subtype";
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
        v12 = "nw_interface_get_subtype";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_subtype";
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

uint64_t nw_protocol_connect_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      v4 = a2;
      result = 0;
      if (a2)
      {
        v5 = *(v3 + 24);
        if (v5)
        {
          v6 = *(v2 + 40);
          v7 = v2;
          if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v2 + 64)) != 0)
          {
            v9 = *(v7 + 88);
            v8 = 0;
            if (v9)
            {
              *(v7 + 88) = v9 + 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v10 = *(a2 + 40);
          v11 = a2;
          if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a2 + 64)) != 0)
          {
            v12 = *(v11 + 88);
            if (v12)
            {
              *(v11 + 88) = v12 + 1;
            }

            result = v5(v2, a2);
            v13 = *(v4 + 40);
            if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
            {
              v14 = *(v4 + 88);
              if (v14)
              {
                v15 = v14 - 1;
                *(v4 + 88) = v15;
                if (!v15)
                {
                  v16 = result;
                  v17 = *(v4 + 64);
                  if (v17)
                  {
                    *(v4 + 64) = 0;
                    v17[2](v17);
                    _Block_release(v17);
                  }

                  if (*(v4 + 72))
                  {
                    v18 = *(v4 + 64);
                    if (v18)
                    {
                      _Block_release(v18);
                    }
                  }

                  free(v4);
                  result = v16;
                }
              }
            }
          }

          else
          {
            result = v5(v2, a2);
          }

          if ((v8 & 1) == 0)
          {
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
                  return v22;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t nw_path_get_tso_max_segment_size_v4(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_path_get_tso_max_segment_size_v4";
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
          v18 = "nw_path_get_tso_max_segment_size_v4";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
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
            v18 = "nw_path_get_tso_max_segment_size_v4";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_path_get_tso_max_segment_size_v4";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_path_get_tso_max_segment_size_v4";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_25;
  }

  if (!_nw_path_network_is_satisfied(v1))
  {
LABEL_25:
    tso_max_segment_size_v4 = 0;
    goto LABEL_26;
  }

  v3 = _nw_path_copy_direct_interface(v2);
  v4 = v3;
  if (v3)
  {
    tso_max_segment_size_v4 = _nw_interface_get_tso_max_segment_size_v4(v3);
  }

  else
  {
    tso_max_segment_size_v4 = 0;
  }

LABEL_26:
  return tso_max_segment_size_v4;
}

unint64_t _nw_interface_get_tso_max_segment_size_v4(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 64);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void nw_protocol_ipv4_notify(char *a1, const char *a2, unsigned int a3, _BYTE *a4, uint64_t a5)
{
  v89 = *MEMORY[0x1E69E9840];
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
        v80 = "nw_protocol_ipv4_notify";
        v13 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v77 = 0;
        if (!__nwlog_fault(v13, &type, &v77))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v80 = "nw_protocol_ipv4_notify";
          v16 = "%{public}s called with null ipv4";
          goto LABEL_36;
        }

        if (v77 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v80 = "nw_protocol_ipv4_notify";
          v16 = "%{public}s called with null ipv4, backtrace limit exceeded";
          goto LABEL_36;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v80 = "nw_protocol_ipv4_notify";
            v81 = 2082;
            v82 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v23)
        {
          *buf = 136446210;
          v80 = "nw_protocol_ipv4_notify";
          v16 = "%{public}s called with null ipv4, no backtrace";
          v24 = v21;
          v25 = v22;
          goto LABEL_37;
        }

LABEL_38:
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v12 = *(a1 + 8);
    }

    if (!a2)
    {
      __nwlog_obj();
      *buf = 136446210;
      v80 = "nw_protocol_ipv4_notify";
      v13 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v77 = 0;
      if (!__nwlog_fault(v13, &type, &v77))
      {
        goto LABEL_38;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v80 = "nw_protocol_ipv4_notify";
        v16 = "%{public}s called with null other_protocol";
        goto LABEL_36;
      }

      if (v77 == 1)
      {
        v54 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v55 = os_log_type_enabled(v14, type);
        if (v54)
        {
          if (!v55)
          {
            goto LABEL_135;
          }

          *buf = 136446466;
          v80 = "nw_protocol_ipv4_notify";
          v81 = 2082;
          v82 = v54;
          v56 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
          goto LABEL_134;
        }

        if (!v55)
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v80 = "nw_protocol_ipv4_notify";
        v16 = "%{public}s called with null other_protocol, no backtrace";
      }

      else
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v80 = "nw_protocol_ipv4_notify";
        v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      }

LABEL_36:
      v24 = v14;
      v25 = v15;
LABEL_37:
      _os_log_impl(&dword_181A37000, v24, v25, v16, buf, 0xCu);
      goto LABEL_38;
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
              v17 = v12[233];
              v12[233] = v17 & 0xFB | (4 * *a4);
              if ((v17 & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v18 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  v19 = (v12[233] >> 2) & 1;
                  *buf = 136447234;
                  v80 = "nw_protocol_ipv4_notify";
                  v81 = 2082;
                  v82 = v12 + 234;
                  v83 = 2080;
                  v84 = " ";
                  v85 = 2048;
                  v86 = v12 + 96;
                  v87 = 1024;
                  v88 = v19;
                  _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p segmentation offload notify enable %d", buf, 0x30u);
                }
              }

              goto LABEL_40;
            }

            __nwlog_obj();
            *buf = 136446210;
            v80 = "nw_protocol_ipv4_notify";
            v13 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v77 = 0;
            if (!__nwlog_fault(v13, &type, &v77))
            {
              goto LABEL_38;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (!os_log_type_enabled(v14, type))
              {
                goto LABEL_38;
              }

              *buf = 136446210;
              v80 = "nw_protocol_ipv4_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL))";
              goto LABEL_36;
            }

            if (v77 == 1)
            {
              v54 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type;
              v65 = os_log_type_enabled(v14, type);
              if (v54)
              {
                if (!v65)
                {
                  goto LABEL_135;
                }

                *buf = 136446466;
                v80 = "nw_protocol_ipv4_notify";
                v81 = 2082;
                v82 = v54;
                v56 = "%{public}s called with null (len == sizeof(BOOL)), dumping backtrace:%{public}s";
LABEL_134:
                _os_log_impl(&dword_181A37000, v14, v15, v56, buf, 0x16u);
LABEL_135:
                free(v54);
                if (v13)
                {
LABEL_39:
                  free(v13);
                }

LABEL_40:
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
                        goto LABEL_52;
                      }
                    }
                  }
                }

                return;
              }

              if (!v65)
              {
                goto LABEL_38;
              }

              *buf = 136446210;
              v80 = "nw_protocol_ipv4_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL)), no backtrace";
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (!os_log_type_enabled(v14, type))
              {
                goto LABEL_38;
              }

              *buf = 136446210;
              v80 = "nw_protocol_ipv4_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL)), backtrace limit exceeded";
            }
          }

          else
          {
            __nwlog_obj();
            *buf = 136446210;
            v80 = "nw_protocol_ipv4_notify";
            v13 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v77 = 0;
            if (!__nwlog_fault(v13, &type, &v77))
            {
              goto LABEL_38;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (!os_log_type_enabled(v14, type))
              {
                goto LABEL_38;
              }

              *buf = 136446210;
              v80 = "nw_protocol_ipv4_notify";
              v16 = "%{public}s called with null (val != nil)";
              goto LABEL_36;
            }

            if (v77 == 1)
            {
              v54 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type;
              v64 = os_log_type_enabled(v14, type);
              if (v54)
              {
                if (!v64)
                {
                  goto LABEL_135;
                }

                *buf = 136446466;
                v80 = "nw_protocol_ipv4_notify";
                v81 = 2082;
                v82 = v54;
                v56 = "%{public}s called with null (val != nil), dumping backtrace:%{public}s";
                goto LABEL_134;
              }

              if (!v64)
              {
                goto LABEL_38;
              }

              *buf = 136446210;
              v80 = "nw_protocol_ipv4_notify";
              v16 = "%{public}s called with null (val != nil), no backtrace";
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (!os_log_type_enabled(v14, type))
              {
                goto LABEL_38;
              }

              *buf = 136446210;
              v80 = "nw_protocol_ipv4_notify";
              v16 = "%{public}s called with null (val != nil), backtrace limit exceeded";
            }
          }
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          v80 = "nw_protocol_ipv4_notify";
          v13 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v77 = 0;
          if (!__nwlog_fault(v13, &type, &v77))
          {
            goto LABEL_38;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v14 = __nwlog_obj();
            v15 = type;
            if (!os_log_type_enabled(v14, type))
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v80 = "nw_protocol_ipv4_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv4->protocol))";
            goto LABEL_36;
          }

          if (v77 == 1)
          {
            v54 = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v15 = type;
            v63 = os_log_type_enabled(v14, type);
            if (v54)
            {
              if (!v63)
              {
                goto LABEL_135;
              }

              *buf = 136446466;
              v80 = "nw_protocol_ipv4_notify";
              v81 = 2082;
              v82 = v54;
              v56 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv4->protocol)), dumping backtrace:%{public}s";
              goto LABEL_134;
            }

            if (!v63)
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v80 = "nw_protocol_ipv4_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv4->protocol)), no backtrace";
          }

          else
          {
            v14 = __nwlog_obj();
            v15 = type;
            if (!os_log_type_enabled(v14, type))
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v80 = "nw_protocol_ipv4_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv4->protocol)), backtrace limit exceeded";
          }
        }

        goto LABEL_36;
      }

LABEL_28:
      nw_protocol_common_notify(v7, a2, a3);
      goto LABEL_40;
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
LABEL_76:
          if (v38)
          {
            v45 = v38;
            address_family = _nw_endpoint_get_address_family(v45);

            if (address_family == 2)
            {
              *(v12 + 38) = *&nw_endpoint_get_address(v45)->sa_data[2];
              if ((v12[233] & 1) == 0)
              {
                v47 = __nwlog_obj();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446978;
                  v80 = "nw_protocol_ipv4_notify";
                  v81 = 2082;
                  v82 = v12 + 234;
                  v83 = 2080;
                  v84 = " ";
                  v85 = 2048;
                  v86 = v12 + 96;
                  _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p updated local address", buf, 0x2Au);
                }
              }
            }
          }

          goto LABEL_28;
        }

LABEL_65:
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
              v75 = v38;
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
              v38 = v75;
            }
          }
        }

        goto LABEL_76;
      }
    }

    __nwlog_obj();
    v57 = *(a2 + 2);
    *buf = 136446722;
    v80 = "__nw_protocol_get_output_local_endpoint";
    if (!v57)
    {
      v57 = "invalid";
    }

    v81 = 2082;
    v82 = v57;
    v83 = 2048;
    v84 = a2;
    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    v76 = _os_log_send_and_compose_impl();
    if (__nwlog_fault(v76, &type, &v77))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v58 = __nwlog_obj();
        v59 = type;
        v60 = v58;
        if (!os_log_type_enabled(v58, type))
        {
          goto LABEL_163;
        }

        v61 = *(a2 + 2);
        if (!v61)
        {
          v61 = "invalid";
        }

        *buf = 136446722;
        v80 = "__nw_protocol_get_output_local_endpoint";
        v81 = 2082;
        v82 = v61;
        v83 = 2048;
        v84 = a2;
        v62 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback";
LABEL_161:
        v70 = v60;
        v71 = v59;
LABEL_162:
        _os_log_impl(&dword_181A37000, v70, v71, v62, buf, 0x20u);
        goto LABEL_163;
      }

      if (v77 != 1)
      {
        v60 = __nwlog_obj();
        v59 = type;
        if (!os_log_type_enabled(v60, type))
        {
          goto LABEL_163;
        }

        v69 = *(a2 + 2);
        if (!v69)
        {
          v69 = "invalid";
        }

        *buf = 136446722;
        v80 = "__nw_protocol_get_output_local_endpoint";
        v81 = 2082;
        v82 = v69;
        v83 = 2048;
        v84 = a2;
        v62 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, backtrace limit exceeded";
        goto LABEL_161;
      }

      v66 = __nw_create_backtrace_string();
      log = __nwlog_obj();
      v73 = type;
      v67 = os_log_type_enabled(log, type);
      if (v66)
      {
        if (v67)
        {
          v68 = *(a2 + 2);
          if (!v68)
          {
            v68 = "invalid";
          }

          *buf = 136446978;
          v80 = "__nw_protocol_get_output_local_endpoint";
          v81 = 2082;
          v82 = v68;
          v83 = 2048;
          v84 = a2;
          v85 = 2082;
          v86 = v66;
          _os_log_impl(&dword_181A37000, log, v73, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v66);
      }

      else if (v67)
      {
        v72 = *(a2 + 2);
        if (!v72)
        {
          v72 = "invalid";
        }

        *buf = 136446722;
        v80 = "__nw_protocol_get_output_local_endpoint";
        v81 = 2082;
        v82 = v72;
        v83 = 2048;
        v84 = a2;
        v62 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, no backtrace";
        v70 = log;
        v71 = v73;
        goto LABEL_162;
      }
    }

LABEL_163:
    if (v76)
    {
      free(v76);
    }

    v38 = 0;
    if (v34)
    {
      goto LABEL_76;
    }

    goto LABEL_65;
  }

  __nwlog_obj();
  *buf = 136446210;
  v80 = "nw_protocol_ipv4_notify";
  v48 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v77 = 0;
  if (__nwlog_fault(v48, &type, &v77))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (!os_log_type_enabled(v49, type))
      {
        goto LABEL_140;
      }

      *buf = 136446210;
      v80 = "nw_protocol_ipv4_notify";
      v51 = "%{public}s called with null protocol";
LABEL_139:
      _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      goto LABEL_140;
    }

    if (v77 != 1)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (!os_log_type_enabled(v49, type))
      {
        goto LABEL_140;
      }

      *buf = 136446210;
      v80 = "nw_protocol_ipv4_notify";
      v51 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_139;
    }

    v52 = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = type;
    v53 = os_log_type_enabled(v49, type);
    if (!v52)
    {
      if (!v53)
      {
        goto LABEL_140;
      }

      *buf = 136446210;
      v80 = "nw_protocol_ipv4_notify";
      v51 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_139;
    }

    if (v53)
    {
      *buf = 136446466;
      v80 = "nw_protocol_ipv4_notify";
      v81 = 2082;
      v82 = v52;
      _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v52);
  }

LABEL_140:
  if (v48)
  {
    v31 = v48;
LABEL_52:
    free(v31);
  }
}

void nw_protocol_notify_quiet(void *a1, uint64_t a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v3 = a1;
  v4 = a1[3];
  if (!v4)
  {
    return;
  }

  v5 = a2;
  if (!a2)
  {
    return;
  }

  v6 = *(v4 + 160);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  v8 = a1;
  if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = a1[8]) != 0)
  {
    v10 = v8[11];
    v9 = 0;
    if (v10)
    {
      v8[11] = v10 + 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = *(a2 + 40);
  v12 = a2;
  if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
  {
    v24 = *(v12 + 88);
    if (v24)
    {
      v13 = 0;
      *(v12 + 88) = v24 + 1;
      if (!a3)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0;
      if (!a3)
      {
LABEL_43:
        __nwlog_obj();
        *buf = 136446210;
        v34 = "__nw_protocol_notify";
        v25 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v31 = 0;
        if (!__nwlog_fault(v25, &type, &v31))
        {
          goto LABEL_59;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (!os_log_type_enabled(v26, type))
          {
            goto LABEL_59;
          }

          *buf = 136446210;
          v34 = "__nw_protocol_notify";
          v28 = "%{public}s called with null type";
        }

        else if (v31 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v27 = type;
          v30 = os_log_type_enabled(v26, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v34 = "__nw_protocol_notify";
              v35 = 2082;
              v36 = backtrace_string;
              _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_59;
          }

          if (!v30)
          {
LABEL_59:
            if (v25)
            {
              free(v25);
            }

            goto LABEL_15;
          }

          *buf = 136446210;
          v34 = "__nw_protocol_notify";
          v28 = "%{public}s called with null type, no backtrace";
        }

        else
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (!os_log_type_enabled(v26, type))
          {
            goto LABEL_59;
          }

          *buf = 136446210;
          v34 = "__nw_protocol_notify";
          v28 = "%{public}s called with null type, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        goto LABEL_59;
      }
    }
  }

  else
  {
    v13 = 1;
    if (!a3)
    {
      goto LABEL_43;
    }
  }

  v6(a1, a2);
LABEL_15:
  if ((v13 & 1) == 0)
  {
    v14 = *(v5 + 40);
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
    {
      v15 = *(v5 + 88);
      if (v15)
      {
        v16 = v15 - 1;
        *(v5 + 88) = v16;
        if (!v16)
        {
          v17 = *(v5 + 64);
          if (v17)
          {
            *(v5 + 64) = 0;
            v17[2](v17);
            _Block_release(v17);
          }

          if (*(v5 + 72))
          {
            v18 = *(v5 + 64);
            if (v18)
            {
              _Block_release(v18);
            }
          }

          free(v5);
        }
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    v19 = v3[5];
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
    {
      v20 = v3[11];
      if (v20)
      {
        v21 = v20 - 1;
        v3[11] = v21;
        if (!v21)
        {
          v22 = v3[8];
          if (v22)
          {
            v3[8] = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v3[9])
          {
            v23 = v3[8];
            if (v23)
            {
              _Block_release(v23);
            }
          }

          free(v3);
        }
      }
    }
  }
}

uint64_t nw_path_get_mtu(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    mtu = _nw_path_get_mtu(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_mtu";
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
        v16 = "nw_path_get_mtu";
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
          v16 = "nw_path_get_mtu";
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
        v16 = "nw_path_get_mtu";
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
        v16 = "nw_path_get_mtu";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  mtu = 0;
LABEL_3:

  return mtu;
}

unint64_t nw_path_get_tso_max_segment_size_v6(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_path_get_tso_max_segment_size_v6";
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
          v18 = "nw_path_get_tso_max_segment_size_v6";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
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
            v18 = "nw_path_get_tso_max_segment_size_v6";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_path_get_tso_max_segment_size_v6";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_path_get_tso_max_segment_size_v6";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_25;
  }

  if (!_nw_path_network_is_satisfied(v1))
  {
LABEL_25:
    tso_max_segment_size_v6 = 0;
    goto LABEL_26;
  }

  v3 = _nw_path_copy_direct_interface(v2);
  v4 = v3;
  if (v3)
  {
    tso_max_segment_size_v6 = _nw_interface_get_tso_max_segment_size_v6(v3);
  }

  else
  {
    tso_max_segment_size_v6 = 0;
  }

LABEL_26:
  return tso_max_segment_size_v6;
}

unint64_t _nw_interface_get_tso_max_segment_size_v6(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 72);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t nw_path_get_csum_flags(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    csum_flags = _nw_path_get_csum_flags(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_csum_flags";
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
        v16 = "nw_path_get_csum_flags";
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
          v16 = "nw_path_get_csum_flags";
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
        v16 = "nw_path_get_csum_flags";
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
        v16 = "nw_path_get_csum_flags";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  csum_flags = 0;
LABEL_3:

  return csum_flags;
}

uint64_t net_flowhash_jhash(int *a1, unsigned int a2, int a3)
{
  result = a2 + a3 - 559038737;
  if ((a1 & 3) != 0)
  {
    if (a1)
    {
      if (a2 >= 0xD)
      {
        v40 = a2 + a3 - 559038737;
        v42 = v40;
LABEL_13:
        v27 = v40 + *(a1 + 4) + (*(a1 + 5) << 8) + (*(a1 + 6) << 16) + (*(a1 + 7) << 24);
        v28 = result + *(a1 + 8) + (*(a1 + 9) << 8) + (*(a1 + 10) << 16) + (*(a1 + 11) << 24);
        v29 = (v42 + *a1 + (*(a1 + 1) << 8) + (*(a1 + 2) << 16) + (*(a1 + 3) << 24) - v28) ^ __ROR4__(v28, 28);
        v30 = v28 + v27;
        v31 = (v27 - v29) ^ __ROR4__(v29, 26);
        v32 = v29 + v30;
        v33 = (v30 - v31) ^ __ROR4__(v31, 24);
        v34 = v31 + v32;
        v35 = (v32 - v33) ^ __ROR4__(v33, 16);
        v36 = v33 + v34;
        v37 = (v34 - v35) ^ __ROR4__(v35, 13);
        v42 = v35 + v36;
        result = (v36 - v37) ^ __ROR4__(v37, 28);
        v40 = v37 + v42;
        a2 -= 12;
        a1 += 3;
      }

      else
      {
        v42 = a2 + a3 - 559038737;
        v40 = v42;
      }

      switch(a2)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_31;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_29;
        case 4u:
          goto LABEL_28;
        case 5u:
          goto LABEL_27;
        case 6u:
          goto LABEL_26;
        case 7u:
          goto LABEL_25;
        case 8u:
          goto LABEL_24;
        case 9u:
          goto LABEL_23;
        case 0xAu:
          goto LABEL_22;
        case 0xBu:
          goto LABEL_21;
        case 0xCu:
          LODWORD(result) = result + (*(a1 + 11) << 24);
LABEL_21:
          LODWORD(result) = result + (*(a1 + 10) << 16);
LABEL_22:
          LODWORD(result) = result + (*(a1 + 9) << 8);
LABEL_23:
          LODWORD(result) = result + *(a1 + 8);
LABEL_24:
          v40 += *(a1 + 7) << 24;
LABEL_25:
          v40 += *(a1 + 6) << 16;
LABEL_26:
          v40 += *(a1 + 5) << 8;
LABEL_27:
          v40 += *(a1 + 4);
LABEL_28:
          v42 += *(a1 + 3) << 24;
LABEL_29:
          v42 += *(a1 + 2) << 16;
LABEL_30:
          v42 += *(a1 + 1) << 8;
LABEL_31:
          v43 = v42 + *a1;
          HIDWORD(v44) = v40;
          LODWORD(v44) = v40;
          v45 = (result ^ v40) - (v44 >> 18);
          v46 = v43 ^ v45;
          break;
        default:
          goto LABEL_13;
      }

      goto LABEL_59;
    }

    if (a2 >= 0xD)
    {
      v40 = a2 + a3 - 559038737;
      v39 = v40;
LABEL_6:
      v5 = a1[1] + v40;
      v6 = a1[2] + result;
      v7 = (*a1 + v39 - v6) ^ __ROR4__(v6, 28);
      v8 = v6 + v5;
      v9 = (v5 - v7) ^ __ROR4__(v7, 26);
      v10 = v7 + v8;
      v11 = (v8 - v9) ^ __ROR4__(v9, 24);
      v12 = v9 + v10;
      v13 = (v10 - v11) ^ __ROR4__(v11, 16);
      v14 = v11 + v12;
      v15 = (v12 - v13) ^ __ROR4__(v13, 13);
      v39 = v13 + v14;
      result = (v14 - v15) ^ __ROR4__(v15, 28);
      v40 = v15 + v39;
      a2 -= 12;
      a1 += 3;
    }

    else
    {
      v39 = a2 + a3 - 559038737;
      v40 = v39;
    }

    switch(a2)
    {
      case 0u:
        return result;
      case 1u:
        v41 = *a1;
        goto LABEL_51;
      case 2u:
        goto LABEL_50;
      case 3u:
        v39 += *(a1 + 2) << 16;
LABEL_50:
        v41 = *a1;
LABEL_51:
        v53 = v39 + v41;
        goto LABEL_58;
      case 4u:
        goto LABEL_56;
      case 5u:
        v54 = *(a1 + 4);
        goto LABEL_55;
      case 6u:
        goto LABEL_53;
      case 7u:
        v40 += *(a1 + 6) << 16;
LABEL_53:
        v54 = *(a1 + 2);
LABEL_55:
        v40 += v54;
        goto LABEL_56;
      case 8u:
        break;
      case 9u:
        v51 = *(a1 + 8);
        goto LABEL_46;
      case 0xAu:
        goto LABEL_44;
      case 0xBu:
        LODWORD(result) = result + (*(a1 + 10) << 16);
LABEL_44:
        v51 = *(a1 + 4);
LABEL_46:
        LODWORD(result) = result + v51;
        break;
      case 0xCu:
        goto LABEL_32;
      default:
        goto LABEL_6;
    }
  }

  else
  {
    if (a2 < 0xD)
    {
      v39 = a2 + a3 - 559038737;
      v40 = v39;
    }

    else
    {
      v40 = a2 + a3 - 559038737;
      v39 = v40;
LABEL_9:
      v16 = a1[1] + v40;
      v17 = a1[2] + result;
      v18 = (*a1 + v39 - v17) ^ __ROR4__(v17, 28);
      v19 = v17 + v16;
      v20 = (v16 - v18) ^ __ROR4__(v18, 26);
      v21 = v18 + v19;
      v22 = (v19 - v20) ^ __ROR4__(v20, 24);
      v23 = v20 + v21;
      v24 = (v21 - v22) ^ __ROR4__(v22, 16);
      v25 = v22 + v23;
      v26 = (v23 - v24) ^ __ROR4__(v24, 13);
      v39 = v24 + v25;
      result = (v25 - v26) ^ __ROR4__(v26, 28);
      v40 = v26 + v39;
      a2 -= 12;
      a1 += 3;
    }

    switch(a2)
    {
      case 0u:
        return result;
      case 1u:
        v38 = *a1;
        goto LABEL_57;
      case 2u:
        v38 = *a1;
        goto LABEL_57;
      case 3u:
        v38 = *a1 & 0xFFFFFF;
        goto LABEL_57;
      case 4u:
        goto LABEL_56;
      case 5u:
        v50 = *(a1 + 4);
        goto LABEL_40;
      case 6u:
        v50 = *(a1 + 2);
LABEL_40:
        v40 += v50;
LABEL_56:
        v38 = *a1;
        goto LABEL_57;
      case 7u:
        v48 = a1;
        v38 = *a1;
        v49 = v48[1] & 0xFFFFFF;
        goto LABEL_48;
      case 8u:
        break;
      case 9u:
        v47 = *(a1 + 8);
        goto LABEL_42;
      case 0xAu:
        v47 = *(a1 + 4);
        goto LABEL_42;
      case 0xBu:
        v47 = a1[2] & 0xFFFFFF;
        goto LABEL_42;
      case 0xCu:
LABEL_32:
        v47 = a1[2];
LABEL_42:
        LODWORD(result) = v47 + result;
        break;
      default:
        goto LABEL_9;
    }
  }

  v52 = a1;
  v38 = *a1;
  v49 = v52[1];
LABEL_48:
  v40 += v49;
LABEL_57:
  v53 = v38 + v39;
LABEL_58:
  HIDWORD(v55) = v40;
  LODWORD(v55) = v40;
  v45 = (result ^ v40) - (v55 >> 18);
  v46 = v45 ^ v53;
LABEL_59:
  HIDWORD(v56) = v45;
  LODWORD(v56) = v45;
  v57 = v46 - (v56 >> 21);
  HIDWORD(v56) = v57;
  LODWORD(v56) = v57;
  v58 = (v57 ^ v40) - (v56 >> 7);
  HIDWORD(v56) = v58;
  LODWORD(v56) = v58;
  v59 = (v58 ^ v45) - (v56 >> 16);
  HIDWORD(v56) = v59;
  LODWORD(v56) = v59;
  HIDWORD(v56) = (v59 ^ v57) - (v56 >> 28);
  LODWORD(v56) = HIDWORD(v56);
  HIDWORD(v56) = (HIDWORD(v56) ^ v58) - (v56 >> 18);
  LODWORD(v56) = HIDWORD(v56);
  return (HIDWORD(v56) ^ v59) - (v56 >> 8);
}

uint64_t nw_interface_supports_tx_start(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_supports_tx_start(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_supports_tx_start";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_supports_tx_start";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_supports_tx_start";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_supports_tx_start";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_supports_tx_start";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

BOOL nw_interface_supports_ack_priority(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_supports_ack_priority(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_supports_ack_priority";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_supports_ack_priority";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_supports_ack_priority";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_supports_ack_priority";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_supports_ack_priority";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_supports_carrier_aggregation(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_supports_carrier_aggregation(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_supports_carrier_aggregation";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_supports_carrier_aggregation";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_supports_carrier_aggregation";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_supports_carrier_aggregation";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_supports_carrier_aggregation";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

id nw_path_copy_delegate_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_delegate_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_delegate_interface";
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
        v16 = "nw_path_copy_delegate_interface";
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
          v16 = "nw_path_copy_delegate_interface";
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
        v16 = "nw_path_copy_delegate_interface";
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
        v16 = "nw_path_copy_delegate_interface";
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

char *nw_path_should_probe_connectivity(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_should_probe_connectivity(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_should_probe_connectivity";
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
        v16 = "nw_path_should_probe_connectivity";
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
          v16 = "nw_path_should_probe_connectivity";
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
        v16 = "nw_path_should_probe_connectivity";
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
        v16 = "nw_path_should_probe_connectivity";
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

char *_nw_path_should_probe_connectivity(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 13) & 1);
  }

  return result;
}

char *nw_path_use_link_heuristics(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_use_link_heuristics(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_use_link_heuristics";
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
        v16 = "nw_path_use_link_heuristics";
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
          v16 = "nw_path_use_link_heuristics";
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
        v16 = "nw_path_use_link_heuristics";
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
        v16 = "nw_path_use_link_heuristics";
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

char *_nw_path_use_link_heuristics(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return (v1 >> 31);
  }

  return result;
}

void NWConnection.send(discontiguousContent:contentContext:isComplete:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  if (*a4)
  {
    v8 = a4[1];
    v9 = *(v4 + 16);
    v10 = sub_182AD2808();
    v11 = *(a2 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v8;
    aBlock[4] = sub_181BEBE78;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_161;
    v13 = _Block_copy(aBlock);

    nw_connection_send(v9, v10, v11, a3 & 1, v13);
    _Block_release(v13);
  }

  else
  {
    v14 = *(v4 + 16);
    v15 = sub_182AD2808();
    nw_connection_send_idempotent(v14, v15, *(a2 + 16), a3 & 1);
  }
}

uint64_t NWConnection.ContentContext.__deallocating_deinit()
{
  NWConnection.ContentContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t NWConnection.ContentContext.deinit()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 56);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t get_enum_tag_for_layout_string_7Network12NWConnectionC5StateOIeghn_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t NWProtocolFramer.Message.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_181BCDE38(uint64_t a1)
{
  v1 = *(a1 + 4) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for NWError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

void nw_connection_restart(nw_connection_t connection)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    if (!nw_parameters_get_logging_disabled(v1[2].isa))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        isa = v2[56].isa;
        v5 = v2[1].isa;
        v6 = v5;
        if (v5)
        {
          logging_description = _nw_endpoint_get_logging_description(v5);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v8 = v2[2].isa;
        *buf = 67109634;
        *v22 = isa;
        *&v22[4] = 2082;
        *&v22[6] = logging_description;
        *&v22[14] = 2114;
        *&v22[16] = v8;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "[C%u %{public}s %{public}@] restart", buf, 0x1Cu);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_connection_restart_block_invoke;
    v17[3] = &unk_1E6A3D868;
    v18 = v2;
    nw_connection_async_if_needed(v18, v17);

    goto LABEL_12;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *v22 = "nw_connection_restart";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v10, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *v22 = "nw_connection_restart";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          *v22 = "nw_connection_restart";
          *&v22[8] = 2082;
          *&v22[10] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v15)
      {
        *buf = 136446210;
        *v22 = "nw_connection_restart";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *v22 = "nw_connection_restart";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v10)
  {
    free(v10);
  }

LABEL_12:
}

uint64_t nw_parameters_fillout_salted_hash(const char *a1, char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_fillout_salted_hash";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v8, &type, &v19))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v22 = "nw_parameters_fillout_salted_hash";
      v11 = "%{public}s called with null original_string";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_45;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null original_string, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null original_string, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v15)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v22 = "nw_parameters_fillout_salted_hash";
    v23 = 2082;
    v24 = backtrace_string;
    v16 = "%{public}s called with null original_string, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v9, v10, v16, buf, 0x16u);
LABEL_31:

    free(backtrace_string);
    goto LABEL_46;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_fillout_salted_hash";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v8, &type, &v19))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v22 = "nw_parameters_fillout_salted_hash";
      v11 = "%{public}s called with null buffer";
      goto LABEL_44;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v17 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v17)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v22 = "nw_parameters_fillout_salted_hash";
    v23 = 2082;
    v24 = backtrace_string;
    v16 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  if (a3 == 9)
  {
    v5 = strlen(a1);
    __nwlog_salted_hash(a1, v5, a2);
    return 1;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_fillout_salted_hash";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null (buffer_length == 9)";
        goto LABEL_44;
      }

LABEL_45:

      goto LABEL_46;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null (buffer_length == 9), backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v18 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v22 = "nw_parameters_fillout_salted_hash";
        v11 = "%{public}s called with null (buffer_length == 9), no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v18)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v22 = "nw_parameters_fillout_salted_hash";
    v23 = 2082;
    v24 = backtrace_string;
    v16 = "%{public}s called with null (buffer_length == 9), dumping backtrace:%{public}s";
    goto LABEL_30;
  }

LABEL_46:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

void __nw_connection_restart_block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 144);
  v2 = v1;
  if (v1)
  {
    if ((*(v1 + 284) & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v1))
      {
LABEL_32:
        if (v2->state == 1)
        {
          if (nw_parameters_get_indefinite(v2->parameters))
          {
            v2->event = 262145;
            nw_endpoint_handler_report(v2, 0, &v2->event.domain, 0);
            v17 = nw_association_copy_current_path(v2->association, v2->parameters);
            os_unfair_lock_lock(&v2->lock);
            current_path = v2->current_path;
            v2->current_path = v17;

            os_unfair_lock_unlock(&v2->lock);
            nw_endpoint_handler_path_change(v2);
            goto LABEL_93;
          }

          if ((*(v2 + 284) & 0x40) != 0)
          {
            goto LABEL_93;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v19 = gconnectionLogObj;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if (*(v2 + 284))
            {
              v24 = "dry-run ";
            }

            else
            {
              v24 = "";
            }

            v25 = nw_endpoint_handler_copy_endpoint(v2);
            v26 = v25;
            if (v25)
            {
              logging_description = _nw_endpoint_get_logging_description(v25);
            }

            else
            {
              logging_description = "<NULL>";
            }

            state = v2->state;
            if (state > 5)
            {
              v35 = "unknown-state";
            }

            else
            {
              v35 = off_1E6A31048[state];
            }

            v36 = v2;
            v37 = v36;
            mode = v36->mode;
            if (mode > 2)
            {
              switch(mode)
              {
                case 3:
                  v39 = "proxy";
                  goto LABEL_91;
                case 4:
                  v39 = "fallback";
                  goto LABEL_91;
                case 5:
                  v39 = "transform";
                  goto LABEL_91;
              }
            }

            else
            {
              switch(mode)
              {
                case 0:
                  v39 = "path";
                  goto LABEL_91;
                case 1:
                  v39 = "resolver";
                  goto LABEL_91;
                case 2:
                  v39 = nw_endpoint_flow_mode_string(v36->mode_handler);
LABEL_91:

                  v42 = v37;
                  os_unfair_lock_lock(v37 + 28);
                  v43 = v42[8];
                  os_unfair_lock_unlock(v37 + 28);

                  *buf = 136447746;
                  v63 = "nw_endpoint_handler_restart";
                  v64 = 2082;
                  id_str = v2->id_str;
                  v66 = 2082;
                  v67 = v24;
                  v68 = 2082;
                  v69 = logging_description;
                  v70 = 2082;
                  v71 = v35;
                  v72 = 2082;
                  v73 = v39;
                  v74 = 2114;
                  v75 = v43;
                  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] skipping restart on non-indefinite connection", buf, 0x48u);

                  goto LABEL_92;
              }
            }

            v39 = "unknown-mode";
            goto LABEL_91;
          }

LABEL_92:

          goto LABEL_93;
        }

        if ((*(v2 + 284) & 0x40) != 0)
        {
          goto LABEL_93;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v19 = gconnectionLogObj;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_92;
        }

        if (*(v2 + 284))
        {
          v20 = "dry-run ";
        }

        else
        {
          v20 = "";
        }

        v21 = nw_endpoint_handler_copy_endpoint(v2);
        v22 = v21;
        if (v21)
        {
          v23 = _nw_endpoint_get_logging_description(v21);
        }

        else
        {
          v23 = "<NULL>";
        }

        v28 = v2->state;
        if (v28 > 5)
        {
          v29 = "unknown-state";
        }

        else
        {
          v29 = off_1E6A31048[v28];
        }

        v30 = v2;
        v31 = v30;
        v32 = v30->mode;
        if (v32 > 2)
        {
          switch(v32)
          {
            case 3:
              v33 = "proxy";
              goto LABEL_84;
            case 4:
              v33 = "fallback";
              goto LABEL_84;
            case 5:
              v33 = "transform";
              goto LABEL_84;
          }
        }

        else
        {
          switch(v32)
          {
            case 0:
              v33 = "path";
              goto LABEL_84;
            case 1:
              v33 = "resolver";
              goto LABEL_84;
            case 2:
              v33 = nw_endpoint_flow_mode_string(v30->mode_handler);
LABEL_84:

              v40 = v31;
              os_unfair_lock_lock(v31 + 28);
              v41 = v40[8];
              os_unfair_lock_unlock(v31 + 28);

              *buf = 136447746;
              v63 = "nw_endpoint_handler_restart";
              v64 = 2082;
              id_str = v2->id_str;
              v66 = 2082;
              v67 = v20;
              v68 = 2082;
              v69 = v23;
              v70 = 2082;
              v71 = v29;
              v72 = 2082;
              v73 = v33;
              v74 = 2114;
              v75 = v41;
              _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] skipping restart due to wrong state", buf, 0x48u);

              goto LABEL_92;
          }
        }

        v33 = "unknown-mode";
        goto LABEL_84;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v2);
        v49 = nw_endpoint_handler_dry_run_string(v2);
        v50 = nw_endpoint_handler_copy_endpoint(v2);
        v51 = nw_endpoint_get_logging_description(v50);
        v52 = nw_endpoint_handler_state_string(v2);
        v53 = nw_endpoint_handler_mode_string(v2);
        v54 = nw_endpoint_handler_copy_current_path(v2);
        *buf = 136447746;
        v63 = "nw_endpoint_handler_restart";
        v64 = 2082;
        id_str = id_string;
        v66 = 2082;
        v67 = v49;
        v68 = 2082;
        v69 = v51;
        v70 = 2082;
        v71 = v52;
        v72 = 2082;
        v73 = v53;
        v74 = 2114;
        v75 = v54;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);
      }

LABEL_31:

      goto LABEL_32;
    }

    if ((*(v1 + 284) & 0x40) != 0)
    {
      goto LABEL_32;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v3 = gconnectionLogObj;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    if (*(v2 + 284))
    {
      v4 = "dry-run ";
    }

    else
    {
      v4 = "";
    }

    v5 = nw_endpoint_handler_copy_endpoint(v2);
    v6 = v5;
    if (v5)
    {
      v7 = _nw_endpoint_get_logging_description(v5);
    }

    else
    {
      v7 = "<NULL>";
    }

    v8 = v2->state;
    if (v8 > 5)
    {
      v9 = "unknown-state";
    }

    else
    {
      v9 = off_1E6A31048[v8];
    }

    v10 = v2;
    v11 = v10;
    v12 = v10->mode;
    log = v3;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v13 = v7;
          v14 = "proxy";
          goto LABEL_30;
        case 4:
          v13 = v7;
          v14 = "fallback";
          goto LABEL_30;
        case 5:
          v13 = v7;
          v14 = "transform";
          goto LABEL_30;
      }
    }

    else
    {
      switch(v12)
      {
        case 0:
          v13 = v7;
          v14 = "path";
          goto LABEL_30;
        case 1:
          v13 = v7;
          v14 = "resolver";
          goto LABEL_30;
        case 2:
          v13 = v7;
          v14 = nw_endpoint_flow_mode_string(v10->mode_handler);
LABEL_30:

          v15 = v11;
          os_unfair_lock_lock(v11 + 28);
          v16 = v15[8];
          os_unfair_lock_unlock(v11 + 28);

          *buf = 136447746;
          v63 = "nw_endpoint_handler_restart";
          v64 = 2082;
          id_str = v2->id_str;
          v66 = 2082;
          v67 = v4;
          v68 = 2082;
          v69 = v13;
          v70 = 2082;
          v71 = v9;
          v72 = 2082;
          v73 = v14;
          v74 = 2114;
          v75 = v16;
          v3 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          goto LABEL_31;
      }
    }

    v13 = v7;
    v14 = "unknown-mode";
    goto LABEL_30;
  }

  v44 = __nwlog_obj();
  *buf = 136446210;
  v63 = "nw_endpoint_handler_restart";
  v45 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v60 = 0;
  if (__nwlog_fault(v45, &type, &v60))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v46, type))
      {
        *buf = 136446210;
        v63 = "nw_endpoint_handler_restart";
        _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v60 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v56 = type;
      v57 = os_log_type_enabled(v46, type);
      if (backtrace_string)
      {
        if (v57)
        {
          *buf = 136446466;
          v63 = "nw_endpoint_handler_restart";
          v64 = 2082;
          id_str = backtrace_string;
          _os_log_impl(&dword_181A37000, v46, v56, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_115;
      }

      if (v57)
      {
        *buf = 136446210;
        v63 = "nw_endpoint_handler_restart";
        _os_log_impl(&dword_181A37000, v46, v56, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v46 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v46, type))
      {
        *buf = 136446210;
        v63 = "nw_endpoint_handler_restart";
        _os_log_impl(&dword_181A37000, v46, v58, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_115:
  if (v45)
  {
    free(v45);
  }

LABEL_93:
}

uint64_t __nw_framer_message_set_object_value_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v5 = nw_dictionary_create();
    v6 = *(a2 + 16);
    *(a2 + 16) = v5;

    v3 = *(a2 + 16);
  }

  nw_dictionary_set_value(v3, *(a1 + 40), *(a1 + 32));
  return 1;
}

void NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, double a7)
{
  v15 = sub_182AD3048();
  v16 = nw_content_context_create((v15 + 32));

  *(v7 + 16) = v16;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  nw_content_context_set_expiration_milliseconds(v16, a3);
  *(v7 + 48) = a7;
  nw_content_context_set_relative_priority(*(v7 + 16), a7);
  *(v7 + 64) = a4;
  nw_content_context_set_is_final(*(v7 + 16), a4 & 1);
  *(v7 + 56) = a5;
  if (a5)
  {
    v17 = *(v7 + 16);
    v18 = *(a5 + 16);

    nw_content_context_set_antecedent(v17, v18);
  }

  if (!a6)
  {
    goto LABEL_14;
  }

  if (!(a6 >> 62))
  {
    v19 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_13:

LABEL_14:

    return;
  }

  v19 = sub_182AD3EB8();
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v19 >= 1)
  {
    if ((a6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = MEMORY[0x1865DA790](i, a6);
        nw_content_context_set_metadata_for_protocol(*(v7 + 16), *(v21 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = (a6 + 32);
      do
      {
        v23 = *v22++;
        nw_content_context_set_metadata_for_protocol(*(v7 + 16), *(v23 + 16));
        --v19;
      }

      while (v19);
    }

    goto LABEL_13;
  }

  __break(1u);
}

nw_framer_message_t nw_framer_protocol_create_message(nw_protocol_definition_t definition)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = definition;
  if (v1)
  {
    singleton = _nw_protocol_metadata_create_singleton();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_framer_protocol_create_message";
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
        v15 = "nw_framer_protocol_create_message";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_framer_protocol_create_message";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_framer_protocol_create_message";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_framer_protocol_create_message";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  singleton = 0;
LABEL_3:

  return singleton;
}

uint64_t sub_181BCF834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void nw_framer_message_set_object_value(nw_framer_message_t message, const char *key, id value)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = message;
  v6 = value;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_framer_message_set_object_value";
    v8 = _os_log_send_and_compose_impl();

    v32 = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &v32, &v31))
    {
      goto LABEL_57;
    }

    if (v32 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v32;
      if (os_log_type_enabled(v9, v32))
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null message", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = v32;
      v17 = os_log_type_enabled(v9, v32);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v34 = "nw_framer_message_set_object_value";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v8)
        {
          goto LABEL_7;
        }

LABEL_58:
        free(v8);
        goto LABEL_7;
      }

      if (v17)
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = v32;
      if (os_log_type_enabled(v9, v32))
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!nw_protocol_metadata_is_framer_message(v5))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_framer_message_set_object_value";
    v8 = _os_log_send_and_compose_impl();

    v32 = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &v32, &v31))
    {
      goto LABEL_57;
    }

    if (v32 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = v32;
      if (os_log_type_enabled(v9, v32))
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v9 = __nwlog_obj();
      v24 = v32;
      if (os_log_type_enabled(v9, v32))
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = v32;
    v20 = os_log_type_enabled(v9, v32);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v20)
    {
      *buf = 136446466;
      v34 = "nw_framer_message_set_object_value";
      v35 = 2082;
      v36 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!key)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_framer_message_set_object_value";
    v8 = _os_log_send_and_compose_impl();

    v32 = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &v32, &v31))
    {
      goto LABEL_57;
    }

    if (v32 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = v32;
      if (os_log_type_enabled(v9, v32))
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v9 = __nwlog_obj();
      v25 = v32;
      if (os_log_type_enabled(v9, v32))
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = v32;
    v22 = os_log_type_enabled(v9, v32);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v34 = "nw_framer_message_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v22)
    {
      *buf = 136446466;
      v34 = "nw_framer_message_set_object_value";
      v35 = 2082;
      v36 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_37:

    free(v18);
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __nw_framer_message_set_object_value_block_invoke;
  v28 = &unk_1E6A3AB18;
  v30 = key;
  v29 = v6;
  if (_nw_protocol_metadata_get_handle(v5))
  {
    (v27)(v26);
  }

LABEL_7:
}

BOOL nw_protocol_metadata_is_framer_message(nw_protocol_metadata_t metadata)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_protocol_metadata_copy_definition(v1);
    is_framer = nw_protocol_definition_is_framer(v3);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_metadata_is_framer_message";
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
        v17 = "nw_protocol_metadata_is_framer_message";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata", buf, 0xCu);
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
          v17 = "nw_protocol_metadata_is_framer_message";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_protocol_metadata_is_framer_message";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_metadata_is_framer_message";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  is_framer = 0;
LABEL_3:

  return is_framer;
}

uint64_t sub_181BD02F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = swift_unknownObjectRetain();
  v5 = a2(v4);
  swift_unknownObjectRelease();

  *(v2 + 16) = v5;
  return v2;
}

uint64_t nw_framer_allocate_metadata(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0xD4922A2uLL);
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

uint64_t sub_181BD04B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  sub_181BCF834(a1, v17);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_182AD4258();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_182AD3048();

  a4(v7, v15 + 32, v14);
  swift_unknownObjectRelease();
  sub_181F49A88(a1, &unk_1EA83A4F0);
}

uint64_t sub_181BD0664(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA60);
  v2 = sub_181A93260(a1);
  if (!v2)
  {
    sub_18214F564(a1);
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(&v68, ObjectType, v8);
    swift_unknownObjectRelease();
    v10 = v68;
    v11 = BYTE1(v68);
    v12 = v69;
    v62 = v70;
    v63 = v71;
    if (qword_1ED410110 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED410150;
    v14 = unk_1ED410158;
    v15 = byte_1ED410160;
    v64 = word_1ED410148;
    v65 = qword_1ED410150;
    v66 = unk_1ED410158;
    v67 = byte_1ED410160;
    v16 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v17 = v65;
    v18 = v66;
    v19 = v67;
    sub_181F49A24(v13, v14, v15);
    sub_181F48350(v17, v18, v19);
    if (v16)
    {
      if (qword_1ED410028 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED40FF98;
      if (qword_1ED40FF98)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOBYTE(v68) = v10;
    BYTE1(v68) = v11;
    v69 = v12;
    v70 = v62;
    v71 = v63;
    if (qword_1ED40FF48 != -1)
    {
      swift_once();
    }

    v20 = qword_1ED411C88;
    v21 = unk_1ED411C90;
    v22 = byte_1ED411C98;
    v64 = word_1ED411C80;
    v65 = qword_1ED411C88;
    v66 = unk_1ED411C90;
    v67 = byte_1ED411C98;
    v23 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v24 = v65;
    v25 = v66;
    v26 = v67;
    sub_181F49A24(v20, v21, v22);
    sub_181F48350(v24, v25, v26);
    if (v23)
    {
      if (qword_1ED40FE40 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED411BE8;
      if (qword_1ED411BE8)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOBYTE(v68) = v10;
    BYTE1(v68) = v11;
    v69 = v12;
    v70 = v62;
    v71 = v63;
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v27 = qword_1ED411D48;
    v28 = unk_1ED411D50;
    v29 = byte_1ED411D58;
    v64 = word_1ED411D40;
    v65 = qword_1ED411D48;
    v66 = unk_1ED411D50;
    v67 = byte_1ED411D58;
    v30 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v31 = v65;
    v32 = v66;
    v33 = v67;
    sub_181F49A24(v27, v28, v29);
    sub_181F48350(v31, v32, v33);
    if (v30)
    {
      if (qword_1ED4102F0 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED411D90;
      if (qword_1ED411D90)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOBYTE(v68) = v10;
    BYTE1(v68) = v11;
    v69 = v12;
    v70 = v62;
    v71 = v63;
    if (qword_1ED40FF60 != -1)
    {
      swift_once();
    }

    v34 = qword_1ED411C30;
    v35 = unk_1ED411C38;
    v36 = byte_1ED411C40;
    v64 = word_1ED411C28;
    v65 = qword_1ED411C30;
    v66 = unk_1ED411C38;
    v67 = byte_1ED411C40;
    v37 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v38 = v65;
    v39 = v66;
    v40 = v67;
    sub_181F49A24(v34, v35, v36);
    sub_181F48350(v38, v39, v40);
    if (v37)
    {
      if (qword_1ED410038 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED411C78;
      if (qword_1ED411C78)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOBYTE(v68) = v10;
    BYTE1(v68) = v11;
    v69 = v12;
    v70 = v62;
    v71 = v63;
    if (qword_1ED4100F8 != -1)
    {
      swift_once();
    }

    v41 = qword_1ED411CD8;
    v42 = unk_1ED411CE0;
    v43 = byte_1ED411CE8;
    v64 = word_1ED411CD0;
    v65 = qword_1ED411CD8;
    v66 = unk_1ED411CE0;
    v67 = byte_1ED411CE8;
    v44 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v45 = v65;
    v46 = v66;
    v47 = v67;
    sub_181F49A24(v41, v42, v43);
    sub_181F48350(v45, v46, v47);
    if (v44)
    {
      if (qword_1ED40FE60 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED40FE98;
      if (qword_1ED40FE98)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOBYTE(v68) = v10;
    BYTE1(v68) = v11;
    v69 = v12;
    v70 = v62;
    v71 = v63;
    if (qword_1ED4100E8 != -1)
    {
      swift_once();
    }

    v48 = qword_1ED411CB8;
    v49 = qword_1ED411CC0;
    v50 = byte_1ED411CC8;
    v64 = word_1ED411CB0;
    v65 = qword_1ED411CB8;
    v66 = qword_1ED411CC0;
    v67 = byte_1ED411CC8;
    v51 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v52 = v65;
    v53 = v66;
    v54 = v67;
    sub_181F49A24(v48, v49, v50);
    sub_181F48350(v52, v53, v54);
    if (v51)
    {
      if (qword_1ED40FF40 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED411C20;
      if (qword_1ED411C20)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOBYTE(v68) = v10;
    BYTE1(v68) = v11;
    v69 = v12;
    v70 = v62;
    v71 = v63;
    if (qword_1ED40FDA0 != -1)
    {
      swift_once();
    }

    v55 = qword_1ED40FDB0;
    v56 = unk_1ED40FDB8;
    v57 = byte_1ED40FDC0;
    v64 = word_1ED40FDA8;
    v65 = qword_1ED40FDB0;
    v66 = unk_1ED40FDB8;
    v67 = byte_1ED40FDC0;
    v58 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v68, &v64);
    v59 = v65;
    v60 = v66;
    v61 = v67;
    sub_181F49A24(v55, v56, v57);
    result = sub_181F48350(v59, v60, v61);
    if ((v58 & 1) == 0)
    {
      sub_181F48350(v12, v62, v63);
      return 0;
    }

    if (qword_1ED40FDC8 != -1)
    {
      result = swift_once();
    }

    v6 = qword_1ED40FE00;
    if (!qword_1ED40FE00)
    {
      goto LABEL_56;
    }

LABEL_52:
    sub_181F48350(v12, v62, v63);
    swift_unknownObjectRetain();
    return v6;
  }

  v3 = v2;
  result = swift_beginAccess();
  v5 = *(v3 + 64);
  if (v5)
  {

    v6 = *(v5 + 16);
    swift_unknownObjectRetain();

    return v6;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t nw_protocol_definition_is_framer(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[192] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_is_framer";
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
        v15 = "nw_protocol_definition_is_framer";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_is_framer";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_is_framer";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_is_framer";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

nw_content_context_t nw_content_context_create(const char *context_identifier)
{
  v52 = *MEMORY[0x1E69E9840];
  result = [NWConcrete_nw_content_context alloc];
  if (!result)
  {
    return result;
  }

  v47.receiver = result;
  v47.super_class = NWConcrete_nw_content_context;
  result = objc_msgSendSuper2(&v47, sel_init);
  if (!result)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v49 = "[NWConcrete_nw_content_context initWithIdentifier:]";
    v35 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v35, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v49 = "[NWConcrete_nw_content_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v45 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v36, type);
        if (backtrace_string)
        {
          if (v43)
          {
            *buf = 136446466;
            v49 = "[NWConcrete_nw_content_context initWithIdentifier:]";
            v50 = 2082;
            v51 = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v42, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_56;
        }

        if (v43)
        {
          *buf = 136446210;
          v49 = "[NWConcrete_nw_content_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v36, v42, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v49 = "[NWConcrete_nw_content_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v36, v44, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_56:
    if (v35)
    {
      free(v35);
    }

    return 0;
  }

  if (!context_identifier)
  {
    v38 = result;
    v39 = __nwlog_obj();
    os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v49 = "_strict_strlcpy";
    v40 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v40);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v40);
    result = v38;
  }

  v3 = *context_identifier;
  LOBYTE(result[3].isa) = v3;
  if (v3)
  {
    v4 = *(context_identifier + 1);
    BYTE1(result[3].isa) = v4;
    if (v4)
    {
      v5 = *(context_identifier + 2);
      BYTE2(result[3].isa) = v5;
      if (v5)
      {
        v6 = *(context_identifier + 3);
        BYTE3(result[3].isa) = v6;
        if (v6)
        {
          v7 = *(context_identifier + 4);
          BYTE4(result[3].isa) = v7;
          if (v7)
          {
            v8 = *(context_identifier + 5);
            BYTE5(result[3].isa) = v8;
            if (v8)
            {
              v9 = *(context_identifier + 6);
              BYTE6(result[3].isa) = v9;
              if (v9)
              {
                v10 = *(context_identifier + 7);
                HIBYTE(result[3].isa) = v10;
                if (v10)
                {
                  v11 = *(context_identifier + 8);
                  LOBYTE(result[4].isa) = v11;
                  if (v11)
                  {
                    v12 = *(context_identifier + 9);
                    BYTE1(result[4].isa) = v12;
                    if (v12)
                    {
                      v13 = *(context_identifier + 10);
                      BYTE2(result[4].isa) = v13;
                      if (v13)
                      {
                        v14 = *(context_identifier + 11);
                        BYTE3(result[4].isa) = v14;
                        if (v14)
                        {
                          v15 = *(context_identifier + 12);
                          BYTE4(result[4].isa) = v15;
                          if (v15)
                          {
                            v16 = *(context_identifier + 13);
                            BYTE5(result[4].isa) = v16;
                            if (v16)
                            {
                              v17 = *(context_identifier + 14);
                              BYTE6(result[4].isa) = v17;
                              if (v17)
                              {
                                v18 = *(context_identifier + 15);
                                HIBYTE(result[4].isa) = v18;
                                if (v18)
                                {
                                  v19 = *(context_identifier + 16);
                                  LOBYTE(result[5].isa) = v19;
                                  if (v19)
                                  {
                                    v20 = *(context_identifier + 17);
                                    BYTE1(result[5].isa) = v20;
                                    if (v20)
                                    {
                                      v21 = *(context_identifier + 18);
                                      BYTE2(result[5].isa) = v21;
                                      if (v21)
                                      {
                                        v22 = *(context_identifier + 19);
                                        BYTE3(result[5].isa) = v22;
                                        if (v22)
                                        {
                                          v23 = *(context_identifier + 20);
                                          BYTE4(result[5].isa) = v23;
                                          if (v23)
                                          {
                                            v24 = *(context_identifier + 21);
                                            BYTE5(result[5].isa) = v24;
                                            if (v24)
                                            {
                                              v25 = *(context_identifier + 22);
                                              BYTE6(result[5].isa) = v25;
                                              if (v25)
                                              {
                                                v26 = *(context_identifier + 23);
                                                HIBYTE(result[5].isa) = v26;
                                                if (v26)
                                                {
                                                  v27 = *(context_identifier + 24);
                                                  LOBYTE(result[6].isa) = v27;
                                                  if (v27)
                                                  {
                                                    v28 = *(context_identifier + 25);
                                                    BYTE1(result[6].isa) = v28;
                                                    if (v28)
                                                    {
                                                      v29 = *(context_identifier + 26);
                                                      BYTE2(result[6].isa) = v29;
                                                      if (v29)
                                                      {
                                                        v30 = *(context_identifier + 27);
                                                        BYTE3(result[6].isa) = v30;
                                                        if (v30)
                                                        {
                                                          v31 = *(context_identifier + 28);
                                                          BYTE4(result[6].isa) = v31;
                                                          if (v31)
                                                          {
                                                            v32 = *(context_identifier + 29);
                                                            BYTE5(result[6].isa) = v32;
                                                            if (v32)
                                                            {
                                                              v33 = *(context_identifier + 30);
                                                              BYTE6(result[6].isa) = v33;
                                                              if (v33)
                                                              {
                                                                HIBYTE(result[6].isa) = 0;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  result[10].isa = 0x3FE0000000000000;
  return result;
}

void nw_content_context_set_is_final(nw_content_context_t context, BOOL is_final)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = context;
  if (v3)
  {
    if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
    {
      BYTE6(v3[14].isa) = BYTE6(v3[14].isa) & 0xFE | is_final;
    }

    goto LABEL_7;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_content_context_set_is_final";
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
        v15 = "nw_content_context_set_is_final";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
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
          v15 = "nw_content_context_set_is_final";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_content_context_set_is_final";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_content_context_set_is_final";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_7:
}

uint64_t sub_181BD1848(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA60);
  v2 = sub_181A93694(a1, sub_181BD1968, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v3 = sub_181A93260(a1);
  if (!v3)
  {
    return (v2 & 1) != 0;
  }

  v4 = v3;
  result = swift_beginAccess();
  v6 = *(v4 + 64);
  if (!v6)
  {
    __break(1u);
    return result;
  }

  if (*(v6 + 240))
  {
    v7 = swift_unknownObjectRetain();
    supports_replies = nw_protocol_definition_get_supports_replies(v7);
    swift_unknownObjectRelease();

    if ((v2 & 1) == 0)
    {
      return supports_replies;
    }

    return 1;
  }

  return (v2 & 1) != 0;
}

uint64_t sub_181BD1968@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);
    if (v4)
    {
      result = nw_protocol_definition_get_supports_replies(*(v4 + 16));
    }

    else
    {
      result = 0;
    }
  }

  *a2 = result;
  return result;
}

void nw_content_context_set_expiration_milliseconds(nw_content_context_t context, uint64_t expiration_milliseconds)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = context;
  if (v3)
  {
    if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
    {
      v3[8].isa = expiration_milliseconds;
    }

    goto LABEL_7;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_content_context_set_expiration_milliseconds";
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
        v15 = "nw_content_context_set_expiration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
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
          v15 = "nw_content_context_set_expiration_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_content_context_set_expiration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_content_context_set_expiration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_7:
}

void nw_content_context_set_relative_priority(nw_content_context_t context, double relative_priority)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = context;
  if (v3)
  {
    if (relative_priority >= 0.0 && relative_priority <= 1.0)
    {
      if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
      {
        *&v3[10].isa = relative_priority;
      }

      goto LABEL_11;
    }

    v5 = v3;
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_content_context_set_relative_priority";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_relative_priority";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null (relative_priority >= 0.0 && relative_priority <= 1.0)", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_relative_priority";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null (relative_priority >= 0.0 && relative_priority <= 1.0), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_relative_priority";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null (relative_priority >= 0.0 && relative_priority <= 1.0), no backtrace", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_content_context_set_relative_priority";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null (relative_priority >= 0.0 && relative_priority <= 1.0), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0;
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_content_context_set_relative_priority";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_relative_priority";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_relative_priority";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_relative_priority";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v14)
      {
        *buf = 136446466;
        v22 = "nw_content_context_set_relative_priority";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_31:

      free(backtrace_string);
    }
  }

LABEL_44:
  if (v7)
  {
    free(v7);
  }

  v3 = v5;
LABEL_11:
}

uint64_t nw_protocol_definition_get_supports_replies(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[192] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_supports_replies";
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
        v15 = "nw_protocol_definition_get_supports_replies";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_supports_replies";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_supports_replies";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_supports_replies";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void *sub_181BD2448(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t nw_socket_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, uint64_t a5, nw_frame_array_s *a6)
{
  v212 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socket_get_input_frames";
    v137 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v191.msg_name) = 0;
    if (__nwlog_fault(v137, type, &v191))
    {
      if (type[0] == 17)
      {
        v138 = __nwlog_obj();
        v139 = type[0];
        if (os_log_type_enabled(v138, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socket_get_input_frames";
          v140 = "%{public}s called with null protocol";
LABEL_374:
          _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0xCu);
        }
      }

      else if (LOBYTE(v191.msg_name) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v138 = __nwlog_obj();
        v139 = type[0];
        v176 = os_log_type_enabled(v138, type[0]);
        if (backtrace_string)
        {
          if (v176)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v138, v139, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_375;
        }

        if (v176)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socket_get_input_frames";
          v140 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_374;
        }
      }

      else
      {
        v138 = __nwlog_obj();
        v139 = type[0];
        if (os_log_type_enabled(v138, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socket_get_input_frames";
          v140 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_374;
        }
      }
    }

LABEL_375:
    if (v137)
    {
      free(v137);
    }

    return 0;
  }

  v6 = a6;
  v8 = a1;
  handle = a1->handle;
  v10 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v11 = 1;
    goto LABEL_11;
  }

  v10 = *a1[1].flow_id;
  if (v10)
  {
LABEL_6:
    callbacks = v10[1].callbacks;
    v11 = 0;
    if (callbacks)
    {
      v10[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v11 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v13 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v14 = v11;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v15 = _os_log_send_and_compose_impl();
      type[0] = 16;
      LOBYTE(v191.msg_name) = 0;
      if (!__nwlog_fault(v15, type, &v191))
      {
        goto LABEL_146;
      }

      if (type[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_146;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_get_input_frames";
        v18 = "%{public}s called with null socket_handler";
LABEL_144:
        v76 = v16;
        v77 = v17;
LABEL_145:
        _os_log_impl(&dword_181A37000, v76, v77, v18, buf, 0xCu);
        goto LABEL_146;
      }

      if (LOBYTE(v191.msg_name) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_146;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_get_input_frames";
        v18 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        goto LABEL_144;
      }

      v58 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v59 = gLogObj;
      v60 = type[0];
      v61 = os_log_type_enabled(gLogObj, type[0]);
      if (v58)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v58;
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v58);
LABEL_146:
        if (!v15)
        {
LABEL_148:
          v25 = 0;
          v11 = v14;
          goto LABEL_149;
        }

LABEL_147:
        free(v15);
        goto LABEL_148;
      }

      if (!v61)
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null socket_handler, no backtrace";
LABEL_168:
      v76 = v59;
      v77 = v60;
      goto LABEL_145;
    }

    v13 = *a1[1].flow_id;
  }

  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  if (!a4)
  {
    v14 = v11;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_socket_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v191.msg_name) = 0;
    if (!__nwlog_fault(v15, type, &v191))
    {
      goto LABEL_146;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null maximum_bytes";
      goto LABEL_144;
    }

    if (LOBYTE(v191.msg_name) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null maximum_bytes, backtrace limit exceeded";
      goto LABEL_144;
    }

    v62 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    v60 = type[0];
    v63 = os_log_type_enabled(gLogObj, type[0]);
    if (!v62)
    {
      if (!v63)
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null maximum_bytes, no backtrace";
      goto LABEL_168;
    }

    if (v63)
    {
      *buf = 136446466;
      *&buf[4] = "nw_socket_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v62;
      v64 = "%{public}s called with null maximum_bytes, dumping backtrace:%{public}s";
LABEL_124:
      _os_log_impl(&dword_181A37000, v59, v60, v64, buf, 0x16u);
    }

LABEL_125:
    free(v62);
    if (!v15)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  if (!a5)
  {
    v14 = v11;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_socket_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v191.msg_name) = 0;
    if (!__nwlog_fault(v15, type, &v191))
    {
      goto LABEL_146;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null maximum_frame_count";
      goto LABEL_144;
    }

    if (LOBYTE(v191.msg_name) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null maximum_frame_count, backtrace limit exceeded";
      goto LABEL_144;
    }

    v62 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    v60 = type[0];
    v65 = os_log_type_enabled(gLogObj, type[0]);
    if (!v62)
    {
      if (!v65)
      {
        goto LABEL_146;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v18 = "%{public}s called with null maximum_frame_count, no backtrace";
      goto LABEL_168;
    }

    if (v65)
    {
      *buf = 136446466;
      *&buf[4] = "nw_socket_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v62;
      v64 = "%{public}s called with null maximum_frame_count, dumping backtrace:%{public}s";
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v19 = (&v13[6].callbacks + 5);
  v20 = *(&v13[6].callbacks + 5);
  if ((v20 & 0x4000) != 0)
  {
    if ((v20 & 0x80) == 0 && gLogDatapath == 1)
    {
      v178 = v11;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v179 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socket_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v13 + 420;
        _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Ignoring read because socket is cancelled", buf, 0x16u);
      }

      v25 = 0;
      v11 = v178;
      goto LABEL_149;
    }

LABEL_113:
    v25 = 0;
    goto LABEL_149;
  }

  *v19 = v20 & 0xBDFF;
  v188 = (&v13[6].callbacks + 5);
  if ((v20 & 0x400) != 0)
  {
    v21 = a3;
    if (_nw_signposts_once != -1)
    {
      v177 = a4;
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
      a4 = v177;
    }

    v22 = a4;
    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    nw_queue_resume_source(v13[3].output_handler, a2);
    *v188 &= ~0x400u;
    a4 = v22;
    v19 = (&v13[6].callbacks + 5);
    a3 = v21;
  }

  output_handler = v13[4].output_handler;
  v187 = v6;
  v185 = v8;
  v184 = v11;
  if (output_handler == 2)
  {
    v183 = a3;
    v66 = MEMORY[0x1E69E9AC8];
    v67 = *MEMORY[0x1E69E9AC8];
    LODWORD(v197) = v67;
    if (v67 >= a4)
    {
      v190 = 0;
      goto LABEL_212;
    }

    v68 = a4;
    *type = 4;
    v69 = getsockopt(HIDWORD(v13[4].callbacks), 0xFFFF, 4128, &v197, type);
    v190 = v69 == 0;
    if (!v69)
    {
      v67 = v197;
LABEL_210:
      a4 = v68;
      v8 = v185;
      if (!v67)
      {
        v67 = 1024;
        LODWORD(v197) = 1024;
      }

LABEL_212:
      v104 = v183;
      if (v67 >= a4)
      {
        v105 = a4;
      }

      else
      {
        v105 = v67;
      }

      v106 = nw_calloc_type<unsigned char>(v105);
      v191.msg_name = v106;
      *&v191.msg_namelen = v105;
      *type = 0u;
      *&type[28] = 0;
      *&type[16] = &v191;
      *&type[24] = 1;
      *&type[32] = 0;
      *v194 = 0x8000000000;
      v107 = recvmsg(HIDWORD(v13[4].callbacks), type, 0);
      if (v107 < 0)
      {
        v109 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (v109 == 35)
        {
          if ((*v188 & 0x80) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v110 = gconnectionLogObj;
            v8 = v185;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 420;
              _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Received EWOULDBLOCK", buf, 0x16u);
            }
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v123 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            callbacks_high = HIDWORD(v13[4].callbacks);
            *buf = 136447234;
            *&buf[4] = "nw_socket_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 420;
            *&buf[22] = 1024;
            *&buf[24] = callbacks_high;
            *&buf[28] = 1024;
            *&buf[30] = v105;
            *&buf[34] = 1024;
            *&buf[36] = v109;
            _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_ERROR, "%{public}s %{public}s recvmsg(fd %d, %u bytes) %{darwin.errno}d", buf, 0x28u);
          }

          nw_socket_internal_error(&v13[1].output_handler);
          nw_socket_input_finished(v8, v125);
          nw_socket_cancel_input_source(&v13[1].output_handler, v126);
        }

        v11 = v184;
        if (!v106)
        {
          goto LABEL_113;
        }

        goto LABEL_256;
      }

      v24 = v107;
      if ((*v188 & 0x100) != 0)
      {
        v211 = 0uLL;
        nw_protocol_get_flow_id(v13, &v211);
        if ((*v188 & 0x80) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v111 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v13[1].output_handler;
            v113 = v24 - 1;
            if (!v24)
            {
              v113 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_socket_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 420;
            *&buf[22] = 1024;
            *&buf[24] = v24;
            *&buf[28] = 2048;
            *&buf[30] = v112;
            *&buf[38] = 2048;
            *&buf[40] = v112 + v113;
            _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Received %u bytes (overall bytes %llu -> %llu)", buf, 0x30u);
          }
        }

        pthread_once(&nw_mpkl_log_init(void)::init_once, nw_mpkl_log_init_once);
        v114 = gMpklLogObj;
        if (os_log_type_enabled(gMpklLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v115 = v13[1].output_handler;
          v116 = v24 - 1;
          if (!v24)
          {
            v116 = 0;
          }

          v117 = BYTE2(v13[6].output_handler);
          *buf = 67110658;
          *&buf[4] = 100;
          *&buf[8] = 1024;
          *&buf[10] = 150;
          *&buf[14] = 1042;
          *&buf[16] = 16;
          *&buf[20] = 2098;
          *&buf[22] = &v211;
          *&buf[30] = 2048;
          *&buf[32] = v115;
          *&buf[40] = 2048;
          *&buf[42] = v115 + v116;
          *&buf[50] = 1024;
          *&buf[52] = v117;
          _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEFAULT, "32 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public}.16P, curStart: %llu, curEnd: %llu, logSeqn: %hhu}", buf, 0x38u);
        }

        ++BYTE2(v13[6].output_handler);
      }

      else if ((*v188 & 0x80) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v108 = gconnectionLogObj;
        v8 = v185;
        v104 = v183;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_socket_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 420;
          *&buf[22] = 1024;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Received %u bytes", buf, 0x1Cu);
        }
      }

      v13[1].output_handler = (v13[1].output_handler + v24);
      if (!v24)
      {
        if (v106)
        {
          free(v106);
        }

        nw_socket_input_finished(v8, a2);
        nw_socket_cancel_input_source(&v13[1].output_handler, v122);
        v11 = v184;
        v25 = 0;
        goto LABEL_149;
      }

      v118 = v13[5].handle;
      if (v118)
      {
        p_default_input_handler = &v13[5].default_input_handler;
        v120 = v118[2];
        v121 = v118[3];
        if (v120)
        {
          p_default_input_handler = (v120 + 24);
        }

        *p_default_input_handler = v121;
        *v121->flow_id = v120;
        v118[2] = 0;
        v118[3] = 0;
        nw_frame_reset(v118, v106, v24, nw_socket_frame_input_finalizer, &v13[1].output_handler);
        goto LABEL_258;
      }

      v118 = nw_frame_create(0, v106, v24, nw_socket_frame_input_finalizer, &v13[1].output_handler);
      if (v118)
      {
LABEL_258:
        if (v13[2].handle)
        {
          v127 = v105 > v24 || v197 == v24 && v190;
          if ((*v188 & 0x80) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v180 = gconnectionLogObj;
            v104 = v183;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v181 = "Did not drain";
              *&buf[4] = "nw_socket_get_input_frames";
              *buf = 136446722;
              if (v127)
              {
                v181 = "Drained";
              }

              *&buf[12] = 2082;
              *&buf[14] = v13 + 420;
              *&buf[22] = 2080;
              *&buf[24] = v181;
              _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %s all data", buf, 0x20u);
            }
          }

          nw_frame_set_metadata(v118, v13[2].handle, 1, v127 & ((*v188 & 0x10) >> 4));
        }

        v25 = 1;
        nw_frame_set_buffer_used_malloc(v118, 1);
        v118[2] = 0;
        v128 = *v13[6].flow_id;
        v118[3] = v128;
        *v128 = v118;
        *v13[6].flow_id = v118 + 2;
        v118[4] = 0;
        tqh_last = v6->tqh_last;
        v118[5] = tqh_last;
        *tqh_last = v118;
        v6->tqh_last = (v118 + 4);
        a3 = v104;
        goto LABEL_293;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_socket_get_input_frames";
      v130 = _os_log_send_and_compose_impl();
      LOBYTE(v211) = 16;
      v192 = 0;
      if (__nwlog_fault(v130, &v211, &v192))
      {
        if (v211 == 17)
        {
          v131 = __nwlog_obj();
          v132 = v211;
          if (!os_log_type_enabled(v131, v211))
          {
            goto LABEL_366;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_get_input_frames";
          v133 = "%{public}s nw_frame_create failed";
LABEL_365:
          _os_log_impl(&dword_181A37000, v131, v132, v133, buf, 0xCu);
          goto LABEL_366;
        }

        if (v192 != 1)
        {
          v131 = __nwlog_obj();
          v132 = v211;
          if (!os_log_type_enabled(v131, v211))
          {
            goto LABEL_366;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_get_input_frames";
          v133 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
          goto LABEL_365;
        }

        v134 = __nw_create_backtrace_string();
        v131 = __nwlog_obj();
        v132 = v211;
        v135 = os_log_type_enabled(v131, v211);
        if (!v134)
        {
          if (!v135)
          {
            goto LABEL_366;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_get_input_frames";
          v133 = "%{public}s nw_frame_create failed, no backtrace";
          goto LABEL_365;
        }

        if (v135)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v134;
          _os_log_impl(&dword_181A37000, v131, v132, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v134);
      }

LABEL_366:
      if (v130)
      {
        free(v130);
      }

      v11 = v184;
      if (!v106)
      {
        goto LABEL_113;
      }

LABEL_256:
      free(v106);
      v25 = 0;
      goto LABEL_149;
    }

    v70 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v71 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socket_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 420;
      *&buf[22] = 1024;
      *&buf[24] = v70;
      _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt SO_NREAD failed %{darwin.errno}d", buf, 0x1Cu);
    }

    __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_socket_get_input_frames";
    *&buf[12] = 1024;
    *&buf[14] = v70;
    v72 = _os_log_send_and_compose_impl();
    LOBYTE(v191.msg_name) = 16;
    LOBYTE(v211) = 0;
    if (__nwlog_fault(v72, &v191, &v211))
    {
      if (LOBYTE(v191.msg_name) == 17)
      {
        v73 = __nwlog_obj();
        msg_name = v191.msg_name;
        if (os_log_type_enabled(v73, v191.msg_name))
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_get_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v70;
          v75 = "%{public}s getsockopt SO_NREAD failed %{darwin.errno}d";
LABEL_206:
          _os_log_impl(&dword_181A37000, v73, msg_name, v75, buf, 0x12u);
        }
      }

      else if (v211 == 1)
      {
        v89 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        msg_name = v191.msg_name;
        v90 = os_log_type_enabled(v73, v191.msg_name);
        if (v89)
        {
          if (v90)
          {
            *buf = 136446722;
            *&buf[4] = "nw_socket_get_input_frames";
            *&buf[12] = 1024;
            *&buf[14] = v70;
            *&buf[18] = 2082;
            *&buf[20] = v89;
            _os_log_impl(&dword_181A37000, v73, msg_name, "%{public}s getsockopt SO_NREAD failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v89);
          goto LABEL_207;
        }

        if (v90)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_get_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v70;
          v75 = "%{public}s getsockopt SO_NREAD failed %{darwin.errno}d, no backtrace";
          goto LABEL_206;
        }
      }

      else
      {
        v73 = __nwlog_obj();
        msg_name = v191.msg_name;
        if (os_log_type_enabled(v73, v191.msg_name))
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_get_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v70;
          v75 = "%{public}s getsockopt SO_NREAD failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_206;
        }
      }
    }

LABEL_207:
    if (v72)
    {
      free(v72);
    }

    v67 = *v66;
    LODWORD(v197) = *v66;
    goto LABEL_210;
  }

  if (output_handler != 1)
  {
    v25 = 0;
    LODWORD(v24) = 0;
    goto LABEL_293;
  }

  v182 = a3;
  LODWORD(v24) = 0;
  v25 = 0;
  if (a4 >= 0x2400)
  {
    v26 = 9216;
  }

  else
  {
    v26 = a4;
  }

  count = v26;
  while (2)
  {
    v29 = *&v13[6].flow_id[8];
    if (v29)
    {
      LODWORD(v30) = 0;
      v31 = *(v29 + 16);
      v32 = *(v29 + 24);
      p_identifier = (v31 + 24);
      if (!v31)
      {
        p_identifier = &v13[6].identifier;
      }

      *p_identifier = v32;
      *v32->name = v31;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      goto LABEL_95;
    }

    v34 = nw_calloc_type<unsigned char>(count);
    *&v211 = v34;
    *(&v211 + 1) = count;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    memset(buf, 0, sizeof(buf));
    *&v191.msg_name = 0u;
    *(&v191.msg_iovlen + 1) = 0;
    v191.msg_iov = &v211;
    v191.msg_iovlen = 1;
    v191.msg_control = buf;
    *&v191.msg_controllen = 0x8000000100;
    v35 = recvmsg(HIDWORD(v13[4].callbacks), &v191, 0);
    if (v35 < 0)
    {
      v84 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v84 == 35)
      {
        a3 = v182;
        if ((*v19 & 0x80) != 0 || gLogDatapath != 1)
        {
          goto LABEL_191;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v85 = gconnectionLogObj;
        v86 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
        a3 = v182;
        if (!v86)
        {
          goto LABEL_191;
        }

        *type = 136446466;
        *&type[4] = "nw_socket_get_input_frames";
        *&type[12] = 2082;
        *&type[14] = v13 + 420;
        v87 = v182;
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Received EWOULDBLOCK", type, 0x16u);
      }

      else
      {
        v87 = v182;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v91 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          v92 = HIDWORD(v13[4].callbacks);
          *type = 136447234;
          *&type[4] = "nw_socket_get_input_frames";
          *&type[12] = 2082;
          *&type[14] = v13 + 420;
          *&type[22] = 1024;
          *&type[24] = v92;
          *&type[28] = 1024;
          *&type[30] = count;
          *&type[34] = 1024;
          *&type[36] = v84;
          _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s recvmsg(fd %d, %u bytes) %{darwin.errno}d", type, 0x28u);
        }

        HIBYTE(v13[6].callbacks) |= 8u;
        nw_socket_internal_error(&v13[1].output_handler);
      }

      a3 = v87;
LABEL_191:
      if (!v34)
      {
        goto LABEL_293;
      }

      v93 = v34;
      v94 = a3;
      goto LABEL_292;
    }

    v30 = v35;
    if ((HIBYTE(v13[6].callbacks) & 8) != 0)
    {
      nw_socket_internal_error(&v13[1].output_handler);
      HIBYTE(v13[6].callbacks) &= ~8u;
    }

    if ((*v19 & 0x100) != 0)
    {
      v197 = 0uLL;
      nw_protocol_get_flow_id(v13, &v197);
      if ((*v19 & 0x80) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v37 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v13[1].output_handler;
          v39 = v30 - 1;
          if (!v30)
          {
            v39 = 0;
          }

          *type = 136447234;
          *&type[4] = "nw_socket_get_input_frames";
          *&type[12] = 2082;
          *&type[14] = v13 + 420;
          *&type[22] = 1024;
          *&type[24] = v30;
          *&type[28] = 2048;
          *&type[30] = v38;
          *&type[38] = 2048;
          *v194 = v38 + v39;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Received %u bytes (overall bytes %llu -> %llu)", type, 0x30u);
        }
      }

      pthread_once(&nw_mpkl_log_init(void)::init_once, nw_mpkl_log_init_once);
      v40 = gMpklLogObj;
      if (os_log_type_enabled(gMpklLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v13[1].output_handler;
        v42 = v30 - 1;
        if (!v30)
        {
          v42 = 0;
        }

        v43 = BYTE2(v13[6].output_handler);
        *type = 67110658;
        *&type[4] = 100;
        *&type[8] = 1024;
        *&type[10] = 150;
        *&type[14] = 1042;
        *&type[16] = 16;
        *&type[20] = 2098;
        *&type[22] = &v197;
        *&type[30] = 2048;
        *&type[32] = v41;
        *v194 = 2048;
        *&v194[2] = v41 + v42;
        v195 = 1024;
        v196 = v43;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEFAULT, "32 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public}.16P, curStart: %llu, curEnd: %llu, logSeqn: %hhu}", type, 0x38u);
      }

      ++BYTE2(v13[6].output_handler);
    }

    else if ((*v19 & 0x80) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v36 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        *type = 136446722;
        *&type[4] = "nw_socket_get_input_frames";
        *&type[12] = 2082;
        *&type[14] = v13 + 420;
        *&type[22] = 1024;
        *&type[24] = v30;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Received %u bytes", type, 0x1Cu);
      }
    }

    v13[1].output_handler = (v13[1].output_handler + v30);
    ++v13[1].default_input_handler;
    if (!v30)
    {
      if (v34)
      {
        free(v34);
      }

      nw_socket_input_finished(v185, a2);
      nw_socket_cancel_input_source(&v13[1].output_handler, v88);
      a3 = v182;
      goto LABEL_293;
    }

    v189 = v34;
    v44 = 0;
    v45 = 0;
    if (v191.msg_controllen < 0xC)
    {
      v47 = 0;
      goto LABEL_84;
    }

    msg_control = v191.msg_control;
    v47 = 0;
    if (!v191.msg_control)
    {
      goto LABEL_84;
    }

    v45 = 0;
    while (1)
    {
      v50 = msg_control[1];
      if (v50 == 0xFFFF)
      {
        if (msg_control[2] == 7)
        {
          v45 = *(msg_control + 3);
        }

        goto LABEL_65;
      }

      if (v50 == 41)
      {
        break;
      }

      if (!v50)
      {
        v51 = msg_control[2];
        if (v51 == 24)
        {
          goto LABEL_83;
        }

        if (v51 == 27)
        {
LABEL_82:
          v44 = 0;
          v47 = msg_control[3];
          goto LABEL_84;
        }
      }

LABEL_65:
      v48 = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
      if ((v48 + 3) <= v191.msg_control + v191.msg_controllen)
      {
        v49 = v48 == msg_control;
      }

      else
      {
        v48 = 0;
        v49 = 1;
      }

      msg_control = v48;
      if (v49)
      {
        v44 = 0;
        v47 = 0;
        goto LABEL_84;
      }
    }

    v52 = msg_control[2];
    if (v52 != 47)
    {
      if (v52 == 36)
      {
        goto LABEL_82;
      }

      goto LABEL_65;
    }

LABEL_83:
    v47 = 0;
    v44 = *(msg_control + 12);
LABEL_84:
    v29 = v13[5].handle;
    if (v29)
    {
      v53 = *(v29 + 16);
      v54 = *(v29 + 24);
      v55 = (v53 + 24);
      if (!v53)
      {
        v55 = &v13[5].default_input_handler;
      }

      *v55 = v54;
      *v54->flow_id = v53;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      nw_frame_reset(v29, v189, v30, nw_socket_frame_input_finalizer, &v13[1].output_handler);
LABEL_89:
      nw_frame_set_buffer_used_malloc(v29, 1);
      if (v47)
      {
        *(v29 + 186) = *(v29 + 186) & 0xFC | v47 & 3;
      }

      if (v45)
      {
        *(v29 + 204) &= ~0x10u;
        *(v29 + 152) = v45;
      }

      v6 = v187;
      v19 = (&v13[6].callbacks + 5);
      if (v44)
      {
        *(v29 + 185) = v44;
      }

LABEL_95:
      if ((HIBYTE(v13[6].callbacks) & 0x10) == 0)
      {
        metadata = _nw_udp_create_metadata();
        if (metadata)
        {
          v57 = metadata;
          nw_frame_set_metadata(v29, metadata, 1, 1);
          os_release(v57);
        }
      }

      LODWORD(v24) = v30 + v24;
      *(v29 + 16) = 0;
      v27 = *v13[6].flow_id;
      *(v29 + 24) = v27;
      *v27 = v29;
      *v13[6].flow_id = v29 + 16;
      *(v29 + 32) = 0;
      v28 = v6->tqh_last;
      *(v29 + 40) = v28;
      *v28 = v29;
      v6->tqh_last = (v29 + 32);
      v25 = (v25 + 1);
      if (v25 == a5)
      {
        v25 = a5;
        a3 = v182;
        goto LABEL_293;
      }

      continue;
    }

    break;
  }

  v29 = nw_frame_create(0, v189, v30, nw_socket_frame_input_finalizer, &v13[1].output_handler);
  if (v29)
  {
    goto LABEL_89;
  }

  __nwlog_obj();
  *type = 136446210;
  *&type[4] = "nw_socket_get_input_frames";
  v95 = _os_log_send_and_compose_impl();
  LOBYTE(v197) = 16;
  v192 = 0;
  v96 = __nwlog_fault(v95, &v197, &v192);
  a3 = v182;
  v94 = v182;
  v97 = v189;
  if (v96)
  {
    if (v197 != 17)
    {
      if (v192 == 1)
      {
        v102 = __nw_create_backtrace_string();
        v98 = __nwlog_obj();
        v99 = v197;
        v103 = os_log_type_enabled(v98, v197);
        if (v102)
        {
          if (v103)
          {
            *type = 136446466;
            *&type[4] = "nw_socket_get_input_frames";
            *&type[12] = 2082;
            *&type[14] = v102;
            _os_log_impl(&dword_181A37000, v98, v99, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", type, 0x16u);
          }

          free(v102);
          a3 = v182;
          v97 = v189;
          goto LABEL_288;
        }

        a3 = v182;
        v97 = v189;
        if (!v103)
        {
          goto LABEL_288;
        }

        *type = 136446210;
        *&type[4] = "nw_socket_get_input_frames";
        v101 = "%{public}s nw_frame_create failed, no backtrace";
      }

      else
      {
        v98 = __nwlog_obj();
        v99 = v197;
        v136 = os_log_type_enabled(v98, v197);
        a3 = v182;
        if (!v136)
        {
          goto LABEL_288;
        }

        *type = 136446210;
        *&type[4] = "nw_socket_get_input_frames";
        v101 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
      }

LABEL_287:
      _os_log_impl(&dword_181A37000, v98, v99, v101, type, 0xCu);
      a3 = v182;
      goto LABEL_288;
    }

    v98 = __nwlog_obj();
    v99 = v197;
    v100 = os_log_type_enabled(v98, v197);
    a3 = v182;
    if (v100)
    {
      *type = 136446210;
      *&type[4] = "nw_socket_get_input_frames";
      v101 = "%{public}s nw_frame_create failed";
      goto LABEL_287;
    }
  }

LABEL_288:
  if (v95)
  {
    free(v95);
    a3 = v182;
  }

  if (v97)
  {
    v93 = v97;
LABEL_292:
    free(v93);
    a3 = v94;
  }

LABEL_293:
  v141 = a3 - v24;
  if (a3 < v24)
  {
    v141 = 0;
  }

  if (v141 <= 1)
  {
    v142 = 1;
  }

  else
  {
    v142 = v141;
  }

  *type = v142;
  v143 = *&v13[4].flow_id[8];
  if (v143 != v142)
  {
    if (v142 > v143)
    {
      LODWORD(v191.msg_name) = 0;
      LODWORD(v211) = 4;
      if (getsockopt(HIDWORD(v13[4].callbacks), 0xFFFF, 4098, &v191, &v211))
      {
        v144 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v145 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          v146 = HIDWORD(v13[4].callbacks);
          *buf = 136446978;
          *&buf[4] = "nw_socket_set_receive_low_water_mark";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 420;
          *&buf[22] = 1024;
          *&buf[24] = v146;
          *&buf[28] = 1024;
          *&buf[30] = v144;
          _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt SO_RCVBUF fd %d failed %{darwin.errno}d", buf, 0x22u);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v147 = HIDWORD(v13[4].callbacks);
        *buf = 136446722;
        *&buf[4] = "nw_socket_set_receive_low_water_mark";
        *&buf[12] = 1024;
        *&buf[14] = v147;
        *&buf[18] = 1024;
        *&buf[20] = v144;
        v148 = _os_log_send_and_compose_impl();
        LOBYTE(v197) = 16;
        v192 = 0;
        if (__nwlog_fault(v148, &v197, &v192))
        {
          if (v197 != 17)
          {
            if (v192 == 1)
            {
              v154 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v149 = gLogObj;
              v150 = v197;
              v155 = os_log_type_enabled(gLogObj, v197);
              if (v154)
              {
                if (v155)
                {
                  v156 = HIDWORD(v13[4].callbacks);
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_set_receive_low_water_mark";
                  *&buf[12] = 1024;
                  *&buf[14] = v156;
                  *&buf[18] = 1024;
                  *&buf[20] = v144;
                  *&buf[24] = 2082;
                  *&buf[26] = v154;
                  _os_log_impl(&dword_181A37000, v149, v150, "%{public}s getsockopt SO_RCVBUF fd %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
                }

                free(v154);
                goto LABEL_325;
              }

              if (!v155)
              {
                goto LABEL_325;
              }

              v158 = HIDWORD(v13[4].callbacks);
              *buf = 136446722;
              *&buf[4] = "nw_socket_set_receive_low_water_mark";
              *&buf[12] = 1024;
              *&buf[14] = v158;
              *&buf[18] = 1024;
              *&buf[20] = v144;
              v152 = "%{public}s getsockopt SO_RCVBUF fd %d failed %{darwin.errno}d, no backtrace";
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v149 = gLogObj;
              v150 = v197;
              if (!os_log_type_enabled(gLogObj, v197))
              {
                goto LABEL_325;
              }

              v157 = HIDWORD(v13[4].callbacks);
              *buf = 136446722;
              *&buf[4] = "nw_socket_set_receive_low_water_mark";
              *&buf[12] = 1024;
              *&buf[14] = v157;
              *&buf[18] = 1024;
              *&buf[20] = v144;
              v152 = "%{public}s getsockopt SO_RCVBUF fd %d failed %{darwin.errno}d, backtrace limit exceeded";
            }

LABEL_324:
            _os_log_impl(&dword_181A37000, v149, v150, v152, buf, 0x18u);
            goto LABEL_325;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v149 = gLogObj;
          v150 = v197;
          if (os_log_type_enabled(gLogObj, v197))
          {
            v151 = HIDWORD(v13[4].callbacks);
            *buf = 136446722;
            *&buf[4] = "nw_socket_set_receive_low_water_mark";
            *&buf[12] = 1024;
            *&buf[14] = v151;
            *&buf[18] = 1024;
            *&buf[20] = v144;
            v152 = "%{public}s getsockopt SO_RCVBUF fd %d failed %{darwin.errno}d";
            goto LABEL_324;
          }
        }

LABEL_325:
        if (v148)
        {
          free(v148);
        }
      }

      else if (LODWORD(v191.msg_name) && v142 > LODWORD(v191.msg_name) / 3)
      {
        if (LODWORD(v191.msg_name) < 3)
        {
          v153 = 1;
        }

        else
        {
          v153 = LODWORD(v191.msg_name) / 3;
        }

        *type = v153;
      }
    }

    if (!setsockopt(HIDWORD(v13[4].callbacks), 0xFFFF, 4100, type, 4u))
    {
      *&v13[4].flow_id[8] = *type;
      goto LABEL_352;
    }

    v159 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v160 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v161 = HIDWORD(v13[4].callbacks);
      *buf = 136447234;
      *&buf[4] = "nw_socket_set_receive_low_water_mark";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 420;
      *&buf[22] = 1024;
      *&buf[24] = *type;
      *&buf[28] = 1024;
      *&buf[30] = v161;
      *&buf[34] = 1024;
      *&buf[36] = v159;
      _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_RCVLOWAT %u fd %d failed %{darwin.errno}d", buf, 0x28u);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v162 = gLogObj;
    if (v159 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v163 = HIDWORD(v13[4].callbacks);
        *buf = 136446978;
        *&buf[4] = "nw_socket_set_receive_low_water_mark";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v163;
        *&buf[24] = 1024;
        *&buf[26] = 22;
        _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_RCVLOWAT %u fd %d failed %{darwin.errno}d", buf, 0x1Eu);
      }

      goto LABEL_352;
    }

    v164 = HIDWORD(v13[4].callbacks);
    *buf = 136446978;
    *&buf[4] = "nw_socket_set_receive_low_water_mark";
    *&buf[12] = 1024;
    *&buf[14] = *type;
    *&buf[18] = 1024;
    *&buf[20] = v164;
    *&buf[24] = 1024;
    *&buf[26] = v159;
    v165 = _os_log_send_and_compose_impl();
    LOBYTE(v191.msg_name) = 16;
    LOBYTE(v211) = 0;
    if (__nwlog_fault(v165, &v191, &v211))
    {
      if (LOBYTE(v191.msg_name) != 17)
      {
        if (v211 == 1)
        {
          v170 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v166 = gLogObj;
          v167 = v191.msg_name;
          v171 = os_log_type_enabled(gLogObj, v191.msg_name);
          if (v170)
          {
            if (v171)
            {
              v172 = HIDWORD(v13[4].callbacks);
              *buf = 136447234;
              *&buf[4] = "nw_socket_set_receive_low_water_mark";
              *&buf[12] = 1024;
              *&buf[14] = *type;
              *&buf[18] = 1024;
              *&buf[20] = v172;
              *&buf[24] = 1024;
              *&buf[26] = v159;
              *&buf[30] = 2082;
              *&buf[32] = v170;
              _os_log_impl(&dword_181A37000, v166, v167, "%{public}s setsockopt SO_RCVLOWAT %u fd %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x28u);
            }

            free(v170);
            goto LABEL_350;
          }

          if (!v171)
          {
            goto LABEL_350;
          }

          v174 = HIDWORD(v13[4].callbacks);
          *buf = 136446978;
          *&buf[4] = "nw_socket_set_receive_low_water_mark";
          *&buf[12] = 1024;
          *&buf[14] = *type;
          *&buf[18] = 1024;
          *&buf[20] = v174;
          *&buf[24] = 1024;
          *&buf[26] = v159;
          v169 = "%{public}s setsockopt SO_RCVLOWAT %u fd %d failed %{darwin.errno}d, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v166 = gLogObj;
          v167 = v191.msg_name;
          if (!os_log_type_enabled(gLogObj, v191.msg_name))
          {
            goto LABEL_350;
          }

          v173 = HIDWORD(v13[4].callbacks);
          *buf = 136446978;
          *&buf[4] = "nw_socket_set_receive_low_water_mark";
          *&buf[12] = 1024;
          *&buf[14] = *type;
          *&buf[18] = 1024;
          *&buf[20] = v173;
          *&buf[24] = 1024;
          *&buf[26] = v159;
          v169 = "%{public}s setsockopt SO_RCVLOWAT %u fd %d failed %{darwin.errno}d, backtrace limit exceeded";
        }

LABEL_349:
        _os_log_impl(&dword_181A37000, v166, v167, v169, buf, 0x1Eu);
        goto LABEL_350;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v166 = gLogObj;
      v167 = v191.msg_name;
      if (os_log_type_enabled(gLogObj, v191.msg_name))
      {
        v168 = HIDWORD(v13[4].callbacks);
        *buf = 136446978;
        *&buf[4] = "nw_socket_set_receive_low_water_mark";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v168;
        *&buf[24] = 1024;
        *&buf[26] = v159;
        v169 = "%{public}s setsockopt SO_RCVLOWAT %u fd %d failed %{darwin.errno}d";
        goto LABEL_349;
      }
    }

LABEL_350:
    if (v165)
    {
      free(v165);
    }
  }

LABEL_352:
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  v8 = v185;
  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v11 = v184;
LABEL_149:
  if ((v11 & 1) == 0)
  {
    v78 = v8->handle;
    if (v78 == &nw_protocol_ref_counted_handle || v78 == &nw_protocol_ref_counted_additional_handle && (v8 = *v8[1].flow_id) != 0)
    {
      v79 = v8[1].callbacks;
      if (v79)
      {
        v80 = (v79 - 1);
        v8[1].callbacks = v80;
        if (!v80)
        {
          v81 = *v8[1].flow_id;
          if (v81)
          {
            *v8[1].flow_id = 0;
            (v81)[2](v81, a2);
            _Block_release(v81);
          }

          if (v8[1].flow_id[8])
          {
            v82 = *v8[1].flow_id;
            if (v82)
            {
              _Block_release(v82);
            }
          }

          free(v8);
        }
      }
    }
  }

  return v25;
}

void nw_protocol_http2_transport_process_input(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v43 = __nwlog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 205;
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  while (1)
  {
    v56 = 0;
    v57 = &v56;
    v2 = *(a1 + 32);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 80);
    if (!v4)
    {
      break;
    }

    v5 = v4(v2, a1);
    if (!v5)
    {
      goto LABEL_58;
    }

    v6 = v5;
    if (gLogDatapath == 1)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http2_transport_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 205;
        *&buf[22] = 1024;
        LODWORD(v61) = v6;
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s received %u frames from output_handler", buf, 0x1Cu);
      }
    }

    *type = 0;
    v53 = type;
    v54 = 0x2000000000;
    v55 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v48 = ___ZL41nw_protocol_http2_transport_process_inputP27nw_protocol_http2_transport_block_invoke;
    v49 = &unk_1E6A32090;
    v50 = type;
    v51 = a1;
    v7 = v56;
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 32);
      v9 = (v48)(v47);
      v7 = v8;
    }

    while ((v9 & 1) != 0);
    if (nghttp2_session_consume_connection())
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = nghttp2_strerror();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_process_input";
      *&buf[12] = 2082;
      *&buf[14] = v10;
      v11 = _os_log_send_and_compose_impl();
      LOBYTE(v58) = 16;
      v46 = 0;
      if (!__nwlog_fault(v11, &v58, &v46))
      {
        goto LABEL_25;
      }

      if (v58 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v58;
        if (os_log_type_enabled(gLogObj, v58))
        {
          v14 = nghttp2_strerror();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_process_input";
          *&buf[12] = 2082;
          *&buf[14] = v14;
          v15 = v12;
          v16 = v13;
          v17 = "%{public}s nghttp2_session_consume_connection: %{public}s failed";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if (v46 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = v58;
        v21 = os_log_type_enabled(gLogObj, v58);
        if (backtrace_string)
        {
          if (v21)
          {
            v22 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_protocol_http2_transport_process_input";
            *&buf[12] = 2082;
            *&buf[14] = v22;
            *&buf[22] = 2082;
            v61 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s nghttp2_session_consume_connection: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v21)
        {
LABEL_25:
          if (v11)
          {
            free(v11);
          }

          goto LABEL_27;
        }

        v26 = nghttp2_strerror();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v26;
        v15 = v19;
        v16 = v20;
        v17 = "%{public}s nghttp2_session_consume_connection: %{public}s failed, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = v58;
        if (!os_log_type_enabled(gLogObj, v58))
        {
          goto LABEL_25;
        }

        v25 = nghttp2_strerror();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v25;
        v15 = v23;
        v16 = v24;
        v17 = "%{public}s nghttp2_session_consume_connection: %{public}s failed, backtrace limit exceeded";
      }

LABEL_24:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x16u);
      goto LABEL_25;
    }

LABEL_27:
    if (gLogDatapath == 1)
    {
      v34 = __nwlog_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(v53 + 6);
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http2_transport_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 205;
        *&buf[22] = 1024;
        LODWORD(v61) = v35;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s consumed %u bytes on connection", buf, 0x1Cu);
      }
    }

    v27 = *(a1 + 112);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v45[2] = ___ZL41nw_protocol_http2_transport_process_inputP27nw_protocol_http2_transport_block_invoke_25;
    v45[3] = &__block_descriptor_tmp_26_41020;
    v45[4] = a1;
    nw_hash_table_apply(v27, v45);
    v28 = v56;
    if (v56)
    {
      *(v56 + 40) = &v58;
      v58 = v28;
      v59 = v57;
      v56 = 0;
      v57 = &v56;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v61 = &__block_descriptor_tmp_21_49595;
      v62 = 1;
      do
      {
        v29 = v58;
        if (!v58)
        {
          break;
        }

        v30 = *(v58 + 32);
        v31 = *(v58 + 40);
        v32 = (v30 + 40);
        if (!v30)
        {
          v32 = &v59;
        }

        *v32 = v31;
        *v31 = v30;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if (gLogDatapath == 1)
    {
      v36 = __nwlog_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http2_transport_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 205;
        *&buf[22] = 1024;
        LODWORD(v61) = v6;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s processed %u frames", buf, 0x1Cu);
      }
    }

    _Block_object_dispose(type, 8);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  *&buf[4] = "nw_protocol_http2_transport_process_input";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 205;
  v37 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v58) = 0;
  if (!__nwlog_fault(v37, type, &v58))
  {
    goto LABEL_56;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v38 = gLogObj;
    v39 = type[0];
    if (os_log_type_enabled(gLogObj, type[0]))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 205;
      v40 = "%{public}s %{public}s output handler has no get_input_frames callback";
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  if (v58 != 1)
  {
    v38 = __nwlog_obj();
    v39 = type[0];
    if (!os_log_type_enabled(v38, type[0]))
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_process_input";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 205;
    v40 = "%{public}s %{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
    goto LABEL_55;
  }

  v41 = __nw_create_backtrace_string();
  v38 = __nwlog_obj();
  v39 = type[0];
  v42 = os_log_type_enabled(v38, type[0]);
  if (v41)
  {
    if (v42)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http2_transport_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 205;
      *&buf[22] = 2082;
      v61 = v41;
      _os_log_impl(&dword_181A37000, v38, v39, "%{public}s %{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v41);
    goto LABEL_56;
  }

  if (v42)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_process_input";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 205;
    v40 = "%{public}s %{public}s output handler has no get_input_frames callback, no backtrace";
LABEL_55:
    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0x16u);
  }

LABEL_56:
  if (v37)
  {
    free(v37);
  }

LABEL_58:
  if (gLogDatapath)
  {
    v44 = __nwlog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 205;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s about to allow http2_transport to send pending data", buf, 0x16u);
    }
  }

  nw_http2_transport_session_send(a1);
}

void nw_protocol_http2_transport_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http2_transport_input_available";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v3, &type, &v14))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http2_transport_input_available";
      v6 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http2_transport_input_available";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v3)
        {
          return;
        }

LABEL_38:
        free(v3);
        return;
      }

      if (!v11)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http2_transport_input_available";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http2_transport_input_available";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (handle)
  {
    if (gLogDatapath == 1)
    {
      v7 = handle;
      v8 = __nwlog_obj();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      handle = v7;
      if (v9)
      {
        *buf = 136446466;
        v17 = "nw_protocol_http2_transport_input_available";
        v18 = 2082;
        v19 = v7 + 205;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
        handle = v7;
      }
    }

    if ((handle[204] & 0x40) == 0)
    {
      nw_protocol_http2_transport_process_input(handle);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_http2_transport_input_available";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v3, &type, &v14))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http2_transport_input_available";
    v6 = "%{public}s called with null http2_transport";
    goto LABEL_36;
  }

  if (v14 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http2_transport_input_available";
    v6 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    goto LABEL_36;
  }

  v12 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v13 = os_log_type_enabled(v4, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http2_transport_input_available";
    v6 = "%{public}s called with null http2_transport, no backtrace";
    goto LABEL_36;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_protocol_http2_transport_input_available";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v3)
  {
    goto LABEL_38;
  }
}

void nw_frame_set_buffer_used_malloc(uint64_t a1, __int16 a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 204) = *(a1 + 204) & 0xFFFE | a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_set_buffer_used_malloc";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_buffer_used_malloc";
      v5 = "%{public}s called with null frame";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_buffer_used_malloc";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_frame_set_buffer_used_malloc";
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
      v11 = "__nw_frame_set_buffer_used_malloc";
      v5 = "%{public}s called with null frame, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

uint64_t ___ZL41nw_protocol_http2_transport_process_inputP27nw_protocol_http2_transport_block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &v32);
  v4 = v32;
  if (v3)
  {
    v5 = v32 == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (v5)
  {
    return result;
  }

  v31 = result;
  if (gLogDatapath != 1)
  {
    goto LABEL_9;
  }

  v26 = __nwlog_obj();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
  v4 = v32;
  if (v27)
  {
    v28 = *(a1 + 40);
    v29 = (v28 + 205);
    v5 = v28 == 0;
    v30 = "";
    if (!v5)
    {
      v30 = v29;
    }

    *buf = 136446722;
    v34 = "nw_protocol_http2_transport_process_input_block_invoke";
    v35 = 2082;
    v36 = v30;
    v37 = 1024;
    v38 = v32;
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s processing frame of length %u bytes", buf, 0x1Cu);
    v4 = v32;
  }

  if (v4)
  {
LABEL_9:
    v7 = 0;
    while (1)
    {
      v8 = MEMORY[0x1865DDB50](*(*(a1 + 40) + 80), v3 + v7, v4 - v7);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      v9 = *(*(a1 + 40) + 204) & 8;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (v8 == -902 && v9 != 0)
      {
        break;
      }

      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = (v12 + 205);
        }

        else
        {
          v13 = "";
        }

        v14 = nghttp2_strerror();
        *buf = 136446978;
        v34 = "nw_protocol_http2_transport_process_input_block_invoke";
        v35 = 2082;
        v36 = v13;
        v37 = 1024;
        v38 = v8;
        v39 = 2082;
        v40 = v14;
        v15 = v10;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = "%{public}s %{public}s ERROR: Could not process incoming data: %d (%{public}s)";
LABEL_26:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x26u);
      }

LABEL_27:
      nw_http2_transport_connection_close(*(a1 + 40));
LABEL_28:
      v7 += v8;
      if (gLogDatapath == 1)
      {
        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(a1 + 40);
          v24 = (v23 + 205);
          v5 = v23 == 0;
          v25 = "";
          if (!v5)
          {
            v25 = v24;
          }

          *buf = 136446722;
          v34 = "nw_protocol_http2_transport_process_input_block_invoke";
          v35 = 2082;
          v36 = v25;
          v37 = 1024;
          v38 = v7;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s nghttp2_session_mem_recv consumed %u bytes", buf, 0x1Cu);
        }
      }

      v4 = v32;
      if (v7 >= v32)
      {
        goto LABEL_41;
      }
    }

    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = (v19 + 205);
    }

    else
    {
      v20 = "";
    }

    v21 = nghttp2_strerror();
    *buf = 136446978;
    v34 = "nw_protocol_http2_transport_process_input_block_invoke";
    v35 = 2082;
    v36 = v20;
    v37 = 1024;
    v38 = -902;
    v39 = 2082;
    v40 = v21;
    v15 = v10;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = "%{public}s %{public}s Could not process incoming data: %d (%{public}s), closing";
    goto LABEL_26;
  }

  v7 = 0;
LABEL_41:
  *(*(*(a1 + 32) + 8) + 24) += v7;
  return v31;
}

uint64_t on_data_chunk_recv_callback(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v69 = "on_data_chunk_recv_callback";
    v45 = _os_log_send_and_compose_impl();
    v66[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v45, v66, &type))
    {
      goto LABEL_105;
    }

    if (v66[0] == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = v66[0];
      if (!os_log_type_enabled(v46, v66[0]))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v69 = "on_data_chunk_recv_callback";
      v48 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = v66[0];
      v51 = os_log_type_enabled(v46, v66[0]);
      if (backtrace_string)
      {
        if (v51)
        {
          *buf = 136446466;
          v69 = "on_data_chunk_recv_callback";
          v70 = 2082;
          v71 = backtrace_string;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_105;
      }

      if (!v51)
      {
LABEL_105:
        if (v45)
        {
          free(v45);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v69 = "on_data_chunk_recv_callback";
      v48 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v46 = __nwlog_obj();
      v47 = v66[0];
      if (!os_log_type_enabled(v46, v66[0]))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v69 = "on_data_chunk_recv_callback";
      v48 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
    goto LABEL_105;
  }

  if (gLogDatapath == 1)
  {
    v49 = __nwlog_obj();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v69 = "on_data_chunk_recv_callback";
      v70 = 2082;
      v71 = a6 + 205;
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  *v66 = 0;
  stream_from_id = nw_http2_transport_get_stream_from_id(a6, a3, v66);
  if (!stream_from_id)
  {
    return 4294966775;
  }

  v11 = stream_from_id;
  input_frame = http2_transport_create_input_frame(a6, stream_from_id, a5);
  if (!input_frame)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = a6 + 205;
    v19 = *(v11 + 32);
    *buf = 136446978;
    v69 = "on_data_chunk_recv_callback";
    v70 = 2082;
    v71 = a6 + 205;
    v72 = 2048;
    *v73 = a5;
    *&v73[8] = 1024;
    *&v73[10] = v19;
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v20, &type, &v65))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_54;
      }

      v23 = *(v11 + 32);
      *buf = 136446978;
      v69 = "on_data_chunk_recv_callback";
      v70 = 2082;
      v71 = v18;
      v72 = 2048;
      *v73 = a5;
      *&v73[8] = 1024;
      *&v73[10] = v23;
      v24 = "%{public}s %{public}s failed to create/reuse input frame of length %zu for stream %d";
    }

    else if (v65 == 1)
    {
      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type;
      v27 = os_log_type_enabled(gLogObj, type);
      if (v26)
      {
        if (v27)
        {
          v28 = *(v11 + 32);
          *buf = 136447234;
          v69 = "on_data_chunk_recv_callback";
          v70 = 2082;
          v71 = v18;
          v72 = 2048;
          *v73 = a5;
          *&v73[8] = 1024;
          *&v73[10] = v28;
          v74 = 2082;
          v75 = v26;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s %{public}s failed to create/reuse input frame of length %zu for stream %d, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v26);
        goto LABEL_54;
      }

      if (!v27)
      {
LABEL_54:
        if (v20)
        {
          free(v20);
        }

        return 4294966394;
      }

      v43 = *(v11 + 32);
      *buf = 136446978;
      v69 = "on_data_chunk_recv_callback";
      v70 = 2082;
      v71 = v18;
      v72 = 2048;
      *v73 = a5;
      *&v73[8] = 1024;
      *&v73[10] = v43;
      v24 = "%{public}s %{public}s failed to create/reuse input frame of length %zu for stream %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_54;
      }

      v42 = *(v11 + 32);
      *buf = 136446978;
      v69 = "on_data_chunk_recv_callback";
      v70 = 2082;
      v71 = v18;
      v72 = 2048;
      *v73 = a5;
      *&v73[8] = 1024;
      *&v73[10] = v42;
      v24 = "%{public}s %{public}s failed to create/reuse input frame of length %zu for stream %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v21, v22, v24, buf, 0x26u);
    goto LABEL_54;
  }

  v13 = input_frame;
  if (!*(input_frame + 112) || (*(input_frame + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(input_frame, *(input_frame + 88)))
  {
    v16 = 0;
    v25 = 0;
  }

  else
  {
    v15 = *(v13 + 52);
    v14 = *(v13 + 56);
    if (v15)
    {
      v16 = v15 - (v14 + *(v13 + 60));
    }

    else
    {
      v16 = 0;
    }

    v25 = (*(v13 + 112) + v14);
  }

  if (v16 != a5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = a6 + 205;
    *buf = 136446978;
    v69 = "on_data_chunk_recv_callback";
    v70 = 2082;
    v71 = a6 + 205;
    v72 = 1024;
    *v73 = v16;
    *&v73[4] = 2048;
    *&v73[6] = a5;
    v34 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v34, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446978;
          v69 = "on_data_chunk_recv_callback";
          v70 = 2082;
          v71 = v33;
          v72 = 1024;
          *v73 = v16;
          *&v73[4] = 2048;
          *&v73[6] = a5;
          v37 = "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %zu) from http2_transport_create_input_frame";
LABEL_58:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0x26u);
        }
      }

      else if (v65 == 1)
      {
        v40 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        v41 = os_log_type_enabled(gLogObj, type);
        if (v40)
        {
          if (v41)
          {
            *buf = 136447234;
            v69 = "on_data_chunk_recv_callback";
            v70 = 2082;
            v71 = v33;
            v72 = 1024;
            *v73 = v16;
            *&v73[4] = 2048;
            *&v73[6] = a5;
            v74 = 2082;
            v75 = v40;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %zu) from http2_transport_create_input_frame, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v40);
          goto LABEL_59;
        }

        if (v41)
        {
          *buf = 136446978;
          v69 = "on_data_chunk_recv_callback";
          v70 = 2082;
          v71 = v33;
          v72 = 1024;
          *v73 = v16;
          *&v73[4] = 2048;
          *&v73[6] = a5;
          v37 = "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %zu) from http2_transport_create_input_frame, no backtrace";
          goto LABEL_58;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446978;
          v69 = "on_data_chunk_recv_callback";
          v70 = 2082;
          v71 = v33;
          v72 = 1024;
          *v73 = v16;
          *&v73[4] = 2048;
          *&v73[6] = a5;
          v37 = "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %zu) from http2_transport_create_input_frame, backtrace limit exceeded";
          goto LABEL_58;
        }
      }
    }

LABEL_59:
    if (v34)
    {
      free(v34);
    }

    if ((*(v13 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v13, *(v13 + 88)))
    {
      v44 = *(v13 + 112);
      if (v44)
      {
        free(v44);
      }
    }

    nw_frame_reset(v13, 0, 0, 0, 0);
    os_release(v13);
    return 4294966394;
  }

  memcpy(v25, a4, a5);
  *(v13 + 16) = 0;
  v29 = *(v11 + 8);
  *(v13 + 24) = v29;
  *v29 = v13;
  *(v11 + 8) = v13 + 16;
  if (!*v66)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v69 = "on_data_chunk_recv_callback";
      v70 = 2082;
      v71 = a6 + 205;
      v72 = 2048;
      *v73 = v11;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s stream (%p) did not have protocol extra", buf, 0x20u);
    }
  }

  if (*(v11 + 36))
  {
    if (gLogDatapath)
    {
      v61 = __nwlog_obj();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = *(v11 + 32);
        *buf = 136446978;
        v69 = "on_data_chunk_recv_callback";
        v70 = 2082;
        v71 = a6 + 205;
        v72 = 2048;
        *v73 = *v66;
        *&v73[8] = 1024;
        *&v73[10] = v62;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling input_available on protocol %p for stream %d", buf, 0x26u);
      }
    }

    if (*v66)
    {
      v38 = *(*v66 + 24);
      if (v38)
      {
        v39 = *(v38 + 64);
        if (v39)
        {
          v39();
          return 0;
        }
      }
    }

    __nwlog_obj();
    v52 = "invalid";
    if (*v66 && *(*v66 + 16))
    {
      v52 = *(*v66 + 16);
    }

    *buf = 136446466;
    v69 = "on_data_chunk_recv_callback";
    v70 = 2082;
    v71 = v52;
    v53 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v53, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v54 = __nwlog_obj();
        v55 = type;
        if (!os_log_type_enabled(v54, type))
        {
          goto LABEL_118;
        }

        v56 = "invalid";
        if (*v66 && *(*v66 + 16))
        {
          v56 = *(*v66 + 16);
        }

        *buf = 136446466;
        v69 = "on_data_chunk_recv_callback";
        v70 = 2082;
        v71 = v56;
        v57 = "%{public}s protocol %{public}s has invalid input_available callback";
        goto LABEL_117;
      }

      if (v65 != 1)
      {
        v54 = __nwlog_obj();
        v55 = type;
        if (!os_log_type_enabled(v54, type))
        {
          goto LABEL_118;
        }

        v63 = "invalid";
        if (*v66 && *(*v66 + 16))
        {
          v63 = *(*v66 + 16);
        }

        *buf = 136446466;
        v69 = "on_data_chunk_recv_callback";
        v70 = 2082;
        v71 = v63;
        v57 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
        goto LABEL_117;
      }

      v58 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v55 = type;
      v59 = os_log_type_enabled(v54, type);
      if (v58)
      {
        if (v59)
        {
          v60 = "invalid";
          if (*v66 && *(*v66 + 16))
          {
            v60 = *(*v66 + 16);
          }

          *buf = 136446722;
          v69 = "on_data_chunk_recv_callback";
          v70 = 2082;
          v71 = v60;
          v72 = 2082;
          *v73 = v58;
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v58);
        goto LABEL_118;
      }

      if (v59)
      {
        v64 = "invalid";
        if (*v66 && *(*v66 + 16))
        {
          v64 = *(*v66 + 16);
        }

        *buf = 136446466;
        v69 = "on_data_chunk_recv_callback";
        v70 = 2082;
        v71 = v64;
        v57 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
LABEL_117:
        _os_log_impl(&dword_181A37000, v54, v55, v57, buf, 0x16u);
      }
    }

LABEL_118:
    if (v53)
    {
      free(v53);
    }

    return 0;
  }

  if (!gLogDatapath)
  {
    return 0;
  }

  v31 = __nwlog_obj();
  result = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v32 = *(v11 + 32);
    *buf = 136446978;
    v69 = "on_data_chunk_recv_callback";
    v70 = 2082;
    v71 = a6 + 205;
    v72 = 2048;
    *v73 = *v66;
    *&v73[8] = 1024;
    *&v73[10] = v32;
    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s suppressing input_available on protocol %p for stream %d that is not yet open", buf, 0x26u);
    return 0;
  }

  return result;
}
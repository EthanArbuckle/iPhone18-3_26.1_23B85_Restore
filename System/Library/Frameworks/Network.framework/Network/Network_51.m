void nw_protocol_implementation_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v151 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v5 = __nwlog_obj();
        *buf = 136446210;
        v144 = "nw_protocol_implementation_disconnect";
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v139) = 0;
        if (__nwlog_fault(v6, type, &v139))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v144 = "nw_protocol_implementation_disconnect";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v139 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v28 = type[0];
            v29 = os_log_type_enabled(v7, type[0]);
            if (backtrace_string)
            {
              if (v29)
              {
                *buf = 136446466;
                v144 = "nw_protocol_implementation_disconnect";
                v145 = 2082;
                v146 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v28, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }

            if (v29)
            {
              *buf = 136446210;
              v144 = "nw_protocol_implementation_disconnect";
              _os_log_impl(&dword_181A37000, v7, v28, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v30 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v144 = "nw_protocol_implementation_disconnect";
              _os_log_impl(&dword_181A37000, v7, v30, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_75:
          v9 = 0;
LABEL_161:

          return;
        }

LABEL_74:
        free(v6);
        goto LABEL_75;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v3[1].handle;
    if (!v10)
    {
      v83 = __nwlog_obj();
      *buf = 136446210;
      v144 = "nw_protocol_implementation_disconnect";
      v84 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v139) = 0;
      if (!__nwlog_fault(v84, type, &v139))
      {
        goto LABEL_322;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v86 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v139 == 1)
      {
        v99 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v100 = type[0];
        v101 = os_log_type_enabled(v85, type[0]);
        if (v99)
        {
          if (v101)
          {
            *buf = 136446466;
            v144 = "nw_protocol_implementation_disconnect";
            v145 = 2082;
            v146 = v99;
            _os_log_impl(&dword_181A37000, v85, v100, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v99);
LABEL_322:
          if (!v84)
          {
            goto LABEL_161;
          }

LABEL_323:
          free(v84);
          goto LABEL_161;
        }

        if (v101)
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v85, v100, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v85 = __nwlog_obj();
        v114 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v85, v114, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_321:

      goto LABEL_322;
    }

    if (!v10[10])
    {
      v87 = __nwlog_obj();
      *buf = 136446210;
      v144 = "nw_protocol_implementation_disconnect";
      v84 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v139) = 0;
      if (!__nwlog_fault(v84, type, &v139))
      {
        goto LABEL_322;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v88 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v85, v88, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

        goto LABEL_321;
      }

      if (v139 != 1)
      {
        v85 = __nwlog_obj();
        v115 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v85, v115, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_321;
      }

      v102 = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v103 = type[0];
      v104 = os_log_type_enabled(v85, type[0]);
      if (!v102)
      {
        if (v104)
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v85, v103, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_321;
      }

      if (v104)
      {
        *buf = 136446466;
        v144 = "nw_protocol_implementation_disconnect";
        v145 = 2082;
        v146 = v102;
        _os_log_impl(&dword_181A37000, v85, v103, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_280;
    }

    if ((SBYTE5(v3[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v144 = "nw_protocol_implementation_disconnect";
        v145 = 2082;
        v146 = (v3 + 511);
        v147 = 2080;
        v148 = " ";
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDisconnect from input handler", buf, 0x20u);
      }

      v10 = v3[1].handle;
    }

    v11 = *(v10 + 16);
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v12 = *(v10[10] + 128);
        if (v12)
        {
          v13 = v9;
          if (nw_protocol_definition_get_message_is_stream(v3[1].handle) && v3->default_input_handler == a2)
          {
            v14 = -2;
          }

          else
          {
            v14 = a2;
          }

          if ((v12(v13, v14, 3) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = v13;
              if (nw_protocol_definition_get_message_is_stream(v3[1].handle) && v3->default_input_handler == a2)
              {
                v17 = -2;
              }

              else
              {
                v17 = a2;
              }

              *buf = 136446466;
              v144 = "nw_protocol_implementation_disconnect";
              v145 = 2048;
              v146 = v17;
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Flow %llx deferred stop, holding disconnected", buf, 0x16u);
            }

            if (a2)
            {
              if (a2->output_handler_context)
              {
LABEL_168:
                v9 = v13;
                goto LABEL_161;
              }

LABEL_28:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v18 = gLogObj;
              *buf = 136446466;
              v144 = "nw_protocol_implementation_disconnect";
              v145 = 2048;
              v146 = a2;
              v19 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v139) = 0;
              if (__nwlog_fault(v19, type, &v139))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v20 = __nwlog_obj();
                  v21 = type[0];
                  if (os_log_type_enabled(v20, type[0]))
                  {
                    *buf = 136446466;
                    v144 = "nw_protocol_implementation_disconnect";
                    v145 = 2048;
                    v146 = a2;
                    _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Output handler context doesn't exist on protocol %p", buf, 0x16u);
                  }
                }

                else if (v139 == 1)
                {
                  v48 = __nw_create_backtrace_string();
                  v20 = __nwlog_obj();
                  v49 = type[0];
                  v50 = os_log_type_enabled(v20, type[0]);
                  if (v48)
                  {
                    if (v50)
                    {
                      *buf = 136446722;
                      v144 = "nw_protocol_implementation_disconnect";
                      v145 = 2048;
                      v146 = a2;
                      v147 = 2082;
                      v148 = v48;
                      _os_log_impl(&dword_181A37000, v20, v49, "%{public}s Output handler context doesn't exist on protocol %p, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(v48);
                    goto LABEL_166;
                  }

                  if (v50)
                  {
                    *buf = 136446466;
                    v144 = "nw_protocol_implementation_disconnect";
                    v145 = 2048;
                    v146 = a2;
                    _os_log_impl(&dword_181A37000, v20, v49, "%{public}s Output handler context doesn't exist on protocol %p, no backtrace", buf, 0x16u);
                  }
                }

                else
                {
                  v20 = __nwlog_obj();
                  v64 = type[0];
                  if (os_log_type_enabled(v20, type[0]))
                  {
                    *buf = 136446466;
                    v144 = "nw_protocol_implementation_disconnect";
                    v145 = 2048;
                    v146 = a2;
                    _os_log_impl(&dword_181A37000, v20, v64, "%{public}s Output handler context doesn't exist on protocol %p, backtrace limit exceeded", buf, 0x16u);
                  }
                }
              }

LABEL_166:
              if (v19)
              {
                free(v19);
              }

              goto LABEL_168;
            }

            v127 = __nwlog_obj();
            *buf = 136446210;
            v144 = "__nw_protocol_get_output_handler_context";
            v128 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v139) = 0;
            if (__nwlog_fault(v128, type, &v139))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v129 = __nwlog_obj();
                v130 = type[0];
                if (os_log_type_enabled(v129, type[0]))
                {
                  *buf = 136446210;
                  v144 = "__nw_protocol_get_output_handler_context";
                  _os_log_impl(&dword_181A37000, v129, v130, "%{public}s called with null protocol", buf, 0xCu);
                }
              }

              else if (v139 == 1)
              {
                v132 = __nw_create_backtrace_string();
                v129 = __nwlog_obj();
                v133 = type[0];
                v134 = os_log_type_enabled(v129, type[0]);
                if (v132)
                {
                  if (v134)
                  {
                    *buf = 136446466;
                    v144 = "__nw_protocol_get_output_handler_context";
                    v145 = 2082;
                    v146 = v132;
                    _os_log_impl(&dword_181A37000, v129, v133, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v132);
                  goto LABEL_327;
                }

                if (v134)
                {
                  *buf = 136446210;
                  v144 = "__nw_protocol_get_output_handler_context";
                  _os_log_impl(&dword_181A37000, v129, v133, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v129 = __nwlog_obj();
                v136 = type[0];
                if (os_log_type_enabled(v129, type[0]))
                {
                  *buf = 136446210;
                  v144 = "__nw_protocol_get_output_handler_context";
                  _os_log_impl(&dword_181A37000, v129, v136, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_327:
            if (v128)
            {
              free(v128);
            }

            goto LABEL_28;
          }

          goto LABEL_102;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        *buf = 136446210;
        v144 = "nw_protocol_implementation_disconnect";
        v32 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v139) = 0;
        if (__nwlog_fault(v32, type, &v139))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v34 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446210;
              v144 = "nw_protocol_implementation_disconnect";
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null instance->parent_definition->stop", buf, 0xCu);
            }
          }

          else if (v139 == 1)
          {
            v37 = __nw_create_backtrace_string();
            v33 = __nwlog_obj();
            v38 = type[0];
            v39 = os_log_type_enabled(v33, type[0]);
            if (v37)
            {
              if (v39)
              {
                *buf = 136446466;
                v144 = "nw_protocol_implementation_disconnect";
                v145 = 2082;
                v146 = v37;
                _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null instance->parent_definition->stop, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v37);
              if (!v32)
              {
                goto LABEL_102;
              }

              goto LABEL_101;
            }

            if (v39)
            {
              *buf = 136446210;
              v144 = "nw_protocol_implementation_disconnect";
              _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null instance->parent_definition->stop, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v45 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446210;
              v144 = "nw_protocol_implementation_disconnect";
              _os_log_impl(&dword_181A37000, v33, v45, "%{public}s called with null instance->parent_definition->stop, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v32)
        {
LABEL_102:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v51 = gLogObj;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v52 = v9;
            if (nw_protocol_definition_get_message_is_stream(v3[1].handle) && v3->default_input_handler == a2)
            {
              v53 = -2;
            }

            else
            {
              v53 = a2;
            }

            *buf = 136446466;
            v144 = "nw_protocol_implementation_disconnect";
            v145 = 2048;
            v146 = v53;
            _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s Flow %llx stopping immediately, sending disconnected", buf, 0x16u);
          }

          if (a2)
          {
            v54 = a2->handle;
            v55 = a2;
            if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v55 = *a2[1].flow_id) != 0)
            {
              callbacks = v55[1].callbacks;
              if (callbacks)
              {
                v55[1].callbacks = (&callbacks->add_input_handler + 1);
              }

              *type = a2;
              v56 = v142 | 1;
            }

            else
            {
              *type = a2;
              v56 = v142 & 0xFE;
            }

            v142 = v56;
            v58 = v3->handle;
            v59 = v3;
            if (v58 == &nw_protocol_ref_counted_handle || v58 == &nw_protocol_ref_counted_additional_handle && (v59 = *v3[1].flow_id) != 0)
            {
              v61 = v59[1].callbacks;
              if (v61)
              {
                v59[1].callbacks = (&v61->add_input_handler + 1);
              }

              v60 = -1;
            }

            else
            {
              v60 = 0;
            }

            v139 = v3;
            v140 = v60;
            v62 = a2->callbacks;
            if (v62)
            {
              disconnected = v62->disconnected;
              if (disconnected)
              {
                disconnected(a2, v3);
                v60 = v140;
                goto LABEL_125;
              }
            }

            v105 = __nwlog_obj();
            identifier = a2->identifier;
            *buf = 136446722;
            v144 = "__nw_protocol_disconnected";
            if (!identifier)
            {
              identifier = "invalid";
            }

            v145 = 2082;
            v146 = identifier;
            v147 = 2048;
            v148 = a2;
            v79 = _os_log_send_and_compose_impl();

            v138 = OS_LOG_TYPE_ERROR;
            v137 = 0;
            if (!__nwlog_fault(v79, &v138, &v137))
            {
LABEL_314:
              if (v79)
              {
                free(v79);
              }

LABEL_125:
              if ((v60 & 1) == 0)
              {
LABEL_159:
                if (v142)
                {
                  nw::release_if_needed<nw_protocol *>(type);
                }

                goto LABEL_161;
              }

LABEL_158:
              nw::release_if_needed<nw_protocol *>(&v139);
              goto LABEL_159;
            }

            if (v138 == OS_LOG_TYPE_FAULT)
            {
              v80 = __nwlog_obj();
              v107 = v138;
              if (os_log_type_enabled(v80, v138))
              {
                v108 = a2->identifier;
                if (!v108)
                {
                  v108 = "invalid";
                }

                *buf = 136446722;
                v144 = "__nw_protocol_disconnected";
                v145 = 2082;
                v146 = v108;
                v147 = 2048;
                v148 = a2;
                _os_log_impl(&dword_181A37000, v80, v107, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 0x20u);
              }

LABEL_313:

              goto LABEL_314;
            }

            if (v137 != 1)
            {
              v80 = __nwlog_obj();
              v125 = v138;
              if (os_log_type_enabled(v80, v138))
              {
                v126 = a2->identifier;
                if (!v126)
                {
                  v126 = "invalid";
                }

                *buf = 136446722;
                v144 = "__nw_protocol_disconnected";
                v145 = 2082;
                v146 = v126;
                v147 = 2048;
                v148 = a2;
                _os_log_impl(&dword_181A37000, v80, v125, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_313;
            }

            v95 = __nw_create_backtrace_string();
            v80 = __nwlog_obj();
            v118 = v138;
            v119 = os_log_type_enabled(v80, v138);
            if (!v95)
            {
              if (v119)
              {
                v135 = a2->identifier;
                if (!v135)
                {
                  v135 = "invalid";
                }

                *buf = 136446722;
                v144 = "__nw_protocol_disconnected";
                v145 = 2082;
                v146 = v135;
                v147 = 2048;
                v148 = a2;
                _os_log_impl(&dword_181A37000, v80, v118, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_313;
            }

            if (v119)
            {
              v120 = a2->identifier;
              if (!v120)
              {
                v120 = "invalid";
              }

              *buf = 136446978;
              v144 = "__nw_protocol_disconnected";
              v145 = 2082;
              v146 = v120;
              v147 = 2048;
              v148 = a2;
              v149 = 2082;
              v150 = v95;
              _os_log_impl(&dword_181A37000, v80, v118, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

LABEL_262:

            free(v95);
            goto LABEL_314;
          }

          v116 = __nwlog_obj();
          *buf = 136446210;
          v144 = "__nw_protocol_disconnected";
          v84 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v139) = 0;
          if (!__nwlog_fault(v84, type, &v139))
          {
            goto LABEL_322;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v85 = __nwlog_obj();
            v117 = type[0];
            if (os_log_type_enabled(v85, type[0]))
            {
              *buf = 136446210;
              v144 = "__nw_protocol_disconnected";
              _os_log_impl(&dword_181A37000, v85, v117, "%{public}s called with null protocol", buf, 0xCu);
            }

            goto LABEL_321;
          }

          if (v139 != 1)
          {
            v85 = __nwlog_obj();
            v131 = type[0];
            if (os_log_type_enabled(v85, type[0]))
            {
              *buf = 136446210;
              v144 = "__nw_protocol_disconnected";
              _os_log_impl(&dword_181A37000, v85, v131, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_321;
          }

          v102 = __nw_create_backtrace_string();
          v85 = __nwlog_obj();
          v123 = type[0];
          v124 = os_log_type_enabled(v85, type[0]);
          if (!v102)
          {
            if (v124)
            {
              *buf = 136446210;
              v144 = "__nw_protocol_disconnected";
              _os_log_impl(&dword_181A37000, v85, v123, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_321;
          }

          if (v124)
          {
            *buf = 136446466;
            v144 = "__nw_protocol_disconnected";
            v145 = 2082;
            v146 = v102;
            _os_log_impl(&dword_181A37000, v85, v123, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_280:

          free(v102);
          if (!v84)
          {
            goto LABEL_161;
          }

          goto LABEL_323;
        }

LABEL_101:
        free(v32);
        goto LABEL_102;
      }

LABEL_140:
      if (!a2)
      {
        v93 = __nwlog_obj();
        *buf = 136446210;
        v144 = "__nw_protocol_disconnected";
        v84 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v139) = 0;
        if (!__nwlog_fault(v84, type, &v139))
        {
          goto LABEL_322;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v85 = __nwlog_obj();
          v94 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            v144 = "__nw_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v85, v94, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_321;
        }

        if (v139 != 1)
        {
          v85 = __nwlog_obj();
          v121 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            v144 = "__nw_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v85, v121, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_321;
        }

        v102 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v110 = type[0];
        v111 = os_log_type_enabled(v85, type[0]);
        if (!v102)
        {
          if (v111)
          {
            *buf = 136446210;
            v144 = "__nw_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v85, v110, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_321;
        }

        if (v111)
        {
          *buf = 136446466;
          v144 = "__nw_protocol_disconnected";
          v145 = 2082;
          v146 = v102;
          _os_log_impl(&dword_181A37000, v85, v110, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_280;
      }

      v65 = a2->handle;
      v66 = a2;
      if (v65 != &nw_protocol_ref_counted_handle)
      {
        if (v65 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v66) = 0;
          goto LABEL_148;
        }

        v66 = *a2[1].flow_id;
        if (!v66)
        {
LABEL_148:
          *type = a2;
          v142 = v66;
          v68 = v3->handle;
          v69 = v3;
          if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v69 = *v3[1].flow_id) != 0)
          {
            v70 = v69[1].callbacks;
            if (v70)
            {
              v69[1].callbacks = (&v70->add_input_handler + 1);
            }

            v60 = -1;
          }

          else
          {
            v60 = 0;
          }

          v139 = v3;
          v140 = v60;
          v71 = a2->callbacks;
          if (v71)
          {
            v72 = v71->disconnected;
            if (v72)
            {
              v72(a2, v3);
              if ((v140 & 1) == 0)
              {
                goto LABEL_159;
              }

              goto LABEL_158;
            }
          }

          v77 = __nwlog_obj();
          v78 = a2->identifier;
          *buf = 136446722;
          v144 = "__nw_protocol_disconnected";
          if (!v78)
          {
            v78 = "invalid";
          }

          v145 = 2082;
          v146 = v78;
          v147 = 2048;
          v148 = a2;
          v79 = _os_log_send_and_compose_impl();

          v138 = OS_LOG_TYPE_ERROR;
          v137 = 0;
          if (!__nwlog_fault(v79, &v138, &v137))
          {
            goto LABEL_314;
          }

          if (v138 == OS_LOG_TYPE_FAULT)
          {
            v80 = __nwlog_obj();
            v81 = v138;
            if (os_log_type_enabled(v80, v138))
            {
              v82 = a2->identifier;
              if (!v82)
              {
                v82 = "invalid";
              }

              *buf = 136446722;
              v144 = "__nw_protocol_disconnected";
              v145 = 2082;
              v146 = v82;
              v147 = 2048;
              v148 = a2;
              _os_log_impl(&dword_181A37000, v80, v81, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 0x20u);
            }

            goto LABEL_313;
          }

          if (v137 != 1)
          {
            v80 = __nwlog_obj();
            v112 = v138;
            if (os_log_type_enabled(v80, v138))
            {
              v113 = a2->identifier;
              if (!v113)
              {
                v113 = "invalid";
              }

              *buf = 136446722;
              v144 = "__nw_protocol_disconnected";
              v145 = 2082;
              v146 = v113;
              v147 = 2048;
              v148 = a2;
              _os_log_impl(&dword_181A37000, v80, v112, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_313;
          }

          v95 = __nw_create_backtrace_string();
          v80 = __nwlog_obj();
          v96 = v138;
          v97 = os_log_type_enabled(v80, v138);
          if (!v95)
          {
            if (v97)
            {
              v122 = a2->identifier;
              if (!v122)
              {
                v122 = "invalid";
              }

              *buf = 136446722;
              v144 = "__nw_protocol_disconnected";
              v145 = 2082;
              v146 = v122;
              v147 = 2048;
              v148 = a2;
              _os_log_impl(&dword_181A37000, v80, v96, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace", buf, 0x20u);
            }

            goto LABEL_313;
          }

          if (v97)
          {
            v98 = a2->identifier;
            if (!v98)
            {
              v98 = "invalid";
            }

            *buf = 136446978;
            v144 = "__nw_protocol_disconnected";
            v145 = 2082;
            v146 = v98;
            v147 = 2048;
            v148 = a2;
            v149 = 2082;
            v150 = v95;
            _os_log_impl(&dword_181A37000, v80, v96, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          goto LABEL_262;
        }
      }

      v67 = v66[1].callbacks;
      if (v67)
      {
        v66[1].callbacks = (&v67->add_input_handler + 1);
      }

      LOBYTE(v66) = -1;
      goto LABEL_148;
    }

    v22 = *(v10[10] + 128);
    if (v22)
    {
      if (v22(v9, -1, 3))
      {
        goto LABEL_140;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      *buf = 136446210;
      v144 = "nw_protocol_implementation_disconnect";
      v24 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v139) = 0;
      if (!__nwlog_fault(v24, type, &v139))
      {
LABEL_138:
        if (!v24)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW", buf, 0xCu);
        }

LABEL_137:

        goto LABEL_138;
      }

      if (v139 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v47 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v25, v47, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_137;
      }

      v40 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v43 = type[0];
      v44 = os_log_type_enabled(v25, type[0]);
      if (!v40)
      {
        if (v44)
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v25, v43, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, no backtrace", buf, 0xCu);
        }

        goto LABEL_137;
      }

      if (v44)
      {
        *buf = 136446466;
        v144 = "nw_protocol_implementation_disconnect";
        v145 = 2082;
        v146 = v40;
        _os_log_impl(&dword_181A37000, v25, v43, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      *buf = 136446210;
      v144 = "nw_protocol_implementation_disconnect";
      v24 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v139) = 0;
      if (!__nwlog_fault(v24, type, &v139))
      {
        goto LABEL_138;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v36 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null instance->parent_definition->stop", buf, 0xCu);
        }

        goto LABEL_137;
      }

      if (v139 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v46 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v25, v46, "%{public}s called with null instance->parent_definition->stop, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_137;
      }

      v40 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v41 = type[0];
      v42 = os_log_type_enabled(v25, type[0]);
      if (!v40)
      {
        if (v42)
        {
          *buf = 136446210;
          v144 = "nw_protocol_implementation_disconnect";
          _os_log_impl(&dword_181A37000, v25, v41, "%{public}s called with null instance->parent_definition->stop, no backtrace", buf, 0xCu);
        }

        goto LABEL_137;
      }

      if (v42)
      {
        *buf = 136446466;
        v144 = "nw_protocol_implementation_disconnect";
        v145 = 2082;
        v146 = v40;
        _os_log_impl(&dword_181A37000, v25, v41, "%{public}s called with null instance->parent_definition->stop, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v40);
    if (!v24)
    {
      goto LABEL_140;
    }

LABEL_139:
    free(v24);
    goto LABEL_140;
  }

  v73 = __nwlog_obj();
  *buf = 136446210;
  v144 = "nw_protocol_implementation_disconnect";
  v74 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v139) = 0;
  if (__nwlog_fault(v74, type, &v139))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *buf = 136446210;
        v144 = "nw_protocol_implementation_disconnect";
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v139 == 1)
    {
      v90 = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v91 = type[0];
      v92 = os_log_type_enabled(v75, type[0]);
      if (v90)
      {
        if (v92)
        {
          *buf = 136446466;
          v144 = "nw_protocol_implementation_disconnect";
          v145 = 2082;
          v146 = v90;
          _os_log_impl(&dword_181A37000, v75, v91, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v90);
        goto LABEL_269;
      }

      if (v92)
      {
        *buf = 136446210;
        v144 = "nw_protocol_implementation_disconnect";
        _os_log_impl(&dword_181A37000, v75, v91, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v75 = __nwlog_obj();
      v109 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *buf = 136446210;
        v144 = "nw_protocol_implementation_disconnect";
        _os_log_impl(&dword_181A37000, v75, v109, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_269:
  if (v74)
  {
    free(v74);
  }
}

uint64_t nw_protocol_http3_stream_register_notification(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      if (a3 == 5)
      {
        if ((*(v3 + 732) & 0x2000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v4 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v5 = *(*(v3 + 344) + 1304);
            v6 = *(v3 + 240);
            *buf = 136447234;
            v19 = "nw_protocol_http3_stream_register_notification";
            v20 = 2082;
            v21 = (v3 + 632);
            v22 = 2080;
            v23 = " ";
            v24 = 1024;
            v25 = v5;
            v26 = 2048;
            v27 = v6;
            _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> registered metadata_changed notification", buf, 0x30u);
          }
        }

        *(v3 + 734) |= 8u;
        return 1;
      }

      else
      {

        return nw_protocol_common_register_notification(a1, a2, a3);
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http3_stream_register_notification";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v8, &type, &v16))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http3_stream_register_notification";
        v11 = "%{public}s called with null http3_stream";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v16 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http3_stream_register_notification";
        v11 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
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
        v19 = "nw_protocol_http3_stream_register_notification";
        v11 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http3_stream_register_notification";
      v20 = 2082;
      v21 = backtrace_string;
      v14 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http3_stream_register_notification";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v8, &type, &v16))
  {
    goto LABEL_39;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http3_stream_register_notification";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http3_stream_register_notification";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http3_stream_register_notification";
      v20 = 2082;
      v21 = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_28:
      _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
    }

LABEL_29:
    free(backtrace_string);
    goto LABEL_39;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v19 = "nw_protocol_http3_stream_register_notification";
    v11 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_39:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_http_connection_metadata_get_secondary_certificate_count(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v3 = nw_protocol_copy_http_connection_definition_onceToken;
  v4 = v1;
  if (v3 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_connection_definition_definition);

  if ((v5 & 1) == 0)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_secondary_certificate_count";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_secondary_certificate_count";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v20 == 1)
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
            *&buf[4] = "nw_http_connection_metadata_get_secondary_certificate_count";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v13)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_secondary_certificate_count";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_secondary_certificate_count";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_26;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __nw_http_connection_metadata_get_secondary_certificate_count_block_invoke;
  v18 = &unk_1E6A3A858;
  v19 = buf;
  if (_nw_protocol_metadata_get_handle(v4))
  {
    (v17)(v16);
  }

  v6 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_27:

  return v6;
}

void sub_181D9D62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_connection_metadata_get_secondary_certificate_count_block_invoke(uint64_t a1, uint64_t a2)
{
  count = *(a2 + 56);
  if (count)
  {
    count = _nw_array_get_count(count);
  }

  *(*(*(a1 + 32) + 8) + 24) = count;
  return 1;
}

uint64_t sub_181D9D680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_181C1F2E4(a1, a2);
  }

  return a1;
}

uint64_t __nw_http_connection_metadata_get_message_counts_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *v2 = *(a2 + 152);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *v3 = *(a2 + 156);
  }

  return 1;
}

uint64_t ___ZL47nw_protocol_implementation_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(nw_hash_node_get_extra(a2) + 52);
  if ((v3 & 2) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return (v3 >> 1) & 1;
}

void nw_protocol_masque_reset_demux_protocol(nw_protocol *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
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
        v44 = "nw_protocol_masque_reset_demux_protocol";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v41 = 0;
        if (!__nwlog_fault(v7, &type, &v41))
        {
          goto LABEL_49;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_49;
          }

          *buf = 136446210;
          v44 = "nw_protocol_masque_reset_demux_protocol";
          v10 = "%{public}s called with null masque";
        }

        else
        {
          if (v41 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = type;
            v20 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                v44 = "nw_protocol_masque_reset_demux_protocol";
                v45 = 2082;
                v46 = backtrace_string;
                _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_49;
            }

            if (!v20)
            {
LABEL_49:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_53;
            }

            *buf = 136446210;
            v44 = "nw_protocol_masque_reset_demux_protocol";
            v10 = "%{public}s called with null masque, no backtrace";
            v26 = v18;
            v27 = v19;
LABEL_48:
            _os_log_impl(&dword_181A37000, v26, v27, v10, buf, 0xCu);
            goto LABEL_49;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_49;
          }

          *buf = 136446210;
          v44 = "nw_protocol_masque_reset_demux_protocol";
          v10 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v26 = v8;
        v27 = v9;
        goto LABEL_48;
      }

      v6 = *a1[1].flow_id;
    }

    output_handler = a1->output_handler;
    if (!output_handler)
    {
      goto LABEL_53;
    }

    v12 = 0;
    while (1)
    {
      identifier = output_handler->identifier;
      if (nw_protocol_demux_identifier::onceToken != -1)
      {
        v16 = output_handler->identifier;
        dispatch_once(&nw_protocol_demux_identifier::onceToken, &__block_literal_global_26036);
        identifier = v16;
      }

      if (nw_protocols_are_equal(identifier, &nw_protocol_demux_identifier::identifier))
      {
        break;
      }

      name = output_handler->identifier->name;
      if (!strcmp(name, "quic"))
      {
        if (v12)
        {
          goto LABEL_53;
        }

        v12 = 1;
        output_handler = output_handler->output_handler;
        if (!output_handler)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v13 = strcmp(name, "quic-connection") == 0;
        if (v13 & v12)
        {
          goto LABEL_53;
        }

        v12 |= v13;
        output_handler = output_handler->output_handler;
        if (!output_handler)
        {
          goto LABEL_53;
        }
      }
    }

    if (v12)
    {
      *v6[8].flow_id = output_handler;
      if ((BYTE1(v6[9].callbacks) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v38 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v44 = "nw_protocol_masque_reset_demux_protocol";
          v45 = 2082;
          v46 = &v6[9].callbacks + 3;
          v47 = 2080;
          v48 = " ";
          v49 = 2048;
          v50 = output_handler;
          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound demux protocol %p", buf, 0x2Au);
        }
      }

      v21 = nw_parameters_copy_channel_demux_options(v6[6].identifier->name);
      if (v21)
      {
        v22 = v21;
        if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
        }

        if (nw_protocol_demux_copy_definition::definition)
        {
          v23 = os_retain(nw_protocol_demux_copy_definition::definition);
          v24 = nw_protocol_options_matches_definition(v22, v23);
          v25 = v24;
          if (v23)
          {
            os_release(v23);
            if ((v25 & 1) == 0)
            {
LABEL_44:
              os_release(v22);
              goto LABEL_53;
            }
          }

          else if (!v24)
          {
            goto LABEL_44;
          }
        }

        else if ((nw_protocol_options_matches_definition(v22, 0) & 1) == 0)
        {
          goto LABEL_44;
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 0x40000000;
        v40[2] = ___ZL39nw_protocol_masque_reset_demux_protocolP11nw_protocol_block_invoke;
        v40[3] = &__block_descriptor_tmp_69_27624;
        v40[4] = v6 + 96;
        v40[5] = v22;
        nw_demux_options_enumerate_patterns(v22, v40);
        goto LABEL_44;
      }
    }

    else if ((BYTE1(v6[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v39 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v44 = "nw_protocol_masque_reset_demux_protocol";
        v45 = 2082;
        v46 = &v6[9].callbacks + 3;
        v47 = 2080;
        v48 = " ";
        v49 = 2048;
        v50 = output_handler;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound demux protocol %p, but no QUIC found. Ignoring.", buf, 0x2Au);
      }
    }

LABEL_53:
    if ((v4 & 1) == 0)
    {
      v28 = v1->handle;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v29 = v1[1].callbacks;
        if (v29)
        {
          v30 = (v29 - 1);
          v1[1].callbacks = v30;
          if (!v30)
          {
            v31 = *v1[1].flow_id;
            if (v31)
            {
              *v1[1].flow_id = 0;
              v31[2](v31);
              _Block_release(v31);
            }

            if (v1[1].flow_id[8])
            {
              v32 = *v1[1].flow_id;
              if (v32)
              {
                _Block_release(v32);
              }
            }

            goto LABEL_64;
          }
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v44 = "nw_protocol_masque_reset_demux_protocol";
  v1 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v1, &type, &v41))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v44 = "nw_protocol_masque_reset_demux_protocol";
      v35 = "%{public}s called with null protocol";
    }

    else if (v41 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v37 = os_log_type_enabled(v33, type);
      if (v36)
      {
        if (v37)
        {
          *buf = 136446466;
          v44 = "nw_protocol_masque_reset_demux_protocol";
          v45 = 2082;
          v46 = v36;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        if (v1)
        {
          goto LABEL_64;
        }

        return;
      }

      if (!v37)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v44 = "nw_protocol_masque_reset_demux_protocol";
      v35 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v44 = "nw_protocol_masque_reset_demux_protocol";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
  }

LABEL_87:
  if (v1)
  {
LABEL_64:
    free(v1);
  }
}

uint64_t __nw_http_transaction_metadata_set_event_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a2 + 136);
  *(a2 + 136) = v3;

  return 1;
}

double nw_channel_get_flow_handler(nw_frame *a1, unsigned __int8 *a2)
{
  if (nw_frame_get_metadata(a1))
  {
    os_packet_get_flow_uuid();
    result = 0.0;
    *a2 = 0uLL;
  }

  return result;
}

uint64_t nw_frame_get_flow_id(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      result = 0;
      if ((*(a1 + 204) & 0x100) != 0)
      {
        if (g_channel_get_flow_handler)
        {
          g_channel_get_flow_handler(a1);
          return 1;
        }
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_frame_get_flow_id";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_frame_get_flow_id";
        v7 = "%{public}s called with null out_flow_id";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_frame_get_flow_id";
        v7 = "%{public}s called with null out_flow_id, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_frame_get_flow_id";
        v7 = "%{public}s called with null out_flow_id, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_frame_get_flow_id";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null out_flow_id, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_frame_get_flow_id";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_34;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_frame_get_flow_id";
        v7 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_frame_get_flow_id";
        v7 = "%{public}s called with null frame, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_frame_get_flow_id";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_34;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v15 = "nw_frame_get_flow_id";
    v7 = "%{public}s called with null frame";
LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_34:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

BOOL ___ZL47nw_protocol_implementation_lookup_path_by_frameP31NWConcrete_nw_protocol_instancePU22objcproto11OS_nw_frame8NSObjectPm_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v5 = uuid_compare((extra + 64), *(*(*(a1 + 32) + 8) + 24));
  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return v5 != 0;
}

BOOL nw_protocol_masque_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_masque_waiting_for_output";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v25, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_protocol_masque_waiting_for_output";
          v28 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
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
            v34 = "nw_protocol_masque_waiting_for_output";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "nw_protocol_masque_waiting_for_output";
          v28 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_protocol_masque_waiting_for_output";
          v28 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

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
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
LABEL_18:
    result = *&v7[9].flow_id[4] == 1;
    if (v5)
    {
      return result;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v34 = "nw_protocol_masque_waiting_for_output";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v8, &type, &v31))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_protocol_masque_waiting_for_output";
    v11 = "%{public}s called with null masque";
LABEL_27:
    v17 = v9;
    v18 = v10;
LABEL_28:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_29;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_protocol_masque_waiting_for_output";
    v11 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_27;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v34 = "nw_protocol_masque_waiting_for_output";
      v35 = 2082;
      v36 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

  else if (v16)
  {
    *buf = 136446210;
    v34 = "nw_protocol_masque_waiting_for_output";
    v11 = "%{public}s called with null masque, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_28;
  }

LABEL_29:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_32:
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = result;
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            (v23)[2](v23, a2);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
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

  return result;
}

uint64_t nw_flow_replay_add_candidate_output_handler(void *a1, uint64_t a2, void *a3)
{
  v172 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v98 = __nwlog_obj();
    *buf = 136446210;
    v157 = "nw_endpoint_handler_get_mode";
    v99 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v99, &type, &v154))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v100 = __nwlog_obj();
        v101 = type;
        if (os_log_type_enabled(v100, type))
        {
          *buf = 136446210;
          v157 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v154 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v100 = __nwlog_obj();
        v107 = type;
        v108 = os_log_type_enabled(v100, type);
        if (backtrace_string)
        {
          if (v108)
          {
            *buf = 136446466;
            v157 = "nw_endpoint_handler_get_mode";
            v158 = 2082;
            v159 = backtrace_string;
            _os_log_impl(&dword_181A37000, v100, v107, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_191;
        }

        if (v108)
        {
          *buf = 136446210;
          v157 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v100, v107, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v100 = __nwlog_obj();
        v115 = type;
        if (os_log_type_enabled(v100, type))
        {
          *buf = 136446210;
          v157 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v100, v115, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_191:
    if (v99)
    {
      free(v99);
    }

    mode = 0;
LABEL_194:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v128 = gLogObj;
    if (mode > 5)
    {
      v129 = "unknown-mode";
    }

    else
    {
      v129 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v157 = "nw_flow_replay_add_candidate_output_handler";
    v158 = 2082;
    v159 = v129;
    v160 = 2082;
    v161 = "flow";
    v103 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v103, &type, &v154))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v104 = gLogObj;
        v130 = type;
        if (os_log_type_enabled(v104, type))
        {
          if (mode > 5)
          {
            v131 = "unknown-mode";
          }

          else
          {
            v131 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          v158 = 2082;
          v159 = v131;
          v160 = 2082;
          v161 = "flow";
          _os_log_impl(&dword_181A37000, v104, v130, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v154 == 1)
      {
        v132 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v104 = gLogObj;
        v133 = type;
        v134 = os_log_type_enabled(v104, type);
        if (v132)
        {
          if (v134)
          {
            if (mode > 5)
            {
              v135 = "unknown-mode";
            }

            else
            {
              v135 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v157 = "nw_flow_replay_add_candidate_output_handler";
            v158 = 2082;
            v159 = v135;
            v160 = 2082;
            v161 = "flow";
            v162 = 2082;
            v163 = v132;
            _os_log_impl(&dword_181A37000, v104, v133, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v132);
          if (!v103)
          {
            goto LABEL_228;
          }

          goto LABEL_227;
        }

        if (v134)
        {
          if (mode > 5)
          {
            v138 = "unknown-mode";
          }

          else
          {
            v138 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          v158 = 2082;
          v159 = v138;
          v160 = 2082;
          v161 = "flow";
          _os_log_impl(&dword_181A37000, v104, v133, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v104 = gLogObj;
        v136 = type;
        if (os_log_type_enabled(v104, type))
        {
          if (mode > 5)
          {
            v137 = "unknown-mode";
          }

          else
          {
            v137 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          v158 = 2082;
          v159 = v137;
          v160 = 2082;
          v161 = "flow";
          _os_log_impl(&dword_181A37000, v104, v136, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_225;
    }

    goto LABEL_226;
  }

  mode = v5->mode;

  if (mode != 2)
  {
    goto LABEL_194;
  }

  if (!a2)
  {
    v102 = __nwlog_obj();
    *buf = 136446210;
    v157 = "nw_flow_replay_add_candidate_output_handler";
    v103 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v103, &type, &v154))
    {
      goto LABEL_226;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v104 = __nwlog_obj();
      v105 = type;
      if (os_log_type_enabled(v104, type))
      {
        *buf = 136446210;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null flow_protocol", buf, 0xCu);
      }
    }

    else if (v154 == 1)
    {
      v116 = __nw_create_backtrace_string();
      v104 = __nwlog_obj();
      v117 = type;
      v118 = os_log_type_enabled(v104, type);
      if (v116)
      {
        if (v118)
        {
          *buf = 136446466;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          v158 = 2082;
          v159 = v116;
          _os_log_impl(&dword_181A37000, v104, v117, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v116);
        if (!v103)
        {
          goto LABEL_228;
        }

        goto LABEL_227;
      }

      if (v118)
      {
        *buf = 136446210;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        _os_log_impl(&dword_181A37000, v104, v117, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v104 = __nwlog_obj();
      v125 = type;
      if (os_log_type_enabled(v104, type))
      {
        *buf = 136446210;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        _os_log_impl(&dword_181A37000, v104, v125, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_225;
  }

  if (!a3)
  {
    v109 = __nwlog_obj();
    *buf = 136446210;
    v157 = "nw_flow_replay_add_candidate_output_handler";
    v103 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v103, &type, &v154))
    {
      goto LABEL_226;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v104 = __nwlog_obj();
      v110 = type;
      if (os_log_type_enabled(v104, type))
      {
        *buf = 136446210;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        _os_log_impl(&dword_181A37000, v104, v110, "%{public}s called with null candidate_output_handler", buf, 0xCu);
      }

LABEL_225:

      goto LABEL_226;
    }

    if (v154 != 1)
    {
      v104 = __nwlog_obj();
      v126 = type;
      if (os_log_type_enabled(v104, type))
      {
        *buf = 136446210;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        _os_log_impl(&dword_181A37000, v104, v126, "%{public}s called with null candidate_output_handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_225;
    }

    v119 = __nw_create_backtrace_string();
    v104 = __nwlog_obj();
    v120 = type;
    v121 = os_log_type_enabled(v104, type);
    if (!v119)
    {
      if (v121)
      {
        *buf = 136446210;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        _os_log_impl(&dword_181A37000, v104, v120, "%{public}s called with null candidate_output_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_225;
    }

    if (v121)
    {
      *buf = 136446466;
      v157 = "nw_flow_replay_add_candidate_output_handler";
      v158 = 2082;
      v159 = v119;
      _os_log_impl(&dword_181A37000, v104, v120, "%{public}s called with null candidate_output_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v119);
LABEL_226:
    if (!v103)
    {
LABEL_228:
      v12 = 0;
      goto LABEL_229;
    }

LABEL_227:
    free(v103);
    goto LABEL_228;
  }

  v8 = nw_endpoint_handler_copy_flow(v6);
  v9 = v8;
  if (!v8)
  {
    v111 = __nwlog_obj();
    *buf = 136446210;
    v157 = "nw_flow_replay_add_candidate_output_handler";
    v112 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v112, &type, &v154))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v113 = __nwlog_obj();
        v114 = type;
        if (os_log_type_enabled(v113, type))
        {
          *buf = 136446210;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v154 == 1)
      {
        v122 = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v123 = type;
        v124 = os_log_type_enabled(v113, type);
        if (v122)
        {
          if (v124)
          {
            *buf = 136446466;
            v157 = "nw_flow_replay_add_candidate_output_handler";
            v158 = 2082;
            v159 = v122;
            _os_log_impl(&dword_181A37000, v113, v123, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v122);
          goto LABEL_244;
        }

        if (v124)
        {
          *buf = 136446210;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          _os_log_impl(&dword_181A37000, v113, v123, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v113 = __nwlog_obj();
        v127 = type;
        if (os_log_type_enabled(v113, type))
        {
          *buf = 136446210;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          _os_log_impl(&dword_181A37000, v113, v127, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_244:
    if (v112)
    {
      free(v112);
    }

    v12 = 0;
    v9 = 0;
    goto LABEL_134;
  }

  if (!nw_protocol_get_output_handler(*(v8 + 94)) && !*(a2 + 144))
  {
    v32 = *(v9 + 94);
    if (v32)
    {
      v33 = (a2 + 96);
      if (a2 + 96 != v32)
      {
        v34 = *(a2 + 120);
        if (v34 && *v34)
        {
          if (nw_protocol_add_input_handler((a2 + 96), v32))
          {
            goto LABEL_8;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v55 = gLogObj;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v157 = "nw_protocol_utilities_add_input_handler";
            v158 = 2048;
            v159 = (a2 + 96);
            _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
          }
        }

LABEL_101:
        v153 = v9;
        v72 = v6;
        v73 = (*(v72 + 284) & 0x40) == 0;

        if (!v73)
        {
          goto LABEL_133;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v74 = gconnectionLogObj;
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
LABEL_132:

          goto LABEL_133;
        }

        v75 = v72;

        v76 = v75;
        v77 = (*(v72 + 284) & 1) == 0;

        if (v77)
        {
          v78 = "";
        }

        else
        {
          v78 = "dry-run ";
        }

        v79 = nw_endpoint_handler_copy_endpoint(v76);
        v80 = v79;
        if (v79)
        {
          logging_description = _nw_endpoint_get_logging_description(v79);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v82 = v76;
        v83 = v82;
        v84 = v82[30];
        if (v84 > 5)
        {
          v85 = "unknown-state";
        }

        else
        {
          v85 = off_1E6A31048[v84];
        }

        v86 = v83;
        v87 = v86;
        v88 = v6->mode;
        if (v88 > 2)
        {
          if (v88 == 3)
          {
            v89 = "proxy";
            goto LABEL_128;
          }

          if (v88 != 4)
          {
            if (v88 == 5)
            {
              v89 = "transform";
              goto LABEL_128;
            }

            goto LABEL_125;
          }

          v89 = "fallback";
        }

        else
        {
          if (!v88)
          {
            v89 = "path";
            goto LABEL_128;
          }

          if (v88 != 1)
          {
            if (v88 == 2)
            {
              v89 = nw_endpoint_flow_mode_string(v86[33]);
              goto LABEL_128;
            }

LABEL_125:
            v89 = "unknown-mode";
            goto LABEL_128;
          }

          v89 = "resolver";
        }

LABEL_128:

        v90 = v87;
        os_unfair_lock_lock(v90 + 28);
        v91 = v90[8];
        os_unfair_lock_unlock(v90 + 28);

        id_str = v75->id_str;
        v93 = v91;
        v94 = v93;
        v95 = *(v153 + 94);
        v96 = "invalid";
        if (v95)
        {
          v97 = *(v95 + 16);
          if (v97)
          {
            v96 = v97;
          }
        }

        *buf = 136448002;
        v157 = "nw_flow_replay_add_candidate_output_handler";
        v158 = 2082;
        v159 = id_str;
        v160 = 2082;
        v161 = v78;
        v162 = 2082;
        v163 = logging_description;
        v164 = 2082;
        v165 = v85;
        v166 = 2082;
        v167 = v89;
        v168 = 2114;
        v169 = v93;
        v170 = 2082;
        *v171 = v96;
        _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach protocol %{public}s to replay protocol", buf, 0x52u);

        goto LABEL_132;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      *buf = 136446466;
      v157 = "nw_protocol_utilities_add_input_handler";
      v158 = 2048;
      v159 = v33;
      v44 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v154 = 0;
      if (__nwlog_fault(v44, &type, &v154))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v45 = __nwlog_obj();
          v46 = type;
          if (os_log_type_enabled(v45, type))
          {
            *buf = 136446466;
            v157 = "nw_protocol_utilities_add_input_handler";
            v158 = 2048;
            v159 = v33;
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
          }
        }

        else if (v154 == 1)
        {
          v65 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v66 = type;
          v67 = os_log_type_enabled(v45, type);
          if (v65)
          {
            if (v67)
            {
              *buf = 136446722;
              v157 = "nw_protocol_utilities_add_input_handler";
              v158 = 2048;
              v159 = v33;
              v160 = 2082;
              v161 = v65;
              _os_log_impl(&dword_181A37000, v45, v66, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v65);
            goto LABEL_99;
          }

          if (v67)
          {
            *buf = 136446466;
            v157 = "nw_protocol_utilities_add_input_handler";
            v158 = 2048;
            v159 = v33;
            _os_log_impl(&dword_181A37000, v45, v66, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          v45 = __nwlog_obj();
          v71 = type;
          if (os_log_type_enabled(v45, type))
          {
            *buf = 136446466;
            v157 = "nw_protocol_utilities_add_input_handler";
            v158 = 2048;
            v159 = v33;
            _os_log_impl(&dword_181A37000, v45, v71, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

LABEL_99:
      if (v44)
      {
        free(v44);
      }

      goto LABEL_101;
    }

    v140 = __nwlog_obj();
    *buf = 136446210;
    v157 = "nw_protocol_utilities_add_input_handler";
    v141 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v141, &type, &v154))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v142 = __nwlog_obj();
        v143 = type;
        if (os_log_type_enabled(v142, type))
        {
          *buf = 136446210;
          v157 = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null input_protocol", buf, 0xCu);
        }
      }

      else if (v154 == 1)
      {
        v144 = __nw_create_backtrace_string();
        v142 = __nwlog_obj();
        v145 = type;
        v146 = os_log_type_enabled(v142, type);
        if (v144)
        {
          if (v146)
          {
            *buf = 136446466;
            v157 = "nw_protocol_utilities_add_input_handler";
            v158 = 2082;
            v159 = v144;
            _os_log_impl(&dword_181A37000, v142, v145, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v144);
          goto LABEL_258;
        }

        if (v146)
        {
          *buf = 136446210;
          v157 = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v142, v145, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v142 = __nwlog_obj();
        v147 = type;
        if (os_log_type_enabled(v142, type))
        {
          *buf = 136446210;
          v157 = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v142, v147, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_258:
    if (v141)
    {
      free(v141);
    }

    goto LABEL_101;
  }

LABEL_8:
  internal = *(a2 + 288);
  if (!internal)
  {
    internal = nw_hash_table_create_internal(5u, 8, nw_replay_hash_get_key, nw_replay_hash_key_hash, nw_replay_hash_matches_key, nw_replay_hash_release, 0);
    if (internal)
    {
      *(internal + 56) &= ~2u;
    }

    *(a2 + 288) = internal;
  }

  type = OS_LOG_TYPE_DEFAULT;
  v11 = nw_hash_table_add_object(internal, a3, &type);
  if ((type & 1) == 0)
  {
    v153 = v9;
    v13 = v6;
    v14 = (*(v13 + 284) & 0x40) == 0;

    if (!v14)
    {
LABEL_133:
      v12 = 0;
      v9 = v153;
      goto LABEL_134;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v15 = gconnectionLogObj;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_79:

      goto LABEL_133;
    }

    v16 = v13;

    v17 = v16;
    v18 = (*(v13 + 284) & 1) == 0;

    if (v18)
    {
      v19 = "";
    }

    else
    {
      v19 = "dry-run ";
    }

    v20 = nw_endpoint_handler_copy_endpoint(v17);
    v21 = v20;
    if (v20)
    {
      v22 = _nw_endpoint_get_logging_description(v20);
    }

    else
    {
      v22 = "<NULL>";
    }

    v152 = v21;

    v35 = v17;
    v36 = v35;
    v37 = v35[30];
    if (v37 > 5)
    {
      v38 = "unknown-state";
    }

    else
    {
      v38 = off_1E6A31048[v37];
    }

    v39 = v36;
    v40 = v39;
    v41 = v6->mode;
    if (v41 > 2)
    {
      switch(v41)
      {
        case 3:
          v42 = "proxy";
          goto LABEL_78;
        case 4:
          v42 = "fallback";
          goto LABEL_78;
        case 5:
          v42 = "transform";
          goto LABEL_78;
      }
    }

    else
    {
      switch(v41)
      {
        case 0:
          v42 = "path";
          goto LABEL_78;
        case 1:
          v42 = "resolver";
          goto LABEL_78;
        case 2:
          v42 = nw_endpoint_flow_mode_string(v39[33]);
LABEL_78:

          v56 = v16;
          v57 = v6;
          v58 = v15;
          v59 = v38;
          v60 = v22;
          v61 = v19;
          v62 = v40;
          os_unfair_lock_lock(v62 + 28);
          v63 = v62[8];
          os_unfair_lock_unlock(v62 + 28);

          v64 = v59;
          v15 = v58;
          v6 = v57;
          *buf = 136448258;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          v158 = 2082;
          v159 = v56->id_str;
          v160 = 2082;
          v161 = v61;
          v162 = 2082;
          v163 = v60;
          v164 = 2082;
          v165 = v64;
          v166 = 2082;
          v167 = v42;
          v168 = 2114;
          v169 = v63;
          v170 = 1042;
          *v171 = 16;
          *&v171[4] = 2098;
          *&v171[6] = a3;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Replay already has output handler registered for %{public,uuid_t}.16P", buf, 0x58u);

          goto LABEL_79;
      }
    }

    v42 = "unknown-mode";
    goto LABEL_78;
  }

  v151 = v11;
  *nw_hash_node_get_extra(v11) = 0;
  if ((nw_protocol_add_input_handler(a3, a2 + 96) & 1) == 0)
  {
    v153 = v9;
    v23 = v6;
    v24 = (*(v23 + 284) & 0x40) == 0;

    if (!v24)
    {
LABEL_92:
      nw_hash_table_remove_node(*(a2 + 288), v151);
      goto LABEL_133;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v25 = gconnectionLogObj;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_91:

      goto LABEL_92;
    }

    v26 = v23;

    v27 = v26;
    v28 = (*(v23 + 284) & 1) == 0;

    if (v28)
    {
      v29 = "";
    }

    else
    {
      v29 = "dry-run ";
    }

    v30 = nw_endpoint_handler_copy_endpoint(v27);
    v31 = v30;
    v150 = v29;
    if (v30)
    {
      v149 = _nw_endpoint_get_logging_description(v30);
    }

    else
    {
      v149 = "<NULL>";
    }

    v47 = v27;
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

    v148 = v50;

    v51 = v48;
    v52 = v51;
    v53 = v6->mode;
    if (v53 > 2)
    {
      switch(v53)
      {
        case 3:
          v54 = "proxy";
          goto LABEL_90;
        case 4:
          v54 = "fallback";
          goto LABEL_90;
        case 5:
          v54 = "transform";
          goto LABEL_90;
      }
    }

    else
    {
      switch(v53)
      {
        case 0:
          v54 = "path";
          goto LABEL_90;
        case 1:
          v54 = "resolver";
          goto LABEL_90;
        case 2:
          v54 = nw_endpoint_flow_mode_string(v51[33]);
LABEL_90:

          v68 = v26;
          v69 = v52;
          os_unfair_lock_lock(v69 + 28);
          v70 = v69[8];
          os_unfair_lock_unlock(v69 + 28);

          *buf = 136448258;
          v157 = "nw_flow_replay_add_candidate_output_handler";
          v158 = 2082;
          v159 = v68->id_str;
          v160 = 2082;
          v161 = v150;
          v162 = 2082;
          v163 = v149;
          v164 = 2082;
          v165 = v148;
          v166 = 2082;
          v167 = v54;
          v168 = 2114;
          v169 = v70;
          v170 = 2048;
          *v171 = a2 + 96;
          *&v171[8] = 2048;
          *&v171[10] = a3;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Unable to add input handler using replay protocol %p and protocol %p", buf, 0x5Cu);

          goto LABEL_91;
      }
    }

    v54 = "unknown-mode";
    goto LABEL_90;
  }

  nw_flow_replay_send_initial_data_to_candidates(v6, a2);
  v12 = 1;
LABEL_134:

LABEL_229:
  return v12;
}

uint64_t nw_protocol_common_copy_info(uint64_t a1, int a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_common_copy_info";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v22, &type, &v35))
    {
      goto LABEL_82;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_82;
        }

        *buf = 136446210;
        v38 = "nw_protocol_common_copy_info";
        v25 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_81;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v30 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (!v30)
        {
          goto LABEL_82;
        }

        *buf = 136446210;
        v38 = "nw_protocol_common_copy_info";
        v25 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_81;
      }

      if (v30)
      {
        *buf = 136446466;
        v38 = "nw_protocol_common_copy_info";
        v39 = 2082;
        v40 = backtrace_string;
        v31 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_58:
        _os_log_impl(&dword_181A37000, v23, v24, v31, buf, 0x16u);
      }

LABEL_59:
      free(backtrace_string);
      goto LABEL_82;
    }

    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v38 = "nw_protocol_common_copy_info";
    v25 = "%{public}s called with null protocol";
LABEL_81:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
LABEL_82:
    if (v22)
    {
      free(v22);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_common_copy_info";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v22, &type, &v35))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_82;
      }

      *buf = 136446210;
      v38 = "nw_protocol_common_copy_info";
      v25 = "%{public}s called with null type";
      goto LABEL_81;
    }

    if (v35 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_82;
      }

      *buf = 136446210;
      v38 = "nw_protocol_common_copy_info";
      v25 = "%{public}s called with null type, backtrace limit exceeded";
      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v32 = os_log_type_enabled(v23, type);
    if (backtrace_string)
    {
      if (v32)
      {
        *buf = 136446466;
        v38 = "nw_protocol_common_copy_info";
        v39 = 2082;
        v40 = backtrace_string;
        v31 = "%{public}s called with null type, dumping backtrace:%{public}s";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (!v32)
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v38 = "nw_protocol_common_copy_info";
    v25 = "%{public}s called with null type, no backtrace";
    goto LABEL_81;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 40);
  v4 = *(a1 + 32);
  if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v2 + 64)) != 0)
  {
    v7 = *(v4 + 88);
    if (v7)
    {
      v5 = 0;
      *(v4 + 88) = v7 + 1;
      v6 = *(v2 + 24);
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v5 = 0;
      v6 = *(v2 + 24);
      if (!v6)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v5 = 1;
    v6 = *(v2 + 24);
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  v8 = *(v6 + 224);
  if (v8)
  {
    result = v8(v2);
    if (v5)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_26:
  __nwlog_obj();
  v16 = *(v2 + 16);
  *buf = 136446722;
  v38 = "__nw_protocol_copy_info";
  if (!v16)
  {
    v16 = "invalid";
  }

  v39 = 2082;
  v40 = v16;
  v41 = 2048;
  v42 = v2;
  v17 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v17, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_73;
      }

      v20 = *(v2 + 16);
      if (!v20)
      {
        v20 = "invalid";
      }

      *buf = 136446722;
      v38 = "__nw_protocol_copy_info";
      v39 = 2082;
      v40 = v20;
      v41 = 2048;
      v42 = v2;
      v21 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback";
LABEL_72:
      _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x20u);
      goto LABEL_73;
    }

    if (v35 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_73;
      }

      v33 = *(v2 + 16);
      if (!v33)
      {
        v33 = "invalid";
      }

      *buf = 136446722;
      v38 = "__nw_protocol_copy_info";
      v39 = 2082;
      v40 = v33;
      v41 = 2048;
      v42 = v2;
      v21 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, backtrace limit exceeded";
      goto LABEL_72;
    }

    v26 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v27 = os_log_type_enabled(v18, type);
    if (!v26)
    {
      if (!v27)
      {
        goto LABEL_73;
      }

      v34 = *(v2 + 16);
      if (!v34)
      {
        v34 = "invalid";
      }

      *buf = 136446722;
      v38 = "__nw_protocol_copy_info";
      v39 = 2082;
      v40 = v34;
      v41 = 2048;
      v42 = v2;
      v21 = "%{public}s protocol %{public}s (%p) has invalid copy_info callback, no backtrace";
      goto LABEL_72;
    }

    if (v27)
    {
      if (*(v2 + 16))
      {
        v28 = *(v2 + 16);
      }

      else
      {
        v28 = "invalid";
      }

      *buf = 136446978;
      v38 = "__nw_protocol_copy_info";
      v39 = 2082;
      v40 = v28;
      v41 = 2048;
      v42 = v2;
      v43 = 2082;
      v44 = v26;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v26);
  }

LABEL_73:
  if (v17)
  {
    free(v17);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_15:
    v10 = *(v2 + 40);
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
    {
      v11 = *(v2 + 88);
      if (v11)
      {
        v12 = v11 - 1;
        *(v2 + 88) = v12;
        if (!v12)
        {
          v13 = result;
          v14 = *(v2 + 64);
          if (v14)
          {
            *(v2 + 64) = 0;
            v14[2](v14);
            _Block_release(v14);
          }

          if (*(v2 + 72))
          {
            v15 = *(v2 + 64);
            if (v15)
            {
              _Block_release(v15);
            }
          }

          free(v2);
          return v13;
        }
      }
    }
  }

  return result;
}

uint64_t nw_flow_replay_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      nw_protocol_set_input_handler(a1, a2);
      if (!a2->output_handler)
      {
        nw_protocol_set_output_handler(a2, a1);
      }

      return 1;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_flow_replay_add_input_handler";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_flow_replay_add_input_handler";
          v9 = "%{public}s called with null input_protocol";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_flow_replay_add_input_handler";
          v9 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v14 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v18 = "nw_flow_replay_add_input_handler";
          v9 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      v18 = "nw_flow_replay_add_input_handler";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
LABEL_24:

      free(backtrace_string);
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_flow_replay_add_input_handler";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_flow_replay_add_input_handler";
          v9 = "%{public}s called with null protocol";
LABEL_33:
          _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_flow_replay_add_input_handler";
          v9 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_flow_replay_add_input_handler";
          v9 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v12)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      v18 = "nw_flow_replay_add_input_handler";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_23;
    }
  }

LABEL_35:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

BOOL ___ZL33nw_protocol_create_data_from_poolP31NWConcrete_nw_protocol_instanceb_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = nw_frame_uses_external_data(v4);
  v6 = *(a1 + 40);
  if (v6 == v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v6 != v5;
}

void nw_protocol_masque_notify(nw_protocol *a1, uint64_t a2, int a3)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1;
    handle = a1->handle;
    v6 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v7 = 1;
      goto LABEL_11;
    }

    v6 = *a1[1].flow_id;
    if (v6)
    {
LABEL_6:
      callbacks = v6[1].callbacks;
      v7 = 0;
      if (callbacks)
      {
        v6[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v7 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v9 = a1;
    v104 = v7;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v112 = "nw_protocol_masque_notify";
        v10 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v107) = 0;
        if (!__nwlog_fault(v10, type, &v107))
        {
          goto LABEL_116;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_116;
          }

          *buf = 136446210;
          v112 = "nw_protocol_masque_notify";
          v13 = "%{public}s called with null masque";
          goto LABEL_114;
        }

        if (v107 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_116;
          }

          *buf = 136446210;
          v112 = "nw_protocol_masque_notify";
          v13 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_114;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type[0];
        v19 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v112 = "nw_protocol_masque_notify";
            v113 = 2082;
            v114 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v19)
        {
          *buf = 136446210;
          v112 = "nw_protocol_masque_notify";
          v13 = "%{public}s called with null masque, no backtrace";
          v58 = v17;
          v59 = v18;
          goto LABEL_115;
        }

LABEL_116:
        if (!v10)
        {
          goto LABEL_151;
        }

        goto LABEL_117;
      }

      v9 = *a1[1].flow_id;
    }

    if (!a2)
    {
      __nwlog_obj();
      *buf = 136446210;
      v112 = "nw_protocol_masque_notify";
      v10 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v107) = 0;
      if (!__nwlog_fault(v10, type, &v107))
      {
        goto LABEL_116;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type[0];
        if (!os_log_type_enabled(v11, type[0]))
        {
          goto LABEL_116;
        }

        *buf = 136446210;
        v112 = "nw_protocol_masque_notify";
        v13 = "%{public}s called with null other_protocol";
      }

      else if (v107 == 1)
      {
        v79 = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type[0];
        v80 = os_log_type_enabled(v11, type[0]);
        if (v79)
        {
          if (v80)
          {
            *buf = 136446466;
            v112 = "nw_protocol_masque_notify";
            v113 = 2082;
            v114 = v79;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v79);
          if (v10)
          {
LABEL_117:
            free(v10);
            goto LABEL_151;
          }

          goto LABEL_151;
        }

        if (!v80)
        {
          goto LABEL_116;
        }

        *buf = 136446210;
        v112 = "nw_protocol_masque_notify";
        v13 = "%{public}s called with null other_protocol, no backtrace";
      }

      else
      {
        v11 = __nwlog_obj();
        v12 = type[0];
        if (!os_log_type_enabled(v11, type[0]))
        {
          goto LABEL_116;
        }

        *buf = 136446210;
        v112 = "nw_protocol_masque_notify";
        v13 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      }

LABEL_114:
      v58 = v11;
      v59 = v12;
LABEL_115:
      _os_log_impl(&dword_181A37000, v58, v59, v13, buf, 0xCu);
      goto LABEL_116;
    }

    if ((BYTE1(v9[9].callbacks) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v14 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        if (a3 > 0x1E)
        {
          v15 = "unknown";
        }

        else
        {
          v15 = off_1E6A33500[a3];
        }

        *buf = 136446978;
        v112 = "nw_protocol_masque_notify";
        v113 = 2082;
        v114 = &v9[9].callbacks + 3;
        v115 = 2080;
        v116 = " ";
        v117 = 2082;
        v118 = v15;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreceived notification %{public}s", buf, 0x2Au);
      }
    }

    v20 = (&v9[9].identifier + 7);
    if (a3 <= 17)
    {
      switch(a3)
      {
        case 5:
          secondary_certificate_count = nw_http_connection_metadata_get_secondary_certificate_count(v9[8].callbacks);
          v61 = *&v9[9].flow_id[12];
          if (v61 == 1 && secondary_certificate_count)
          {
            if ((BYTE1(v9[9].callbacks) & 1) == 0 && gLogDatapath == 1)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v93 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                v112 = "nw_protocol_masque_notify";
                v113 = 2082;
                v114 = &v9[9].callbacks + 3;
                v115 = 2080;
                v116 = " ";
                _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMASQUE waiting for secondary certs, checking to reverse proxy", buf, 0x20u);
              }
            }

            if (nw_masque_setup_reverse_proxy(&v9[1].output_handler))
            {
              goto LABEL_151;
            }
          }

          else if (!v61 && secondary_certificate_count && *&v9[9].flow_id[4] == 2 && (BYTE1(v9[9].callbacks) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v66 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              v112 = &v9[9].callbacks + 3;
              v113 = 2080;
              v114 = " ";
              _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_INFO, "%{public}s%sHave secondary certificates, not utilizing without rejection from proxy", buf, 0x16u);
            }
          }

          default_input_handler = v4->default_input_handler;
          if (!default_input_handler)
          {
            goto LABEL_151;
          }

          v68 = default_input_handler->callbacks;
          if (!v68)
          {
            goto LABEL_151;
          }

          notify = v68->notify;
          if (!notify)
          {
            goto LABEL_151;
          }

LABEL_150:
          notify();
          goto LABEL_151;
        case 7:
          goto LABEL_151;
        case 13:
          nw_masque_report_error_to_proxy_agent(&v9[1].output_handler, 1302);
          output_handler = v4->output_handler;
          if (!output_handler)
          {
            goto LABEL_151;
          }

          v22 = output_handler->callbacks;
          if (!v22)
          {
            goto LABEL_151;
          }

          notify = v22->notify;
          if (!notify)
          {
            goto LABEL_151;
          }

          goto LABEL_150;
      }

      goto LABEL_124;
    }

    if (a3 != 24)
    {
      if (a3 == 21)
      {
        goto LABEL_151;
      }

      if (a3 != 18)
      {
LABEL_124:
        if ((a3 - 15) <= 1)
        {
          v62 = v4->output_handler;
          if (!v62)
          {
            goto LABEL_151;
          }

          goto LABEL_136;
        }

        goto LABEL_127;
      }
    }

    v24 = *v9[8].flow_id;
    if (!v24 || !v9[7].identifier || !v9[7].callbacks)
    {
LABEL_127:
      if (a3 == 19)
      {
        if ((BYTE1(v9[9].callbacks) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v63 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
          {
            v64 = *&v9[9].flow_id[4];
            *buf = 136446722;
            v112 = &v9[9].callbacks + 3;
            v113 = 2080;
            v114 = " ";
            v115 = 1024;
            LODWORD(v116) = v64;
            _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_INFO, "%{public}s%sConnection needs to retry, asking to rebuild while in state %d", buf, 0x1Cu);
          }
        }

        if ((*&v9[9].flow_id[4] - 1) <= 1)
        {
          *&v9[9].flow_id[4] = 0;
          *v20 |= 0x10000000u;
        }
      }

      v62 = v4->default_input_handler;
      if (v62)
      {
LABEL_136:
        v65 = v62->callbacks;
        if (!v65)
        {
          goto LABEL_151;
        }

        notify = v65->notify;
        if (!notify)
        {
          goto LABEL_151;
        }

        goto LABEL_150;
      }

LABEL_151:
      if ((v104 & 1) == 0)
      {
        v69 = v4->handle;
        if (v69 == &nw_protocol_ref_counted_handle || v69 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
        {
          v70 = v4[1].callbacks;
          if (v70)
          {
            v71 = (v70 - 1);
            v4[1].callbacks = v71;
            if (!v71)
            {
              v72 = *v4[1].flow_id;
              if (v72)
              {
                *v4[1].flow_id = 0;
                v72[2](v72);
                _Block_release(v72);
              }

              if (v4[1].flow_id[8])
              {
                v73 = *v4[1].flow_id;
                if (v73)
                {
                  _Block_release(v73);
                }
              }

              goto LABEL_162;
            }
          }
        }
      }

      return;
    }

    nw_protocol_masque_reset_demux_protocol(v4);
    if (v24 == *v9[8].flow_id)
    {
      goto LABEL_151;
    }

    output_handler_context = v9[7].output_handler_context;
    if (output_handler_context)
    {
      os_release(output_handler_context);
      v9[7].output_handler_context = 0;
    }

    *v20 &= ~0x20000u;
    identifier = v9[3].identifier;
    if (!identifier || (v27 = *&identifier->name[24]) == 0 || !*(v27 + 8))
    {
LABEL_80:
      v42 = v9[4].output_handler;
      if (!v42 || (v43 = v42->callbacks) == 0 || !v43->remove_input_handler)
      {
LABEL_111:
        nw_masque_setup_demux(&v9[1].output_handler, 1);
        nw_masque_setup_demux(&v9[1].output_handler, 0);
        goto LABEL_151;
      }

      nw::share(type, v9[4].output_handler);
      nw::share(&v107, &v9[4]);
      v44 = v42->callbacks;
      if (v44)
      {
        remove_input_handler = v44->remove_input_handler;
        if (remove_input_handler)
        {
          remove_input_handler(v42, v9 + 4, 1);
          if ((v108 & 1) == 0)
          {
LABEL_98:
            if (v110)
            {
              v52 = *type;
              if (*type)
              {
                v53 = *(*type + 40);
                if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v52 = *(*type + 64)) != 0)
                {
                  v54 = *(v52 + 88);
                  if (v54)
                  {
                    v55 = v54 - 1;
                    *(v52 + 88) = v55;
                    if (!v55)
                    {
                      v56 = *(v52 + 64);
                      if (v56)
                      {
                        *(v52 + 64) = 0;
                        v56[2](v56);
                        _Block_release(v56);
                      }

                      if (*(v52 + 72))
                      {
                        v57 = *(v52 + 64);
                        if (v57)
                        {
                          _Block_release(v57);
                        }
                      }

                      free(v52);
                    }
                  }
                }
              }
            }

            goto LABEL_111;
          }

LABEL_86:
          v46 = v107;
          if (v107)
          {
            v47 = *(v107 + 5);
            if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v46 = *(v107 + 8)) != 0)
            {
              v48 = v46[11];
              if (v48)
              {
                v49 = v48 - 1;
                v46[11] = v49;
                if (!v49)
                {
                  v50 = v46[8];
                  if (v50)
                  {
                    v46[8] = 0;
                    v50[2](v50);
                    _Block_release(v50);
                  }

                  if (v46[9])
                  {
                    v51 = v46[8];
                    if (v51)
                    {
                      _Block_release(v51);
                    }
                  }

                  free(v46);
                }
              }
            }
          }

          goto LABEL_98;
        }
      }

      __nwlog_obj();
      name = v42->identifier->name;
      *buf = 136446722;
      v112 = "__nw_protocol_remove_input_handler";
      if (!name)
      {
        name = "invalid";
      }

      v113 = 2082;
      v114 = name;
      v115 = 2048;
      v116 = v42;
      v88 = _os_log_send_and_compose_impl();
      v106 = OS_LOG_TYPE_ERROR;
      v105 = 0;
      if (__nwlog_fault(v88, &v106, &v105))
      {
        if (v106 == OS_LOG_TYPE_FAULT)
        {
          v89 = __nwlog_obj();
          v90 = v106;
          if (!os_log_type_enabled(v89, v106))
          {
            goto LABEL_253;
          }

          v91 = v42->identifier->name;
          if (!v91)
          {
            v91 = "invalid";
          }

          *buf = 136446722;
          v112 = "__nw_protocol_remove_input_handler";
          v113 = 2082;
          v114 = v91;
          v115 = 2048;
          v116 = v42;
          v92 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback";
LABEL_252:
          _os_log_impl(&dword_181A37000, v89, v90, v92, buf, 0x20u);
          goto LABEL_253;
        }

        if (v105 != 1)
        {
          v89 = __nwlog_obj();
          v90 = v106;
          if (!os_log_type_enabled(v89, v106))
          {
            goto LABEL_253;
          }

          v101 = v42->identifier->name;
          if (!v101)
          {
            v101 = "invalid";
          }

          *buf = 136446722;
          v112 = "__nw_protocol_remove_input_handler";
          v113 = 2082;
          v114 = v101;
          v115 = 2048;
          v116 = v42;
          v92 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded";
          goto LABEL_252;
        }

        v97 = __nw_create_backtrace_string();
        v89 = __nwlog_obj();
        v90 = v106;
        v98 = os_log_type_enabled(v89, v106);
        if (!v97)
        {
          if (!v98)
          {
            goto LABEL_253;
          }

          v103 = v42->identifier->name;
          if (!v103)
          {
            v103 = "invalid";
          }

          *buf = 136446722;
          v112 = "__nw_protocol_remove_input_handler";
          v113 = 2082;
          v114 = v103;
          v115 = 2048;
          v116 = v42;
          v92 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace";
          goto LABEL_252;
        }

        if (v98)
        {
          v99 = v42->identifier->name;
          if (!v99)
          {
            v99 = "invalid";
          }

          *buf = 136446978;
          v112 = "__nw_protocol_remove_input_handler";
          v113 = 2082;
          v114 = v99;
          v115 = 2048;
          v116 = v42;
          v117 = 2082;
          v118 = v97;
          _os_log_impl(&dword_181A37000, v89, v90, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v97);
      }

LABEL_253:
      if (v88)
      {
        free(v88);
      }

      if ((v108 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_86;
    }

    nw::share(type, v9[3].identifier);
    nw::share(&v107, &v9[2].default_input_handler);
    v28 = *&identifier->name[24];
    if (v28)
    {
      v29 = *(v28 + 8);
      if (v29)
      {
        v29(identifier, &v9[2].default_input_handler, 1);
        if ((v108 & 1) == 0)
        {
LABEL_67:
          if (v110)
          {
            v36 = *type;
            if (*type)
            {
              v37 = *(*type + 40);
              if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v36 = *(*type + 64)) != 0)
              {
                v38 = *(v36 + 88);
                if (v38)
                {
                  v39 = v38 - 1;
                  *(v36 + 88) = v39;
                  if (!v39)
                  {
                    v40 = *(v36 + 64);
                    if (v40)
                    {
                      *(v36 + 64) = 0;
                      v40[2](v40);
                      _Block_release(v40);
                    }

                    if (*(v36 + 72))
                    {
                      v41 = *(v36 + 64);
                      if (v41)
                      {
                        _Block_release(v41);
                      }
                    }

                    free(v36);
                  }
                }
              }
            }
          }

          goto LABEL_80;
        }

LABEL_55:
        v30 = v107;
        if (v107)
        {
          v31 = *(v107 + 5);
          if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v30 = *(v107 + 8)) != 0)
          {
            v32 = v30[11];
            if (v32)
            {
              v33 = v32 - 1;
              v30[11] = v33;
              if (!v33)
              {
                v34 = v30[8];
                if (v34)
                {
                  v30[8] = 0;
                  v34[2](v34);
                  _Block_release(v34);
                }

                if (v30[9])
                {
                  v35 = v30[8];
                  if (v35)
                  {
                    _Block_release(v35);
                  }
                }

                free(v30);
              }
            }
          }
        }

        goto LABEL_67;
      }
    }

    __nwlog_obj();
    v81 = *&identifier->name[16];
    *buf = 136446722;
    v112 = "__nw_protocol_remove_input_handler";
    if (!v81)
    {
      v81 = "invalid";
    }

    v113 = 2082;
    v114 = v81;
    v115 = 2048;
    v116 = identifier;
    v82 = _os_log_send_and_compose_impl();
    v106 = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (__nwlog_fault(v82, &v106, &v105))
    {
      if (v106 == OS_LOG_TYPE_FAULT)
      {
        v83 = __nwlog_obj();
        v84 = v106;
        if (!os_log_type_enabled(v83, v106))
        {
          goto LABEL_244;
        }

        v85 = *&identifier->name[16];
        if (!v85)
        {
          v85 = "invalid";
        }

        *buf = 136446722;
        v112 = "__nw_protocol_remove_input_handler";
        v113 = 2082;
        v114 = v85;
        v115 = 2048;
        v116 = identifier;
        v86 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback";
LABEL_243:
        _os_log_impl(&dword_181A37000, v83, v84, v86, buf, 0x20u);
        goto LABEL_244;
      }

      if (v105 != 1)
      {
        v83 = __nwlog_obj();
        v84 = v106;
        if (!os_log_type_enabled(v83, v106))
        {
          goto LABEL_244;
        }

        v100 = *&identifier->name[16];
        if (!v100)
        {
          v100 = "invalid";
        }

        *buf = 136446722;
        v112 = "__nw_protocol_remove_input_handler";
        v113 = 2082;
        v114 = v100;
        v115 = 2048;
        v116 = identifier;
        v86 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded";
        goto LABEL_243;
      }

      v94 = __nw_create_backtrace_string();
      v83 = __nwlog_obj();
      v84 = v106;
      v95 = os_log_type_enabled(v83, v106);
      if (!v94)
      {
        if (!v95)
        {
          goto LABEL_244;
        }

        v102 = *&identifier->name[16];
        if (!v102)
        {
          v102 = "invalid";
        }

        *buf = 136446722;
        v112 = "__nw_protocol_remove_input_handler";
        v113 = 2082;
        v114 = v102;
        v115 = 2048;
        v116 = identifier;
        v86 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace";
        goto LABEL_243;
      }

      if (v95)
      {
        v96 = *&identifier->name[16];
        if (!v96)
        {
          v96 = "invalid";
        }

        *buf = 136446978;
        v112 = "__nw_protocol_remove_input_handler";
        v113 = 2082;
        v114 = v96;
        v115 = 2048;
        v116 = identifier;
        v117 = 2082;
        v118 = v94;
        _os_log_impl(&dword_181A37000, v83, v84, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v94);
    }

LABEL_244:
    if (v82)
    {
      free(v82);
    }

    if ((v108 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_55;
  }

  __nwlog_obj();
  *buf = 136446210;
  v112 = "nw_protocol_masque_notify";
  v4 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v107) = 0;
  if (__nwlog_fault(v4, type, &v107))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type[0];
      if (!os_log_type_enabled(v74, type[0]))
      {
        goto LABEL_193;
      }

      *buf = 136446210;
      v112 = "nw_protocol_masque_notify";
      v76 = "%{public}s called with null protocol";
    }

    else if (v107 == 1)
    {
      v77 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type[0];
      v78 = os_log_type_enabled(v74, type[0]);
      if (v77)
      {
        if (v78)
        {
          *buf = 136446466;
          v112 = "nw_protocol_masque_notify";
          v113 = 2082;
          v114 = v77;
          _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v77);
        if (v4)
        {
          goto LABEL_162;
        }

        return;
      }

      if (!v78)
      {
        goto LABEL_193;
      }

      *buf = 136446210;
      v112 = "nw_protocol_masque_notify";
      v76 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v74 = __nwlog_obj();
      v75 = type[0];
      if (!os_log_type_enabled(v74, type[0]))
      {
        goto LABEL_193;
      }

      *buf = 136446210;
      v112 = "nw_protocol_masque_notify";
      v76 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
  }

LABEL_193:
  if (v4)
  {
LABEL_162:
    free(v4);
  }
}

void nw_flow_replay_send_initial_data_to_candidates(NWConcrete_nw_endpoint_handler *a1, nw_flow_protocol *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_endpoint_handler_get_mode";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v8, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v40 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v40 = "nw_endpoint_handler_get_mode";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_38;
        }

        if (v17)
        {
          *buf = 136446210;
          v40 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v40 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_38:
    if (v8)
    {
      free(v8);
    }

    mode = 0;
    goto LABEL_41;
  }

  mode = v3->mode;

  if (mode != 2)
  {
LABEL_41:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (mode > 5)
    {
      v24 = "unknown-mode";
    }

    else
    {
      v24 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v40 = "nw_flow_replay_send_initial_data_to_candidates";
    v41 = 2082;
    v42 = v24;
    v43 = 2082;
    v44 = "flow";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v12, &type, &v37))
    {
LABEL_73:
      if (!v12)
      {
        goto LABEL_75;
      }

LABEL_74:
      free(v12);
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v13, type))
      {
        if (mode > 5)
        {
          v26 = "unknown-mode";
        }

        else
        {
          v26 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v40 = "nw_flow_replay_send_initial_data_to_candidates";
        v41 = 2082;
        v42 = v26;
        v43 = 2082;
        v44 = "flow";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      goto LABEL_72;
    }

    if (v37 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v31 = type;
      if (os_log_type_enabled(v13, type))
      {
        if (mode > 5)
        {
          v32 = "unknown-mode";
        }

        else
        {
          v32 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v40 = "nw_flow_replay_send_initial_data_to_candidates";
        v41 = 2082;
        v42 = v32;
        v43 = 2082;
        v44 = "flow";
        _os_log_impl(&dword_181A37000, v13, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }

      goto LABEL_72;
    }

    v27 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v28 = type;
    v29 = os_log_type_enabled(v13, type);
    if (!v27)
    {
      if (v29)
      {
        if (mode > 5)
        {
          v33 = "unknown-mode";
        }

        else
        {
          v33 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v40 = "nw_flow_replay_send_initial_data_to_candidates";
        v41 = 2082;
        v42 = v33;
        v43 = 2082;
        v44 = "flow";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
      }

      goto LABEL_72;
    }

    if (v29)
    {
      if (mode > 5)
      {
        v30 = "unknown-mode";
      }

      else
      {
        v30 = off_1E6A31018[mode];
      }

      *buf = 136446978;
      v40 = "nw_flow_replay_send_initial_data_to_candidates";
      v41 = 2082;
      v42 = v30;
      v43 = 2082;
      v44 = "flow";
      v45 = 2082;
      v46 = v27;
      _os_log_impl(&dword_181A37000, v13, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v27);
    if (v12)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (a2)
  {
    if (a2->fast_open_frames.tqh_first)
    {
      if (a2->fast_open_frame_finalized_count)
      {
        candidate_output_handlers = a2->candidate_output_handlers;
        if (candidate_output_handlers)
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = ___ZL46nw_flow_replay_send_initial_data_to_candidatesP30NWConcrete_nw_endpoint_handlerP16nw_flow_protocol_block_invoke;
          v34[3] = &unk_1E6A35D48;
          v35 = v4;
          v36 = a2;
          nw_hash_table_apply(candidate_output_handlers, v34);
        }
      }
    }

    goto LABEL_75;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_flow_replay_send_initial_data_to_candidates";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v12, &type, &v37))
  {
    goto LABEL_73;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v40 = "nw_flow_replay_send_initial_data_to_candidates";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null flow_protocol", buf, 0xCu);
    }

LABEL_72:

    goto LABEL_73;
  }

  if (v37 != 1)
  {
    v13 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v40 = "nw_flow_replay_send_initial_data_to_candidates";
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_72;
  }

  v19 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v13, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v40 = "nw_flow_replay_send_initial_data_to_candidates";
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_72;
  }

  if (v21)
  {
    *buf = 136446466;
    v40 = "nw_flow_replay_send_initial_data_to_candidates";
    v41 = 2082;
    v42 = v19;
    _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_74;
  }

LABEL_75:
}

void nw_flow_replay_connected(nw_protocol *a1, nw_protocol *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_flow_replay_connected";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v12, &type, &v33))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connected";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v36 = "nw_flow_replay_connected";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_58;
      }

      if (v19)
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connected";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connected";
        _os_log_impl(&dword_181A37000, v13, v27, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_57:

    goto LABEL_58;
  }

  if (a2)
  {
    nw_protocol_connected(a1->default_input_handler->flow_id, a2);
    if (a2->default_input_handler != a1)
    {
      return;
    }

    handle = a1->handle;
    v5 = handle->handler;
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      mode = v7->mode;

      if (mode == 2)
      {
        nw_flow_replay_send_initial_data_to_candidates(v7, handle);
        nw_protocol_connected(a1->default_input_handler->flow_id, a1);
      }

      else
      {
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
          v36 = "nw_flow_replay_connected";
          v37 = 2082;
          v38 = v10;
          v39 = 2082;
          v40 = "flow";
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_13:

      return;
    }

    v23 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_flow_replay_connected";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v24, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_connected";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v29 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v25, type);
        if (v29)
        {
          if (v31)
          {
            *buf = 136446466;
            v36 = "nw_flow_replay_connected";
            v37 = 2082;
            v38 = v29;
            _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_66;
        }

        if (v31)
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_connected";
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_connected";
          _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_66:
    if (v24)
    {
      free(v24);
    }

    goto LABEL_13;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_flow_replay_connected";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v12, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connected";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null other_protocol", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v13, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v36 = "nw_flow_replay_connected";
          v37 = 2082;
          v38 = v20;
          _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        if (v12)
        {
          goto LABEL_59;
        }

        return;
      }

      if (v22)
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connected";
        _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connected";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_57;
  }

LABEL_58:
  if (v12)
  {
LABEL_59:
    free(v12);
  }
}

BOOL nw_flow_replay_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1->output_handler == 0;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_flow_replay_waiting_for_output";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_flow_replay_waiting_for_output";
        v7 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_flow_replay_waiting_for_output";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v13 = "nw_flow_replay_waiting_for_output";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_flow_replay_waiting_for_output";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_flow_replay_get_message_properties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a3)
    {
      return;
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 160);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = v8[29];

      if (v9 == 2)
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11)
          {
            v12 = *(v11 + 248);
            if (v12)
            {
              v12();
            }
          }
        }

        else
        {
          v15 = *(v5 + 288);
          if (v15)
          {
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = ___ZL37nw_flow_replay_get_message_propertiesP11nw_protocolS0_P30nw_protocol_message_properties_block_invoke;
            v32[3] = &__block_descriptor_48_e23_B16__0__nw_hash_node__8l;
            v32[4] = a1;
            v32[5] = a3;
            nw_hash_table_apply(v15, v32);
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (v9 > 5)
          {
            v14 = "unknown-mode";
          }

          else
          {
            v14 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v36 = "nw_flow_replay_get_message_properties";
          v37 = 2082;
          v38 = v14;
          v39 = 2082;
          v40 = "flow";
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_17:

      return;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_flow_replay_get_message_properties";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v21, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_get_message_properties";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v36 = "nw_flow_replay_get_message_properties";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (v29)
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_get_message_properties";
          _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_get_message_properties";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_53:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_17;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_flow_replay_get_message_properties";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v17, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_get_message_properties";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446466;
          v36 = "nw_flow_replay_get_message_properties";
          v37 = 2082;
          v38 = v24;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        goto LABEL_48;
      }

      if (v26)
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_get_message_properties";
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_get_message_properties";
        _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v17)
  {
    free(v17);
  }
}

uint64_t ___ZL37nw_flow_replay_get_message_propertiesP11nw_protocolS0_P30nw_protocol_message_properties_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v3 = *(object + 24);
    if (v3)
    {
      v4 = *(v3 + 248);
      if (v4)
      {
        v4();
      }
    }
  }

  return 0;
}

uint64_t nw_flow_replay_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_flow_replay_get_output_frames";
    v32 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v57 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v32, type, &v57))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type[0];
        if (os_log_type_enabled(v33, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v57 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v41 = type[0];
        v42 = os_log_type_enabled(v33, type[0]);
        if (backtrace_string)
        {
          if (v42)
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_replay_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v33, v41, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_72;
        }

        if (v42)
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v33, v41, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v46 = type[0];
        if (os_log_type_enabled(v33, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v33, v46, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_72:
    if (v32)
    {
      free(v32);
    }

    return 0;
  }

  LODWORD(v7) = a4;
  handle = a1->handle;
  v10 = *(handle + 20);
  v11 = v10;
  if (!v10)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_flow_replay_get_output_frames";
    v36 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v57 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v36, type, &v57))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v57 == OS_LOG_TYPE_INFO)
      {
        v43 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v44 = type[0];
        v45 = os_log_type_enabled(v37, type[0]);
        if (v43)
        {
          if (v45)
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_replay_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v43;
            _os_log_impl(&dword_181A37000, v37, v44, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v43);
          goto LABEL_78;
        }

        if (v45)
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v37, v44, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v47 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v37, v47, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v36)
    {
      free(v36);
    }

    goto LABEL_37;
  }

  v12 = v10;
  mode = v12->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (mode > 5)
      {
        v23 = "unknown-mode";
      }

      else
      {
        v23 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_flow_replay_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v23;
      *&buf[22] = 2082;
      v63 = "flow";
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (*(handle + 37))
  {
    if (*(handle + 82))
    {
      if (*(handle + 16))
      {
        v14 = *(handle + 36);
        if (v14)
        {
          *type = 0;
          v59 = type;
          v60 = 0x2020000000;
          v61 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL56nw_flow_replay_selected_candidate_has_early_data_to_sendP16nw_flow_protocol_block_invoke;
          v63 = &unk_1E6A2DD68;
          v64 = type;
          v65 = handle;
          nw_hash_table_apply(v14, buf);
          v15 = *(v59 + 24);
          _Block_object_dispose(type, 8);
          if (v15 == 1)
          {
            nw_flow_replay_send_initial_data_to_candidates(v12, handle);
            if (*(handle + 37))
            {
              if (*(handle + 82))
              {
                if (*(handle + 16))
                {
                  v16 = *(handle + 36);
                  if (v16)
                  {
                    *type = 0;
                    v59 = type;
                    v60 = 0x2020000000;
                    v61 = 0;
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = ___ZL56nw_flow_replay_selected_candidate_has_early_data_to_sendP16nw_flow_protocol_block_invoke;
                    v63 = &unk_1E6A2DD68;
                    v64 = type;
                    v65 = handle;
                    nw_hash_table_apply(v16, buf);
                    v17 = *(v59 + 24);
                    _Block_object_dispose(type, 8);
                    v18 = 0;
                    if (v17)
                    {
                      goto LABEL_38;
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

  output_handler = a1->output_handler;
  if (output_handler)
  {
    callbacks = output_handler->callbacks;
    if (callbacks)
    {
      get_output_frames = callbacks->get_output_frames;
      if (get_output_frames)
      {
        v18 = get_output_frames();
LABEL_38:

        return v18;
      }
    }

    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      *&buf[4] = "nw_flow_replay_get_output_frames";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support get_output_frames", buf, 0xCu);
    }

LABEL_37:
    v18 = 0;
    goto LABEL_38;
  }

  *type = 0;
  v18 = 0;
  if (nw_frame_array_get_frame_count(handle + 37, 0, type) > 3 || *type > 0x7CFu)
  {
    goto LABEL_38;
  }

  if (2000 - *type >= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = (2000 - *type);
  }

  if (!v7)
  {
    goto LABEL_30;
  }

  v24 = malloc_type_calloc(1uLL, v7, 0xACFCB8BAuLL);
  if (v24)
  {
    goto LABEL_31;
  }

  v25 = __nwlog_obj();
  os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_flow_replay_get_output_frames";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v63 = v7;
  v26 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v26);
  if (!result)
  {
    free(v26);
LABEL_30:
    v24 = 0;
LABEL_31:
    v28 = nw_frame_create(0, v24, v7, nw_flow_replay_frame_finalizer, handle);
    if (v28)
    {
      *(v28 + 102) |= 1u;
      *(v28 + 2) = 0;
      v29 = *(handle + 38);
      *(v28 + 3) = v29;
      *v29 = v28;
      *(handle + 38) = v28 + 16;
      *(v28 + 4) = 0;
      tqh_last = a6->tqh_last;
      *(v28 + 5) = tqh_last;
      *tqh_last = v28;
      a6->tqh_last = (v28 + 32);
      v18 = 1;
LABEL_33:

      goto LABEL_38;
    }

    v48 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_flow_replay_get_output_frames";
    v49 = _os_log_send_and_compose_impl();

    v57 = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v49, &v57, &v56))
    {
      if (v57 == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = v57;
        if (os_log_type_enabled(v50, v57))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null additional_reference", buf, 0xCu);
        }
      }

      else if (v56 == 1)
      {
        v52 = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v53 = v57;
        v54 = os_log_type_enabled(v50, v57);
        if (v52)
        {
          if (v54)
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_replay_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v52;
            _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null additional_reference, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          goto LABEL_96;
        }

        if (v54)
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null additional_reference, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v50 = __nwlog_obj();
        v55 = v57;
        if (os_log_type_enabled(v50, v57))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_get_output_frames";
          _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null additional_reference, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_96:
    if (v49)
    {
      free(v49);
    }

    v18 = 0;
    v28 = 0;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t nw_flow_replay_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = handle->handler;
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v8 = v7[29];

      if (v8 == 2)
      {
        if (handle->fast_open_frames.tqh_first)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v47) = 0;
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v38 = ___ZL37nw_flow_replay_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
          v39 = &unk_1E6A2DDB8;
          v42 = handle;
          v43 = a2;
          v9 = v7;
          v40 = v9;
          v41 = buf;
          tqh_first = a2->tqh_first;
          do
          {
            if (!tqh_first)
            {
              break;
            }

            v11 = *(tqh_first + 4);
            v12 = (v38)(v37);
            tqh_first = v11;
          }

          while ((v12 & 1) != 0);
          if (*(*&buf[8] + 24) == 1)
          {
            nw_flow_replay_send_initial_data_to_candidates(v9, handle);
          }

          _Block_object_dispose(buf, 8);
        }

        output_handler = a1->output_handler;
        if (!output_handler)
        {
          v16 = 1;
          goto LABEL_23;
        }

        callbacks = output_handler->callbacks;
        if (callbacks)
        {
          finalize_output_frames = callbacks->finalize_output_frames;
          if (finalize_output_frames)
          {
            v16 = finalize_output_frames();
LABEL_23:

            return v16;
          }
        }

        v28 = __nwlog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support finalize_output_frames", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (v8 > 5)
          {
            v18 = "unknown-mode";
          }

          else
          {
            v18 = off_1E6A31018[v8];
          }

          *buf = 136446722;
          *&buf[4] = "nw_flow_replay_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          *&buf[22] = 2082;
          v47 = "flow";
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_22:
      v16 = 0;
      goto LABEL_23;
    }

    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_flow_replay_finalize_output_frames";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v25, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v33 = type;
        v34 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_replay_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v33, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_63;
        }

        if (v34)
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v26, v33, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_replay_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v26, v36, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_63:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_22;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_flow_replay_finalize_output_frames";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v21, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_flow_replay_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v22, type);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          *&buf[4] = "nw_flow_replay_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v29;
          _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_57;
      }

      if (v31)
      {
        *buf = 136446210;
        *&buf[4] = "nw_flow_replay_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_flow_replay_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v22, v35, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_57:
  if (v21)
  {
    free(v21);
  }

  return 0;
}

uint64_t ___ZL37nw_flow_replay_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_frame_get_finalizer_context(v3) == *(a1 + 48))
  {
    v4 = (*(a1 + 56) + 8);
    v5 = v3[4];
    v6 = v3[5];
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    v3[4] = 0;
    v3[5] = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    v7 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = ___ZL37nw_flow_replay_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_2;
    v16 = &unk_1E6A2DD90;
    v19 = v22;
    v21 = v7;
    v17 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v18 = v8;
    v20 = v9;
    v10 = *(v7 + 296);
    do
    {
      if (!v10)
      {
        break;
      }

      v11 = *(v10 + 16);
      v12 = (v15)(v14);
      v10 = v11;
    }

    while ((v12 & 1) != 0);

    _Block_object_dispose(v22, 8);
  }

  return 1;
}

BOOL ___ZL37nw_flow_replay_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_2(uint64_t a1, void *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  v7 = *(v4 + 24);
  v5 = (v4 + 24);
  v6 = v7;
  v8 = *(*(a1 + 64) + 328);
  if (v7 != v8)
  {
    v9 = v6;
LABEL_11:
    *v5 = v9 + 1;
    goto LABEL_46;
  }

  if (*(a1 + 32) == v3)
  {
    if (gLogDatapath == 1)
    {
      v95 = v3;
      v74 = *(*(a1 + 64) + 328);
      logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
      v8 = v74;
      v76 = logging_disabled;
      v3 = v95;
      if ((v76 & 1) == 0)
      {
        v92 = v6;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v77 = gconnectionLogObj;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v79 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v80 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          logging_description = nw_endpoint_get_logging_description(v80);
          v82 = nw_endpoint_handler_state_string(*(a1 + 40));
          v83 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v84 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          v85 = nw_frame_unclaimed_length(*(a1 + 32));
          *buf = 136448002;
          v99 = "nw_flow_replay_finalize_output_frames_block_invoke_2";
          v100 = 2082;
          v101 = id_string;
          v102 = 2082;
          v103 = v79;
          v104 = 2082;
          v105 = logging_description;
          v106 = 2082;
          v107 = v82;
          v108 = 2082;
          v109 = v83;
          v110 = 2114;
          v111 = v84;
          v112 = 1024;
          LODWORD(v113) = v85;
          _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Received %u early bytes for fast open", buf, 0x4Eu);
        }

        v3 = v95;
        v6 = v92;
        v8 = v74;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v5 = (*(a1 + 64) + 328);
    v9 = *v5;
    goto LABEL_11;
  }

  v93 = *(*(a1 + 64) + 328);
  v94 = v3;
  if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
  {
    v91 = v6;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    v11 = nw_endpoint_handler_get_id_string(*(a1 + 40));
    v12 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
    v13 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
    v14 = v13;
    if (v13)
    {
      v15 = _nw_endpoint_get_logging_description(v13);
    }

    else
    {
      v15 = "<NULL>";
    }

    v16 = nw_endpoint_handler_state_string(*(a1 + 40));
    v17 = nw_endpoint_handler_mode_string(*(a1 + 40));
    v18 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
    *buf = 136447746;
    v99 = "nw_flow_replay_finalize_output_frames_block_invoke";
    v100 = 2082;
    v101 = v11;
    v102 = 2082;
    v103 = v12;
    v104 = 2082;
    v105 = v15;
    v106 = 2082;
    v107 = v16;
    v108 = 2082;
    v109 = v17;
    v110 = 2114;
    v111 = v18;
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v19, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          v22 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v23 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v24 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v25 = v24;
          log = v20;
          if (v24)
          {
            v26 = _nw_endpoint_get_logging_description(v24);
          }

          else
          {
            v26 = "<NULL>";
          }

          v51 = v26;
          v52 = v22;

          v53 = nw_endpoint_handler_state_string(*(a1 + 40));
          v54 = v19;
          v55 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v56 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136447746;
          v99 = "nw_flow_replay_finalize_output_frames_block_invoke";
          v100 = 2082;
          v101 = v52;
          v102 = 2082;
          v103 = v23;
          v104 = 2082;
          v105 = v51;
          v106 = 2082;
          v107 = v53;
          v108 = 2082;
          v109 = v55;
          v19 = v54;
          v110 = 2114;
          v111 = v56;
          _os_log_impl(&dword_181A37000, log, v21, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Received unexpected early frame", buf, 0x48u);

          v20 = log;
        }
      }

      else
      {
        if (v96 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v28 = backtrace_string;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v29 = gconnectionLogObj;
            v30 = type;
            if (os_log_type_enabled(v29, type))
            {
              v31 = nw_endpoint_handler_get_id_string(*(a1 + 40));
              v32 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
              v33 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
              v34 = v33;
              loga = v29;
              if (v33)
              {
                v35 = _nw_endpoint_get_logging_description(v33);
              }

              else
              {
                v35 = "<NULL>";
              }

              v69 = v35;
              v90 = v32;

              v70 = v19;
              v71 = nw_endpoint_handler_state_string(*(a1 + 40));
              v72 = nw_endpoint_handler_mode_string(*(a1 + 40));
              v73 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
              *buf = 136448002;
              v99 = "nw_flow_replay_finalize_output_frames_block_invoke";
              v100 = 2082;
              v101 = v31;
              v102 = 2082;
              v103 = v90;
              v104 = 2082;
              v105 = v69;
              v106 = 2082;
              v107 = v71;
              v19 = v70;
              v108 = 2082;
              v109 = v72;
              v110 = 2114;
              v111 = v73;
              v112 = 2082;
              v113 = v28;
              _os_log_impl(&dword_181A37000, loga, v30, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Received unexpected early frame, dumping backtrace:%{public}s", buf, 0x52u);

              v29 = loga;
            }

            free(v28);
            if (!v19)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v36 = gconnectionLogObj;
          v43 = type;
          if (os_log_type_enabled(v36, type))
          {
            v44 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v45 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
            v46 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
            logc = v19;
            v47 = nw_endpoint_get_logging_description(v46);
            v48 = nw_endpoint_handler_state_string(*(a1 + 40));
            v49 = nw_endpoint_handler_mode_string(*(a1 + 40));
            v50 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
            *buf = 136447746;
            v99 = "nw_flow_replay_finalize_output_frames_block_invoke";
            v100 = 2082;
            v101 = v44;
            v102 = 2082;
            v103 = v45;
            v104 = 2082;
            v105 = v47;
            v106 = 2082;
            v107 = v48;
            v108 = 2082;
            v109 = v49;
            v110 = 2114;
            v111 = v50;
            _os_log_impl(&dword_181A37000, v36, v43, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Received unexpected early frame, no backtrace", buf, 0x48u);

            v19 = logc;
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v36 = gconnectionLogObj;
          v37 = type;
          if (os_log_type_enabled(v36, type))
          {
            v38 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v39 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
            v40 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
            v41 = v40;
            logb = v36;
            if (v40)
            {
              v42 = _nw_endpoint_get_logging_description(v40);
            }

            else
            {
              v42 = "<NULL>";
            }

            v63 = v42;
            v64 = v38;

            v65 = v19;
            v66 = nw_endpoint_handler_state_string(*(a1 + 40));
            v67 = nw_endpoint_handler_mode_string(*(a1 + 40));
            v68 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
            *buf = 136447746;
            v99 = "nw_flow_replay_finalize_output_frames_block_invoke";
            v100 = 2082;
            v101 = v64;
            v102 = 2082;
            v103 = v39;
            v104 = 2082;
            v105 = v63;
            v106 = 2082;
            v107 = v66;
            v19 = v65;
            v108 = 2082;
            v109 = v67;
            v110 = 2114;
            v111 = v68;
            _os_log_impl(&dword_181A37000, logb, v37, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Received unexpected early frame, backtrace limit exceeded", buf, 0x48u);

            v36 = logb;
          }
        }
      }
    }

    if (!v19)
    {
LABEL_42:
      v6 = v91;
      goto LABEL_43;
    }

LABEL_41:
    free(v19);
    goto LABEL_42;
  }

LABEL_43:
  v57 = *(a1 + 32);
  v58 = (*(a1 + 64) + 304);
  v59 = *(v57 + 16);
  v60 = *(v57 + 24);
  if (v59)
  {
    v58 = (v59 + 24);
  }

  *v58 = v60;
  *v60 = v59;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  nw_frame_finalize(*(a1 + 32));
  v3 = v94;
  v8 = v93;
LABEL_46:
  v61 = v6 != v8;

  return v61;
}

uint64_t ___ZL46nw_flow_replay_send_initial_data_to_candidatesP30NWConcrete_nw_endpoint_handlerP16nw_flow_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (object)
  {
    v6 = *(object + 24);
    if (v6)
    {
      if (*(v6 + 88) && *(v6 + 96))
      {
        v7 = extra;
        v8 = *(a1 + 40);
        v47 = a1;
        while (1)
        {
          v9 = *(a1 + 32);
          v10 = v9;
          if (*v7 >= *(v8 + 328))
          {

            return 1;
          }

          v76[0] = 0;
          v76[1] = v76;
          v76[2] = 0x2020000000;
          v77 = 0;
          v70 = 0;
          v71 = &v70;
          v72 = 0x3032000000;
          v73 = __Block_byref_object_copy__17198;
          v74 = __Block_byref_object_dispose__17199;
          v75 = 0;
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v65 = ___ZL29nw_flow_replay_send_one_frameP30NWConcrete_nw_endpoint_handlerP16nw_flow_protocolP11nw_protocolP20nw_replay_flow_state_block_invoke;
          v66 = &unk_1E6A2DC58;
          v68 = &v70;
          v69 = v7;
          v67 = v76;
          v11 = *(v8 + 296);
          do
          {
            if (!v11)
            {
              break;
            }

            v12 = *(v11 + 16);
            v13 = (v65)(v64);
            v11 = v12;
          }

          while ((v13 & 1) != 0);
          v14 = v71[5];
          if (!v14)
          {
            break;
          }

          v15 = *v7;
          v48 = v10;
          if (!*(v14 + 112) || (*(v14 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v14, *(v14 + 88)))
          {
            v18 = 0;
            v19 = 0;
          }

          else
          {
            v17 = *(v14 + 52);
            v16 = *(v14 + 56);
            if (v17)
            {
              v18 = v17 - (v16 + *(v14 + 60));
            }

            else
            {
              v18 = 0;
            }

            v19 = *(v14 + 112) + v16;
          }

          v20 = *(v71[5] + 186) >> 7;
          while (1)
          {
            v22 = v7[1];
            v23 = v18 - v22;
            v63[0] = 0;
            v63[1] = v63;
            if (!(*(*(object + 24) + 88))(object, v8 + 96, v18 != v22, (v18 - v22), 2, v63))
            {
              break;
            }

            v59 = 0;
            v60 = &v59;
            v61 = 0x2020000000;
            v62 = 0;
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v50 = ___ZL29nw_flow_replay_send_one_frameP30NWConcrete_nw_endpoint_handlerP16nw_flow_protocolP11nw_protocolP20nw_replay_flow_state_block_invoke_89;
            v51 = &unk_1E6A2DC80;
            v57 = v18 - v22;
            v54 = v19 + v22;
            v55 = v7;
            v56 = v8;
            v52 = &v59;
            v53 = &v70;
            v58 = v20;
            v24 = v63[0];
            do
            {
              if (!v24)
              {
                break;
              }

              v25 = *(v24 + 32);
              v26 = (v50)(v49);
              v24 = v25;
            }

            while ((v26 & 1) != 0);
            if (v63[0])
            {
              if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v48) & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v27 = gconnectionLogObj;
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  id_string = nw_endpoint_handler_get_id_string(v48);
                  v40 = nw_endpoint_handler_dry_run_string(v48);
                  v45 = nw_endpoint_handler_copy_endpoint(v48);
                  logging_description = nw_endpoint_get_logging_description(v45);
                  v38 = nw_endpoint_handler_state_string(v48);
                  v37 = nw_endpoint_handler_mode_string(v48);
                  v28 = nw_endpoint_handler_copy_current_path(v48);
                  v29 = *(v60 + 6);
                  *buf = 136448258;
                  v79 = "nw_flow_replay_send_one_frame";
                  v80 = 2082;
                  v81 = id_string;
                  v82 = 2082;
                  v83 = v40;
                  v84 = 2082;
                  v85 = logging_description;
                  v86 = 2082;
                  v87 = v38;
                  v88 = 2082;
                  v89 = v37;
                  v90 = 2114;
                  v43 = v28;
                  v91 = v28;
                  v92 = 1024;
                  v93 = v29;
                  v94 = 1024;
                  v95 = v23;
                  _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Sending %u/%u early bytes", buf, 0x54u);
                }
              }

              (*(*(object + 24) + 96))(object, v63);
            }

            _Block_object_dispose(&v59, 8);
            v21 = *v7;
            if (*v7 != v15)
            {
              goto LABEL_37;
            }
          }

          if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v48) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v31 = gconnectionLogObj;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              v32 = nw_endpoint_handler_get_id_string(v48);
              v33 = nw_endpoint_handler_dry_run_string(v48);
              v34 = nw_endpoint_handler_copy_endpoint(v48);
              v46 = nw_endpoint_get_logging_description(v34);
              v44 = nw_endpoint_handler_state_string(v48);
              v41 = nw_endpoint_handler_mode_string(v48);
              v35 = nw_endpoint_handler_copy_current_path(v48);
              *buf = 136448002;
              v79 = "nw_flow_replay_send_one_frame";
              v80 = 2082;
              v81 = v32;
              v82 = 2082;
              v83 = v33;
              v84 = 2082;
              v85 = v46;
              v86 = 2082;
              v87 = v44;
              v88 = 2082;
              v89 = v41;
              v90 = 2114;
              v91 = v35;
              v92 = 1024;
              v93 = v23;
              _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Unable to send %u early bytes", buf, 0x4Eu);
            }
          }

          v21 = *v7;
LABEL_37:
          v30 = v21 > v15;
          _Block_object_dispose(&v70, 8);

          a1 = v47;
          _Block_object_dispose(v76, 8);

          if (v30)
          {
            v8 = *(v47 + 40);
            if (*v7 < *(v8 + 328))
            {
              continue;
            }
          }

          return 1;
        }

        _Block_object_dispose(&v70, 8);

        _Block_object_dispose(v76, 8);
      }
    }
  }

  return 1;
}

void sub_181DA60B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54)
{
  _Block_object_dispose(&a49, 8);

  _Block_object_dispose((v55 - 256), 8);
  _Unwind_Resume(a1);
}

BOOL ___ZL29nw_flow_replay_send_one_frameP30NWConcrete_nw_endpoint_handlerP16nw_flow_protocolP11nw_protocolP20nw_replay_flow_state_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24);
  v7 = **(a1 + 48);
  if (v6 == v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    *(v5 + 24) = v6 + 1;
  }

  return v6 != v7;
}

uint64_t nw_protocol_masque_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, int a5, nw_frame_array_s *a6)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1;
    handle = a1->handle;
    v8 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v9 = 1;
      goto LABEL_11;
    }

    v8 = *a1[1].flow_id;
    if (v8)
    {
LABEL_6:
      callbacks = v8[1].callbacks;
      v9 = 0;
      if (callbacks)
      {
        v8[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v9 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v11 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_frames";
        v12 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (!__nwlog_fault(v12, &type, &v62))
        {
          goto LABEL_58;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_58;
          }

          *buf = 136446210;
          v65 = "nw_protocol_masque_get_output_frames";
          v15 = "%{public}s called with null masque";
        }

        else
        {
          if (v62 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v26 = gLogObj;
            v27 = type;
            v28 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v28)
              {
                *buf = 136446466;
                v65 = "nw_protocol_masque_get_output_frames";
                v66 = 2082;
                v67 = backtrace_string;
                _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_58;
            }

            if (!v28)
            {
LABEL_58:
              if (v12)
              {
                free(v12);
              }

LABEL_60:
              result = 0;
              if (v9)
              {
                return result;
              }

              goto LABEL_70;
            }

            *buf = 136446210;
            v65 = "nw_protocol_masque_get_output_frames";
            v15 = "%{public}s called with null masque, no backtrace";
            v36 = v26;
            v37 = v27;
LABEL_57:
            _os_log_impl(&dword_181A37000, v36, v37, v15, buf, 0xCu);
            goto LABEL_58;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_58;
          }

          *buf = 136446210;
          v65 = "nw_protocol_masque_get_output_frames";
          v15 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v36 = v13;
        v37 = v14;
        goto LABEL_57;
      }

      v11 = *a1[1].flow_id;
    }

    v16 = (&v11[9].identifier + 7);
    if ((BYTE1(v11[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      v54 = a4;
      v55 = a3;
      v56 = a6;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      log = gprivacy_proxyLogObj;
      v57 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      a6 = v56;
      a3 = v55;
      a4 = v54;
      if (v57)
      {
        v58 = *&v11[9].flow_id[4];
        *buf = 136447746;
        v65 = "nw_protocol_masque_get_output_frames";
        v66 = 2082;
        v67 = &v11[9].callbacks + 3;
        v68 = 2080;
        v69 = " ";
        v70 = 1024;
        v71 = v55;
        v72 = 1024;
        v73 = v54;
        v74 = 1024;
        v75 = a5;
        v76 = 1024;
        v77 = v58;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMASQUE got request: %u - %u bytes %u frames with state %d", buf, 0x38u);
        a4 = v54;
        a3 = v55;
        a6 = v56;
      }
    }

    v17 = *&v11[9].flow_id[4];
    v18 = *v16;
    if (v17 == 1)
    {
      goto LABEL_30;
    }

    if (v17 != 4)
    {
      if (v17 != 2 || (v18 & 0x200000) == 0)
      {
        if ((v18 & 0x10000) != 0)
        {
          goto LABEL_60;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v19 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          *buf = 136446722;
          v65 = "nw_protocol_masque_get_output_frames";
          v66 = 2082;
          v67 = &v11[9].callbacks + 3;
          v68 = 2080;
          v69 = " ";
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMASQUE not yet connected, returning 0 frames", buf, 0x20u);
          result = 0;
          if (v9)
          {
            return result;
          }

LABEL_70:
          v42 = v6->handle;
          if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
          {
            v43 = v6[1].callbacks;
            if (v43)
            {
              v44 = (v43 - 1);
              v6[1].callbacks = v44;
              if (!v44)
              {
                v45 = result;
                v46 = *v6[1].flow_id;
                if (v46)
                {
                  *v6[1].flow_id = 0;
                  v46[2](v46);
                  _Block_release(v46);
                }

                if (v6[1].flow_id[8])
                {
                  v47 = *v6[1].flow_id;
                  if (v47)
                  {
                    _Block_release(v47);
                  }
                }

                free(v6);
                return v45;
              }
            }
          }

          return result;
        }

LABEL_69:
        if (v9)
        {
          return result;
        }

        goto LABEL_70;
      }

LABEL_30:
      v21 = a6;
      if ((v18 & 0x28) != 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = a4;
      }

      if (v22 >= 0x7D0)
      {
        v23 = 2000;
      }

      else
      {
        v23 = v22;
      }

      if (v22)
      {
        v24 = nw_calloc_type<unsigned char>(v23);
      }

      else
      {
        v24 = 0;
      }

      v38 = nw_frame_create(0, v24, v23, nw_protocol_masque_frame_finalizer, &v11[1].output_handler);
      nw_frame_set_buffer_used_malloc(v38, 1);
      v38[2] = 0;
      v39 = v11[5].callbacks;
      v38[3] = v39;
      v39->add_input_handler = v38;
      v11[5].callbacks = (v38 + 2);
      v38[4] = 0;
      tqh_last = v21->tqh_last;
      v38[5] = tqh_last;
      *tqh_last = v38;
      v21->tqh_last = (v38 + 4);
      if ((BYTE1(v11[9].callbacks) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v41 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v65 = "nw_protocol_masque_get_output_frames";
          v66 = 2082;
          v67 = &v11[9].callbacks + 3;
          v68 = 2080;
          v69 = " ";
          v70 = 1024;
          v71 = v23;
          _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMASQUE waiting for early data, returning 1 frame with %u bytes", buf, 0x26u);
        }
      }

      result = 1;
      goto LABEL_69;
    }

    if ((v18 & 0x800000) != 0)
    {
      output_handler = v11[4].output_handler;
    }

    else
    {
      if (((v18 & 0x500) == 0 || (v18 & 0x100000) == 0) && *&v11[9].flow_id[8] != 4 || (output_handler = v11[4].output_handler) == 0)
      {
        v48 = v6->output_handler;
        goto LABEL_86;
      }

      if (v11[5].identifier)
      {
        if (a3 >= 0x7D0)
        {
          v30 = 2000;
        }

        else
        {
          v30 = a3;
        }

        v31 = a6;
        v32 = nw_calloc_type<unsigned char>(v30);
        v33 = nw_frame_create(0, v32, v30, nw_protocol_masque_frame_finalizer, &v11[1].output_handler);
        nw_frame_set_buffer_used_malloc(v33, 1);
        result = 1;
        v33[2] = 0;
        v34 = v11[5].callbacks;
        v33[3] = v34;
        v34->add_input_handler = v33;
        v11[5].callbacks = (v33 + 2);
        v33[4] = 0;
        v35 = v31->tqh_last;
        v33[5] = v35;
        *v35 = v33;
        v31->tqh_last = (v33 + 4);
        if (v9)
        {
          return result;
        }

        goto LABEL_70;
      }

      *v16 = v18 | 0x800000;
    }

    if (output_handler)
    {
      v48 = output_handler;
    }

    else
    {
      v48 = v6->output_handler;
    }

LABEL_86:
    result = (v48->callbacks->get_output_frames)();
    if (v9)
    {
      return result;
    }

    goto LABEL_70;
  }

  __nwlog_obj();
  *buf = 136446210;
  v65 = "nw_protocol_masque_get_output_frames";
  v49 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v49, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v50, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_frames";
        v52 = "%{public}s called with null protocol";
LABEL_108:
        _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
      }
    }

    else if (v62 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type;
      v60 = os_log_type_enabled(v50, type);
      if (v59)
      {
        if (v60)
        {
          *buf = 136446466;
          v65 = "nw_protocol_masque_get_output_frames";
          v66 = 2082;
          v67 = v59;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v59);
        goto LABEL_109;
      }

      if (v60)
      {
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_frames";
        v52 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_108;
      }
    }

    else
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v50, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_frames";
        v52 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_108;
      }
    }
  }

LABEL_109:
  if (v49)
  {
    free(v49);
  }

  return 0;
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v126 = *MEMORY[0x1E69E9840];
  finalizer_context = nw_frame_get_finalizer_context(a2);
  v5 = *(a1 + 32);
  if (finalizer_context != v5)
  {
    if (!v5 || (*(v5 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v6 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = v7 == 0;
        if (v7)
        {
          v9 = (v7 + 507);
        }

        else
        {
          v9 = "";
        }

        v10 = " ";
        if (v8)
        {
          v10 = "";
        }

        *buf = 136446466;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = v10;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s%sReceived invalid early output frame", buf, 0x16u);
      }
    }

    v11 = a2;
    goto LABEL_122;
  }

  *(v5 + 503) |= 0x200000u;
  v107 = 0;
  v12 = nw_frame_unclaimed_bytes(a2, &v107);
  v13 = *(a1 + 32);
  if (*(v13 + 484) == 1)
  {
    if ((*(v13 + 504) & 8) == 0)
    {
      goto LABEL_84;
    }

    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v14 = nw_protocol_copy_http_definition_http_definition;
    v15 = nw_frame_copy_metadata_for_protocol(a2, v14);
    if (v14)
    {
      os_release(v14);
    }

    v13 = *(a1 + 32);
    if (!v15)
    {
      goto LABEL_84;
    }

    if ((!v13 || (*(v13 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v83 = gprivacy_proxyLogObj;
      v84 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v13 = *(a1 + 32);
      if (v84)
      {
        v85 = (v13 + 507);
        if (!v13)
        {
          v85 = "";
        }

        *buf = 136446978;
        *&buf[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v85;
        if (v13)
        {
          v86 = " ";
        }

        else
        {
          v86 = "";
        }

        *&buf[22] = 2080;
        v122 = v86;
        LOWORD(v123) = 1024;
        *(&v123 + 2) = v107;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived HTTP message to proxy, with %u bytes", buf, 0x26u);
        v13 = *(a1 + 32);
      }
    }

    *(v13 + 503) |= 0x1000u;
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = mach_continuous_time();
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      *(v16 + 272) = v18;
      v19 = nw_http_metadata_copy_request(v15);
      if (!v19)
      {
        if ((*(v16 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v31 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = v16 + 507;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s%sHTTP message is not a request", buf, 0x16u);
          }
        }

        nw_masque_mark_failed_with_error(v16, 22);
        goto LABEL_83;
      }

      v20 = v19;
      has_method = _nw_http_request_has_method(v20);

      if ((has_method & 1) == 0)
      {
        if ((*(v16 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v32 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = v16 + 507;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s%sUnsupported method", buf, 0x16u);
          }
        }

        nw_masque_mark_failed_with_error(v16, 45);
        goto LABEL_82;
      }

      if (*(v16 + 304))
      {
        v22 = *(v16 + 328);
        if (v22)
        {
          v23 = _nw_protocol_options_copy_proxy_endpoint(v22);
          if (v23)
          {
            v24 = v23;
            if (nw_endpoint_get_type(v23) == nw_endpoint_type_url)
            {
              v25 = nw_parameters_copy_url_endpoint(*(v16 + 304));
              if (v25)
              {
                v26 = v25;
                v114 = 0;
                hostname = nw_endpoint_get_hostname(v24);
                port = nw_endpoint_get_port(v24);
                asprintf(&v114, "%s:%u", hostname, port);
                v113 = 0;
                nw_endpoint_get_url_path(v24);
                url_path = nw_endpoint_get_url_path(v26);
                if (!url_path || (v30 = url_path, !*url_path))
                {
                  v30 = "/";
                }

                v93 = nw_endpoint_get_port(v26);
                object = nw_endpoint_copy_host_port_endpoint_for_url(v24);
                v95 = nw_endpoint_copy_host_port_endpoint_for_url(v26);
                if (nw_endpoint_is_equal(object, v95, 0))
                {
                  asprintf(&v113, "%s", v30);
                }

                else
                {
                  nw_endpoint_get_hostname(v26);
                  if (v93 == 443)
                  {
                    asprintf(&v113, "%s?targethost=%s&targetpath=%s");
                  }

                  else
                  {
                    asprintf(&v113, "%s?targethost=%s:%u&targetpath=%s");
                  }
                }

                url_scheme = nw_endpoint_get_url_scheme(v26);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3802000000;
                v122 = __Block_byref_object_copy__129;
                v123 = __Block_byref_object_dispose__130;
                v124 = _nw_http_request_create("POST", url_scheme);
                v125 |= 1u;
                if (v114)
                {
                  free(v114);
                  v114 = 0;
                }

                if (v113)
                {
                  free(v113);
                  v113 = 0;
                }

                if (object)
                {
                  os_release(object);
                }

                if (v95)
                {
                  os_release(v95);
                }

                os_release(v26);
                os_release(v24);
                *type = MEMORY[0x1E69E9820];
                v109 = 0x40000000;
                v110 = ___ZL30nw_masque_send_proxied_messageP9nw_masqueP20nw_protocol_metadata_block_invoke;
                v111 = &unk_1E6A2FAA0;
                v112 = buf;
                nw_http_request_access_extended_connect_protocol(v20, type);
                nw_http_request_set_header_fields(*(*&buf[8] + 40), v20);
                if (nw_masque_add_extra_headers_to_request(v16, *(*&buf[8] + 40), 0, 0))
                {
                  nw_http_metadata_set_request(v15, *(*&buf[8] + 40));
                  if (nw_masque_send_metadata(v16, v15, *(v16 - 64)))
                  {
                    if ((*(v16 + 505) & 1) == 0)
                    {
                      if (__nwlog_privacy_proxy_log::onceToken != -1)
                      {
                        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                      }

                      v69 = gprivacy_proxyLogObj;
                      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        *v115 = 136446722;
                        v116 = "nw_masque_send_proxied_message";
                        v117 = 2082;
                        v118 = v16 + 507;
                        v119 = 2080;
                        v120 = " ";
                        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent request", v115, 0x20u);
                      }
                    }

                    nw_masque_mark_connected(v16);
                  }

                  else
                  {
                    nw_masque_mark_failed_with_error(v16, 12);
                  }
                }

                _Block_object_dispose(buf, 8);
                if ((v125 & 1) == 0)
                {
                  goto LABEL_82;
                }

                v41 = v124;
                if (!v124)
                {
                  goto LABEL_82;
                }

                goto LABEL_81;
              }

              if (*(v16 + 505))
              {
                goto LABEL_80;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v40 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
LABEL_80:
                nw_masque_mark_failed_with_error(v16, 22);
                v41 = v24;
LABEL_81:
                os_release(v41);
                goto LABEL_82;
              }

              *buf = 136446466;
              *&buf[4] = v16 + 507;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v37 = "%{public}s%sURL endpoint not found";
              v38 = v40;
              v39 = 22;
            }

            else
            {
              if (*(v16 + 505))
              {
                goto LABEL_80;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v35 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_80;
              }

              logging_description = nw_endpoint_get_logging_description(v24);
              *buf = 136446722;
              *&buf[4] = v16 + 507;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2082;
              v122 = logging_description;
              v37 = "%{public}s%sProxy endpoint %{public}s is not of type URL";
              v38 = v35;
              v39 = 32;
            }

            _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
            goto LABEL_80;
          }

          if (*(v16 + 505))
          {
            goto LABEL_68;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v33 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
LABEL_68:
            nw_masque_mark_failed_with_error(v16, 22);
LABEL_82:
            os_release(v20);
LABEL_83:
            os_release(v15);
            v13 = *(a1 + 32);
LABEL_84:
            v42 = *(v13 + 503);
            if ((v42 & 0x1000) == 0)
            {
              if ((v42 & 0x10000) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v70 = gprivacy_proxyLogObj;
                v71 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                v13 = *(a1 + 32);
                if (v71)
                {
                  v72 = (v13 + 507);
                  if (!v13)
                  {
                    v72 = "";
                  }

                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = v72;
                  if (v13)
                  {
                    v73 = " ";
                  }

                  else
                  {
                    v73 = "";
                  }

                  *&buf[22] = 2080;
                  v122 = v73;
                  LOWORD(v123) = 1024;
                  *(&v123 + 2) = v107;
                  _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived early output %u bytes", buf, 0x26u);
                  v13 = *(a1 + 32);
                }
              }

              if (v107 >= 7 && !*(v13 + 368))
              {
                v61 = *v12;
                if (v61 >= 0xC0 && (v61 & 0x30) == 0)
                {
                  v62 = v12[5];
                  if (v62 <= 0x14)
                  {
                    v63 = v62 + 7;
                    if (v107 > (v62 + 7))
                    {
                      v64 = &v12[v62];
                      v65 = v64[6];
                      if ((v65 - 1) <= 0x13 && v65 + v63 < v107)
                      {
                        v66 = dispatch_data_create(v64 + 7, v64[6], 0, 0);
                        v67 = *(a1 + 32);
                        *(v67 + 368) = v66;
                        if (*(v67 + 480) == 2 && (*buf = 0, *(*(a1 + 32) + 384) = dispatch_data_create_alloc(), arc4random_buf(*buf, v65), (v67 = *(a1 + 32)) == 0) || (*(v67 + 505) & 1) == 0)
                        {
                          if (gLogDatapath == 1)
                          {
                            if (__nwlog_privacy_proxy_log::onceToken != -1)
                            {
                              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                            }

                            v89 = gprivacy_proxyLogObj;
                            v90 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                            v67 = *(a1 + 32);
                            if (v90)
                            {
                              v91 = (v67 + 507);
                              if (!v67)
                              {
                                v91 = "";
                              }

                              *buf = 136446978;
                              *&buf[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                              *&buf[12] = 2082;
                              *&buf[14] = v91;
                              v92 = " ";
                              if (!v67)
                              {
                                v92 = "";
                              }

                              *&buf[22] = 2080;
                              v122 = v92;
                              LOWORD(v123) = 1024;
                              *(&v123 + 2) = v65;
                              _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected a client CID of length %u", buf, 0x26u);
                              v67 = *(a1 + 32);
                            }
                          }
                        }

                        nw_masque_setup_demux(v67, 1);
                        v13 = *(a1 + 32);
                      }
                    }
                  }
                }
              }

              nw_masque_send_connect(v13);
              v13 = *(a1 + 32);
            }

            goto LABEL_90;
          }

          *buf = 136446466;
          *&buf[4] = v16 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v34 = "%{public}s%sProxy endpoint not found";
        }

        else
        {
          if (*(v16 + 505))
          {
            goto LABEL_68;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v33 = gprivacy_proxyLogObj;
          if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *buf = 136446466;
          *&buf[4] = v16 + 507;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v34 = "%{public}s%sOptions not found";
        }
      }

      else
      {
        if (*(v16 + 505))
        {
          goto LABEL_68;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v33 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        *buf = 136446466;
        *&buf[4] = v16 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v34 = "%{public}s%sParameters not found";
      }

      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
      goto LABEL_68;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_proxied_message";
    v79 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v115[0] = 0;
    if (__nwlog_fault(v79, type, v115))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (!os_log_type_enabled(v80, type[0]))
        {
          goto LABEL_200;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_send_proxied_message";
        v82 = "%{public}s called with null masque";
        goto LABEL_199;
      }

      if (v115[0] != 1)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (!os_log_type_enabled(v80, type[0]))
        {
          goto LABEL_200;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_send_proxied_message";
        v82 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_199;
      }

      backtrace_string = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v81 = type[0];
      v88 = os_log_type_enabled(v80, type[0]);
      if (backtrace_string)
      {
        if (v88)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_send_proxied_message";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_200;
      }

      if (v88)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_send_proxied_message";
        v82 = "%{public}s called with null masque, no backtrace";
LABEL_199:
        _os_log_impl(&dword_181A37000, v80, v81, v82, buf, 0xCu);
      }
    }

LABEL_200:
    if (v79)
    {
      free(v79);
    }

    goto LABEL_83;
  }

LABEL_90:
  v43 = *(v13 + 484);
  if (v43 != 5 && v107 != 0 && v12 != 0)
  {
    *type = 0;
    v109 = type;
    v46 = *(*(a1 + 40) + 32);
    if ((*(*(v46 + 24) + 88))(v46))
    {
      is_metadata_complete = nw_frame_is_metadata_complete(a2);
      v48 = *(a2 + 186);
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 0x40000000;
      v97 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_117;
      v98 = &__block_descriptor_tmp_118_27955;
      v104 = v107;
      v49 = *(a1 + 40);
      v99 = *(a1 + 32);
      v100 = type;
      v101 = v12;
      v102 = a2;
      v103 = v49;
      v105 = v48 >> 7;
      v106 = is_metadata_complete;
      v50 = *type;
      do
      {
        if (!v50)
        {
          break;
        }

        v51 = *(v50 + 32);
        v52 = (v97)(v96);
        v50 = v51;
      }

      while ((v52 & 1) != 0);
      if (*type)
      {
        v53 = *(a1 + 32);
        if ((!v53 || (*(v53 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v74 = gprivacy_proxyLogObj;
          v75 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
          v53 = *(a1 + 32);
          if (v75)
          {
            v76 = v53 == 0;
            if (v53)
            {
              v77 = (v53 + 507);
            }

            else
            {
              v77 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v77;
            if (v76)
            {
              v78 = "";
            }

            else
            {
              v78 = " ";
            }

            *&buf[22] = 2080;
            v122 = v78;
            LOWORD(v123) = 1024;
            *(&v123 + 2) = v107;
            _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSending %u early bytes", buf, 0x26u);
            v53 = *(a1 + 32);
          }
        }

        *(v53 + 503) |= 0x400000u;
        (*(*(v46 + 24) + 96))(v46, type);
      }
    }

    else
    {
      v54 = *(a1 + 32);
      if (!v54 || (*(v54 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v55 = gprivacy_proxyLogObj;
        v56 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        v54 = *(a1 + 32);
        if (v56)
        {
          v57 = v54 == 0;
          if (v54)
          {
            v58 = (v54 + 507);
          }

          else
          {
            v58 = "";
          }

          *buf = 136446722;
          *&buf[4] = v58;
          v59 = " ";
          if (v57)
          {
            v59 = "";
          }

          *&buf[12] = 2080;
          *&buf[14] = v59;
          *&buf[22] = 1024;
          LODWORD(v122) = v107;
          _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u early bytes", buf, 0x1Cu);
          v54 = *(a1 + 32);
        }
      }

      if ((*(v54 + 503) & 8) != 0)
      {
        nw_frame_finalize(a2);
      }
    }

    v43 = *(*(a1 + 32) + 484);
  }

  if (v43 == 4)
  {
    v11 = a2;
LABEL_122:
    nw_frame_finalize(v11);
  }

  return 1;
}

uint64_t nw_protocol_masque_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v36 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v52[0]) = 0;
    if (__nwlog_fault(v36, type, v52))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_finalize_output_frames";
          v39 = "%{public}s called with null protocol";
LABEL_85:
          _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
        }
      }

      else if (LOBYTE(v52[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type[0];
        v44 = os_log_type_enabled(v37, type[0]);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_86;
        }

        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_finalize_output_frames";
          v39 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_85;
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_finalize_output_frames";
          v39 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_85;
        }
      }
    }

LABEL_86:
    if (v36)
    {
      free(v36);
    }

    return 0;
  }

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
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      v40 = a2;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v41 = gprivacy_proxyLogObj;
      v42 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v40;
      if (v42)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_masque_finalize_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 603;
        v61 = 2080;
        v62 = " ";
        v63 = 1024;
        frame_count = nw_frame_array_get_frame_count(v40, 1, 0);
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMASQUE got finalize output frames, count %u", buf, 0x26u);
        a2 = v40;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    tqh_first = a2->tqh_first;
    if (a2->tqh_first)
    {
      *(tqh_first + 5) = buf;
      tqh_last = a2->tqh_last;
      *buf = tqh_first;
      *&buf[8] = tqh_last;
      a2->tqh_first = 0;
      a2->tqh_last = &a2->tqh_first;
    }

    if (v7[5].identifier)
    {
      v14 = *&v7[9].flow_id[4];
      if (v14 == 1 || v14 == 2 && (BYTE1(v7[9].callbacks) & 0x20) != 0)
      {
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 0x40000000;
        v56 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
        v57 = &__block_descriptor_tmp_119;
        p_output_handler = &v7[1].output_handler;
        v59 = v2;
        do
        {
          v15 = *buf;
          if (!*buf)
          {
            break;
          }

          v16 = *(*buf + 32);
          v17 = *(*buf + 40);
          v18 = (v16 + 40);
          if (!v16)
          {
            v18 = &buf[8];
          }

          *v18 = v17;
          *v17 = v16;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0;
        }

        while (((v56)(v55) & 1) != 0);
      }
    }

    *type = 0;
    v54 = type;
    v52[0] = 0;
    v52[1] = v52;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v46 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_120;
    v47 = &__block_descriptor_tmp_125_27841;
    v48 = &v7[1].output_handler;
    v49 = type;
    v50 = v2;
    v51 = v52;
    do
    {
      v19 = *buf;
      if (!*buf)
      {
        break;
      }

      v20 = *(*buf + 32);
      v21 = *(*buf + 40);
      v22 = (v20 + 40);
      if (!v20)
      {
        v22 = &buf[8];
      }

      *v22 = v21;
      *v21 = v20;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
    }

    while (((v46)(v45) & 1) != 0);
    if (v52[0])
    {
      (v7[4].output_handler->callbacks->finalize_output_frames)();
    }

    if (*type)
    {
      (v2->output_handler->callbacks->finalize_output_frames)();
    }

    result = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_54;
    }

    return result;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_masque_finalize_output_frames";
  v8 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v52[0]) = 0;
  if (!__nwlog_fault(v8, type, v52))
  {
    goto LABEL_51;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v11 = "%{public}s called with null masque";
LABEL_49:
    v28 = v9;
    v29 = v10;
LABEL_50:
    _os_log_impl(&dword_181A37000, v28, v29, v11, buf, 0xCu);
    goto LABEL_51;
  }

  if (LOBYTE(v52[0]) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v11 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_49;
  }

  v24 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  v26 = type[0];
  v27 = os_log_type_enabled(gLogObj, type[0]);
  if (v24)
  {
    if (v27)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_masque_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v24;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v24);
  }

  else if (v27)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v11 = "%{public}s called with null masque, no backtrace";
    v28 = v25;
    v29 = v26;
    goto LABEL_50;
  }

LABEL_51:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_54:
    v30 = v2->handle;
    if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v31 = v2[1].callbacks;
      if (v31)
      {
        v32 = (v31 - 1);
        v2[1].callbacks = v32;
        if (!v32)
        {
          v33 = result;
          v34 = *v2[1].flow_id;
          if (v34)
          {
            *v2[1].flow_id = 0;
            v34[2](v34);
            _Block_release(v34);
          }

          if (v2[1].flow_id[8])
          {
            v35 = *v2[1].flow_id;
            if (v35)
            {
              _Block_release(v35);
            }
          }

          free(v2);
          return v33;
        }
      }
    }
  }

  return result;
}

id nw_http_metadata_copy_request(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_definition_http_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_metadata_copy_request_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_metadata_copy_request";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_metadata_copy_request";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_metadata_copy_request";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_metadata_copy_request";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DA8B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_request_has_method(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
LABEL_3:
      has_method = _nw_http_request_has_method(v3);

      return has_method;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v7);
    if (result)
    {
      goto LABEL_8;
    }

    free(v7);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v9 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    goto LABEL_3;
  }

LABEL_8:
  __break(1u);
  return result;
}
void nw_protocol_plugin_metadata_output_available(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v4 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v52 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v4, type, &v52))
    {
      goto LABEL_142;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v52 != OS_LOG_TYPE_INFO)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (!os_log_type_enabled(v25, type[0]))
        {
          goto LABEL_142;
        }

        *buf = 136446210;
        v54 = "nw_protocol_plugin_metadata_output_available";
        v27 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_141;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type[0];
      v38 = os_log_type_enabled(v25, type[0]);
      if (!backtrace_string)
      {
        if (!v38)
        {
          goto LABEL_142;
        }

        *buf = 136446210;
        v54 = "nw_protocol_plugin_metadata_output_available";
        v27 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_141;
      }

      if (!v38)
      {
        goto LABEL_114;
      }

      *buf = 136446466;
      v54 = "nw_protocol_plugin_metadata_output_available";
      v55 = 2082;
      v56 = backtrace_string;
      v39 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_113;
    }

    v25 = __nwlog_obj();
    v26 = type[0];
    if (!os_log_type_enabled(v25, type[0]))
    {
      goto LABEL_142;
    }

    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v27 = "%{public}s called with null protocol";
LABEL_141:
    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_142;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v4 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v52 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v4, type, &v52))
    {
      goto LABEL_142;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v52 != OS_LOG_TYPE_INFO)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (!os_log_type_enabled(v25, type[0]))
        {
          goto LABEL_142;
        }

        *buf = 136446210;
        v54 = "nw_protocol_plugin_metadata_output_available";
        v27 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_141;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type[0];
      v40 = os_log_type_enabled(v25, type[0]);
      if (!backtrace_string)
      {
        if (!v40)
        {
          goto LABEL_142;
        }

        *buf = 136446210;
        v54 = "nw_protocol_plugin_metadata_output_available";
        v27 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_141;
      }

      if (!v40)
      {
        goto LABEL_114;
      }

      *buf = 136446466;
      v54 = "nw_protocol_plugin_metadata_output_available";
      v55 = 2082;
      v56 = backtrace_string;
      v39 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_113;
    }

    v25 = __nwlog_obj();
    v26 = type[0];
    if (!os_log_type_enabled(v25, type[0]))
    {
      goto LABEL_142;
    }

    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v27 = "%{public}s called with null protocol->handle";
    goto LABEL_141;
  }

  v2 = *(v1 + 72);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v4 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v52 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v4, type, &v52))
    {
      goto LABEL_142;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v52 != OS_LOG_TYPE_INFO)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (!os_log_type_enabled(v25, type[0]))
        {
          goto LABEL_142;
        }

        *buf = 136446210;
        v54 = "nw_protocol_plugin_metadata_output_available";
        v27 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
        goto LABEL_141;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type[0];
      v41 = os_log_type_enabled(v25, type[0]);
      if (!backtrace_string)
      {
        if (!v41)
        {
          goto LABEL_142;
        }

        *buf = 136446210;
        v54 = "nw_protocol_plugin_metadata_output_available";
        v27 = "%{public}s called with null metadata_plugin, no backtrace";
        goto LABEL_141;
      }

      if (!v41)
      {
        goto LABEL_114;
      }

      *buf = 136446466;
      v54 = "nw_protocol_plugin_metadata_output_available";
      v55 = 2082;
      v56 = backtrace_string;
      v39 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
      goto LABEL_113;
    }

    v25 = __nwlog_obj();
    v26 = type[0];
    if (!os_log_type_enabled(v25, type[0]))
    {
      goto LABEL_142;
    }

    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v27 = "%{public}s called with null metadata_plugin";
    goto LABEL_141;
  }

  if (gLogDatapath == 1)
  {
    v28 = a1;
    v29 = __nwlog_obj();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    a1 = v28;
    if (v30)
    {
      *buf = 136446210;
      v54 = "nw_protocol_plugin_metadata_output_available";
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a1 = v28;
    }
  }

  *type = 0;
  v50 = type;
  nw_protocol_plugin_metadata_finalize_output_frames(a1, type);
  if (*(v2 + 32))
  {
    return;
  }

  v3 = *(v2 + 128);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v4 = _os_log_send_and_compose_impl();
    v52 = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v4, &v52, &v51))
    {
      goto LABEL_142;
    }

    if (v52 == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = v52;
      if (!os_log_type_enabled(v25, v52))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v54 = "nw_protocol_plugin_metadata_output_available";
      v27 = "%{public}s called with null metadata_plugin->protocol";
      goto LABEL_141;
    }

    if (v51 != 1)
    {
      v25 = __nwlog_obj();
      v26 = v52;
      if (!os_log_type_enabled(v25, v52))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v54 = "nw_protocol_plugin_metadata_output_available";
      v27 = "%{public}s called with null metadata_plugin->protocol, backtrace limit exceeded";
      goto LABEL_141;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = v52;
    v45 = os_log_type_enabled(v25, v52);
    if (!backtrace_string)
    {
      if (!v45)
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v54 = "nw_protocol_plugin_metadata_output_available";
      v27 = "%{public}s called with null metadata_plugin->protocol, no backtrace";
      goto LABEL_141;
    }

    if (!v45)
    {
      goto LABEL_114;
    }

    *buf = 136446466;
    v54 = "nw_protocol_plugin_metadata_output_available";
    v55 = 2082;
    v56 = backtrace_string;
    v39 = "%{public}s called with null metadata_plugin->protocol, dumping backtrace:%{public}s";
LABEL_113:
    _os_log_impl(&dword_181A37000, v25, v26, v39, buf, 0x16u);
    goto LABEL_114;
  }

  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = *(v4 + 40);
    v6 = *(v3 + 48);
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
    {
      v8 = *(v6 + 88);
      v7 = 0;
      if (v8)
      {
        *(v6 + 88) = v8 + 1;
      }
    }

    else
    {
      v7 = 1;
    }

    v9 = *(v3 + 40);
    v10 = v3;
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v3 + 64)) != 0)
    {
      v13 = *(v10 + 88);
      if (v13)
      {
        v11 = 0;
        *(v10 + 88) = v13 + 1;
        v12 = *(v4 + 24);
        if (!v12)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(v4 + 24);
        if (!v12)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
      v11 = 1;
      v12 = *(v4 + 24);
      if (!v12)
      {
        goto LABEL_64;
      }
    }

    v14 = *(v12 + 72);
    if (v14)
    {
      v14(v4, v3);
      goto LABEL_25;
    }

LABEL_64:
    __nwlog_obj();
    v31 = *(v4 + 16);
    *buf = 136446722;
    v54 = "__nw_protocol_output_available";
    if (!v31)
    {
      v31 = "invalid";
    }

    v55 = 2082;
    v56 = v31;
    v57 = 2048;
    v58 = v4;
    v32 = _os_log_send_and_compose_impl();
    v52 = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v32, &v52, &v51))
    {
      goto LABEL_135;
    }

    if (v52 == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = v52;
      if (!os_log_type_enabled(v33, v52))
      {
        goto LABEL_135;
      }

      v35 = *(v4 + 16);
      if (!v35)
      {
        v35 = "invalid";
      }

      *buf = 136446722;
      v54 = "__nw_protocol_output_available";
      v55 = 2082;
      v56 = v35;
      v57 = 2048;
      v58 = v4;
      v36 = "%{public}s protocol %{public}s (%p) has invalid output_available callback";
    }

    else if (v51 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = v52;
      v43 = os_log_type_enabled(v33, v52);
      if (v42)
      {
        if (v43)
        {
          v44 = *(v4 + 16);
          if (!v44)
          {
            v44 = "invalid";
          }

          *buf = 136446978;
          v54 = "__nw_protocol_output_available";
          v55 = 2082;
          v56 = v44;
          v57 = 2048;
          v58 = v4;
          v59 = 2082;
          v60 = v42;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v42);
        goto LABEL_135;
      }

      if (!v43)
      {
LABEL_135:
        if (v32)
        {
          free(v32);
        }

LABEL_25:
        if ((v11 & 1) == 0)
        {
          v15 = *(v3 + 40);
          if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v16 = *(v3 + 88);
            if (v16)
            {
              v17 = v16 - 1;
              *(v3 + 88) = v17;
              if (!v17)
              {
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
              }
            }
          }
        }

        if ((v7 & 1) == 0)
        {
          v20 = *(v4 + 40);
          if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
          {
            v21 = *(v4 + 88);
            if (v21)
            {
              v22 = v21 - 1;
              *(v4 + 88) = v22;
              if (!v22)
              {
                v23 = *(v4 + 64);
                if (v23)
                {
                  *(v4 + 64) = 0;
                  v23[2](v23);
                  _Block_release(v23);
                }

                if (*(v4 + 72))
                {
                  v24 = *(v4 + 64);
                  if (v24)
                  {
                    _Block_release(v24);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }

      v48 = *(v4 + 16);
      if (!v48)
      {
        v48 = "invalid";
      }

      *buf = 136446722;
      v54 = "__nw_protocol_output_available";
      v55 = 2082;
      v56 = v48;
      v57 = 2048;
      v58 = v4;
      v36 = "%{public}s protocol %{public}s (%p) has invalid output_available callback, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = v52;
      if (!os_log_type_enabled(v33, v52))
      {
        goto LABEL_135;
      }

      v47 = *(v4 + 16);
      if (!v47)
      {
        v47 = "invalid";
      }

      *buf = 136446722;
      v54 = "__nw_protocol_output_available";
      v55 = 2082;
      v56 = v47;
      v57 = 2048;
      v58 = v4;
      v36 = "%{public}s protocol %{public}s (%p) has invalid output_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x20u);
    goto LABEL_135;
  }

  __nwlog_obj();
  *buf = 136446210;
  v54 = "__nw_protocol_output_available";
  v4 = _os_log_send_and_compose_impl();
  v52 = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (!__nwlog_fault(v4, &v52, &v51))
  {
LABEL_142:
    if (!v4)
    {
      return;
    }

    goto LABEL_48;
  }

  if (v52 == OS_LOG_TYPE_FAULT)
  {
    v25 = __nwlog_obj();
    v26 = v52;
    if (!os_log_type_enabled(v25, v52))
    {
      goto LABEL_142;
    }

    *buf = 136446210;
    v54 = "__nw_protocol_output_available";
    v27 = "%{public}s called with null protocol";
    goto LABEL_141;
  }

  if (v51 != 1)
  {
    v25 = __nwlog_obj();
    v26 = v52;
    if (!os_log_type_enabled(v25, v52))
    {
      goto LABEL_142;
    }

    *buf = 136446210;
    v54 = "__nw_protocol_output_available";
    v27 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_141;
  }

  backtrace_string = __nw_create_backtrace_string();
  v25 = __nwlog_obj();
  v26 = v52;
  v46 = os_log_type_enabled(v25, v52);
  if (!backtrace_string)
  {
    if (!v46)
    {
      goto LABEL_142;
    }

    *buf = 136446210;
    v54 = "__nw_protocol_output_available";
    v27 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_141;
  }

  if (v46)
  {
    *buf = 136446466;
    v54 = "__nw_protocol_output_available";
    v55 = 2082;
    v56 = backtrace_string;
    v39 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_113;
  }

LABEL_114:
  free(backtrace_string);
  if (v4)
  {
LABEL_48:
    free(v4);
  }
}

void nw_protocol_plugin_metadata_resume_input(uint64_t a1, char a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_plugin_metadata_resume_input";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v3, &type, &v49))
    {
      goto LABEL_115;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_115;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v32 = "%{public}s called with null metadata_plugin";
LABEL_114:
      _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
      goto LABEL_115;
    }

    if (v49 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_115;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v32 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_114;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v43 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (!v43)
      {
        goto LABEL_115;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v32 = "%{public}s called with null metadata_plugin, no backtrace";
      goto LABEL_114;
    }

    if (!v43)
    {
      goto LABEL_89;
    }

    *buf = 136446466;
    v52 = "nw_protocol_plugin_metadata_resume_input";
    v53 = 2082;
    v54 = backtrace_string;
    v44 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
LABEL_88:
    _os_log_impl(&dword_181A37000, v30, v31, v44, buf, 0x16u);
    goto LABEL_89;
  }

  if (gLogDatapath == 1)
  {
    v33 = a1;
    v34 = a2;
    v35 = __nwlog_obj();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
    a2 = v34;
    v37 = v36;
    a1 = v33;
    if (v37)
    {
      v38 = off_1E6A2BEC0[(v34 - 1)];
      *buf = 136446466;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v53 = 2080;
      v54 = v38;
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s resuming input with result: %s", buf, 0x16u);
      a2 = v34;
      a1 = v33;
    }
  }

  *(a1 + 140) = a2;
  v2 = *(a1 + 128);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_plugin_metadata_resume_input";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v3, &type, &v49))
    {
      goto LABEL_115;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_115;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v32 = "%{public}s called with null metadata_plugin->protocol";
      goto LABEL_114;
    }

    if (v49 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_115;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v32 = "%{public}s called with null metadata_plugin->protocol, backtrace limit exceeded";
      goto LABEL_114;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v45 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (!v45)
      {
        goto LABEL_115;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_metadata_resume_input";
      v32 = "%{public}s called with null metadata_plugin->protocol, no backtrace";
      goto LABEL_114;
    }

    if (!v45)
    {
      goto LABEL_89;
    }

    *buf = 136446466;
    v52 = "nw_protocol_plugin_metadata_resume_input";
    v53 = 2082;
    v54 = backtrace_string;
    v44 = "%{public}s called with null metadata_plugin->protocol, dumping backtrace:%{public}s";
    goto LABEL_88;
  }

  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(v3 + 40);
    v5 = *(v2 + 48);
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
    {
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

    v8 = *(v2 + 40);
    v9 = v2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v2 + 64)) != 0)
    {
      v12 = *(v9 + 88);
      if (v12)
      {
        v10 = 0;
        *(v9 + 88) = v12 + 1;
        v11 = *(v3 + 24);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v10 = 0;
        v11 = *(v3 + 24);
        if (!v11)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v10 = 1;
      v11 = *(v3 + 24);
      if (!v11)
      {
        goto LABEL_47;
      }
    }

    v13 = *(v11 + 64);
    if (v13)
    {
      v13(v3, v2);
      goto LABEL_22;
    }

LABEL_47:
    __nwlog_obj();
    v24 = *(v3 + 16);
    *buf = 136446722;
    v52 = "__nw_protocol_input_available";
    if (!v24)
    {
      v24 = "invalid";
    }

    v53 = 2082;
    v54 = v24;
    v55 = 2048;
    v56 = v3;
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v25, &type, &v49))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_106;
      }

      v28 = *(v3 + 16);
      if (!v28)
      {
        v28 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_input_available";
      v53 = 2082;
      v54 = v28;
      v55 = 2048;
      v56 = v3;
      v29 = "%{public}s protocol %{public}s (%p) has invalid input_available callback";
    }

    else if (v49 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v40 = os_log_type_enabled(v26, type);
      if (v39)
      {
        if (v40)
        {
          v41 = *(v3 + 16);
          if (!v41)
          {
            v41 = "invalid";
          }

          *buf = 136446978;
          v52 = "__nw_protocol_input_available";
          v53 = 2082;
          v54 = v41;
          v55 = 2048;
          v56 = v3;
          v57 = 2082;
          v58 = v39;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v39);
        goto LABEL_106;
      }

      if (!v40)
      {
LABEL_106:
        if (v25)
        {
          free(v25);
        }

LABEL_22:
        if ((v10 & 1) == 0)
        {
          v14 = *(v2 + 40);
          if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
          {
            v15 = *(v2 + 88);
            if (v15)
            {
              v16 = v15 - 1;
              *(v2 + 88) = v16;
              if (!v16)
              {
                v17 = *(v2 + 64);
                if (v17)
                {
                  *(v2 + 64) = 0;
                  v17[2](v17);
                  _Block_release(v17);
                }

                if (*(v2 + 72))
                {
                  v18 = *(v2 + 64);
                  if (v18)
                  {
                    _Block_release(v18);
                  }
                }

                free(v2);
              }
            }
          }
        }

        if ((v6 & 1) == 0)
        {
          v19 = *(v3 + 40);
          if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v20 = *(v3 + 88);
            if (v20)
            {
              v21 = v20 - 1;
              *(v3 + 88) = v21;
              if (!v21)
              {
                v22 = *(v3 + 64);
                if (v22)
                {
                  *(v3 + 64) = 0;
                  v22[2](v22);
                  _Block_release(v22);
                }

                if (*(v3 + 72))
                {
                  v23 = *(v3 + 64);
                  if (v23)
                  {
                    _Block_release(v23);
                  }
                }

                goto LABEL_45;
              }
            }
          }
        }

        return;
      }

      v48 = *(v3 + 16);
      if (!v48)
      {
        v48 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_input_available";
      v53 = 2082;
      v54 = v48;
      v55 = 2048;
      v56 = v3;
      v29 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace";
    }

    else
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_106;
      }

      v47 = *(v3 + 16);
      if (!v47)
      {
        v47 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_input_available";
      v53 = 2082;
      v54 = v47;
      v55 = 2048;
      v56 = v3;
      v29 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v26, v27, v29, buf, 0x20u);
    goto LABEL_106;
  }

  __nwlog_obj();
  *buf = 136446210;
  v52 = "__nw_protocol_input_available";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (!__nwlog_fault(v3, &type, &v49))
  {
LABEL_115:
    if (!v3)
    {
      return;
    }

    goto LABEL_45;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_115;
    }

    *buf = 136446210;
    v52 = "__nw_protocol_input_available";
    v32 = "%{public}s called with null protocol";
    goto LABEL_114;
  }

  if (v49 != 1)
  {
    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_115;
    }

    *buf = 136446210;
    v52 = "__nw_protocol_input_available";
    v32 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_114;
  }

  backtrace_string = __nw_create_backtrace_string();
  v30 = __nwlog_obj();
  v31 = type;
  v46 = os_log_type_enabled(v30, type);
  if (!backtrace_string)
  {
    if (!v46)
    {
      goto LABEL_115;
    }

    *buf = 136446210;
    v52 = "__nw_protocol_input_available";
    v32 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_114;
  }

  if (v46)
  {
    *buf = 136446466;
    v52 = "__nw_protocol_input_available";
    v53 = 2082;
    v54 = backtrace_string;
    v44 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_88;
  }

LABEL_89:
  free(backtrace_string);
  if (v3)
  {
LABEL_45:
    free(v3);
  }
}

void nw_protocol_plugin_metadata_prepare_for_reissue(uint64_t a1, char a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (gLogDatapath == 1)
    {
      v29 = a2;
      v30 = __nwlog_obj();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
      a2 = v29;
      if (v31)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_prepare_for_reissue";
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s discarding pending input and output", buf, 0xCu);
        a2 = v29;
      }
    }

    v3 = *(a1 + 142);
    *(a1 + 136) = 0;
    *(a1 + 142) = v3 & 0xC2 | 0x20;
    *(a1 + 141) = 3;
    v4 = gLogDatapath;
    if ((a2 & 1) == 0)
    {
      if (gLogDatapath)
      {
        v34 = __nwlog_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_temp_frame_array";
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
        }
      }

      v5 = *a1;
      if (*a1)
      {
        *(v5 + 40) = type;
        v6 = *(a1 + 8);
        *type = v5;
        v39 = v6;
        *a1 = 0;
        *(a1 + 8) = a1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v41 = &__block_descriptor_tmp_21_49595;
        v42 = 0;
        do
        {
          v7 = *type;
          if (!*type)
          {
            break;
          }

          v8 = *(*type + 32);
          v9 = *(*type + 40);
          v10 = (v8 + 40);
          if (!v8)
          {
            v10 = &v39;
          }

          *v10 = v9;
          *v9 = v8;
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      v4 = gLogDatapath;
    }

    v11 = (a1 + 16);
    if (v4)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v12 = *v11;
    if (*v11)
    {
      *(v12 + 40) = type;
      v13 = *(a1 + 24);
      *type = v12;
      v39 = v13;
      *(a1 + 16) = 0;
      *(a1 + 24) = v11;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v41 = &__block_descriptor_tmp_21_49595;
      v42 = 0;
      do
      {
        v14 = *type;
        if (!*type)
        {
          break;
        }

        v15 = *(*type + 32);
        v16 = *(*type + 40);
        v17 = (v15 + 40);
        if (!v15)
        {
          v17 = &v39;
        }

        *v17 = v16;
        *v16 = v15;
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v18 = (a1 + 32);
    if (gLogDatapath == 1)
    {
      v32 = __nwlog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v19 = *v18;
    if (*v18)
    {
      *(v19 + 40) = type;
      v20 = *(a1 + 40);
      *type = v19;
      v39 = v20;
      *(a1 + 32) = 0;
      *(a1 + 40) = v18;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v41 = &__block_descriptor_tmp_21_49595;
      v42 = 0;
      do
      {
        v21 = *type;
        if (!*type)
        {
          break;
        }

        v22 = *(*type + 32);
        v23 = *(*type + 40);
        v24 = (v22 + 40);
        if (!v22)
        {
          v24 = &v39;
        }

        *v24 = v23;
        *v23 = v22;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    nw_protocol_plugin_metadata_resume_input(a1, 3);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_plugin_metadata_prepare_for_reissue";
  v25 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v25, type, &v37))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (!os_log_type_enabled(v26, type[0]))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_prepare_for_reissue";
      v28 = "%{public}s called with null metadata_plugin";
      goto LABEL_49;
    }

    if (v37 != 1)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (!os_log_type_enabled(v26, type[0]))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_prepare_for_reissue";
      v28 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = type[0];
    v36 = os_log_type_enabled(v26, type[0]);
    if (backtrace_string)
    {
      if (v36)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_prepare_for_reissue";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_50;
    }

    if (v36)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_prepare_for_reissue";
      v28 = "%{public}s called with null metadata_plugin, no backtrace";
LABEL_49:
      _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
    }
  }

LABEL_50:
  if (v25)
  {
    free(v25);
  }
}

uint64_t nw_protocol_plugins_reset(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_plugins_reset";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_plugins_reset";
      v9 = "%{public}s called with null protocol";
      goto LABEL_33;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_plugins_reset";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_plugins_reset";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_33;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_plugins_reset";
      v18 = 2082;
      v19 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v6)
    {
      return 0;
    }

LABEL_35:
    free(v6);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_plugins_reset";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_plugins_reset";
      v9 = "%{public}s called with null protocol->handle";
      goto LABEL_33;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_plugins_reset";
      v9 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_33;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (v12)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_protocol_plugins_reset";
        v18 = 2082;
        v19 = v12;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v12);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_protocol_plugins_reset";
      v9 = "%{public}s called with null protocol->handle, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  nw_protocol_plugins_handle_reset(handle + 64, a1, a2);

  return nw_protocol_common_reset(a1, a2);
}

void nw_protocol_plugins_handle_reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_plugins_handle_reset";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugins_handle_reset";
      v12 = "%{public}s called with null plugins";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_protocol_plugins_handle_reset";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null plugins, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_43:
        if (!v9)
        {
          return;
        }

LABEL_44:
        free(v9);
        return;
      }

      if (!v16)
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugins_handle_reset";
      v12 = "%{public}s called with null plugins, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugins_handle_reset";
      v12 = "%{public}s called with null plugins, backtrace limit exceeded";
    }

LABEL_42:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_43;
  }

  if (a3)
  {
    if (gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = "invalid";
        if (a2 && *(a2 + 16))
        {
          v14 = *(a2 + 16);
        }

        *buf = 136446722;
        v22 = "nw_protocol_plugins_handle_reset";
        v23 = 2080;
        v24 = v14;
        v25 = 2048;
        v26 = a2;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
      }
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      nw_protocol_plugin_metadata_reset(v6);
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        v8(a2, a3);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_plugins_handle_reset";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v9, &type, &v19))
  {
    goto LABEL_43;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v22 = "nw_protocol_plugins_handle_reset";
    v12 = "%{public}s called with null other_protocol";
    goto LABEL_42;
  }

  if (v19 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v22 = "nw_protocol_plugins_handle_reset";
    v12 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_42;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v18 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v22 = "nw_protocol_plugins_handle_reset";
    v12 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_42;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_protocol_plugins_handle_reset";
    v23 = 2082;
    v24 = v17;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_44;
  }
}

void nw_protocol_plugins_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_plugins_error";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v13, &type, &v33))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v36 = "nw_protocol_plugins_error";
      v16 = "%{public}s called with null protocol";
      goto LABEL_63;
    }

    if (v33 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v36 = "nw_protocol_plugins_error";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_63;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v27 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v36 = "nw_protocol_plugins_error";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_63;
    }

    if (v27)
    {
      *buf = 136446466;
      v36 = "nw_protocol_plugins_error";
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_64:
    if (!v13)
    {
      return;
    }

    goto LABEL_65;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_plugins_error";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v13, &type, &v33))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v36 = "nw_protocol_plugins_error";
      v16 = "%{public}s called with null protocol->handle";
      goto LABEL_63;
    }

    if (v33 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v36 = "nw_protocol_plugins_error";
      v16 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_63;
    }

    v28 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v29 = os_log_type_enabled(v14, type);
    if (v28)
    {
      if (v29)
      {
        *buf = 136446466;
        v36 = "nw_protocol_plugins_error";
        v37 = 2082;
        v38 = v28;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v28);
      if (!v13)
      {
        return;
      }

LABEL_65:
      free(v13);
      return;
    }

    if (v29)
    {
      *buf = 136446210;
      v36 = "nw_protocol_plugins_error";
      v16 = "%{public}s called with null protocol->handle, no backtrace";
LABEL_63:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_64;
    }

    goto LABEL_64;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_plugins_handle_error";
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
          v36 = "nw_protocol_plugins_handle_error";
          v20 = "%{public}s called with null other_protocol";
LABEL_68:
          _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v30 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v31 = os_log_type_enabled(v18, type);
        if (v30)
        {
          if (v31)
          {
            *buf = 136446466;
            v36 = "nw_protocol_plugins_handle_error";
            v37 = 2082;
            v38 = v30;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v30);
          goto LABEL_69;
        }

        if (v31)
        {
          *buf = 136446210;
          v36 = "nw_protocol_plugins_handle_error";
          v20 = "%{public}s called with null other_protocol, no backtrace";
          goto LABEL_68;
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v36 = "nw_protocol_plugins_handle_error";
          v20 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_68;
        }
      }
    }

LABEL_69:
    if (v17)
    {
      free(v17);
    }

    a2 = 0;
    goto LABEL_15;
  }

  if (gLogDatapath == 1)
  {
    v21 = a3;
    v22 = a2;
    v23 = __nwlog_obj();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    a2 = v22;
    a3 = v21;
    if (v24)
    {
      identifier = a1->identifier;
      if (!identifier)
      {
        identifier = "invalid";
      }

      *buf = 136446722;
      v36 = "nw_protocol_plugins_handle_error";
      v37 = 2080;
      v38 = identifier;
      v39 = 2048;
      v40 = a1;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
      a2 = v22;
      a3 = v21;
    }
  }

  v5 = handle[11];
  if (!v5 || (*(v5 + 108) & 0x20) == 0)
  {
    v6 = handle[9];
    if (v6)
    {
      if ((*(v6 + 142) & 2) != 0 || (v7 = a2, v8 = a3, v9 = nw_protocol_plugin_metadata_handle_eof(handle[9], a1), a3 = v8, !v9))
      {
        *(v6 + 136) = a3;
        return;
      }

      a2 = v7;
      v5 = handle[11];
    }

    if (!v5)
    {
LABEL_15:
      nw_protocol_common_error(a1, a2);
      return;
    }

    *(v5 + 72) = a3;
    if ((*(v5 + 108) & 0x10) != 0)
    {
      if (gLogDatapath == 1)
      {
        v32 = __nwlog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v36 = "nw_protocol_plugin_retry_error";
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s holding onto error because reissuing", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = *(v5 + 48);
      if (!v10)
      {
        goto LABEL_15;
      }

      v11 = a2;
      v12 = v10(a1);
      a2 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }
}

void nw_protocol_plugins_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (a2)
      {
        if (gLogDatapath == 1)
        {
          v35 = a2;
          v36 = a1;
          v37 = __nwlog_obj();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
          a2 = v35;
          v39 = v38;
          a1 = v36;
          if (v39)
          {
            name = v36->identifier->name;
            if (!name)
            {
              name = "invalid";
            }

            *buf = 136446722;
            v58 = "nw_protocol_plugins_handle_input_finished";
            v59 = 2080;
            v60 = name;
            v61 = 2048;
            v62 = v36;
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
            a1 = v36;
            a2 = v35;
          }
        }

        v3 = handle[11];
        if (v3 && (*(v3 + 108) & 0x20) != 0)
        {
          goto LABEL_29;
        }

        v4 = handle[9];
        if (!v4)
        {
          goto LABEL_11;
        }

        v5 = *(v4 + 142);
        if ((v5 & 2) == 0)
        {
          v6 = a2;
          v7 = a1;
          if (nw_protocol_plugin_metadata_handle_eof(handle[9], a1))
          {
            v3 = handle[11];
            a2 = v6;
            a1 = v7;
LABEL_11:
            if (!v3)
            {
LABEL_16:
              nw_protocol_common_input_finished(a1, a2);
              return;
            }

            v8 = *(v3 + 108);
            if ((v8 & 0x10) != 0)
            {
              if (gLogDatapath == 1)
              {
                v14 = a2;
                v15 = a1;
                v16 = __nwlog_obj();
                v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
                a2 = v14;
                v18 = v17;
                a1 = v15;
                if (v18)
                {
                  *buf = 136446210;
                  v58 = "nw_protocol_plugin_retry_input_finished";
                  _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s holding onto input_finished because reissuing", buf, 0xCu);
                  a1 = v15;
                  a2 = v14;
                }
              }
            }

            else if (v8)
            {
              if (gLogDatapath == 1)
              {
                v50 = a2;
                v51 = a1;
                v52 = __nwlog_obj();
                v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
                a2 = v50;
                v54 = v53;
                a1 = v51;
                if (v54)
                {
                  *buf = 136446210;
                  v58 = "nw_protocol_plugin_retry_input_finished";
                  _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s holding onto input_finished because getting input frames", buf, 0xCu);
                  a1 = v51;
                  a2 = v50;
                }
              }

              *(v3 + 108) |= 4u;
            }

            else
            {
              v9 = *(v3 + 48);
              if (!v9)
              {
                goto LABEL_16;
              }

              v10 = a1;
              v11 = a2;
              v12 = v9();
              a2 = v11;
              v13 = v12;
              a1 = v10;
              if (!v13)
              {
                goto LABEL_16;
              }
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_29;
            }

            v19 = a2;
            v20 = a1;
            v21 = __nwlog_obj();
            v47 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
            a2 = v19;
            v48 = v47;
            a1 = v20;
            if (!v48)
            {
              goto LABEL_29;
            }

            v49 = "invalid";
            if (v20->identifier)
            {
              v49 = v20->identifier->name;
            }

            *buf = 136446466;
            v58 = "nw_protocol_plugins_handle_input_finished";
            v59 = 2080;
            v60 = v49;
            v25 = "%{public}s retry plugin for %s caused input_finished to defer input_finished";
            goto LABEL_73;
          }

          v5 = *(v4 + 142);
          a2 = v6;
          a1 = v7;
        }

        *(v4 + 142) = v5 | 4;
        if (gLogDatapath != 1)
        {
          goto LABEL_29;
        }

        v19 = a2;
        v20 = a1;
        v21 = __nwlog_obj();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        a2 = v19;
        v23 = v22;
        a1 = v20;
        if (!v23)
        {
          goto LABEL_29;
        }

        v24 = "invalid";
        if (v20->identifier)
        {
          v24 = v20->identifier->name;
        }

        *buf = 136446466;
        v58 = "nw_protocol_plugins_handle_input_finished";
        v59 = 2080;
        v60 = v24;
        v25 = "%{public}s metadata plugin for %s caused input_finished to defer input_finished";
LABEL_73:
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, v25, buf, 0x16u);
        a1 = v20;
        a2 = v19;
LABEL_29:
        nw_protocol_common_input_available(a1, a2);
        return;
      }

      v30 = a1;
      __nwlog_obj();
      *buf = 136446210;
      v58 = "nw_protocol_plugins_handle_input_finished";
      v31 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (__nwlog_fault(v31, &type, &v55))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v32 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v32, type))
          {
            *buf = 136446210;
            v58 = "nw_protocol_plugins_handle_input_finished";
            v34 = "%{public}s called with null other_protocol";
LABEL_83:
            _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
          }
        }

        else if (v55 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v33 = type;
          v46 = os_log_type_enabled(v32, type);
          if (backtrace_string)
          {
            if (v46)
            {
              *buf = 136446466;
              v58 = "nw_protocol_plugins_handle_input_finished";
              v59 = 2082;
              v60 = backtrace_string;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_84;
          }

          if (v46)
          {
            *buf = 136446210;
            v58 = "nw_protocol_plugins_handle_input_finished";
            v34 = "%{public}s called with null other_protocol, no backtrace";
            goto LABEL_83;
          }
        }

        else
        {
          v32 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v32, type))
          {
            *buf = 136446210;
            v58 = "nw_protocol_plugins_handle_input_finished";
            v34 = "%{public}s called with null other_protocol, backtrace limit exceeded";
            goto LABEL_83;
          }
        }
      }

LABEL_84:
      if (v31)
      {
        free(v31);
      }

      a2 = 0;
      a1 = v30;
      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_plugins_input_finished";
    v26 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v26, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        v58 = "nw_protocol_plugins_input_finished";
        v29 = "%{public}s called with null protocol->handle";
        goto LABEL_78;
      }

      if (v55 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        v58 = "nw_protocol_plugins_input_finished";
        v29 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_78;
      }

      v43 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v44 = os_log_type_enabled(v27, type);
      if (v43)
      {
        if (v44)
        {
          *buf = 136446466;
          v58 = "nw_protocol_plugins_input_finished";
          v59 = 2082;
          v60 = v43;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        if (v26)
        {
          goto LABEL_80;
        }

        return;
      }

      if (v44)
      {
        *buf = 136446210;
        v58 = "nw_protocol_plugins_input_finished";
        v29 = "%{public}s called with null protocol->handle, no backtrace";
LABEL_78:
        _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_plugins_input_finished";
    v26 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v26, &type, &v55))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      v58 = "nw_protocol_plugins_input_finished";
      v29 = "%{public}s called with null protocol";
      goto LABEL_78;
    }

    if (v55 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      v58 = "nw_protocol_plugins_input_finished";
      v29 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_78;
    }

    v41 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v42 = os_log_type_enabled(v27, type);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      v58 = "nw_protocol_plugins_input_finished";
      v29 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_78;
    }

    if (v42)
    {
      *buf = 136446466;
      v58 = "nw_protocol_plugins_input_finished";
      v59 = 2082;
      v60 = v41;
      _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_79:
  if (v26)
  {
LABEL_80:
    free(v26);
  }
}

void nw_protocol_plugin_retry_reissue_output_frames(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, int a7, const void *a8, const void *a9, uint64_t a10)
{
  v110 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v31 = _os_log_send_and_compose_impl();
    v101 = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v31, &v101, &v100))
    {
      goto LABEL_42;
    }

    if (v101 == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null retry";
    }

    else if (v100 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v101;
      v58 = os_log_type_enabled(v32, v101);
      if (backtrace_string)
      {
        if (v58)
        {
          *buf = 136446466;
          v103 = "nw_protocol_plugin_retry_reissue_output_frames";
          v104 = 2082;
          v105 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null retry, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_42;
      }

      if (!v58)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null retry, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null retry, backtrace limit exceeded";
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v31 = _os_log_send_and_compose_impl();
    v101 = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v31, &v101, &v100))
    {
      goto LABEL_42;
    }

    if (v101 == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null protocol";
      goto LABEL_40;
    }

    if (v100 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v101;
      v60 = os_log_type_enabled(v32, v101);
      if (v59)
      {
        if (!v60)
        {
          goto LABEL_123;
        }

        *buf = 136446466;
        v103 = "nw_protocol_plugin_retry_reissue_output_frames";
        v104 = 2082;
        v105 = v59;
        v61 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_122;
      }

      if (!v60)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    v41 = v32;
    v42 = v33;
LABEL_41:
    _os_log_impl(&dword_181A37000, v41, v42, v34, buf, 0xCu);
    goto LABEL_42;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v31 = _os_log_send_and_compose_impl();
    v101 = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v31, &v101, &v100))
    {
      goto LABEL_42;
    }

    if (v101 == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null context";
      goto LABEL_40;
    }

    if (v100 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v101;
      v62 = os_log_type_enabled(v32, v101);
      if (v59)
      {
        if (!v62)
        {
          goto LABEL_123;
        }

        *buf = 136446466;
        v103 = "nw_protocol_plugin_retry_reissue_output_frames";
        v104 = 2082;
        v105 = v59;
        v61 = "%{public}s called with null context, dumping backtrace:%{public}s";
        goto LABEL_122;
      }

      if (!v62)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null context, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null context, backtrace limit exceeded";
    }

    goto LABEL_40;
  }

  if (!a8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v31 = _os_log_send_and_compose_impl();
    v101 = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v31, &v101, &v100))
    {
      goto LABEL_42;
    }

    if (v101 == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null _output_frames_handler";
      goto LABEL_40;
    }

    if (v100 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v101;
      v63 = os_log_type_enabled(v32, v101);
      if (v59)
      {
        if (!v63)
        {
          goto LABEL_123;
        }

        *buf = 136446466;
        v103 = "nw_protocol_plugin_retry_reissue_output_frames";
        v104 = 2082;
        v105 = v59;
        v61 = "%{public}s called with null _output_frames_handler, dumping backtrace:%{public}s";
        goto LABEL_122;
      }

      if (!v63)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null _output_frames_handler, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null _output_frames_handler, backtrace limit exceeded";
    }

    goto LABEL_40;
  }

  if (!a9)
  {
    __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v31 = _os_log_send_and_compose_impl();
    v101 = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v31, &v101, &v100))
    {
      goto LABEL_42;
    }

    if (v101 == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null _before_connect_handler";
      goto LABEL_40;
    }

    if (v100 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v101;
      v64 = os_log_type_enabled(v32, v101);
      if (v59)
      {
        if (!v64)
        {
          goto LABEL_123;
        }

        *buf = 136446466;
        v103 = "nw_protocol_plugin_retry_reissue_output_frames";
        v104 = 2082;
        v105 = v59;
        v61 = "%{public}s called with null _before_connect_handler, dumping backtrace:%{public}s";
        goto LABEL_122;
      }

      if (!v64)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null _before_connect_handler, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null _before_connect_handler, backtrace limit exceeded";
    }

    goto LABEL_40;
  }

  if (!a10)
  {
    __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v31 = _os_log_send_and_compose_impl();
    v101 = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v31, &v101, &v100))
    {
      goto LABEL_42;
    }

    if (v101 == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null destroy_handler";
      goto LABEL_40;
    }

    if (v100 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v101;
      v65 = os_log_type_enabled(v32, v101);
      if (v59)
      {
        if (!v65)
        {
          goto LABEL_123;
        }

        *buf = 136446466;
        v103 = "nw_protocol_plugin_retry_reissue_output_frames";
        v104 = 2082;
        v105 = v59;
        v61 = "%{public}s called with null destroy_handler, dumping backtrace:%{public}s";
LABEL_122:
        _os_log_impl(&dword_181A37000, v32, v33, v61, buf, 0x16u);
LABEL_123:
        free(v59);
        if (!v31)
        {
          return;
        }

LABEL_43:
        free(v31);
        return;
      }

      if (!v65)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null destroy_handler, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v101;
      if (!os_log_type_enabled(v32, v101))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s called with null destroy_handler, backtrace limit exceeded";
    }

    goto LABEL_40;
  }

  v16 = *(a1 + 108);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if ((v16 & 0x20) == 0)
  {
    v18 = a6;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v19 = *(a2 + 16);
      if (!v19)
      {
        v19 = "invalid";
      }

      *buf = 136446722;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v104 = 2082;
      v105 = v19;
      v106 = 1024;
      LODWORD(v107) = a6;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s Rebuilding stack and reissuing output frames for %{public}s, behavior %u", buf, 0x1Cu);
    }

    *(a1 + 108) = *(a1 + 108) & 0xFF69 | 0x10;
    if (a4)
    {
      v20 = a4;
      v21 = _nw_endpoint_get_type(v20);

      if (v21 == 4)
      {
        v22 = v20;
        v23 = _nw_endpoint_copy_host_port_endpoint_for_url(v22);

        v24 = nw_context_copy_registered_endpoint(a3, v23);
        v25 = *(a1 + 8);
        if ((v25 & 1) != 0 && *a1)
        {
          v26 = v23;
          v27 = v24;
          os_release(*a1);
          v24 = v27;
          v23 = v26;
          v25 = *(a1 + 8);
        }

        *a1 = v24;
        *(a1 + 8) = v25 | 1;
        if (a5)
        {
          goto LABEL_63;
        }

        v28 = *(a2 + 48);
        if (v28)
        {
          v29 = *(v28 + 40);
          v30 = *(a2 + 48);
          if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v30 = *(v28 + 64)) != 0)
          {
            v43 = *(v30 + 88);
            v94 = 0;
            if (v43)
            {
              *(v30 + 88) = v43 + 1;
            }
          }

          else
          {
            v94 = 1;
          }

          v44 = *(v28 + 24);
          if (v44)
          {
            v45 = *(v44 + 112);
            if (v45)
            {
              a5 = v45(v28);
              if (v94)
              {
LABEL_63:
                nw_parameters_set_url_endpoint(a5, v22);
                if (v23)
                {
                  os_release(v23);
                }

                goto LABEL_65;
              }

LABEL_52:
              v46 = *(v28 + 40);
              if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v28 = *(v28 + 64)) != 0)
              {
                v47 = *(v28 + 88);
                if (v47)
                {
                  v48 = v47 - 1;
                  *(v28 + 88) = v48;
                  if (!v48)
                  {
                    v49 = *(v28 + 64);
                    if (v49)
                    {
                      *(v28 + 64) = 0;
                      aBlocka = v49;
                      v49[2](v49);
                      _Block_release(aBlocka);
                    }

                    if (*(v28 + 72))
                    {
                      v50 = *(v28 + 64);
                      if (v50)
                      {
                        _Block_release(v50);
                      }
                    }

                    free(v28);
                  }
                }
              }

              goto LABEL_63;
            }
          }

          *v92 = v23;
          __nwlog_obj();
          v66 = *(v28 + 16);
          *buf = 136446722;
          v103 = "__nw_protocol_get_parameters";
          if (!v66)
          {
            v66 = "invalid";
          }

          v104 = 2082;
          v105 = v66;
          v106 = 2048;
          v107 = v28;
          v101 = OS_LOG_TYPE_ERROR;
          v100 = 0;
          v67 = _os_log_send_and_compose_impl();
          if (__nwlog_fault(v67, &v101, &v100))
          {
            if (v101 == OS_LOG_TYPE_FAULT)
            {
              v68 = __nwlog_obj();
              v69 = v101;
              if (!os_log_type_enabled(v68, v101))
              {
                goto LABEL_179;
              }

              v70 = *(v28 + 16);
              if (!v70)
              {
                v70 = "invalid";
              }

              *buf = 136446722;
              v103 = "__nw_protocol_get_parameters";
              v104 = 2082;
              v105 = v70;
              v106 = 2048;
              v107 = v28;
              v71 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_177:
              v85 = v68;
              v86 = v69;
LABEL_178:
              _os_log_impl(&dword_181A37000, v85, v86, v71, buf, 0x20u);
              goto LABEL_179;
            }

            if (v100 != 1)
            {
              v68 = __nwlog_obj();
              v69 = v101;
              if (!os_log_type_enabled(v68, v101))
              {
                goto LABEL_179;
              }

              v84 = *(v28 + 16);
              if (!v84)
              {
                v84 = "invalid";
              }

              *buf = 136446722;
              v103 = "__nw_protocol_get_parameters";
              v104 = 2082;
              v105 = v84;
              v106 = 2048;
              v107 = v28;
              v71 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
              goto LABEL_177;
            }

            v78 = __nw_create_backtrace_string();
            log = __nwlog_obj();
            type = v101;
            v79 = os_log_type_enabled(log, v101);
            if (v78)
            {
              if (v79)
              {
                v80 = *(v28 + 16);
                if (!v80)
                {
                  v80 = "invalid";
                }

                *buf = 136446978;
                v103 = "__nw_protocol_get_parameters";
                v104 = 2082;
                v105 = v80;
                v106 = 2048;
                v107 = v28;
                v108 = 2082;
                v109 = v78;
                _os_log_impl(&dword_181A37000, log, type, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v78);
            }

            else if (v79)
            {
              v89 = *(v28 + 16);
              if (!v89)
              {
                v89 = "invalid";
              }

              *buf = 136446722;
              v103 = "__nw_protocol_get_parameters";
              v104 = 2082;
              v105 = v89;
              v106 = 2048;
              v107 = v28;
              v71 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
              v85 = log;
              v86 = type;
              goto LABEL_178;
            }
          }

LABEL_179:
          if (v67)
          {
            free(v67);
          }

          a5 = 0;
          v18 = a6;
          v23 = *v92;
          if (v94)
          {
            goto LABEL_63;
          }

          goto LABEL_52;
        }

        __nwlog_obj();
        *buf = 136446210;
        v103 = "__nw_protocol_get_parameters";
        v101 = OS_LOG_TYPE_ERROR;
        v100 = 0;
        v72 = _os_log_send_and_compose_impl();
        if (__nwlog_fault(v72, &v101, &v100))
        {
          if (v101 == OS_LOG_TYPE_FAULT)
          {
            v73 = __nwlog_obj();
            v74 = v101;
            if (os_log_type_enabled(v73, v101))
            {
              *buf = 136446210;
              v103 = "__nw_protocol_get_parameters";
              v75 = "%{public}s called with null protocol";
              v76 = v73;
              v77 = v74;
LABEL_191:
              _os_log_impl(&dword_181A37000, v76, v77, v75, buf, 0xCu);
            }
          }

          else if (v100 == 1)
          {
            v81 = __nw_create_backtrace_string();
            v82 = __nwlog_obj();
            v93 = v101;
            v83 = os_log_type_enabled(v82, v101);
            if (v81)
            {
              if (v83)
              {
                *buf = 136446466;
                v103 = "__nw_protocol_get_parameters";
                v104 = 2082;
                v105 = v81;
                _os_log_impl(&dword_181A37000, v82, v93, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v81);
              goto LABEL_192;
            }

            if (v83)
            {
              *buf = 136446210;
              v103 = "__nw_protocol_get_parameters";
              v75 = "%{public}s called with null protocol, no backtrace";
              v76 = v82;
              v77 = v93;
              goto LABEL_191;
            }
          }

          else
          {
            v87 = __nwlog_obj();
            v88 = v101;
            if (os_log_type_enabled(v87, v101))
            {
              *buf = 136446210;
              v103 = "__nw_protocol_get_parameters";
              v75 = "%{public}s called with null protocol, backtrace limit exceeded";
              v76 = v87;
              v77 = v88;
              goto LABEL_191;
            }
          }
        }

LABEL_192:
        if (v72)
        {
          free(v72);
        }

        a5 = 0;
        v18 = a6;
        goto LABEL_63;
      }

      v39 = os_retain(v20);
      v40 = *(a1 + 8);
      if (v40)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v39 = 0;
      v40 = *(a1 + 8);
      if (v40)
      {
LABEL_35:
        if (*a1)
        {
          os_release(*a1);
          v40 = *(a1 + 8);
        }
      }
    }

    *a1 = v39;
    *(a1 + 8) = v40 | 1;
LABEL_65:
    *(a1 + 76) = 0;
    *(a1 + 80) = 0;
    *(a1 + 84) = a7;
    v51 = _Block_copy(a8);
    v52 = *(a1 + 24);
    if ((v52 & 1) != 0 && *(a1 + 16))
    {
      v53 = v51;
      _Block_release(*(a1 + 16));
      v51 = v53;
      v52 = *(a1 + 24);
    }

    *(a1 + 16) = v51;
    *(a1 + 24) = v52 | 1;
    v54 = _Block_copy(a9);
    v55 = *(a1 + 64);
    if (v55)
    {
      if (*(a1 + 56))
      {
        v56 = v54;
        _Block_release(*(a1 + 56));
        v54 = v56;
        v55 = *(a1 + 64);
      }
    }

    *(a1 + 56) = v54;
    *(a1 + 64) = v55 | 1;
    *(a1 + 108) |= 0x20u;
    nw_protocol_plugin_retry_begin_async(a1);
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 0x40000000;
    v98[2] = __nw_protocol_plugin_retry_reissue_output_frames_block_invoke;
    v98[3] = &unk_1E6A2BDB8;
    v98[4] = a10;
    v98[5] = a1;
    v99 = v18;
    v98[6] = a2;
    nw_queue_context_async(a3, v98);
    return;
  }

  *buf = 136446210;
  v103 = "nw_protocol_plugin_retry_reissue_output_frames";
  v31 = _os_log_send_and_compose_impl();
  v101 = OS_LOG_TYPE_ERROR;
  v100 = 0;
  if (!__nwlog_fault(v31, &v101, &v100))
  {
    goto LABEL_42;
  }

  if (v101 == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    v33 = v101;
    if (!os_log_type_enabled(gLogObj, v101))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v34 = "%{public}s trying to reissue output frames when an async reissue is pending";
    goto LABEL_40;
  }

  if (v100 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    v33 = v101;
    if (!os_log_type_enabled(gLogObj, v101))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v34 = "%{public}s trying to reissue output frames when an async reissue is pending, backtrace limit exceeded";
    goto LABEL_40;
  }

  v35 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v36 = gLogObj;
  v37 = v101;
  v38 = os_log_type_enabled(gLogObj, v101);
  if (!v35)
  {
    if (v38)
    {
      *buf = 136446210;
      v103 = "nw_protocol_plugin_retry_reissue_output_frames";
      v34 = "%{public}s trying to reissue output frames when an async reissue is pending, no backtrace";
      v41 = v36;
      v42 = v37;
      goto LABEL_41;
    }

LABEL_42:
    if (!v31)
    {
      return;
    }

    goto LABEL_43;
  }

  if (v38)
  {
    *buf = 136446466;
    v103 = "nw_protocol_plugin_retry_reissue_output_frames";
    v104 = 2082;
    v105 = v35;
    _os_log_impl(&dword_181A37000, v36, v37, "%{public}s trying to reissue output frames when an async reissue is pending, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v35);
  if (v31)
  {
    goto LABEL_43;
  }
}

void __nw_protocol_plugin_retry_reissue_output_frames_block_invoke(uint64_t a1)
{
  v143 = *MEMORY[0x1E69E9840];
  if (!nw_protocol_plugin_retry_end_async(*(a1 + 40)))
  {
    v8 = *(*(a1 + 32) + 16);

    v8();
    return;
  }

  *(*(a1 + 40) + 108) &= ~0x20u;
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = *(a1 + 48);
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = *(v4 + 40);
      v6 = *(v3 + 32);
      if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
      {
        v14 = *(v6 + 88);
        v7 = 0;
        if (v14)
        {
          *(v6 + 88) = v14 + 1;
        }
      }

      else
      {
        v7 = 1;
      }

      v16 = *(v3 + 40);
      v17 = v3;
      if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *(v3 + 64)) != 0)
      {
        v20 = *(v17 + 88);
        if (v20)
        {
          v18 = 0;
          *(v17 + 88) = v20 + 1;
          v19 = *(v4 + 24);
          if (!v19)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v18 = 0;
          v19 = *(v4 + 24);
          if (!v19)
          {
            goto LABEL_147;
          }
        }
      }

      else
      {
        v18 = 1;
        v19 = *(v4 + 24);
        if (!v19)
        {
          goto LABEL_147;
        }
      }

      v21 = *(v19 + 160);
      if (v21)
      {
        v21(v4, v3, 15, 0, 0);
        goto LABEL_32;
      }

LABEL_147:
      __nwlog_obj();
      v81 = *(v4 + 16);
      buf = 136446722;
      v136 = "__nw_protocol_notify";
      if (!v81)
      {
        v81 = "invalid";
      }

      v137 = 2082;
      v138 = v81;
      v139 = 2048;
      v140 = v4;
      type[0] = OS_LOG_TYPE_ERROR;
      v133 = 0;
      v131 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault(v131, type, &v133))
      {
        goto LABEL_223;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type[0];
        if (!os_log_type_enabled(v82, type[0]))
        {
          goto LABEL_223;
        }

        v84 = *(v4 + 16);
        if (!v84)
        {
          v84 = "invalid";
        }

        buf = 136446722;
        v136 = "__nw_protocol_notify";
        v137 = 2082;
        v138 = v84;
        v139 = 2048;
        v140 = v4;
        v85 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
      }

      else
      {
        if (v133 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v105 = __nwlog_obj();
          v83 = type[0];
          log = v105;
          v106 = os_log_type_enabled(v105, type[0]);
          if (backtrace_string)
          {
            if (v106)
            {
              v107 = *(v4 + 16);
              if (!v107)
              {
                v107 = "invalid";
              }

              buf = 136446978;
              v136 = "__nw_protocol_notify";
              v137 = 2082;
              v138 = v107;
              v139 = 2048;
              v140 = v4;
              v141 = 2082;
              v142 = backtrace_string;
              _os_log_impl(&dword_181A37000, log, v83, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", &buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_223;
          }

          if (!v106)
          {
LABEL_223:
            if (v131)
            {
              free(v131);
            }

LABEL_32:
            if ((v18 & 1) == 0)
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

                    free(v3);
                  }
                }
              }
            }

            if ((v7 & 1) == 0)
            {
              v27 = *(v4 + 40);
              if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
              {
                v28 = *(v4 + 88);
                if (v28)
                {
                  v29 = v28 - 1;
                  *(v4 + 88) = v29;
                  if (!v29)
                  {
                    v30 = *(v4 + 64);
                    if (v30)
                    {
                      *(v4 + 64) = 0;
                      v30[2](v30);
                      _Block_release(v30);
                    }

                    if (*(v4 + 72))
                    {
                      v31 = *(v4 + 64);
                      if (v31)
                      {
                        _Block_release(v31);
                      }
                    }

LABEL_55:
                    free(v4);
                  }
                }
              }
            }

LABEL_56:
            v32 = *(a1 + 48);
            v33 = *(v32 + 40);
            v34 = *(v32 + 48);
            v35 = v32;
            if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v35 = *(v32 + 64)) != 0)
            {
              v37 = *(v35 + 88);
              if (v37)
              {
                v36 = 0;
                *(v35 + 88) = v37 + 1;
                if (v34)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v36 = 0;
                if (v34)
                {
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v36 = 1;
              if (v34)
              {
LABEL_63:
                v38 = *(v34 + 40);
                v39 = v34;
                if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (v39 = *(v34 + 64)) != 0)
                {
                  v42 = *(v39 + 88);
                  if (v42)
                  {
                    v40 = 0;
                    *(v39 + 88) = v42 + 1;
                    v41 = *(v32 + 24);
                    if (!v41)
                    {
                      goto LABEL_155;
                    }
                  }

                  else
                  {
                    v40 = 0;
                    v41 = *(v32 + 24);
                    if (!v41)
                    {
                      goto LABEL_155;
                    }
                  }
                }

                else
                {
                  v40 = 1;
                  v41 = *(v32 + 24);
                  if (!v41)
                  {
                    goto LABEL_155;
                  }
                }

                v47 = *(v41 + 24);
                if (v47)
                {
                  v48 = v47(v32, v34);
                  if (v40)
                  {
LABEL_90:
                    if (v32)
                    {
                      v55 = v36;
                    }

                    else
                    {
                      v55 = 1;
                    }

                    if ((v55 & 1) == 0)
                    {
                      v56 = *(v32 + 40);
                      if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v32 = *(v32 + 64)) != 0)
                      {
                        v57 = *(v32 + 88);
                        if (v57)
                        {
                          v58 = v57 - 1;
                          *(v32 + 88) = v58;
                          if (!v58)
                          {
                            v59 = v48;
                            v60 = *(v32 + 64);
                            if (v60)
                            {
                              *(v32 + 64) = 0;
                              v60[2](v60);
                              _Block_release(v60);
                            }

                            if (*(v32 + 72))
                            {
                              v61 = *(v32 + 64);
                              if (v61)
                              {
                                _Block_release(v61);
                              }
                            }

                            free(v32);
                            v48 = v59;
                          }
                        }
                      }
                    }

                    if ((v48 & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v62 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v63 = *(*(a1 + 48) + 32);
                        v64 = "invalid";
                        if (v63)
                        {
                          if (v63[2])
                          {
                            v64 = v63[2];
                          }
                        }

                        buf = 136446722;
                        v136 = "nw_protocol_plugin_retry_reissue_output_frames_block_invoke";
                        v137 = 2048;
                        v138 = v63;
                        v139 = 2080;
                        v140 = v64;
                        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s Unable to connect protocol <%p:%s>", &buf, 0x20u);
                      }
                    }

                    return;
                  }

LABEL_79:
                  v49 = *(v34 + 40);
                  if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v34 = *(v34 + 64)) != 0)
                  {
                    v50 = *(v34 + 88);
                    if (v50)
                    {
                      v51 = v50 - 1;
                      *(v34 + 88) = v51;
                      if (!v51)
                      {
                        v52 = v48;
                        v53 = *(v34 + 64);
                        if (v53)
                        {
                          *(v34 + 64) = 0;
                          v53[2](v53);
                          _Block_release(v53);
                        }

                        if (*(v34 + 72))
                        {
                          v54 = *(v34 + 64);
                          if (v54)
                          {
                            _Block_release(v54);
                          }
                        }

                        free(v34);
                        v48 = v52;
                      }
                    }
                  }

                  goto LABEL_90;
                }

LABEL_155:
                __nwlog_obj();
                v86 = *(v32 + 16);
                buf = 136446722;
                v136 = "__nw_protocol_connect";
                if (!v86)
                {
                  v86 = "invalid";
                }

                v137 = 2082;
                v138 = v86;
                v139 = 2048;
                v140 = v32;
                v87 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                v133 = 0;
                v132 = v87;
                if (__nwlog_fault(v87, type, &v133))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v88 = __nwlog_obj();
                    v89 = type[0];
                    if (!os_log_type_enabled(v88, type[0]))
                    {
                      goto LABEL_231;
                    }

                    v90 = *(v32 + 16);
                    if (!v90)
                    {
                      v90 = "invalid";
                    }

                    buf = 136446722;
                    v136 = "__nw_protocol_connect";
                    v137 = 2082;
                    v138 = v90;
                    v139 = 2048;
                    v140 = v32;
                    v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
LABEL_229:
                    v124 = v88;
LABEL_230:
                    _os_log_impl(&dword_181A37000, v124, v89, v91, &buf, 0x20u);
                    goto LABEL_231;
                  }

                  if (v133 != 1)
                  {
                    v88 = __nwlog_obj();
                    v89 = type[0];
                    if (!os_log_type_enabled(v88, type[0]))
                    {
                      goto LABEL_231;
                    }

                    v123 = *(v32 + 16);
                    if (!v123)
                    {
                      v123 = "invalid";
                    }

                    buf = 136446722;
                    v136 = "__nw_protocol_connect";
                    v137 = 2082;
                    v138 = v123;
                    v139 = 2048;
                    v140 = v32;
                    v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
                    goto LABEL_229;
                  }

                  v108 = __nw_create_backtrace_string();
                  v109 = __nwlog_obj();
                  v89 = type[0];
                  loga = v109;
                  v110 = os_log_type_enabled(v109, type[0]);
                  if (v108)
                  {
                    if (v110)
                    {
                      v111 = *(v32 + 16);
                      if (!v111)
                      {
                        v111 = "invalid";
                      }

                      buf = 136446978;
                      v136 = "__nw_protocol_connect";
                      v137 = 2082;
                      v138 = v111;
                      v139 = 2048;
                      v140 = v32;
                      v141 = 2082;
                      v142 = v108;
                      _os_log_impl(&dword_181A37000, loga, v89, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", &buf, 0x2Au);
                    }

                    free(v108);
                  }

                  else if (v110)
                  {
                    v127 = *(v32 + 16);
                    if (!v127)
                    {
                      v127 = "invalid";
                    }

                    buf = 136446722;
                    v136 = "__nw_protocol_connect";
                    v137 = 2082;
                    v138 = v127;
                    v139 = 2048;
                    v140 = v32;
                    v91 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
                    v124 = loga;
                    goto LABEL_230;
                  }
                }

LABEL_231:
                if (v132)
                {
                  free(v132);
                }

                v48 = 0;
                if (v40)
                {
                  goto LABEL_90;
                }

                goto LABEL_79;
              }
            }

            __nwlog_obj();
            buf = 136446210;
            v136 = "__nw_protocol_connect";
            v43 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v133 = 0;
            if (__nwlog_fault(v43, type, &v133))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v44 = __nwlog_obj();
                v45 = type[0];
                if (os_log_type_enabled(v44, type[0]))
                {
                  buf = 136446210;
                  v136 = "__nw_protocol_connect";
                  v46 = "%{public}s called with null other_protocol";
LABEL_262:
                  _os_log_impl(&dword_181A37000, v44, v45, v46, &buf, 0xCu);
                }
              }

              else if (v133 == 1)
              {
                v115 = __nw_create_backtrace_string();
                v44 = __nwlog_obj();
                v45 = type[0];
                v116 = os_log_type_enabled(v44, type[0]);
                if (v115)
                {
                  if (v116)
                  {
                    buf = 136446466;
                    v136 = "__nw_protocol_connect";
                    v137 = 2082;
                    v138 = v115;
                    _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", &buf, 0x16u);
                  }

                  free(v115);
                  goto LABEL_263;
                }

                if (v116)
                {
                  buf = 136446210;
                  v136 = "__nw_protocol_connect";
                  v46 = "%{public}s called with null other_protocol, no backtrace";
                  goto LABEL_262;
                }
              }

              else
              {
                v44 = __nwlog_obj();
                v45 = type[0];
                if (os_log_type_enabled(v44, type[0]))
                {
                  buf = 136446210;
                  v136 = "__nw_protocol_connect";
                  v46 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                  goto LABEL_262;
                }
              }
            }

LABEL_263:
            if (v43)
            {
              free(v43);
            }

            v48 = 0;
            goto LABEL_90;
          }

          v126 = *(v4 + 16);
          if (!v126)
          {
            v126 = "invalid";
          }

          buf = 136446722;
          v136 = "__nw_protocol_notify";
          v137 = 2082;
          v138 = v126;
          v139 = 2048;
          v140 = v4;
          v85 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
          v122 = log;
LABEL_222:
          _os_log_impl(&dword_181A37000, v122, v83, v85, &buf, 0x20u);
          goto LABEL_223;
        }

        v82 = __nwlog_obj();
        v83 = type[0];
        if (!os_log_type_enabled(v82, type[0]))
        {
          goto LABEL_223;
        }

        v121 = *(v4 + 16);
        if (!v121)
        {
          v121 = "invalid";
        }

        buf = 136446722;
        v136 = "__nw_protocol_notify";
        v137 = 2082;
        v138 = v121;
        v139 = 2048;
        v140 = v4;
        v85 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
      }

      v122 = v82;
      goto LABEL_222;
    }

    __nwlog_obj();
    buf = 136446210;
    v136 = "__nw_protocol_notify";
    v4 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v133 = 0;
    if (__nwlog_fault(v4, type, &v133))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v98 = __nwlog_obj();
        v99 = type[0];
        if (!os_log_type_enabled(v98, type[0]))
        {
          goto LABEL_269;
        }

        buf = 136446210;
        v136 = "__nw_protocol_notify";
        v100 = "%{public}s called with null protocol";
        goto LABEL_268;
      }

      if (v133 != 1)
      {
        v98 = __nwlog_obj();
        v99 = type[0];
        if (!os_log_type_enabled(v98, type[0]))
        {
          goto LABEL_269;
        }

        buf = 136446210;
        v136 = "__nw_protocol_notify";
        v100 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_268;
      }

      v117 = __nw_create_backtrace_string();
      v98 = __nwlog_obj();
      v99 = type[0];
      v118 = os_log_type_enabled(v98, type[0]);
      if (v117)
      {
        if (v118)
        {
          buf = 136446466;
          v136 = "__nw_protocol_notify";
          v137 = 2082;
          v138 = v117;
          _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null protocol, dumping backtrace:%{public}s", &buf, 0x16u);
        }

        free(v117);
        if (v4)
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v118)
      {
        buf = 136446210;
        v136 = "__nw_protocol_notify";
        v100 = "%{public}s called with null protocol, no backtrace";
LABEL_268:
        _os_log_impl(&dword_181A37000, v98, v99, v100, &buf, 0xCu);
      }
    }

LABEL_269:
    if (!v4)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 48);
  if (!v10)
  {
    __nwlog_obj();
    buf = 136446210;
    v136 = "__nw_protocol_notify";
    v10 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v133 = 0;
    if (!__nwlog_fault(v10, type, &v133))
    {
      goto LABEL_274;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v101 = __nwlog_obj();
      v102 = type[0];
      if (!os_log_type_enabled(v101, type[0]))
      {
        goto LABEL_274;
      }

      buf = 136446210;
      v136 = "__nw_protocol_notify";
      v103 = "%{public}s called with null protocol";
    }

    else if (v133 == 1)
    {
      v119 = __nw_create_backtrace_string();
      v101 = __nwlog_obj();
      v102 = type[0];
      v120 = os_log_type_enabled(v101, type[0]);
      if (v119)
      {
        if (v120)
        {
          buf = 136446466;
          v136 = "__nw_protocol_notify";
          v137 = 2082;
          v138 = v119;
          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null protocol, dumping backtrace:%{public}s", &buf, 0x16u);
        }

        free(v119);
        if (v10)
        {
          goto LABEL_145;
        }

        return;
      }

      if (!v120)
      {
LABEL_274:
        if (!v10)
        {
          return;
        }

        goto LABEL_145;
      }

      buf = 136446210;
      v136 = "__nw_protocol_notify";
      v103 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v101 = __nwlog_obj();
      v102 = type[0];
      if (!os_log_type_enabled(v101, type[0]))
      {
        goto LABEL_274;
      }

      buf = 136446210;
      v136 = "__nw_protocol_notify";
      v103 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v101, v102, v103, &buf, 0xCu);
    goto LABEL_274;
  }

  v11 = *(v10 + 40);
  v12 = *(v9 + 48);
  if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(v10 + 64)) != 0)
  {
    v15 = *(v12 + 88);
    v13 = 0;
    if (v15)
    {
      *(v12 + 88) = v15 + 1;
    }
  }

  else
  {
    v13 = 1;
  }

  v65 = *(v9 + 40);
  v66 = v9;
  if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v66 = *(v9 + 64)) != 0)
  {
    v69 = *(v66 + 88);
    if (v69)
    {
      v67 = 0;
      *(v66 + 88) = v69 + 1;
      v68 = *(v10 + 24);
      if (!v68)
      {
        goto LABEL_163;
      }
    }

    else
    {
      v67 = 0;
      v68 = *(v10 + 24);
      if (!v68)
      {
        goto LABEL_163;
      }
    }
  }

  else
  {
    v67 = 1;
    v68 = *(v10 + 24);
    if (!v68)
    {
      goto LABEL_163;
    }
  }

  v70 = *(v68 + 160);
  if (v70)
  {
    v70(v10, v9, 19, 0, 0);
    goto LABEL_122;
  }

LABEL_163:
  __nwlog_obj();
  v92 = *(v10 + 16);
  buf = 136446722;
  v136 = "__nw_protocol_notify";
  if (!v92)
  {
    v92 = "invalid";
  }

  v137 = 2082;
  v138 = v92;
  v139 = 2048;
  v140 = v10;
  v93 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v133 = 0;
  if (!__nwlog_fault(v93, type, &v133))
  {
    goto LABEL_258;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v94 = __nwlog_obj();
    v95 = type[0];
    if (!os_log_type_enabled(v94, type[0]))
    {
      goto LABEL_258;
    }

    v96 = *(v10 + 16);
    if (!v96)
    {
      v96 = "invalid";
    }

    buf = 136446722;
    v136 = "__nw_protocol_notify";
    v137 = 2082;
    v138 = v96;
    v139 = 2048;
    v140 = v10;
    v97 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
    goto LABEL_257;
  }

  if (v133 != 1)
  {
    v94 = __nwlog_obj();
    v95 = type[0];
    if (!os_log_type_enabled(v94, type[0]))
    {
      goto LABEL_258;
    }

    v125 = *(v10 + 16);
    if (!v125)
    {
      v125 = "invalid";
    }

    buf = 136446722;
    v136 = "__nw_protocol_notify";
    v137 = 2082;
    v138 = v125;
    v139 = 2048;
    v140 = v10;
    v97 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
    goto LABEL_257;
  }

  v112 = __nw_create_backtrace_string();
  v94 = __nwlog_obj();
  v95 = type[0];
  v113 = os_log_type_enabled(v94, type[0]);
  if (v112)
  {
    if (v113)
    {
      v114 = *(v10 + 16);
      if (!v114)
      {
        v114 = "invalid";
      }

      buf = 136446978;
      v136 = "__nw_protocol_notify";
      v137 = 2082;
      v138 = v114;
      v139 = 2048;
      v140 = v10;
      v141 = 2082;
      v142 = v112;
      _os_log_impl(&dword_181A37000, v94, v95, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", &buf, 0x2Au);
    }

    free(v112);
    goto LABEL_258;
  }

  if (v113)
  {
    v128 = *(v10 + 16);
    if (!v128)
    {
      v128 = "invalid";
    }

    buf = 136446722;
    v136 = "__nw_protocol_notify";
    v137 = 2082;
    v138 = v128;
    v139 = 2048;
    v140 = v10;
    v97 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
LABEL_257:
    _os_log_impl(&dword_181A37000, v94, v95, v97, &buf, 0x20u);
  }

LABEL_258:
  if (v93)
  {
    free(v93);
  }

LABEL_122:
  if ((v67 & 1) == 0)
  {
    v71 = *(v9 + 40);
    if (v71 == &nw_protocol_ref_counted_handle || v71 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v9 + 64)) != 0)
    {
      v72 = *(v9 + 88);
      if (v72)
      {
        v73 = v72 - 1;
        *(v9 + 88) = v73;
        if (!v73)
        {
          v74 = *(v9 + 64);
          if (v74)
          {
            *(v9 + 64) = 0;
            v74[2](v74);
            _Block_release(v74);
          }

          if (*(v9 + 72))
          {
            v75 = *(v9 + 64);
            if (v75)
            {
              _Block_release(v75);
            }
          }

          free(v9);
        }
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    v76 = *(v10 + 40);
    if (v76 == &nw_protocol_ref_counted_handle || v76 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v10 + 64)) != 0)
    {
      v77 = *(v10 + 88);
      if (v77)
      {
        v78 = v77 - 1;
        *(v10 + 88) = v78;
        if (!v78)
        {
          v79 = *(v10 + 64);
          if (v79)
          {
            *(v10 + 64) = 0;
            v79[2](v79);
            _Block_release(v79);
          }

          if (*(v10 + 72))
          {
            v80 = *(v10 + 64);
            if (v80)
            {
              _Block_release(v80);
            }
          }

LABEL_145:
          free(v10);
        }
      }
    }
  }
}

nw_protocol_definition_t nw_protocol_copy_ws_definition(void)
{
  if (nw_protocol_copy_ws_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_ws_definition::onceToken, &__block_literal_global_4247);
  }

  v1 = nw_protocol_copy_ws_definition::definition;

  return v1;
}

void __nw_protocol_copy_ws_definition_block_invoke()
{
  definition = nw_framer_create_definition("WebSocket", 0, &__block_literal_global_8);
  v1 = nw_protocol_copy_ws_definition::definition;
  nw_protocol_copy_ws_definition::definition = definition;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_ws_definition::definition, nw_ws_allocate_options, nw_ws_copy_options, nw_ws_deallocate_options);
  v2 = nw_protocol_copy_ws_definition::definition;

  nw_protocol_definition_set_options_equality_check(v2, nw_ws_option_is_equal);
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_2(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x16812000000;
  v50 = __Block_byref_object_copy__4251;
  v51 = __Block_byref_object_dispose__4252;
  v52 = "!0!2/\x130";
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  memset(v67, 0, 87);
  v2 = a2;
  if (v2)
  {
    v3 = _nw_array_create();
    v4 = *(&v56 + 1);
    *(&v56 + 1) = v3;

    v5 = nw_framer_copy_options(v2);
    nw_protocol_options_get_log_id_str(v5, &v67[3], 84);
    HIWORD(v66) = 0;
    v67[0] = 0;
    async_block = 0;
    p_async_block = &async_block;
    v43 = 0x2020000000;
    LOBYTE(v44) = 0;
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 3221225472;
    *&applier[16] = ___ZL18nw_ws_create_stateP13nw_ws_state_tPU23objcproto12OS_nw_framer8NSObject_block_invoke;
    v69 = &unk_1E6A3ABE0;
    v72 = &v53;
    v70 = v2;
    v71 = &async_block;
    nw_protocol_options_access_handle(v5, applier);
    v6 = *(p_async_block + 24);

    _Block_object_dispose(&async_block, 8);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_5;
  }

  v16 = __nwlog_obj();
  *applier = 136446210;
  *&applier[4] = "nw_ws_create_state";
  v17 = _os_log_send_and_compose_impl();

  LOBYTE(async_block) = 16;
  v46 = 0;
  if (__nwlog_fault(v17, &async_block, &v46))
  {
    if (async_block == 17)
    {
      v18 = __nwlog_obj();
      v19 = async_block;
      if (os_log_type_enabled(v18, async_block))
      {
        *applier = 136446210;
        *&applier[4] = "nw_ws_create_state";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null framer", applier, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = async_block;
      v26 = os_log_type_enabled(v18, async_block);
      if (backtrace_string)
      {
        if (v26)
        {
          *applier = 136446466;
          *&applier[4] = "nw_ws_create_state";
          *&applier[12] = 2082;
          *&applier[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null framer, dumping backtrace:%{public}s", applier, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (v26)
      {
        *applier = 136446210;
        *&applier[4] = "nw_ws_create_state";
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null framer, no backtrace", applier, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v30 = async_block;
      if (os_log_type_enabled(v18, async_block))
      {
        *applier = 136446210;
        *&applier[4] = "nw_ws_create_state";
        _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null framer, backtrace limit exceeded", applier, 0xCu);
      }
    }
  }

LABEL_39:
  if (v17)
  {
    free(v17);
  }

  v7 = 2;
LABEL_5:

  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __nw_protocol_copy_ws_definition_block_invoke_9;
  input_handler[3] = &unk_1E6A30C30;
  v40 = &v47;
  v8 = v2;
  v39 = v8;
  nw_framer_set_input_handler(v8, input_handler);
  output_handler[0] = MEMORY[0x1E69E9820];
  output_handler[1] = 3221225472;
  output_handler[2] = __nw_protocol_copy_ws_definition_block_invoke_33;
  output_handler[3] = &unk_1E6A30C80;
  v37 = &v47;
  v9 = v8;
  v36 = v9;
  nw_framer_set_output_handler(v9, output_handler);
  stop_handler[0] = MEMORY[0x1E69E9820];
  stop_handler[1] = 3221225472;
  stop_handler[2] = __nw_protocol_copy_ws_definition_block_invoke_36;
  stop_handler[3] = &unk_1E6A2BF98;
  stop_handler[4] = &v47;
  nw_framer_set_stop_handler(v9, stop_handler);
  cleanup_handler[0] = MEMORY[0x1E69E9820];
  cleanup_handler[1] = 3221225472;
  cleanup_handler[2] = __nw_protocol_copy_ws_definition_block_invoke_40;
  cleanup_handler[3] = &unk_1E6A30CA8;
  cleanup_handler[4] = &v47;
  nw_framer_set_cleanup_handler(v9, cleanup_handler);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __nw_protocol_copy_ws_definition_block_invoke_2_42;
  v32[3] = &unk_1E6A2BFC0;
  v32[4] = &v47;
  nw_framer_set_copy_metadata(v9, v32);
  v10 = v48[11];
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    if (v2)
    {
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 3221225472;
      *&applier[16] = __nw_framer_trigger_input_block_invoke;
      v69 = &unk_1E6A3A5A8;
      v13 = v11;
      v70 = v13;
      dispatch_data_apply(v12, applier);
      async_block = MEMORY[0x1E69E9820];
      p_async_block = 3221225472;
      v43 = __nw_framer_trigger_input_block_invoke_2;
      v44 = &unk_1E6A3D868;
      v45 = v13;
      nw_framer_async(v45, &async_block);

LABEL_8:
      v14 = v48[11];
      v48[11] = 0;

      goto LABEL_9;
    }

    v20 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_framer_trigger_input";
    v21 = _os_log_send_and_compose_impl();

    LOBYTE(async_block) = 16;
    v46 = 0;
    if (__nwlog_fault(v21, &async_block, &v46))
    {
      if (async_block == 17)
      {
        v22 = __nwlog_obj();
        v23 = async_block;
        if (os_log_type_enabled(v22, async_block))
        {
          *applier = 136446210;
          *&applier[4] = "nw_framer_trigger_input";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null framer", applier, 0xCu);
        }
      }

      else if (v46 == 1)
      {
        v27 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v28 = async_block;
        v29 = os_log_type_enabled(v22, async_block);
        if (v27)
        {
          if (v29)
          {
            *applier = 136446466;
            *&applier[4] = "nw_framer_trigger_input";
            *&applier[12] = 2082;
            *&applier[14] = v27;
            _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null framer, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(v27);
          goto LABEL_45;
        }

        if (v29)
        {
          *applier = 136446210;
          *&applier[4] = "nw_framer_trigger_input";
          _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null framer, no backtrace", applier, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v31 = async_block;
        if (os_log_type_enabled(v22, async_block))
        {
          *applier = 136446210;
          *&applier[4] = "nw_framer_trigger_input";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null framer, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

LABEL_45:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_8;
  }

LABEL_9:

  _Block_object_dispose(&v47, 8);
  return v7;
}

void sub_18237461C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a46, 8);
  nw_ws_state_t::~nw_ws_state_t(v46);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4251(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 88) = v3;
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  *(a1 + 128) = v5;
  *(a1 + 144) = v6;
  v8 = *(a2 + 192);
  v9 = *(a2 + 208);
  v10 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v9;
  *(a1 + 224) = v10;
  *(a1 + 192) = v8;
  v11 = *(a2 + 244);
  *(a2 + 244) = 0;
  *(a1 + 244) = v11;
  v12 = *(a2 + 252);
  v13 = *(a2 + 284);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 284) = v13;
  *(a1 + 252) = v12;
  result = *(a2 + 300);
  v15 = *(a2 + 316);
  v16 = *(a2 + 332);
  *(a1 + 343) = *(a2 + 343);
  *(a1 + 316) = v15;
  *(a1 + 332) = v16;
  *(a1 + 300) = result;
  return result;
}

void __Block_byref_object_dispose__4252(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t ___ZL18nw_ws_create_stateP13nw_ws_state_tPU23objcproto12OS_nw_framer8NSObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  *(v4 + 96) = *(a2 + 32);
  *(v4 + 225) = *(v4 + 225) & 0xFFFE | ((*(a2 + 70) & 4) != 0);
  v5 = nw_framer_copy_parameters(*(a1 + 32));
  if (nw_parameters_get_server_mode(v5))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(*(a1 + 48) + 225) = *(*(a1 + 48) + 225) & 0xFFFB | v6;

  v7 = *(a1 + 48);
  *(v7 + 168) = -1;
  *(v7 + 176) = -1;
  *(v7 + 225) = *(v7 + 225) & 0xFFBF | (8 * *(a2 + 70)) & 0x40;
  *(*(a1 + 48) + 225) = *(*(a1 + 48) + 225) & 0xFF7F | (8 * *(a2 + 70)) & 0x80;
  *(*(a1 + 48) + 225) = *(*(a1 + 48) + 225) & 0xFEFF | (((*(a2 + 70) & 0x20) != 0) << 8);
  v8 = *(a1 + 48);
  *(v8 + 220) = *(a2 + 68);
  *(v8 + 152) = *(a2 + 64);
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 64) = 0;
  *(v8 + 144) = *(a2 + 60);
  *(v8 + 225) &= ~0x200u;
  *(*(a1 + 48) + 225) &= ~0x400u;
  *(*(a1 + 48) + 225) &= ~0x800u;
  v9 = *(a1 + 48);
  *(v9 + 212) = 0;
  if ((*(a2 + 70) & 2) == 0)
  {
    *(v9 + 180) = 1;
    *(v9 + 188) = 1;
    if (gLogDatapath == 1)
    {
      v38 = __nwlog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 48);
        if (v39)
        {
          v40 = (v39 + 227);
        }

        else
        {
          v40 = "";
        }

        *url = 136446466;
        *&url[4] = "nw_ws_create_state_block_invoke";
        v47 = 2082;
        v48 = v40;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s don't skip handshake", url, 0x16u);
      }
    }

    v10 = nw_framer_copy_parameters(*(a1 + 32));
    v11 = nw_parameters_copy_url_endpoint(v10);
    v12 = *(a1 + 48);
    if ((*(v12 + 225) & 4) != 0)
    {
      goto LABEL_10;
    }

    if (!v11)
    {
      v22 = nw_framer_copy_remote_endpoint(*(a1 + 32));
      if (!v22)
      {
        goto LABEL_25;
      }

      v23 = 0;
      do
      {
        v24 = v22;
        type = _nw_endpoint_get_type(v24);

        if (type == 2)
        {
          v26 = v24;

          v23 = v26;
        }

        v27 = v24;
        v22 = _nw_endpoint_copy_parent_endpoint(v27);
      }

      while (v22);
      if (!v23)
      {
        goto LABEL_25;
      }

      *url = 0;
      v28 = v23;
      hostname = _nw_endpoint_get_hostname(v28);

      v30 = v28;
      port = _nw_endpoint_get_port(v30);

      asprintf(url, "ws://%s:%d", hostname, port);
      v11 = nw_endpoint_create_url(*url);
      if (*url)
      {
        free(*url);
      }

      if (!v11)
      {
LABEL_25:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 48);
          if (v33)
          {
            v34 = (v33 + 227);
          }

          else
          {
            v34 = "";
          }

          *url = 136446466;
          *&url[4] = "nw_ws_create_state_block_invoke";
          v47 = 2082;
          v48 = v34;
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s unable to create url endpoint", url, 0x16u);
        }

        nw_framer_mark_failed_with_error(*(a1 + 32), 53);
        v11 = 0;
        goto LABEL_37;
      }

      v12 = *(a1 + 48);
    }

    client_request = nw_ws_create_client_request(v12, *(a1 + 32), v11);
    v14 = client_request;
    if (client_request)
    {
      v15 = *(a1 + 32);
      BytePtr = CFDataGetBytePtr(client_request);
      Length = CFDataGetLength(v14);
      nw_framer_write_output(v15, BytePtr, Length);
      CFRelease(v14);
      if (gLogDatapath == 1)
      {
        v43 = __nwlog_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = *(a1 + 48);
          if (v44)
          {
            v45 = (v44 + 227);
          }

          else
          {
            v45 = "";
          }

          *url = 136446466;
          *&url[4] = "nw_ws_create_state_block_invoke";
          v47 = 2082;
          v48 = v45;
          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sent handshake request", url, 0x16u);
        }
      }

LABEL_10:

      goto LABEL_11;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = gLogObj;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = *(a1 + 48);
      if (v36)
      {
        v37 = (v36 + 227);
      }

      else
      {
        v37 = "";
      }

      *url = 136446466;
      *&url[4] = "nw_ws_create_state_block_invoke";
      v47 = 2082;
      v48 = v37;
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s create_client_request failed", url, 0x16u);
    }

    nw_framer_mark_failed_with_error(*(a1 + 32), 53);
LABEL_37:

    v20 = 0;
    goto LABEL_14;
  }

  *(v9 + 180) = 2;
  *(v9 + 188) = 2;
  if (gLogDatapath != 1)
  {
    goto LABEL_13;
  }

  v10 = __nwlog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 48);
    if (v41)
    {
      v42 = (v41 + 227);
    }

    else
    {
      v42 = "";
    }

    *url = 136446466;
    *&url[4] = "nw_ws_create_state_block_invoke";
    v47 = 2082;
    v48 = v42;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skip handshake", url, 0x16u);
  }

LABEL_11:

  v9 = *(a1 + 48);
LABEL_13:
  v19 = *(a2 + 24);
  v18 = a2 + 24;
  *(*(*(a1 + 40) + 8) + 24) = (*(v18 + 46) & 2) != 0;
  objc_storeStrong((v9 + 40), v19);
  v10 = *v18;
  *v18 = 0;
  v20 = 1;
LABEL_14:

  return v20;
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_9(uint64_t a1, void *a2)
{
  v160 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = *(v5 + 273);
  v134 = v3;
  if ((v6 & 0x10) != 0)
  {
    v117 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
    v118 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v151[0] = 0;
    if (__nwlog_fault(v118, type, v151))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v119 = __nwlog_obj();
        v120 = type[0];
        if (os_log_type_enabled(v119, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          _os_log_impl(&dword_181A37000, v119, v120, "%{public}s ws.input: the websocket state has been destroyed, not handling input", buf, 0xCu);
        }
      }

      else if (v151[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v119 = __nwlog_obj();
        v122 = type[0];
        v123 = os_log_type_enabled(v119, type[0]);
        if (backtrace_string)
        {
          if (v123)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v119, v122, "%{public}s ws.input: the websocket state has been destroyed, not handling input, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_163;
        }

        if (v123)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          _os_log_impl(&dword_181A37000, v119, v122, "%{public}s ws.input: the websocket state has been destroyed, not handling input, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v119 = __nwlog_obj();
        v124 = type[0];
        if (os_log_type_enabled(v119, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          _os_log_impl(&dword_181A37000, v119, v124, "%{public}s ws.input: the websocket state has been destroyed, not handling input, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_163:
    if (v118)
    {
      free(v118);
    }

    goto LABEL_7;
  }

  v7 = *(v5 + 228);
  v136 = a1;
  if (v7 != 1)
  {
    if (!v7)
    {
      nw_framer_mark_failed_with_error(*(a1 + 32), 100);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(v136 + 40) + 8) + 275;
        *buf = 136446466;
        *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input The protocol should not be in the invalid state here", buf, 0x16u);
      }

LABEL_6:

      goto LABEL_7;
    }

    goto LABEL_32;
  }

  if ((v6 & 2) != 0)
  {
    v10 = 2;
    goto LABEL_138;
  }

  if (!*(v5 + 72))
  {
    *(*(*(a1 + 40) + 8) + 72) = CFHTTPMessageCreateEmpty(*MEMORY[0x1E695E480], (v6 & 4) != 0);
    v4 = *(a1 + 40);
    if (!*(*(v4 + 8) + 72))
    {
      nw_framer_mark_failed_with_error(*(a1 + 32), 12);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(v136 + 40) + 8) + 275;
        *buf = 136446466;
        *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v16;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s CFHTTPMessageCreateEmpty", buf, 0x16u);
      }

      goto LABEL_6;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v158[0] = 0;
  *type = 0;
  v148 = type;
  v149 = 0x2020000000;
  v150 = 0;
  v11 = *(a1 + 32);
  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __nw_protocol_copy_ws_definition_block_invoke_10;
  parse[3] = &unk_1E6A2BF00;
  v144 = v4;
  v143 = v11;
  v145 = type;
  v146 = buf;
  nw_framer_parse_input(v143, 1uLL, 0xFFFFFFFFuLL, 0, parse);
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v13 = 0;
    v14 = 1;
LABEL_21:
    v135 = v14;
    goto LABEL_31;
  }

  v12 = *(*(a1 + 40) + 8);
  if ((*(v12 + 273) & 4) != 0)
  {
    if (nw_ws_validate_client_request(v12 + 48, *(a1 + 32)))
    {
      v15 = (*(*(a1 + 40) + 8) + 273);
      *v15 |= 2u;
      nw_ws_present_request_to_user(*(*(a1 + 40) + 8) + 48, *(a1 + 32));
      v13 = 0;
LABEL_20:
      v14 = 2;
      goto LABEL_21;
    }

    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(v136 + 40) + 8) + 275;
      *v151 = 136446466;
      v152 = "nw_protocol_copy_ws_definition_block_invoke";
      v153 = 2082;
      v154 = v20;
      v19 = "%{public}s %{public}s nw_ws_validate_client request";
      goto LABEL_29;
    }
  }

  else
  {
    if (nw_ws_validate_server_response(v12 + 48))
    {
      if (gLogDatapath == 1)
      {
        v130 = __nwlog_obj();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          v131 = *(*(v136 + 40) + 8);
          v132 = v131 + 275;
          if ((*(v131 + 273) & 4) != 0)
          {
            v133 = "server";
          }

          else
          {
            v133 = "client";
          }

          *v151 = 136446722;
          v152 = "nw_protocol_copy_ws_definition_block_invoke";
          v153 = 2082;
          v154 = v132;
          v155 = 2082;
          v156 = v133;
          _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s handshake complete", v151, 0x20u);
        }

        a1 = v136;
      }

      *(*(*(a1 + 40) + 8) + 228) = 2;
      *(*(*(a1 + 40) + 8) + 236) = 2;
      nw_framer_mark_ready(*(a1 + 32));
      v13 = *(v148 + 3) != 0;
      goto LABEL_20;
    }

    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(v136 + 40) + 8) + 275;
      *v151 = 136446466;
      v152 = "nw_protocol_copy_ws_definition_block_invoke";
      v153 = 2082;
      v154 = v18;
      v19 = "%{public}s %{public}s nw_ws_validate_server_response";
LABEL_29:
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, v19, v151, 0x16u);
    }
  }

  nw_framer_mark_failed_with_error(*(v136 + 32), 53);
  v13 = 0;
  v135 = 0;
LABEL_31:

  _Block_object_dispose(type, 8);
  _Block_object_dispose(buf, 8);
  if (!v13)
  {
    goto LABEL_139;
  }

LABEL_32:
  v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v135 = 2;
  v22 = v136;
  while (1)
  {
    v23 = *(v22 + 40);
    v24 = *(v23 + 8);
    v25 = *(v24 + 228);
    if (v25 != 2)
    {
      goto LABEL_39;
    }

    if (BYTE1(v21[82].isa) == 1)
    {
      v76 = __nwlog_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        v77 = *(*(v136 + 40) + 8) + 275;
        *buf = 136446466;
        *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v77;
        _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input nw_ws_parse_state_header", buf, 0x16u);
      }

      v22 = v136;
      v24 = *(*(v136 + 40) + 8);
      v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }

    if (!nw_framer_parse_input(*(v22 + 32), 2uLL, 2uLL, (v24 + 264), &__block_literal_global_16_4340))
    {
      goto LABEL_139;
    }

    *(*(*(v22 + 40) + 8) + 264) = bswap32(*(*(*(v22 + 40) + 8) + 264)) >> 16;
    *(*(*(v22 + 40) + 8) + 273) = *(*(*(v22 + 40) + 8) + 273) & 0xFDFF | (*(*(*(v22 + 40) + 8) + 264) >> 5) & 0x200;
    v26 = *(*(v22 + 40) + 8);
    if ((*(v26 + 264) & 0x3000) != 0)
    {
      break;
    }

    *(v26 + 273) = *(v26 + 273) & 0xFFF7 | (*(v26 + 264) >> 12) & 8;
    *(*(*(v22 + 40) + 8) + 232) = *(*(*(v22 + 40) + 8) + 265) & 0xF;
    v27 = *(*(v22 + 40) + 8);
    v28 = nw_ws_validate_frame((v27 + 48), (*(v27 + 273) >> 3) & 1, (*(v27 + 273) >> 9) & 1, *(v27 + 232), (*(v27 + 264) >> 7) & 1, *(v27 + 264) & 0x7F, 1);
    v29 = *(*(v22 + 40) + 8);
    if ((v28 & 1) == 0)
    {
      nw_ws_write_header(v29 + 48, *(v22 + 32), 8, 0x3EAu, 0, 0, 1);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v97 = gLogObj;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        v99 = *(*(v136 + 40) + 8) + 275;
        *buf = 136446466;
        *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v99;
        _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input nw_ws_validate_server_response", buf, 0x16u);
      }

      goto LABEL_125;
    }

    *(v29 + 228) = 3;
    v23 = *(v22 + 40);
    v25 = *(*(v23 + 8) + 228);
LABEL_39:
    if (v25 == 3)
    {
      if (BYTE1(v21[82].isa) == 1)
      {
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = *(*(v136 + 40) + 8) + 275;
          *buf = 136446466;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v79;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input nw_ws_parse_state_payload_length", buf, 0x16u);
        }

        v22 = v136;
        v23 = *(v136 + 40);
        v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      }

      *(*(v23 + 8) + 160) = 0;
      v30 = *(*(v22 + 40) + 8);
      v31 = *(v30 + 264) & 0x7F;
      if (v31 == 126)
      {
        if (!nw_framer_parse_input(*(v22 + 32), 2uLL, 2uLL, (v30 + 266), &__block_literal_global_23))
        {
          goto LABEL_139;
        }

        *(*(*(v22 + 40) + 8) + 160) = bswap32(*(*(*(v22 + 40) + 8) + 266)) >> 16;
        if (*(*(*(v22 + 40) + 8) + 160) < 0x7EuLL)
        {
          v101 = __nwlog_obj();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            v114 = *(*(v22 + 40) + 8);
            v115 = v114 + 275;
            v116 = *(v114 + 160);
            *buf = 136446722;
            *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v115;
            *&buf[22] = 2048;
            *v158 = v116;
            v111 = "%{public}s %{public}s expected a payload length of greater than 125, but received %zu";
            v112 = v101;
            v113 = 32;
LABEL_144:
            _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, v111, buf, v113);
          }

LABEL_145:
          v107 = 100;
          goto LABEL_146;
        }

        if (BYTE1(v21[82].isa) != 1)
        {
          goto LABEL_54;
        }

        v32 = __nwlog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(*(v136 + 40) + 8);
          v39 = v38 + 275;
          v40 = *(v38 + 160);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke_2";
          *&buf[12] = 2082;
          *&buf[14] = v39;
          *&buf[22] = 2048;
          *v158 = v40;
          v36 = v32;
          v37 = "%{public}s %{public}s input extended payload(16) = %zu";
LABEL_121:
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, v37, buf, 0x20u);
        }
      }

      else
      {
        if (v31 == 127)
        {
          if (!nw_framer_parse_input(*(v22 + 32), 8uLL, 8uLL, (v30 + 48), &__block_literal_global_20))
          {
            v10 = 8;
            goto LABEL_138;
          }

          *(*(*(v22 + 40) + 8) + 160) = bswap64(*(*(*(v22 + 40) + 8) + 48));
          if (*(*(*(v22 + 40) + 8) + 160) < 0x10000uLL)
          {
            v101 = __nwlog_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v108 = *(*(v22 + 40) + 8);
              v109 = v108 + 275;
              v110 = *(v108 + 160);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = v109;
              *&buf[22] = 1024;
              *v158 = 0xFFFF;
              *&v158[4] = 2048;
              *&v158[6] = v110;
              v111 = "%{public}s %{public}s expected a payload length of greater than %d, but received %zu";
              v112 = v101;
              v113 = 38;
              goto LABEL_144;
            }

            goto LABEL_145;
          }

          if (BYTE1(v21[82].isa) != 1)
          {
            goto LABEL_54;
          }

          v32 = __nwlog_obj();
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_122;
          }

          v33 = *(*(v136 + 40) + 8);
          v34 = v33 + 275;
          v35 = *(v33 + 160);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke_2";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          *&buf[22] = 2048;
          *v158 = v35;
          v36 = v32;
          v37 = "%{public}s %{public}s input extended payload(64) = %zu";
          goto LABEL_121;
        }

        *(v30 + 160) = v31;
        if (BYTE1(v21[82].isa) != 1)
        {
LABEL_54:
          v41 = *(*(v22 + 40) + 8);
          if (!*(v41 + 144))
          {
LABEL_58:
            if ((*(v41 + 232) & 8) != 0)
            {
              if (*(v41 + 136))
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v42 = gLogObj;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = *(*(v136 + 40) + 8) + 275;
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
                  *&buf[12] = 2082;
                  *&buf[14] = v43;
                  _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s %{public}s state.input_buffer should not be present", buf, 0x16u);
                }

                v22 = v136;
                v41 = *(*(v136 + 40) + 8);
                v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              }

              v44 = *(v41 + 160);
              if (v44)
              {
                v45 = malloc_type_malloc(v44, 0x52E423E0uLL);
                if (!v45)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v46 = gLogObj;
                  os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
                  v47 = _os_log_send_and_compose_impl();

                  result = __nwlog_should_abort(v47);
                  if (result)
                  {
                    __break(1u);
                    return result;
                  }

                  free(v47);
                  v45 = 0;
                  v22 = v136;
                  v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                }

                *(*(*(v22 + 40) + 8) + 136) = v45;
                v41 = *(*(v22 + 40) + 8);
              }
            }

            if ((*(v41 + 264) & 0x80) != 0)
            {
              v49 = 4;
            }

            else
            {
              v49 = 5;
            }

            *(v41 + 228) = v49;
            v23 = *(v22 + 40);
            goto LABEL_72;
          }

          *(v41 + 152) += *(v41 + 160);
          v41 = *(*(v22 + 40) + 8);
          if (*(v41 + 152) <= *(v41 + 144))
          {
            if ((*(v41 + 273) & 8) != 0)
            {
              *(v41 + 152) = 0;
              v41 = *(*(v22 + 40) + 8);
            }

            goto LABEL_58;
          }

          nw_ws_write_header(v41 + 48, *(v22 + 32), 8, 0x3F1u, 0, 0, 1);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v101 = gLogObj;
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            v102 = *(*(v22 + 40) + 8);
            v103 = v102 + 275;
            v106 = v102 + 144;
            v104 = *(v102 + 144);
            v105 = *(v106 + 8);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v103;
            *&buf[22] = 2048;
            *v158 = v105;
            *&v158[8] = 2048;
            *&v158[10] = v104;
            _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input message size %zu exceeds maximum message size %zu", buf, 0x2Au);
          }

          v107 = 40;
LABEL_146:

          nw_framer_mark_failed_with_error(*(v136 + 32), v107);
          goto LABEL_7;
        }

        v32 = __nwlog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v94 = *(*(v136 + 40) + 8);
          v95 = v94 + 275;
          v96 = *(v94 + 160);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v95;
          *&buf[22] = 2048;
          *v158 = v96;
          v36 = v32;
          v37 = "%{public}s %{public}s input payload length = %zu";
          goto LABEL_121;
        }
      }

LABEL_122:

      v22 = v136;
      v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      goto LABEL_54;
    }

LABEL_72:
    v50 = *(v23 + 8);
    v51 = *(v50 + 228);
    if (v51 == 4)
    {
      if (BYTE1(v21[82].isa) == 1)
      {
        v80 = __nwlog_obj();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = *(*(v136 + 40) + 8) + 275;
          *buf = 136446466;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v81;
          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input nw_ws_parse_state_mask_key", buf, 0x16u);
        }

        v22 = v136;
        v50 = *(*(v136 + 40) + 8);
        v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      }

      if (!nw_framer_parse_input(*(v22 + 32), 4uLL, 4uLL, (v50 + 252), &__block_literal_global_26))
      {
        v10 = 4;
        goto LABEL_138;
      }

      if (BYTE1(v21[82].isa) == 1)
      {
        v88 = __nwlog_obj();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          v89 = *(*(v136 + 40) + 8);
          v90 = v89 + 275;
          v91 = *(v89 + 252);
          v92 = (*(v89 + 273) & 4) == 0;
          v93 = "server";
          if (v92)
          {
            v93 = "client";
          }

          *buf = 136446978;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke_2";
          *&buf[12] = 2082;
          *&buf[14] = v90;
          *&buf[22] = 1024;
          *v158 = v91;
          *&v158[4] = 2082;
          *&v158[6] = v93;
          _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input masking_key = %u, %{public}s", buf, 0x26u);
        }

        v22 = v136;
        v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      }

      *(*(*(v22 + 40) + 8) + 228) = 5;
      v50 = *(*(v22 + 40) + 8);
      v51 = *(v50 + 228);
    }

    if (v51 == 5)
    {
      v52 = *(v50 + 232);
      if ((v52 - 8) > 2)
      {
        v54 = *(v50 + 244);
        if (v54)
        {
          metadata = v54;
        }

        else
        {
          metadata = nw_ws_create_metadata(v52);
          nw_ws_metadata_set_negotiated_permessage_deflate(metadata, (*(*(*(v22 + 40) + 8) + 273) >> 6) & 1);
          objc_storeStrong((*(*(v22 + 40) + 8) + 244), metadata);
          v22 = v136;
          v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        }
      }

      else
      {
        metadata = nw_ws_create_metadata(v52);
        nw_ws_metadata_set_negotiated_permessage_deflate(metadata, (*(*(*(v22 + 40) + 8) + 273) >> 6) & 1);
        nw_ws_metadata_set_permessage_deflate(metadata, 0);
      }

      if (BYTE1(v21[82].isa) == 1)
      {
        v82 = __nwlog_obj();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          v83 = *(*(v136 + 40) + 8);
          v84 = v83 + 275;
          v87 = v83 + 160;
          v85 = *(v83 + 160);
          v86 = *(v87 + 8);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v84;
          *&buf[22] = 2048;
          *v158 = v86;
          *&v158[8] = 2048;
          *&v158[10] = v85;
          _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input nw_ws_parse_state_payload, itr=%zu, len=%zu", buf, 0x2Au);
        }

        v22 = v136;
      }

      *type = 0;
      v148 = type;
      v149 = 0x2020000000;
      LOBYTE(v150) = 0;
      v55 = MEMORY[0x1E69E9820];
      v56 = *(v22 + 40);
      v57 = *(v56 + 8);
      v59 = *(v57 + 160);
      v58 = *(v57 + 168);
      while (1)
      {
        v60 = *(v22 + 32);
        v137[0] = v55;
        v137[1] = 3221225472;
        v137[2] = __nw_protocol_copy_ws_definition_block_invoke_27;
        v137[3] = &unk_1E6A2BF48;
        v140 = v56;
        v141 = type;
        v61 = v60;
        v138 = v61;
        v62 = metadata;
        v139 = v62;
        v63 = v61;
        v64 = v137;
        v65 = v64;
        v66 = v59 - v58;
        if (v66)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL17nw_ws_parse_inputPU23objcproto12OS_nw_framer8NSObjectP13nw_ws_state_tmmPhU13block_pointerFmS4_mbbE_block_invoke;
          *v158 = &unk_1E6A2BFE8;
          v159 = v57 + 48;
          v68 = v63;
          *&v158[8] = v68;
          *&v158[16] = v65;
          v69 = nw_framer_parse_input(v68, 1uLL, v66, 0, buf);

          v70 = !v69;
        }

        else
        {
          v67 = (*(v57 + 273) & 8) != 0 && *(v57 + 168) == *(v57 + 160);
          __nw_protocol_copy_ws_definition_block_invoke_27(v64, 0, 0, 1, v67);
          v70 = 0;
        }

        v71 = v70 | *(v148 + 24);
        v22 = v136;
        v56 = *(v136 + 40);
        v57 = *(v56 + 8);
        if (v71)
        {
          break;
        }

        v59 = *(v57 + 160);
        v58 = *(v57 + 168);
        if (v58 >= v59)
        {
          goto LABEL_96;
        }
      }

      if (v148[24])
      {
        nw_ws_write_header(v57 + 48, *(v136 + 32), 8, 0x3EAu, 0, 0, 1);
        nw_framer_mark_failed_with_error(*(v136 + 32), 100);
        v100 = 0xFFFFFFFFLL;
LABEL_136:
        v135 = v100;
        _Block_object_dispose(type, 8);

        goto LABEL_139;
      }

      v73 = *(v57 + 160);
      v72 = *(v57 + 168);
      if (v72 < v73)
      {
        if (gLogDatapath == 1)
        {
          v125 = __nwlog_obj();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
          {
            v126 = *(*(v136 + 40) + 8);
            v127 = v126 + 275;
            v128 = *(v126 + 160) - *(v126 + 168);
            *buf = 136446722;
            *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v127;
            *&buf[22] = 2048;
            *v158 = v128;
            _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input nw_ws_parse_state_payload is asking for %zu bytes", buf, 0x20u);
          }

          v129 = *(*(v136 + 40) + 8);
          v73 = *(v129 + 160);
          v72 = *(v129 + 168);
        }

        v100 = v73 - v72;
        goto LABEL_136;
      }

LABEL_96:
      if ((*(v57 + 273) & 8) != 0 && (*(v57 + 232) - 8) >= 3)
      {
        v74 = *(v57 + 244);
        *(v57 + 244) = 0;

        v57 = *(*(v136 + 40) + 8);
      }

      v75 = *(v57 + 136);
      if (v75)
      {
        free(v75);
        *(v57 + 136) = 0;
      }

      *(v57 + 252) = 0;
      *(v57 + 264) = 0;
      *(v57 + 48) = 0;
      *(v57 + 160) = 0;
      *(v57 + 168) = 0;
      *(v57 + 228) = 2;
      *(v57 + 273) &= 0xFDF7u;
      _Block_object_dispose(type, 8);

      v22 = v136;
      v21 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }
  }

  nw_ws_write_header(v26 + 48, *(v22 + 32), 8, 0x3EAu, 0, 0, 1);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v97 = gLogObj;
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    v98 = *(*(v136 + 40) + 8) + 275;
    *buf = 136446466;
    *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke_2";
    *&buf[12] = 2082;
    *&buf[14] = v98;
    _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input rsv bits are not 0", buf, 0x16u);
  }

LABEL_125:

  nw_framer_mark_failed_with_error(*(v136 + 32), 100);
LABEL_7:
  v10 = 0xFFFFFFFFLL;
LABEL_138:
  v135 = v10;
LABEL_139:

  return v135;
}

void sub_1823766DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

void __nw_protocol_copy_ws_definition_block_invoke_33(uint64_t a1, uint64_t a2, void *a3, size_t a4, int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (gLogDatapath == 1)
  {
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(*(a1 + 40) + 8) + 275;
      *parse = 136446466;
      *&parse[4] = "nw_protocol_copy_ws_definition_block_invoke";
      *&parse[12] = 2082;
      *&parse[14] = v25;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output", parse, 0x16u);
    }
  }

  if (v8)
  {
    opcode = nw_ws_metadata_get_opcode(v8);
    v10 = opcode;
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 224);
    if (v12 == -1)
    {
      if ((a5 & 1) == 0)
      {
LABEL_10:
        *(v11 + 224) = v10;
        v11 = *(*(a1 + 40) + 8);
        v10 = opcode;
        goto LABEL_11;
      }

LABEL_9:
      opcode = v10;
      v10 = -1;
      goto LABEL_10;
    }

    if (v12 == opcode)
    {
      v10 = 0;
      if (!a5)
      {
LABEL_11:
        *(v11 + 236) = 2;
        *(*(*(a1 + 40) + 8) + 176) = 0;
        v41[0] = 0;
        v41[1] = v41;
        v41[2] = 0x2020000000;
        v42 = a4;
        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = *(v13 + 8);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __nw_protocol_copy_ws_definition_block_invoke_34;
        v34[3] = &unk_1E6A2BF70;
        v37 = v13;
        v39 = v10;
        v35 = v8;
        v38 = v41;
        v40 = a5;
        v36 = *(a1 + 32);
        v16 = v14;
        v17 = v35;
        v18 = v34;
        v19 = v18;
        if (v16)
        {
          if (a4)
          {
            *parse = MEMORY[0x1E69E9820];
            *&parse[8] = 3221225472;
            *&parse[16] = ___ZL18nw_ws_parse_outputPU23objcproto12OS_nw_framer8NSObjectPU34objcproto23OS_nw_protocol_metadataS_P13nw_ws_state_t14nw_ws_opcode_tbPmPhU13block_pointerFmS8_mbbE_block_invoke;
            *&v46 = &unk_1E6A2C038;
            v49 = v15 + 48;
            *(&v46 + 1) = v17;
            v51 = v10;
            v20 = v16;
            v52 = a5;
            v47 = v20;
            v50 = &v42;
            v48 = v19;
            nw_framer_parse_output(v20, a4, a4, 0, parse);
          }

          else
          {
            __nw_protocol_copy_ws_definition_block_invoke_34(v18, 0, 0, 0);
          }

LABEL_18:

          _Block_object_dispose(v41, 8);
          goto LABEL_19;
        }

        v26 = __nwlog_obj();
        *parse = 136446210;
        *&parse[4] = "nw_ws_parse_output";
        v27 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (__nwlog_fault(v27, &type, &v43))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v28 = __nwlog_obj();
            v29 = type;
            if (os_log_type_enabled(v28, type))
            {
              *parse = 136446210;
              *&parse[4] = "nw_ws_parse_output";
              _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null framer", parse, 0xCu);
            }
          }

          else if (v43 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v28 = __nwlog_obj();
            v31 = type;
            v32 = os_log_type_enabled(v28, type);
            if (backtrace_string)
            {
              if (v32)
              {
                *parse = 136446466;
                *&parse[4] = "nw_ws_parse_output";
                *&parse[12] = 2082;
                *&parse[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null framer, dumping backtrace:%{public}s", parse, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_39;
            }

            if (v32)
            {
              *parse = 136446210;
              *&parse[4] = "nw_ws_parse_output";
              _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null framer, no backtrace", parse, 0xCu);
            }
          }

          else
          {
            v28 = __nwlog_obj();
            v33 = type;
            if (os_log_type_enabled(v28, type))
            {
              *parse = 136446210;
              *&parse[4] = "nw_ws_parse_output";
              _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null framer, backtrace limit exceeded", parse, 0xCu);
            }
          }
        }

LABEL_39:
        if (v27)
        {
          free(v27);
        }

        goto LABEL_18;
      }

      goto LABEL_9;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(a1 + 40) + 8);
      v23 = v22 + 275;
      LODWORD(v22) = *(v22 + 224);
      *parse = 136446978;
      *&parse[4] = "nw_protocol_copy_ws_definition_block_invoke";
      *&parse[12] = 2082;
      *&parse[14] = v23;
      *&parse[22] = 1024;
      LODWORD(v46) = v22;
      WORD2(v46) = 1024;
      *(&v46 + 6) = v10;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s trying to send a new message before completing the first, %d, %d", parse, 0x22u);
    }

    nw_framer_mark_failed_with_error(*(a1 + 32), 100);
  }

  else
  {
    nw_framer_mark_failed_with_error(*(a1 + 32), 5);
  }

LABEL_19:
}

void sub_182376D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 104);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_protocol_copy_ws_definition_block_invoke_2_37;
  aBlock[3] = &unk_1E6A39B60;
  aBlock[4] = v1;
  if (v2)
  {
    _nw_array_apply(v2, aBlock);
  }

  return 1;
}

void __nw_protocol_copy_ws_definition_block_invoke_40(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136446466;
      v17 = "nw_ws_destroy_state";
      v18 = 2082;
      v19 = v1 + 275;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s destroying websocket state", &v16, 0x16u);
    }
  }

  v2 = *(v1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 72) = 0;
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 56) = 0;
  }

  v4 = *(v1 + 136);
  if (v4)
  {
    free(v4);
    *(v1 + 136) = 0;
  }

  v5 = *(v1 + 112);
  if (v5)
  {
    inflateEnd(v5);
    v6 = *(v1 + 112);
    if (v6)
    {
      free(v6);
      *(v1 + 112) = 0;
    }
  }

  v7 = *(v1 + 128);
  if (v7)
  {
    free(v7);
    *(v1 + 128) = 0;
  }

  v8 = *(v1 + 120);
  if (v8)
  {
    deflateEnd(v8);
    v9 = *(v1 + 120);
    if (v9)
    {
      free(v9);
      *(v1 + 120) = 0;
    }
  }

  v10 = *(v1 + 64);
  *(v1 + 64) = 0;

  v11 = *(v1 + 88);
  *(v1 + 88) = 0;

  v12 = *(v1 + 96);
  *(v1 + 96) = 0;

  v13 = *(v1 + 104);
  *(v1 + 104) = 0;

  v14 = *(v1 + 244);
  *(v1 + 244) = 0;

  *(v1 + 273) |= 0x10u;
}

nw_protocol_metadata_t __nw_protocol_copy_ws_definition_block_invoke_2_42(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  metadata = nw_ws_create_metadata(nw_ws_opcode_invalid);
  v3 = metadata;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 96);
  if (v5)
  {
    v6 = metadata;
    v7 = v5;
    if (nw_protocol_metadata_is_ws(v6))
    {
      nw_framer_message_set_value(v6, "server_response", v7, &__block_literal_global_27_53907);
LABEL_4:

      v4 = *(*(a1 + 32) + 8);
      goto LABEL_5;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_ws_metadata_set_server_response";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v10, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_ws_metadata_set_server_response";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null nw_protocol_metadata_is_ws(metadata)", buf, 0xCu);
        }
      }

      else if (v17 == 1)
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
            v20 = "nw_ws_metadata_set_server_response";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_ws_metadata_set_server_response";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_ws_metadata_set_server_response";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_4;
  }

LABEL_5:
  nw_ws_metadata_set_negotiated_permessage_deflate(v3, (*(v4 + 273) >> 6) & 1);

  return v3;
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_2_37(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nw_ws_ping_request_copy_pong_handler(v4);
  v6 = nw_ws_ping_request_copy_client_queue(v4);
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [[NWConcrete_nw_error alloc] initWithDomain:53 code:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_protocol_copy_ws_definition_block_invoke_3;
    v12[3] = &unk_1E6A3D710;
    v13 = v8;
    v14 = v5;
    v9 = v8;
    dispatch_async(v7, v12);

LABEL_7:
    goto LABEL_8;
  }

  if (v5 | v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1 + 32) + 8) + 275;
      *buf = 136446466;
      v16 = "nw_protocol_copy_ws_definition_block_invoke_2";
      v17 = 2082;
      v18 = v10;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s pong handler and client queue should both be nil", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:

  return 1;
}

size_t __nw_protocol_copy_ws_definition_block_invoke_34(uint64_t a1, uint8_t *output_buffer, size_t output_length, unsigned int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 48) + 8) + 236);
  if (v8 != 2)
  {
LABEL_10:
    if (v8 != 5)
    {
      return output_length;
    }

    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(*(a1 + 48) + 8) + 275;
        *buf = 136446722;
        *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v27;
        *&buf[22] = 2048;
        v58 = output_length;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output parsed %zu bytes", buf, 0x20u);
      }
    }

    if (*(a1 + 68) != 1 || *(*(*(a1 + 48) + 8) + 240) != 9)
    {
      goto LABEL_76;
    }

    v16 = MEMORY[0x1E69E9668];
    v17 = MEMORY[0x1E69E9668];
    if (output_buffer && output_length)
    {
      v16 = dispatch_data_create(output_buffer, output_length, 0, 0);
    }

    v18 = *(a1 + 32);
    if (nw_protocol_metadata_is_ws(v18))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v58 = __Block_byref_object_copy__23_53892;
      v59 = __Block_byref_object_dispose__24_53893;
      v60 = 0;
      access_value = MEMORY[0x1E69E9820];
      v51 = 3221225472;
      v52 = __nw_ws_metadata_copy_client_queue_block_invoke;
      v53 = &unk_1E6A357E8;
      v54 = buf;
      nw_framer_message_access_value(v18, "client_queue", &access_value);
      v19 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_19;
    }

    v28 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ws_metadata_copy_client_queue";
    v49 = _os_log_send_and_compose_impl();

    LOBYTE(access_value) = 16;
    v56 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v49, &access_value, &v56))
    {
      if (access_value == 17)
      {
        v29 = __nwlog_obj();
        type = access_value;
        if (os_log_type_enabled(v29, access_value))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_metadata_copy_client_queue";
          _os_log_impl(&dword_181A37000, v29, type, "%{public}s called with null nw_protocol_metadata_is_ws(metadata)", buf, 0xCu);
        }
      }

      else
      {
        if (v56 == OS_LOG_TYPE_INFO)
        {
          backtrace_string = __nw_create_backtrace_string();
          typea = __nwlog_obj();
          v44 = access_value;
          v35 = os_log_type_enabled(typea, access_value);
          if (backtrace_string)
          {
            if (v35)
            {
              *buf = 136446466;
              *&buf[4] = "nw_ws_metadata_copy_client_queue";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, typea, v44, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
          }

          else
          {
            if (v35)
            {
              *buf = 136446210;
              *&buf[4] = "nw_ws_metadata_copy_client_queue";
              _os_log_impl(&dword_181A37000, typea, v44, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_60;
        }

        v29 = __nwlog_obj();
        typeb = access_value;
        if (os_log_type_enabled(v29, access_value))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_metadata_copy_client_queue";
          _os_log_impl(&dword_181A37000, v29, typeb, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_60:
    if (v49)
    {
      free(v49);
    }

    v19 = 0;
LABEL_19:

    v20 = *(a1 + 32);
    if (nw_protocol_metadata_is_ws(v20))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v58 = __Block_byref_object_copy__53883;
      v59 = __Block_byref_object_dispose__53884;
      v60 = 0;
      access_value = MEMORY[0x1E69E9820];
      v51 = 3221225472;
      v52 = __nw_ws_metadata_copy_pong_handler_block_invoke;
      v53 = &unk_1E6A357E8;
      v54 = buf;
      nw_framer_message_access_value(v20, "pong_handler", &access_value);
      v21 = _Block_copy(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);

      if (v19 && v21)
      {
        v22 = nw_ws_ping_request_create(v16, v19, v21);
        v23 = *(*(*(a1 + 48) + 8) + 104);
        if (v23 && v22)
        {
          _nw_array_append(v23, v22);
        }

LABEL_75:

LABEL_76:
        if (output_buffer && output_length)
        {
          if (*(*(*(a1 + 48) + 8) + 256))
          {
            v41 = 0;
            do
            {
              output_buffer[v41] ^= *(*(*(a1 + 48) + 8) + ((v41 + *(*(*(a1 + 48) + 8) + 176)) & 3) + 256);
              ++v41;
            }

            while (output_length != v41);
            nw_framer_write_output(*(a1 + 40), output_buffer, output_length);
          }

          else
          {
            v42 = *(a1 + 40);
            if (a4)
            {
              nw_framer_write_output(v42, output_buffer, output_length);
            }

            else
            {
              nw_framer_write_output_no_copy(v42, output_length);
              output_length = 0;
            }
          }

          *(*(*(a1 + 48) + 8) + 176) += output_length;
        }

        return output_length;
      }

LABEL_69:
      if (v19 | v21)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        if (os_log_type_enabled(&v22->super, OS_LOG_TYPE_ERROR))
        {
          v40 = *(*(a1 + 48) + 8) + 275;
          *buf = 136446466;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          _os_log_impl(&dword_181A37000, &v22->super, OS_LOG_TYPE_ERROR, "%{public}s %{public}s client queue or pong handler not set", buf, 0x16u);
        }
      }

      else
      {
        v22 = nw_ws_ping_request_create(v16, 0, 0);
        v21 = 0;
        v39 = *(*(*(a1 + 48) + 8) + 104);
        if (v39 && v22)
        {
          _nw_array_append(v39, v22);
          v21 = 0;
        }
      }

      goto LABEL_75;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ws_metadata_copy_pong_handler";
    v31 = _os_log_send_and_compose_impl();

    v56 = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v31, &v56, &v55))
    {
      if (v56 == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = v56;
        if (os_log_type_enabled(v32, v56))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_metadata_copy_pong_handler";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null nw_protocol_metadata_is_ws(metadata)", buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v48 = v56;
        v37 = os_log_type_enabled(v32, v56);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446466;
            *&buf[4] = "nw_ws_metadata_copy_pong_handler";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_66;
        }

        if (v37)
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_metadata_copy_pong_handler";
          _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v38 = v56;
        if (os_log_type_enabled(v32, v56))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_metadata_copy_pong_handler";
          _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null nw_protocol_metadata_is_ws(metadata), backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_66:
    if (v31)
    {
      free(v31);
    }

    v21 = 0;
    goto LABEL_69;
  }

  nw_ws_metadata_set_permessage_deflate(*(a1 + 32), a4);
  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (*(*(*(a1 + 56) + 8) + 24) >= 0x7FuLL)
  {
    LODWORD(v11) = 127;
  }

  else
  {
    v11 = *(*(*(a1 + 56) + 8) + 24);
  }

  if (nw_ws_validate_frame((*(*(a1 + 48) + 8) + 48), *(a1 + 68), v10, v9, (*(*(*(a1 + 48) + 8) + 273) & 4) == 0, v11, 0))
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(a1 + 64);
    close_code = nw_ws_metadata_get_close_code(*(a1 + 32));
    *(*(*(a1 + 48) + 8) + 256) = nw_ws_write_header(v13 + 48, v12, v14, close_code, *(*(*(a1 + 56) + 8) + 24), v10, *(a1 + 68));
    *(*(*(a1 + 48) + 8) + 240) = *(a1 + 64);
    *(*(*(a1 + 48) + 8) + 236) = 5;
    v8 = *(*(*(a1 + 48) + 8) + 236);
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = *(*(a1 + 48) + 8) + 275;
    *buf = 136446466;
    *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v25;
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s got invalid frame", buf, 0x16u);
  }

  nw_framer_mark_failed_with_error(*(a1 + 40), 100);
  return 0;
}

uint64_t ___ZL18nw_ws_parse_outputPU23objcproto12OS_nw_framer8NSObjectPU34objcproto23OS_nw_protocol_metadataS_P13nw_ws_state_t14nw_ws_opcode_tbPmPhU13block_pointerFmS8_mbbE_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || (*(*(a1 + 56) + 225) & 0x40) == 0 || !nw_ws_metadata_get_permessage_deflate(*(a1 + 32)) || *(a1 + 72) > 2u)
  {
    return (*(*(a1 + 48) + 16))(*(a1 + 48), a2);
  }

  *(*(a1 + 56) + 225) |= 0x400u;
  v6 = *(*(a1 + 56) + 72);
  if (!v6)
  {
    v41 = malloc_type_malloc(0x70uLL, 0x66547744uLL);
    if (!v41)
    {
      v42 = __nwlog_obj();
      os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v62 = "nw_ws_parse_output_block_invoke";
      v43 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v43);
      if (result)
      {
        __break(1u);
        return result;
      }

      free(v43);
      v41 = 0;
    }

    v44 = *(a1 + 56);
    *(v44 + 72) = v41;
    v41->zalloc = 0;
    v41->zfree = 0;
    v41->opaque = 0;
    v45 = 220;
    if ((*(v44 + 225) & 4) == 0)
    {
      v45 = 221;
    }

    v46 = deflateInit2_(v41, -1, 8, -*(v44 + v45), 8, 0, "1.2.12", 112);
    if (v46)
    {
      v47 = v46;
      v48 = __nwlog_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = *(a1 + 56);
        v50 = zError(v47);
        v51 = (v49 + 227);
        v62 = "nw_ws_parse_output_block_invoke";
        *buf = 136446722;
        if (!v49)
        {
          v51 = "";
        }

        v63 = 2082;
        v64 = v51;
        v65 = 2080;
        v66 = v50;
        _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s %{public}s deflateInit2 returned %s", buf, 0x20u);
      }

      nw_framer_mark_failed_with_error(*(a1 + 40), 100);
      return 0;
    }

    v6 = *(*(a1 + 56) + 72);
  }

  *v6 = a2;
  *(v6 + 8) = a3;
  v60 = 0;
  alloc = dispatch_data_create_alloc();
  v8 = *(a1 + 56);
  v9 = *(v8 + 72);
  v9->avail_out = *(v8 + 152);
  v9->next_out = v60;
  while (1)
  {
    v10 = deflate(v9, 2);
    if (v10)
    {
      break;
    }

    v11 = *(a1 + 56);
    v12 = *(*(v11 + 72) + 32);
    if (gLogDatapath == 1)
    {
      v57 = *(v11 + 152);
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 56);
        v17 = (v16 + 227);
        v18 = v16 == 0;
        *buf = 136446722;
        v19 = "";
        if (!v18)
        {
          v19 = v17;
        }

        v62 = "nw_ws_parse_output_block_invoke";
        v63 = 2082;
        v64 = v19;
        v65 = 2048;
        v66 = (v57 - v12);
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s writing %zu bytes of compressed data", buf, 0x20u);
      }

      v20 = *(*(a1 + 56) + 72);
      v12 = *(v20 + 32);
      if (*(v20 + 32))
      {
LABEL_11:
        size = dispatch_data_get_size(alloc);
        subrange = dispatch_data_create_subrange(alloc, 0, size - v12);
        goto LABEL_18;
      }
    }

    else if (*(*(v11 + 72) + 32))
    {
      goto LABEL_11;
    }

    v21 = dispatch_data_create_alloc();
    v22 = *(a1 + 56);
    v23 = *(v22 + 152);
    v24 = *(v22 + 72);
    *(v24 + 32) = v23;
    *(v24 + 24) = v60;
    subrange = dispatch_data_create_concat(alloc, v21);

    alloc = v21;
LABEL_18:

    v9 = *(*(a1 + 56) + 72);
    alloc = subrange;
  }

  if (v10 == -5)
  {
    if (gLogDatapath == 1)
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 56);
        v27 = (v26 + 227);
        v18 = v26 == 0;
        v28 = "";
        if (!v18)
        {
          v28 = v27;
        }

        *buf = 136446722;
        v62 = "nw_ws_parse_output_block_invoke";
        v63 = 2082;
        v64 = v28;
        v65 = 2048;
        v66 = a3;
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s compressed %zu bytes of data", buf, 0x20u);
      }
    }
  }

  else
  {
    v29 = v10;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 56);
      v32 = zError(v29);
      v33 = (v31 + 227);
      *buf = 136446722;
      if (!v31)
      {
        v33 = "";
      }

      v62 = "nw_ws_parse_output_block_invoke";
      v63 = 2082;
      v64 = v33;
      v65 = 2080;
      v66 = v32;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s deflate returned %s", buf, 0x20u);
    }

    nw_framer_mark_failed_with_error(*(a1 + 40), 100);
  }

  if (*(a1 + 76) == 1)
  {
    v34 = dispatch_data_get_size(alloc);
    v35 = dispatch_data_create_subrange(alloc, 0, v34 - 4);

    v36 = dispatch_data_get_size(v35);
    if ((*(a1 + 72) - 1) <= 1 && v36 >= **(a1 + 64))
    {
      if (gLogDatapath == 1)
      {
        v52 = v36;
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(a1 + 56);
          v18 = v54 == 0;
          v55 = (v54 + 227);
          if (v18)
          {
            v55 = "";
          }

          v56 = **(a1 + 64);
          *buf = 136446978;
          v62 = "nw_ws_parse_output_block_invoke";
          v63 = 2082;
          v64 = v55;
          v65 = 2048;
          v66 = v52;
          v67 = 2048;
          v68 = v56;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Not compressing frame because compressed (%zu bytes) is no better than uncompressed (%zu bytes)", buf, 0x2Au);
        }
      }

      deflateReset(*(*(a1 + 56) + 72));

      v35 = 0;
    }

    v37 = *(a1 + 56);
    v38 = *(v37 + 225);
    if ((v38 & 0x84) == 4 || (*(v37 + 225) & 0x104) == 0)
    {
      deflateReset(*(v37 + 72));
      v37 = *(a1 + 56);
      v38 = *(v37 + 225);
    }

    *(v37 + 225) = v38 & 0xFBFF;
  }

  else
  {
    v35 = alloc;
  }

  if (v35)
  {
    **(a1 + 64) = dispatch_data_get_size(v35);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___ZL18nw_ws_parse_outputPU23objcproto12OS_nw_framer8NSObjectPU34objcproto23OS_nw_protocol_metadataS_P13nw_ws_state_t14nw_ws_opcode_tbPmPhU13block_pointerFmS8_mbbE_block_invoke_57;
    applier[3] = &unk_1E6A2C010;
    v59 = *(a1 + 48);
    v39 = dispatch_data_apply(v35, applier);

    return v39;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a2);
}

uint64_t nw_ws_validate_frame(nw_ws_state_t *a1, int a2, int a3, unsigned int a4, int a5, unsigned int a6, int a7)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_ws_validate_frame";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v36, &type, &v54))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v57 = "nw_ws_validate_frame";
        v39 = "%{public}s called with null state";
LABEL_105:
        _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      }
    }

    else
    {
      if (v54 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type;
        v53 = os_log_type_enabled(v37, type);
        if (backtrace_string)
        {
          if (v53)
          {
            *buf = 136446466;
            v57 = "nw_ws_validate_frame";
            v58 = 2082;
            v59 = backtrace_string;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_107;
        }

        if (!v53)
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        v57 = "nw_ws_validate_frame";
        v39 = "%{public}s called with null state, no backtrace";
        goto LABEL_105;
      }

      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v57 = "nw_ws_validate_frame";
        v39 = "%{public}s called with null state, backtrace limit exceeded";
        goto LABEL_105;
      }
    }

LABEL_106:

LABEL_107:
    if (v36)
    {
      free(v36);
    }

    return 0;
  }

  if (gLogDatapath != 1)
  {
    v7 = *(a1 + 225);
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v40 = a6;
  v41 = a3;
  v42 = a2;
  v43 = a4;
  v44 = a5;
  v45 = a7;
  v46 = a1;
  v47 = __nwlog_obj();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(v46 + 225);
    *buf = 136448514;
    v57 = "nw_ws_validate_frame";
    v58 = 2082;
    v59 = v46 + 227;
    v49 = "client";
    v60 = 2082;
    if ((v48 & 4) != 0)
    {
      v49 = "server";
    }

    if (v45)
    {
      v50 = "input";
    }

    else
    {
      v50 = "output";
    }

    v61 = v50;
    v62 = 2082;
    v63 = v49;
    v51 = "reads";
    v64 = 2082;
    if (!v45)
    {
      v51 = "sends";
    }

    v65 = v51;
    v66 = 1024;
    v67 = v42;
    v68 = 1024;
    v69 = v41;
    v70 = 1024;
    v71 = v43;
    v72 = 1024;
    v73 = v44;
    v74 = 1024;
    v75 = v40;
    _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s  %{public}s %{public}s {fin: %u, rsv1: %u, op: %d, msk: %u, len: %u}", buf, 0x52u);
  }

  a1 = v46;
  a7 = v45;
  a5 = v44;
  a4 = v43;
  a2 = v42;
  a3 = v41;
  a6 = v40;
  v7 = *(v46 + 225);
  if (v7)
  {
    return 1;
  }

LABEL_4:
  if (a4 - 8 <= 2)
  {
    if (a3)
    {
      v8 = a7;
      v9 = a1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = "output";
        v57 = "nw_ws_validate_frame";
        *buf = 136446722;
        v58 = 2082;
        v59 = v9 + 227;
        if (v8)
        {
          v11 = "input";
        }

        v60 = 2082;
        v61 = v11;
        v12 = "%{public}s %{public}s %{public}s control frame can not be compressed";
LABEL_35:
        v22 = v10;
        v23 = 32;
LABEL_63:
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v12, buf, v23);
        goto LABEL_64;
      }

      goto LABEL_64;
    }

    if ((a2 & 1) == 0)
    {
      v24 = a7;
      v25 = a1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v26 = "output";
        v57 = "nw_ws_validate_frame";
        *buf = 136446722;
        v58 = 2082;
        v59 = v25 + 227;
        if (v24)
        {
          v26 = "input";
        }

        v60 = 2082;
        v61 = v26;
        v12 = "%{public}s %{public}s %{public}s control frame was not marked final";
        goto LABEL_35;
      }

      goto LABEL_64;
    }

    if (a6 >= 0x7E)
    {
      v14 = a7;
      v15 = a1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = "output";
        v57 = "nw_ws_validate_frame";
        *buf = 136446722;
        v58 = 2082;
        v59 = v15 + 227;
        if (v14)
        {
          v16 = "input";
        }

        v60 = 2082;
        v61 = v16;
        v12 = "%{public}s %{public}s %{public}s control frame has length >125 bytes";
        goto LABEL_35;
      }

LABEL_64:

      return 0;
    }

    if (a4 == 8 && a6 == 1)
    {
      return 0;
    }

LABEL_70:
    v33 = (v7 & 4) == 0;
    v34 = a5 ^ 1;
    if ((v7 & 4) != 0 && (a7 & 1) == 0 && !v34)
    {
      return 0;
    }

    goto LABEL_73;
  }

  if (!a4)
  {
    if (a7)
    {
      if (*(a1 + 42) == -1)
      {
        v28 = a1;
        v10 = __nwlog_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446466;
        v57 = "nw_ws_validate_frame";
        v58 = 2082;
        v59 = v28 + 227;
        v12 = "%{public}s %{public}s input continuation frame was received without context";
        goto LABEL_62;
      }

      if (!a3)
      {
        if (a2)
        {
          *(a1 + 42) = -1;
        }

        goto LABEL_67;
      }

      v17 = a1;
      v10 = __nwlog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (*(a1 + 43) == -1)
      {
        v29 = a1;
        v10 = __nwlog_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446466;
        v57 = "nw_ws_validate_frame";
        v58 = 2082;
        v59 = v29 + 227;
        v12 = "%{public}s %{public}s output continuation frame was sent without context";
        goto LABEL_62;
      }

      if (!a3)
      {
        if (a2)
        {
          *(a1 + 43) = -1;
        }

        goto LABEL_70;
      }

      v17 = a1;
      v10 = __nwlog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    *buf = 136446466;
    v57 = "nw_ws_validate_frame";
    v58 = 2082;
    v59 = v17 + 227;
    v12 = "%{public}s %{public}s rsv1 cannot be set on continuation frame";
    goto LABEL_62;
  }

  if (a4 > 2)
  {
    v18 = a4;
    v19 = a7;
    v20 = a1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = "output";
      *buf = 136446978;
      v57 = "nw_ws_validate_frame";
      v59 = v20 + 227;
      v58 = 2082;
      if (v19)
      {
        v21 = "input";
      }

      v60 = 2082;
      v61 = v21;
      v62 = 1024;
      LODWORD(v63) = v18;
      v12 = "%{public}s %{public}s %{public}s unknown opcode %d for message";
      v22 = v10;
      v23 = 38;
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (!a7)
  {
    if (*(a1 + 43) == -1)
    {
      if ((v7 & 0x40) != 0 || !a3)
      {
        if ((a2 & 1) == 0)
        {
          *(a1 + 43) = a4;
        }

        goto LABEL_70;
      }

      v31 = a1;
      v10 = __nwlog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      *buf = 136446466;
      v57 = "nw_ws_validate_frame";
      v58 = 2082;
      v59 = v31 + 227;
      v12 = "%{public}s %{public}s sending compressed data without correct state";
    }

    else
    {
      v27 = a1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      *buf = 136446466;
      v57 = "nw_ws_validate_frame";
      v58 = 2082;
      v59 = v27 + 227;
      v12 = "%{public}s %{public}s output continuation context should be invalid here";
    }

LABEL_62:
    v22 = v10;
    v23 = 22;
    goto LABEL_63;
  }

  if (*(a1 + 42) != -1)
  {
    v13 = a1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446466;
    v57 = "nw_ws_validate_frame";
    v58 = 2082;
    v59 = v13 + 227;
    v12 = "%{public}s %{public}s input continuation context should be invalid here";
    goto LABEL_62;
  }

  if ((v7 & 0x40) == 0 && a3)
  {
    v30 = a1;
    v10 = __nwlog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446466;
    v57 = "nw_ws_validate_frame";
    v58 = 2082;
    v59 = v30 + 227;
    v12 = "%{public}s %{public}s received compressed data without correct state";
    goto LABEL_62;
  }

  if ((a2 & 1) == 0)
  {
    *(a1 + 42) = a4;
  }

LABEL_67:
  v33 = (v7 & 4) == 0;
  v34 = a5 ^ 1;
LABEL_73:
  if (!v33 && a7 && !a5 || v33 && (a7 & 1) == 0 && !a5)
  {
    return 0;
  }

  return v34 | v33 & a7 ^ 1u;
}

uint64_t nw_ws_write_header(uint64_t a1, void *a2, int a3, unsigned int a4, unint64_t a5, unsigned __int8 a6, int a7)
{
  v60 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = v13;
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_ws_write_header";
    v29 = _os_log_send_and_compose_impl();

    v49[0] = 16;
    output_buffer[0] = 0;
    if (!__nwlog_fault(v29, v49, output_buffer))
    {
      goto LABEL_102;
    }

    if (v49[0] == 17)
    {
      v30 = __nwlog_obj();
      v31 = v49[0];
      if (os_log_type_enabled(v30, v49[0]))
      {
        *buf = 136446210;
        v52 = "nw_ws_write_header";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null state", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (output_buffer[0] != 1)
    {
      v30 = __nwlog_obj();
      v43 = v49[0];
      if (os_log_type_enabled(v30, v49[0]))
      {
        *buf = 136446210;
        v52 = "nw_ws_write_header";
        _os_log_impl(&dword_181A37000, v30, v43, "%{public}s called with null state, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v36 = v49[0];
    v37 = os_log_type_enabled(v30, v49[0]);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v52 = "nw_ws_write_header";
        _os_log_impl(&dword_181A37000, v30, v36, "%{public}s called with null state, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v37)
    {
      *buf = 136446466;
      v52 = "nw_ws_write_header";
      v53 = 2082;
      v54 = backtrace_string;
      _os_log_impl(&dword_181A37000, v30, v36, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  if (!v13)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_ws_write_header";
    v29 = _os_log_send_and_compose_impl();

    v49[0] = 16;
    output_buffer[0] = 0;
    if (!__nwlog_fault(v29, v49, output_buffer))
    {
      goto LABEL_102;
    }

    if (v49[0] == 17)
    {
      v30 = __nwlog_obj();
      v33 = v49[0];
      if (os_log_type_enabled(v30, v49[0]))
      {
        *buf = 136446210;
        v52 = "nw_ws_write_header";
        _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null framer", buf, 0xCu);
      }

LABEL_101:

LABEL_102:
      if (v29)
      {
        free(v29);
      }

      goto LABEL_42;
    }

    if (output_buffer[0] != 1)
    {
      v30 = __nwlog_obj();
      v44 = v49[0];
      if (os_log_type_enabled(v30, v49[0]))
      {
        *buf = 136446210;
        v52 = "nw_ws_write_header";
        _os_log_impl(&dword_181A37000, v30, v44, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v38 = v49[0];
    v39 = os_log_type_enabled(v30, v49[0]);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v52 = "nw_ws_write_header";
        _os_log_impl(&dword_181A37000, v30, v38, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v39)
    {
      *buf = 136446466;
      v52 = "nw_ws_write_header";
      v53 = 2082;
      v54 = backtrace_string;
      _os_log_impl(&dword_181A37000, v30, v38, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(backtrace_string);
    goto LABEL_102;
  }

  if (a7)
  {
    v15 = 0x8000;
  }

  else
  {
    v15 = 0;
  }

  if (((a3 != 0) & a6) != 0)
  {
    v16 = 0x4000;
  }

  else
  {
    v16 = 0;
  }

  v17 = (v15 & 0xFFFFFF7F | (a3 << 8) | v16 & 0xFFFFFF7F | (((*(a1 + 225) >> 2) & 1) << 7)) ^ 0x80;
  if (a5 < 0x10000)
  {
    v18 = 126;
  }

  else
  {
    v18 = 127;
  }

  v19 = a4 != 1005 && a3 == 8;
  v20 = a5 + 2;
  if (!v19)
  {
    v20 = a5;
  }

  if (a5 <= 0x7D)
  {
    v18 = v20;
  }

  v21 = v17 | v18;
  *output_buffer = bswap32(v17 | v18) >> 16;
  nw_framer_write_output(v13, output_buffer, 2uLL);
  if (gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447490;
      v52 = "nw_ws_write_header";
      v53 = 2082;
      v54 = (a1 + 227);
      v55 = 1024;
      *v56 = (v21 >> 15) & 1;
      *&v56[4] = 1024;
      *&v56[6] = (v21 >> 8) & 0xF;
      *v57 = 1024;
      *&v57[2] = (v21 >> 7) & 1;
      v58 = 1024;
      v59 = v21 & 0x7F;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output base header = {fin: %d, opcode: %d, mask: %d, payload: %d}", buf, 0x2Eu);
    }
  }

  if ((v21 & 0x7F) == 0x7F)
  {
    *v49 = bswap64(a5);
    nw_framer_write_output(v14, v49, 8uLL);
    if (gLogDatapath == 1)
    {
      v22 = __nwlog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v52 = "nw_ws_write_header";
        v53 = 2082;
        v54 = (a1 + 227);
        v55 = 2048;
        *v56 = a5;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output extended payload(64) = %llu", buf, 0x20u);
      }

      goto LABEL_25;
    }
  }

  else if ((v21 & 0x7F) == 0x7E)
  {
    *v49 = bswap32(a5) >> 16;
    nw_framer_write_output(v14, v49, 2uLL);
    if (gLogDatapath == 1)
    {
      v22 = __nwlog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v52 = "nw_ws_write_header";
        v53 = 2082;
        v54 = (a1 + 227);
        v55 = 1024;
        *v56 = a5;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output extended payload(16) = %hu", buf, 0x1Cu);
      }

LABEL_25:
    }
  }

  v23 = *(a1 + 225);
  if (a3 == 8)
  {
    v23 |= 0x20u;
    *(a1 + 225) = v23;
  }

  if ((v23 & 4) != 0)
  {
    if (a3 == 8 && a4 != 1005)
    {
      if (a5 >= 0x7C)
      {
        v45 = __nwlog_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v52 = "nw_ws_write_header";
          _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s ws.output: attempted to send close frame of >125 bytes", buf, 0xCu);
        }

LABEL_86:

LABEL_42:
        v26 = 0;
        goto LABEL_43;
      }

      *v49 = bswap32(a4) >> 16;
      nw_framer_write_output(v14, v49, 2uLL);
      if (gLogDatapath == 1)
      {
        v46 = __nwlog_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v52 = "nw_ws_write_header";
          v53 = 2082;
          v54 = (a1 + 227);
          v55 = 1024;
          *v56 = *v49;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output wrote unmasked close code %hu", buf, 0x1Cu);
        }
      }
    }

    if (gLogDatapath == 1)
    {
      v40 = __nwlog_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v52 = "nw_ws_write_header";
        v53 = 2082;
        v54 = (a1 + 227);
        v55 = 1024;
        *v56 = 0;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output masking_key = %d", buf, 0x1Cu);
      }
    }

    goto LABEL_42;
  }

  *v49 = arc4random_uniform(0xFFFFFFFF);
  nw_framer_write_output(v14, v49, 4uLL);
  if (a3 == 8 && a4 != 1005)
  {
    if (a5 < 0x7C)
    {
      v24 = bswap32(a4);
      v48[0] = v49[0] ^ BYTE2(v24);
      v48[1] = v49[1] ^ HIBYTE(v24);
      nw_framer_write_output(v14, v48, 2uLL);
      if (gLogDatapath == 1)
      {
        v47 = __nwlog_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v52 = "nw_ws_write_header";
          v53 = 2082;
          v54 = (a1 + 227);
          v55 = 1024;
          *v56 = *v48;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output wrote masked close code %hu", buf, 0x1Cu);
        }
      }

      v25 = *v49;
      v49[0] = v49[2];
      v49[1] = v49[3];
      *&v49[2] = v25;
      goto LABEL_35;
    }

    v45 = __nwlog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v52 = "nw_ws_write_header";
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s ws.output: attempted to send close frame of >125 bytes", buf, 0xCu);
    }

    goto LABEL_86;
  }

LABEL_35:
  if (gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = "server";
      v19 = (*(a1 + 225) & 4) == 0;
      v52 = "nw_ws_write_header";
      *buf = 136446978;
      if (v19)
      {
        v42 = "client";
      }

      v53 = 2082;
      v54 = (a1 + 227);
      v55 = 2082;
      *v56 = v42;
      *&v56[8] = 1024;
      *v57 = *v49;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s output masking_key = %u", buf, 0x26u);
    }
  }

  v26 = *v49;
LABEL_43:

  return v26;
}

unint64_t __nw_protocol_copy_ws_definition_block_invoke_10(uint64_t a1, const UInt8 *a2, unint64_t numBytes)
{
  result = 0;
  v44 = *MEMORY[0x1E69E9840];
  if (!a2 || !numBytes)
  {
    return result;
  }

  if (CFHTTPMessageAppendBytes(*(*(*(a1 + 40) + 8) + 72), a2, numBytes))
  {
    if (!CFHTTPMessageIsHeaderComplete(*(*(*(a1 + 40) + 8) + 72)))
    {
      result = numBytes;
LABEL_32:
      *(*(*(a1 + 40) + 8) + 80) += result;
      if (gLogDatapath == 1)
      {
        v29 = result;
        v30 = __nwlog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(*(a1 + 40) + 8);
          v32 = v31 + 275;
          v33 = *(v31 + 80);
          *buf = 136446722;
          v37 = "nw_protocol_copy_ws_definition_block_invoke";
          v38 = 2082;
          v39 = v32;
          v40 = 2048;
          v41 = v33;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Appended %zu bytes to http_message", buf, 0x20u);
        }

        return v29;
      }

      return result;
    }

    Length = CFHTTPMessageCopyBody(*(*(*(a1 + 40) + 8) + 72));
    v7 = Length;
    if (Length)
    {
      Length = CFDataGetLength(Length);
    }

    *(*(*(a1 + 48) + 8) + 24) = Length;
    v8 = *(*(*(a1 + 48) + 8) + 24);
    result = numBytes - v8;
    if (numBytes >= v8)
    {
LABEL_29:
      if (v7)
      {
        v27 = result;
        CFRelease(v7);
        result = v27;
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_32;
    }

    v9 = numBytes - v8;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 136446722;
    v37 = "nw_protocol_copy_ws_definition_block_invoke";
    v38 = 2048;
    v12 = v9;
    v39 = v9;
    v40 = 2048;
    v41 = v11;
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v13, &type, &v34))
    {
LABEL_26:
      if (v13)
      {
        free(v13);
      }

      result = 0;
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        v16 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136446722;
        v37 = "nw_protocol_copy_ws_definition_block_invoke";
        v38 = 2048;
        v39 = v12;
        v40 = 2048;
        v41 = v16;
        v17 = "%{public}s UNDERFLOW: buffer length = %zu, body length = %zu";
LABEL_23:
        v25 = v14;
        v26 = v15;
LABEL_24:
        _os_log_impl(&dword_181A37000, v25, v26, v17, buf, 0x20u);
      }
    }

    else
    {
      if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v22)
          {
            v23 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v37 = "nw_protocol_copy_ws_definition_block_invoke";
            v38 = 2048;
            v39 = v12;
            v40 = 2048;
            v41 = v23;
            v42 = 2082;
            v43 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v21, "%{public}s UNDERFLOW: buffer length = %zu, body length = %zu, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v22)
        {
          goto LABEL_25;
        }

        v28 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136446722;
        v37 = "nw_protocol_copy_ws_definition_block_invoke";
        v38 = 2048;
        v39 = v12;
        v40 = 2048;
        v41 = v28;
        v17 = "%{public}s UNDERFLOW: buffer length = %zu, body length = %zu, no backtrace";
        v25 = v14;
        v26 = v21;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        v24 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136446722;
        v37 = "nw_protocol_copy_ws_definition_block_invoke";
        v38 = 2048;
        v39 = v12;
        v40 = 2048;
        v41 = v24;
        v17 = "%{public}s UNDERFLOW: buffer length = %zu, body length = %zu, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = *(*(a1 + 40) + 8) + 275;
    *buf = 136446466;
    v37 = "nw_protocol_copy_ws_definition_block_invoke";
    v38 = 2082;
    v39 = v19;
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s CFHTTPMessageAppendBytes", buf, 0x16u);
  }

  nw_framer_mark_failed_with_error(*(a1 + 32), 12);
  return 1;
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_27(uint64_t a1, uint8_t *input_buffer, size_t input_length, int a4, int is_complete)
{
  v6 = input_buffer;
  v121 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v66 = is_complete;
    v67 = __nwlog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      v68 = *(*(a1 + 48) + 8) + 275;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v68;
      *&buf[22] = 2048;
      *v109 = input_length;
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input parse_input got %zu bytes", buf, 0x20u);
    }

    is_complete = v66;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else if (!input_buffer)
  {
    goto LABEL_8;
  }

  if (input_length)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 232);
    if (v9 == 1 || !v9 && *(v8 + 272) == 1)
    {
      v10 = is_complete;
      v11 = nw_utf8_validator_parse((v8 + 270), v6, input_length, is_complete);
      is_complete = v10;
      if ((v11 & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(*(a1 + 48) + 8) + 275;
          *buf = 136446466;
          *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received invalid utf-8 sequence", buf, 0x16u);
        }

        input_length = 0;
        *(*(*(a1 + 56) + 8) + 24) = 1;
        return input_length;
      }
    }
  }

LABEL_8:
  v12 = *(*(a1 + 48) + 8);
  if (!is_complete)
  {
    if ((*(v12 + 232) & 8) != 0)
    {
      return input_length;
    }

    goto LABEL_17;
  }

  v13 = *(v12 + 232);
  if (v13 != 8)
  {
    if (v13 != 10)
    {
      if (v13 == 9)
      {
        v14 = is_complete;
        framer = *(a1 + 32);
        if (framer)
        {
          if (gLogDatapath == 1)
          {
            v82 = __nwlog_obj();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
            {
              v83 = *(v12 + 160);
              v84 = *(v12 + 136);
              *buf = 136446978;
              *&buf[4] = "nw_ws_process_ping_frame";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 275;
              *&buf[22] = 1040;
              *v109 = v83;
              *&v109[4] = 2096;
              *&v109[6] = v84;
              _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got ping frame '%{network:data}.*P'", buf, 0x26u);
            }
          }

          v15 = nw_framer_copy_options(framer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL24nw_ws_process_ping_frameP13nw_ws_state_tPU23objcproto12OS_nw_framer8NSObject_block_invoke;
          *v109 = &unk_1E6A3AB18;
          *&v109[16] = v12 + 48;
          *&v109[8] = framer;
          nw_protocol_options_access_handle(v15, buf);

LABEL_15:
          v16 = 0;
LABEL_44:
          is_complete = v14;
          goto LABEL_73;
        }

        v78 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_ws_process_ping_frame";
        v79 = _os_log_send_and_compose_impl();

        LOBYTE(block) = 16;
        LOBYTE(v104) = 0;
        if (__nwlog_fault(v79, &block, &v104))
        {
          if (block == 17)
          {
            v80 = __nwlog_obj();
            v81 = block;
            if (os_log_type_enabled(v80, block))
            {
              *buf = 136446210;
              *&buf[4] = "nw_ws_process_ping_frame";
              _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null framer", buf, 0xCu);
            }
          }

          else
          {
            if (v104 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v90 = __nwlog_obj();
              v91 = block;
              v92 = os_log_type_enabled(v90, block);
              if (backtrace_string)
              {
                if (v92)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_ws_process_ping_frame";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
              }

              else
              {
                if (v92)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_ws_process_ping_frame";
                  _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null framer, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_155;
            }

            v80 = __nwlog_obj();
            v94 = block;
            if (os_log_type_enabled(v80, block))
            {
              *buf = 136446210;
              *&buf[4] = "nw_ws_process_ping_frame";
              _os_log_impl(&dword_181A37000, v80, v94, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_155:
        if (v79)
        {
          free(v79);
        }

        goto LABEL_15;
      }

LABEL_17:
      v16 = 0;
      goto LABEL_73;
    }

    *is_completea = is_complete;
    if (*(v12 + 136))
    {
      if (!gLogDatapath)
      {
        goto LABEL_46;
      }

      v19 = __nwlog_obj();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_140;
      }

      v20 = *(v12 + 160);
      v21 = *(v12 + 136);
      *buf = 136446978;
      *&buf[4] = "nw_ws_process_pong_frame";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 275;
      *&buf[22] = 1040;
      *v109 = v20;
      *&v109[4] = 2096;
      *&v109[6] = v21;
      v22 = "%{public}s %{public}s got pong frame '%{network:data}.*P'";
      v23 = v19;
      v24 = 38;
    }

    else
    {
      if (!gLogDatapath)
      {
        goto LABEL_46;
      }

      v19 = __nwlog_obj();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_140:

LABEL_46:
        v34 = MEMORY[0x1E69E9668];
        v35 = MEMORY[0x1E69E9668];
        v36 = *(v12 + 136);
        if (v36)
        {
          v34 = dispatch_data_create(v36, *(v12 + 160), 0, 0);
        }

        v104 = 0;
        v105 = &v104;
        v106 = 0x2020000000;
        v37 = *(v12 + 104);
        v107 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL24nw_ws_process_pong_frameP13nw_ws_state_t_block_invoke;
        *v109 = &unk_1E6A3BB28;
        framerb = v34;
        *&v109[8] = framerb;
        *&v109[16] = &v104;
        if (v37 && (_nw_array_apply(v37, buf) & 1) == 0)
        {
          v38 = _nw_array_create();
          v39 = 0;
          for (i = *(v12 + 104); i; i = *(v12 + 104))
          {
            count = _nw_array_get_count(i);
            i = *(v12 + 104);
            if (v39 >= count)
            {
              break;
            }

            if (i)
            {
              v42 = _nw_array_get_object_at_index(i, v39);
            }

            else
            {
              v42 = 0;
            }

            if (v39 > v105[3])
            {
              v43 = *(v12 + 104);
              if (v43)
              {
                v44 = _nw_array_get_object_at_index(v43, v39);
                v45 = v44;
                if (v38 && v44)
                {
                  _nw_array_append(v38, v44);
                }
              }

              else
              {
                v45 = 0;
              }

              goto LABEL_67;
            }

            v45 = nw_ws_ping_request_copy_pong_handler(v42);
            v46 = nw_ws_ping_request_copy_client_queue(v42);
            v47 = v46;
            if (v45 && v46)
            {
              block = MEMORY[0x1E69E9820];
              v117 = 3221225472;
              v118 = ___ZL24nw_ws_process_pong_frameP13nw_ws_state_t_block_invoke_2;
              v119 = &unk_1E6A3CE48;
              v120 = v45;
              dispatch_async(v47, &block);
              v48 = v120;
            }

            else
            {
              if (!(v45 | v46))
              {
                goto LABEL_65;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *v112 = 136446466;
                v113 = "nw_ws_process_pong_frame";
                v114 = 2082;
                v115 = v12 + 275;
                _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s %{public}s pong handler and client queue should both be nil", v112, 0x16u);
              }
            }

LABEL_65:
LABEL_67:

            ++v39;
          }

          *(v12 + 104) = v38;
        }

        _Block_object_dispose(&v104, 8);
        v16 = 0;
        is_complete = *is_completea;
LABEL_73:
        v49 = *(*(a1 + 48) + 8);
        v50 = input_length;
        if ((*(v49 + 232) & 8) != 0)
        {
          v6 = *(v49 + 136);
          v50 = *(v49 + 160);
        }

        v51 = *(a1 + 32);
        if (v6 && v50)
        {
          v52 = is_complete;
          nw_framer_deliver_input(v51, v6, v50, *(a1 + 40), is_complete);
          block = 0;
          v117 = 0;
          LOBYTE(v118) = 0;
          if (v50 >= 0x10)
          {
            v53 = 16;
          }

          else
          {
            v53 = v50;
          }

          strncpy(&block, v6, v53);
          if (gLogDatapath != 1)
          {
            goto LABEL_87;
          }

          v54 = __nwlog_obj();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = *(a1 + 40);
            v56 = "";
            v57 = *(*(a1 + 48) + 8) + 275;
            if (v52)
            {
              v56 = ", complete";
            }

            *buf = 136447490;
            *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v57;
            *&buf[22] = 2082;
            *v109 = &block;
            *&v109[8] = 2048;
            *&v109[10] = v55;
            *&v109[18] = 2048;
            *&v109[20] = v50;
            v110 = 2082;
            v111 = v56;
            _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input delivering input '%{public}s' %p (%zu bytes)%{public}s", buf, 0x3Eu);
          }
        }

        else
        {
          v58 = is_complete;
          nw_framer_deliver_input_no_copy(v51, 0, *(a1 + 40), is_complete);
          if (gLogDatapath != 1)
          {
LABEL_87:
            if (v16)
            {
              v59 = *(a1 + 32);
              async_block[0] = MEMORY[0x1E69E9820];
              async_block[1] = 3221225472;
              async_block[2] = __nw_protocol_copy_ws_definition_block_invoke_30;
              async_block[3] = &unk_1E6A3C060;
              v102 = *(a1 + 48);
              v103 = v16;
              v101 = v59;
              nw_framer_async(v101, async_block);
            }

            return input_length;
          }

          v54 = __nwlog_obj();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v69 = *(a1 + 40);
            v70 = *(*(a1 + 48) + 8);
            v71 = v70 + 275;
            v72 = *(v70 + 160);
            v73 = "";
            if (v58)
            {
              v73 = ", complete";
            }

            *buf = 136447234;
            *&buf[4] = "nw_protocol_copy_ws_definition_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v71;
            *&buf[22] = 2048;
            *v109 = v69;
            *&v109[8] = 2048;
            *&v109[10] = v72;
            *&v109[18] = 2082;
            *&v109[20] = v73;
            _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input delivering input %p (%zu bytes)%{public}s", buf, 0x34u);
          }
        }

        goto LABEL_87;
      }

      *buf = 136446466;
      *&buf[4] = "nw_ws_process_pong_frame";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 275;
      v22 = "%{public}s %{public}s got empty pong frame, looking for first empty pong handler";
      v23 = v19;
      v24 = 22;
    }

    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
    goto LABEL_140;
  }

  v14 = is_complete;
  v25 = *(a1 + 40);
  v26 = *(a1 + 32);
  v27 = v25;
  framera = v26;
  if (!v26)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ws_process_close_frame";
    v75 = _os_log_send_and_compose_impl();

    LOBYTE(block) = 16;
    LOBYTE(v104) = 0;
    if (__nwlog_fault(v75, &block, &v104))
    {
      if (block == 17)
      {
        v76 = __nwlog_obj();
        v77 = block;
        if (os_log_type_enabled(v76, block))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_process_close_frame";
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else
      {
        if (v104 == 1)
        {
          v85 = __nw_create_backtrace_string();
          v86 = __nwlog_obj();
          v87 = block;
          v88 = os_log_type_enabled(v86, block);
          if (v85)
          {
            if (v88)
            {
              *buf = 136446466;
              *&buf[4] = "nw_ws_process_close_frame";
              *&buf[12] = 2082;
              *&buf[14] = v85;
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v85);
          }

          else
          {
            if (v88)
            {
              *buf = 136446210;
              *&buf[4] = "nw_ws_process_close_frame";
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null framer, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_150;
        }

        v76 = __nwlog_obj();
        v93 = block;
        if (os_log_type_enabled(v76, block))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_process_close_frame";
          _os_log_impl(&dword_181A37000, v76, v93, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_150:
    if (v75)
    {
      free(v75);
    }

    goto LABEL_35;
  }

  v28 = *(v12 + 136);
  v29 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (!v28 || (v30 = *(v12 + 160), v30 < 2))
  {
    if (gLogDatapath == 1)
    {
      v64 = __nwlog_obj();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_ws_process_close_frame";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 275;
        _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got close frame with no close code", buf, 0x16u);
      }

      v32 = nw_ws_close_code_no_status_received;
      goto LABEL_126;
    }

    v32 = nw_ws_close_code_no_status_received;
LABEL_38:
    if ((*(v12 + 273) & 0x20) == 0)
    {
      nw_ws_write_control_frame(v12 + 48, framera, 8, v32, *(v12 + 136), *(v12 + 160));
    }

    if (v32 == nw_ws_close_code_message_too_big)
    {
      v16 = 40;
    }

    else
    {
      v16 = 57;
    }

    goto LABEL_43;
  }

  v31 = *v28;
  v32 = __rev16(v31);
  v33 = v31 != 63235 && (v32 - 1007) >= 5u;
  if (v33 && (v32 - 3000) >= 0x7D0u && (v32 & 0xFFFC) != 0x3E8)
  {
LABEL_35:
    v16 = 22;
LABEL_43:

    goto LABEL_44;
  }

  v61 = v30 - 2;
  *(v12 + 160) = v61;
  if (!v61)
  {
    v62 = 0;
    goto LABEL_97;
  }

  v62 = malloc_type_malloc(v61, 0xDFCE5751uLL);
  if (v62)
  {
LABEL_94:
    memcpy(v62, (*(v12 + 136) + 2), *(v12 + 160));
    v28 = *(v12 + 136);
    if (!v28)
    {
LABEL_98:
      *(v12 + 136) = v62;
      nw_ws_metadata_set_close_code(v27, v32);
      if (BYTE1(v29[82].isa) == 1)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = *(v12 + 160);
          *buf = 136447234;
          *&buf[4] = "nw_ws_process_close_frame";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 275;
          *&buf[22] = 1040;
          *v109 = v65;
          *&v109[4] = 2082;
          *&v109[6] = v62;
          *&v109[14] = 1024;
          *&v109[16] = v32;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got close frame '%{public}.*s (%u)", buf, 0x2Cu);
        }

LABEL_126:

        goto LABEL_38;
      }

      goto LABEL_38;
    }

LABEL_97:
    free(v28);
    *(v12 + 136) = 0;
    goto LABEL_98;
  }

  v95 = __nwlog_obj();
  os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_ws_process_close_frame";
  v63 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v63);
  if (!result)
  {
    free(v63);
    v29 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    goto LABEL_94;
  }

  __break(1u);
  return result;
}

uint64_t ___ZL17nw_ws_parse_inputPU23objcproto12OS_nw_framer8NSObjectP13nw_ws_state_tmmPhU13block_pointerFmS4_mbbE_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if ((*(v6 + 216) & 0x80) != 0)
  {
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(v6 + 88))
    {
      v7 = a3 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_14;
    }
  }

  v8 = 0;
  do
  {
    v9 = *(*(a1 + 48) + ((v8 + *(*(a1 + 48) + 120)) & 3) + 204) ^ v8[a2];
    v8[a2] = v9;
    v10 = *(a1 + 48);
    v11 = *(v10 + 88);
    if (v11)
    {
      v8[v11 + *(v10 + 120)] = v9;
    }

    ++v8;
  }

  while (a3 != v8);
  v6 = *(a1 + 48);
LABEL_14:
  v12 = &a3[*(v6 + 120)];
  *(v6 + 120) = v12;
  v13 = *(v6 + 225);
  v14 = (v13 & 8) != 0 && v12 == *(v6 + 112);
  if (gLogDatapath == 1)
  {
    v56 = __nwlog_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(a1 + 48);
      v58 = (v57 + 227);
      v59 = *(v57 + 120);
      if (!v57)
      {
        v58 = "";
      }

      v60 = (*(v57 + 225) >> 11) & 1;
      *buf = 136447234;
      v65 = "nw_ws_parse_input_block_invoke";
      v66 = 2082;
      v67 = v58;
      v68 = 2048;
      v69 = v59;
      v70 = 1024;
      v71 = v60;
      v72 = 1024;
      v73 = v14;
      _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input input_itr=%zu, inflating = %d, is_final = %d", buf, 0x2Cu);
    }

    v6 = *(a1 + 48);
    v13 = *(v6 + 225);
  }

  v15 = *(v6 + 196);
  if ((v13 & 0xA00) == 0)
  {
    if (v15)
    {
      nw_ws_metadata_set_permessage_deflate(v15, 0);
    }

    (*(*(a1 + 40) + 16))();
    return v3;
  }

  nw_ws_metadata_set_permessage_deflate(v15, 1u);
  *(*(a1 + 48) + 225) |= 0x800u;
  v16 = *(a1 + 48);
  v17 = *(v16 + 64);
  if (v17)
  {
LABEL_20:
    *(v17 + 8) = v3;
    *v17 = a2;
    v18 = v14;
    while (1)
    {
      v36 = inflate(*(v16 + 64), 2);
      v37 = v36;
      if (v36 > 1)
      {
        if (v36 != -5)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v53 = *(a1 + 48);
            v54 = zError(v37);
            v55 = (v53 + 227);
            *buf = 136446722;
            if (!v53)
            {
              v55 = "";
            }

            v65 = "nw_ws_parse_input_block_invoke";
            v66 = 2082;
            v67 = v55;
            v68 = 2080;
            v69 = v54;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s inflate returned %s", buf, 0x20u);
          }

          goto LABEL_73;
        }

        if (gLogDatapath == 1)
        {
          v46 = __nwlog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = *(a1 + 48);
            v48 = (v47 + 227);
            v7 = v47 == 0;
            v49 = "";
            if (!v7)
            {
              v49 = v48;
            }

            *buf = 136446722;
            v65 = "nw_ws_parse_input_block_invoke";
            v66 = 2082;
            v67 = v49;
            v68 = 2048;
            v69 = v3;
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s finished processing %zu bytes of compressed data", buf, 0x20u);
          }
        }

        if (!v14)
        {
          return v3;
        }

        if (!v18)
        {
          (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
          *(*(a1 + 48) + 225) &= ~0x800u;
          return v3;
        }

        if (gLogDatapath == 1)
        {
          v42 = __nwlog_obj();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v43 = *(a1 + 48);
            v44 = (v43 + 227);
            v7 = v43 == 0;
            v45 = "";
            if (!v7)
            {
              v45 = v44;
            }

            *buf = 136446466;
            v65 = "nw_ws_parse_input_block_invoke";
            v66 = 2082;
            v67 = v45;
            _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s adding trailer to last compressed payload in message", buf, 0x16u);
          }
        }

        v18 = 0;
        v16 = *(a1 + 48);
        v35 = *(v16 + 64);
        *(v35 + 8) = 4;
        *v35 = &inflate_final_payload_trailer;
      }

      else
      {
        if (v36 == 1)
        {
          inflateReset(*(*(a1 + 48) + 64));
        }

        v16 = *(a1 + 48);
        v38 = *(v16 + 144);
        v39 = *(*(v16 + 64) + 32);
        v40 = (v38 - v39);
        if (v38 != v39)
        {
          if (gLogDatapath == 1)
          {
            log = __nwlog_obj();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v50 = *(a1 + 48);
              v51 = (v50 + 227);
              v7 = v50 == 0;
              v52 = "";
              if (!v7)
              {
                v52 = v51;
              }

              *buf = 136446722;
              v65 = "nw_ws_parse_input_block_invoke";
              v66 = 2082;
              v67 = v52;
              v68 = 2048;
              v69 = v40;
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s delivering %zu bytes of uncompressed data", buf, 0x20u);
            }

            v16 = *(a1 + 48);
          }

          (*(*(a1 + 40) + 16))(*(a1 + 40), *(v16 + 80));
          v16 = *(a1 + 48);
          v41 = *(v16 + 64);
          *(v41 + 32) = *(v16 + 144);
          *(v41 + 24) = *(v16 + 80);
        }
      }

      if (v37 == 1)
      {
        return v3;
      }
    }
  }

  v19 = malloc_type_malloc(0x70uLL, 0x72E38EF8uLL);
  if (!v19)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v65 = "nw_ws_parse_input_block_invoke";
    v21 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v21);
    if (result)
    {
      goto LABEL_83;
    }

    free(v21);
  }

  v23 = *(a1 + 48);
  *(v23 + 64) = v19;
  v24 = *(v23 + 144);
  if (!v24)
  {
    v61 = __nwlog_obj();
    os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v65 = "nw_ws_parse_input_block_invoke";
    v62 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v62);
    if (result)
    {
      goto LABEL_83;
    }

    free(v62);
    v24 = 0;
  }

  v25 = malloc_type_malloc(v24, 0x30ACB0F4uLL);
  if (v25)
  {
LABEL_31:
    v28 = *(a1 + 48);
    *(v28 + 80) = v25;
    v29 = *(v28 + 64);
    v29->avail_out = *(v28 + 144);
    v29->next_out = v25;
    v29->zfree = 0;
    v29->opaque = 0;
    v29->zalloc = 0;
    v30 = 220;
    if ((*(v28 + 225) & 4) != 0)
    {
      v30 = 221;
    }

    v31 = inflateInit2_(v29, -*(v28 + v30), "1.2.12", 112);
    if (!v31)
    {
      v16 = *(a1 + 48);
      v17 = *(v16 + 64);
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 48);
      *buf = 136446722;
      v65 = "nw_ws_parse_input_block_invoke";
      if (v33)
      {
        v34 = (v33 + 227);
      }

      else
      {
        v34 = "";
      }

      v66 = 2082;
      v67 = v34;
      v68 = 1024;
      LODWORD(v69) = v31;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s inflateInit2 returned %d", buf, 0x1Cu);
    }

LABEL_73:

    nw_framer_mark_failed_with_error(*(a1 + 32), 100);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v65 = "nw_ws_parse_input_block_invoke";
  v27 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v27);
  if (!result)
  {
    free(v27);
    goto LABEL_31;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t ___ZL24nw_ws_process_ping_frameP13nw_ws_state_tPU23objcproto12OS_nw_framer8NSObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a2 + 70))
  {
    nw_ws_write_control_frame(*(a1 + 40), *(a1 + 32), 10, 0x3EDu, *(*(a1 + 40) + 88), *(*(a1 + 40) + 112));
    if (gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 40);
        v6 = (v5 + 227);
        if (!v5)
        {
          v6 = "";
        }

        v7 = *(v5 + 112);
        v8 = *(v5 + 88);
        v9 = 136446978;
        v10 = "nw_ws_process_ping_frame_block_invoke";
        v11 = 2082;
        v12 = v6;
        v13 = 1040;
        v14 = v7;
        v15 = 2096;
        v16 = v8;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s replying to ping frame '%{network:data}.*P'", &v9, 0x26u);
      }
    }
  }

  return 1;
}

uint64_t ___ZL24nw_ws_process_pong_frameP13nw_ws_state_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5[1];
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_ws_ping_request_copy_contents";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_ws_ping_request_copy_contents";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null ping_request", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_ws_ping_request_copy_contents";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null ping_request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_ws_ping_request_copy_contents";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null ping_request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_ws_ping_request_copy_contents";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null ping_request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v11)
  {
    free(v11);
  }

  v7 = 0;
LABEL_3:

  is_equal = nw_dispatch_data_is_equal(v7, *(a1 + 32));
  if (is_equal)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return is_equal ^ 1u;
}

void nw_ws_write_control_frame(uint64_t a1, void *a2, int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_ws_write_control_frame";
    v18 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v18, type, &v26))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (os_log_type_enabled(v19, type[0]))
        {
          *buf = 136446210;
          v28 = "nw_ws_write_control_frame";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null state", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v22 = type[0];
        v23 = os_log_type_enabled(v19, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v28 = "nw_ws_write_control_frame";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v23)
        {
          *buf = 136446210;
          v28 = "nw_ws_write_control_frame";
          _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v24 = type[0];
        if (os_log_type_enabled(v19, type[0]))
        {
          *buf = 136446210;
          v28 = "nw_ws_write_control_frame";
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_10;
  }

  *type = nw_ws_write_header(a1, v11, a3, a4, a6, 0, 1);
  if (!a5 || !a6)
  {
    goto LABEL_10;
  }

  v12 = malloc_type_malloc(a6, 0x354B4410uLL);
  if (v12)
  {
LABEL_7:
    v15 = 0;
    do
    {
      v12[v15] = *(type | v15 & 3) ^ *(a5 + v15);
      ++v15;
    }

    while (a6 != v15);
    v16 = dispatch_data_create(v12, a6, 0, *MEMORY[0x1E69E9648]);
    nw_framer_write_output_data(v11, v16);

LABEL_10:
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v28 = "nw_ws_write_control_frame";
  v14 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v14))
  {
    free(v14);
    v12 = 0;
    goto LABEL_7;
  }

  __break(1u);
}
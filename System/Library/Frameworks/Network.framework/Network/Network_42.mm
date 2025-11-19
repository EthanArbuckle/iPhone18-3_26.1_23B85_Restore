_DWORD *nw_protocol_custom_mapping_get_key(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  result = a1 + 1;
  *a2 = v3;
  return result;
}

void nw_protocol_instance_report_ready(void *a1, unint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_report_ready";
    v34 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81) = 0;
    if (!__nwlog_fault(v34, type, &v81))
    {
      goto LABEL_134;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v81 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v41 = type[0];
      v42 = os_log_type_enabled(v35, type[0]);
      if (backtrace_string)
      {
        if (v42)
        {
          *buf = 136446466;
          v86 = "nw_protocol_instance_report_ready";
          v87 = 2082;
          v88 = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_134:
        if (!v34)
        {
          goto LABEL_54;
        }

        goto LABEL_135;
      }

      if (v42)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v49, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_133:

    goto LABEL_134;
  }

  v5 = v3[15];
  if (v5)
  {
    v6 = v5;
    v7 = v6;
    if ((v6[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v6[1]);
    }
  }

  if ((*(v4 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v86 = "nw_protocol_instance_report_ready";
      v87 = 2082;
      v88 = v4 + 415;
      v89 = 2080;
      v90 = " ";
      v91 = 2048;
      v92 = a2;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReporting flow %llx ready", buf, 0x2Au);
    }
  }

  if (*(v4[1] + 64) != 3)
  {
    if (a2 == -1)
    {
      *(v4 + 410) |= 8u;
      nw_protocol_implementation_report_connected(v4, (v4 - 12), *(v4 - 6), 0xFFFFFFFFFFFFFFFFLL);
      nw_protocol_instance_update_available_paths(v4);
      goto LABEL_54;
    }

    v38 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_report_ready";
    v34 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81) = 0;
    if (!__nwlog_fault(v34, type, &v81))
    {
      goto LABEL_134;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v39, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 0xCu);
      }
    }

    else if (v81 == 1)
    {
      v54 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v55 = type[0];
      v56 = os_log_type_enabled(v35, type[0]);
      if (v54)
      {
        if (v56)
        {
          *buf = 136446466;
          v86 = "nw_protocol_instance_report_ready";
          v87 = 2082;
          v88 = v54;
          _os_log_impl(&dword_181A37000, v35, v55, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        if (!v34)
        {
          goto LABEL_54;
        }

LABEL_135:
        free(v34);
        goto LABEL_54;
      }

      if (v56)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v55, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v60, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_133;
  }

  *(v4 + 410) |= 8u;
  v8 = v4[29];
  if (a2 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __nw_protocol_instance_report_ready_block_invoke;
    v76[3] = &unk_1E6A35D48;
    v9 = v4;
    v77 = v9;
    v78 = a2;
    nw_hash_table_apply(v8, v76);
    nw_protocol_instance_update_available_paths(v9);
    v10 = nw_protocol_instance_copy_path(v9, -1);
    v11 = nw_path_copy_interface(v10);
    v12 = v9->wakeup;
    if ((*(v4 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v86 = "nw_protocol_instance_report_ready";
        v87 = 2082;
        v88 = &v9->flow_in_connected + 7;
        v89 = 2080;
        v90 = " ";
        v91 = 2112;
        v92 = v11;
        v93 = 2112;
        v94 = v12;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sCalling notify with interface %@ for flow_registration %@", buf, 0x34u);
      }
    }

    v14 = *&v9[-1].log_str[41];
    if (v14)
    {
      v15 = *(v14 + 5);
      v16 = *&v9[-1].log_str[41];
      if (v15 != &nw_protocol_ref_counted_handle)
      {
        if (v15 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v16) = 0;
          v17 = 1;
          goto LABEL_34;
        }

        v16 = *(v14 + 8);
        if (!v16)
        {
          v17 = 1;
          goto LABEL_34;
        }
      }

      v22 = *(v16 + 88);
      v17 = 0;
      if (v22)
      {
        *(v16 + 88) = v22 + 1;
      }

      LOBYTE(v16) = -1;
LABEL_34:
      *type = v14;
      v84 = v16;
      v23 = *&v9[-1].log_str[33];
      p_paths_log_id_num = &v9[-1].paths_log_id_num;
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (p_paths_log_id_num = *&v9[-1].log_str[57]) != 0)
      {
        v27 = *(p_paths_log_id_num + 11);
        v26 = 0;
        if (v27)
        {
          *(p_paths_log_id_num + 11) = v27 + 1;
        }

        v25 = -1;
      }

      else
      {
        v25 = 0;
        v26 = 1;
      }

      v81 = &v9[-1].paths_log_id_num;
      v82 = v25;
      v28 = *(v14 + 3);
      if (v28)
      {
        v29 = *(v28 + 160);
        if (v29)
        {
          v29();
LABEL_44:
          if ((v26 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(&v81);
          }

          if ((v17 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(type);
          }

LABEL_48:
          if ((*(v4 + 413) & 4) == 0 && (v9->flow_in_connected & 0x400000000) != 0)
          {
            if ((*(v4 + 413) & 0x80) == 0 && gLogDatapath == 1)
            {
              v65 = __nwlog_obj();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                v86 = "nw_protocol_instance_report_ready";
                v87 = 2082;
                v88 = &v9->flow_in_connected + 7;
                v89 = 2080;
                v90 = " ";
                _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemoving instance now that we are fully connected", buf, 0x20u);
              }
            }

            nw_protocol_remove_instance(&v9[-1].paths_log_id_num);
          }

          goto LABEL_54;
        }
      }

      v43 = v14;
      v44 = __nwlog_obj();
      v45 = *(v43 + 2);
      *buf = 136446722;
      v86 = "__nw_protocol_notify";
      if (!v45)
      {
        v45 = "invalid";
      }

      v87 = 2082;
      v88 = v45;
      v89 = 2048;
      *v73 = v43;
      v90 = v43;
      v46 = v44;
      v75 = _os_log_send_and_compose_impl();

      v80 = OS_LOG_TYPE_ERROR;
      v79 = 0;
      if (__nwlog_fault(v75, &v80, &v79))
      {
        if (v80 == OS_LOG_TYPE_FAULT)
        {
          v47 = __nwlog_obj();
          v70 = v80;
          if (os_log_type_enabled(v47, v80))
          {
            v48 = *(*v73 + 16);
            if (!v48)
            {
              v48 = "invalid";
            }

            *buf = 136446722;
            v86 = "__nw_protocol_notify";
            v87 = 2082;
            v88 = v48;
            v89 = 2048;
            v90 = *v73;
            _os_log_impl(&dword_181A37000, v47, v70, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 0x20u);
          }
        }

        else
        {
          if (v79 == 1)
          {
            v57 = __nw_create_backtrace_string();
            v71 = __nwlog_obj();
            v69 = v80;
            v58 = os_log_type_enabled(v71, v80);
            if (v57)
            {
              if (v58)
              {
                v59 = *(*v73 + 16);
                if (!v59)
                {
                  v59 = "invalid";
                }

                *buf = 136446978;
                v86 = "__nw_protocol_notify";
                v87 = 2082;
                v88 = v59;
                v89 = 2048;
                v90 = *v73;
                v91 = 2082;
                v92 = v57;
                _os_log_impl(&dword_181A37000, v71, v69, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v57);
            }

            else
            {
              if (v58)
              {
                v66 = *(*v73 + 16);
                if (!v66)
                {
                  v66 = "invalid";
                }

                *buf = 136446722;
                v86 = "__nw_protocol_notify";
                v87 = 2082;
                v88 = v66;
                v89 = 2048;
                v90 = *v73;
                _os_log_impl(&dword_181A37000, v71, v69, "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace", buf, 0x20u);
              }
            }

            goto LABEL_141;
          }

          v47 = __nwlog_obj();
          v72 = v80;
          if (os_log_type_enabled(v47, v80))
          {
            v63 = *(*v73 + 16);
            if (!v63)
            {
              v63 = "invalid";
            }

            *buf = 136446722;
            v86 = "__nw_protocol_notify";
            v87 = 2082;
            v88 = v63;
            v89 = 2048;
            v90 = *v73;
            _os_log_impl(&dword_181A37000, v47, v72, "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_141:
      if (v75)
      {
        free(v75);
      }

      goto LABEL_44;
    }

    v50 = __nwlog_obj();
    *buf = 136446210;
    v86 = "__nw_protocol_notify";
    v51 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81) = 0;
    if (__nwlog_fault(v51, type, &v81))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = type[0];
        if (os_log_type_enabled(v52, type[0]))
        {
          *buf = 136446210;
          v86 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v81 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v52 = __nwlog_obj();
        v74 = type[0];
        v62 = os_log_type_enabled(v52, type[0]);
        if (v61)
        {
          if (v62)
          {
            *buf = 136446466;
            v86 = "__nw_protocol_notify";
            v87 = 2082;
            v88 = v61;
            _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v61);
          goto LABEL_149;
        }

        if (v62)
        {
          *buf = 136446210;
          v86 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v52 = __nwlog_obj();
        v64 = type[0];
        if (os_log_type_enabled(v52, type[0]))
        {
          *buf = 136446210;
          v86 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v52, v64, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_149:
    if (v51)
    {
      free(v51);
    }

    goto LABEL_48;
  }

  node = nw_hash_table_get_node(v4[29], a2, 8);
  if (node)
  {
    v19 = *(node + 84);
    if ((v19 & 0x10) == 0)
    {
      v20 = v19 | 0x10;
      *(node + 84) = v19 | 0x10;
      if ((v19 & 4) != 0)
      {
        v30 = *(node + 16);
        v31 = v4;
        if (nw_protocol_definition_get_message_is_stream(v4[1]) && *&v31[-1].log_str[41] == v30)
        {
          v32 = -2;
        }

        else
        {
          v32 = v30;
        }

        nw_protocol_implementation_report_connected(v31, (v4 - 12), v30, v32);
      }

      else
      {
        if ((*(v4 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
        {
          v67 = node;
          v68 = __nwlog_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            v86 = "nw_protocol_instance_report_ready";
            v87 = 2082;
            v88 = v4 + 415;
            v89 = 2080;
            v90 = " ";
            v91 = 2048;
            v92 = a2;
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelaying the delivery of connected() on flow %llx", buf, 0x2Au);
          }

          node = v67;
          v20 = *(v67 + 84);
        }

        *(node + 84) = v20 | 0x20;
      }
    }
  }

  else if ((*(v4 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v86 = "nw_protocol_instance_report_ready";
      v87 = 2082;
      v88 = v4 + 415;
      v89 = 2080;
      v90 = " ";
      v91 = 2048;
      v92 = a2;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot report ready, flow %llx does not exist", buf, 0x2Au);
    }
  }

LABEL_54:
}

void nw_protocol_implementation_report_connected(NWConcrete_nw_protocol_instance *a1, nw_protocol *a2, nw_protocol *a3, unint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_protocol_implementation_report_connected";
    v31 = _os_log_send_and_compose_impl();

    v60[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v31, v60, &v58))
    {
      goto LABEL_116;
    }

    if (v60[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v43 = v60[0];
      v44 = os_log_type_enabled(v32, v60[0]);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v63 = "nw_protocol_implementation_report_connected";
          v64 = 2082;
          v65 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_116:
        if (!v31)
        {
          goto LABEL_37;
        }

LABEL_117:
        free(v31);
        goto LABEL_37;
      }

      if (v44)
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v52 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v52, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_115:

    goto LABEL_116;
  }

  if (!a2)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_protocol_implementation_report_connected";
    v31 = _os_log_send_and_compose_impl();

    v60[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v31, v60, &v58))
    {
      goto LABEL_116;
    }

    if (v60[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v35 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null protocol", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v58 != 1)
    {
      v32 = __nwlog_obj();
      v53 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v53, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_115;
    }

    v45 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v46 = v60[0];
    v47 = os_log_type_enabled(v32, v60[0]);
    if (!v45)
    {
      if (v47)
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v46, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v47)
    {
      *buf = 136446466;
      v63 = "nw_protocol_implementation_report_connected";
      v64 = 2082;
      v65 = v45;
      _os_log_impl(&dword_181A37000, v32, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_84;
  }

  if (!a3)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_protocol_implementation_report_connected";
    v31 = _os_log_send_and_compose_impl();

    v60[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v31, v60, &v58))
    {
      goto LABEL_116;
    }

    if (v60[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v37 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null input_protocol", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v58 != 1)
    {
      v32 = __nwlog_obj();
      v54 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v54, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_115;
    }

    v45 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v48 = v60[0];
    v49 = os_log_type_enabled(v32, v60[0]);
    if (!v45)
    {
      if (v49)
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v49)
    {
      *buf = 136446466;
      v63 = "nw_protocol_implementation_report_connected";
      v64 = 2082;
      v65 = v45;
      _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_84:

    free(v45);
    if (!v31)
    {
      goto LABEL_37;
    }

    goto LABEL_117;
  }

  *&v7->level = a4;
  handle = a3->handle;
  v10 = a3;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v10) = 0;
      v11 = 1;
      goto LABEL_11;
    }

    v10 = *a3[1].flow_id;
    if (!v10)
    {
      v11 = 1;
      goto LABEL_11;
    }
  }

  callbacks = v10[1].callbacks;
  v11 = 0;
  if (callbacks)
  {
    v10[1].callbacks = (&callbacks->add_input_handler + 1);
  }

  LOBYTE(v10) = -1;
LABEL_11:
  *v60 = a3;
  v61 = v10;
  v13 = a2->handle;
  v14 = a2;
  if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *a2[1].flow_id) != 0)
  {
    v17 = v14[1].callbacks;
    v16 = 0;
    if (v17)
    {
      v14[1].callbacks = (&v17->add_input_handler + 1);
    }

    v15 = -1;
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  v58 = a2;
  v59 = v15;
  v18 = a3->callbacks;
  if (!v18 || (connected = v18->connected) == 0)
  {
    v24 = __nwlog_obj();
    identifier = a3->identifier;
    *buf = 136446722;
    v63 = "__nw_protocol_connected";
    if (!identifier)
    {
      identifier = "invalid";
    }

    v64 = 2082;
    v65 = identifier;
    v66 = 2048;
    v67 = a3;
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v26, &type, &v56))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        v29 = a3->identifier;
        if (!v29)
        {
          v29 = "invalid";
        }

        *buf = 136446722;
        v63 = "__nw_protocol_connected";
        v64 = 2082;
        v65 = v29;
        v66 = 2048;
        v67 = a3;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
      }
    }

    else if (v56 == 1)
    {
      v38 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v27, type);
      if (v38)
      {
        if (v40)
        {
          v41 = a3->identifier;
          if (!v41)
          {
            v41 = "invalid";
          }

          *buf = 136446978;
          v63 = "__nw_protocol_connected";
          v64 = 2082;
          v65 = v41;
          v66 = 2048;
          v67 = a3;
          v68 = 2082;
          v69 = v38;
          _os_log_impl(&dword_181A37000, v27, v39, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v38);
        goto LABEL_105;
      }

      if (v40)
      {
        v55 = a3->identifier;
        if (!v55)
        {
          v55 = "invalid";
        }

        *buf = 136446722;
        v63 = "__nw_protocol_connected";
        v64 = 2082;
        v65 = v55;
        v66 = 2048;
        v67 = a3;
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v27, type))
      {
        v51 = a3->identifier;
        if (!v51)
        {
          v51 = "invalid";
        }

        *buf = 136446722;
        v63 = "__nw_protocol_connected";
        v64 = 2082;
        v65 = v51;
        v66 = 2048;
        v67 = a3;
        _os_log_impl(&dword_181A37000, v27, v50, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
      }
    }

LABEL_105:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_21;
  }

  connected(a3, a2);
LABEL_21:
  if ((v16 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v58);
  }

  if ((v11 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(v60);
  }

  *&v8->level = 0;
  if (a4 >= 0xFFFFFFFFFFFFFFFELL && (SBYTE5(v8->flow_in_connected) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136447234;
      v63 = "nw_protocol_implementation_report_connected";
      v64 = 2082;
      v65 = (&v8->flow_in_connected + 7);
      v66 = 2080;
      v67 = " ";
      v68 = 2048;
      v69 = a2;
      v70 = 2048;
      v71 = a4;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReporting connected with protocol: %p, flow: %llx", buf, 0x34u);
    }
  }

  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    var13 = v8->parent_definition->extended_state->var13;
    if (var13)
    {
      var13(v8, a4);
    }
  }

  v22 = SBYTE3(v8->flow_in_connected);
  if (v22 < 0)
  {
    BYTE3(v8->flow_in_connected) = v22 & 0x7F;
    var14 = v8->parent_definition->extended_state->var14;
    if (var14)
    {
      var14(v8, 0);
    }
  }

  nw_protocol_implementation_finalize_pending_frames(v8);
LABEL_37:
}

void sub_181D13FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v8 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_implementation_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v46 = *MEMORY[0x1E69E9840];
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
        v43 = "nw_protocol_implementation_waiting_for_output";
        v6 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (__nwlog_fault(v6, &type, &v40))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_waiting_for_output";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v40 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v15 = type;
            v16 = os_log_type_enabled(v7, type);
            if (backtrace_string)
            {
              if (v16)
              {
                *buf = 136446466;
                v43 = "nw_protocol_implementation_waiting_for_output";
                v44 = 2082;
                v45 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

            if (v16)
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_waiting_for_output";
              _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v17 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_waiting_for_output";
              _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_31:
          v9 = 0;
          v13 = 0;
          goto LABEL_32;
        }

LABEL_30:
        free(v6);
        goto LABEL_31;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v3[1].handle;
    if (v10)
    {
      if (v10[10])
      {
        if (!a2 || (v11 = *&v3[5].flow_id[8]) == 0 || (node = nw_hash_table_get_node(v11, a2, 8)) == 0 || (*(node + 84) & 2) == 0)
        {
          v13 = (BYTE5(v3[7].output_handler_context) >> 2) & 1;
LABEL_32:

          return v13;
        }

LABEL_87:
        v13 = 0;
        goto LABEL_32;
      }

      v27 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_protocol_implementation_waiting_for_output";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v24, &type, &v40))
      {
LABEL_85:
        if (v24)
        {
          free(v24);
        }

        goto LABEL_87;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

LABEL_84:

        goto LABEL_85;
      }

      if (v40 != 1)
      {
        v25 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_84;
      }

      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v25, type);
      if (!v32)
      {
        if (v36)
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v36)
      {
        *buf = 136446466;
        v43 = "nw_protocol_implementation_waiting_for_output";
        v44 = 2082;
        v45 = v32;
        _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_protocol_implementation_waiting_for_output";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v24, &type, &v40))
      {
        goto LABEL_85;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v40 != 1)
      {
        v25 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_84;
      }

      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v25, type);
      if (!v32)
      {
        if (v34)
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v34)
      {
        *buf = 136446466;
        v43 = "nw_protocol_implementation_waiting_for_output";
        v44 = 2082;
        v45 = v32;
        _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v32);
    goto LABEL_85;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_protocol_implementation_waiting_for_output";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v20, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v21, type);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          v43 = "nw_protocol_implementation_waiting_for_output";
          v44 = 2082;
          v45 = v29;
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_76;
      }

      if (v31)
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        _os_log_impl(&dword_181A37000, v21, v37, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_76:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

BOOL __nw_sec_protocol_options_iterate_application_protocols_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __nw_sec_protocol_options_iterate_application_protocols_block_invoke_2;
      v6[3] = &unk_1E6A3A7A0;
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      xpc_array_apply(v3, v6);
    }
  }

  return a2 != 0;
}

BOOL nw_socket_initialize_socket(nw_protocol *a1)
{
  v189 = *MEMORY[0x1E69E9840];
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
        *&buf[4] = "nw_socket_initialize_socket";
        v7 = _os_log_send_and_compose_impl();
        out[0] = 16;
        v183[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v7, out, v183))
        {
          goto LABEL_71;
        }

        if (out[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = out[0];
          if (!os_log_type_enabled(gLogObj, out[0]))
          {
            goto LABEL_71;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_initialize_socket";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v183[0] == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = out[0];
            v20 = os_log_type_enabled(gLogObj, out[0]);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_71;
            }

            if (!v20)
            {
LABEL_71:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_325;
            }

            *buf = 136446210;
            *&buf[4] = "nw_socket_initialize_socket";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v41 = v18;
            v42 = v19;
LABEL_70:
            _os_log_impl(&dword_181A37000, v41, v42, v10, buf, 0xCu);
            goto LABEL_71;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = out[0];
          if (!os_log_type_enabled(gLogObj, out[0]))
          {
            goto LABEL_71;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_initialize_socket";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v41 = v8;
        v42 = v9;
        goto LABEL_70;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    v180 = v4;
    if (!v11)
    {
      goto LABEL_45;
    }

    connect = v11->connect;
    if (!connect)
    {
      goto LABEL_45;
    }

    v13 = connect[15];
    if (!v13)
    {
      goto LABEL_45;
    }

    connected = v11->connected;
    input_available = v6[2].callbacks;
    if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (input_available = v11->input_available) != 0)
    {
      get_output_frames = input_available->get_output_frames;
      if (get_output_frames)
      {
        input_available->get_output_frames = get_output_frames + 1;
      }

      v16 = v13(v11);
      v22 = v11->connected;
      p_add_input_handler = &v11->add_input_handler;
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (p_add_input_handler = v11->input_available) != 0)
      {
        v24 = p_add_input_handler[11];
        if (v24)
        {
          v25 = v24 - 1;
          p_add_input_handler[11] = v25;
          if (!v25)
          {
            v26 = v16;
            v27 = p_add_input_handler[8];
            if (v27)
            {
              p_add_input_handler[8] = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (p_add_input_handler[9])
            {
              v28 = p_add_input_handler[8];
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(p_add_input_handler);
            v16 = v26;
          }
        }
      }
    }

    else
    {
      v16 = v13(v11);
    }

    if (v16)
    {
      v29 = v16;
      v30 = _nw_path_allows_multipath(v29);
    }

    else
    {
LABEL_45:
      v30 = 0;
    }

    output_handler = v6[4].output_handler;
    if (output_handler == 1)
    {
      if (v30)
      {
        if ((*(&v6[6].callbacks + 5) & 0x80) != 0)
        {
          v30 = 0;
          v33 = 2;
          if (!v11)
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v34 = gconnectionLogObj;
          v33 = 2;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 2082;
            *&buf[14] = v6 + 420;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Multipath not supported for datagram connections", buf, 0x16u);
          }

          v30 = 0;
          if (!v11)
          {
LABEL_121:
            address_family = 0;
            callbacks_high = HIDWORD(v6[4].callbacks);
            if (callbacks_high < 0)
            {
              goto LABEL_122;
            }

            goto LABEL_242;
          }
        }
      }

      else
      {
        v33 = 2;
        if (!v11)
        {
          goto LABEL_121;
        }
      }
    }

    else
    {
      if (output_handler != 2)
      {
        if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_326;
          }

          v37 = v6[4].output_handler;
          *buf = 136446722;
          *&buf[4] = "nw_socket_initialize_socket";
          *&buf[12] = 2082;
          *&buf[14] = v6 + 420;
          *&buf[22] = 1024;
          *&buf[24] = v37;
          v38 = "%{public}s %{public}s Data mode %d unrecognized";
          v39 = v35;
          v40 = 28;
LABEL_251:
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
        }

LABEL_325:
        result = 0;
LABEL_326:
        if ((v4 & 1) == 0)
        {
          v165 = v1->handle;
          if (v165 == &nw_protocol_ref_counted_handle || v165 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
          {
            v166 = v1[1].callbacks;
            if (v166)
            {
              v167 = (v166 - 1);
              v1[1].callbacks = v167;
              if (!v167)
              {
                v168 = result;
                v169 = *v1[1].flow_id;
                if (v169)
                {
                  *v1[1].flow_id = 0;
                  v169[2](v169);
                  _Block_release(v169);
                }

                if (v1[1].flow_id[8])
                {
                  v170 = *v1[1].flow_id;
                  if (v170)
                  {
                    _Block_release(v170);
                  }
                }

                free(v1);
                return v168;
              }
            }
          }
        }

        return result;
      }

      if (!v6[2].handle)
      {
        memset(out, 0, sizeof(out));
        uuid_generate_random(out);
        metadata = _nw_tcp_create_metadata(out);
        v6[2].handle = metadata;
        *buf = nw_protocol_socket_get_receive_buffer_size;
        *&buf[8] = nw_protocol_socket_get_send_buffer_size;
        *&buf[16] = nw_protocol_socket_reset_keepalives;
        *&buf[24] = nw_protocol_socket_set_no_delay;
        *&buf[32] = nw_protocol_socket_set_no_push;
        v185 = nw_protocol_socket_set_no_wake_from_sleep;
        v186 = nw_protocol_socket_set_max_pacing_rate;
        nw_tcp_set_callbacks(metadata, &v6[1].output_handler, buf);
      }

      v33 = 1;
      if (!v11)
      {
        goto LABEL_121;
      }
    }

    v43 = v11->connect;
    if (!v43)
    {
      goto LABEL_121;
    }

    v44 = v43[16];
    if (v44)
    {
      v45 = v11->connected;
      v46 = &v11->add_input_handler;
      if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = v11->input_available) != 0)
      {
        v48 = v46[11];
        if (v48)
        {
          v46[11] = v48 + 1;
        }

        v47 = v44(v11);
        v49 = v11->connected;
        v50 = &v11->add_input_handler;
        if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = v11->input_available) != 0)
        {
          v51 = v50[11];
          if (v51)
          {
            v52 = v51 - 1;
            v50[11] = v52;
            if (!v52)
            {
              v53 = v50[8];
              if (v53)
              {
                v50[8] = 0;
                v53[2](v53);
                _Block_release(v53);
              }

              if (v50[9])
              {
                v54 = v50[8];
                if (v54)
                {
                  _Block_release(v54);
                }
              }

              free(v50);
            }
          }
        }
      }

      else
      {
        v47 = v44(v11);
      }

      v55 = v11->connect;
      if (!v55)
      {
        goto LABEL_239;
      }

      v56 = v55[17];
      if (!v56)
      {
        goto LABEL_239;
      }
    }

    else
    {
      v47 = 0;
      v56 = v43[17];
      if (!v56)
      {
        goto LABEL_239;
      }
    }

    v57 = v11->connected;
    v58 = &v11->add_input_handler;
    if (v57 == &nw_protocol_ref_counted_handle || v57 == &nw_protocol_ref_counted_additional_handle && (v58 = v11->input_available) != 0)
    {
      v60 = v58[11];
      if (v60)
      {
        v58[11] = v60 + 1;
      }

      v59 = v56(v11);
      v61 = v11->connected;
      v62 = &v11->add_input_handler;
      if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v62 = v11->input_available) != 0)
      {
        v63 = v62[11];
        if (v63)
        {
          v64 = v63 - 1;
          v62[11] = v64;
          if (!v64)
          {
            v65 = v59;
            v66 = v62[8];
            if (v66)
            {
              v62[8] = 0;
              v66[2](v66);
              _Block_release(v66);
            }

            if (v62[9])
            {
              v67 = v62[8];
              if (v67)
              {
                _Block_release(v67);
              }
            }

            free(v62);
            v59 = v65;
          }
        }
      }
    }

    else
    {
      v59 = v56(v11);
    }

    if (v59)
    {
      v68 = v59;
      address_family = _nw_endpoint_get_address_family(v68);

      if (!v47)
      {
LABEL_241:
        v4 = v180;
        callbacks_high = HIDWORD(v6[4].callbacks);
        if (callbacks_high < 0)
        {
LABEL_122:
          LOBYTE(v6[6].output_handler) = address_family;
          if (v30)
          {
            v75 = socket(39, v33, 0);
            HIDWORD(v6[4].callbacks) = v75;
            if ((v75 & 0x80000000) == 0)
            {
              HIBYTE(v6[6].callbacks) |= 2u;
              v4 = v180;
LABEL_132:
              v77 = nw_fd_wrapper_create(v75);
              output_handler_context = v6[2].output_handler_context;
              if ((output_handler_context & 1) != 0 && v6[2].default_input_handler)
              {
                v79 = v77;
                os_release(v6[2].default_input_handler);
                v77 = v79;
                output_handler_context = v6[2].output_handler_context;
              }

              v6[2].default_input_handler = v77;
              LOBYTE(v6[2].output_handler_context) = output_handler_context | 1;
              if ((nw_socket_set_common_sockopts(v1) & 1) == 0)
              {
                v86 = v6[2].output_handler_context;
                if (v86)
                {
                  default_input_handler = v6[2].default_input_handler;
                  if (default_input_handler)
                  {
                    os_release(default_input_handler);
                    v86 = v6[2].output_handler_context;
                  }
                }

                result = 0;
                v6[2].default_input_handler = 0;
                LOBYTE(v6[2].output_handler_context) = v86 | 1;
                HIDWORD(v6[4].callbacks) = -1;
                goto LABEL_326;
              }

              v80 = &v6[6].callbacks + 5;
              if ((*(&v6[6].callbacks + 5) & 0x100) == 0)
              {
                goto LABEL_197;
              }

              memset(v183, 0, sizeof(v183));
              nw_protocol_get_flow_id(v6, v183);
              v188 = -106;
              *out = *v183;
              if ((*v80 & 0x80) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v81 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 2082;
                  *&buf[14] = v6 + 420;
                  *&buf[22] = 1042;
                  *&buf[24] = 16;
                  *&buf[28] = 2098;
                  *&buf[30] = v183;
                  _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_INFO, "%{public}s %{public}s Setting UUID %{public,uuid_t}.16P for multilayer packet logging", buf, 0x26u);
                }
              }

              if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4386, out, 0x11u))
              {
                if (!v11)
                {
                  goto LABEL_365;
                }

                v107 = v11->connect;
                if (!v107)
                {
                  goto LABEL_365;
                }

                v108 = v107[14];
                if (!v108)
                {
                  goto LABEL_365;
                }

LABEL_197:
                v109 = v11->connected;
                v110 = &v11->add_input_handler;
                if (v109 == &nw_protocol_ref_counted_handle || v109 == &nw_protocol_ref_counted_additional_handle && (v110 = v11->input_available) != 0)
                {
                  v112 = v110[11];
                  if (v112)
                  {
                    v110[11] = v112 + 1;
                  }

                  v111 = v108(v11);
                  v113 = v11->connected;
                  if (v113 == &nw_protocol_ref_counted_handle || v113 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
                  {
                    v114 = v11->get_output_frames;
                    if (v114)
                    {
                      v115 = v114 - 1;
                      v11->get_output_frames = v115;
                      if (!v115)
                      {
                        v116 = v111;
                        v117 = v11->input_available;
                        if (v117)
                        {
                          v11->input_available = 0;
                          v117[2](v117);
                          _Block_release(v117);
                        }

                        if (v11->output_available)
                        {
                          v118 = v11->input_available;
                          if (v118)
                          {
                            _Block_release(v118);
                          }
                        }

                        free(v11);
                        v111 = v116;
                      }
                    }
                  }
                }

                else
                {
                  v111 = v108(v11);
                }

                if (v111 && (_nw_parameters_get_allow_socket_access(v111) & 1) == 0)
                {
                  if ((nw_fd_wrapper_guard(v6[2].default_input_handler) & 1) != 0 || (*v80 & 0x80) != 0)
                  {
                    goto LABEL_316;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v124 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_316;
                  }

                  v125 = HIDWORD(v6[4].callbacks);
                  *buf = 136446722;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v6 + 420;
                  *&buf[22] = 1024;
                  *&buf[24] = v125;
                  v121 = "%{public}s %{public}s Failed to guard socket fd %d";
                  v122 = v124;
                  v123 = OS_LOG_TYPE_ERROR;
                }

                else
                {
LABEL_365:
                  if ((*v80 & 0x80) != 0)
                  {
                    goto LABEL_316;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v119 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_316;
                  }

                  v120 = HIDWORD(v6[4].callbacks);
                  *buf = 136446722;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v6 + 420;
                  *&buf[22] = 1024;
                  *&buf[24] = v120;
                  v121 = "%{public}s %{public}s Not guarding fd %d";
                  v122 = v119;
                  v123 = OS_LOG_TYPE_DEFAULT;
                }

                _os_log_impl(&dword_181A37000, v122, v123, v121, buf, 0x1Cu);
LABEL_316:
                result = 1;
                goto LABEL_326;
              }

              v82 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v83 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_set_mpkl_uuid";
                *&buf[12] = 2082;
                *&buf[14] = v6 + 420;
                *&buf[22] = 1024;
                *&buf[24] = v82;
                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d", buf, 0x1Cu);
              }

              v84 = __nwlog_obj();
              v85 = v84;
              if (v82 == 22)
              {
                v4 = v180;
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = 22;
                  _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d", buf, 0x12u);
                }

                goto LABEL_197;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_set_mpkl_uuid";
              *&buf[12] = 1024;
              *&buf[14] = v82;
              v99 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v181 = 0;
              if (__nwlog_fault(v99, &type, &v181))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v100 = __nwlog_obj();
                  v101 = type;
                  if (!os_log_type_enabled(v100, type))
                  {
                    goto LABEL_195;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = v82;
                  v102 = "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d";
LABEL_193:
                  v106 = v100;
LABEL_194:
                  _os_log_impl(&dword_181A37000, v106, v101, v102, buf, 0x12u);
                  goto LABEL_195;
                }

                if (v181 != 1)
                {
                  v100 = __nwlog_obj();
                  v101 = type;
                  if (!os_log_type_enabled(v100, type))
                  {
                    goto LABEL_195;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = v82;
                  v102 = "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_193;
                }

                v103 = __nw_create_backtrace_string();
                v104 = __nwlog_obj();
                v101 = type;
                loga = v104;
                v105 = os_log_type_enabled(v104, type);
                if (v103)
                {
                  if (v105)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_socket_set_mpkl_uuid";
                    *&buf[12] = 1024;
                    *&buf[14] = v82;
                    *&buf[18] = 2082;
                    *&buf[20] = v103;
                    _os_log_impl(&dword_181A37000, loga, v101, "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v103);
                  goto LABEL_195;
                }

                if (v105)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = v82;
                  v102 = "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d, no backtrace";
                  v106 = loga;
                  goto LABEL_194;
                }
              }

LABEL_195:
              v4 = v180;
              if (v99)
              {
                free(v99);
              }

              goto LABEL_197;
            }

            if (**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) != 43)
            {
LABEL_154:
              v88 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v89 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 2082;
                *buf = 136447234;
                if (v30)
                {
                  v90 = 39;
                }

                else
                {
                  v90 = address_family;
                }

                *&buf[14] = v6 + 420;
                *&buf[22] = 1024;
                *&buf[24] = v90;
                *&buf[28] = 1024;
                *&buf[30] = v33;
                *&buf[34] = 1024;
                *&buf[36] = v88;
                _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to create socket(%d,%d) %{darwin.errno}d", buf, 0x28u);
              }

              else if (v30)
              {
                v90 = 39;
              }

              else
              {
                v90 = address_family;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446978;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v90;
              *&buf[18] = 1024;
              *&buf[20] = v33;
              *&buf[24] = 1024;
              *&buf[26] = v88;
              v91 = _os_log_send_and_compose_impl();
              out[0] = 16;
              v183[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v91, out, v183))
              {
                goto LABEL_177;
              }

              if (out[0] == 17)
              {
                v92 = __nwlog_obj();
                v93 = out[0];
                if (os_log_type_enabled(v92, out[0]))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v90;
                  *&buf[18] = 1024;
                  *&buf[20] = v33;
                  *&buf[24] = 1024;
                  *&buf[26] = v88;
                  v94 = "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d";
LABEL_175:
                  v98 = v92;
LABEL_176:
                  _os_log_impl(&dword_181A37000, v98, v93, v94, buf, 0x1Eu);
                }
              }

              else if (v183[0] == OS_LOG_TYPE_INFO)
              {
                v95 = __nw_create_backtrace_string();
                v96 = __nwlog_obj();
                v93 = out[0];
                log = v96;
                v97 = os_log_type_enabled(v96, out[0]);
                if (v95)
                {
                  if (v97)
                  {
                    *buf = 136447234;
                    *&buf[4] = "nw_socket_initialize_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v90;
                    *&buf[18] = 1024;
                    *&buf[20] = v33;
                    *&buf[24] = 1024;
                    *&buf[26] = v88;
                    *&buf[30] = 2082;
                    *&buf[32] = v95;
                    _os_log_impl(&dword_181A37000, log, v93, "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x28u);
                  }

                  free(v95);
                  goto LABEL_177;
                }

                if (v97)
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v90;
                  *&buf[18] = 1024;
                  *&buf[20] = v33;
                  *&buf[24] = 1024;
                  *&buf[26] = v88;
                  v94 = "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d, no backtrace";
                  v98 = log;
                  goto LABEL_176;
                }
              }

              else
              {
                v92 = __nwlog_obj();
                v93 = out[0];
                if (os_log_type_enabled(v92, out[0]))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v90;
                  *&buf[18] = 1024;
                  *&buf[20] = v33;
                  *&buf[24] = 1024;
                  *&buf[26] = v88;
                  v94 = "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_175;
                }
              }

LABEL_177:
              if (v91)
              {
                free(v91);
              }

              nw_socket_internal_error(&v6[1].output_handler);
              result = 0;
              v4 = v180;
              goto LABEL_326;
            }

            if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v76 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 2082;
                *&buf[14] = v6 + 420;
                _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s The kernel does not support MPTCP, using regular TCP", buf, 0x16u);
              }
            }
          }

          v75 = socket(address_family, v33, 0);
          HIDWORD(v6[4].callbacks) = v75;
          v4 = v180;
          if ((v75 & 0x80000000) == 0)
          {
            goto LABEL_132;
          }

          goto LABEL_154;
        }

LABEL_242:
        *out = 1;
        if (!setsockopt(callbacks_high, 0xFFFF, 4130, out, 4u))
        {
          goto LABEL_268;
        }

        v130 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v131 = gLogObj;
        if (v130 == 22)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = 22;
            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 0x12u);
          }

          goto LABEL_268;
        }

        *buf = 136446466;
        *&buf[4] = "nw_socket_initialize_socket";
        *&buf[12] = 1024;
        *&buf[14] = v130;
        v177 = 18;
        v134 = _os_log_send_and_compose_impl();
        v183[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v134, v183, &type))
        {
          if (v183[0] == OS_LOG_TYPE_FAULT)
          {
            v135 = __nwlog_obj();
            v136 = v183[0];
            if (!os_log_type_enabled(v135, v183[0]))
            {
              goto LABEL_266;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = v130;
            v137 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d";
            goto LABEL_265;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v135 = __nwlog_obj();
            v136 = v183[0];
            if (!os_log_type_enabled(v135, v183[0]))
            {
              goto LABEL_266;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = v130;
            v137 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_265;
          }

          v138 = __nw_create_backtrace_string();
          v135 = __nwlog_obj();
          v136 = v183[0];
          v139 = os_log_type_enabled(v135, v183[0]);
          if (v138)
          {
            if (v139)
            {
              *buf = 136446722;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v130;
              *&buf[18] = 2082;
              *&buf[20] = v138;
              _os_log_impl(&dword_181A37000, v135, v136, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v138);
            v4 = v180;
            goto LABEL_266;
          }

          v4 = v180;
          if (v139)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = v130;
            v137 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, no backtrace";
LABEL_265:
            _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0x12u);
          }
        }

LABEL_266:
        if (v134)
        {
          free(v134);
        }

LABEL_268:
        if ((ioctl(HIDWORD(v6[4].callbacks), 0x8004667EuLL, out, v177) & 0x80000000) == 0)
        {
          if (uuid_is_null(v1->flow_id) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4369, v1, 0x10u) || (v150 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8), LOBYTE(v6[6].output_handler) == 1) && v150 == 22)
          {
LABEL_270:
            if (v11)
            {
              v140 = v11->connect;
              if (v140)
              {
                v141 = v140[14];
                if (v141)
                {
                  v142 = v11->connected;
                  v143 = &v11->add_input_handler;
                  if (v142 == &nw_protocol_ref_counted_handle || v142 == &nw_protocol_ref_counted_additional_handle && (v143 = v11->input_available) != 0)
                  {
                    v155 = v143[11];
                    if (v155)
                    {
                      v143[11] = v155 + 1;
                    }

                    v144 = v141(v11);
                    v156 = v11->connected;
                    if (v156 == &nw_protocol_ref_counted_handle || v156 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
                    {
                      v157 = v11->get_output_frames;
                      if (v157)
                      {
                        v158 = v157 - 1;
                        v11->get_output_frames = v158;
                        if (!v158)
                        {
                          v159 = v144;
                          v160 = v11->input_available;
                          if (v160)
                          {
                            v11->input_available = 0;
                            v160[2](v160);
                            _Block_release(v160);
                          }

                          if (v11->output_available)
                          {
                            v161 = v11->input_available;
                            if (v161)
                            {
                              _Block_release(v161);
                            }
                          }

                          free(v11);
                          v144 = v159;
                        }
                      }
                    }
                  }

                  else
                  {
                    v144 = v141(v11);
                  }

                  if (v144)
                  {
                    v162 = _nw_parameters_copy_default_protocol_stack(v144);
                    if (v162)
                    {
                      v163 = v162;
                      v164 = _nw_protocol_stack_copy_transport_protocol(v162);
                      os_release(v163);
                      if (v164)
                      {
                        if (_nw_protocol_options_is_tcp(v164))
                        {
                          nw_socket_set_bidirectional_tcp_sockopts(&v6[1].output_handler, v164);
                        }

                        os_release(v164);
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_316;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v151 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 2082;
            *&buf[14] = v6 + 420;
            *&buf[22] = 1024;
            *&buf[24] = v150;
            _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, 0x1Cu);
          }

          if (v150 == 2 || v150 == 22)
          {
            v152 = __nwlog_obj();
            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v150;
              _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_270;
          }

          __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_socket_initialize_socket";
          *&buf[12] = 1024;
          *&buf[14] = v150;
          v171 = _os_log_send_and_compose_impl();
          v183[0] = OS_LOG_TYPE_ERROR;
          type = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v171, v183, &type))
          {
            if (v183[0] == OS_LOG_TYPE_FAULT)
            {
              v172 = __nwlog_obj();
              v173 = v183[0];
              if (!os_log_type_enabled(v172, v183[0]))
              {
                goto LABEL_353;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v150;
              v174 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d";
              goto LABEL_352;
            }

            if (type != OS_LOG_TYPE_INFO)
            {
              v172 = __nwlog_obj();
              v173 = v183[0];
              if (!os_log_type_enabled(v172, v183[0]))
              {
                goto LABEL_353;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v150;
              v174 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_352;
            }

            v175 = __nw_create_backtrace_string();
            v172 = __nwlog_obj();
            v173 = v183[0];
            v176 = os_log_type_enabled(v172, v183[0]);
            if (v175)
            {
              if (v176)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 1024;
                *&buf[14] = v150;
                *&buf[18] = 2082;
                *&buf[20] = v175;
                _os_log_impl(&dword_181A37000, v172, v173, "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v175);
              v4 = v180;
              goto LABEL_353;
            }

            v4 = v180;
            if (v176)
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v150;
              v174 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, no backtrace";
LABEL_352:
              _os_log_impl(&dword_181A37000, v172, v173, v174, buf, 0x12u);
            }
          }

LABEL_353:
          if (v171)
          {
            free(v171);
          }

          goto LABEL_270;
        }

        v145 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_socket_initialize_socket";
        *&buf[12] = 1024;
        *&buf[14] = v145;
        v146 = _os_log_send_and_compose_impl();
        v183[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v146, v183, &type))
        {
          if (v183[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v147 = gLogObj;
            v148 = v183[0];
            if (os_log_type_enabled(gLogObj, v183[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v145;
              v149 = "%{public}s FIONBIO failed %{darwin.errno}d";
LABEL_321:
              _os_log_impl(&dword_181A37000, v147, v148, v149, buf, 0x12u);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            v153 = __nw_create_backtrace_string();
            v147 = __nwlog_obj();
            v148 = v183[0];
            v154 = os_log_type_enabled(v147, v183[0]);
            if (v153)
            {
              if (v154)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 1024;
                *&buf[14] = v145;
                *&buf[18] = 2082;
                *&buf[20] = v153;
                _os_log_impl(&dword_181A37000, v147, v148, "%{public}s FIONBIO failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v153);
              v4 = v180;
              goto LABEL_322;
            }

            v4 = v180;
            if (v154)
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v145;
              v149 = "%{public}s FIONBIO failed %{darwin.errno}d, no backtrace";
              goto LABEL_321;
            }
          }

          else
          {
            v147 = __nwlog_obj();
            v148 = v183[0];
            if (os_log_type_enabled(v147, v183[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v145;
              v149 = "%{public}s FIONBIO failed %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_321;
            }
          }
        }

LABEL_322:
        if (v146)
        {
          free(v146);
        }

        nw_socket_internal_error(&v6[1].output_handler);
        goto LABEL_325;
      }

LABEL_240:
      v128 = v47;
      v129 = _nw_endpoint_get_address_family(v128);

      if (address_family == v129)
      {
        goto LABEL_241;
      }

      v4 = v180;
      if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v132 = gconnectionLogObj;
        result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_326;
        }

        v133 = nw_endpoint_get_address_family(v128);
        *buf = 136446978;
        *&buf[4] = "nw_socket_initialize_socket";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 420;
        *&buf[22] = 1024;
        *&buf[24] = v133;
        *&buf[28] = 1024;
        *&buf[30] = address_family;
        v38 = "%{public}s %{public}s Local endpoint family %d does not match remote endpoint %d";
        v39 = v132;
        v40 = 34;
        goto LABEL_251;
      }

      goto LABEL_325;
    }

LABEL_239:
    address_family = 0;
    if (!v47)
    {
      goto LABEL_241;
    }

    goto LABEL_240;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_initialize_socket";
  v70 = _os_log_send_and_compose_impl();
  out[0] = 16;
  v183[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v70, out, v183))
  {
    if (out[0] == 17)
    {
      v71 = __nwlog_obj();
      v72 = out[0];
      if (os_log_type_enabled(v71, out[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v73 = "%{public}s called with null protocol";
LABEL_359:
        _os_log_impl(&dword_181A37000, v71, v72, v73, buf, 0xCu);
      }
    }

    else if (v183[0] == OS_LOG_TYPE_INFO)
    {
      v126 = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v72 = out[0];
      v127 = os_log_type_enabled(v71, out[0]);
      if (v126)
      {
        if (v127)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_initialize_socket";
          *&buf[12] = 2082;
          *&buf[14] = v126;
          _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v126);
        goto LABEL_360;
      }

      if (v127)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v73 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_359;
      }
    }

    else
    {
      v71 = __nwlog_obj();
      v72 = out[0];
      if (os_log_type_enabled(v71, out[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v73 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_359;
      }
    }
  }

LABEL_360:
  if (v70)
  {
    free(v70);
  }

  return 0;
}

uint64_t nw_socket_set_common_sockopts(nw_protocol *a1)
{
  v517 = *MEMORY[0x1E69E9840];
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
        v511 = "nw_socket_set_common_sockopts";
        v7 = _os_log_send_and_compose_impl();
        uu[0] = 16;
        LOBYTE(v514[0]) = 0;
        if (!__nwlog_fault(v7, uu, v514))
        {
          goto LABEL_130;
        }

        if (uu[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = uu[0];
          if (!os_log_type_enabled(gLogObj, uu[0]))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v511 = "nw_socket_set_common_sockopts";
          v10 = "%{public}s called with null socket_handler";
LABEL_128:
          v54 = v8;
          v55 = v9;
          goto LABEL_129;
        }

        if (LOBYTE(v514[0]) != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = uu[0];
          if (!os_log_type_enabled(gLogObj, uu[0]))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v511 = "nw_socket_set_common_sockopts";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
          goto LABEL_128;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = uu[0];
        v20 = os_log_type_enabled(gLogObj, uu[0]);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 2082;
            *v513 = backtrace_string;
            v21 = "%{public}s called with null socket_handler, dumping backtrace:%{public}s";
LABEL_68:
            _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x16u);
            goto LABEL_69;
          }

          goto LABEL_69;
        }

        if (!v20)
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null socket_handler, no backtrace";
        goto LABEL_123;
      }

      v6 = *a1[1].flow_id;
    }

    if ((HIDWORD(v6[4].callbacks) & 0x80000000) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v511 = "nw_socket_set_common_sockopts";
      v7 = _os_log_send_and_compose_impl();
      uu[0] = 16;
      LOBYTE(v514[0]) = 0;
      if (!__nwlog_fault(v7, uu, v514))
      {
        goto LABEL_130;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null socket_handler->fd";
        goto LABEL_128;
      }

      if (LOBYTE(v514[0]) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null socket_handler->fd, backtrace limit exceeded";
        goto LABEL_128;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = uu[0];
      v22 = os_log_type_enabled(gLogObj, uu[0]);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 2082;
          *v513 = backtrace_string;
          v21 = "%{public}s called with null socket_handler->fd, dumping backtrace:%{public}s";
          goto LABEL_68;
        }

LABEL_69:
        free(backtrace_string);
        goto LABEL_130;
      }

      if (!v22)
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v511 = "nw_socket_set_common_sockopts";
      v10 = "%{public}s called with null socket_handler->fd, no backtrace";
LABEL_123:
      v54 = v18;
      v55 = v19;
LABEL_129:
      _os_log_impl(&dword_181A37000, v54, v55, v10, buf, 0xCu);
      goto LABEL_130;
    }

    v11 = v6[2].callbacks;
    if (!v11)
    {
      goto LABEL_60;
    }

    connect = v11->connect;
    if (!connect)
    {
      goto LABEL_60;
    }

    v13 = connect[17];
    if (!v13)
    {
      goto LABEL_60;
    }

    connected = v11->connected;
    v15 = v6[2].callbacks;
    if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
    {
      get_output_frames = v15->get_output_frames;
      if (get_output_frames)
      {
        v15->get_output_frames = get_output_frames + 1;
      }

      v16 = v13(v11);
      v24 = v11->connected;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
      {
        v25 = v11->get_output_frames;
        if (v25)
        {
          v26 = v25 - 1;
          v11->get_output_frames = v26;
          if (!v26)
          {
            input_available = v11->input_available;
            if (input_available)
            {
              v11->input_available = 0;
              input_available[2](input_available);
              _Block_release(input_available);
            }

            if (v11->output_available)
            {
              v28 = v11->input_available;
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v11);
          }
        }
      }
    }

    else
    {
      v16 = v13(v6[2].callbacks);
    }

    if (!v16)
    {
LABEL_60:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v511 = "nw_socket_set_common_sockopts";
      v7 = _os_log_send_and_compose_impl();
      uu[0] = 16;
      LOBYTE(v514[0]) = 0;
      if (!__nwlog_fault(v7, uu, v514))
      {
        goto LABEL_130;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null remote_endpoint";
        goto LABEL_128;
      }

      if (LOBYTE(v514[0]) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null remote_endpoint, backtrace limit exceeded";
        goto LABEL_128;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = uu[0];
      v35 = os_log_type_enabled(gLogObj, uu[0]);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 2082;
          *v513 = backtrace_string;
          v21 = "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s";
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (!v35)
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v511 = "nw_socket_set_common_sockopts";
      v10 = "%{public}s called with null remote_endpoint, no backtrace";
      goto LABEL_123;
    }

    v29 = v6[2].callbacks;
    if (!v29)
    {
      goto LABEL_95;
    }

    v30 = v29->connect;
    if (!v30)
    {
      goto LABEL_95;
    }

    v31 = v30[14];
    if (!v31)
    {
      goto LABEL_95;
    }

    v32 = v29->connected;
    v33 = v6[2].callbacks;
    if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = v29->input_available) != 0)
    {
      v36 = v33->get_output_frames;
      if (v36)
      {
        v33->get_output_frames = v36 + 1;
      }

      v34 = v31(v29);
      v37 = v29->connected;
      if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v29 = v29->input_available) != 0)
      {
        v38 = v29->get_output_frames;
        if (v38)
        {
          v39 = v38 - 1;
          v29->get_output_frames = v39;
          if (!v39)
          {
            v40 = v29->input_available;
            if (v40)
            {
              v29->input_available = 0;
              v40[2](v40);
              _Block_release(v40);
            }

            if (v29->output_available)
            {
              v41 = v29->input_available;
              if (v41)
              {
                _Block_release(v41);
              }
            }

            free(v29);
          }
        }
      }
    }

    else
    {
      v34 = v31(v6[2].callbacks);
    }

    if (!v34)
    {
LABEL_95:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v511 = "nw_socket_set_common_sockopts";
      v7 = _os_log_send_and_compose_impl();
      uu[0] = 16;
      LOBYTE(v514[0]) = 0;
      if (!__nwlog_fault(v7, uu, v514))
      {
        goto LABEL_130;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null parameters";
      }

      else if (LOBYTE(v514[0]) == 1)
      {
        v50 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = uu[0];
        v51 = os_log_type_enabled(v8, uu[0]);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 2082;
            *v513 = v50;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          goto LABEL_130;
        }

        if (!v51)
        {
LABEL_130:
          if (v7)
          {
            free(v7);
          }

LABEL_373:
          result = 0;
          if (v4)
          {
            return result;
          }

LABEL_374:
          v153 = v1->handle;
          if (v153 == &nw_protocol_ref_counted_handle || v153 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
          {
            v154 = v1[1].callbacks;
            if (v154)
            {
              v155 = (v154 - 1);
              v1[1].callbacks = v155;
              if (!v155)
              {
                v156 = result;
                v157 = *v1[1].flow_id;
                if (v157)
                {
                  *v1[1].flow_id = 0;
                  v157[2](v157);
                  _Block_release(v157);
                }

                if (v1[1].flow_id[8])
                {
                  v158 = *v1[1].flow_id;
                  if (v158)
                  {
                    _Block_release(v158);
                  }
                }

                free(v1);
                return v156;
              }
            }
          }

          return result;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null parameters, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = uu[0];
        if (!os_log_type_enabled(v8, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
      }

      goto LABEL_128;
    }

    path = nw_socket_get_path(v1);
    v508 = 0;
    v509 = 1;
    output_handler_low = LOBYTE(v6[6].output_handler);
    v501 = v6;
    if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4130, &v509, 4u))
    {
LABEL_138:
      if (ioctl(HIDWORD(v6[4].callbacks), 0x8004667EuLL, &v509, v486) < 0)
      {
        v61 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v62 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 2082;
          *v513 = v6 + 420;
          *&v513[8] = 1024;
          *&v513[10] = v61;
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s FIONBIO failed %{darwin.errno}d", buf, 0x1Cu);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        if (v61 == 22)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = 22;
            v64 = "%{public}s FIONBIO failed %{darwin.errno}d";
LABEL_335:
            _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, v64, buf, 0x12u);
          }

LABEL_371:
          p_output_handler = &v6[1].output_handler;
          goto LABEL_372;
        }

        v67 = v4;
        *buf = 136446466;
        v511 = "nw_socket_set_common_sockopts";
        v512 = 1024;
        *v513 = v61;
        v68 = _os_log_send_and_compose_impl();
        uu[0] = 16;
        LOBYTE(v514[0]) = 0;
        if (!__nwlog_fault(v68, uu, v514))
        {
          goto LABEL_369;
        }

        if (uu[0] == 17)
        {
          v69 = __nwlog_obj();
          v70 = uu[0];
          if (!os_log_type_enabled(v69, uu[0]))
          {
            goto LABEL_369;
          }

          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v61;
          v71 = "%{public}s FIONBIO failed %{darwin.errno}d";
        }

        else if (LOBYTE(v514[0]) == 1)
        {
          v72 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v70 = uu[0];
          v73 = os_log_type_enabled(v69, uu[0]);
          if (v72)
          {
            if (v73)
            {
              *buf = 136446722;
              v511 = "nw_socket_set_common_sockopts";
              v512 = 1024;
              *v513 = v61;
              *&v513[4] = 2082;
              *&v513[6] = v72;
              v74 = "%{public}s FIONBIO failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_353:
              _os_log_impl(&dword_181A37000, v69, v70, v74, buf, 0x1Cu);
            }

LABEL_354:
            free(v72);
            v6 = v501;
            goto LABEL_369;
          }

          v6 = v501;
          if (!v73)
          {
            goto LABEL_369;
          }

          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v61;
          v71 = "%{public}s FIONBIO failed %{darwin.errno}d, no backtrace";
        }

        else
        {
          v69 = __nwlog_obj();
          v70 = uu[0];
          if (!os_log_type_enabled(v69, uu[0]))
          {
            goto LABEL_369;
          }

          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v61;
          v71 = "%{public}s FIONBIO failed %{darwin.errno}d, backtrace limit exceeded";
        }

LABEL_368:
        _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0x12u);
LABEL_369:
        v4 = v67;
        if (!v68)
        {
          goto LABEL_371;
        }

LABEL_370:
        free(v68);
        goto LABEL_371;
      }

      *uu = 0;
      v516 = 0;
      v56 = v34;
      _nw_parameters_get_listener_uuid();

      if (uuid_is_null(uu))
      {
        if (uuid_is_null(v1->flow_id))
        {
          goto LABEL_220;
        }

        if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4369, v1, 0x10u))
        {
          goto LABEL_220;
        }

        v57 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (LOBYTE(v6[6].output_handler) == 1 && v57 == 22)
        {
          goto LABEL_220;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v58 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 2082;
          *v513 = v6 + 420;
          *&v513[8] = 1024;
          *&v513[10] = v57;
          _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, 0x1Cu);
        }

        if (v57 == 2 || v57 == 22)
        {
          v59 = __nwlog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v57;
            v60 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d";
LABEL_168:
            _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, v60, buf, 0x12u);
            goto LABEL_220;
          }

          goto LABEL_220;
        }

        v488 = output_handler_low;
        v490 = v56;
        v75 = v4;
        __nwlog_obj();
        *buf = 136446466;
        v511 = "nw_socket_set_common_sockopts";
        v512 = 1024;
        *v513 = v57;
        v76 = _os_log_send_and_compose_impl();
        LOBYTE(v514[0]) = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if ((__nwlog_fault(v76, v514, type) & 1) == 0)
        {
          goto LABEL_217;
        }

        if (LOBYTE(v514[0]) == 17)
        {
          v77 = __nwlog_obj();
          v78 = v514[0];
          if (os_log_type_enabled(v77, v514[0]))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v57;
            v79 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v77 = __nwlog_obj();
          v78 = v514[0];
          if (os_log_type_enabled(v77, v514[0]))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v57;
            v79 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        v80 = __nw_create_backtrace_string();
        v77 = __nwlog_obj();
        v78 = v514[0];
        v83 = os_log_type_enabled(v77, v514[0]);
        if (!v80)
        {
          if (v83)
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v57;
            v79 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, no backtrace";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        if (v83)
        {
          *buf = 136446722;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v57;
          *&v513[4] = 2082;
          *&v513[6] = v80;
          v82 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, dumping backtrace:%{public}s";
          goto LABEL_199;
        }
      }

      else
      {
        if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4384, uu, 0x10u))
        {
          goto LABEL_220;
        }

        v65 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v66 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 2082;
          *v513 = v6 + 420;
          *&v513[8] = 1024;
          *&v513[10] = v65;
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, 0x1Cu);
        }

        if (v65 == 2 || v65 == 22)
        {
          v59 = __nwlog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v65;
            v60 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d";
            goto LABEL_168;
          }

LABEL_220:
          traffic_class = _nw_parameters_get_traffic_class(v56);
          if (traffic_class && nw_socket_set_traffic_class(&v6[1].output_handler, traffic_class))
          {
            p_output_handler = &v6[1].output_handler;
LABEL_372:
            nw_socket_internal_error(p_output_handler);
            goto LABEL_373;
          }

          v92 = v16;
          v93 = _nw_endpoint_get_type(v92);

          v497 = v92;
          if (v93 != 1 || output_handler_low != 2 || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 0x20000, &v509, 4u))
          {
LABEL_250:
            v105 = getpid();
            if (_nw_parameters_has_delegated_proc_pid(v56, v105))
            {
              LODWORD(v514[0]) = _nw_parameters_get_pid(v56);
              if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4359, v514, 4u))
              {
                if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v117 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446722;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 2082;
                    *v513 = v6 + 420;
                    *&v513[8] = 1024;
                    *&v513[10] = v514[0];
                    v113 = "%{public}s %{public}s successfully set source application pid to %d";
                    v114 = v117;
                    v115 = OS_LOG_TYPE_DEBUG;
                    v116 = 28;
                    goto LABEL_276;
                  }
                }

LABEL_294:
                LODWORD(v514[0]) = _nw_parameters_get_fallback_mode(v56);
                if (!LODWORD(v514[0]) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4400, v514, 4u))
                {
                  goto LABEL_320;
                }

                v126 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v127 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 2082;
                  *v513 = v6 + 420;
                  *&v513[8] = 1024;
                  *&v513[10] = v514[0];
                  *&v513[14] = 1024;
                  *&v513[16] = v126;
                  _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d", buf, 0x22u);
                }

                v128 = __nwlog_obj();
                v129 = v128;
                if (v126 == 22)
                {
                  v92 = v497;
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v514[0];
                    *&v513[4] = 1024;
                    *&v513[6] = 22;
                    _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d", buf, 0x18u);
                  }

                  goto LABEL_320;
                }

                v493 = v56;
                v130 = v4;
                *buf = 136446722;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v514[0];
                *&v513[4] = 1024;
                *&v513[6] = v126;
                v131 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                v506[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v131, type, v506))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v132 = __nwlog_obj();
                    v133 = type[0];
                    if (os_log_type_enabled(v132, type[0]))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v514[0];
                      *&v513[4] = 1024;
                      *&v513[6] = v126;
                      v134 = "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d";
LABEL_316:
                      _os_log_impl(&dword_181A37000, v132, v133, v134, buf, 0x18u);
                    }
                  }

                  else if (v506[0] == OS_LOG_TYPE_INFO)
                  {
                    v135 = __nw_create_backtrace_string();
                    v132 = __nwlog_obj();
                    v133 = type[0];
                    v136 = os_log_type_enabled(v132, type[0]);
                    if (v135)
                    {
                      if (v136)
                      {
                        *buf = 136446978;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v514[0];
                        *&v513[4] = 1024;
                        *&v513[6] = v126;
                        *&v513[10] = 2082;
                        *&v513[12] = v135;
                        _os_log_impl(&dword_181A37000, v132, v133, "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
                      }

                      free(v135);
                      goto LABEL_317;
                    }

                    if (v136)
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v514[0];
                      *&v513[4] = 1024;
                      *&v513[6] = v126;
                      v134 = "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d, no backtrace";
                      goto LABEL_316;
                    }
                  }

                  else
                  {
                    v132 = __nwlog_obj();
                    v133 = type[0];
                    if (os_log_type_enabled(v132, type[0]))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v514[0];
                      *&v513[4] = 1024;
                      *&v513[6] = v126;
                      v134 = "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_316;
                    }
                  }
                }

LABEL_317:
                v92 = v497;
                if (v131)
                {
                  free(v131);
                }

                v4 = v130;
                v6 = v501;
                v56 = v493;
LABEL_320:
                *type = 0;
                if (_nw_parameters_get_prohibit_cellular(v56))
                {
                  *type |= 4u;
                }

                if (_nw_parameters_get_prohibit_expensive(v56))
                {
                  *type |= 8u;
                }

                if (_nw_parameters_get_prohibit_constrained(v56))
                {
                  *type |= 0x10u;
                }

                else if (!*type)
                {
                  goto LABEL_336;
                }

                if (setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4225, type, 4u))
                {
                  v137 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v138 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 2082;
                    *v513 = v6 + 420;
                    *&v513[8] = 1024;
                    *&v513[10] = v137;
                    _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d", buf, 0x1Cu);
                  }

                  v139 = __nwlog_obj();
                  v63 = v139;
                  if (v137 == 22)
                  {
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = 22;
                      v64 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d";
                      goto LABEL_335;
                    }

                    goto LABEL_371;
                  }

                  v67 = v4;
                  *buf = 136446466;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v137;
                  v68 = _os_log_send_and_compose_impl();
                  v506[0] = OS_LOG_TYPE_ERROR;
                  v505[0] = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v68, v506, v505))
                  {
                    goto LABEL_369;
                  }

                  if (v506[0] == OS_LOG_TYPE_FAULT)
                  {
                    v69 = __nwlog_obj();
                    v70 = v506[0];
                    if (!os_log_type_enabled(v69, v506[0]))
                    {
                      goto LABEL_369;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v137;
                    v71 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d";
                    goto LABEL_368;
                  }

                  if (v505[0] != OS_LOG_TYPE_INFO)
                  {
                    v69 = __nwlog_obj();
                    v70 = v506[0];
                    if (!os_log_type_enabled(v69, v506[0]))
                    {
                      goto LABEL_369;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v137;
                    v71 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d, backtrace limit exceeded";
                    goto LABEL_368;
                  }

                  v72 = __nw_create_backtrace_string();
                  v69 = __nwlog_obj();
                  v70 = v506[0];
                  v144 = os_log_type_enabled(v69, v506[0]);
                  if (v72)
                  {
                    if (v144)
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v137;
                      *&v513[4] = 2082;
                      *&v513[6] = v72;
                      v74 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d, dumping backtrace:%{public}s";
                      goto LABEL_353;
                    }

                    goto LABEL_354;
                  }

                  v6 = v501;
                  if (!v144)
                  {
                    goto LABEL_369;
                  }

                  *buf = 136446466;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v137;
                  v71 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d, no backtrace";
                  goto LABEL_368;
                }

LABEL_336:
                if (!_nw_parameters_get_no_wake_from_sleep(v56) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 0x10000, &v509, 4u))
                {
                  goto LABEL_394;
                }

                v140 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v141 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 2082;
                  *v513 = v6 + 420;
                  *&v513[8] = 1024;
                  *&v513[10] = v140;
                  _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v142 = __nwlog_obj();
                v143 = v142;
                if (v140 == 22)
                {
                  v92 = v497;
                  if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = 22;
                    _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_394;
                }

                v494 = v56;
                v145 = v4;
                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v140;
                v146 = _os_log_send_and_compose_impl();
                v506[0] = OS_LOG_TYPE_ERROR;
                v505[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v146, v506, v505))
                {
                  if (v506[0] == OS_LOG_TYPE_FAULT)
                  {
                    v147 = __nwlog_obj();
                    v148 = v506[0];
                    if (os_log_type_enabled(v147, v506[0]))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v140;
                      v149 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d";
LABEL_390:
                      _os_log_impl(&dword_181A37000, v147, v148, v149, buf, 0x12u);
                    }
                  }

                  else if (v505[0] == OS_LOG_TYPE_INFO)
                  {
                    v150 = __nw_create_backtrace_string();
                    v147 = __nwlog_obj();
                    v148 = v506[0];
                    v151 = os_log_type_enabled(v147, v506[0]);
                    if (v150)
                    {
                      if (v151)
                      {
                        *buf = 136446722;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v140;
                        *&v513[4] = 2082;
                        *&v513[6] = v150;
                        _os_log_impl(&dword_181A37000, v147, v148, "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v150);
                      goto LABEL_391;
                    }

                    if (v151)
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v140;
                      v149 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, no backtrace";
                      goto LABEL_390;
                    }
                  }

                  else
                  {
                    v147 = __nwlog_obj();
                    v148 = v506[0];
                    if (os_log_type_enabled(v147, v506[0]))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v140;
                      v149 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_390;
                    }
                  }
                }

LABEL_391:
                v6 = v501;
                v92 = v497;
                if (v146)
                {
                  free(v146);
                }

                v4 = v145;
                v56 = v494;
LABEL_394:
                if (!_nw_parameters_get_receive_any_interface(v56) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4356, &v509, 4u))
                {
                  goto LABEL_420;
                }

                v159 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v160 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 2082;
                  *v513 = v6 + 420;
                  *&v513[8] = 1024;
                  *&v513[10] = v159;
                  _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v161 = __nwlog_obj();
                v162 = v161;
                if (v159 == 22)
                {
                  v92 = v497;
                  if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = 22;
                    _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_420;
                }

                v495 = v56;
                v163 = v4;
                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v159;
                v164 = _os_log_send_and_compose_impl();
                v506[0] = OS_LOG_TYPE_ERROR;
                v505[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v164, v506, v505))
                {
                  if (v506[0] == OS_LOG_TYPE_FAULT)
                  {
                    v165 = __nwlog_obj();
                    v166 = v506[0];
                    if (os_log_type_enabled(v165, v506[0]))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v159;
                      v167 = "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d";
LABEL_416:
                      _os_log_impl(&dword_181A37000, v165, v166, v167, buf, 0x12u);
                    }
                  }

                  else if (v505[0] == OS_LOG_TYPE_INFO)
                  {
                    v168 = __nw_create_backtrace_string();
                    v165 = __nwlog_obj();
                    v166 = v506[0];
                    v169 = os_log_type_enabled(v165, v506[0]);
                    if (v168)
                    {
                      if (v169)
                      {
                        *buf = 136446722;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v159;
                        *&v513[4] = 2082;
                        *&v513[6] = v168;
                        _os_log_impl(&dword_181A37000, v165, v166, "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v168);
                      goto LABEL_417;
                    }

                    if (v169)
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v159;
                      v167 = "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d, no backtrace";
                      goto LABEL_416;
                    }
                  }

                  else
                  {
                    v165 = __nwlog_obj();
                    v166 = v506[0];
                    if (os_log_type_enabled(v165, v506[0]))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v159;
                      v167 = "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_416;
                    }
                  }
                }

LABEL_417:
                v6 = v501;
                v92 = v497;
                if (v164)
                {
                  free(v164);
                }

                v4 = v163;
                v56 = v495;
LABEL_420:
                v500 = v4;
                if (!_nw_parameters_is_approved_app_domain(v56) || (setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4393, &v509, 4u) & 0x80000000) == 0)
                {
                  goto LABEL_422;
                }

                v177 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v178 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 2082;
                  *v513 = v6 + 420;
                  *&v513[8] = 1024;
                  *&v513[10] = v177;
                  _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v179 = __nwlog_obj();
                v180 = v179;
                if (v177 == 22)
                {
                  v92 = v497;
                  if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = 22;
                    _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_422;
                }

                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v177;
                v185 = _os_log_send_and_compose_impl();
                v506[0] = OS_LOG_TYPE_ERROR;
                v505[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v185, v506, v505))
                {
                  if (v506[0] == OS_LOG_TYPE_FAULT)
                  {
                    v186 = __nwlog_obj();
                    v187 = v506[0];
                    if (!os_log_type_enabled(v186, v506[0]))
                    {
                      goto LABEL_512;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v177;
                    v188 = "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d";
                    goto LABEL_511;
                  }

                  if (v505[0] != OS_LOG_TYPE_INFO)
                  {
                    v186 = __nwlog_obj();
                    v187 = v506[0];
                    if (!os_log_type_enabled(v186, v506[0]))
                    {
                      goto LABEL_512;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v177;
                    v188 = "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d, backtrace limit exceeded";
                    goto LABEL_511;
                  }

                  v191 = __nw_create_backtrace_string();
                  v186 = __nwlog_obj();
                  v187 = v506[0];
                  v192 = os_log_type_enabled(v186, v506[0]);
                  if (v191)
                  {
                    if (v192)
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v177;
                      *&v513[4] = 2082;
                      *&v513[6] = v191;
                      _os_log_impl(&dword_181A37000, v186, v187, "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                    }

                    free(v191);
                    goto LABEL_512;
                  }

                  if (v192)
                  {
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v177;
                    v188 = "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d, no backtrace";
LABEL_511:
                    _os_log_impl(&dword_181A37000, v186, v187, v188, buf, 0x12u);
                  }
                }

LABEL_512:
                v92 = v497;
                if (v185)
                {
                  free(v185);
                }

LABEL_422:
                v170 = _nw_parameters_copy_default_protocol_stack(v56);
                v171 = nw_protocol_stack_copy_internet_protocol(v170);
                v172 = nw_protocol_stack_copy_transport_protocol(v170);
                if (v170)
                {
                  os_release(v170);
                }

                v489 = v172;
                if (!v171)
                {
LABEL_759:
                  v4 = v500;
                  if (!v172)
                  {
                    goto LABEL_1089;
                  }

                  if (_nw_protocol_options_is_tcp(v172))
                  {
                    v496 = v56;
                    v302 = v501;
                    if ((nw_socket_set_bidirectional_tcp_sockopts(&v501[1].output_handler, v172) & 1) == 0)
                    {
                      goto LABEL_1245;
                    }

                    ecn_mode = _nw_parameters_get_ecn_mode(v496);
                    if (ecn_mode)
                    {
                      if (ecn_mode == 1)
                      {
                        v304 = 1;
                      }

                      else
                      {
                        v304 = 2;
                      }
                    }

                    else
                    {
                      v56 = v496;
                      if (!_nw_tcp_options_get_disable_ecn(v172))
                      {
                        goto LABEL_813;
                      }

                      v304 = 2;
                      v302 = v501;
                    }

                    *v506 = v304;
                    v309 = setsockopt(HIDWORD(v302[4].callbacks), 6, 528, v506, 4u);
                    v56 = v496;
                    if (!v309)
                    {
                      goto LABEL_813;
                    }

                    v310 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v311 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v310;
                      _os_log_impl(&dword_181A37000, v311, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v312 = __nwlog_obj();
                    v313 = v312;
                    if (v310 == 22)
                    {
                      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = 22;
                        _os_log_impl(&dword_181A37000, v313, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_813;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v310;
                    v314 = _os_log_send_and_compose_impl();
                    v505[0] = OS_LOG_TYPE_ERROR;
                    v503[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v314, v505, v503))
                    {
                      if (v505[0] == OS_LOG_TYPE_FAULT)
                      {
                        v315 = __nwlog_obj();
                        v316 = v505[0];
                        if (!os_log_type_enabled(v315, v505[0]))
                        {
                          goto LABEL_811;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v310;
                        v317 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d";
                        goto LABEL_810;
                      }

                      if (v503[0] != OS_LOG_TYPE_INFO)
                      {
                        v315 = __nwlog_obj();
                        v316 = v505[0];
                        if (!os_log_type_enabled(v315, v505[0]))
                        {
                          goto LABEL_811;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v310;
                        v317 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_810;
                      }

                      v322 = __nw_create_backtrace_string();
                      v315 = __nwlog_obj();
                      v316 = v505[0];
                      v323 = os_log_type_enabled(v315, v505[0]);
                      if (v322)
                      {
                        if (v323)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v310;
                          *&v513[4] = 2082;
                          *&v513[6] = v322;
                          _os_log_impl(&dword_181A37000, v315, v316, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v322);
                        v92 = v497;
                        goto LABEL_811;
                      }

                      v92 = v497;
                      if (v323)
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v310;
                        v317 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, no backtrace";
LABEL_810:
                        _os_log_impl(&dword_181A37000, v315, v316, v317, buf, 0x12u);
                      }
                    }

LABEL_811:
                    v4 = v500;
                    v172 = v489;
                    if (v314)
                    {
                      free(v314);
                    }

LABEL_813:
                    enable_l4s = _nw_tcp_options_get_enable_l4s(v172);
                    if (enable_l4s == 2)
                    {
                      goto LABEL_874;
                    }

                    *v506 = enable_l4s == 1;
                    if (!setsockopt(HIDWORD(v501[4].callbacks), 6, 539, v506, 4u))
                    {
                      goto LABEL_874;
                    }

                    v327 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v328 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v327;
                      _os_log_impl(&dword_181A37000, v328, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v329 = __nwlog_obj();
                    v330 = v329;
                    if (v327 == 22)
                    {
                      if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = 22;
                        _os_log_impl(&dword_181A37000, v330, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_874;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v327;
                    v331 = _os_log_send_and_compose_impl();
                    v505[0] = OS_LOG_TYPE_ERROR;
                    v503[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v331, v505, v503))
                    {
                      if (v505[0] == OS_LOG_TYPE_FAULT)
                      {
                        v332 = __nwlog_obj();
                        v333 = v505[0];
                        if (!os_log_type_enabled(v332, v505[0]))
                        {
                          goto LABEL_872;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v327;
                        v334 = "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d";
                        goto LABEL_871;
                      }

                      if (v503[0] != OS_LOG_TYPE_INFO)
                      {
                        v332 = __nwlog_obj();
                        v333 = v505[0];
                        if (!os_log_type_enabled(v332, v505[0]))
                        {
                          goto LABEL_872;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v327;
                        v334 = "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_871;
                      }

                      v335 = __nw_create_backtrace_string();
                      v332 = __nwlog_obj();
                      v333 = v505[0];
                      v336 = os_log_type_enabled(v332, v505[0]);
                      if (v335)
                      {
                        if (v336)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v327;
                          *&v513[4] = 2082;
                          *&v513[6] = v335;
                          _os_log_impl(&dword_181A37000, v332, v333, "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v335);
                        v92 = v497;
                        goto LABEL_872;
                      }

                      v92 = v497;
                      if (v336)
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v327;
                        v334 = "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d, no backtrace";
LABEL_871:
                        _os_log_impl(&dword_181A37000, v332, v333, v334, buf, 0x12u);
                      }
                    }

LABEL_872:
                    v4 = v500;
                    v172 = v489;
                    if (v331)
                    {
                      free(v331);
                    }

LABEL_874:
                    if (!_nw_tcp_options_get_fast_open_force_enable(v172) || !setsockopt(HIDWORD(v501[4].callbacks), 6, 536, &v509, 4u))
                    {
                      goto LABEL_899;
                    }

                    v351 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v352 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v351;
                      _os_log_impl(&dword_181A37000, v352, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v353 = __nwlog_obj();
                    v354 = v353;
                    if (v351 == 22)
                    {
                      if (os_log_type_enabled(v353, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = 22;
                        _os_log_impl(&dword_181A37000, v354, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_899;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v351;
                    v355 = _os_log_send_and_compose_impl();
                    v506[0] = OS_LOG_TYPE_ERROR;
                    v505[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v355, v506, v505))
                    {
                      if (v506[0] == OS_LOG_TYPE_FAULT)
                      {
                        v356 = __nwlog_obj();
                        v357 = v506[0];
                        if (!os_log_type_enabled(v356, v506[0]))
                        {
                          goto LABEL_897;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v351;
                        v358 = "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d";
                        goto LABEL_896;
                      }

                      if (v505[0] != OS_LOG_TYPE_INFO)
                      {
                        v356 = __nwlog_obj();
                        v357 = v506[0];
                        if (!os_log_type_enabled(v356, v506[0]))
                        {
                          goto LABEL_897;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v351;
                        v358 = "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_896;
                      }

                      v359 = __nw_create_backtrace_string();
                      v356 = __nwlog_obj();
                      v357 = v506[0];
                      v360 = os_log_type_enabled(v356, v506[0]);
                      if (v359)
                      {
                        if (v360)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v351;
                          *&v513[4] = 2082;
                          *&v513[6] = v359;
                          _os_log_impl(&dword_181A37000, v356, v357, "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v359);
                        v92 = v497;
                        goto LABEL_897;
                      }

                      v92 = v497;
                      if (v360)
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v351;
                        v358 = "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d, no backtrace";
LABEL_896:
                        _os_log_impl(&dword_181A37000, v356, v357, v358, buf, 0x12u);
                      }
                    }

LABEL_897:
                    v4 = v500;
                    v172 = v489;
                    if (v355)
                    {
                      free(v355);
                    }

LABEL_899:
                    *v506 = _nw_tcp_options_get_connection_timeout(v172);
                    if (!*v506 || !setsockopt(HIDWORD(v501[4].callbacks), 6, 32, v506, 4u))
                    {
                      goto LABEL_924;
                    }

                    v361 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v362 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v361;
                      _os_log_impl(&dword_181A37000, v362, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v363 = __nwlog_obj();
                    v364 = v363;
                    if (v361 == 22)
                    {
                      if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = 22;
                        _os_log_impl(&dword_181A37000, v364, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_924;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v361;
                    v365 = _os_log_send_and_compose_impl();
                    v505[0] = OS_LOG_TYPE_ERROR;
                    v503[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v365, v505, v503))
                    {
                      if (v505[0] == OS_LOG_TYPE_FAULT)
                      {
                        v366 = __nwlog_obj();
                        v367 = v505[0];
                        if (!os_log_type_enabled(v366, v505[0]))
                        {
                          goto LABEL_922;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v361;
                        v368 = "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d";
                        goto LABEL_921;
                      }

                      if (v503[0] != OS_LOG_TYPE_INFO)
                      {
                        v366 = __nwlog_obj();
                        v367 = v505[0];
                        if (!os_log_type_enabled(v366, v505[0]))
                        {
                          goto LABEL_922;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v361;
                        v368 = "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_921;
                      }

                      v369 = __nw_create_backtrace_string();
                      v366 = __nwlog_obj();
                      v367 = v505[0];
                      v370 = os_log_type_enabled(v366, v505[0]);
                      if (v369)
                      {
                        if (v370)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v361;
                          *&v513[4] = 2082;
                          *&v513[6] = v369;
                          _os_log_impl(&dword_181A37000, v366, v367, "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v369);
                        v92 = v497;
                        goto LABEL_922;
                      }

                      v92 = v497;
                      if (v370)
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v361;
                        v368 = "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_921:
                        _os_log_impl(&dword_181A37000, v366, v367, v368, buf, 0x12u);
                      }
                    }

LABEL_922:
                    v4 = v500;
                    v172 = v489;
                    if (v365)
                    {
                      free(v365);
                    }

LABEL_924:
                    multipath_service = _nw_parameters_get_multipath_service(v56);
                    v372 = v501;
                    if ((HIBYTE(v501[6].callbacks) & 2) == 0 || !multipath_service)
                    {
                      goto LABEL_1077;
                    }

                    *v505 = -1;
                    switch(multipath_service)
                    {
                      case 3:
                        v373 = 2;
                        break;
                      case 2:
                        v373 = 1;
                        break;
                      case 1:
                        *v505 = 0;
                        goto LABEL_937;
                      default:
                        if (multipath_service == 101)
                        {
                          v373 = 4;
                          break;
                        }

                        if (multipath_service == 100)
                        {
                          v373 = 3;
                          break;
                        }

                        if ((*(&v501[6].callbacks + 5) & 0x80) == 0)
                        {
                          v389 = multipath_service;
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 2082;
                          *v513 = v501 + 420;
                          *&v513[8] = 1024;
                          *&v513[10] = v389;
                          v390 = _os_log_send_and_compose_impl();
                          v503[0] = OS_LOG_TYPE_ERROR;
                          v504 = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v390, v503, &v504))
                          {
                            goto LABEL_1012;
                          }

                          if (v503[0] == OS_LOG_TYPE_FAULT)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v391 = gconnectionLogObj;
                            v392 = v503[0];
                            if (!os_log_type_enabled(gconnectionLogObj, v503[0]))
                            {
                              goto LABEL_1012;
                            }

                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 2082;
                            *v513 = v501 + 420;
                            *&v513[8] = 1024;
                            *&v513[10] = v389;
                            v393 = "%{public}s %{public}s Multipath Service has not been set correctly: %u";
                          }

                          else
                          {
                            if (v504 == OS_LOG_TYPE_INFO)
                            {
                              v400 = __nw_create_backtrace_string();
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v401 = gconnectionLogObj;
                              v402 = v503[0];
                              v403 = os_log_type_enabled(gconnectionLogObj, v503[0]);
                              if (v400)
                              {
                                if (v403)
                                {
                                  *buf = 136446978;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 2082;
                                  *v513 = v501 + 420;
                                  *&v513[8] = 1024;
                                  *&v513[10] = v389;
                                  *&v513[14] = 2082;
                                  *&v513[16] = v400;
                                  _os_log_impl(&dword_181A37000, v401, v402, "%{public}s %{public}s Multipath Service has not been set correctly: %u, dumping backtrace:%{public}s", buf, 0x26u);
                                }

                                free(v400);
                                goto LABEL_1012;
                              }

                              if (!v403)
                              {
LABEL_1012:
                                if (v390)
                                {
                                  free(v390);
                                }

                                v4 = v500;
                                v172 = v489;
                                goto LABEL_1245;
                              }

                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 2082;
                              *v513 = v501 + 420;
                              *&v513[8] = 1024;
                              *&v513[10] = v389;
                              v393 = "%{public}s %{public}s Multipath Service has not been set correctly: %u, no backtrace";
                              v404 = v401;
                              v405 = v402;
LABEL_1011:
                              _os_log_impl(&dword_181A37000, v404, v405, v393, buf, 0x1Cu);
                              goto LABEL_1012;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v391 = gconnectionLogObj;
                            v392 = v503[0];
                            if (!os_log_type_enabled(gconnectionLogObj, v503[0]))
                            {
                              goto LABEL_1012;
                            }

                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 2082;
                            *v513 = v501 + 420;
                            *&v513[8] = 1024;
                            *&v513[10] = v389;
                            v393 = "%{public}s %{public}s Multipath Service has not been set correctly: %u, backtrace limit exceeded";
                          }

                          v404 = v391;
                          v405 = v392;
                          goto LABEL_1011;
                        }

LABEL_1245:
                        os_release(v172);
                        goto LABEL_373;
                    }

                    *v505 = v373;
LABEL_937:
                    if (setsockopt(HIDWORD(v501[4].callbacks), 6, 531, v505, 4u))
                    {
                      v374 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v375 = gconnectionLogObj;
                      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446722;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 2082;
                        *v513 = v501 + 420;
                        *&v513[8] = 1024;
                        *&v513[10] = v374;
                        _os_log_impl(&dword_181A37000, v375, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d", buf, 0x1Cu);
                      }

                      if (v374 == 13 || v374 == 22)
                      {
                        v376 = __nwlog_obj();
                        if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v374;
                          v377 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d";
LABEL_1087:
                          _os_log_impl(&dword_181A37000, v376, OS_LOG_TYPE_ERROR, v377, buf, 0x12u);
                          goto LABEL_1244;
                        }

                        goto LABEL_1244;
                      }

                      __nwlog_obj();
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v374;
                      v382 = _os_log_send_and_compose_impl();
                      v503[0] = OS_LOG_TYPE_ERROR;
                      v504 = OS_LOG_TYPE_DEFAULT;
                      if ((__nwlog_fault(v382, v503, &v504) & 1) == 0)
                      {
                        goto LABEL_1241;
                      }

                      if (v503[0] == OS_LOG_TYPE_FAULT)
                      {
                        v383 = __nwlog_obj();
                        v384 = v503[0];
                        if (os_log_type_enabled(v383, v503[0]))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v374;
                          v385 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d";
LABEL_1240:
                          _os_log_impl(&dword_181A37000, v383, v384, v385, buf, 0x12u);
                          goto LABEL_1241;
                        }

                        goto LABEL_1241;
                      }

                      if (v504 != OS_LOG_TYPE_INFO)
                      {
                        v383 = __nwlog_obj();
                        v384 = v503[0];
                        if (os_log_type_enabled(v383, v503[0]))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v374;
                          v385 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1240;
                        }

LABEL_1241:
                        v172 = v489;
                        if (v382)
                        {
                          free(v382);
                        }

                        v372 = v501;
                        goto LABEL_1244;
                      }

                      v386 = __nw_create_backtrace_string();
                      v383 = __nwlog_obj();
                      v384 = v503[0];
                      v387 = os_log_type_enabled(v383, v503[0]);
                      if (!v386)
                      {
                        v4 = v500;
                        if (v387)
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v374;
                          v385 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1240;
                        }

                        goto LABEL_1241;
                      }

                      if (v387)
                      {
                        *buf = 136446722;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v374;
                        *&v513[4] = 2082;
                        *&v513[6] = v386;
                        v388 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_1214:
                        _os_log_impl(&dword_181A37000, v383, v384, v388, buf, 0x1Cu);
                        goto LABEL_1215;
                      }

                      goto LABEL_1215;
                    }

                    if (!_nw_parameters_get_multipath_force_enable(v56) || !setsockopt(HIDWORD(v501[4].callbacks), 6, 535, &v509, 4u))
                    {
LABEL_1050:
                      *v503 = _nw_tcp_options_get_multipath_force_version(v172);
                      if (*v503 <= 1u && setsockopt(HIDWORD(v372[4].callbacks), 6, 538, v503, 4u))
                      {
                        v415 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v416 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 2082;
                          *v513 = v501 + 420;
                          *&v513[8] = 1024;
                          *&v513[10] = v415;
                          _os_log_impl(&dword_181A37000, v416, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v417 = __nwlog_obj();
                        v418 = v417;
                        if (v415 == 22)
                        {
                          if (os_log_type_enabled(v417, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = 22;
                            _os_log_impl(&dword_181A37000, v418, OS_LOG_TYPE_ERROR, "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d", buf, 0x12u);
                          }

LABEL_1076:
                          v372 = v501;
                          nw_socket_internal_error(&v501[1].output_handler);
                          v4 = v500;
                          goto LABEL_1077;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v415;
                        v419 = _os_log_send_and_compose_impl();
                        v504 = OS_LOG_TYPE_ERROR;
                        v502 = 0;
                        if (__nwlog_fault(v419, &v504, &v502))
                        {
                          if (v504 == OS_LOG_TYPE_FAULT)
                          {
                            v420 = __nwlog_obj();
                            v421 = v504;
                            if (os_log_type_enabled(v420, v504))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v415;
                              v422 = "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d";
LABEL_1072:
                              _os_log_impl(&dword_181A37000, v420, v421, v422, buf, 0x12u);
                            }
                          }

                          else if (v502 == 1)
                          {
                            v423 = __nw_create_backtrace_string();
                            v420 = __nwlog_obj();
                            v421 = v504;
                            v424 = os_log_type_enabled(v420, v504);
                            if (v423)
                            {
                              if (v424)
                              {
                                *buf = 136446722;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v415;
                                *&v513[4] = 2082;
                                *&v513[6] = v423;
                                _os_log_impl(&dword_181A37000, v420, v421, "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v423);
                              goto LABEL_1073;
                            }

                            if (v424)
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v415;
                              v422 = "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1072;
                            }
                          }

                          else
                          {
                            v420 = __nwlog_obj();
                            v421 = v504;
                            if (os_log_type_enabled(v420, v504))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v415;
                              v422 = "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1072;
                            }
                          }
                        }

LABEL_1073:
                        if (v419)
                        {
                          free(v419);
                        }

                        v56 = v496;
                        v92 = v497;
                        v172 = v489;
                        goto LABEL_1076;
                      }

LABEL_1077:
                      *v505 = nw_endpoint_get_alternate_port(v92);
                      if (*v505 && (HIBYTE(v372[6].callbacks) & 2) != 0 && setsockopt(HIDWORD(v372[4].callbacks), 6, 534, v505, 4u))
                      {
                        v425 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v426 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 2082;
                          *v513 = v372 + 420;
                          *&v513[8] = 1024;
                          *&v513[10] = v425;
                          _os_log_impl(&dword_181A37000, v426, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v427 = __nwlog_obj();
                        v376 = v427;
                        if (v425 == 22)
                        {
                          if (os_log_type_enabled(v427, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = 22;
                            v377 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d";
                            goto LABEL_1087;
                          }

LABEL_1244:
                          nw_socket_internal_error(&v372[1].output_handler);
                          goto LABEL_1245;
                        }

                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v425;
                        v382 = _os_log_send_and_compose_impl();
                        v503[0] = OS_LOG_TYPE_ERROR;
                        v504 = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v382, v503, &v504))
                        {
                          goto LABEL_1241;
                        }

                        if (v503[0] == OS_LOG_TYPE_FAULT)
                        {
                          v383 = __nwlog_obj();
                          v384 = v503[0];
                          if (os_log_type_enabled(v383, v503[0]))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v425;
                            v385 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d";
                            goto LABEL_1240;
                          }

                          goto LABEL_1241;
                        }

                        if (v504 != OS_LOG_TYPE_INFO)
                        {
                          v383 = __nwlog_obj();
                          v384 = v503[0];
                          if (os_log_type_enabled(v383, v503[0]))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v425;
                            v385 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_1240;
                          }

                          goto LABEL_1241;
                        }

                        v386 = __nw_create_backtrace_string();
                        v383 = __nwlog_obj();
                        v384 = v503[0];
                        v478 = os_log_type_enabled(v383, v503[0]);
                        if (!v386)
                        {
                          v4 = v500;
                          if (v478)
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v425;
                            v385 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d, no backtrace";
                            goto LABEL_1240;
                          }

                          goto LABEL_1241;
                        }

                        if (v478)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v425;
                          *&v513[4] = 2082;
                          *&v513[6] = v386;
                          v388 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                          goto LABEL_1214;
                        }

LABEL_1215:
                        free(v386);
                        v4 = v500;
                        goto LABEL_1241;
                      }

                      goto LABEL_1088;
                    }

                    v378 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v379 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v378;
                      _os_log_impl(&dword_181A37000, v379, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v380 = __nwlog_obj();
                    v381 = v380;
                    if (v378 == 22)
                    {
                      if (os_log_type_enabled(v380, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = 22;
                        _os_log_impl(&dword_181A37000, v381, OS_LOG_TYPE_ERROR, "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x12u);
                      }

LABEL_1049:
                      v372 = v501;
                      nw_socket_internal_error(&v501[1].output_handler);
                      v4 = v500;
                      goto LABEL_1050;
                    }

                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v378;
                    v394 = _os_log_send_and_compose_impl();
                    v503[0] = OS_LOG_TYPE_ERROR;
                    v504 = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v394, v503, &v504))
                    {
                      if (v503[0] == OS_LOG_TYPE_FAULT)
                      {
                        v395 = __nwlog_obj();
                        v396 = v503[0];
                        if (os_log_type_enabled(v395, v503[0]))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v378;
                          v397 = "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d";
LABEL_1045:
                          _os_log_impl(&dword_181A37000, v395, v396, v397, buf, 0x12u);
                        }
                      }

                      else if (v504 == OS_LOG_TYPE_INFO)
                      {
                        v398 = __nw_create_backtrace_string();
                        v395 = __nwlog_obj();
                        v396 = v503[0];
                        v399 = os_log_type_enabled(v395, v503[0]);
                        if (v398)
                        {
                          if (v399)
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v378;
                            *&v513[4] = 2082;
                            *&v513[6] = v398;
                            _os_log_impl(&dword_181A37000, v395, v396, "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                          }

                          free(v398);
                          goto LABEL_1046;
                        }

                        if (v399)
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v378;
                          v397 = "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1045;
                        }
                      }

                      else
                      {
                        v395 = __nwlog_obj();
                        v396 = v503[0];
                        if (os_log_type_enabled(v395, v503[0]))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v378;
                          v397 = "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1045;
                        }
                      }
                    }

LABEL_1046:
                    if (v394)
                    {
                      free(v394);
                    }

                    v56 = v496;
                    v92 = v497;
                    v172 = v489;
                    goto LABEL_1049;
                  }

                  if (!_nw_protocol_options_is_udp(v172))
                  {
                    goto LABEL_1088;
                  }

                  if (!_nw_udp_options_get_prefer_no_checksum(v172) || !setsockopt(HIDWORD(v501[4].callbacks), 17, 1, &v509, 4u))
                  {
LABEL_838:
                    if (output_handler_low == 2)
                    {
                      if ((setsockopt(HIDWORD(v501[4].callbacks), 0, 27, &v509, 4u) & 0x80000000) == 0)
                      {
                        goto LABEL_1020;
                      }

                      v337 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                      v338 = __nwlog_obj();
                      v339 = v338;
                      if (v337 == 22)
                      {
                        if (os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = 22;
                          v340 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d";
LABEL_848:
                          _os_log_impl(&dword_181A37000, v339, OS_LOG_TYPE_ERROR, v340, buf, 0x12u);
                          goto LABEL_1020;
                        }

                        goto LABEL_1020;
                      }

                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v337;
                      v343 = _os_log_send_and_compose_impl();
                      v506[0] = OS_LOG_TYPE_ERROR;
                      v505[0] = OS_LOG_TYPE_DEFAULT;
                      if (__nwlog_fault(v343, v506, v505))
                      {
                        if (v506[0] == OS_LOG_TYPE_FAULT)
                        {
                          v344 = __nwlog_obj();
                          v345 = v506[0];
                          if (!os_log_type_enabled(v344, v506[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v337;
                          v346 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d";
LABEL_1017:
                          _os_log_impl(&dword_181A37000, v344, v345, v346, buf, 0x12u);
                          goto LABEL_1018;
                        }

                        if (v505[0] != OS_LOG_TYPE_INFO)
                        {
                          v344 = __nwlog_obj();
                          v345 = v506[0];
                          if (!os_log_type_enabled(v344, v506[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v337;
                          v346 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1017;
                        }

                        v347 = __nw_create_backtrace_string();
                        v344 = __nwlog_obj();
                        v345 = v506[0];
                        v348 = os_log_type_enabled(v344, v506[0]);
                        if (!v347)
                        {
                          v92 = v497;
                          if (!v348)
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v337;
                          v346 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1017;
                        }

                        if (v348)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v337;
                          *&v513[4] = 2082;
                          *&v513[6] = v347;
                          v349 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_865:
                          _os_log_impl(&dword_181A37000, v344, v345, v349, buf, 0x1Cu);
                          goto LABEL_866;
                        }

                        goto LABEL_866;
                      }
                    }

                    else
                    {
                      if (output_handler_low != 30 || (setsockopt(HIDWORD(v501[4].callbacks), 41, 35, &v509, 4u) & 0x80000000) == 0)
                      {
                        goto LABEL_1020;
                      }

                      v341 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                      v342 = __nwlog_obj();
                      v339 = v342;
                      if (v341 == 22)
                      {
                        if (os_log_type_enabled(v342, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = 22;
                          v340 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d";
                          goto LABEL_848;
                        }

LABEL_1020:
                        if (nw_endpoint_get_type(v92) == nw_endpoint_type_address && nw_endpoint_is_broadcast(v92, path) && setsockopt(HIDWORD(v501[4].callbacks), 0xFFFF, 32, &v509, 4u) < 0)
                        {
                          v406 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          v407 = __nwlog_obj();
                          v408 = v407;
                          if (v406 == 22)
                          {
                            if (os_log_type_enabled(v407, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = 22;
                              _os_log_impl(&dword_181A37000, v408, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d", buf, 0x12u);
                            }

                            goto LABEL_1088;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v406;
                          v409 = _os_log_send_and_compose_impl();
                          v506[0] = OS_LOG_TYPE_ERROR;
                          v505[0] = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v409, v506, v505))
                          {
                            if (v506[0] == OS_LOG_TYPE_FAULT)
                            {
                              v410 = __nwlog_obj();
                              v411 = v506[0];
                              if (!os_log_type_enabled(v410, v506[0]))
                              {
                                goto LABEL_1040;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v406;
                              v412 = "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d";
                              goto LABEL_1039;
                            }

                            if (v505[0] != OS_LOG_TYPE_INFO)
                            {
                              v410 = __nwlog_obj();
                              v411 = v506[0];
                              v92 = v497;
                              if (!os_log_type_enabled(v410, v506[0]))
                              {
                                goto LABEL_1040;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v406;
                              v412 = "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1039;
                            }

                            v413 = __nw_create_backtrace_string();
                            v410 = __nwlog_obj();
                            v411 = v506[0];
                            v414 = os_log_type_enabled(v410, v506[0]);
                            if (v413)
                            {
                              if (v414)
                              {
                                *buf = 136446722;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v406;
                                *&v513[4] = 2082;
                                *&v513[6] = v413;
                                _os_log_impl(&dword_181A37000, v410, v411, "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v413);
                              v92 = v497;
                              goto LABEL_1040;
                            }

                            v92 = v497;
                            if (v414)
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v406;
                              v412 = "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d, no backtrace";
LABEL_1039:
                              _os_log_impl(&dword_181A37000, v410, v411, v412, buf, 0x12u);
                            }
                          }

LABEL_1040:
                          v4 = v500;
                          v172 = v489;
                          if (v409)
                          {
                            free(v409);
                          }
                        }

LABEL_1088:
                        os_release(v172);
LABEL_1089:
                        v6 = v501;
                        if (_nw_parameters_get_reuse_local_address(v56))
                        {
                          if (setsockopt(HIDWORD(v501[4].callbacks), 0xFFFF, 4, &v509, 4u) < 0)
                          {
                            v440 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v441 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 2082;
                              *v513 = v501 + 420;
                              *&v513[8] = 1024;
                              *&v513[10] = v440;
                              _os_log_impl(&dword_181A37000, v441, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d", buf, 0x1Cu);
                            }

                            v442 = __nwlog_obj();
                            v63 = v442;
                            if (v440 == 22)
                            {
                              if (!os_log_type_enabled(v442, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_371;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = 22;
                              v64 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d";
                              goto LABEL_335;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v440;
                            v68 = _os_log_send_and_compose_impl();
                            v506[0] = OS_LOG_TYPE_ERROR;
                            v505[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v68, v506, v505))
                            {
                              goto LABEL_1234;
                            }

                            if (v506[0] == OS_LOG_TYPE_FAULT)
                            {
                              v448 = __nwlog_obj();
                              v449 = v506[0];
                              if (!os_log_type_enabled(v448, v506[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v440;
                              v450 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d";
                              goto LABEL_1233;
                            }

                            if (v505[0] != OS_LOG_TYPE_INFO)
                            {
                              v448 = __nwlog_obj();
                              v449 = v506[0];
                              if (!os_log_type_enabled(v448, v506[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v440;
                              v450 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1233;
                            }

                            v456 = __nw_create_backtrace_string();
                            v448 = __nwlog_obj();
                            v449 = v506[0];
                            v462 = os_log_type_enabled(v448, v506[0]);
                            if (!v456)
                            {
                              v6 = v501;
                              if (!v462)
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v440;
                              v450 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1233;
                            }

                            if (v462)
                            {
                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v440;
                              *&v513[4] = 2082;
                              *&v513[6] = v456;
                              v458 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d, dumping backtrace:%{public}s";
                              goto LABEL_1198;
                            }

LABEL_1199:
                            free(v456);
                            v6 = v501;
                            goto LABEL_1234;
                          }

                          if (setsockopt(HIDWORD(v501[4].callbacks), 0xFFFF, 512, &v509, 4u) < 0)
                          {
                            v451 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v452 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 2082;
                              *v513 = v501 + 420;
                              *&v513[8] = 1024;
                              *&v513[10] = v451;
                              _os_log_impl(&dword_181A37000, v452, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d", buf, 0x1Cu);
                            }

                            v453 = __nwlog_obj();
                            v63 = v453;
                            if (v451 == 22)
                            {
                              if (!os_log_type_enabled(v453, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_371;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = 22;
                              v64 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d";
                              goto LABEL_335;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v451;
                            v68 = _os_log_send_and_compose_impl();
                            v506[0] = OS_LOG_TYPE_ERROR;
                            v505[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v68, v506, v505))
                            {
                              goto LABEL_1234;
                            }

                            if (v506[0] == OS_LOG_TYPE_FAULT)
                            {
                              v448 = __nwlog_obj();
                              v449 = v506[0];
                              if (!os_log_type_enabled(v448, v506[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v451;
                              v450 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d";
                              goto LABEL_1233;
                            }

                            if (v505[0] != OS_LOG_TYPE_INFO)
                            {
                              v448 = __nwlog_obj();
                              v449 = v506[0];
                              if (!os_log_type_enabled(v448, v506[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v451;
                              v450 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1233;
                            }

                            v456 = __nw_create_backtrace_string();
                            v448 = __nwlog_obj();
                            v449 = v506[0];
                            v465 = os_log_type_enabled(v448, v506[0]);
                            if (!v456)
                            {
                              v6 = v501;
                              if (!v465)
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v451;
                              v450 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1233;
                            }

                            if (v465)
                            {
                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v451;
                              *&v513[4] = 2082;
                              *&v513[6] = v456;
                              v458 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                              goto LABEL_1198;
                            }

                            goto LABEL_1199;
                          }
                        }

                        v428 = v501[3].callbacks;
                        if (v428)
                        {
                          callbacks_high = HIDWORD(v501[4].callbacks);
                          bytes_ptr = xpc_data_get_bytes_ptr(v428);
                          length = xpc_data_get_length(v501[3].callbacks);
                          v432 = bytes_ptr;
                          v6 = v501;
                          if (setsockopt(callbacks_high, 0xFFFF, 4358, v432, length))
                          {
                            v433 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v434 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 2082;
                              *v513 = v501 + 420;
                              *&v513[8] = 1024;
                              *&v513[10] = v433;
                              _os_log_impl(&dword_181A37000, v434, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d", buf, 0x1Cu);
                            }

                            v435 = __nwlog_obj();
                            v63 = v435;
                            if (v433 == 22)
                            {
                              if (!os_log_type_enabled(v435, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_371;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = 22;
                              v64 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d";
                              goto LABEL_335;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v433;
                            v68 = _os_log_send_and_compose_impl();
                            v506[0] = OS_LOG_TYPE_ERROR;
                            v505[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v68, v506, v505))
                            {
                              goto LABEL_1234;
                            }

                            if (v506[0] == OS_LOG_TYPE_FAULT)
                            {
                              v448 = __nwlog_obj();
                              v449 = v506[0];
                              if (!os_log_type_enabled(v448, v506[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v433;
                              v450 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d";
                              goto LABEL_1233;
                            }

                            if (v505[0] != OS_LOG_TYPE_INFO)
                            {
                              v448 = __nwlog_obj();
                              v449 = v506[0];
                              if (!os_log_type_enabled(v448, v506[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v433;
                              v450 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1233;
                            }

                            v456 = __nw_create_backtrace_string();
                            v448 = __nwlog_obj();
                            v449 = v506[0];
                            v457 = os_log_type_enabled(v448, v506[0]);
                            if (!v456)
                            {
                              v6 = v501;
                              if (!v457)
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v433;
                              v450 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1233;
                            }

                            if (v457)
                            {
                              *buf = 136446722;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v433;
                              *&v513[4] = 2082;
                              *&v513[6] = v456;
                              v458 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_1198:
                              _os_log_impl(&dword_181A37000, v448, v449, v458, buf, 0x1Cu);
                              goto LABEL_1199;
                            }

                            goto LABEL_1199;
                          }
                        }

                        if (path && nw_path_uses_interface_subtype(path, 4001) && setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4376, &v509, 4u) < 0)
                        {
                          v459 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v460 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 2082;
                            *v513 = v6 + 420;
                            *&v513[8] = 1024;
                            *&v513[10] = v459;
                            _os_log_impl(&dword_181A37000, v460, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d", buf, 0x1Cu);
                          }

                          v461 = __nwlog_obj();
                          v63 = v461;
                          if (v459 == 22)
                          {
                            if (!os_log_type_enabled(v461, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_371;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = 22;
                            v64 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d";
                            goto LABEL_335;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v459;
                          v68 = _os_log_send_and_compose_impl();
                          v506[0] = OS_LOG_TYPE_ERROR;
                          v505[0] = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v68, v506, v505))
                          {
                            goto LABEL_1234;
                          }

                          if (v506[0] == OS_LOG_TYPE_FAULT)
                          {
                            v448 = __nwlog_obj();
                            v449 = v506[0];
                            if (!os_log_type_enabled(v448, v506[0]))
                            {
                              goto LABEL_1234;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v459;
                            v450 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d";
                            goto LABEL_1233;
                          }

                          if (v505[0] != OS_LOG_TYPE_INFO)
                          {
                            v448 = __nwlog_obj();
                            v449 = v506[0];
                            if (!os_log_type_enabled(v448, v506[0]))
                            {
                              goto LABEL_1234;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v459;
                            v450 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_1233;
                          }

                          v456 = __nw_create_backtrace_string();
                          v448 = __nwlog_obj();
                          v449 = v506[0];
                          v470 = os_log_type_enabled(v448, v506[0]);
                          if (!v456)
                          {
                            v6 = v501;
                            if (!v470)
                            {
                              goto LABEL_1234;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v459;
                            v450 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d, no backtrace";
LABEL_1233:
                            _os_log_impl(&dword_181A37000, v448, v449, v450, buf, 0x12u);
LABEL_1234:
                            v4 = v500;
                            if (!v68)
                            {
                              goto LABEL_371;
                            }

                            goto LABEL_370;
                          }

                          if (v470)
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v459;
                            *&v513[4] = 2082;
                            *&v513[6] = v456;
                            v458 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d, dumping backtrace:%{public}s";
                            goto LABEL_1198;
                          }

                          goto LABEL_1199;
                        }

                        v436 = _nw_parameters_copy_context(v56);
                        do_not_log_trackers = nw_context_get_do_not_log_trackers(v436);
                        if (v436)
                        {
                          os_release(v436);
                        }

                        if (do_not_log_trackers)
                        {
                          if ((setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4405, &v509, 4u) & 0x80000000) == 0)
                          {
                            if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                            {
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v438 = gconnectionLogObj;
                              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 2082;
                                *v513 = v6 + 420;
                                v439 = "%{public}s %{public}s set SO_MARK_DOMAIN_INFO_SILENT on";
LABEL_1259:
                                v481 = v438;
                                v482 = OS_LOG_TYPE_DEBUG;
                                v483 = 22;
LABEL_1266:
                                _os_log_impl(&dword_181A37000, v481, v482, v439, buf, v483);
                                goto LABEL_1285;
                              }
                            }

                            goto LABEL_1285;
                          }

                          v454 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (v454 == 22 || v454 == 42)
                          {
                            v455 = __nwlog_obj();
                            if (!os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1285;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v454;
                            v439 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d";
LABEL_1265:
                            v481 = v455;
                            v482 = OS_LOG_TYPE_ERROR;
                            v483 = 18;
                            goto LABEL_1266;
                          }

                          __nwlog_obj();
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v454;
                          v466 = _os_log_send_and_compose_impl();
                          v506[0] = OS_LOG_TYPE_ERROR;
                          v505[0] = OS_LOG_TYPE_DEFAULT;
                          if ((__nwlog_fault(v466, v506, v505) & 1) == 0)
                          {
                            goto LABEL_1282;
                          }

                          if (v506[0] == OS_LOG_TYPE_FAULT)
                          {
                            v467 = __nwlog_obj();
                            v468 = v506[0];
                            if (os_log_type_enabled(v467, v506[0]))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v454;
                              v469 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d";
LABEL_1281:
                              _os_log_impl(&dword_181A37000, v467, v468, v469, buf, 0x12u);
                              goto LABEL_1282;
                            }

                            goto LABEL_1282;
                          }

                          if (v505[0] != OS_LOG_TYPE_INFO)
                          {
                            v467 = __nwlog_obj();
                            v468 = v506[0];
                            if (os_log_type_enabled(v467, v506[0]))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v454;
                              v469 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1281;
                            }

LABEL_1282:
                            v92 = v497;
                            if (v466)
                            {
                              free(v466);
                            }

                            v6 = v501;
                            goto LABEL_1285;
                          }

                          v475 = __nw_create_backtrace_string();
                          v467 = __nwlog_obj();
                          v468 = v506[0];
                          v476 = os_log_type_enabled(v467, v506[0]);
                          if (!v475)
                          {
                            v4 = v500;
                            if (v476)
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v454;
                              v469 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          if (v476)
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v454;
                            *&v513[4] = 2082;
                            *&v513[6] = v475;
                            v477 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_1275:
                            _os_log_impl(&dword_181A37000, v467, v468, v477, buf, 0x1Cu);
                            goto LABEL_1276;
                          }

                          goto LABEL_1276;
                        }

                        if (!_nw_parameters_get_is_known_tracker(v56))
                        {
                          goto LABEL_1252;
                        }

                        if ((setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4389, &v509, 4u) & 0x80000000) == 0)
                        {
                          if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v443 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 2082;
                              *v513 = v6 + 420;
                              v444 = "%{public}s %{public}s set SO_MARK_KNOWN_TRACKER on";
                              v445 = v443;
                              v446 = OS_LOG_TYPE_DEBUG;
                              v447 = 22;
LABEL_1169:
                              _os_log_impl(&dword_181A37000, v445, v446, v444, buf, v447);
                            }
                          }

LABEL_1252:
                          if (nw_parameters_get_attribution(v56) != nw_parameters_attribution_user)
                          {
                            goto LABEL_1285;
                          }

                          if ((setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4390, &v509, 4u) & 0x80000000) == 0)
                          {
                            if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                            {
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v438 = gconnectionLogObj;
                              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 2082;
                                *v513 = v6 + 420;
                                v439 = "%{public}s %{public}s set SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED on";
                                goto LABEL_1259;
                              }
                            }

LABEL_1285:
                            nw_protocol_socket_set_necp_attributes(&v6[1].output_handler, v56, v92);
                            result = 1;
                            if (v4)
                            {
                              return result;
                            }

                            goto LABEL_374;
                          }

                          v484 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (v484 == 22 || v484 == 42 || v484 == 100)
                          {
                            v455 = __nwlog_obj();
                            if (!os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1285;
                            }

                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v484;
                            v439 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d";
                            goto LABEL_1265;
                          }

                          __nwlog_obj();
                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v484;
                          v466 = _os_log_send_and_compose_impl();
                          v506[0] = OS_LOG_TYPE_ERROR;
                          v505[0] = OS_LOG_TYPE_DEFAULT;
                          if ((__nwlog_fault(v466, v506, v505) & 1) == 0)
                          {
                            goto LABEL_1282;
                          }

                          if (v506[0] == OS_LOG_TYPE_FAULT)
                          {
                            v467 = __nwlog_obj();
                            v468 = v506[0];
                            if (os_log_type_enabled(v467, v506[0]))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v484;
                              v469 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          if (v505[0] != OS_LOG_TYPE_INFO)
                          {
                            v467 = __nwlog_obj();
                            v468 = v506[0];
                            v4 = v500;
                            if (os_log_type_enabled(v467, v506[0]))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v484;
                              v469 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          v475 = __nw_create_backtrace_string();
                          v467 = __nwlog_obj();
                          v468 = v506[0];
                          v485 = os_log_type_enabled(v467, v506[0]);
                          if (!v475)
                          {
                            v4 = v500;
                            if (v485)
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v484;
                              v469 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          if (v485)
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v484;
                            *&v513[4] = 2082;
                            *&v513[6] = v475;
                            v477 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d, dumping backtrace:%{public}s";
                            goto LABEL_1275;
                          }

LABEL_1276:
                          free(v475);
                          v4 = v500;
                          goto LABEL_1282;
                        }

                        v463 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (v463 == 22 || v463 == 42)
                        {
                          v464 = __nwlog_obj();
                          if (!os_log_type_enabled(v464, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1252;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v463;
                          v444 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d";
                          v445 = v464;
                          v446 = OS_LOG_TYPE_ERROR;
                          v447 = 18;
                          goto LABEL_1169;
                        }

                        __nwlog_obj();
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v463;
                        v471 = _os_log_send_and_compose_impl();
                        v506[0] = OS_LOG_TYPE_ERROR;
                        v505[0] = OS_LOG_TYPE_DEFAULT;
                        if (__nwlog_fault(v471, v506, v505))
                        {
                          if (v506[0] == OS_LOG_TYPE_FAULT)
                          {
                            v472 = __nwlog_obj();
                            v473 = v506[0];
                            if (os_log_type_enabled(v472, v506[0]))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v463;
                              v474 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d";
LABEL_1248:
                              _os_log_impl(&dword_181A37000, v472, v473, v474, buf, 0x12u);
                            }
                          }

                          else if (v505[0] == OS_LOG_TYPE_INFO)
                          {
                            v479 = __nw_create_backtrace_string();
                            v472 = __nwlog_obj();
                            v473 = v506[0];
                            v480 = os_log_type_enabled(v472, v506[0]);
                            if (v479)
                            {
                              if (v480)
                              {
                                *buf = 136446722;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v463;
                                *&v513[4] = 2082;
                                *&v513[6] = v479;
                                _os_log_impl(&dword_181A37000, v472, v473, "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v479);
                              v4 = v500;
                              goto LABEL_1249;
                            }

                            v4 = v500;
                            if (v480)
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v463;
                              v474 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1248;
                            }
                          }

                          else
                          {
                            v472 = __nwlog_obj();
                            v473 = v506[0];
                            if (os_log_type_enabled(v472, v506[0]))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v463;
                              v474 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1248;
                            }
                          }
                        }

LABEL_1249:
                        v92 = v497;
                        if (v471)
                        {
                          free(v471);
                        }

                        v6 = v501;
                        goto LABEL_1252;
                      }

                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v341;
                      v343 = _os_log_send_and_compose_impl();
                      v506[0] = OS_LOG_TYPE_ERROR;
                      v505[0] = OS_LOG_TYPE_DEFAULT;
                      if (__nwlog_fault(v343, v506, v505))
                      {
                        if (v506[0] == OS_LOG_TYPE_FAULT)
                        {
                          v344 = __nwlog_obj();
                          v345 = v506[0];
                          if (!os_log_type_enabled(v344, v506[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v341;
                          v346 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d";
                          goto LABEL_1017;
                        }

                        if (v505[0] != OS_LOG_TYPE_INFO)
                        {
                          v344 = __nwlog_obj();
                          v345 = v506[0];
                          v92 = v497;
                          if (!os_log_type_enabled(v344, v506[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v341;
                          v346 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1017;
                        }

                        v347 = __nw_create_backtrace_string();
                        v344 = __nwlog_obj();
                        v345 = v506[0];
                        v350 = os_log_type_enabled(v344, v506[0]);
                        if (!v347)
                        {
                          v92 = v497;
                          if (!v350)
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v341;
                          v346 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1017;
                        }

                        if (v350)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v341;
                          *&v513[4] = 2082;
                          *&v513[6] = v347;
                          v349 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d, dumping backtrace:%{public}s";
                          goto LABEL_865;
                        }

LABEL_866:
                        free(v347);
                        v92 = v497;
                      }
                    }

LABEL_1018:
                    v4 = v500;
                    v172 = v489;
                    if (v343)
                    {
                      free(v343);
                    }

                    goto LABEL_1020;
                  }

                  v305 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v306 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 2082;
                    *v513 = v501 + 420;
                    *&v513[8] = 1024;
                    *&v513[10] = v305;
                    _os_log_impl(&dword_181A37000, v306, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d", buf, 0x1Cu);
                  }

                  v307 = __nwlog_obj();
                  v308 = v307;
                  if (v305 == 22)
                  {
                    v172 = v489;
                    if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = 22;
                      _os_log_impl(&dword_181A37000, v308, OS_LOG_TYPE_ERROR, "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d", buf, 0x12u);
                    }

                    goto LABEL_838;
                  }

                  *buf = 136446466;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v305;
                  v318 = _os_log_send_and_compose_impl();
                  v506[0] = OS_LOG_TYPE_ERROR;
                  v505[0] = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v318, v506, v505))
                  {
                    if (v506[0] == OS_LOG_TYPE_FAULT)
                    {
                      v319 = __nwlog_obj();
                      v320 = v506[0];
                      if (!os_log_type_enabled(v319, v506[0]))
                      {
                        goto LABEL_836;
                      }

                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v305;
                      v321 = "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d";
                      goto LABEL_835;
                    }

                    if (v505[0] != OS_LOG_TYPE_INFO)
                    {
                      v319 = __nwlog_obj();
                      v320 = v506[0];
                      if (!os_log_type_enabled(v319, v506[0]))
                      {
                        goto LABEL_836;
                      }

                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v305;
                      v321 = "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_835;
                    }

                    v324 = __nw_create_backtrace_string();
                    v319 = __nwlog_obj();
                    v320 = v506[0];
                    v325 = os_log_type_enabled(v319, v506[0]);
                    if (v324)
                    {
                      if (v325)
                      {
                        *buf = 136446722;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v305;
                        *&v513[4] = 2082;
                        *&v513[6] = v324;
                        _os_log_impl(&dword_181A37000, v319, v320, "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v324);
                      v92 = v497;
                      goto LABEL_836;
                    }

                    v92 = v497;
                    if (v325)
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v305;
                      v321 = "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d, no backtrace";
LABEL_835:
                      _os_log_impl(&dword_181A37000, v319, v320, v321, buf, 0x12u);
                    }
                  }

LABEL_836:
                  v4 = v500;
                  v172 = v489;
                  if (v318)
                  {
                    free(v318);
                  }

                  goto LABEL_838;
                }

                if (!_nw_ip_options_get_calculate_receive_time(v171) || !setsockopt(HIDWORD(v501[4].callbacks), 0xFFFF, 0x40000, &v509, 4u))
                {
LABEL_469:
                  *v506 = _nw_ip_options_get_hop_limit(v171);
                  if (!*v506)
                  {
                    goto LABEL_526;
                  }

                  if (output_handler_low == 2)
                  {
                    if (!setsockopt(HIDWORD(v501[4].callbacks), 0, 4, v506, 4u))
                    {
                      goto LABEL_526;
                    }

                    v193 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v194 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v193;
                      _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_TTL failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v195 = __nwlog_obj();
                    v196 = v195;
                    if (v193 == 22)
                    {
                      v172 = v489;
                      if (!os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_526;
                      }

                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = 22;
                      v197 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d";
LABEL_488:
                      _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_ERROR, v197, buf, 0x12u);
                      goto LABEL_526;
                    }

                    v201 = output_handler_low;
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v193;
                    v202 = _os_log_send_and_compose_impl();
                    v505[0] = OS_LOG_TYPE_ERROR;
                    v503[0] = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v202, v505, v503))
                    {
                      goto LABEL_523;
                    }

                    if (v505[0] == OS_LOG_TYPE_FAULT)
                    {
                      v203 = __nwlog_obj();
                      v204 = v505[0];
                      if (os_log_type_enabled(v203, v505[0]))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v193;
                        v205 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d";
LABEL_522:
                        _os_log_impl(&dword_181A37000, v203, v204, v205, buf, 0x12u);
                        goto LABEL_523;
                      }

                      goto LABEL_523;
                    }

                    if (v503[0] != OS_LOG_TYPE_INFO)
                    {
                      v203 = __nwlog_obj();
                      v204 = v505[0];
                      if (os_log_type_enabled(v203, v505[0]))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v193;
                        v205 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    v206 = __nw_create_backtrace_string();
                    v203 = __nwlog_obj();
                    v204 = v505[0];
                    v207 = os_log_type_enabled(v203, v505[0]);
                    if (!v206)
                    {
                      if (v207)
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v193;
                        v205 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d, no backtrace";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    if (v207)
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v193;
                      *&v513[4] = 2082;
                      *&v513[6] = v206;
                      v208 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_505:
                      _os_log_impl(&dword_181A37000, v203, v204, v208, buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    if (output_handler_low != 30 || !setsockopt(HIDWORD(v501[4].callbacks), 41, 47, v506, 4u))
                    {
                      goto LABEL_526;
                    }

                    v198 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v199 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 2082;
                      *v513 = v501 + 420;
                      *&v513[8] = 1024;
                      *&v513[10] = v198;
                      _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v200 = __nwlog_obj();
                    v196 = v200;
                    if (v198 == 22)
                    {
                      v172 = v489;
                      if (!os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_526;
                      }

                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = 22;
                      v197 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d";
                      goto LABEL_488;
                    }

                    v201 = output_handler_low;
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v198;
                    v202 = _os_log_send_and_compose_impl();
                    v505[0] = OS_LOG_TYPE_ERROR;
                    v503[0] = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v202, v505, v503))
                    {
                      goto LABEL_523;
                    }

                    if (v505[0] == OS_LOG_TYPE_FAULT)
                    {
                      v203 = __nwlog_obj();
                      v204 = v505[0];
                      if (os_log_type_enabled(v203, v505[0]))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v198;
                        v205 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d";
                        goto LABEL_522;
                      }

LABEL_523:
                      v172 = v489;
                      output_handler_low = v201;
                      if (v202)
                      {
                        free(v202);
                      }

                      v92 = v497;
LABEL_526:
                      if (!_nw_ip_options_get_receive_hop_limit(v171))
                      {
                        goto LABEL_576;
                      }

                      if (output_handler_low == 2)
                      {
                        if (!setsockopt(HIDWORD(v501[4].callbacks), 0, 24, &v509, 4u))
                        {
                          goto LABEL_576;
                        }

                        v210 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v211 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 2082;
                          *v513 = v501 + 420;
                          *&v513[8] = 1024;
                          *&v513[10] = v210;
                          _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v212 = __nwlog_obj();
                        v213 = v212;
                        if (v210 == 22)
                        {
                          v172 = v489;
                          if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = 22;
                            v214 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d";
LABEL_545:
                            _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_ERROR, v214, buf, 0x12u);
                            goto LABEL_576;
                          }

                          goto LABEL_576;
                        }

                        v218 = output_handler_low;
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v210;
                        v219 = _os_log_send_and_compose_impl();
                        v505[0] = OS_LOG_TYPE_ERROR;
                        v503[0] = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v219, v505, v503))
                        {
                          goto LABEL_573;
                        }

                        if (v505[0] == OS_LOG_TYPE_FAULT)
                        {
                          v220 = __nwlog_obj();
                          v221 = v505[0];
                          if (os_log_type_enabled(v220, v505[0]))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v210;
                            v222 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d";
LABEL_572:
                            _os_log_impl(&dword_181A37000, v220, v221, v222, buf, 0x12u);
                            goto LABEL_573;
                          }

                          goto LABEL_573;
                        }

                        if (v503[0] != OS_LOG_TYPE_INFO)
                        {
                          v220 = __nwlog_obj();
                          v221 = v505[0];
                          if (os_log_type_enabled(v220, v505[0]))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v210;
                            v222 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        v223 = __nw_create_backtrace_string();
                        v220 = __nwlog_obj();
                        v221 = v505[0];
                        v224 = os_log_type_enabled(v220, v505[0]);
                        if (!v223)
                        {
                          if (v224)
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v210;
                            v222 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d, no backtrace";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        if (v224)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v210;
                          *&v513[4] = 2082;
                          *&v513[6] = v223;
                          v225 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_562:
                          _os_log_impl(&dword_181A37000, v220, v221, v225, buf, 0x1Cu);
                        }
                      }

                      else
                      {
                        if (output_handler_low != 30 || !setsockopt(HIDWORD(v501[4].callbacks), 41, 37, &v509, 4u))
                        {
                          goto LABEL_576;
                        }

                        v215 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v216 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 2082;
                          *v513 = v501 + 420;
                          *&v513[8] = 1024;
                          *&v513[10] = v215;
                          _os_log_impl(&dword_181A37000, v216, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v217 = __nwlog_obj();
                        v213 = v217;
                        if (v215 == 22)
                        {
                          v172 = v489;
                          if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = 22;
                            v214 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d";
                            goto LABEL_545;
                          }

LABEL_576:
                          if (nw_ip_options_get_fragmentation_value(v171) == 1 || nw_parameters_get_upper_transport_protocol(v56) == 253)
                          {
                            if (output_handler_low == 2)
                            {
                              if (setsockopt(HIDWORD(v501[4].callbacks), 0, 28, &v509, 4u))
                              {
                                v227 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v228 = gconnectionLogObj;
                                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446722;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 2082;
                                  *v513 = v501 + 420;
                                  *&v513[8] = 1024;
                                  *&v513[10] = v227;
                                  _os_log_impl(&dword_181A37000, v228, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d", buf, 0x1Cu);
                                }

                                v229 = __nwlog_obj();
                                v230 = v229;
                                v231 = output_handler_low;
                                if (v227 == 22)
                                {
                                  if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446466;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 1024;
                                    *v513 = 22;
                                    _os_log_impl(&dword_181A37000, v230, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d", buf, 0x12u);
                                  }

                                  v232 = 0;
                                  v172 = v489;
                                  goto LABEL_690;
                                }

                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v227;
                                v237 = _os_log_send_and_compose_impl();
                                v505[0] = OS_LOG_TYPE_ERROR;
                                v503[0] = OS_LOG_TYPE_DEFAULT;
                                if (__nwlog_fault(v237, v505, v503))
                                {
                                  if (v505[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v238 = __nwlog_obj();
                                    v239 = v505[0];
                                    if (os_log_type_enabled(v238, v505[0]))
                                    {
                                      *buf = 136446466;
                                      v511 = "nw_socket_set_common_sockopts";
                                      v512 = 1024;
                                      *v513 = v227;
                                      v240 = "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d";
LABEL_623:
                                      _os_log_impl(&dword_181A37000, v238, v239, v240, buf, 0x12u);
                                    }
                                  }

                                  else if (v503[0] == OS_LOG_TYPE_INFO)
                                  {
                                    v245 = __nw_create_backtrace_string();
                                    v238 = __nwlog_obj();
                                    v239 = v505[0];
                                    v246 = os_log_type_enabled(v238, v505[0]);
                                    if (v245)
                                    {
                                      if (v246)
                                      {
                                        *buf = 136446722;
                                        v511 = "nw_socket_set_common_sockopts";
                                        v512 = 1024;
                                        *v513 = v227;
                                        *&v513[4] = 2082;
                                        *&v513[6] = v245;
                                        _os_log_impl(&dword_181A37000, v238, v239, "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                      }

                                      free(v245);
                                      goto LABEL_624;
                                    }

                                    if (v246)
                                    {
                                      *buf = 136446466;
                                      v511 = "nw_socket_set_common_sockopts";
                                      v512 = 1024;
                                      *v513 = v227;
                                      v240 = "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d, no backtrace";
                                      goto LABEL_623;
                                    }
                                  }

                                  else
                                  {
                                    v238 = __nwlog_obj();
                                    v239 = v505[0];
                                    if (os_log_type_enabled(v238, v505[0]))
                                    {
                                      *buf = 136446466;
                                      v511 = "nw_socket_set_common_sockopts";
                                      v512 = 1024;
                                      *v513 = v227;
                                      v240 = "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d, backtrace limit exceeded";
                                      goto LABEL_623;
                                    }
                                  }
                                }

LABEL_624:
                                if (v237)
                                {
                                  free(v237);
                                }

                                v232 = 0;
                                v92 = v497;
                                v172 = v489;
LABEL_690:
                                if (!nw_endpoint_is_multicast(v92))
                                {
                                  goto LABEL_758;
                                }

                                disable_multicast_loopback = _nw_ip_options_get_disable_multicast_loopback(v171);
                                if (v231 == 2 && v172 && _nw_protocol_options_is_udp(v172))
                                {
                                  if (disable_multicast_loopback)
                                  {
                                    v271 = &v508;
                                  }

                                  else
                                  {
                                    v271 = &v509;
                                  }

                                  if (!setsockopt(HIDWORD(v501[4].callbacks), 0, 11, v271, 4u))
                                  {
                                    goto LABEL_758;
                                  }

                                  v272 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v273 = gconnectionLogObj;
                                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446722;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 2082;
                                    *v513 = v501 + 420;
                                    *&v513[8] = 1024;
                                    *&v513[10] = v272;
                                    _os_log_impl(&dword_181A37000, v273, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x1Cu);
                                  }

                                  v274 = __nwlog_obj();
                                  v275 = v274;
                                  if (v272 == 22)
                                  {
                                    v172 = v489;
                                    if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 136446466;
                                      v511 = "nw_socket_set_common_sockopts";
                                      v512 = 1024;
                                      *v513 = 22;
                                      v276 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d";
                                      v277 = v275;
                                      v278 = OS_LOG_TYPE_ERROR;
                                      v279 = 18;
LABEL_751:
                                      _os_log_impl(&dword_181A37000, v277, v278, v276, buf, v279);
                                      goto LABEL_758;
                                    }

                                    goto LABEL_758;
                                  }

                                  *buf = 136446466;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = v272;
                                  v286 = _os_log_send_and_compose_impl();
                                  v505[0] = OS_LOG_TYPE_ERROR;
                                  v503[0] = OS_LOG_TYPE_DEFAULT;
                                  if (__nwlog_fault(v286, v505, v503))
                                  {
                                    if (v505[0] == OS_LOG_TYPE_FAULT)
                                    {
                                      v287 = __nwlog_obj();
                                      v288 = v505[0];
                                      if (os_log_type_enabled(v287, v505[0]))
                                      {
                                        *buf = 136446466;
                                        v511 = "nw_socket_set_common_sockopts";
                                        v512 = 1024;
                                        *v513 = v272;
                                        v289 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d";
LABEL_754:
                                        _os_log_impl(&dword_181A37000, v287, v288, v289, buf, 0x12u);
                                      }
                                    }

                                    else if (v503[0] == OS_LOG_TYPE_INFO)
                                    {
                                      v294 = __nw_create_backtrace_string();
                                      v287 = __nwlog_obj();
                                      v288 = v505[0];
                                      v295 = os_log_type_enabled(v287, v505[0]);
                                      if (v294)
                                      {
                                        if (v295)
                                        {
                                          *buf = 136446722;
                                          v511 = "nw_socket_set_common_sockopts";
                                          v512 = 1024;
                                          *v513 = v272;
                                          *&v513[4] = 2082;
                                          *&v513[6] = v294;
                                          _os_log_impl(&dword_181A37000, v287, v288, "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                        }

                                        free(v294);
                                        goto LABEL_755;
                                      }

                                      if (v295)
                                      {
                                        *buf = 136446466;
                                        v511 = "nw_socket_set_common_sockopts";
                                        v512 = 1024;
                                        *v513 = v272;
                                        v289 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace";
                                        goto LABEL_754;
                                      }
                                    }

                                    else
                                    {
                                      v287 = __nwlog_obj();
                                      v288 = v505[0];
                                      if (os_log_type_enabled(v287, v505[0]))
                                      {
                                        *buf = 136446466;
                                        v511 = "nw_socket_set_common_sockopts";
                                        v512 = 1024;
                                        *v513 = v272;
                                        v289 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded";
                                        goto LABEL_754;
                                      }
                                    }
                                  }

LABEL_755:
                                  v172 = v489;
                                  if (v286)
                                  {
                                    free(v286);
                                  }

                                  v92 = v497;
                                  goto LABEL_758;
                                }

                                if (v172)
                                {
                                  v280 = v232;
                                }

                                else
                                {
                                  v280 = 0;
                                }

                                if (v280 != 1 || !_nw_protocol_options_is_udp(v172))
                                {
                                  goto LABEL_758;
                                }

                                if (disable_multicast_loopback)
                                {
                                  v281 = &v508;
                                }

                                else
                                {
                                  v281 = &v509;
                                }

                                if (!setsockopt(HIDWORD(v501[4].callbacks), 41, 11, v281, 4u))
                                {
LABEL_747:
                                  v300 = __nwlog_obj();
                                  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEBUG))
                                  {
                                    v301 = "Enabled";
                                    if (disable_multicast_loopback)
                                    {
                                      v301 = "Disabled";
                                    }

                                    *buf = 136446466;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 2080;
                                    *v513 = v301;
                                    v276 = "%{public}s %s multicast loopback";
                                    v277 = v300;
                                    v278 = OS_LOG_TYPE_DEBUG;
                                    v279 = 22;
                                    goto LABEL_751;
                                  }

LABEL_758:
                                  os_release(v171);
                                  output_handler_low = v231;
                                  goto LABEL_759;
                                }

                                v282 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v283 = gconnectionLogObj;
                                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446722;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 2082;
                                  *v513 = v501 + 420;
                                  *&v513[8] = 1024;
                                  *&v513[10] = v282;
                                  _os_log_impl(&dword_181A37000, v283, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x1Cu);
                                }

                                v284 = __nwlog_obj();
                                v285 = v284;
                                if (v282 == 22)
                                {
                                  v172 = v489;
                                  if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446466;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 1024;
                                    *v513 = 22;
                                    _os_log_impl(&dword_181A37000, v285, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x12u);
                                  }

                                  goto LABEL_747;
                                }

                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v282;
                                v290 = _os_log_send_and_compose_impl();
                                v505[0] = OS_LOG_TYPE_ERROR;
                                v503[0] = OS_LOG_TYPE_DEFAULT;
                                if (__nwlog_fault(v290, v505, v503))
                                {
                                  if (v505[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v291 = __nwlog_obj();
                                    v292 = v505[0];
                                    if (!os_log_type_enabled(v291, v505[0]))
                                    {
                                      goto LABEL_745;
                                    }

                                    *buf = 136446466;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 1024;
                                    *v513 = v282;
                                    v293 = "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d";
LABEL_743:
                                    v299 = v291;
LABEL_744:
                                    _os_log_impl(&dword_181A37000, v299, v292, v293, buf, 0x12u);
                                    goto LABEL_745;
                                  }

                                  if (v503[0] != OS_LOG_TYPE_INFO)
                                  {
                                    v291 = __nwlog_obj();
                                    v292 = v505[0];
                                    if (!os_log_type_enabled(v291, v505[0]))
                                    {
                                      goto LABEL_745;
                                    }

                                    *buf = 136446466;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 1024;
                                    *v513 = v282;
                                    v293 = "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded";
                                    goto LABEL_743;
                                  }

                                  v296 = __nw_create_backtrace_string();
                                  v297 = __nwlog_obj();
                                  v292 = v505[0];
                                  log = v297;
                                  v298 = os_log_type_enabled(v297, v505[0]);
                                  if (v296)
                                  {
                                    if (v298)
                                    {
                                      *buf = 136446722;
                                      v511 = "nw_socket_set_common_sockopts";
                                      v512 = 1024;
                                      *v513 = v282;
                                      *&v513[4] = 2082;
                                      *&v513[6] = v296;
                                      _os_log_impl(&dword_181A37000, log, v292, "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                    }

                                    free(v296);
                                    goto LABEL_745;
                                  }

                                  if (v298)
                                  {
                                    *buf = 136446466;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 1024;
                                    *v513 = v282;
                                    v293 = "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace";
                                    v299 = log;
                                    goto LABEL_744;
                                  }
                                }

LABEL_745:
                                v92 = v497;
                                v172 = v489;
                                if (v290)
                                {
                                  free(v290);
                                }

                                goto LABEL_747;
                              }

LABEL_598:
                              v231 = output_handler_low;
                              v232 = 0;
                              goto LABEL_690;
                            }

                            if (output_handler_low != 30)
                            {
                              goto LABEL_598;
                            }

                            if (setsockopt(HIDWORD(v501[4].callbacks), 41, 62, &v509, 4u))
                            {
                              v233 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v234 = gconnectionLogObj;
                              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446722;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 2082;
                                *v513 = v501 + 420;
                                *&v513[8] = 1024;
                                *&v513[10] = v233;
                                _os_log_impl(&dword_181A37000, v234, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d", buf, 0x1Cu);
                              }

                              v235 = __nwlog_obj();
                              v236 = v235;
                              if (v233 == 22)
                              {
                                v172 = v489;
                                if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446466;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = 22;
                                  _os_log_impl(&dword_181A37000, v236, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d", buf, 0x12u);
                                }

                                goto LABEL_633;
                              }

                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = v233;
                              v241 = _os_log_send_and_compose_impl();
                              v505[0] = OS_LOG_TYPE_ERROR;
                              v503[0] = OS_LOG_TYPE_DEFAULT;
                              if (!__nwlog_fault(v241, v505, v503))
                              {
                                goto LABEL_630;
                              }

                              if (v505[0] == OS_LOG_TYPE_FAULT)
                              {
                                v242 = __nwlog_obj();
                                v243 = v505[0];
                                if (os_log_type_enabled(v242, v505[0]))
                                {
                                  *buf = 136446466;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = v233;
                                  v244 = "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d";
LABEL_629:
                                  _os_log_impl(&dword_181A37000, v242, v243, v244, buf, 0x12u);
                                }
                              }

                              else if (v503[0] == OS_LOG_TYPE_INFO)
                              {
                                v247 = __nw_create_backtrace_string();
                                v242 = __nwlog_obj();
                                v243 = v505[0];
                                v248 = os_log_type_enabled(v242, v505[0]);
                                if (v247)
                                {
                                  if (v248)
                                  {
                                    *buf = 136446722;
                                    v511 = "nw_socket_set_common_sockopts";
                                    v512 = 1024;
                                    *v513 = v233;
                                    *&v513[4] = 2082;
                                    *&v513[6] = v247;
                                    _os_log_impl(&dword_181A37000, v242, v243, "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                  }

                                  free(v247);
                                  goto LABEL_630;
                                }

                                if (v248)
                                {
                                  *buf = 136446466;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = v233;
                                  v244 = "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d, no backtrace";
                                  goto LABEL_629;
                                }
                              }

                              else
                              {
                                v242 = __nwlog_obj();
                                v243 = v505[0];
                                if (os_log_type_enabled(v242, v505[0]))
                                {
                                  *buf = 136446466;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = v233;
                                  v244 = "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d, backtrace limit exceeded";
                                  goto LABEL_629;
                                }
                              }

LABEL_630:
                              v172 = v489;
                              if (v241)
                              {
                                free(v241);
                              }

                              v92 = v497;
                            }
                          }

                          else if (output_handler_low != 30)
                          {
                            goto LABEL_598;
                          }

LABEL_633:
                          if (!_nw_ip_options_get_use_minimum_mtu(v171) || !setsockopt(HIDWORD(v501[4].callbacks), 41, 42, &v509, 4u))
                          {
                            goto LABEL_659;
                          }

                          v249 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v250 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 2082;
                            *v513 = v501 + 420;
                            *&v513[8] = 1024;
                            *&v513[10] = v249;
                            _os_log_impl(&dword_181A37000, v250, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d", buf, 0x1Cu);
                          }

                          v251 = __nwlog_obj();
                          v252 = v251;
                          if (v249 == 22)
                          {
                            v172 = v489;
                            if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = 22;
                              _os_log_impl(&dword_181A37000, v252, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d", buf, 0x12u);
                            }

                            goto LABEL_659;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v249;
                          v253 = _os_log_send_and_compose_impl();
                          v505[0] = OS_LOG_TYPE_ERROR;
                          v503[0] = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v253, v505, v503))
                          {
                            if (v505[0] == OS_LOG_TYPE_FAULT)
                            {
                              v254 = __nwlog_obj();
                              v255 = v505[0];
                              if (os_log_type_enabled(v254, v505[0]))
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v249;
                                v256 = "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d";
LABEL_655:
                                _os_log_impl(&dword_181A37000, v254, v255, v256, buf, 0x12u);
                              }
                            }

                            else if (v503[0] == OS_LOG_TYPE_INFO)
                            {
                              v257 = __nw_create_backtrace_string();
                              v254 = __nwlog_obj();
                              v255 = v505[0];
                              v258 = os_log_type_enabled(v254, v505[0]);
                              if (v257)
                              {
                                if (v258)
                                {
                                  *buf = 136446722;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = v249;
                                  *&v513[4] = 2082;
                                  *&v513[6] = v257;
                                  _os_log_impl(&dword_181A37000, v254, v255, "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v257);
                                goto LABEL_656;
                              }

                              if (v258)
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v249;
                                v256 = "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d, no backtrace";
                                goto LABEL_655;
                              }
                            }

                            else
                            {
                              v254 = __nwlog_obj();
                              v255 = v505[0];
                              if (os_log_type_enabled(v254, v505[0]))
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v249;
                                v256 = "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d, backtrace limit exceeded";
                                goto LABEL_655;
                              }
                            }
                          }

LABEL_656:
                          v172 = v489;
                          if (v253)
                          {
                            free(v253);
                          }

                          v92 = v497;
LABEL_659:
                          local_address_preference = _nw_ip_options_get_local_address_preference(v171);
                          if (!local_address_preference)
                          {
                            goto LABEL_689;
                          }

                          *v505 = -1;
                          if (local_address_preference == 2)
                          {
                            *v505 = 0;
                          }

                          else if (local_address_preference == 1)
                          {
                            *v505 = 1;
                          }

                          if (!setsockopt(HIDWORD(v501[4].callbacks), 41, 63, v505, 4u))
                          {
                            goto LABEL_689;
                          }

                          v260 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v261 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 2082;
                            *v513 = v501 + 420;
                            *&v513[8] = 1024;
                            *&v513[10] = v260;
                            _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d", buf, 0x1Cu);
                          }

                          v262 = __nwlog_obj();
                          v263 = v262;
                          if (v260 == 22)
                          {
                            v172 = v489;
                            if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446466;
                              v511 = "nw_socket_set_common_sockopts";
                              v512 = 1024;
                              *v513 = 22;
                              _os_log_impl(&dword_181A37000, v263, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d", buf, 0x12u);
                            }

LABEL_689:
                            v231 = output_handler_low;
                            v232 = 1;
                            goto LABEL_690;
                          }

                          *buf = 136446466;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v260;
                          v264 = _os_log_send_and_compose_impl();
                          v503[0] = OS_LOG_TYPE_ERROR;
                          v504 = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v264, v503, &v504))
                          {
                            if (v503[0] == OS_LOG_TYPE_FAULT)
                            {
                              v265 = __nwlog_obj();
                              v266 = v503[0];
                              if (os_log_type_enabled(v265, v503[0]))
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v260;
                                v267 = "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d";
LABEL_685:
                                _os_log_impl(&dword_181A37000, v265, v266, v267, buf, 0x12u);
                              }
                            }

                            else if (v504 == OS_LOG_TYPE_INFO)
                            {
                              v268 = __nw_create_backtrace_string();
                              v265 = __nwlog_obj();
                              v266 = v503[0];
                              v269 = os_log_type_enabled(v265, v503[0]);
                              if (v268)
                              {
                                if (v269)
                                {
                                  *buf = 136446722;
                                  v511 = "nw_socket_set_common_sockopts";
                                  v512 = 1024;
                                  *v513 = v260;
                                  *&v513[4] = 2082;
                                  *&v513[6] = v268;
                                  _os_log_impl(&dword_181A37000, v265, v266, "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v268);
                                goto LABEL_686;
                              }

                              if (v269)
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v260;
                                v267 = "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d, no backtrace";
                                goto LABEL_685;
                              }
                            }

                            else
                            {
                              v265 = __nwlog_obj();
                              v266 = v503[0];
                              if (os_log_type_enabled(v265, v503[0]))
                              {
                                *buf = 136446466;
                                v511 = "nw_socket_set_common_sockopts";
                                v512 = 1024;
                                *v513 = v260;
                                v267 = "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d, backtrace limit exceeded";
                                goto LABEL_685;
                              }
                            }
                          }

LABEL_686:
                          v172 = v489;
                          if (v264)
                          {
                            free(v264);
                          }

                          v92 = v497;
                          goto LABEL_689;
                        }

                        v218 = output_handler_low;
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v215;
                        v219 = _os_log_send_and_compose_impl();
                        v505[0] = OS_LOG_TYPE_ERROR;
                        v503[0] = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v219, v505, v503))
                        {
                          goto LABEL_573;
                        }

                        if (v505[0] == OS_LOG_TYPE_FAULT)
                        {
                          v220 = __nwlog_obj();
                          v221 = v505[0];
                          if (os_log_type_enabled(v220, v505[0]))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v215;
                            v222 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d";
                            goto LABEL_572;
                          }

LABEL_573:
                          v172 = v489;
                          output_handler_low = v218;
                          if (v219)
                          {
                            free(v219);
                          }

                          v92 = v497;
                          goto LABEL_576;
                        }

                        if (v503[0] != OS_LOG_TYPE_INFO)
                        {
                          v220 = __nwlog_obj();
                          v221 = v505[0];
                          if (os_log_type_enabled(v220, v505[0]))
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v215;
                            v222 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        v223 = __nw_create_backtrace_string();
                        v220 = __nwlog_obj();
                        v221 = v505[0];
                        v226 = os_log_type_enabled(v220, v505[0]);
                        if (!v223)
                        {
                          if (v226)
                          {
                            *buf = 136446466;
                            v511 = "nw_socket_set_common_sockopts";
                            v512 = 1024;
                            *v513 = v215;
                            v222 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d, no backtrace";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        if (v226)
                        {
                          *buf = 136446722;
                          v511 = "nw_socket_set_common_sockopts";
                          v512 = 1024;
                          *v513 = v215;
                          *&v513[4] = 2082;
                          *&v513[6] = v223;
                          v225 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                          goto LABEL_562;
                        }
                      }

                      free(v223);
                      goto LABEL_573;
                    }

                    if (v503[0] != OS_LOG_TYPE_INFO)
                    {
                      v203 = __nwlog_obj();
                      v204 = v505[0];
                      if (os_log_type_enabled(v203, v505[0]))
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v198;
                        v205 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    v206 = __nw_create_backtrace_string();
                    v203 = __nwlog_obj();
                    v204 = v505[0];
                    v209 = os_log_type_enabled(v203, v505[0]);
                    if (!v206)
                    {
                      if (v209)
                      {
                        *buf = 136446466;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v198;
                        v205 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d, no backtrace";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    if (v209)
                    {
                      *buf = 136446722;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v198;
                      *&v513[4] = 2082;
                      *&v513[6] = v206;
                      v208 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                      goto LABEL_505;
                    }
                  }

                  free(v206);
                  goto LABEL_523;
                }

                v173 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v174 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 2082;
                  *v513 = v501 + 420;
                  *&v513[8] = 1024;
                  *&v513[10] = v173;
                  _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v175 = __nwlog_obj();
                v176 = v175;
                if (v173 == 22)
                {
                  v172 = v489;
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = 22;
                    _os_log_impl(&dword_181A37000, v176, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_469;
                }

                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v173;
                v181 = _os_log_send_and_compose_impl();
                v506[0] = OS_LOG_TYPE_ERROR;
                v505[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v181, v506, v505))
                {
                  if (v506[0] == OS_LOG_TYPE_FAULT)
                  {
                    v182 = __nwlog_obj();
                    v183 = v506[0];
                    if (os_log_type_enabled(v182, v506[0]))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v173;
                      v184 = "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d";
LABEL_465:
                      _os_log_impl(&dword_181A37000, v182, v183, v184, buf, 0x12u);
                    }
                  }

                  else if (v505[0] == OS_LOG_TYPE_INFO)
                  {
                    v189 = __nw_create_backtrace_string();
                    v182 = __nwlog_obj();
                    v183 = v506[0];
                    v190 = os_log_type_enabled(v182, v506[0]);
                    if (v189)
                    {
                      if (v190)
                      {
                        *buf = 136446722;
                        v511 = "nw_socket_set_common_sockopts";
                        v512 = 1024;
                        *v513 = v173;
                        *&v513[4] = 2082;
                        *&v513[6] = v189;
                        _os_log_impl(&dword_181A37000, v182, v183, "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v189);
                      goto LABEL_466;
                    }

                    if (v190)
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v173;
                      v184 = "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d, no backtrace";
                      goto LABEL_465;
                    }
                  }

                  else
                  {
                    v182 = __nwlog_obj();
                    v183 = v506[0];
                    if (os_log_type_enabled(v182, v506[0]))
                    {
                      *buf = 136446466;
                      v511 = "nw_socket_set_common_sockopts";
                      v512 = 1024;
                      *v513 = v173;
                      v184 = "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_465;
                    }
                  }
                }

LABEL_466:
                v172 = v489;
                if (v181)
                {
                  free(v181);
                }

                v92 = v497;
                goto LABEL_469;
              }

              v106 = output_handler_low;
              v107 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v108 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 2082;
                *v513 = v6 + 420;
                *&v513[8] = 1024;
                *&v513[10] = v514[0];
                *&v513[14] = 1024;
                *&v513[16] = v107;
                _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_ERROR, "%{public}s %{public}s set source pid to %d failed %{darwin.errno}d", buf, 0x22u);
              }

              output_handler_low = v106;
            }

            if (!_nw_parameters_has_delegated_proc_uuid(v56))
            {
              goto LABEL_294;
            }

            v514[0] = 0;
            v514[1] = 0;
            _nw_parameters_get_e_proc_uuid(v56, v514);
            if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4360, v514, 0x10u))
            {
              if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v118 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 2082;
                  *v513 = v6 + 420;
                  *&v513[8] = 1042;
                  *&v513[10] = 16;
                  *&v513[14] = 2098;
                  *&v513[16] = v514;
                  v113 = "%{public}s %{public}s successfully set source application uuid to %{public,uuid_t}.16P";
                  v114 = v118;
                  v115 = OS_LOG_TYPE_DEBUG;
                  v116 = 38;
                  goto LABEL_276;
                }
              }

              goto LABEL_294;
            }

            v109 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v110 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v511 = "nw_socket_set_common_sockopts";
              v512 = 2082;
              *v513 = v6 + 420;
              *&v513[8] = 1024;
              *&v513[10] = v109;
              _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_ERROR, "%{public}s %{public}s set source app uuid failed %{darwin.errno}d", buf, 0x1Cu);
            }

            v111 = __nwlog_obj();
            v112 = v111;
            if (v109 == 22)
            {
              v92 = v497;
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = 22;
                v113 = "%{public}s set source app uuid failed %{darwin.errno}d";
                v114 = v112;
                v115 = OS_LOG_TYPE_ERROR;
                v116 = 18;
LABEL_276:
                _os_log_impl(&dword_181A37000, v114, v115, v113, buf, v116);
                goto LABEL_294;
              }

              goto LABEL_294;
            }

            v492 = v56;
            v119 = v4;
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v109;
            v120 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v506[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v120, type, v506))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v121 = __nwlog_obj();
                v122 = type[0];
                if (os_log_type_enabled(v121, type[0]))
                {
                  *buf = 136446466;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v109;
                  v123 = "%{public}s set source app uuid failed %{darwin.errno}d";
LABEL_290:
                  _os_log_impl(&dword_181A37000, v121, v122, v123, buf, 0x12u);
                }
              }

              else if (v506[0] == OS_LOG_TYPE_INFO)
              {
                v124 = __nw_create_backtrace_string();
                v121 = __nwlog_obj();
                v122 = type[0];
                v125 = os_log_type_enabled(v121, type[0]);
                if (v124)
                {
                  if (v125)
                  {
                    *buf = 136446722;
                    v511 = "nw_socket_set_common_sockopts";
                    v512 = 1024;
                    *v513 = v109;
                    *&v513[4] = 2082;
                    *&v513[6] = v124;
                    _os_log_impl(&dword_181A37000, v121, v122, "%{public}s set source app uuid failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v124);
                  goto LABEL_291;
                }

                if (v125)
                {
                  *buf = 136446466;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v109;
                  v123 = "%{public}s set source app uuid failed %{darwin.errno}d, no backtrace";
                  goto LABEL_290;
                }
              }

              else
              {
                v121 = __nwlog_obj();
                v122 = type[0];
                if (os_log_type_enabled(v121, type[0]))
                {
                  *buf = 136446466;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v109;
                  v123 = "%{public}s set source app uuid failed %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_290;
                }
              }
            }

LABEL_291:
            v6 = v501;
            v92 = v497;
            if (v120)
            {
              free(v120);
            }

            v4 = v119;
            v56 = v492;
            goto LABEL_294;
          }

          v94 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v95 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 2082;
            *v513 = v6 + 420;
            *&v513[8] = 1024;
            *&v513[10] = v94;
            _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d", buf, 0x1Cu);
          }

          v96 = __nwlog_obj();
          v97 = v96;
          if (v94 == 22)
          {
            v92 = v497;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v511 = "nw_socket_set_common_sockopts";
              v512 = 1024;
              *v513 = 22;
              _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_250;
          }

          v491 = v56;
          v98 = v4;
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v94;
          v99 = _os_log_send_and_compose_impl();
          LOBYTE(v514[0]) = 16;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v99, v514, type))
          {
            if (LOBYTE(v514[0]) == 17)
            {
              v100 = __nwlog_obj();
              v101 = v514[0];
              if (os_log_type_enabled(v100, v514[0]))
              {
                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v94;
                v102 = "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d";
LABEL_246:
                _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0x12u);
              }
            }

            else if (type[0] == OS_LOG_TYPE_INFO)
            {
              v103 = __nw_create_backtrace_string();
              v100 = __nwlog_obj();
              v101 = v514[0];
              v104 = os_log_type_enabled(v100, v514[0]);
              if (v103)
              {
                if (v104)
                {
                  *buf = 136446722;
                  v511 = "nw_socket_set_common_sockopts";
                  v512 = 1024;
                  *v513 = v94;
                  *&v513[4] = 2082;
                  *&v513[6] = v103;
                  _os_log_impl(&dword_181A37000, v100, v101, "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v103);
                goto LABEL_247;
              }

              if (v104)
              {
                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v94;
                v102 = "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d, no backtrace";
                goto LABEL_246;
              }
            }

            else
            {
              v100 = __nwlog_obj();
              v101 = v514[0];
              if (os_log_type_enabled(v100, v514[0]))
              {
                *buf = 136446466;
                v511 = "nw_socket_set_common_sockopts";
                v512 = 1024;
                *v513 = v94;
                v102 = "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_246;
              }
            }
          }

LABEL_247:
          v6 = v501;
          v92 = v497;
          if (v99)
          {
            free(v99);
          }

          v4 = v98;
          v56 = v491;
          goto LABEL_250;
        }

        v488 = output_handler_low;
        v490 = v56;
        v75 = v4;
        __nwlog_obj();
        *buf = 136446466;
        v511 = "nw_socket_set_common_sockopts";
        v512 = 1024;
        *v513 = v65;
        v76 = _os_log_send_and_compose_impl();
        LOBYTE(v514[0]) = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if ((__nwlog_fault(v76, v514, type) & 1) == 0)
        {
          goto LABEL_217;
        }

        if (LOBYTE(v514[0]) == 17)
        {
          v77 = __nwlog_obj();
          v78 = v514[0];
          if (os_log_type_enabled(v77, v514[0]))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v65;
            v79 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d";
LABEL_216:
            _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0x12u);
          }

LABEL_217:
          v6 = v501;
          output_handler_low = v488;
          if (v76)
          {
            free(v76);
          }

          v4 = v75;
          v56 = v490;
          goto LABEL_220;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v77 = __nwlog_obj();
          v78 = v514[0];
          if (os_log_type_enabled(v77, v514[0]))
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v65;
            v79 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        v80 = __nw_create_backtrace_string();
        v77 = __nwlog_obj();
        v78 = v514[0];
        v81 = os_log_type_enabled(v77, v514[0]);
        if (!v80)
        {
          if (v81)
          {
            *buf = 136446466;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v65;
            v79 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, no backtrace";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        if (v81)
        {
          *buf = 136446722;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v65;
          *&v513[4] = 2082;
          *&v513[6] = v80;
          v82 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_199:
          _os_log_impl(&dword_181A37000, v77, v78, v82, buf, 0x1Cu);
        }
      }

      free(v80);
      goto LABEL_217;
    }

    v43 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v44 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v511 = "nw_socket_set_common_sockopts";
      v512 = 2082;
      *v513 = v6 + 420;
      *&v513[8] = 1024;
      *&v513[10] = v43;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (v43 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v511 = "nw_socket_set_common_sockopts";
        v512 = 1024;
        *v513 = 22;
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_138;
    }

    v499 = v4;
    *buf = 136446466;
    v511 = "nw_socket_set_common_sockopts";
    v512 = 1024;
    *v513 = v43;
    v486 = 18;
    v46 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v514[0]) = 0;
    if (__nwlog_fault(v46, uu, v514))
    {
      if (uu[0] == 17)
      {
        v47 = __nwlog_obj();
        v48 = uu[0];
        if (os_log_type_enabled(v47, uu[0]))
        {
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v43;
          v49 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d";
LABEL_134:
          _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x12u);
        }
      }

      else if (LOBYTE(v514[0]) == 1)
      {
        v52 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = uu[0];
        v53 = os_log_type_enabled(v47, uu[0]);
        if (v52)
        {
          if (v53)
          {
            *buf = 136446722;
            v511 = "nw_socket_set_common_sockopts";
            v512 = 1024;
            *v513 = v43;
            *&v513[4] = 2082;
            *&v513[6] = v52;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v52);
          goto LABEL_135;
        }

        if (v53)
        {
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v43;
          v49 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, no backtrace";
          goto LABEL_134;
        }
      }

      else
      {
        v47 = __nwlog_obj();
        v48 = uu[0];
        if (os_log_type_enabled(v47, uu[0]))
        {
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 1024;
          *v513 = v43;
          v49 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_134;
        }
      }
    }

LABEL_135:
    v6 = v501;
    if (v46)
    {
      free(v46);
    }

    v4 = v499;
    goto LABEL_138;
  }

  __nwlog_obj();
  *buf = 136446210;
  v511 = "nw_socket_set_common_sockopts";
  v84 = _os_log_send_and_compose_impl();
  uu[0] = 16;
  LOBYTE(v514[0]) = 0;
  if (__nwlog_fault(v84, uu, v514))
  {
    if (uu[0] == 17)
    {
      v85 = __nwlog_obj();
      v86 = uu[0];
      if (os_log_type_enabled(v85, uu[0]))
      {
        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v87 = "%{public}s called with null protocol";
LABEL_989:
        _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0xCu);
      }
    }

    else if (LOBYTE(v514[0]) == 1)
    {
      v88 = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v86 = uu[0];
      v89 = os_log_type_enabled(v85, uu[0]);
      if (v88)
      {
        if (v89)
        {
          *buf = 136446466;
          v511 = "nw_socket_set_common_sockopts";
          v512 = 2082;
          *v513 = v88;
          _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v88);
        goto LABEL_990;
      }

      if (v89)
      {
        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v87 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_989;
      }
    }

    else
    {
      v85 = __nwlog_obj();
      v86 = uu[0];
      if (os_log_type_enabled(v85, uu[0]))
      {
        *buf = 136446210;
        v511 = "nw_socket_set_common_sockopts";
        v87 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_989;
      }
    }
  }

LABEL_990:
  if (v84)
  {
    free(v84);
  }

  return 0;
}

uint64_t nw_socket_get_path(nw_protocol *a1)
{
  v49 = *MEMORY[0x1E69E9840];
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
        v46 = "nw_socket_get_path";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (!__nwlog_fault(v7, &type, &v43))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_path";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v43 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v46 = "nw_socket_get_path";
                v47 = 2082;
                v48 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v46 = "nw_socket_get_path";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_path";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[15];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v46 = "nw_socket_get_path";
        v47 = 2082;
        v48 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_socket_get_path";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v37, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_path";
        v40 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v42 = os_log_type_enabled(v38, type);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446466;
          v46 = "nw_socket_get_path";
          v47 = 2082;
          v48 = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        goto LABEL_84;
      }

      if (v42)
      {
        *buf = 136446210;
        v46 = "nw_socket_get_path";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_path";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v37)
  {
    free(v37);
  }

  return 0;
}
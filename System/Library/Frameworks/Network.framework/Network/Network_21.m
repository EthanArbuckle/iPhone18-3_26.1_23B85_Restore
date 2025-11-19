uint64_t ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_224(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v125 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  identifier = nw_protocol_definition_get_identifier(v6);
  registered_endpoint = *(a1 + 96);
  if (registered_endpoint)
  {
    goto LABEL_75;
  }

  v103 = v7;
  v10 = *(*(*(a1 + 64) + 8) + 24);
  v11 = *(a1 + 40);
  v12 = *(*(*(a1 + 72) + 8) + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v11;
  v16 = v14;
  v101 = v15;
  v102 = v12;
  v17 = v13;
  v100 = v16;
  if (!v16)
  {
    v61 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_142;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v75 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v75, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v69 = type;
    v70 = os_log_type_enabled(v68, type);
    if (backtrace_string)
    {
      if (v70)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = backtrace_string;
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_163:
      if (!v62)
      {
        goto LABEL_73;
      }

      goto LABEL_164;
    }

    if (v70)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_162;
  }

  v18 = v16;
  v19 = v18[29];

  if (v19 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (v19 > 5)
    {
      v29 = "unknown-mode";
    }

    else
    {
      v29 = off_1E6A31018[v19];
    }

    *buf = 136446722;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v109 = 2082;
    v110 = v29;
    v111 = 2082;
    v112 = "flow";
    v35 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (__nwlog_fault(v35, &type, &v105))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          if (v19 > 5)
          {
            v38 = "unknown-mode";
          }

          else
          {
            v38 = off_1E6A31018[v19];
          }

          *buf = 136446722;
          v108 = "nw_endpoint_flow_find_protocol_to_join";
          v109 = 2082;
          v110 = v38;
          v111 = 2082;
          v112 = "flow";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v105 == 1)
      {
        v39 = __nw_create_backtrace_string();
        if (v39)
        {
          v40 = v39;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          v42 = type;
          if (os_log_type_enabled(v41, type))
          {
            if (v19 > 5)
            {
              v43 = "unknown-mode";
            }

            else
            {
              v43 = off_1E6A31018[v19];
            }

            *buf = 136446978;
            v108 = "nw_endpoint_flow_find_protocol_to_join";
            v109 = 2082;
            v110 = v43;
            v111 = 2082;
            v112 = "flow";
            v113 = 2082;
            v114 = v40;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v40);
          if (!v35)
          {
            goto LABEL_73;
          }

LABEL_71:
          v48 = v35;
LABEL_72:
          free(v48);
          goto LABEL_73;
        }

        v36 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v36, type))
        {
          if (v19 > 5)
          {
            v47 = "unknown-mode";
          }

          else
          {
            v47 = off_1E6A31018[v19];
          }

          *buf = 136446722;
          v108 = "nw_endpoint_flow_find_protocol_to_join";
          v109 = 2082;
          v110 = v47;
          v111 = 2082;
          v112 = "flow";
          _os_log_impl(&dword_181A37000, v36, v46, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v44 = type;
        if (os_log_type_enabled(v36, type))
        {
          if (v19 > 5)
          {
            v45 = "unknown-mode";
          }

          else
          {
            v45 = off_1E6A31018[v19];
          }

          *buf = 136446722;
          v108 = "nw_endpoint_flow_find_protocol_to_join";
          v109 = 2082;
          v110 = v45;
          v111 = 2082;
          v112 = "flow";
          _os_log_impl(&dword_181A37000, v36, v44, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v35)
    {
LABEL_73:
      registered_endpoint = 0;
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  if (!identifier)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v66 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v66, "%{public}s called with null identifier", buf, 0xCu);
      }

      goto LABEL_142;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v83 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v83, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    v76 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v77 = type;
    v78 = os_log_type_enabled(v68, type);
    if (v76)
    {
      if (v78)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = v76;
        _os_log_impl(&dword_181A37000, v68, v77, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_132:

      free(v76);
      if (!v62)
      {
        goto LABEL_73;
      }

LABEL_164:
      v48 = v62;
      goto LABEL_72;
    }

    if (v78)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v77, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
    }

LABEL_162:

    goto LABEL_163;
  }

  if (!v102)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v72, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_142;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v84 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v84, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    v76 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v79 = type;
    v80 = os_log_type_enabled(v68, type);
    if (v76)
    {
      if (v80)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = v76;
        _os_log_impl(&dword_181A37000, v68, v79, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_132;
    }

    if (v80)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v79, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_162;
  }

  if (!v17)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v74, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_142:

      goto LABEL_163;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v85, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    v76 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v81 = type;
    v82 = os_log_type_enabled(v68, type);
    if (v76)
    {
      if (v82)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = v76;
        _os_log_impl(&dword_181A37000, v68, v81, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_132;
    }

    if (v82)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v81, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_162;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v20 = &g_registration_list;
  do
  {
    v20 = *v20;
    if (!v20)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_31;
    }
  }

  while (*identifier != v20[4] || *(identifier + 1) != v20[5] || *(identifier + 2) != v20[6] || *(identifier + 3) != v20[7] || *(identifier + 4) != v20[8]);
  v25 = v20[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v25)
  {
LABEL_31:
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v18) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v18);
        v96 = nw_endpoint_handler_dry_run_string(v18);
        v31 = nw_endpoint_handler_copy_endpoint(v18);
        logging_description = nw_endpoint_get_logging_description(v31);
        v32 = nw_endpoint_handler_state_string(v18);
        v33 = nw_endpoint_handler_mode_string(v18);
        v34 = nw_endpoint_handler_copy_current_path(v18);
        *buf = 136448258;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = id_string;
        v111 = 2082;
        v112 = v96;
        v113 = 2082;
        v114 = logging_description;
        v115 = 2082;
        v116 = v32;
        v117 = 2082;
        v118 = v33;
        v119 = 2114;
        v120 = v34;
        v121 = 2080;
        v122 = identifier;
        v123 = 2048;
        v124 = identifier;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x5Cu);
      }
    }

    goto LABEL_73;
  }

  v26 = v102;
  v27 = v26;
  while (1)
  {
    registered_endpoint = nw_protocol_instance_registrar_search_for_instance_to_join(identifier, -1, v101, v27, v26, v17, v10);
    if (registered_endpoint)
    {
      break;
    }

    registered_endpoint = nw_protocol_instance_registrar_copy_next_registered_endpoint(v27, v10);

    v27 = registered_endpoint;
    if (!registered_endpoint)
    {
      goto LABEL_53;
    }
  }

  if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v18) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v86 = gconnectionLogObj;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      v99 = nw_endpoint_handler_get_id_string(v18);
      v97 = nw_endpoint_handler_dry_run_string(v18);
      v87 = nw_endpoint_handler_copy_endpoint(v18);
      v95 = nw_endpoint_get_logging_description(v87);
      v93 = nw_endpoint_handler_state_string(v18);
      v88 = nw_endpoint_handler_mode_string(v18);
      v89 = nw_endpoint_handler_copy_current_path(v18);
      v90 = v89;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      v91 = "invalid";
      v92 = *(registered_endpoint + 16);
      *buf = 136448258;
      if (v92)
      {
        v91 = v92;
      }

      v109 = 2082;
      v110 = v99;
      v111 = 2082;
      v112 = v97;
      v113 = 2082;
      v114 = v95;
      v115 = 2082;
      v116 = v93;
      v117 = 2082;
      v118 = v88;
      v119 = 2114;
      v120 = v89;
      v121 = 2080;
      v122 = v91;
      v123 = 2048;
      v124 = registered_endpoint;
      _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] returning protocol to join %s (%p)", buf, 0x5Cu);
    }
  }

LABEL_53:

LABEL_74:
  v7 = v103;
  if (registered_endpoint)
  {
LABEL_75:
    if (nw_endpoint_flow_join_protocol(*(a1 + 32), *(a1 + 48), v7, v6, identifier, 0xFFFFFFFFFFFFFFFFLL, registered_endpoint, *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), (*(*(a1 + 88) + 8) + 24)))
    {
      v49 = 0;
      *(*(a1 + 56) + 33) |= 1u;
      goto LABEL_88;
    }
  }

  v50 = nw_endpoint_flow_add_one_protocol(*(a1 + 32), identifier, v7, v6, *(*(*(a1 + 72) + 8) + 40), *(a1 + 48), *(*(*(a1 + 80) + 8) + 24));
  if (v50)
  {
    *(*(*(a1 + 80) + 8) + 24) = v50;
    if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
    {
      v49 = 1;
    }

    else
    {
      v104 = v7;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v51 = gconnectionLogObj;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v52 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v53 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v54 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v55 = v54;
        if (v54)
        {
          v56 = _nw_endpoint_get_logging_description(v54);
        }

        else
        {
          v56 = "<NULL>";
        }

        v57 = nw_endpoint_handler_state_string(*(a1 + 32));
        v58 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v59 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v108 = "nw_endpoint_flow_attach_protocols_block_invoke";
        v109 = 2082;
        v110 = v52;
        v111 = 2082;
        v112 = v53;
        v113 = 2082;
        v114 = v56;
        v115 = 2082;
        v116 = v57;
        v117 = 2082;
        v118 = v58;
        v119 = 2114;
        v120 = v59;
        v121 = 2082;
        v122 = identifier;
        _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached internet protocol: %{public}s", buf, 0x52u);
      }

      v49 = 1;
      v7 = v104;
    }
  }

  else
  {
    v49 = 0;
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

LABEL_88:

  return v49;
}

uint64_t nw_context_get_globals_for_protocol(void *a1, void *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_context_get_globals_for_protocol";
    v38 = _os_log_send_and_compose_impl();

    v86 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v38, &v86, &type))
    {
      if (v86 == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = v86;
        if (os_log_type_enabled(v39, v86))
        {
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v50 = v86;
        v51 = os_log_type_enabled(v39, v86);
        if (backtrace_string)
        {
          if (v51)
          {
            *buf = 136446466;
            v88 = "nw_context_get_globals_for_protocol";
            v89 = 2082;
            v90 = backtrace_string;
            _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_106;
        }

        if (v51)
        {
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v58 = v86;
        if (os_log_type_enabled(v39, v86))
        {
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          _os_log_impl(&dword_181A37000, v39, v58, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_106:
    if (v38)
    {
      free(v38);
    }

    goto LABEL_120;
  }

  if (!v4)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_context_get_globals_for_protocol";
    v42 = _os_log_send_and_compose_impl();

    v86 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v42, &v86, &type))
    {
      if (v86 == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = v86;
        if (os_log_type_enabled(v43, v86))
        {
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v52 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v53 = v86;
        v54 = os_log_type_enabled(v43, v86);
        if (v52)
        {
          if (v54)
          {
            *buf = 136446466;
            v88 = "nw_context_get_globals_for_protocol";
            v89 = 2082;
            v90 = v52;
            _os_log_impl(&dword_181A37000, v43, v53, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          goto LABEL_111;
        }

        if (v54)
        {
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          _os_log_impl(&dword_181A37000, v43, v53, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v59 = v86;
        if (os_log_type_enabled(v43, v86))
        {
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          _os_log_impl(&dword_181A37000, v43, v59, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_111:
    if (v42)
    {
      free(v42);
    }

    goto LABEL_119;
  }

  v6 = v3;
  v7 = v6;
  if ((*(v6 + 152) & 8) == 0)
  {
    dispatch_assert_queue_V2(*(v6 + 1));
  }

  v3 = nw_context_copy_globals_context(v7);
  v8 = *(v3 + 4);
  if (v8)
  {
    os_unfair_lock_lock(v8 + 12);
    v9 = *(v3 + 4);
    if (!v9)
    {
      goto LABEL_166;
    }

    node = nw_hash_table_get_node(*(v9 + 52), v5, 0);
    if (node)
    {
      v11 = *(node + 32);
LABEL_167:
      os_unfair_lock_unlock((*(v3 + 4) + 48));

      goto LABEL_168;
    }

    v12 = v5;
    v13 = v3;
    v14 = v12[9];
    if (v14)
    {
      v16 = *v14;
      v15 = *(v14 + 8);
      if (v16)
      {
        if (!v15)
        {
          v17 = v16(v12);
          goto LABEL_15;
        }

LABEL_14:
        v17 = v15(v12, v13);
LABEL_15:
        v11 = v17;

        if (v11)
        {
          v86 = OS_LOG_TYPE_DEFAULT;
          v18 = *(*(v3 + 4) + 52);
          v19 = v12;
          v20 = nw_hash_table_add_object(v18, v19, &v86);
          if (v20)
          {
            if (v86)
            {
LABEL_53:
              *(v20 + 32) = v11;
              goto LABEL_167;
            }

            v83 = v20;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v21 = gLogObj;
            *buf = 136446722;
            v88 = "nw_context_get_globals_for_protocol";
            v89 = 2114;
            v90 = v13;
            v91 = 2048;
            v92 = v19;
            v22 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v84 = 0;
            if (__nwlog_fault(v22, &type, &v84))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v23 = gLogObj;
                v24 = type;
                if (os_log_type_enabled(v23, type))
                {
                  *buf = 136446722;
                  v88 = "nw_context_get_globals_for_protocol";
                  v89 = 2114;
                  v90 = v13;
                  v91 = 2048;
                  v92 = v19;
                  _os_log_impl(&dword_181A37000, v23, v24, "%{public}s %{public}@ failed to add globals for protocol %p", buf, 0x20u);
                }
              }

              else if (v84 == 1)
              {
                v32 = __nw_create_backtrace_string();
                v23 = __nwlog_obj();
                v33 = type;
                v34 = os_log_type_enabled(v23, type);
                if (v32)
                {
                  if (v34)
                  {
                    *buf = 136446978;
                    v88 = "nw_context_get_globals_for_protocol";
                    v89 = 2114;
                    v90 = v13;
                    v91 = 2048;
                    v92 = v19;
                    v93 = 2082;
                    v94 = v32;
                    _os_log_impl(&dword_181A37000, v23, v33, "%{public}s %{public}@ failed to add globals for protocol %p, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v32);
                  goto LABEL_50;
                }

                if (v34)
                {
                  *buf = 136446722;
                  v88 = "nw_context_get_globals_for_protocol";
                  v89 = 2114;
                  v90 = v13;
                  v91 = 2048;
                  v92 = v19;
                  _os_log_impl(&dword_181A37000, v23, v33, "%{public}s %{public}@ failed to add globals for protocol %p, no backtrace", buf, 0x20u);
                }
              }

              else
              {
                v23 = __nwlog_obj();
                v36 = type;
                if (os_log_type_enabled(v23, type))
                {
                  *buf = 136446722;
                  v88 = "nw_context_get_globals_for_protocol";
                  v89 = 2114;
                  v90 = v13;
                  v91 = 2048;
                  v92 = v19;
                  _os_log_impl(&dword_181A37000, v23, v36, "%{public}s %{public}@ failed to add globals for protocol %p, backtrace limit exceeded", buf, 0x20u);
                }
              }
            }

LABEL_50:
            if (v22)
            {
              free(v22);
            }

            v20 = v83;
            goto LABEL_53;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          *buf = 136446210;
          v88 = "nw_context_get_globals_for_protocol";
          v26 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v84 = 0;
          if (__nwlog_fault(v26, &type, &v84))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v27 = gLogObj;
              v28 = type;
              if (os_log_type_enabled(v27, type))
              {
                *buf = 136446210;
                v88 = "nw_context_get_globals_for_protocol";
                _os_log_impl(&dword_181A37000, v27, v28, "%{public}s nw_hash_table_add_object failed", buf, 0xCu);
              }

LABEL_46:

              goto LABEL_164;
            }

            if (v84 != 1)
            {
              v27 = __nwlog_obj();
              v35 = type;
              if (os_log_type_enabled(v27, type))
              {
                *buf = 136446210;
                v88 = "nw_context_get_globals_for_protocol";
                _os_log_impl(&dword_181A37000, v27, v35, "%{public}s nw_hash_table_add_object failed, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_46;
            }

            v29 = __nw_create_backtrace_string();
            v27 = __nwlog_obj();
            v30 = type;
            v31 = os_log_type_enabled(v27, type);
            if (!v29)
            {
              if (v31)
              {
                *buf = 136446210;
                v88 = "nw_context_get_globals_for_protocol";
                _os_log_impl(&dword_181A37000, v27, v30, "%{public}s nw_hash_table_add_object failed, no backtrace", buf, 0xCu);
              }

              goto LABEL_46;
            }

            if (v31)
            {
              *buf = 136446466;
              v88 = "nw_context_get_globals_for_protocol";
              v89 = 2082;
              v90 = v29;
              _os_log_impl(&dword_181A37000, v27, v30, "%{public}s nw_hash_table_add_object failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v29);
          }

LABEL_164:
          if (v26)
          {
LABEL_165:
            free(v26);
          }

LABEL_166:
          v11 = 0;
          goto LABEL_167;
        }

LABEL_147:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v75 = gLogObj;
        *buf = 136446210;
        v88 = "nw_context_get_globals_for_protocol";
        v26 = _os_log_send_and_compose_impl();

        v86 = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v26, &v86, &type))
        {
          if (v86 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v76 = gLogObj;
            v77 = v86;
            if (os_log_type_enabled(v76, v86))
            {
              *buf = 136446210;
              v88 = "nw_context_get_globals_for_protocol";
              _os_log_impl(&dword_181A37000, v76, v77, "%{public}s nw_protocol_definition_allocate_globals failed", buf, 0xCu);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            v78 = __nw_create_backtrace_string();
            v76 = __nwlog_obj();
            v79 = v86;
            v80 = os_log_type_enabled(v76, v86);
            if (v78)
            {
              if (v80)
              {
                *buf = 136446466;
                v88 = "nw_context_get_globals_for_protocol";
                v89 = 2082;
                v90 = v78;
                _os_log_impl(&dword_181A37000, v76, v79, "%{public}s nw_protocol_definition_allocate_globals failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v78);
              if (!v26)
              {
                goto LABEL_166;
              }

              goto LABEL_165;
            }

            if (v80)
            {
              *buf = 136446210;
              v88 = "nw_context_get_globals_for_protocol";
              _os_log_impl(&dword_181A37000, v76, v79, "%{public}s nw_protocol_definition_allocate_globals failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v76 = gLogObj;
            v81 = v86;
            if (os_log_type_enabled(v76, v86))
            {
              *buf = 136446210;
              v88 = "nw_context_get_globals_for_protocol";
              _os_log_impl(&dword_181A37000, v76, v81, "%{public}s nw_protocol_definition_allocate_globals failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        goto LABEL_164;
      }

      if (v15)
      {
        goto LABEL_14;
      }

      v68 = __nwlog_obj();
      *buf = 136446210;
      v88 = "nw_protocol_definition_allocate_globals";
      v62 = _os_log_send_and_compose_impl();

      v86 = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v62, &v86, &type))
      {
        if (v86 == OS_LOG_TYPE_FAULT)
        {
          v63 = __nwlog_obj();
          v69 = v86;
          if (os_log_type_enabled(v63, v86))
          {
            *buf = 136446210;
            v88 = "nw_protocol_definition_allocate_globals";
            _os_log_impl(&dword_181A37000, v63, v69, "%{public}s called with null (definition->common_state->allocate_globals != __null || definition->common_state->allocate_context_globals != __null)", buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v71 = __nw_create_backtrace_string();
          v63 = __nwlog_obj();
          v72 = v86;
          v73 = os_log_type_enabled(v63, v86);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446466;
              v88 = "nw_protocol_definition_allocate_globals";
              v89 = 2082;
              v90 = v71;
              _os_log_impl(&dword_181A37000, v63, v72, "%{public}s called with null (definition->common_state->allocate_globals != __null || definition->common_state->allocate_context_globals != __null), dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v71);
            if (!v62)
            {
              goto LABEL_146;
            }

            goto LABEL_145;
          }

          if (v73)
          {
            *buf = 136446210;
            v88 = "nw_protocol_definition_allocate_globals";
            _os_log_impl(&dword_181A37000, v63, v72, "%{public}s called with null (definition->common_state->allocate_globals != __null || definition->common_state->allocate_context_globals != __null), no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v63 = __nwlog_obj();
          v74 = v86;
          if (os_log_type_enabled(v63, v86))
          {
            *buf = 136446210;
            v88 = "nw_protocol_definition_allocate_globals";
            _os_log_impl(&dword_181A37000, v63, v74, "%{public}s called with null (definition->common_state->allocate_globals != __null || definition->common_state->allocate_context_globals != __null), backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_143;
      }

LABEL_144:
      if (!v62)
      {
LABEL_146:

        goto LABEL_147;
      }

LABEL_145:
      free(v62);
      goto LABEL_146;
    }

    v61 = __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_protocol_definition_allocate_globals";
    v62 = _os_log_send_and_compose_impl();

    v86 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v62, &v86, &type))
    {
      goto LABEL_144;
    }

    if (v86 == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = v86;
      if (os_log_type_enabled(v63, v86))
      {
        *buf = 136446210;
        v88 = "nw_protocol_definition_allocate_globals";
        _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null definition->common_state", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v65 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v66 = v86;
      v67 = os_log_type_enabled(v63, v86);
      if (v65)
      {
        if (v67)
        {
          *buf = 136446466;
          v88 = "nw_protocol_definition_allocate_globals";
          v89 = 2082;
          v90 = v65;
          _os_log_impl(&dword_181A37000, v63, v66, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v65);
        goto LABEL_144;
      }

      if (v67)
      {
        *buf = 136446210;
        v88 = "nw_protocol_definition_allocate_globals";
        _os_log_impl(&dword_181A37000, v63, v66, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v63 = __nwlog_obj();
      v70 = v86;
      if (os_log_type_enabled(v63, v86))
      {
        *buf = 136446210;
        v88 = "nw_protocol_definition_allocate_globals";
        _os_log_impl(&dword_181A37000, v63, v70, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_143:

    goto LABEL_144;
  }

  v45 = __nwlog_obj();
  *buf = 136446210;
  v88 = "nw_context_get_globals_for_protocol";
  v46 = _os_log_send_and_compose_impl();

  v86 = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v46, &v86, &type))
  {
    goto LABEL_117;
  }

  if (v86 == OS_LOG_TYPE_FAULT)
  {
    v47 = __nwlog_obj();
    v48 = v86;
    if (os_log_type_enabled(v47, v86))
    {
      *buf = 136446210;
      v88 = "nw_context_get_globals_for_protocol";
      _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null context->globals", buf, 0xCu);
    }
  }

  else if (type == OS_LOG_TYPE_INFO)
  {
    v55 = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v56 = v86;
    v57 = os_log_type_enabled(v47, v86);
    if (v55)
    {
      if (v57)
      {
        *buf = 136446466;
        v88 = "nw_context_get_globals_for_protocol";
        v89 = 2082;
        v90 = v55;
        _os_log_impl(&dword_181A37000, v47, v56, "%{public}s called with null context->globals, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v55);
      goto LABEL_117;
    }

    if (v57)
    {
      *buf = 136446210;
      v88 = "nw_context_get_globals_for_protocol";
      _os_log_impl(&dword_181A37000, v47, v56, "%{public}s called with null context->globals, no backtrace", buf, 0xCu);
    }
  }

  else
  {
    v47 = __nwlog_obj();
    v60 = v86;
    if (os_log_type_enabled(v47, v86))
    {
      *buf = 136446210;
      v88 = "nw_context_get_globals_for_protocol";
      _os_log_impl(&dword_181A37000, v47, v60, "%{public}s called with null context->globals, backtrace limit exceeded", buf, 0xCu);
    }
  }

LABEL_117:
  if (v46)
  {
    free(v46);
  }

LABEL_119:

LABEL_120:
  v11 = 0;
LABEL_168:

  return v11;
}

uint64_t network_config_get_l4s_enabled()
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
  v1 = v0;
  if (v0 && object_getClass(v0) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v1);

    if (value)
    {
      return value;
    }
  }

  else
  {
  }

  if (nw_settings_get_l4s_enabled_internal::onceToken != -1)
  {
    dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
  }

  return nw_settings_get_l4s_enabled_internal::l4s_setting;
}

uint64_t nw_parameters_copy_protocol_options_legacy(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = _nw_parameters_copy_protocol_options_with_level(v3, a2);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_copy_protocol_options_legacy";
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
          v20 = "nw_parameters_copy_protocol_options_legacy";
          v11 = "%{public}s called with null protocol_handle";
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
          v20 = "nw_parameters_copy_protocol_options_legacy";
          v11 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
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
          v20 = "nw_parameters_copy_protocol_options_legacy";
          v11 = "%{public}s called with null protocol_handle, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v16)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_copy_protocol_options_legacy";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null protocol_handle, dumping backtrace:%{public}s";
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
    v20 = "nw_parameters_copy_protocol_options_legacy";
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
          v20 = "nw_parameters_copy_protocol_options_legacy";
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
          v20 = "nw_parameters_copy_protocol_options_legacy";
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
          v20 = "nw_parameters_copy_protocol_options_legacy";
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
      v20 = "nw_parameters_copy_protocol_options_legacy";
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

  v5 = 0;
LABEL_4:

  return v5;
}

uint64_t _nw_protocol_stack_copy_internet_protocol()
{

  if (sub_181BB663C())
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 336))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t nw_path_is_viable(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_viable = _nw_path_is_viable(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_viable";
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
        v16 = "nw_path_is_viable";
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
          v16 = "nw_path_is_viable";
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
        v16 = "nw_path_is_viable";
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
        v16 = "nw_path_is_viable";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_viable = 0;
LABEL_3:

  return is_viable;
}

uint64_t _nw_tcp_options_get_connection_timeout(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *(v3 + 4);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_181BBC398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _nw_tcp_options_get_maximum_segment_size(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + *(*v2 + 128));
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *v3;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t _nw_tcp_options_get_retransmit_fin_drop(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 42) & 1;
    }
  }

  return result;
}

void nw_protocol_set_flow_id(_OWORD *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a1 = *a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_set_flow_id";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_set_flow_id";
        v5 = "%{public}s called with null flow_id";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_set_flow_id";
        v5 = "%{public}s called with null flow_id, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_set_flow_id";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null flow_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_set_flow_id";
        v5 = "%{public}s called with null flow_id, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_set_flow_id";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_set_flow_id";
      v5 = "%{public}s called with null protocol";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_set_flow_id";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_set_flow_id";
      v5 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_set_flow_id";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

uint64_t sub_181BBC910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _nw_tcp_create_metadata(unint64_t *a1)
{
  if (qword_1ED410038 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_181BB5D08(a1);
}

uint64_t _nw_tcp_set_callbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA80);
  result = sub_181A93260(a1);
  if (result)
  {
    v7 = result;
    result = swift_beginAccess();
    if (*(v7 + 64))
    {
      sub_181BBCAF8(v7 + 64, a2, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_181BBCAF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = xmmword_182AE69F0;
  v5 = 0uLL;
  v6 = 0;
  v7 = 0uLL;
  if (a2 && a3)
  {
    v4 = *a3;
    v5 = *(a3 + 16);
    v7 = *(a3 + 32);
    v6 = a2;
    v3 = *(a3 + 48);
  }

  *(result + 8) = v4;
  *(result + 24) = v5;
  *(result + 40) = v7;
  *(result + 56) = v3;
  *(result + 64) = v6;
  return result;
}

uint64_t nw_protocol_get_local_endpoint(void *a1)
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

    v7 = *(v5 + 128);
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
    v35 = "__nw_protocol_get_local_endpoint";
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
        v35 = "__nw_protocol_get_local_endpoint";
        v36 = 2082;
        v37 = v19;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
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
        v35 = "__nw_protocol_get_local_endpoint";
        v36 = 2082;
        v37 = v30;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
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
        v35 = "__nw_protocol_get_local_endpoint";
        v36 = 2082;
        v37 = v31;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
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
        v35 = "__nw_protocol_get_local_endpoint";
        v36 = 2082;
        v37 = v27;
        v38 = 2048;
        v39 = v1;
        v40 = 2082;
        v41 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
  v35 = "__nw_protocol_get_local_endpoint";
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
        v35 = "__nw_protocol_get_local_endpoint";
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
          v35 = "__nw_protocol_get_local_endpoint";
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
        v35 = "__nw_protocol_get_local_endpoint";
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
        v35 = "__nw_protocol_get_local_endpoint";
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

uint64_t nw_protocol_get_path(void *a1)
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

    v7 = *(v5 + 120);
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
    v35 = "__nw_protocol_get_path";
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
        v35 = "__nw_protocol_get_path";
        v36 = 2082;
        v37 = v19;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
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
        v35 = "__nw_protocol_get_path";
        v36 = 2082;
        v37 = v30;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
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
        v35 = "__nw_protocol_get_path";
        v36 = 2082;
        v37 = v31;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
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
        v35 = "__nw_protocol_get_path";
        v36 = 2082;
        v37 = v27;
        v38 = 2048;
        v39 = v1;
        v40 = 2082;
        v41 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
  v35 = "__nw_protocol_get_path";
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
        v35 = "__nw_protocol_get_path";
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
          v35 = "__nw_protocol_get_path";
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
        v35 = "__nw_protocol_get_path";
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
        v35 = "__nw_protocol_get_path";
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

uint64_t _nw_tcp_options_get_no_delay(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 33) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_no_push(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 35) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_fast_open_force_enable(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 46) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_enable_background_traffic_management(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 41) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_enable_keepalive(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 37) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_disable_ack_stretching(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 39) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_no_timewait(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 34) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_retransmit_connection_drop_time(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *(v3 + 12);

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_181BBDBA8()
{
  v1 = *&v0[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
  if (v1)
  {
    if (v1 == v0)
    {
      v5 = qword_1ED40FE10;
      v6 = v1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_182AD2698();
      __swift_project_value_buffer(v7, qword_1ED411BA0);
      v8 = sub_182AD2678();
      v9 = sub_182AD38C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_181A37000, v8, v9, "An endpoint cannot be its own parent", v10, 2u);
        MEMORY[0x1865DF520](v10, -1, -1);
      }

      v4 = 0;
      goto LABEL_10;
    }

    v2 = *&v0[OBJC_IVAR____TtC7Network8Endpoint_flags];
    v3 = v1;
    if ((v2 & 0x20) == 0)
    {
      v4 = sub_181BBDBA8();
LABEL_10:

      return v4;
    }
  }

  return v1;
}

char *nw_endpoint_copy_proxy_original_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_proxy_original_endpoint(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_proxy_original_endpoint";
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
        v16 = "nw_endpoint_copy_proxy_original_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_copy_proxy_original_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_proxy_original_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_proxy_original_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_endpoint_copy_proxy_original_endpoint(void *a1)
{
  v1 = a1;
  v2 = sub_181BBDBA8();

  return v2;
}

uint64_t nw_parameters_has_protocol_in_stack(NSObject *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = nw_parameters_copy_default_protocol_stack(a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = v5;
    if (a2)
    {
      v7 = _nw_protocol_stack_includes_protocol_identifier(v5, a2);
LABEL_4:

      goto LABEL_5;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_stack_includes_protocol_identifier";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v15, &type, &v23))
    {
LABEL_39:
      if (v15)
      {
        free(v15);
      }

      v7 = 0;
      goto LABEL_4;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_stack_includes_protocol_identifier";
        v18 = "%{public}s called with null identifier";
LABEL_37:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v22 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v26 = "nw_protocol_stack_includes_protocol_identifier";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (!v22)
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v26 = "nw_protocol_stack_includes_protocol_identifier";
        v18 = "%{public}s called with null identifier, no backtrace";
        goto LABEL_37;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_stack_includes_protocol_identifier";
        v18 = "%{public}s called with null identifier, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_parameters_has_protocol_in_stack";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v10, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_has_protocol_in_stack";
        v13 = "%{public}s called with null stack";
LABEL_30:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v23 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v20 = os_log_type_enabled(v11, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v26 = "nw_parameters_has_protocol_in_stack";
            v27 = 2082;
            v28 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_32;
        }

        if (!v20)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v26 = "nw_parameters_has_protocol_in_stack";
        v13 = "%{public}s called with null stack, no backtrace";
        goto LABEL_30;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_has_protocol_in_stack";
        v13 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_5:

  return v7;
}

uint64_t _nw_protocol_stack_includes_protocol_identifier(uint64_t a1, uint64_t a2)
{

  sub_181AAC800(a2, &v7);
  *v4 = v7;
  v5 = v8;
  v6 = v9;
  LOBYTE(a2) = sub_181AC95F0(v4);

  sub_181F48350(v5, *(&v5 + 1), v6);
  return a2 & 1;
}

void *nw_protocol_get_quic_stream_protocol_identifier()
{
  v17 = *MEMORY[0x1E69E9840];
  result = nw_protocol_get_quic_stream_protocol_identifier_quic_stream_protocol_identifier;
  if (nw_protocol_get_quic_stream_protocol_identifier_quic_stream_protocol_identifier)
  {
    return result;
  }

  _nw_protocol_get_quic_stream_protocol_identifier(&nw_protocol_get_quic_stream_protocol_identifier_quic_stream_identifier);
  if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
  }

  v1 = nw_protocol_copy_quic_stream_definition_quic_definition;
  if (v1)
  {
    v2 = v1;

    nw_protocol_get_quic_stream_protocol_identifier_quic_stream_protocol_identifier = v2 + 8;
    return nw_protocol_get_quic_stream_protocol_identifier_quic_stream_protocol_identifier;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_get_quic_stream_protocol_identifier";
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
        v14 = "nw_protocol_get_quic_stream_protocol_identifier";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null quic_stream_definition", buf, 0xCu);
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
          v14 = "nw_protocol_get_quic_stream_protocol_identifier";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null quic_stream_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_get_quic_stream_protocol_identifier";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null quic_stream_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_get_quic_stream_protocol_identifier";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null quic_stream_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v4)
  {
    free(v4);
  }

  return &nw_protocol_get_quic_stream_protocol_identifier_quic_stream_identifier;
}

void *nw_protocol_get_quic_connection_protocol_identifier()
{
  v17 = *MEMORY[0x1E69E9840];
  result = nw_protocol_get_quic_connection_protocol_identifier_quic_connection_protocol_identifier;
  if (nw_protocol_get_quic_connection_protocol_identifier_quic_connection_protocol_identifier)
  {
    return result;
  }

  _nw_protocol_get_quic_connection_protocol_identifier(&nw_protocol_get_quic_connection_protocol_identifier_quic_connection_identifier);
  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v1 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (v1)
  {
    v2 = v1;

    nw_protocol_get_quic_connection_protocol_identifier_quic_connection_protocol_identifier = v2 + 8;
    return nw_protocol_get_quic_connection_protocol_identifier_quic_connection_protocol_identifier;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_get_quic_connection_protocol_identifier";
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
        v14 = "nw_protocol_get_quic_connection_protocol_identifier";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null quic_connection_definition", buf, 0xCu);
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
          v14 = "nw_protocol_get_quic_connection_protocol_identifier";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null quic_connection_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_get_quic_connection_protocol_identifier";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null quic_connection_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_get_quic_connection_protocol_identifier";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null quic_connection_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v4)
  {
    free(v4);
  }

  return &nw_protocol_get_quic_connection_protocol_identifier_quic_connection_identifier;
}

uint64_t _nw_ip_options_get_calculate_receive_time(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3 | (*(v3 + 4) << 32);
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 33) & 1;
    }
  }

  return result;
}

uint64_t nw_channel_get_stats_region(uint64_t a1, int a2)
{
  *&v22[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_channel_get_stats_region";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v3, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v20 = "nw_channel_get_stats_region";
          v6 = "%{public}s called with null channel";
LABEL_39:
          v9 = v12;
          v10 = v13;
          v11 = 12;
LABEL_22:
          _os_log_impl(&dword_181A37000, v9, v10, v6, buf, v11);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v15 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v20 = "nw_channel_get_stats_region";
            v21 = 2082;
            *v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v15)
        {
          *buf = 136446210;
          v20 = "nw_channel_get_stats_region";
          v6 = "%{public}s called with null channel, no backtrace";
          goto LABEL_39;
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v20 = "nw_channel_get_stats_region";
          v6 = "%{public}s called with null channel, backtrace limit exceeded";
          goto LABEL_39;
        }
      }
    }

LABEL_23:
    if (v3)
    {
LABEL_24:
      free(v3);
    }

    return 0;
  }

  if (!*(a1 + 136))
  {
    return 0;
  }

  if ((a2 - 1) >= 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v20 = "nw_channel_get_stats_region";
    v21 = 1024;
    *v22 = a2;
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v3, &type, &v17))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v20 = "nw_channel_get_stats_region";
      v21 = 1024;
      *v22 = a2;
      v6 = "%{public}s Unknown stats type %u";
    }

    else if (v17 == 1)
    {
      v7 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      v8 = os_log_type_enabled(gLogObj, type);
      if (v7)
      {
        if (v8)
        {
          *buf = 136446722;
          v20 = "nw_channel_get_stats_region";
          v21 = 1024;
          *v22 = a2;
          v22[2] = 2082;
          *&v22[3] = v7;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s Unknown stats type %u, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v7);
        if (!v3)
        {
          return 0;
        }

        goto LABEL_24;
      }

      if (!v8)
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v20 = "nw_channel_get_stats_region";
      v21 = 1024;
      *v22 = a2;
      v6 = "%{public}s Unknown stats type %u, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v20 = "nw_channel_get_stats_region";
      v21 = 1024;
      *v22 = a2;
      v6 = "%{public}s Unknown stats type %u, backtrace limit exceeded";
    }

    v9 = v4;
    v10 = v5;
    v11 = 18;
    goto LABEL_22;
  }

  return MEMORY[0x1EEE72C40]();
}

void nw_path_flow_registration_set_stats_region(void *a1, int a2, void *a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_flow_registration_set_stats_region";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null flow_registration", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v31 = "nw_path_flow_registration_set_stats_region";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_60:
        if (!v10)
        {
          goto LABEL_10;
        }

LABEL_61:
        free(v10);
        goto LABEL_10;
      }

      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_59:

    goto LABEL_60;
  }

  if (!a3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_flow_registration_set_stats_region";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null protocol_identifier", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null protocol_identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null protocol_identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_path_flow_registration_set_stats_region";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null protocol_identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_40;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_flow_registration_set_stats_region";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null (level == nw_protocol_level_internet || level == nw_protocol_level_transport)", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null (level == nw_protocol_level_internet || level == nw_protocol_level_transport), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_path_flow_registration_set_stats_region";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null (level == nw_protocol_level_internet || level == nw_protocol_level_transport), no backtrace", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_path_flow_registration_set_stats_region";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null (level == nw_protocol_level_internet || level == nw_protocol_level_transport), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_40:

    free(v20);
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

  if (a2 == 2)
  {
    v7[13] = a3;
    v7[16] = a4;
  }

  else if (nw_protocol_get_quic_connection_protocol_identifier() == a3 || nw_protocol_get_quic_stream_protocol_identifier() == a3)
  {
    v8[11] = a3;
    v8[14] = a4;
  }

  else
  {
    v8[12] = a3;
    v8[15] = a4;
  }

LABEL_10:
}

BOOL nw_channel_set_path_flow_registration(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_channel_set_path_flow_registration";
    v6 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v6, type, &v29))
    {
      goto LABEL_22;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (!os_log_type_enabled(v7, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null channel";
      goto LABEL_20;
    }

    if (v29 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (!os_log_type_enabled(v7, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type[0];
    v25 = os_log_type_enabled(v7, type[0]);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null channel, no backtrace";
      goto LABEL_20;
    }

    if (!v25)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v31 = "nw_channel_set_path_flow_registration";
    v32 = 2082;
    v33[0] = backtrace_string;
    v26 = "%{public}s called with null channel, dumping backtrace:%{public}s";
    goto LABEL_54;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_channel_set_path_flow_registration";
    v6 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v6, type, &v29))
    {
      goto LABEL_22;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (!os_log_type_enabled(v7, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null path";
      goto LABEL_20;
    }

    if (v29 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (!os_log_type_enabled(v7, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null path, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type[0];
    v27 = os_log_type_enabled(v7, type[0]);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null path, no backtrace";
      goto LABEL_20;
    }

    if (!v27)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v31 = "nw_channel_set_path_flow_registration";
    v32 = 2082;
    v33[0] = backtrace_string;
    v26 = "%{public}s called with null path, dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v7, v8, v26, buf, 0x16u);
    goto LABEL_55;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_channel_set_path_flow_registration";
    v6 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v6, type, &v29))
    {
      goto LABEL_22;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (!os_log_type_enabled(v7, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null flow_registration";
      goto LABEL_20;
    }

    if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type[0];
      v28 = os_log_type_enabled(v7, type[0]);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v31 = "nw_channel_set_path_flow_registration";
          v32 = 2082;
          v33[0] = backtrace_string;
          v26 = "%{public}s called with null flow_registration, dumping backtrace:%{public}s";
          goto LABEL_54;
        }

LABEL_55:
        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v28)
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null flow_registration, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (!os_log_type_enabled(v7, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s called with null flow_registration, backtrace limit exceeded";
    }

LABEL_20:
    v21 = v7;
    v22 = v8;
LABEL_21:
    _os_log_impl(&dword_181A37000, v21, v22, v9, buf, 0xCu);
    goto LABEL_22;
  }

  v5 = a3;
  if (uuid_is_null(v5 + 32))
  {

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v31 = "nw_channel_set_path_flow_registration";
    v6 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v6, type, &v29))
    {
      goto LABEL_22;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s nw_path_flow_registration_get_id failed";
      goto LABEL_20;
    }

    if (v29 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s nw_path_flow_registration_get_id failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    v17 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type[0];
    v20 = os_log_type_enabled(gLogObj, type[0]);
    if (v17)
    {
      if (v20)
      {
        *buf = 136446466;
        v31 = "nw_channel_set_path_flow_registration";
        v32 = 2082;
        v33[0] = v17;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s nw_path_flow_registration_get_id failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
      goto LABEL_22;
    }

    if (v20)
    {
      *buf = 136446210;
      v31 = "nw_channel_set_path_flow_registration";
      v9 = "%{public}s nw_path_flow_registration_get_id failed, no backtrace";
      v21 = v18;
      v22 = v19;
      goto LABEL_21;
    }

LABEL_22:
    if (v6)
    {
      free(v6);
    }

    return 0;
  }

  *type = *(v5 + 2);

  node = nw_hash_table_get_node(*(a1 + 280), type, 16);
  if (node)
  {
    v11 = *(node + 48);
    v12 = node;
    *(node + 48) = os_retain(v5);
    nw_path_flow_registration_get_nexus_flow_index(a2, v5, (v12 + 112));
    LODWORD(v12) = *(a1 + 460);
    v13 = v5;
    v13[148] = v13[148] & 0xFD | (v12 >> 10) & 2;

    advisory_region = nw_channel_get_advisory_region(a1);
    v15 = v13;
    *(v15 + 10) = advisory_region;

    if (v11)
    {
      os_release(v11);
    }

    return 1;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446722;
      v31 = "nw_channel_set_path_flow_registration";
      v32 = 1042;
      LODWORD(v33[0]) = 16;
      WORD2(v33[0]) = 2098;
      *(v33 + 6) = type;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Node not found for flow id %{public,uuid_t}.16P", buf, 0x1Cu);
      return 0;
    }
  }

  return result;
}

BOOL nw_path_flow_registration_get_nexus_flow_index(void *a1, void *a2, _DWORD *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v7 = nw_path_copy_flow_for_registration(v5, v6);
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      *a3 = _nw_path_flow_get_nexus_flow_index(v7);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_path_flow_registration_get_nexus_flow_index";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v12, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_path_flow_registration_get_nexus_flow_index";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null nexus_flow_index", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v22 = "nw_path_flow_registration_get_nexus_flow_index";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null nexus_flow_index, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_path_flow_registration_get_nexus_flow_index";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null nexus_flow_index, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_path_flow_registration_get_nexus_flow_index";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null nexus_flow_index, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_5:

  return v9;
}

uint64_t _nw_path_flow_get_nexus_flow_index(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  LODWORD(v1) = v1[153];

  if (v1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t nw_channel_get_advisory_region(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_channel_get_advisory_region";
    v3 = _os_log_send_and_compose_impl();
    v9[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v3, v9, &type))
    {
      goto LABEL_5;
    }

    if (v9[0] == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v9[0];
      if (!os_log_type_enabled(v4, v9[0]))
      {
        goto LABEL_5;
      }

      *buf = 136446210;
      v12 = "nw_channel_get_advisory_region";
      v6 = "%{public}s called with null channel";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = v9[0];
      v8 = os_log_type_enabled(v4, v9[0]);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v12 = "nw_channel_get_advisory_region";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v3)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (!v8)
      {
LABEL_5:
        if (!v3)
        {
          return 0;
        }

LABEL_6:
        free(v3);
        return 0;
      }

      *buf = 136446210;
      v12 = "nw_channel_get_advisory_region";
      v6 = "%{public}s called with null channel, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = v9[0];
      if (!os_log_type_enabled(v4, v9[0]))
      {
        goto LABEL_5;
      }

      *buf = 136446210;
      v12 = "nw_channel_get_advisory_region";
      v6 = "%{public}s called with null channel, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_5;
  }

  *v9 = 0;
  result = *(a1 + 144);
  if (!result)
  {
    return result;
  }

  os_channel_attr_get();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "nw_channel_get_advisory_region";
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s advisory region not supported by this channel", buf, 0xCu);
  }

  return 0;
}

void nw_protocol_get_message_properties(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v23 = v6[11];
      if (v23)
      {
        v7 = 0;
        v6[11] = v23 + 1;
        if (!a2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
LABEL_39:
        __nwlog_obj();
        *buf = 136446210;
        v56 = "__nw_protocol_get_message_properties";
        v3 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v3, &type, &v53))
        {
          goto LABEL_114;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_get_message_properties";
          v26 = "%{public}s called with null other_protocol";
          goto LABEL_113;
        }

        if (v53 != 1)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_get_message_properties";
          v26 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_113;
        }

        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v45 = os_log_type_enabled(v24, type);
        if (!backtrace_string)
        {
          if (!v45)
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_get_message_properties";
          v26 = "%{public}s called with null other_protocol, no backtrace";
LABEL_113:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
LABEL_114:
          if (!v3)
          {
            goto LABEL_23;
          }

LABEL_22:
          free(v3);
          goto LABEL_23;
        }

        if (v45)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_get_message_properties";
          v57 = 2082;
          v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_22;
        }

LABEL_23:
        if ((v7 & 1) == 0)
        {
          v18 = *(v4 + 40);
          if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
          {
            v19 = *(v4 + 88);
            if (v19)
            {
              v20 = v19 - 1;
              *(v4 + 88) = v20;
              if (!v20)
              {
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

                goto LABEL_34;
              }
            }
          }
        }

        return;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v27 = *(v9 + 88);
      if (v27)
      {
        v10 = 0;
        *(v9 + 88) = v27 + 1;
        if (!a3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_46:
        __nwlog_obj();
        *buf = 136446210;
        v56 = "__nw_protocol_get_message_properties";
        v28 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v28, &type, &v53))
        {
          goto LABEL_120;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_120;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_get_message_properties";
          v31 = "%{public}s called with null message_properties";
          goto LABEL_118;
        }

        if (v53 != 1)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_120;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_get_message_properties";
          v31 = "%{public}s called with null message_properties, backtrace limit exceeded";
          goto LABEL_118;
        }

        v46 = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v47 = os_log_type_enabled(v29, type);
        if (v46)
        {
          if (v47)
          {
            *buf = 136446466;
            v56 = "__nw_protocol_get_message_properties";
            v57 = 2082;
            v58 = v46;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null message_properties, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          if (!v28)
          {
LABEL_11:
            if ((v10 & 1) == 0)
            {
              v13 = *(v3 + 40);
              if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
              {
                v14 = *(v3 + 88);
                if (v14)
                {
                  v15 = v14 - 1;
                  *(v3 + 88) = v15;
                  if (!v15)
                  {
                    v16 = *(v3 + 64);
                    if (v16)
                    {
                      *(v3 + 64) = 0;
                      v16[2](v16);
                      _Block_release(v16);
                    }

                    if (*(v3 + 72))
                    {
                      v17 = *(v3 + 64);
                      if (v17)
                      {
                        _Block_release(v17);
                      }
                    }

                    goto LABEL_22;
                  }
                }
              }
            }

            goto LABEL_23;
          }

LABEL_121:
          free(v28);
          goto LABEL_11;
        }

        if (v47)
        {
          *buf = 136446210;
          v56 = "__nw_protocol_get_message_properties";
          v31 = "%{public}s called with null message_properties, no backtrace";
LABEL_118:
          v50 = v29;
          v51 = v30;
          v52 = 12;
          goto LABEL_119;
        }

        goto LABEL_120;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 248);
      if (v12)
      {
        v12(a1, a2);
        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v32 = *(v4 + 16);
    *buf = 136446722;
    v56 = "__nw_protocol_get_message_properties";
    if (!v32)
    {
      v32 = "invalid";
    }

    v57 = 2082;
    v58 = v32;
    v59 = 2048;
    v60 = v4;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v28, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_120;
        }

        v35 = *(v4 + 16);
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_get_message_properties";
        v57 = 2082;
        v58 = v35;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback";
      }

      else if (v53 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v40 = os_log_type_enabled(v33, type);
        if (v39)
        {
          if (v40)
          {
            v41 = *(v4 + 16);
            if (!v41)
            {
              v41 = "invalid";
            }

            *buf = 136446978;
            v56 = "__nw_protocol_get_message_properties";
            v57 = 2082;
            v58 = v41;
            v59 = 2048;
            v60 = v4;
            v61 = 2082;
            v62 = v39;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v39);
          goto LABEL_120;
        }

        if (!v40)
        {
          goto LABEL_120;
        }

        v49 = *(v4 + 16);
        if (!v49)
        {
          v49 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_get_message_properties";
        v57 = 2082;
        v58 = v49;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, no backtrace";
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_120;
        }

        v48 = *(v4 + 16);
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_get_message_properties";
        v57 = 2082;
        v58 = v48;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, backtrace limit exceeded";
      }

      v50 = v33;
      v51 = v34;
      v52 = 32;
LABEL_119:
      _os_log_impl(&dword_181A37000, v50, v51, v31, buf, v52);
    }

LABEL_120:
    if (!v28)
    {
      goto LABEL_11;
    }

    goto LABEL_121;
  }

  __nwlog_obj();
  *buf = 136446210;
  v56 = "__nw_protocol_get_message_properties";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v4, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_get_message_properties";
      v38 = "%{public}s called with null protocol";
    }

    else if (v53 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v43 = os_log_type_enabled(v36, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_get_message_properties";
          v57 = 2082;
          v58 = v42;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        if (v4)
        {
          goto LABEL_34;
        }

        return;
      }

      if (!v43)
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_get_message_properties";
      v38 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_get_message_properties";
      v38 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
  }

LABEL_109:
  if (v4)
  {
LABEL_34:
    free(v4);
  }
}

uint64_t nw_protocol_ip_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  logging_disabled = nw_parameters_get_logging_disabled(a3);
  address_family = nw_endpoint_get_address_family(a2);
  if (address_family == 30)
  {
    if (nw_protocol_ip_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
    }

    if (nw_protocol_ipv6_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ipv6_callbacks(void)::onceToken, &__block_literal_global_35_90966);
    }

    v8 = nw_protocol_new(248, a3, &nw_protocol_ip_identifier::identifier, nw_protocol_ipv6_callbacks(void)::callbacks);
    *(v8 + 88) = 0;
    *(v8 + 96) = v8 + 88;
    *(v8 + 104) = 0;
    *(v8 + 112) = v8 + 104;
    *(v8 + 120) = 0;
    *(v8 + 128) = v8 + 120;
    *(v8 + 152) = 4000;
    *(v8 + 159) = *(v8 + 159) & 0xFE | logging_disabled;
    goto LABEL_13;
  }

  v7 = address_family;
  if (address_family == 2)
  {
    if (nw_protocol_ip_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
    }

    if (nw_protocol_ipv4_callbacks(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_ipv4_callbacks(void)::onceToken, &__block_literal_global_14_90965);
    }

    v8 = nw_protocol_new(224, a3, &nw_protocol_ip_identifier::identifier, nw_protocol_ipv4_callbacks(void)::callbacks);
    *(v8 + 64) = 0;
    *(v8 + 72) = v8 + 64;
    *(v8 + 80) = 0;
    *(v8 + 88) = v8 + 80;
    *(v8 + 96) = 0;
    *(v8 + 104) = v8 + 96;
    *(v8 + 112) = 4000;
    *(v8 + 137) = *(v8 + 137) & 0xFE | logging_disabled;
LABEL_13:
    if (v8)
    {
      return v8 - 96;
    }

    else
    {
      return 0;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v19 = "nw_protocol_ip_create";
  v20 = 1024;
  v21 = v7;
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v19 = "nw_protocol_ip_create";
        v20 = 1024;
        v21 = v7;
        v13 = "%{public}s Invalid address family %u";
LABEL_29:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x12u);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v15 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446722;
          v19 = "nw_protocol_ip_create";
          v20 = 1024;
          v21 = v7;
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Invalid address family %u, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v15)
      {
        *buf = 136446466;
        v19 = "nw_protocol_ip_create";
        v20 = 1024;
        v21 = v7;
        v13 = "%{public}s Invalid address family %u, no backtrace";
        goto LABEL_29;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v19 = "nw_protocol_ip_create";
        v20 = 1024;
        v21 = v7;
        v13 = "%{public}s Invalid address family %u, backtrace limit exceeded";
        goto LABEL_29;
      }
    }
  }

LABEL_30:
  if (v10)
  {
    free(v10);
  }

  return 0;
}

uint64_t nw_protocol_ipv4_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v195 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v188 = "nw_protocol_ipv4_add_input_handler";
    v118 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v185 = 0;
    if (__nwlog_fault(v118, &type, &v185))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v119 = __nwlog_obj();
        v120 = type;
        if (os_log_type_enabled(v119, type))
        {
          *buf = 136446210;
          v188 = "nw_protocol_ipv4_add_input_handler";
          v121 = "%{public}s called with null protocol";
LABEL_349:
          _os_log_impl(&dword_181A37000, v119, v120, v121, buf, 0xCu);
        }
      }

      else if (v185 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v119 = __nwlog_obj();
        v120 = type;
        v142 = os_log_type_enabled(v119, type);
        if (backtrace_string)
        {
          if (v142)
          {
            *buf = 136446466;
            v188 = "nw_protocol_ipv4_add_input_handler";
            v189 = 2082;
            v190 = backtrace_string;
            _os_log_impl(&dword_181A37000, v119, v120, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_350;
        }

        if (v142)
        {
          *buf = 136446210;
          v188 = "nw_protocol_ipv4_add_input_handler";
          v121 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_349;
        }
      }

      else
      {
        v119 = __nwlog_obj();
        v120 = type;
        if (os_log_type_enabled(v119, type))
        {
          *buf = 136446210;
          v188 = "nw_protocol_ipv4_add_input_handler";
          v121 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_349;
        }
      }
    }

LABEL_350:
    if (v118)
    {
      free(v118);
    }

    return 0;
  }

  v2 = a2;
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
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
LABEL_18:
    if (a2)
    {
      if (!a1->default_input_handler)
      {
        if (a2->identifier)
        {
          identifier = a2->identifier;
        }

        else
        {
          identifier = "invalid";
        }

        if (strncmp(identifier->name, "quic", 4uLL))
        {
          nw_protocol_release(0);
          v3->default_input_handler = v2;
          v14 = v2->handle;
          v15 = v2;
          if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *v2[1].flow_id) != 0)
          {
            v16 = v15[1].callbacks;
            if (v16)
            {
              v15[1].callbacks = (&v16->add_input_handler + 1);
            }
          }

          if (v8)
          {
            *v8->flow_id = *v2->flow_id;
            if (v2->output_handler)
            {
LABEL_31:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v17 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                v188 = "nw_protocol_ipv4_add_input_handler";
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
              }

              goto LABEL_38;
            }

            v2->output_handler = v8;
            v18 = v8->handle;
            v19 = v8;
            if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v19 = *v8[1].flow_id) != 0)
            {
              v20 = v19[1].callbacks;
              if (v20)
              {
                v19[1].callbacks = (&v20->add_input_handler + 1);
              }
            }

LABEL_38:
            v21 = v2->handle;
            v22 = v2;
            if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v22 = *v2[1].flow_id) != 0)
            {
              v29 = v22[1].callbacks;
              if (v29)
              {
                v23 = 0;
                v22[1].callbacks = (&v29->add_input_handler + 1);
                v24 = v2->callbacks;
                if (!v24)
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v23 = 0;
                v24 = v2->callbacks;
                if (!v24)
                {
                  goto LABEL_167;
                }
              }
            }

            else
            {
              v23 = 1;
              v24 = v2->callbacks;
              if (!v24)
              {
                goto LABEL_167;
              }
            }

            get_parameters = v24->get_parameters;
            if (get_parameters)
            {
              v31 = get_parameters(v2);
              if (v23)
              {
                goto LABEL_65;
              }

              goto LABEL_54;
            }

LABEL_167:
            __nwlog_obj();
            name = v2->identifier->name;
            if (!name)
            {
              name = "invalid";
            }

            *buf = 136446722;
            v188 = "__nw_protocol_get_parameters";
            v189 = 2082;
            v190 = name;
            v191 = 2048;
            v192 = v2;
            v95 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v185 = 0;
            if (__nwlog_fault(v95, &type, &v185))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v96 = __nwlog_obj();
                v97 = type;
                if (!os_log_type_enabled(v96, type))
                {
                  goto LABEL_277;
                }

                v98 = v2->identifier->name;
                if (!v98)
                {
                  v98 = "invalid";
                }

                *buf = 136446722;
                v188 = "__nw_protocol_get_parameters";
                v189 = 2082;
                v190 = v98;
                v191 = 2048;
                v192 = v2;
                v99 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_275:
                v151 = v96;
LABEL_276:
                _os_log_impl(&dword_181A37000, v151, v97, v99, buf, 0x20u);
                goto LABEL_277;
              }

              if (v185 != 1)
              {
                v96 = __nwlog_obj();
                v97 = type;
                if (!os_log_type_enabled(v96, type))
                {
                  goto LABEL_277;
                }

                v150 = v2->identifier->name;
                if (!v150)
                {
                  v150 = "invalid";
                }

                *buf = 136446722;
                v188 = "__nw_protocol_get_parameters";
                v189 = 2082;
                v190 = v150;
                v191 = 2048;
                v192 = v2;
                v99 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
                goto LABEL_275;
              }

              v126 = __nw_create_backtrace_string();
              v127 = __nwlog_obj();
              v97 = type;
              log = v127;
              v128 = os_log_type_enabled(v127, type);
              if (v126)
              {
                if (v128)
                {
                  v129 = v2->identifier->name;
                  if (!v129)
                  {
                    v129 = "invalid";
                  }

                  *buf = 136446978;
                  v188 = "__nw_protocol_get_parameters";
                  v189 = 2082;
                  v190 = v129;
                  v191 = 2048;
                  v192 = v2;
                  v193 = 2082;
                  v194 = v126;
                  _os_log_impl(&dword_181A37000, log, v97, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v126);
              }

              else if (v128)
              {
                v166 = v2->identifier->name;
                if (!v166)
                {
                  v166 = "invalid";
                }

                *buf = 136446722;
                v188 = "__nw_protocol_get_parameters";
                v189 = 2082;
                v190 = v166;
                v191 = 2048;
                v192 = v2;
                v99 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
                v151 = log;
                goto LABEL_276;
              }
            }

LABEL_277:
            if (v95)
            {
              free(v95);
            }

            v31 = 0;
            if (v23)
            {
LABEL_65:
              BYTE6(v8[3].output_handler) = nw_parameters_get_ip_protocol(v31);
              v38 = v2->handle;
              v39 = v2;
              if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (v39 = *v2[1].flow_id) != 0)
              {
                v42 = v39[1].callbacks;
                if (v42)
                {
                  v40 = 0;
                  v39[1].callbacks = (&v42->add_input_handler + 1);
                  v41 = v2->callbacks;
                  if (!v41)
                  {
                    goto LABEL_175;
                  }
                }

                else
                {
                  v40 = 0;
                  v41 = v2->callbacks;
                  if (!v41)
                  {
                    goto LABEL_175;
                  }
                }
              }

              else
              {
                v40 = 1;
                v41 = v2->callbacks;
                if (!v41)
                {
                  goto LABEL_175;
                }
              }

              get_local_endpoint = v41->get_local_endpoint;
              if (get_local_endpoint)
              {
                v44 = get_local_endpoint(v2);
                if (v40)
                {
                  goto LABEL_76;
                }

                goto LABEL_290;
              }

LABEL_175:
              __nwlog_obj();
              v100 = v2->identifier->name;
              if (!v100)
              {
                v100 = "invalid";
              }

              *buf = 136446722;
              v188 = "__nw_protocol_get_local_endpoint";
              v189 = 2082;
              v190 = v100;
              v191 = 2048;
              v192 = v2;
              v101 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v185 = 0;
              v182 = v101;
              if (__nwlog_fault(v101, &type, &v185))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v102 = __nwlog_obj();
                  v103 = type;
                  if (!os_log_type_enabled(v102, type))
                  {
                    goto LABEL_287;
                  }

                  v104 = v2->identifier->name;
                  if (!v104)
                  {
                    v104 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_local_endpoint";
                  v189 = 2082;
                  v190 = v104;
                  v191 = 2048;
                  v192 = v2;
                  v105 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
LABEL_285:
                  v153 = v102;
                  v154 = v103;
LABEL_286:
                  _os_log_impl(&dword_181A37000, v153, v154, v105, buf, 0x20u);
                  goto LABEL_287;
                }

                if (v185 != 1)
                {
                  v102 = __nwlog_obj();
                  v103 = type;
                  if (!os_log_type_enabled(v102, type))
                  {
                    goto LABEL_287;
                  }

                  v152 = v2->identifier->name;
                  if (!v152)
                  {
                    v152 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_local_endpoint";
                  v189 = 2082;
                  v190 = v152;
                  v191 = 2048;
                  v192 = v2;
                  v105 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
                  goto LABEL_285;
                }

                v130 = __nw_create_backtrace_string();
                v131 = __nwlog_obj();
                v178 = type;
                v132 = os_log_type_enabled(v131, type);
                if (v130)
                {
                  if (v132)
                  {
                    v133 = v2->identifier->name;
                    if (!v133)
                    {
                      v133 = "invalid";
                    }

                    *buf = 136446978;
                    v188 = "__nw_protocol_get_local_endpoint";
                    v189 = 2082;
                    v190 = v133;
                    v191 = 2048;
                    v192 = v2;
                    v193 = 2082;
                    v194 = v130;
                    _os_log_impl(&dword_181A37000, v131, v178, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v130);
                }

                else if (v132)
                {
                  v167 = v2->identifier->name;
                  if (!v167)
                  {
                    v167 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_local_endpoint";
                  v189 = 2082;
                  v190 = v167;
                  v191 = 2048;
                  v192 = v2;
                  v105 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
                  v153 = v131;
                  v154 = v178;
                  goto LABEL_286;
                }
              }

LABEL_287:
              if (v182)
              {
                free(v182);
              }

              v44 = 0;
              if (v40)
              {
                goto LABEL_76;
              }

LABEL_290:
              v45 = v2->handle;
              v155 = v2;
              if (v45 == &nw_protocol_ref_counted_handle)
              {
                goto LABEL_293;
              }

              if (v45 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_77;
              }

              v155 = *v2[1].flow_id;
              if (v155)
              {
LABEL_293:
                v156 = v155[1].callbacks;
                if (v156)
                {
                  v157 = (v156 - 1);
                  v155[1].callbacks = v157;
                  if (!v157)
                  {
                    v158 = *v155[1].flow_id;
                    if (v158)
                    {
                      *v155[1].flow_id = 0;
                      v158[2](v158);
                      _Block_release(v158);
                    }

                    if (v155[1].flow_id[8])
                    {
                      v159 = *v155[1].flow_id;
                      if (v159)
                      {
                        _Block_release(v159);
                      }
                    }

                    free(v155);
                  }
                }
              }

LABEL_76:
              v45 = v2->handle;
LABEL_77:
              v46 = v2;
              if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = *v2[1].flow_id) != 0)
              {
                v49 = v46[1].callbacks;
                if (v49)
                {
                  v47 = 0;
                  v46[1].callbacks = (&v49->add_input_handler + 1);
                  v48 = v2->callbacks;
                  if (!v48)
                  {
                    goto LABEL_183;
                  }
                }

                else
                {
                  v47 = 0;
                  v48 = v2->callbacks;
                  if (!v48)
                  {
                    goto LABEL_183;
                  }
                }
              }

              else
              {
                v47 = 1;
                v48 = v2->callbacks;
                if (!v48)
                {
                  goto LABEL_183;
                }
              }

              get_remote_endpoint = v48->get_remote_endpoint;
              if (get_remote_endpoint)
              {
                v51 = get_remote_endpoint(v2);
                if (v47)
                {
                  goto LABEL_99;
                }

                goto LABEL_88;
              }

LABEL_183:
              __nwlog_obj();
              v106 = v2->identifier->name;
              if (!v106)
              {
                v106 = "invalid";
              }

              *buf = 136446722;
              v188 = "__nw_protocol_get_remote_endpoint";
              v189 = 2082;
              v190 = v106;
              v191 = 2048;
              v192 = v2;
              v107 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v185 = 0;
              v183 = v107;
              if (__nwlog_fault(v107, &type, &v185))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v108 = __nwlog_obj();
                  v109 = type;
                  *v177 = v108;
                  if (!os_log_type_enabled(v108, type))
                  {
                    goto LABEL_307;
                  }

                  v110 = v2->identifier->name;
                  if (!v110)
                  {
                    v110 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_remote_endpoint";
                  v189 = 2082;
                  v190 = v110;
                  v191 = 2048;
                  v192 = v2;
                  v111 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_305:
                  v162 = *v177;
                  v163 = v109;
LABEL_306:
                  _os_log_impl(&dword_181A37000, v162, v163, v111, buf, 0x20u);
                  goto LABEL_307;
                }

                if (v185 != 1)
                {
                  v160 = __nwlog_obj();
                  v109 = type;
                  *v177 = v160;
                  if (!os_log_type_enabled(v160, type))
                  {
                    goto LABEL_307;
                  }

                  v161 = v2->identifier->name;
                  if (!v161)
                  {
                    v161 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_remote_endpoint";
                  v189 = 2082;
                  v190 = v161;
                  v191 = 2048;
                  v192 = v2;
                  v111 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
                  goto LABEL_305;
                }

                v134 = __nw_create_backtrace_string();
                v179 = __nwlog_obj();
                v176 = type;
                v135 = os_log_type_enabled(v179, type);
                if (v134)
                {
                  if (v135)
                  {
                    v136 = v2->identifier->name;
                    if (!v136)
                    {
                      v136 = "invalid";
                    }

                    *buf = 136446978;
                    v188 = "__nw_protocol_get_remote_endpoint";
                    v189 = 2082;
                    v190 = v136;
                    v191 = 2048;
                    v192 = v2;
                    v193 = 2082;
                    v194 = v134;
                    _os_log_impl(&dword_181A37000, v179, v176, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v134);
                }

                else if (v135)
                {
                  v168 = v2->identifier->name;
                  if (!v168)
                  {
                    v168 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_remote_endpoint";
                  v189 = 2082;
                  v190 = v168;
                  v191 = 2048;
                  v192 = v2;
                  v111 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
                  v162 = v179;
                  v163 = v176;
                  goto LABEL_306;
                }
              }

LABEL_307:
              if (v183)
              {
                free(v183);
              }

              v51 = 0;
              if (v47)
              {
LABEL_99:
                if (nw_endpoint_get_address_family(v44) == 2)
                {
                  LODWORD(v8[2].callbacks) = *&nw_endpoint_get_address(v44)->sa_data[2];
                }

                if (nw_endpoint_get_address_family(v51) == 2)
                {
                  HIDWORD(v8[2].callbacks) = *&nw_endpoint_get_address(v51)->sa_data[2];
                }

                default_input_handler = v3->default_input_handler;
                if (default_input_handler)
                {
                  v58 = default_input_handler->handle;
                  v59 = v3->default_input_handler;
                  if (v58 == &nw_protocol_ref_counted_handle || v58 == &nw_protocol_ref_counted_additional_handle && (v59 = *default_input_handler[1].flow_id) != 0)
                  {
                    v62 = v59[1].callbacks;
                    if (v62)
                    {
                      v60 = 0;
                      v59[1].callbacks = (&v62->add_input_handler + 1);
                      v61 = default_input_handler->callbacks;
                      if (!v61)
                      {
                        goto LABEL_191;
                      }
                    }

                    else
                    {
                      v60 = 0;
                      v61 = default_input_handler->callbacks;
                      if (!v61)
                      {
                        goto LABEL_191;
                      }
                    }
                  }

                  else
                  {
                    v60 = 1;
                    v61 = default_input_handler->callbacks;
                    if (!v61)
                    {
                      goto LABEL_191;
                    }
                  }

                  get_path = v61->get_path;
                  if (get_path)
                  {
                    v64 = get_path(default_input_handler);
                    if (v60)
                    {
LABEL_126:
                      if (v64)
                      {
                        v71 = v64;
                        LODWORD(v8[3].identifier) = nw_path_get_maximum_packet_size(v64);
                        v72 = v71;
                        mtu = _nw_path_get_mtu(v72);

                        HIDWORD(v8[3].identifier) = mtu;
                        v74 = v72;
                        csum_flags = _nw_path_get_csum_flags(v74);

                        BYTE1(v8[3].handle) = (16 * (csum_flags & 1)) | BYTE1(v8[3].handle) & 0xEF;
                        v76 = v74;
                        v77 = _nw_path_copy_direct_interface(v76);

                        if (v77)
                        {
                          HIDWORD(v8[3].callbacks) = _nw_interface_get_ipv4_netmask(v77, 0);
                          LODWORD(v8[3].output_handler) = _nw_interface_get_ipv4_broadcast(v77, 0);
                          os_release(v77);
                        }
                      }

                      goto LABEL_129;
                    }

LABEL_115:
                    v65 = default_input_handler->handle;
                    if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
                    {
                      v66 = default_input_handler[1].callbacks;
                      if (v66)
                      {
                        v67 = (v66 - 1);
                        default_input_handler[1].callbacks = v67;
                        if (!v67)
                        {
                          v68 = v64;
                          v69 = *default_input_handler[1].flow_id;
                          if (v69)
                          {
                            *default_input_handler[1].flow_id = 0;
                            v69[2](v69);
                            _Block_release(v69);
                          }

                          if (default_input_handler[1].flow_id[8])
                          {
                            v70 = *default_input_handler[1].flow_id;
                            if (v70)
                            {
                              _Block_release(v70);
                            }
                          }

                          free(default_input_handler);
                          v64 = v68;
                        }
                      }
                    }

                    goto LABEL_126;
                  }

LABEL_191:
                  __nwlog_obj();
                  v112 = default_input_handler->identifier->name;
                  if (!v112)
                  {
                    v112 = "invalid";
                  }

                  *buf = 136446722;
                  v188 = "__nw_protocol_get_path";
                  v189 = 2082;
                  v190 = v112;
                  v191 = 2048;
                  v192 = default_input_handler;
                  v113 = _os_log_send_and_compose_impl();
                  type = OS_LOG_TYPE_ERROR;
                  v185 = 0;
                  v184 = v113;
                  if (__nwlog_fault(v113, &type, &v185))
                  {
                    if (type == OS_LOG_TYPE_FAULT)
                    {
                      v114 = __nwlog_obj();
                      v115 = type;
                      if (!os_log_type_enabled(v114, type))
                      {
                        goto LABEL_317;
                      }

                      v116 = default_input_handler->identifier->name;
                      if (!v116)
                      {
                        v116 = "invalid";
                      }

                      *buf = 136446722;
                      v188 = "__nw_protocol_get_path";
                      v189 = 2082;
                      v190 = v116;
                      v191 = 2048;
                      v192 = default_input_handler;
                      v117 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
LABEL_315:
                      v165 = v114;
LABEL_316:
                      _os_log_impl(&dword_181A37000, v165, v115, v117, buf, 0x20u);
                      goto LABEL_317;
                    }

                    if (v185 != 1)
                    {
                      v114 = __nwlog_obj();
                      v115 = type;
                      if (!os_log_type_enabled(v114, type))
                      {
                        goto LABEL_317;
                      }

                      v164 = default_input_handler->identifier->name;
                      if (!v164)
                      {
                        v164 = "invalid";
                      }

                      *buf = 136446722;
                      v188 = "__nw_protocol_get_path";
                      v189 = 2082;
                      v190 = v164;
                      v191 = 2048;
                      v192 = default_input_handler;
                      v117 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
                      goto LABEL_315;
                    }

                    v137 = __nw_create_backtrace_string();
                    v138 = __nwlog_obj();
                    v115 = type;
                    v180 = v138;
                    v139 = os_log_type_enabled(v138, type);
                    if (v137)
                    {
                      if (v139)
                      {
                        v140 = default_input_handler->identifier->name;
                        if (!v140)
                        {
                          v140 = "invalid";
                        }

                        *buf = 136446978;
                        v188 = "__nw_protocol_get_path";
                        v189 = 2082;
                        v190 = v140;
                        v191 = 2048;
                        v192 = default_input_handler;
                        v193 = 2082;
                        v194 = v137;
                        _os_log_impl(&dword_181A37000, v180, v115, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v137);
                    }

                    else if (v139)
                    {
                      v169 = default_input_handler->identifier->name;
                      if (!v169)
                      {
                        v169 = "invalid";
                      }

                      *buf = 136446722;
                      v188 = "__nw_protocol_get_path";
                      v189 = 2082;
                      v190 = v169;
                      v191 = 2048;
                      v192 = default_input_handler;
                      v117 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
                      v165 = v180;
                      goto LABEL_316;
                    }
                  }

LABEL_317:
                  if (v184)
                  {
                    free(v184);
                  }

                  v64 = 0;
                  if (v60)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_115;
                }

                __nwlog_obj();
                *buf = 136446210;
                v188 = "__nw_protocol_get_path";
                v170 = _os_log_send_and_compose_impl();
                type = OS_LOG_TYPE_ERROR;
                v185 = 0;
                if (__nwlog_fault(v170, &type, &v185))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v171 = __nwlog_obj();
                    v172 = type;
                    if (!os_log_type_enabled(v171, type))
                    {
                      goto LABEL_380;
                    }

                    *buf = 136446210;
                    v188 = "__nw_protocol_get_path";
                    v173 = "%{public}s called with null protocol";
                    goto LABEL_379;
                  }

                  if (v185 != 1)
                  {
                    v171 = __nwlog_obj();
                    v172 = type;
                    if (!os_log_type_enabled(v171, type))
                    {
                      goto LABEL_380;
                    }

                    *buf = 136446210;
                    v188 = "__nw_protocol_get_path";
                    v173 = "%{public}s called with null protocol, backtrace limit exceeded";
                    goto LABEL_379;
                  }

                  v174 = __nw_create_backtrace_string();
                  v171 = __nwlog_obj();
                  v172 = type;
                  v175 = os_log_type_enabled(v171, type);
                  if (v174)
                  {
                    if (v175)
                    {
                      *buf = 136446466;
                      v188 = "__nw_protocol_get_path";
                      v189 = 2082;
                      v190 = v174;
                      _os_log_impl(&dword_181A37000, v171, v172, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v174);
                    goto LABEL_380;
                  }

                  if (v175)
                  {
                    *buf = 136446210;
                    v188 = "__nw_protocol_get_path";
                    v173 = "%{public}s called with null protocol, no backtrace";
LABEL_379:
                    _os_log_impl(&dword_181A37000, v171, v172, v173, buf, 0xCu);
                  }
                }

LABEL_380:
                if (v170)
                {
                  free(v170);
                }

LABEL_129:
                v78 = nw_parameters_copy_protocol_options_legacy(v31, v3);
                if (v78)
                {
                  v79 = v78;
                  _nw_protocol_options_get_log_id_str(v79, &v8[3].handle + 2);

                  LOBYTE(v8[3].handle) = nw_ip_options_get_dscp_value(v79);
                  hop_limit = _nw_ip_options_get_hop_limit(v79);
                  if (hop_limit)
                  {
                    v81 = hop_limit;
                  }

                  else
                  {
                    v81 = 64;
                  }

                  HIBYTE(v8[3].output_handler) = v81;
                  if (_nw_ip_options_get_calculate_receive_time(v79))
                  {
                    v82 = 2;
                  }

                  else
                  {
                    v82 = 0;
                  }

                  BYTE1(v8[3].handle) = BYTE1(v8[3].handle) & 0xFD | v82;
                  if (_nw_ip_options_get_receive_hop_limit(v79))
                  {
                    v83 = 0x80;
                  }

                  else
                  {
                    v83 = 0;
                  }

                  BYTE1(v8[3].handle) = v83 & 0x80 | BYTE1(v8[3].handle) & 0x7F;
                  BYTE1(v8[3].handle) = BYTE1(v8[3].handle) & 0xF7 | (8 * (nw_ip_options_get_fragmentation_value(v79) == 2));
                  if (_nw_ip_options_get_corrupt_checksums(v79))
                  {
                    v84 = 32;
                  }

                  else
                  {
                    v84 = 0;
                  }

                  BYTE1(v8[3].handle) = BYTE1(v8[3].handle) & 0xDF | v84;
                  os_release(v79);
                }

                else
                {
                  HIBYTE(v8[3].output_handler) = 64;
                }

                v85 = 1;
                nw_protocol_ip_register_segmentation_offload_notification(v3, 1);
                if (v6)
                {
                  return v85;
                }

                goto LABEL_153;
              }

LABEL_88:
              v52 = v2->handle;
              if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
              {
                v53 = v2[1].callbacks;
                if (v53)
                {
                  v54 = (v53 - 1);
                  v2[1].callbacks = v54;
                  if (!v54)
                  {
                    v55 = *v2[1].flow_id;
                    if (v55)
                    {
                      *v2[1].flow_id = 0;
                      v55[2](v55);
                      _Block_release(v55);
                    }

                    if (v2[1].flow_id[8])
                    {
                      v56 = *v2[1].flow_id;
                      if (v56)
                      {
                        _Block_release(v56);
                      }
                    }

                    free(v2);
                  }
                }
              }

              goto LABEL_99;
            }

LABEL_54:
            v32 = v2->handle;
            v33 = v2;
            if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *v2[1].flow_id) != 0)
            {
              v34 = v33[1].callbacks;
              if (v34)
              {
                v35 = (v34 - 1);
                v33[1].callbacks = v35;
                if (!v35)
                {
                  v36 = *v33[1].flow_id;
                  if (v36)
                  {
                    *v33[1].flow_id = 0;
                    v36[2](v36);
                    _Block_release(v36);
                  }

                  if (v33[1].flow_id[8])
                  {
                    v37 = *v33[1].flow_id;
                    if (v37)
                    {
                      _Block_release(v37);
                    }
                  }

                  free(v33);
                }
              }
            }

            goto LABEL_65;
          }

          __nwlog_obj();
          *buf = 136446210;
          v188 = "nw_protocol_set_flow_id_from_protocol";
          v122 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v185 = 0;
          if (__nwlog_fault(v122, &type, &v185))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v123 = __nwlog_obj();
              v124 = type;
              if (!os_log_type_enabled(v123, type))
              {
                goto LABEL_362;
              }

              *buf = 136446210;
              v188 = "nw_protocol_set_flow_id_from_protocol";
              v125 = "%{public}s called with null protocol";
LABEL_361:
              _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
              goto LABEL_362;
            }

            if (v185 != 1)
            {
              v123 = __nwlog_obj();
              v124 = type;
              if (!os_log_type_enabled(v123, type))
              {
                goto LABEL_362;
              }

              *buf = 136446210;
              v188 = "nw_protocol_set_flow_id_from_protocol";
              v125 = "%{public}s called with null protocol, backtrace limit exceeded";
              goto LABEL_361;
            }

            v148 = __nw_create_backtrace_string();
            v123 = __nwlog_obj();
            v124 = type;
            v149 = os_log_type_enabled(v123, type);
            if (!v148)
            {
              if (!v149)
              {
                goto LABEL_362;
              }

              *buf = 136446210;
              v188 = "nw_protocol_set_flow_id_from_protocol";
              v125 = "%{public}s called with null protocol, no backtrace";
              goto LABEL_361;
            }

            if (v149)
            {
              *buf = 136446466;
              v188 = "nw_protocol_set_flow_id_from_protocol";
              v189 = 2082;
              v190 = v148;
              _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v148);
          }

LABEL_362:
          if (v122)
          {
            free(v122);
          }

          if (v2->output_handler)
          {
            goto LABEL_31;
          }

          goto LABEL_38;
        }

        __nwlog_obj();
        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v9 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v185 = 0;
        if (!__nwlog_fault(v9, &type, &v185))
        {
          goto LABEL_150;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v10 = __nwlog_obj();
          v11 = type;
          if (!os_log_type_enabled(v10, type))
          {
            goto LABEL_150;
          }

          *buf = 136446210;
          v188 = "nw_protocol_ipv4_add_input_handler";
          v12 = "%{public}s Attempt to add quic to ip";
          goto LABEL_148;
        }

        if (v185 == 1)
        {
          v143 = __nw_create_backtrace_string();
          v10 = __nwlog_obj();
          v11 = type;
          v147 = os_log_type_enabled(v10, type);
          if (v143)
          {
            if (v147)
            {
              *buf = 136446466;
              v188 = "nw_protocol_ipv4_add_input_handler";
              v189 = 2082;
              v190 = v143;
              v145 = "%{public}s Attempt to add quic to ip, dumping backtrace:%{public}s";
              goto LABEL_264;
            }

LABEL_265:
            free(v143);
            goto LABEL_150;
          }

          if (!v147)
          {
            goto LABEL_150;
          }

          *buf = 136446210;
          v188 = "nw_protocol_ipv4_add_input_handler";
          v12 = "%{public}s Attempt to add quic to ip, no backtrace";
        }

        else
        {
          v10 = __nwlog_obj();
          v11 = type;
          if (!os_log_type_enabled(v10, type))
          {
            goto LABEL_150;
          }

          *buf = 136446210;
          v188 = "nw_protocol_ipv4_add_input_handler";
          v12 = "%{public}s Attempt to add quic to ip, backtrace limit exceeded";
        }

LABEL_148:
        v86 = v10;
        v87 = v11;
LABEL_149:
        _os_log_impl(&dword_181A37000, v86, v87, v12, buf, 0xCu);
        goto LABEL_150;
      }

      __nwlog_obj();
      *buf = 136446210;
      v188 = "nw_protocol_ipv4_add_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v185 = 0;
      if (!__nwlog_fault(v9, &type, &v185))
      {
        goto LABEL_150;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_150;
        }

        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v12 = "%{public}s Default input handler already exists";
        goto LABEL_148;
      }

      if (v185 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_150;
        }

        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v12 = "%{public}s Default input handler already exists, backtrace limit exceeded";
        goto LABEL_148;
      }

      v143 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v146 = os_log_type_enabled(v10, type);
      if (!v143)
      {
        if (!v146)
        {
          goto LABEL_150;
        }

        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v12 = "%{public}s Default input handler already exists, no backtrace";
        goto LABEL_148;
      }

      if (!v146)
      {
        goto LABEL_265;
      }

      *buf = 136446466;
      v188 = "nw_protocol_ipv4_add_input_handler";
      v189 = 2082;
      v190 = v143;
      v145 = "%{public}s Default input handler already exists, dumping backtrace:%{public}s";
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v188 = "nw_protocol_ipv4_add_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v185 = 0;
      if (!__nwlog_fault(v9, &type, &v185))
      {
        goto LABEL_150;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_150;
        }

        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v12 = "%{public}s called with null input_protocol";
        goto LABEL_148;
      }

      if (v185 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_150;
        }

        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v12 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_148;
      }

      v143 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v144 = os_log_type_enabled(v10, type);
      if (!v143)
      {
        if (!v144)
        {
          goto LABEL_150;
        }

        *buf = 136446210;
        v188 = "nw_protocol_ipv4_add_input_handler";
        v12 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_148;
      }

      if (!v144)
      {
        goto LABEL_265;
      }

      *buf = 136446466;
      v188 = "nw_protocol_ipv4_add_input_handler";
      v189 = 2082;
      v190 = v143;
      v145 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    }

LABEL_264:
    _os_log_impl(&dword_181A37000, v10, v11, v145, buf, 0x16u);
    goto LABEL_265;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v188 = "nw_protocol_ipv4_add_input_handler";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v185 = 0;
  if (!__nwlog_fault(v9, &type, &v185))
  {
    goto LABEL_150;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_150;
    }

    *buf = 136446210;
    v188 = "nw_protocol_ipv4_add_input_handler";
    v12 = "%{public}s called with null ipv4";
    goto LABEL_148;
  }

  if (v185 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_150;
    }

    *buf = 136446210;
    v188 = "nw_protocol_ipv4_add_input_handler";
    v12 = "%{public}s called with null ipv4, backtrace limit exceeded";
    goto LABEL_148;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  v27 = type;
  v28 = os_log_type_enabled(gLogObj, type);
  if (v25)
  {
    if (v28)
    {
      *buf = 136446466;
      v188 = "nw_protocol_ipv4_add_input_handler";
      v189 = 2082;
      v190 = v25;
      _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v25);
  }

  else if (v28)
  {
    *buf = 136446210;
    v188 = "nw_protocol_ipv4_add_input_handler";
    v12 = "%{public}s called with null ipv4, no backtrace";
    v86 = v26;
    v87 = v27;
    goto LABEL_149;
  }

LABEL_150:
  if (v9)
  {
    free(v9);
  }

  v85 = 0;
  if ((v6 & 1) == 0)
  {
LABEL_153:
    v88 = v3->handle;
    if (v88 == &nw_protocol_ref_counted_handle || v88 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v89 = v3[1].callbacks;
      if (v89)
      {
        v90 = (v89 - 1);
        v3[1].callbacks = v90;
        if (!v90)
        {
          v91 = *v3[1].flow_id;
          if (v91)
          {
            *v3[1].flow_id = 0;
            v91[2](v91);
            _Block_release(v91);
          }

          if (v3[1].flow_id[8])
          {
            v92 = *v3[1].flow_id;
            if (v92)
            {
              _Block_release(v92);
            }
          }

          free(v3);
        }
      }
    }
  }

  return v85;
}

uint64_t nw_path_get_maximum_packet_size(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    mtu = _nw_path_get_mtu(v1);
    v4 = mtu;
    if (mtu)
    {
      v5 = mtu;
    }

    else
    {
      v5 = 1500;
    }

    if (v5 >= 0x28)
    {
      v6 = _nw_path_copy_endpoint(v2);
      v7 = v6;
      if (v6 && (v8 = v6, v9 = _nw_endpoint_get_type(v8), v8, v9 == 1) && (v10 = v8, address_family = _nw_endpoint_get_address_family(v10), v10, address_family == 2))
      {
        v12 = -20;
      }

      else
      {
        v12 = -40;
      }

      v4 = v5 + v12;
    }

    goto LABEL_12;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_path_get_maximum_packet_size";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v15, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v25 = "nw_path_get_maximum_packet_size";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v25 = "nw_path_get_maximum_packet_size";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v20)
      {
        *buf = 136446210;
        v25 = "nw_path_get_maximum_packet_size";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v25 = "nw_path_get_maximum_packet_size";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v15)
  {
    free(v15);
  }

  v4 = 0;
LABEL_12:

  return v4;
}

uint64_t _nw_path_get_mtu(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v3 = a1;
  swift_beginAccess();
  memcpy(__dst, &a1[v1], sizeof(__dst));
  v4 = sub_181B6C108();
  swift_endAccess();

  return v4;
}

uint64_t _nw_interface_get_ipv4_netmask_0(uint64_t a1, char *a2)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 88);

  if (v3 == 1)
  {
    v5 = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = *(v4 + 80);
  if (a2)
  {
    v5 = 1;
LABEL_6:
    *a2 = v5;
  }

LABEL_7:

  return v6;
}

uint64_t _nw_interface_get_ipv4_broadcast_0(uint64_t a1, char *a2)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 104);

  if (v3 == 1)
  {
    v5 = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = *(v4 + 96);
  if (a2)
  {
    v5 = 1;
LABEL_6:
    *a2 = v5;
  }

LABEL_7:

  return v6;
}

uint64_t nw_ip_options_get_dscp_value(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_ip(v1))
  {
    dscp_value = _nw_ip_options_get_dscp_value(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_ip_options_get_dscp_value";
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
        v14 = "nw_ip_options_get_dscp_value";
        v8 = "%{public}s called with null nw_protocol_options_is_ip(options)";
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
            v14 = "nw_ip_options_get_dscp_value";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_ip(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_ip_options_get_dscp_value";
        v8 = "%{public}s called with null nw_protocol_options_is_ip(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_ip_options_get_dscp_value";
        v8 = "%{public}s called with null nw_protocol_options_is_ip(options), backtrace limit exceeded";
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

  dscp_value = 0;
LABEL_3:

  return dscp_value;
}

BOOL nw_protocol_options_is_ip(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_is_ip(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_is_ip";
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
        v12 = "nw_protocol_options_is_ip";
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
            v12 = "nw_protocol_options_is_ip";
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
        v12 = "nw_protocol_options_is_ip";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_is_ip";
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

BOOL _nw_protocol_options_is_ip(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  v2 = sub_181AA8420(a1) != 0;

  return v2;
}

uint64_t _nw_ip_options_get_dscp_value(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3;
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      return HIBYTE(v4);
    }
  }

  return result;
}

uint64_t sub_181BC41A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3 | (*(v3 + 4) << 32);
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      return (((v4 >> 8) >> 31) & BYTE2(v4));
    }
  }

  return result;
}

uint64_t _nw_ip_options_get_receive_hop_limit(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3 | (*(v3 + 4) << 32);
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 36) & 1;
    }
  }

  return result;
}

uint64_t nw_ip_options_get_fragmentation_value(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_ip(v1))
  {
    fragmentation_value = _nw_ip_options_get_fragmentation_value(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_ip_options_get_fragmentation_value";
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
        v14 = "nw_ip_options_get_fragmentation_value";
        v8 = "%{public}s called with null nw_protocol_options_is_ip(options)";
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
            v14 = "nw_ip_options_get_fragmentation_value";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_ip(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_ip_options_get_fragmentation_value";
        v8 = "%{public}s called with null nw_protocol_options_is_ip(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_ip_options_get_fragmentation_value";
        v8 = "%{public}s called with null nw_protocol_options_is_ip(options), backtrace limit exceeded";
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

  fragmentation_value = 0;
LABEL_3:

  return fragmentation_value;
}

uint64_t _nw_ip_options_get_fragmentation_value_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3 | (*(v3 + 4) << 32);
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      if ((v4 & 0x4000000000) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      return v5 & ((HIDWORD(v4) << 26) >> 31);
    }
  }

  return result;
}

uint64_t _nw_ip_options_get_corrupt_checksums(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3 | (*(v3 + 4) << 32);
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 35) & 1;
    }
  }

  return result;
}

void nw_protocol_ip_register_segmentation_offload_notification(nw_protocol *a1, int a2)
{
  v2 = a1;
  v52 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a1)
    {
      default_input_handler = a1->default_input_handler;
      if (!default_input_handler)
      {
        return;
      }

      callbacks = default_input_handler->callbacks;
      if (!callbacks)
      {
        return;
      }

      unregister_notification = callbacks->unregister_notification;
      if (!unregister_notification)
      {
        return;
      }

      handle = default_input_handler->handle;
      v12 = a1->default_input_handler;
      if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v12 = *default_input_handler[1].flow_id) != 0)
      {
        v15 = v12[1].callbacks;
        v13 = 0;
        if (v15)
        {
          v12[1].callbacks = (&v15->add_input_handler + 1);
        }
      }

      else
      {
        v13 = 1;
      }

      v25 = a1->handle;
      v26 = a1;
      if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v26 = *a1[1].flow_id) != 0)
      {
        v27 = v26[1].callbacks;
        if (v27)
        {
          v26[1].callbacks = (&v27->add_input_handler + 1);
        }

        unregister_notification(default_input_handler, a1, 14);
        v28 = v2->handle;
        if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
        {
          v29 = v2[1].callbacks;
          if (v29)
          {
            v30 = (v29 - 1);
            v2[1].callbacks = v30;
            if (!v30)
            {
              v31 = *v2[1].flow_id;
              if (v31)
              {
                *v2[1].flow_id = 0;
                v31[2](v31);
                _Block_release(v31);
              }

              if (v2[1].flow_id[8])
              {
                v32 = *v2[1].flow_id;
                if (v32)
                {
                  _Block_release(v32);
                }
              }

              free(v2);
            }
          }
        }
      }

      else
      {
        unregister_notification(default_input_handler, a1, 14);
      }

      if (v13)
      {
        return;
      }

      v33 = default_input_handler->handle;
      if (v33 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_64;
      }

      if (v33 != &nw_protocol_ref_counted_additional_handle)
      {
        return;
      }

      goto LABEL_63;
    }

    __nwlog_obj();
    *buf = 136446210;
    v49 = "__nw_protocol_get_input_handler";
    v39 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v39, &type, &v46))
    {
      goto LABEL_96;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v46 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v41, type);
        if (backtrace_string)
        {
          if (v43)
          {
            *buf = 136446466;
            v49 = "__nw_protocol_get_input_handler";
            v50 = 2082;
            v51 = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v39)
          {
            return;
          }

LABEL_97:
          v38 = v39;
LABEL_72:
          free(v38);
          return;
        }

LABEL_93:
        if (!v43)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v49 = "__nw_protocol_get_input_handler";
        v44 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_95;
      }

      goto LABEL_91;
    }

LABEL_83:
    v41 = __nwlog_obj();
    v42 = type;
    if (!os_log_type_enabled(v41, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v49 = "__nw_protocol_get_input_handler";
    v44 = "%{public}s called with null protocol";
LABEL_95:
    _os_log_impl(&dword_181A37000, v41, v42, v44, buf, 0xCu);
    goto LABEL_96;
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v49 = "__nw_protocol_get_input_handler";
    v39 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v39, &type, &v46))
    {
      goto LABEL_96;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v46 == 1)
      {
        v40 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v41, type);
        if (v40)
        {
          if (v43)
          {
            *buf = 136446466;
            v49 = "__nw_protocol_get_input_handler";
            v50 = 2082;
            v51 = v40;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
LABEL_96:
          if (!v39)
          {
            return;
          }

          goto LABEL_97;
        }

        goto LABEL_93;
      }

LABEL_91:
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v49 = "__nw_protocol_get_input_handler";
      v44 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_95;
    }

    goto LABEL_83;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    return;
  }

  v4 = default_input_handler->callbacks;
  if (!v4)
  {
    return;
  }

  register_notification = v4->register_notification;
  if (!register_notification)
  {
    return;
  }

  v6 = default_input_handler->handle;
  v7 = a1->default_input_handler;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *default_input_handler[1].flow_id) != 0)
  {
    v14 = v7[1].callbacks;
    v8 = 0;
    if (v14)
    {
      v7[1].callbacks = (&v14->add_input_handler + 1);
    }
  }

  else
  {
    v8 = 1;
  }

  v16 = a1->handle;
  v17 = a1;
  if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *a1[1].flow_id) != 0)
  {
    v18 = v17[1].callbacks;
    if (v18)
    {
      v17[1].callbacks = (&v18->add_input_handler + 1);
    }

    register_notification(default_input_handler, a1, 14, 0, 0);
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
          v22 = *v2[1].flow_id;
          if (v22)
          {
            *v2[1].flow_id = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v2[1].flow_id[8])
          {
            v23 = *v2[1].flow_id;
            if (v23)
            {
              _Block_release(v23);
            }
          }

          free(v2);
        }
      }
    }
  }

  else
  {
    register_notification(default_input_handler, a1, 14, 0, 0);
  }

  if (v8)
  {
    return;
  }

  v24 = default_input_handler->handle;
  if (v24 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_64;
  }

  if (v24 != &nw_protocol_ref_counted_additional_handle)
  {
    return;
  }

LABEL_63:
  default_input_handler = *default_input_handler[1].flow_id;
  if (!default_input_handler)
  {
    return;
  }

LABEL_64:
  v34 = default_input_handler[1].callbacks;
  if (v34)
  {
    v35 = (v34 - 1);
    default_input_handler[1].callbacks = v35;
    if (!v35)
    {
      v36 = *default_input_handler[1].flow_id;
      if (v36)
      {
        *default_input_handler[1].flow_id = 0;
        v36[2](v36);
        _Block_release(v36);
      }

      if (default_input_handler[1].flow_id[8])
      {
        v37 = *default_input_handler[1].flow_id;
        if (v37)
        {
          _Block_release(v37);
        }
      }

      v38 = default_input_handler;
      goto LABEL_72;
    }
  }
}

uint64_t nw_path_flow_registration_copy_assigned_protocol(NWConcrete_nw_path *a1, NWConcrete_nw_path_flow_registration *a2)
{
  v2 = nw_path_copy_flow_for_registration(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = _nw_path_flow_copy_assigned_protocol(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _nw_path_flow_copy_assigned_protocol(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v4 = *(v1 + 4);
  v3 = *(v1 + 5);
  swift_unknownObjectRetain();

  if (!v4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 336))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v6;
}

BOOL nw_endpoint_flow_attach_channel_protocol(void *a1, uint64_t a2, int a3)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = nw_endpoint_handler_copy_flow(v5);
  if ((*(v6 + 33) & 0x40) != 0)
  {
    *uu = 0;
    v148 = 0;
    v127 = 0;
    v13 = nw_endpoint_flow_copy_path(v5);
    v123 = v13;
    if ((nw_path_flow_registration_get_nexus_instance(v13, *(v6 + 104), uu, &v127) & 1) == 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v5))
      {
        v43 = 0;
        goto LABEL_120;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v28 = gconnectionLogObj;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_endpoint_handler_get_id_string(v5);
        v30 = nw_endpoint_handler_dry_run_string(v5);
        v31 = nw_endpoint_handler_copy_endpoint(v5);
        v32 = v31;
        if (v31)
        {
          logging_description = _nw_endpoint_get_logging_description(v31);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v50 = nw_endpoint_handler_state_string(v5);
        v51 = nw_endpoint_handler_mode_string(v5);
        v52 = nw_endpoint_handler_copy_current_path(v5);
        *buf = 136447746;
        v131 = "nw_endpoint_flow_attach_channel_protocol";
        v132 = 2082;
        v133 = id_string;
        v134 = 2082;
        v135 = v30;
        v136 = 2082;
        v137 = logging_description;
        v138 = 2082;
        v139 = v50;
        v140 = 2082;
        v141 = v51;
        v142 = 2114;
        v143 = v52;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nexus is not ready", buf, 0x48u);
      }

      v43 = 0;
LABEL_119:
      v13 = v123;
LABEL_120:

      goto LABEL_121;
    }

    v146 = 0uLL;
    v126 = 0;
    nw_path_flow_registration_get_id(*(v6 + 104), &v146);
    v14 = _nw_path_copy_flow_for_registration(v13, &v146);
    v122 = v14;
    if (!v14)
    {
      if ((nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v34 = gconnectionLogObj;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = nw_endpoint_handler_get_id_string(v5);
          v36 = nw_endpoint_handler_dry_run_string(v5);
          v37 = nw_endpoint_handler_copy_endpoint(v5);
          v38 = v37;
          if (v37)
          {
            v39 = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            v39 = "<NULL>";
          }

          v82 = nw_endpoint_handler_state_string(v5);
          v83 = nw_endpoint_handler_mode_string(v5);
          v84 = nw_endpoint_handler_copy_current_path(v5);
          *buf = 136447746;
          v131 = "nw_endpoint_flow_attach_channel_protocol";
          v132 = 2082;
          v133 = v35;
          v134 = 2082;
          v135 = v36;
          v136 = 2082;
          v137 = v39;
          v138 = 2082;
          v139 = v82;
          v140 = 2082;
          v141 = v83;
          v142 = 2114;
          v143 = v84;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] unable to find flow", buf, 0x48u);
        }
      }

      v43 = 0;
      goto LABEL_118;
    }

    v15 = v14;
    nexus_key = _nw_path_flow_get_nexus_key(v15, &v126);

    v124 = 0;
    v125 = 0;
    HIDWORD(v125) = nw_path_flow_registration_can_support_user_packet_pool(v123, *(v6 + 104));
    if (nw_path_flow_registration_should_use_event_ring(v123, *(v6 + 104)))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    BYTE4(v125) = BYTE4(v125) & 0xFD | v17;
    v124 = nexus_key;
    LODWORD(v125) = 16;
    v121 = nw_endpoint_handler_copy_parameters(v5);
    v18 = nw_parameters_copy_context(v121);
    v19 = nw_channel_create_with_attributes(v18, uu, v127, &v124);
    v20 = *(v6 + 113);
    *(v6 + 113) = v19;

    if (!*(v6 + 113))
    {
      if ((nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v44 = gconnectionLogObj;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = nw_endpoint_handler_get_id_string(v5);
          v46 = nw_endpoint_handler_dry_run_string(v5);
          v47 = nw_endpoint_handler_copy_endpoint(v5);
          v48 = v47;
          if (v47)
          {
            v49 = _nw_endpoint_get_logging_description(v47);
          }

          else
          {
            v49 = "<NULL>";
          }

          v90 = nw_endpoint_handler_state_string(v5);
          v91 = nw_endpoint_handler_mode_string(v5);
          v92 = nw_endpoint_handler_copy_current_path(v5);
          *buf = 136447746;
          v131 = "nw_endpoint_flow_attach_channel_protocol";
          v132 = 2082;
          v133 = v45;
          v134 = 2082;
          v135 = v46;
          v136 = 2082;
          v137 = v49;
          v138 = 2082;
          v139 = v90;
          v140 = 2082;
          v141 = v91;
          v142 = 2114;
          v143 = v92;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to open channel", buf, 0x48u);
        }
      }

      goto LABEL_116;
    }

    minimize_logging = nw_endpoint_handler_get_minimize_logging(v5);
    logging_disabled = nw_endpoint_handler_get_logging_disabled(v5);
    if (minimize_logging)
    {
      if (logging_disabled)
      {
LABEL_49:
        nw_channel_set_close_automatically(*(v6 + 113), 1);
        nw_channel_set_defer_input_available(*(v6 + 113), 1);
        nw_channel_set_protocol_level(*(v6 + 113), a3);
        if (a3 == 2)
        {
          if (nw_protocol_ip_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
          }

          if (nw_parameters_has_protocol_in_stack(v121, &nw_protocol_ip_identifier::identifier))
          {
            goto LABEL_59;
          }

          v58 = *(v6 + 95);
          if (v58)
          {
            if (nw_protocol_ip_identifier::onceToken != -1)
            {
              v116 = *(v6 + 95);
              dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
              v58 = v116;
            }

            if (nw_protocols_are_equal(v58, &nw_protocol_ip_identifier::identifier))
            {
LABEL_59:
              v59 = nw_endpoint_handler_copy_endpoint(v5);
              address_family = nw_endpoint_get_address_family(v59);

              v61 = *(v6 + 104);
              if (nw_protocol_ip_identifier::onceToken != -1)
              {
                dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
              }

              if (address_family == 2)
              {
                v62 = 1;
              }

              else
              {
                v62 = 2;
              }

              stats_region = nw_channel_get_stats_region(*(v6 + 113), v62);
              nw_path_flow_registration_set_stats_region(v61, 2, &nw_protocol_ip_identifier::identifier, stats_region);
            }
          }
        }

        else
        {
          if (a3 == 1)
          {
            nw_channel_set_no_close_delay(*(v6 + 113));
            goto LABEL_75;
          }

          if ((a3 & 0xFFFFFFFE) != 2)
          {
            goto LABEL_75;
          }
        }

        v64 = nw_protocol_tcp_identifier();
        if (nw_parameters_has_protocol_in_stack(v121, v64))
        {
          v65 = *(v6 + 104);
          v66 = nw_protocol_tcp_identifier();
          v67 = 3;
LABEL_74:
          v68 = nw_channel_get_stats_region(*(v6 + 113), v67);
          nw_path_flow_registration_set_stats_region(v65, 3, v66, v68);
          goto LABEL_75;
        }

        if (nw_protocol_udp_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
        }

        if (nw_parameters_has_protocol_in_stack(v121, &nw_protocol_udp_identifier::identifier))
        {
          v65 = *(v6 + 104);
          if (nw_protocol_udp_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
          }

          v66 = &nw_protocol_udp_identifier::identifier;
          v67 = 4;
          goto LABEL_74;
        }

        if (nw_parameters_get_upper_transport_protocol(v121) == 253)
        {
          upper_transport_protocol_identifier = nw_parameters_get_upper_transport_protocol_identifier(v121);
          v86 = *(v6 + 104);
          v87 = nw_channel_get_stats_region(*(v6 + 113), 5);
          nw_path_flow_registration_set_stats_region(v86, 3, upper_transport_protocol_identifier, v87);
          v88 = *(v6 + 104);
          if (nw_protocol_udp_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
          }

          v89 = nw_channel_get_stats_region(*(v6 + 113), 4);
          nw_path_flow_registration_set_stats_region(v88, 3, &nw_protocol_udp_identifier::identifier, v89);
        }

LABEL_75:
        protocol_handler = nw_channel_get_protocol_handler(*(v6 + 113));
        if (protocol_handler)
        {
          if (a2)
          {
            if (protocol_handler != a2)
            {
              v70 = protocol_handler[3];
              if (v70 && *v70)
              {
                v71 = nw_protocol_add_input_handler(protocol_handler, a2);
                v43 = v71;
                if (a3 != 1 && v71)
                {
                  v43 = nw_channel_set_path_flow_registration(*(v6 + 113), v123, *(v6 + 104));
                  nw_channel_configure_flow_registration(*(v6 + 113), *(v6 + 104), v121);
                }

                goto LABEL_117;
              }

              v76 = protocol_handler;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v77 = gLogObj;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v131 = "nw_protocol_utilities_add_input_handler";
                v132 = 2048;
                v133 = v76;
                _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
              }

LABEL_116:
              v43 = 0;
LABEL_117:

LABEL_118:
              goto LABEL_119;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v72 = gLogObj;
            *buf = 136446466;
            v131 = "nw_protocol_utilities_add_input_handler";
            v132 = 2048;
            v133 = a2;
            v73 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v128 = 0;
            if (!__nwlog_fault(v73, &type, &v128))
            {
              goto LABEL_113;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v74 = __nwlog_obj();
              v75 = type;
              if (os_log_type_enabled(v74, type))
              {
                *buf = 136446466;
                v131 = "nw_protocol_utilities_add_input_handler";
                v132 = 2048;
                v133 = a2;
                _os_log_impl(&dword_181A37000, v74, v75, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
              }
            }

            else
            {
              if (v128 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v79 = __nwlog_obj();
                v80 = type;
                v81 = os_log_type_enabled(v79, type);
                if (backtrace_string)
                {
                  if (v81)
                  {
                    *buf = 136446722;
                    v131 = "nw_protocol_utilities_add_input_handler";
                    v132 = 2048;
                    v133 = a2;
                    v134 = 2082;
                    v135 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
                  }

                  free(backtrace_string);
                }

                else
                {
                  if (v81)
                  {
                    *buf = 136446466;
                    v131 = "nw_protocol_utilities_add_input_handler";
                    v132 = 2048;
                    v133 = a2;
                    _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
                  }
                }

                goto LABEL_113;
              }

              v74 = __nwlog_obj();
              v93 = type;
              if (os_log_type_enabled(v74, type))
              {
                *buf = 136446466;
                v131 = "nw_protocol_utilities_add_input_handler";
                v132 = 2048;
                v133 = a2;
                _os_log_impl(&dword_181A37000, v74, v93, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
              }
            }

LABEL_113:
            if (!v73)
            {
              goto LABEL_116;
            }

            v94 = v73;
LABEL_115:
            free(v94);
            goto LABEL_116;
          }

          v106 = __nwlog_obj();
          *buf = 136446210;
          v131 = "nw_protocol_utilities_add_input_handler";
          v103 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v128 = 0;
          if (__nwlog_fault(v103, &type, &v128))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v104 = __nwlog_obj();
              v107 = type;
              if (os_log_type_enabled(v104, type))
              {
                *buf = 136446210;
                v131 = "nw_protocol_utilities_add_input_handler";
                _os_log_impl(&dword_181A37000, v104, v107, "%{public}s called with null input_protocol", buf, 0xCu);
              }

LABEL_154:

              goto LABEL_161;
            }

            if (v128 != 1)
            {
              v104 = __nwlog_obj();
              v115 = type;
              if (os_log_type_enabled(v104, type))
              {
                *buf = 136446210;
                v131 = "nw_protocol_utilities_add_input_handler";
                _os_log_impl(&dword_181A37000, v104, v115, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_154;
            }

            v108 = __nw_create_backtrace_string();
            v109 = __nwlog_obj();
            v112 = type;
            v113 = os_log_type_enabled(v109, type);
            if (v108)
            {
              if (v113)
              {
                *buf = 136446466;
                v131 = "nw_protocol_utilities_add_input_handler";
                v132 = 2082;
                v133 = v108;
                _os_log_impl(&dword_181A37000, v109, v112, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

LABEL_148:

              free(v108);
              goto LABEL_161;
            }

            if (v113)
            {
              *buf = 136446210;
              v131 = "nw_protocol_utilities_add_input_handler";
              _os_log_impl(&dword_181A37000, v109, v112, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_160;
          }
        }

        else
        {
          v102 = __nwlog_obj();
          *buf = 136446210;
          v131 = "nw_protocol_utilities_add_input_handler";
          v103 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v128 = 0;
          if (__nwlog_fault(v103, &type, &v128))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v104 = __nwlog_obj();
              v105 = type;
              if (os_log_type_enabled(v104, type))
              {
                *buf = 136446210;
                v131 = "nw_protocol_utilities_add_input_handler";
                _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null protocol", buf, 0xCu);
              }

              goto LABEL_154;
            }

            if (v128 != 1)
            {
              v104 = __nwlog_obj();
              v114 = type;
              if (os_log_type_enabled(v104, type))
              {
                *buf = 136446210;
                v131 = "nw_protocol_utilities_add_input_handler";
                _os_log_impl(&dword_181A37000, v104, v114, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_154;
            }

            v108 = __nw_create_backtrace_string();
            v109 = __nwlog_obj();
            v110 = type;
            v111 = os_log_type_enabled(v109, type);
            if (v108)
            {
              if (v111)
              {
                *buf = 136446466;
                v131 = "nw_protocol_utilities_add_input_handler";
                v132 = 2082;
                v133 = v108;
                _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_148;
            }

            if (v111)
            {
              *buf = 136446210;
              v131 = "nw_protocol_utilities_add_input_handler";
              _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }

LABEL_160:
          }
        }

LABEL_161:
        if (!v103)
        {
          goto LABEL_116;
        }

        v94 = v103;
        goto LABEL_115;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v96 = gconnectionLogObj;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        v120 = nw_endpoint_handler_get_id_string(v5);
        v118 = nw_endpoint_handler_dry_run_string(v5);
        v97 = nw_endpoint_handler_copy_endpoint(v5);
        v98 = nw_endpoint_get_logging_description(v97);
        v99 = nw_endpoint_handler_state_string(v5);
        v100 = nw_endpoint_handler_mode_string(v5);
        v101 = nw_endpoint_handler_copy_current_path(v5);
        *buf = 136448002;
        v131 = "nw_endpoint_flow_attach_channel_protocol";
        v132 = 2082;
        v133 = v120;
        v134 = 2082;
        v135 = v118;
        v136 = 2082;
        v137 = v98;
        v138 = 2082;
        v139 = v99;
        v140 = 2082;
        v141 = v100;
        v142 = 2114;
        v143 = v101;
        v144 = 1024;
        v145 = a3;
        v23 = v96;
        _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] opened channel at level %u", buf, 0x4Eu);
      }

      else
      {
        v23 = v96;
      }
    }

    else
    {
      if (logging_disabled)
      {
        goto LABEL_49;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = nw_endpoint_handler_get_id_string(v5);
        v25 = nw_endpoint_handler_dry_run_string(v5);
        v26 = nw_endpoint_handler_copy_endpoint(v5);
        v27 = v26;
        v119 = v25;
        if (v26)
        {
          v117 = _nw_endpoint_get_logging_description(v26);
        }

        else
        {
          v117 = "<NULL>";
        }

        v53 = nw_endpoint_handler_state_string(v5);
        v54 = a2;
        v55 = v23;
        v56 = nw_endpoint_handler_mode_string(v5);
        v57 = nw_endpoint_handler_copy_current_path(v5);
        *buf = 136448002;
        v131 = "nw_endpoint_flow_attach_channel_protocol";
        v132 = 2082;
        v133 = v24;
        v134 = 2082;
        v135 = v119;
        v136 = 2082;
        v137 = v117;
        v138 = 2082;
        v139 = v53;
        v140 = 2082;
        v141 = v56;
        v23 = v55;
        a2 = v54;
        v142 = 2114;
        v143 = v57;
        v144 = 1024;
        v145 = a3;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] opened channel at level %u", buf, 0x4Eu);
      }
    }

    goto LABEL_49;
  }

  if ((nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = nw_endpoint_handler_get_id_string(v5);
      v9 = nw_endpoint_handler_dry_run_string(v5);
      v10 = nw_endpoint_handler_copy_endpoint(v5);
      v11 = v10;
      if (v10)
      {
        v12 = _nw_endpoint_get_logging_description(v10);
      }

      else
      {
        v12 = "<NULL>";
      }

      v40 = nw_endpoint_handler_state_string(v5);
      v41 = nw_endpoint_handler_mode_string(v5);
      v42 = nw_endpoint_handler_copy_current_path(v5);
      *buf = 136447746;
      v131 = "nw_endpoint_flow_attach_channel_protocol";
      v132 = 2082;
      v133 = v8;
      v134 = 2082;
      v135 = v9;
      v136 = 2082;
      v137 = v12;
      v138 = 2082;
      v139 = v40;
      v140 = 2082;
      v141 = v41;
      v142 = 2114;
      v143 = v42;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow does not use channels", buf, 0x48u);
    }
  }

  v43 = 0;
LABEL_121:

  return v43;
}

uint64_t nw_path_flow_registration_get_id(void *a1, _OWORD *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_path_flow_registration_get_id";
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
          v18 = "nw_path_flow_registration_get_id";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null registration", buf, 0xCu);
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
            v18 = "nw_path_flow_registration_get_id";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null registration, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_path_flow_registration_get_id";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null registration, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_path_flow_registration_get_id";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null registration, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_3;
  }

  if (!uuid_is_null(v3 + 32))
  {
    *a2 = v4[2];
    v5 = 1;
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_5:

  return v5;
}

uint64_t nw_path_flow_registration_can_support_user_packet_pool(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = nw_path_copy_flow_for_registration(v3, v4);
    v6 = v5;
    if (v5)
    {
      can_support_user_packet_pool = _nw_path_flow_nexus_can_support_user_packet_pool(v5);
    }

    else
    {
      can_support_user_packet_pool = 0;
    }

    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_path_flow_registration_can_support_user_packet_pool";
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
        v20 = "nw_path_flow_registration_can_support_user_packet_pool";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null path", buf, 0xCu);
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
          v20 = "nw_path_flow_registration_can_support_user_packet_pool";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_can_support_user_packet_pool";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_can_support_user_packet_pool";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

  can_support_user_packet_pool = 0;
LABEL_6:

  return can_support_user_packet_pool;
}

uint64_t nw_path_flow_registration_should_use_event_ring(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = nw_path_copy_flow_for_registration(v3, v4);
    v6 = v5;
    if (v5)
    {
      should_use_event_ring = _nw_path_flow_nexus_should_use_event_ring(v5);
    }

    else
    {
      should_use_event_ring = 0;
    }

    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_path_flow_registration_should_use_event_ring";
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
        v20 = "nw_path_flow_registration_should_use_event_ring";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null path", buf, 0xCu);
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
          v20 = "nw_path_flow_registration_should_use_event_ring";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_should_use_event_ring";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_should_use_event_ring";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

  should_use_event_ring = 0;
LABEL_6:

  return should_use_event_ring;
}

BOOL nw_path_get_ipv4_network_signature(void *a1, uint64_t a2, _BYTE *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      v30 = "nw_path_get_ipv4_network_signature";
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
    v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null signature, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      v30 = "nw_path_get_ipv4_network_signature";
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
    v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
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
        v30 = "nw_path_get_ipv4_network_signature";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null signature_len, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v22)
    {
      *buf = 136446466;
      v30 = "nw_path_get_ipv4_network_signature";
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
    ipv4_network_signature = 0;
    goto LABEL_57;
  }

  ipv4_network_signature = _nw_path_get_ipv4_network_signature(v6, a2, a3);
LABEL_57:

  return ipv4_network_signature;
}

BOOL _nw_path_get_ipv4_network_signature(char *a1, uint64_t a2, _BYTE *a3)
{
  if (a1)
  {
    v5 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v6 = a1;
    swift_beginAccess();
    v7 = *(v5 + 1);
    v8 = v7 && (*(v7 + 161) & 1) == 0 && sub_181CA5B7C(a2, a3, *(v7 + 140), *(v7 + 148), *(v7 + 156) | (*(v7 + 160) << 32));
    swift_endAccess();
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t _nw_tcp_options_get_persist_timeout(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *(v3 + 8);

    return v5;
  }

  __break(1u);
  return result;
}

BOOL nw_path_get_rtt_values(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    if (a5)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      memset(buf, 0, sizeof(buf));
      v11 = nw_path_fillout_route_stats(v9, buf, a5);
      if (v11)
      {
        if (a2)
        {
          *a2 = DWORD1(v33);
        }

        if (a3)
        {
          *a3 = DWORD2(v33);
        }

        if (a4)
        {
          *a4 = HIDWORD(v33);
        }
      }

      else
      {
        if (a2)
        {
          *a2 = 0;
        }

        if (a3)
        {
          *a3 = 0;
        }

        if (a4)
        {
          *a4 = 0;
        }

        *a5 = 0;
      }

      goto LABEL_17;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_get_rtt_values";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v14, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_rtt_values";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null route_flags", buf, 0xCu);
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v26 != 1)
      {
        v15 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_rtt_values";
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null route_flags, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_rtt_values";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null route_flags, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v23)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_get_rtt_values";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null route_flags, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_37;
    }
  }

  else
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_get_rtt_values";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v14, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_rtt_values";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v26 != 1)
      {
        v15 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_rtt_values";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_rtt_values";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_get_rtt_values";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_37:

      free(backtrace_string);
    }
  }

LABEL_50:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_17:

  return v11;
}

uint64_t nw_path_flow_registration_get_stats_region(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v6 = 0;
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_flow_registration_get_stats_region";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_stats_region";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null flow_registration", buf, 0xCu);
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
          v24 = "nw_path_flow_registration_get_stats_region";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v8)
        {
LABEL_46:
          v4 = 0;
          v3 = v6;
          goto LABEL_10;
        }

LABEL_45:
        free(v8);
        goto LABEL_46;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_stats_region";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_stats_region";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (!a2)
  {
    v6 = v3;
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_flow_registration_get_stats_region";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_stats_region";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null protocol_identifier", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v9, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_path_flow_registration_get_stats_region";
          v25 = 2082;
          v26 = v16;
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null protocol_identifier, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        if (!v8)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_stats_region";
        _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null protocol_identifier, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_stats_region";
        _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null protocol_identifier, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  if (v3[13] == a2)
  {
    v4 = v3[16];
  }

  else if (v3[12] == a2)
  {
    v4 = v3[15];
  }

  else if (v3[11] == a2)
  {
    v4 = v3[14];
  }

  else
  {
    v4 = 0;
  }

LABEL_10:

  return v4;
}

uint64_t nw_protocol_connect(void *a1, uint64_t a2)
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
          v53 = "__nw_protocol_connect";
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
                v53 = "__nw_protocol_connect";
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
                  v53 = "__nw_protocol_connect";
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
                v53 = "__nw_protocol_connect";
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
                v53 = "__nw_protocol_connect";
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

    v17 = *(v10 + 24);
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
    v53 = "__nw_protocol_connect";
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
        v53 = "__nw_protocol_connect";
        v54 = 2082;
        v55 = v35;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
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
        v53 = "__nw_protocol_connect";
        v54 = 2082;
        v55 = v48;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
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
        v53 = "__nw_protocol_connect";
        v54 = 2082;
        v55 = v49;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
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
        v53 = "__nw_protocol_connect";
        v54 = 2082;
        v55 = v43;
        v56 = 2048;
        v57 = v3;
        v58 = 2082;
        v59 = v41;
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
  v53 = "__nw_protocol_connect";
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
        v53 = "__nw_protocol_connect";
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
          v53 = "__nw_protocol_connect";
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
        v53 = "__nw_protocol_connect";
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
        v53 = "__nw_protocol_connect";
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
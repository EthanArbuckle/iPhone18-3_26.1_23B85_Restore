void __nw_protocol_copy_ws_definition_block_invoke_30(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v1 = a1;
    v2 = __nwlog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(*(v1 + 40) + 8) + 275;
      v4 = *(v1 + 48);
      v5 = 136446722;
      v6 = "nw_protocol_copy_ws_definition_block_invoke";
      v7 = 2082;
      v8 = v3;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s marking failed with error code %d", &v5, 0x1Cu);
    }

    a1 = v1;
  }

  nw_framer_mark_failed_with_error(*(a1 + 32), *(a1 + 48));
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 4 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_21(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 2 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 8 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t __nw_protocol_copy_ws_definition_block_invoke_14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 2 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t __Block_byref_object_copy__4524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void nw_protocol_instance_registrar_add_wildcard_edge_for_instance(void *a1, void *a2, uint64_t a3, void *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v97 = a4;
  if (!v7)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v37, &type, &v98))
    {
      goto LABEL_145;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null registrar", buf, 0xCu);
      }
    }

    else if (v98 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v45 = type;
      v46 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
          v102 = 2082;
          v103 = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null registrar, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_145:
        if (!v37)
        {
          goto LABEL_40;
        }

LABEL_146:
        free(v37);
        goto LABEL_40;
      }

      if (v46)
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null registrar, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v60, "%{public}s called with null registrar, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_144:

    goto LABEL_145;
  }

  if (!v8)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v37, &type, &v98))
    {
      goto LABEL_145;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v98 != 1)
    {
      v38 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v61, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v47 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v48 = type;
    v49 = os_log_type_enabled(v38, type);
    if (!v47)
    {
      if (v49)
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v48, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v49)
    {
      *buf = 136446466;
      v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
      v102 = 2082;
      v103 = v47;
      _os_log_impl(&dword_181A37000, v38, v48, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_70;
  }

  if (!*(a3 + 16))
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v37, &type, &v98))
    {
      goto LABEL_145;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v43, "%{public}s called with null protocol->identifier", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v98 != 1)
    {
      v38 = __nwlog_obj();
      v62 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v62, "%{public}s called with null protocol->identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v47 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v50 = type;
    v51 = os_log_type_enabled(v38, type);
    if (!v47)
    {
      if (v51)
      {
        *buf = 136446210;
        v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
        _os_log_impl(&dword_181A37000, v38, v50, "%{public}s called with null protocol->identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v51)
    {
      *buf = 136446466;
      v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
      v102 = 2082;
      v103 = v47;
      _os_log_impl(&dword_181A37000, v38, v50, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_70:

    free(v47);
    if (!v37)
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  v9 = *(a3 + 24);
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = *(v9 + 136);
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = v10(a3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a3 + 16);
    *buf = 136447234;
    v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
    v102 = 2112;
    v103 = v7;
    v104 = 2048;
    v105 = a3;
    v106 = 2080;
    v107 = v13;
    v108 = 2112;
    v109 = v11;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s has endpoint %@, adding edges", buf, 0x34u);
  }

  if (!v11)
  {
LABEL_29:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a3 + 16);
      *buf = 136446978;
      v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
      v102 = 2112;
      v103 = v7;
      v104 = 2048;
      v105 = a3;
      v106 = 2080;
      v107 = v34;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s does not have endpoint, cannot add edges", buf, 0x2Au);
    }

    goto LABEL_39;
  }

  v14 = *(a3 + 24);
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = *(v14 + 112);
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = v15(a3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a3 + 16);
    *buf = 136447234;
    v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
    v102 = 2112;
    v103 = v7;
    v104 = 2048;
    v105 = a3;
    v106 = 2080;
    v107 = v18;
    v108 = 2112;
    v109 = v16;
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s has parameters %@, adding edges", buf, 0x34u);
  }

  if (!v16)
  {
LABEL_31:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a3 + 16);
      *buf = 136446978;
      v101 = "nw_protocol_instance_registrar_add_wildcard_edge_for_instance";
      v102 = 2112;
      v103 = v7;
      v104 = 2048;
      v105 = a3;
      v106 = 2080;
      v107 = v35;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s does not have parameters, cannot add edges", buf, 0x2Au);
    }

    goto LABEL_38;
  }

  v95 = v7;
  v19 = v8;
  v96 = v97;
  v20 = v16;
  v94 = v19;
  if (!*(a3 + 16))
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v53 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v53, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v54 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v54, type))
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null protocol->identifier", buf, 0xCu);
        }
      }

      else if (v98 == 1)
      {
        v67 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v68 = type;
        v69 = os_log_type_enabled(v54, type);
        if (v67)
        {
          if (v69)
          {
            *buf = 136446466;
            v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
            v102 = 2082;
            v103 = v67;
            _os_log_impl(&dword_181A37000, v54, v68, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v67);
          goto LABEL_156;
        }

        if (v69)
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v54, v68, "%{public}s called with null protocol->identifier, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v54 = __nwlog_obj();
        v81 = type;
        if (os_log_type_enabled(v54, type))
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v54, v81, "%{public}s called with null protocol->identifier, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_156:
    if (v53)
    {
      free(v53);
    }

    goto LABEL_37;
  }

  v21 = v19;
  is_registered = _nw_endpoint_is_registered(v21);

  v23 = v21;
  if (is_registered)
  {
    goto LABEL_19;
  }

  v24 = _nw_parameters_copy_context(v20);
  v25 = v24;
  if (!v24)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v71 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v71, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v72 = __nwlog_obj();
        v73 = type;
        if (os_log_type_enabled(v72, type))
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v98 == 1)
      {
        v85 = __nw_create_backtrace_string();
        v72 = __nwlog_obj();
        v86 = type;
        v87 = os_log_type_enabled(v72, type);
        if (v85)
        {
          if (v87)
          {
            *buf = 136446466;
            v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
            v102 = 2082;
            v103 = v85;
            _os_log_impl(&dword_181A37000, v72, v86, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v85);
          goto LABEL_173;
        }

        if (v87)
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v72, v86, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v72 = __nwlog_obj();
        v90 = type;
        if (os_log_type_enabled(v72, type))
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v72, v90, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_173:
    if (v71)
    {
      free(v71);
    }

    goto LABEL_36;
  }

  v23 = nw_context_copy_registered_endpoint_internal(v24, v21, 0);

  if (gLogDatapath == 1)
  {
    v75 = __nwlog_obj();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v76 = *(a3 + 16);
      *buf = 136448002;
      v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v102 = 2112;
      v103 = v95;
      v104 = 2048;
      v105 = a3;
      v106 = 2080;
      v107 = v76;
      v108 = 2112;
      v109 = v21;
      v110 = 2048;
      v111 = v21;
      v112 = 2112;
      v113 = v23;
      v114 = 2048;
      v115 = v23;
      _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s replacing unregistered endpoint %@ (%p) with endpoint %@ (%p)", buf, 0x52u);
    }
  }

LABEL_19:
  v26 = v96;
  v27 = v26;
  if (!v26)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_endpoint_is_registered";
    log = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    v57 = log;
    if (!__nwlog_fault(log, &type, &v98))
    {
      goto LABEL_162;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        v101 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v98 == 1)
    {
      v79 = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v91 = type;
      v80 = os_log_type_enabled(v58, type);
      if (v79)
      {
        if (v80)
        {
          *buf = 136446466;
          v101 = "nw_endpoint_is_registered";
          v102 = 2082;
          v103 = v79;
          _os_log_impl(&dword_181A37000, v58, v91, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        goto LABEL_161;
      }

      if (v80)
      {
        *buf = 136446210;
        v101 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v58, v91, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v58 = __nwlog_obj();
      v88 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        v101 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v58, v88, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_161:
    v57 = log;
LABEL_162:
    if (v57)
    {
      free(v57);
    }

    goto LABEL_21;
  }

  v28 = _nw_endpoint_is_registered(v26);

  if (v28)
  {
    goto LABEL_24;
  }

LABEL_21:
  v29 = _nw_parameters_copy_context(v20);
  v30 = v29;
  if (!v29)
  {
    v63 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v64 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v64, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v65 = __nwlog_obj();
        v66 = type;
        if (os_log_type_enabled(v65, type))
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v98 == 1)
      {
        v82 = __nw_create_backtrace_string();
        v65 = __nwlog_obj();
        v83 = type;
        v84 = os_log_type_enabled(v65, type);
        if (v82)
        {
          if (v84)
          {
            *buf = 136446466;
            v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
            v102 = 2082;
            v103 = v82;
            _os_log_impl(&dword_181A37000, v65, v83, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v82);
          goto LABEL_168;
        }

        if (v84)
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v65, v83, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v65 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v65, type))
        {
          *buf = 136446210;
          v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v65, v89, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_168:
    if (v64)
    {
      free(v64);
    }

    goto LABEL_35;
  }

  v31 = nw_context_copy_registered_endpoint_internal(v29, v27, 0);

  if (gLogDatapath == 1)
  {
    loga = __nwlog_obj();
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
    {
      v74 = *(a3 + 16);
      *buf = 136448002;
      v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v102 = 2112;
      v103 = v95;
      v104 = 2048;
      v105 = a3;
      v106 = 2080;
      v107 = v74;
      v108 = 2112;
      v109 = v27;
      v110 = 2048;
      v111 = v27;
      v112 = 2112;
      v113 = v31;
      v114 = 2048;
      v115 = v31;
      _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s replacing unregistered endpoint %@ (%p) with endpoint %@ (%p)", buf, 0x52u);
    }
  }

  v27 = v31;
LABEL_24:
  if (!nw_endpoint_is_equal(v27, v23, 31))
  {
    v32 = nw_endpoint_edge_create(v23, *(a3 + 16), 1);
    nw_endpoint_add_edge(v27, v32);
    if (gLogDatapath == 1)
    {
      v77 = __nwlog_obj();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(a3 + 16);
        *buf = 136447490;
        v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        v102 = 2112;
        v103 = v95;
        v104 = 2048;
        v105 = a3;
        v106 = 2080;
        v107 = v78;
        v108 = 2112;
        v109 = v27;
        v110 = 2112;
        v111 = v23;
        _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s added edge from endpoint %@ to endpoint %@", buf, 0x3Eu);
      }
    }

    goto LABEL_34;
  }

  if (gLogDatapath == 1)
  {
    v32 = __nwlog_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a3 + 16);
      *buf = 136447490;
      v101 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v102 = 2112;
      v103 = v95;
      v104 = 2048;
      v105 = a3;
      v106 = 2080;
      v107 = v33;
      v108 = 2112;
      v109 = v27;
      v110 = 2112;
      v111 = v23;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s source and destination endpoints (%@ -> %@) are the same, skipping", buf, 0x3Eu);
    }

LABEL_34:
  }

LABEL_35:

  v21 = v23;
LABEL_36:

LABEL_37:
LABEL_38:

LABEL_39:
LABEL_40:
}

uint64_t __nw_protocol_instance_registrar_enumerate_instances_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = v1[2];
      if (v3)
      {
        result = nw_protocols_are_equal(*(v2 + 48), *(v3 + 16));
        if (result)
        {
          result = (*(*(v2 + 40) + 16))();
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

void __nw_protocol_instance_registrar_copy_shared_connection_state_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  for (i = *(*(a1 + 32) + 16); i; i = *i)
  {
    if (i[2] == *(a1 + 64))
    {
      if (i[3] || *(a1 + 72) == 1 && (v6 = nw_dictionary_create(), v7 = i[3], i[3] = v6, v7, i[3]))
      {
        *__str = 0u;
        memset(v9, 0, sizeof(v9));
        snprintf(__str, 0x2AuLL, "%p%p", *(a1 + 40), *(a1 + 48));
        v3 = nw_dictionary_copy_value(i[3], __str);
        v4 = *(*(a1 + 56) + 8);
        v5 = *(v4 + 40);
        *(v4 + 40) = v3;
      }
    }
  }
}

BOOL ___ZL21nw_framer_parse_arrayP20NWConcrete_nw_framerP16nw_frame_array_sbbmmPhU13block_pointerFmS3_mbE_block_invoke_135(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nw_frame_unclaimed_length(v3);
  if (*(*(*(a1 + 40) + 8) + 24) >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
  }

  nw_frame_claim(v3, v5, v6, 0);
  if (*(a1 + 56) == 1 && !nw_frame_unclaimed_length(v3))
  {
    v7 = (*(a1 + 48) + 8);
    v8 = *(v3 + 4);
    v9 = *(v3 + 5);
    if (v8)
    {
      v7 = (v8 + 40);
    }

    *v7 = v9;
    *v9 = v8;
    *(v3 + 4) = 0;
    *(v3 + 5) = 0;
    nw_frame_finalize(v3);
  }

  *(*(*(a1 + 40) + 8) + 24) -= v6;
  v10 = *(*(*(a1 + 40) + 8) + 24) != 0;

  return v10;
}

void nw_framer_deliver_input(nw_framer_t framer, const uint8_t *input_buffer, size_t input_length, nw_framer_message_t message, BOOL is_complete)
{
  v5 = is_complete;
  v50 = *MEMORY[0x1E69E9840];
  v9 = framer;
  v10 = message;
  v11 = v10;
  if (!v9)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_framer_deliver_input";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v16, &type, &v44))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v28 = type;
      v29 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v47 = "nw_framer_deliver_input";
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v28, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_89:
        if (!v16)
        {
          goto LABEL_7;
        }

LABEL_90:
        free(v16);
        goto LABEL_7;
      }

      if (v29)
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v28, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v39, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_88:

    goto LABEL_89;
  }

  if (!v10)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_framer_deliver_input";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v16, &type, &v44))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null message", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v44 != 1)
    {
      v17 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v40, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v30 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v17, type);
    if (!v30)
    {
      if (v32)
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v31, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v32)
    {
      *buf = 136446466;
      v47 = "nw_framer_deliver_input";
      v48 = 2082;
      v49 = v30;
      _os_log_impl(&dword_181A37000, v17, v31, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!nw_protocol_metadata_is_framer_message(v10))
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_framer_deliver_input";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v16, &type, &v44))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v44 != 1)
    {
      v17 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v41, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v30 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v33 = type;
    v34 = os_log_type_enabled(v17, type);
    if (!v30)
    {
      if (v34)
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v33, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), no backtrace", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v34)
    {
      *buf = 136446466;
      v47 = "nw_framer_deliver_input";
      v48 = 2082;
      v49 = v30;
      _os_log_impl(&dword_181A37000, v17, v33, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!input_buffer)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_framer_deliver_input";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v16, &type, &v44))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null input_buffer", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v44 != 1)
    {
      v17 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v42, "%{public}s called with null input_buffer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v30 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v35 = type;
    v36 = os_log_type_enabled(v17, type);
    if (!v30)
    {
      if (v36)
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v35, "%{public}s called with null input_buffer, no backtrace", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v36)
    {
      *buf = 136446466;
      v47 = "nw_framer_deliver_input";
      v48 = 2082;
      v49 = v30;
      _os_log_impl(&dword_181A37000, v17, v35, "%{public}s called with null input_buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!input_length)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_framer_deliver_input";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v16, &type, &v44))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null input_length", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v44 != 1)
    {
      v17 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v43, "%{public}s called with null input_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v30 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v37 = type;
    v38 = os_log_type_enabled(v17, type);
    if (!v30)
    {
      if (v38)
      {
        *buf = 136446210;
        v47 = "nw_framer_deliver_input";
        _os_log_impl(&dword_181A37000, v17, v37, "%{public}s called with null input_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_88;
    }

    if (v38)
    {
      *buf = 136446466;
      v47 = "nw_framer_deliver_input";
      v48 = 2082;
      v49 = v30;
      _os_log_impl(&dword_181A37000, v17, v37, "%{public}s called with null input_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_57:

    free(v30);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_90;
  }

  nw_context_assert_queue(v9->context);
  frame = nw_framer_protocol_create_frame(v9, input_length, nw_framer_protocol_inbound_data_finalizer, &v9->inbound_frames, 0);
  v13 = nw_frame_unclaimed_bytes(frame, 0);
  nw_frame_set_metadata(frame, v11, 1, v5);
  memcpy(v13, input_buffer, input_length);
  frame[4] = 0;
  tqh_last = v9->pending_input_frames.tqh_last;
  frame[5] = tqh_last;
  *tqh_last = frame;
  v9->pending_input_frames.tqh_last = frame + 4;
  ++v9->pending_input_frame_count;
  nw_framer_signal_input_available(v9);

LABEL_7:
}

BOOL nw_framer_parse_output(nw_framer_t framer, size_t minimum_incomplete_length, size_t maximum_length, uint8_t *temp_buffer, nw_framer_parse_completion_t parse)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = framer;
  v10 = parse;
  if (!v9)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_framer_parse_output";
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
          v25 = "nw_framer_parse_output";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null framer", buf, 0xCu);
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
            v25 = "nw_framer_parse_output";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_framer_parse_output";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v25 = "nw_framer_parse_output";
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_6;
  }

  nw_context_assert_queue(v9[46].isa);
  if ((HIBYTE(v9[75].isa) & 4) != 0)
  {
    v12 = nw_framer_parse_array(v9, &v9[71].isa, 0, 0, minimum_incomplete_length, maximum_length, temp_buffer, v10);
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v25 = "nw_framer_parse_output";
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Cannot parse output when not in output handler", buf, 0xCu);
  }

LABEL_6:
  v12 = 0;
LABEL_8:

  return v12;
}

void nw_framer_write_output_data(nw_framer_t framer, dispatch_data_t output_data)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = output_data;
  v5 = v4;
  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_framer_write_output_data";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_write_output_data";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v31 = "nw_framer_write_output_data";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v15)
        {
          goto LABEL_20;
        }

LABEL_55:
        free(v15);
        goto LABEL_20;
      }

      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_framer_write_output_data";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_write_output_data";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  if (v4)
  {
    nw_context_assert_queue(v3[46].isa);
    if (v3[69].isa)
    {
      if ((BYTE6(v3[75].isa) & 2) == 0)
      {
LABEL_5:
        isa = v3[69].isa;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = _nw_array_create();
      v8 = v3[69].isa;
      v3[69].isa = v7;

      if ((BYTE6(v3[75].isa) & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    isa = v3[69].isa;
    if ((HIBYTE(v3[75].isa) & 4) == 0)
    {
      if (!isa)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_10:
    if (!isa)
    {
      goto LABEL_18;
    }

    count = _nw_array_get_count(isa);
    isa = v3[69].isa;
    if (count)
    {
      v10 = nw_array_remove_object_at_index(isa, count - 1);
      v11 = v3[69].isa;
      concat = dispatch_data_create_concat(v10, v5);
      v13 = concat;
      if (v11 && concat)
      {
        _nw_array_append(v11, concat);
      }

      goto LABEL_18;
    }

    if (!isa)
    {
LABEL_18:
      if ((HIBYTE(v3[75].isa) & 4) == 0)
      {
        nw_framer_flush_output(v3, 0);
      }

      goto LABEL_20;
    }

LABEL_17:
    _nw_array_append(isa, v5);
    goto LABEL_18;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_framer_write_output_data";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v15, &type, &v28))
  {
    goto LABEL_54;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v16 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v31 = "nw_framer_write_output_data";
      _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null output_data", buf, 0xCu);
    }

    goto LABEL_53;
  }

  if (v28 != 1)
  {
    v16 = __nwlog_obj();
    v27 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v31 = "nw_framer_write_output_data";
      _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null output_data, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_53;
  }

  v23 = __nw_create_backtrace_string();
  v16 = __nwlog_obj();
  v24 = type;
  v25 = os_log_type_enabled(v16, type);
  if (!v23)
  {
    if (v25)
    {
      *buf = 136446210;
      v31 = "nw_framer_write_output_data";
      _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null output_data, no backtrace", buf, 0xCu);
    }

    goto LABEL_53;
  }

  if (v25)
  {
    *buf = 136446466;
    v31 = "nw_framer_write_output_data";
    v32 = 2082;
    v33 = v23;
    _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null output_data, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v15)
  {
    goto LABEL_55;
  }

LABEL_20:
}

uint64_t __Block_byref_object_copy__5122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZL22nw_framer_flush_outputP20NWConcrete_nw_framerPU22objcproto11OS_nw_frame8NSObject_block_invoke(void *a1, void *a2)
{
  v99[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(*(a1[6] + 8) + 40))
  {
    nw_frame_finalize(v3);
    v12 = (a1[8] + 8);
    v13 = *(v4 + 32);
    v14 = *(v4 + 40);
    if (v13)
    {
      v12 = (v13 + 40);
    }

    *v12 = v14;
    *v14 = v13;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = a1[4];
        if (v16)
        {
          v17 = (v16 + 609);
        }

        else
        {
          v17 = "";
        }

        *buf = 136446466;
        v95 = "nw_framer_flush_output_block_invoke";
        v96 = 2080;
        v97 = v17;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %s No output data, dropping output frame", buf, 0x16u);
      }
    }

    goto LABEL_53;
  }

  if (!nw_frame_uses_external_data(v3))
  {
    offset = 0;
    v18 = nw_frame_unclaimed_bytes(v4, &offset);
    if (v18)
    {
      v19 = v18;
      v20 = offset;
      v21 = *(*(a1[7] + 8) + 24);
      if (offset)
      {
        if (v21 > offset)
        {
          if (gLogDatapath == 1)
          {
            v87 = v18;
            v88 = __nwlog_obj();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              v89 = a1[4];
              if (v89)
              {
                v90 = (v89 + 609);
              }

              else
              {
                v90 = "";
              }

              v91 = *(*(a1[7] + 8) + 24);
              *buf = 136446978;
              v95 = "nw_framer_flush_output_block_invoke";
              v96 = 2080;
              v97 = v90;
              v98 = 1024;
              LODWORD(v99[0]) = offset;
              WORD2(v99[0]) = 2048;
              *(v99 + 6) = v91;
              _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %s Set partial frame output_length %u < %zu bytes", buf, 0x26u);
            }

            v20 = offset;
            v19 = v87;
          }

          nw_dispatch_data_copyout_from_offset(*(*(a1[6] + 8) + 40), v19, v20, 0);
          subrange = dispatch_data_create_subrange(*(*(a1[6] + 8) + 40), offset, *(*(a1[7] + 8) + 24) - offset);
          v23 = *(a1[6] + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = subrange;

          size = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          goto LABEL_58;
        }

LABEL_54:
        if (gLogDatapath == 1)
        {
          v82 = v18;
          v83 = __nwlog_obj();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            v84 = a1[4];
            if (v84)
            {
              v85 = (v84 + 609);
            }

            else
            {
              v85 = "";
            }

            v86 = *(*(a1[7] + 8) + 24);
            *buf = 136446722;
            v95 = "nw_framer_flush_output_block_invoke";
            v96 = 2080;
            v97 = v85;
            v98 = 2048;
            v99[0] = v86;
            _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %s Set frame %zu bytes", buf, 0x20u);
          }

          v21 = *(*(a1[7] + 8) + 24);
          v19 = v82;
        }

        nw_dispatch_data_copyout_from_offset(*(*(a1[6] + 8) + 40), v19, v21, 0);
        if ((*(a1[4] + 607) & 0x20) != 0)
        {
          *(v4 + 186) |= 0x80u;
          *(a1[4] + 607) &= ~0x20u;
        }

        nw_frame_claim(v4, v46, *(*(a1[7] + 8) + 24), 0);
        nw_frame_collapse(v4);
        nw_frame_unclaim(v4, v47, *(*(a1[7] + 8) + 24), 0);
        v48 = *(a1[6] + 8);
        v49 = *(v48 + 40);
        *(v48 + 40) = 0;

        size = 0;
LABEL_58:
        *(*(a1[7] + 8) + 24) = size;
        v34 = a1[5];
        if (!v34)
        {
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      if (!v21)
      {
        goto LABEL_54;
      }
    }

    if (gLogDatapath == 1)
    {
      v67 = __nwlog_obj();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v68 = a1[4];
        if (v68)
        {
          v69 = (v68 + 609);
        }

        else
        {
          v69 = "";
        }

        v70 = *(*(a1[7] + 8) + 24);
        *buf = 136446978;
        v95 = "nw_framer_flush_output_block_invoke";
        v96 = 2080;
        v97 = v69;
        v98 = 1024;
        LODWORD(v99[0]) = offset;
        WORD2(v99[0]) = 2048;
        *(v99 + 6) = v70;
        _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %s Dropping empty output frame %u < %zu bytes", buf, 0x26u);
      }
    }

    goto LABEL_36;
  }

  v5 = nw_frame_unclaimed_length(v4);
  v6 = *(*(a1[7] + 8) + 24);
  if (v5)
  {
    v7 = v5;
    if (v6 > v5)
    {
      if (gLogDatapath == 1)
      {
        v77 = v5;
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = a1[4];
          if (v79)
          {
            v80 = (v79 + 609);
          }

          else
          {
            v80 = "";
          }

          v81 = *(*(a1[7] + 8) + 24);
          *buf = 136446978;
          v95 = "nw_framer_flush_output_block_invoke";
          v96 = 2080;
          v97 = v80;
          v98 = 1024;
          LODWORD(v99[0]) = v77;
          WORD2(v99[0]) = 2048;
          *(v99 + 6) = v81;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %s Set partial external frame output_length %u < %zu bytes", buf, 0x26u);
        }
      }

      v8 = dispatch_data_create_subrange(*(*(a1[6] + 8) + 40), 0, v7);
      v9 = dispatch_data_create_subrange(*(*(a1[6] + 8) + 40), v7, *(*(a1[7] + 8) + 24) - v7);
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      nw_frame_set_external_data(v4, v8, 0);
      *(*(a1[7] + 8) + 24) = dispatch_data_get_size(*(*(a1[6] + 8) + 40));

      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if (v6)
  {
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = a1[4];
        if (v27)
        {
          v28 = (v27 + 609);
        }

        else
        {
          v28 = "";
        }

        v29 = *(*(a1[7] + 8) + 24);
        *buf = 136446978;
        v95 = "nw_framer_flush_output_block_invoke";
        v96 = 2080;
        v97 = v28;
        v98 = 1024;
        LODWORD(v99[0]) = 0;
        WORD2(v99[0]) = 2048;
        *(v99 + 6) = v29;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %s Dropping empty output external frame %u < %zu bytes", buf, 0x26u);
      }
    }

LABEL_36:
    nw_frame_finalize(v4);
    v35 = (a1[8] + 8);
    v36 = *(v4 + 32);
    v37 = *(v4 + 40);
    if (v36)
    {
      v35 = (v36 + 40);
    }

    *v35 = v37;
    *v37 = v36;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
LABEL_39:
    v34 = a1[5];
    if (!v34)
    {
      goto LABEL_53;
    }

LABEL_40:
    v38 = *(v34 + 176);
    if (!v38)
    {
LABEL_44:
      ecn_flag = nw_frame_get_ecn_flag(a1[5]);
      if (ecn_flag)
      {
        v40 = ecn_flag;
        if (gLogDatapath == 1)
        {
          v53 = __nwlog_obj();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v54 = a1[4];
            *buf = 136446722;
            v95 = "nw_framer_flush_output_block_invoke";
            if (v54)
            {
              v55 = (v54 + 609);
            }

            else
            {
              v55 = "";
            }

            v96 = 2080;
            v97 = v55;
            v98 = 1024;
            LODWORD(v99[0]) = v40;
            _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %s Setting ECN flag %u on output frame", buf, 0x1Cu);
          }
        }

        nw_frame_set_ecn_flag(v4, v40);
      }

      expire_time = nw_frame_get_expire_time(a1[5]);
      if (expire_time)
      {
        v42 = expire_time;
        if (gLogDatapath == 1)
        {
          v61 = __nwlog_obj();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v62 = a1[4];
            *buf = 136446722;
            v95 = "nw_framer_flush_output_block_invoke";
            if (v62)
            {
              v63 = (v62 + 609);
            }

            else
            {
              v63 = "";
            }

            v96 = 2080;
            v97 = v63;
            v98 = 2048;
            v99[0] = v42;
            _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %s Setting expire time %llu on output frame", buf, 0x20u);
          }
        }

        nw_frame_set_expire_time(v4, v42);
      }

      packet_id = nw_frame_get_packet_id(a1[5]);
      if (packet_id)
      {
        v44 = packet_id;
        if (gLogDatapath == 1)
        {
          v64 = __nwlog_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v65 = a1[4];
            if (v65)
            {
              v66 = (v65 + 609);
            }

            else
            {
              v66 = "";
            }

            *buf = 136446466;
            v95 = "nw_framer_flush_output_block_invoke";
            v96 = 2080;
            v97 = v66;
            _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %s Setting packet ID on output frame", buf, 0x16u);
          }
        }

        nw_frame_set_packet_id(v4, v44);
      }

      goto LABEL_53;
    }

    if (gLogDatapath == 1)
    {
      v50 = __nwlog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v51 = a1[4];
        *buf = 136446722;
        v95 = "nw_framer_flush_output_block_invoke";
        if (v51)
        {
          v52 = (v51 + 609);
        }

        else
        {
          v52 = "";
        }

        v96 = 2080;
        v97 = v52;
        v98 = 1024;
        LODWORD(v99[0]) = v38;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %s Setting service class 0x%x on output frame", buf, 0x1Cu);
      }
    }

    if (v4)
    {
      *(v4 + 176) = v38;
      goto LABEL_44;
    }

    __nwlog_obj();
    *buf = 136446210;
    v95 = "nw_frame_set_service_class";
    v56 = _os_log_send_and_compose_impl();
    LOBYTE(offset) = 16;
    offset_7 = 0;
    v57 = v56;
    if (__nwlog_fault(v56, &offset, &offset_7))
    {
      if (offset == 17)
      {
        v58 = __nwlog_obj();
        v59 = offset;
        if (!os_log_type_enabled(v58, offset))
        {
          goto LABEL_128;
        }

        *buf = 136446210;
        v95 = "nw_frame_set_service_class";
        v60 = "%{public}s called with null frame";
        goto LABEL_127;
      }

      if (offset_7 != 1)
      {
        v58 = __nwlog_obj();
        v59 = offset;
        if (!os_log_type_enabled(v58, offset))
        {
          goto LABEL_128;
        }

        *buf = 136446210;
        v95 = "nw_frame_set_service_class";
        v60 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_127;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = offset;
      v76 = os_log_type_enabled(v58, offset);
      if (backtrace_string)
      {
        if (v76)
        {
          *buf = 136446466;
          v95 = "nw_frame_set_service_class";
          v96 = 2082;
          v97 = backtrace_string;
          _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_128;
      }

      if (v76)
      {
        *buf = 136446210;
        v95 = "nw_frame_set_service_class";
        v60 = "%{public}s called with null frame, no backtrace";
LABEL_127:
        _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
      }
    }

LABEL_128:
    if (v57)
    {
      free(v57);
    }

    goto LABEL_44;
  }

LABEL_29:
  if (gLogDatapath == 1)
  {
    v71 = __nwlog_obj();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      v72 = a1[4];
      if (v72)
      {
        v73 = (v72 + 609);
      }

      else
      {
        v73 = "";
      }

      v74 = *(*(a1[7] + 8) + 24);
      *buf = 136446722;
      v95 = "nw_framer_flush_output_block_invoke";
      v96 = 2080;
      v97 = v73;
      v98 = 2048;
      v99[0] = v74;
      _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s %s Set external frame %zu bytes", buf, 0x20u);
    }
  }

  nw_frame_set_external_data(v4, *(*(a1[6] + 8) + 40), 0);
  if ((*(a1[4] + 607) & 0x20) != 0)
  {
    *(v4 + 186) |= 0x80u;
    *(a1[4] + 607) &= ~0x20u;
  }

  nw_frame_claim(v4, v30, *(*(a1[7] + 8) + 24), 0);
  nw_frame_collapse(v4);
  nw_frame_unclaim(v4, v31, *(*(a1[7] + 8) + 24), 0);
  v32 = *(a1[6] + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = 0;

  *(*(a1[7] + 8) + 24) = 0;
  v34 = a1[5];
  if (v34)
  {
    goto LABEL_40;
  }

LABEL_53:

  return 1;
}

void nw_framer_write_output(nw_framer_t framer, const uint8_t *output_buffer, size_t output_length)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = framer;
  v6 = v5;
  if (v5)
  {
    nw_context_assert_queue(v5[46].isa);
    v7 = dispatch_data_create(output_buffer, output_length, 0, 0);
    nw_framer_write_output_data(v6, v7);

    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_framer_write_output";
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
        v19 = "nw_framer_write_output";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
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
          v19 = "nw_framer_write_output";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_framer_write_output";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_framer_write_output";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

BOOL __nw_framer_write_output_no_copy_block_invoke(void *a1, void *a2)
{
  v141 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nw_frame_uses_external_data(v3))
  {
    size = 0;
    v4 = nw_frame_copy_external_data(v3, &size + 1, &size);
    if (gLogDatapath == 1)
    {
      v102 = __nwlog_obj();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
      {
        v103 = a1[4];
        if (v103)
        {
          v104 = (v103 + 609);
        }

        else
        {
          v104 = "";
        }

        *buf = 136446978;
        v135 = "nw_framer_write_output_no_copy_block_invoke";
        v136 = 2080;
        v137 = v104;
        v138 = 1024;
        *v139 = size;
        *&v139[4] = 1024;
        *&v139[6] = HIDWORD(size);
        _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s %s Writing %u external data bytes from offset %u", buf, 0x22u);
      }
    }

    if (HIDWORD(size))
    {
      v5 = *(*(a1[5] + 8) + 24);
      goto LABEL_22;
    }

    v5 = *(*(a1[5] + 8) + 24);
    if (v5 < size)
    {
LABEL_22:
      if (v5 < size)
      {
        subrange = dispatch_data_create_subrange(v4, HIDWORD(size), v5);
        v38 = *(a1[6] + 8);
        v41 = *(v38 + 40);
        v39 = (v38 + 40);
        v40 = v41;
        if (v41)
        {
          concat = dispatch_data_create_concat(v40, subrange);
          v43 = *(a1[6] + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = concat;

          if (gLogDatapath != 1)
          {
            goto LABEL_56;
          }

          v46 = __nwlog_obj();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_118;
          }

          v47 = a1[4];
          if (v47)
          {
            v48 = (v47 + 609);
          }

          else
          {
            v48 = "";
          }

          v49 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          v50 = *(*(a1[5] + 8) + 24);
          *buf = 136447234;
          v135 = "nw_framer_write_output_no_copy_block_invoke";
          v136 = 2080;
          v137 = v48;
          v138 = 2048;
          *v139 = v49;
          *&v139[8] = 2048;
          *&v139[10] = v50;
          *&v139[18] = 1024;
          v140 = HIDWORD(size);
          v51 = "%{public}s %s Appending subrange data to output data, now %zu bytes from length %zu offset %u";
        }

        else
        {
          objc_storeStrong(v39, subrange);
          if (gLogDatapath != 1)
          {
            goto LABEL_56;
          }

          v46 = __nwlog_obj();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
LABEL_118:

LABEL_56:
            nw_frame_claim(v3, v45, *(*(a1[5] + 8) + 24), 0);
            *(a1[4] + 600) += *(*(a1[5] + 8) + 24);
            *(*(a1[5] + 8) + 24) = 0;
            if (gLogDatapath == 1)
            {
              v83 = __nwlog_obj();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
              {
                v84 = a1[4];
                v85 = (v84 + 609);
                if (!v84)
                {
                  v85 = "";
                }

                v86 = *(v84 + 600);
                v87 = *(*(a1[5] + 8) + 24);
                *buf = 136446978;
                v135 = "nw_framer_write_output_no_copy_block_invoke";
                v136 = 2080;
                v137 = v85;
                v138 = 1024;
                *v139 = v86;
                *&v139[4] = 2048;
                *&v139[6] = v87;
                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %s Pending output cursor %u, remaining output %zu", buf, 0x26u);
              }

LABEL_61:
            }

LABEL_66:

LABEL_67:
            goto LABEL_68;
          }

          v123 = a1[4];
          if (v123)
          {
            v124 = (v123 + 609);
          }

          else
          {
            v124 = "";
          }

          v125 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          v126 = *(*(a1[5] + 8) + 24);
          *buf = 136447234;
          v135 = "nw_framer_write_output_no_copy_block_invoke";
          v136 = 2080;
          v137 = v124;
          v138 = 2048;
          *v139 = v125;
          *&v139[8] = 2048;
          *&v139[10] = v126;
          *&v139[18] = 1024;
          v140 = HIDWORD(size);
          v51 = "%{public}s %s Setting subrange data as output data, %zu bytes from length %zu offset %u";
        }

        _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, v51, buf, 0x30u);
        goto LABEL_118;
      }

      subrange = dispatch_data_create_subrange(v4, HIDWORD(size), size);
      v52 = *(a1[6] + 8);
      v55 = *(v52 + 40);
      v53 = (v52 + 40);
      v54 = v55;
      if (v55)
      {
        v56 = dispatch_data_create_concat(v54, subrange);
        v57 = *(a1[6] + 8);
        v58 = *(v57 + 40);
        *(v57 + 40) = v56;

        if (gLogDatapath == 1)
        {
          v59 = __nwlog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v60 = a1[4];
            if (v60)
            {
              v61 = (v60 + 609);
            }

            else
            {
              v61 = "";
            }

            v62 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
            *buf = 136446978;
            v135 = "nw_framer_write_output_no_copy_block_invoke";
            v136 = 2080;
            v137 = v61;
            v138 = 2048;
            *v139 = v62;
            *&v139[8] = 1024;
            *&v139[10] = HIDWORD(size);
            v63 = "%{public}s %s Appending subrange data to output data, now %zu bytes from offset %u";
LABEL_124:
            _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, v63, buf, 0x26u);
            goto LABEL_125;
          }

          goto LABEL_125;
        }
      }

      else
      {
        objc_storeStrong(v53, subrange);
        if (gLogDatapath == 1)
        {
          v59 = __nwlog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v127 = a1[4];
            if (v127)
            {
              v128 = (v127 + 609);
            }

            else
            {
              v128 = "";
            }

            v129 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
            *buf = 136446978;
            v135 = "nw_framer_write_output_no_copy_block_invoke";
            v136 = 2080;
            v137 = v128;
            v138 = 2048;
            *v139 = v129;
            *&v139[8] = 1024;
            *&v139[10] = HIDWORD(size);
            v63 = "%{public}s %s Setting subrange data as output data, %zu bytes from offset %u";
            goto LABEL_124;
          }

LABEL_125:
        }
      }

      nw_frame_set_external_data(v3, 0, 0);
      v88 = (a1[4] + 576);
      v89 = v3[4];
      v90 = v3[5];
      if (v89)
      {
        v88 = (v89 + 40);
      }

      *v88 = v90;
      *v90 = v89;
      v3[4] = 0;
      v3[5] = 0;
      nw_frame_finalize(v3);
      v91 = size;
      *(a1[4] + 600) += size;
      *(*(a1[5] + 8) + 24) -= v91;
      if (gLogDatapath != 1)
      {
        goto LABEL_66;
      }

      v83 = __nwlog_obj();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v110 = a1[4];
        v111 = (v110 + 609);
        if (!v110)
        {
          v111 = "";
        }

        v112 = *(v110 + 600);
        v113 = *(*(a1[5] + 8) + 24);
        *buf = 136446978;
        v135 = "nw_framer_write_output_no_copy_block_invoke";
        v136 = 2080;
        v137 = v111;
        v138 = 1024;
        *v139 = v112;
        *&v139[4] = 2048;
        *&v139[6] = v113;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %s Pending output cursor %u, remaining output %zu", buf, 0x26u);
      }

      goto LABEL_61;
    }

    v71 = *(a1[6] + 8);
    v74 = *(v71 + 40);
    v72 = (v71 + 40);
    v73 = v74;
    if (v74)
    {
      v75 = dispatch_data_create_concat(v73, v4);
      v76 = *(a1[6] + 8);
      v77 = *(v76 + 40);
      *(v76 + 40) = v75;

      if (gLogDatapath == 1)
      {
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = a1[4];
          if (v79)
          {
            v80 = (v79 + 609);
          }

          else
          {
            v80 = "";
          }

          v81 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          *buf = 136446722;
          v135 = "nw_framer_write_output_no_copy_block_invoke";
          v136 = 2080;
          v137 = v80;
          v138 = 2048;
          *v139 = v81;
          v82 = "%{public}s %s Appending message data to output data, now %zu bytes";
LABEL_131:
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, v82, buf, 0x20u);
          goto LABEL_132;
        }

        goto LABEL_132;
      }
    }

    else
    {
      objc_storeStrong(v72, v4);
      if (gLogDatapath == 1)
      {
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v130 = a1[4];
          if (v130)
          {
            v131 = (v130 + 609);
          }

          else
          {
            v131 = "";
          }

          v132 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          *buf = 136446722;
          v135 = "nw_framer_write_output_no_copy_block_invoke";
          v136 = 2080;
          v137 = v131;
          v138 = 2048;
          *v139 = v132;
          v82 = "%{public}s %s Setting message data as output data, %zu bytes";
          goto LABEL_131;
        }

LABEL_132:
      }
    }

    nw_frame_set_external_data(v3, 0, 0);
    v94 = (a1[4] + 576);
    v95 = v3[4];
    v96 = v3[5];
    if (v95)
    {
      v94 = (v95 + 40);
    }

    *v94 = v96;
    *v96 = v95;
    v3[4] = 0;
    v3[5] = 0;
    nw_frame_finalize(v3);
    v97 = size;
    *(a1[4] + 600) += size;
    *(*(a1[5] + 8) + 24) -= v97;
    if (gLogDatapath != 1)
    {
      goto LABEL_67;
    }

    subrange = __nwlog_obj();
    if (os_log_type_enabled(subrange, OS_LOG_TYPE_DEBUG))
    {
      v98 = a1[4];
      v99 = (v98 + 609);
      if (!v98)
      {
        v99 = "";
      }

      v100 = *(v98 + 600);
      v101 = *(*(a1[5] + 8) + 24);
      *buf = 136446978;
      v135 = "nw_framer_write_output_no_copy_block_invoke";
      v136 = 2080;
      v137 = v99;
      v138 = 1024;
      *v139 = v100;
      *&v139[4] = 2048;
      *&v139[6] = v101;
      _os_log_impl(&dword_181A37000, subrange, OS_LOG_TYPE_DEBUG, "%{public}s %s Pending output cursor %u, remaining output %zu", buf, 0x26u);
    }

    goto LABEL_66;
  }

  HIDWORD(size) = 0;
  v6 = nw_frame_unclaimed_bytes(v3, &size + 1);
  if (gLogDatapath == 1)
  {
    v105 = __nwlog_obj();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      v106 = a1[4];
      v107 = (v106 + 609);
      if (!v106)
      {
        v107 = "";
      }

      *buf = 136446722;
      v135 = "nw_framer_write_output_no_copy_block_invoke";
      v136 = 2080;
      v137 = v107;
      v138 = 1024;
      *v139 = HIDWORD(size);
      _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s %s Writing %u data bytes", buf, 0x1Cu);
    }
  }

  v7 = (v6 + *(a1[4] + 600));
  if (*(*(a1[5] + 8) + 24) >= HIDWORD(size))
  {
    v8 = dispatch_data_create(v7, HIDWORD(size), 0, 0);
    v24 = *(a1[6] + 8);
    v27 = *(v24 + 40);
    v25 = (v24 + 40);
    v26 = v27;
    if (v27)
    {
      v28 = dispatch_data_create_concat(v26, v8);
      v29 = *(a1[6] + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      if (gLogDatapath == 1)
      {
        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = a1[4];
          if (v32)
          {
            v33 = (v32 + 609);
          }

          else
          {
            v33 = "";
          }

          v34 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          v35 = *(v32 + 600);
          *buf = 136447234;
          v135 = "nw_framer_write_output_no_copy_block_invoke";
          v136 = 2080;
          v137 = v33;
          v138 = 2048;
          *v139 = v34;
          *&v139[8] = 1024;
          *&v139[10] = HIDWORD(size);
          *&v139[14] = 1024;
          *&v139[16] = v35;
          v36 = "%{public}s %s Appending message data to output data, now %zu bytes, %u bytes from offset %u";
LABEL_110:
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, v36, buf, 0x2Cu);
          goto LABEL_111;
        }

        goto LABEL_111;
      }
    }

    else
    {
      objc_storeStrong(v25, v8);
      if (gLogDatapath == 1)
      {
        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v119 = a1[4];
          if (v119)
          {
            v120 = (v119 + 609);
          }

          else
          {
            v120 = "";
          }

          v121 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
          v122 = *(v119 + 600);
          *buf = 136447234;
          v135 = "nw_framer_write_output_no_copy_block_invoke";
          v136 = 2080;
          v137 = v120;
          v138 = 2048;
          *v139 = v121;
          *&v139[8] = 1024;
          *&v139[10] = HIDWORD(size);
          *&v139[14] = 1024;
          *&v139[16] = v122;
          v36 = "%{public}s %s Setting message data as output data, %zu bytes, %u bytes from offset %u";
          goto LABEL_110;
        }

LABEL_111:
      }
    }

    v67 = (a1[4] + 576);
    v68 = v3[4];
    v69 = v3[5];
    if (v68)
    {
      v67 = (v68 + 40);
    }

    *v67 = v69;
    *v69 = v68;
    v3[4] = 0;
    v3[5] = 0;
    nw_frame_finalize(v3);
    v70 = HIDWORD(size);
    *(a1[4] + 600) += HIDWORD(size);
    *(*(a1[5] + 8) + 24) -= v70;
    if (gLogDatapath != 1)
    {
      goto LABEL_47;
    }

    v64 = __nwlog_obj();
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_92;
    }

    v65 = a1[4];
    v66 = (v65 + 609);
    if (!v65)
    {
      v66 = "";
    }

    goto LABEL_91;
  }

  v8 = dispatch_data_create(v7, *(*(a1[5] + 8) + 24), 0, 0);
  v9 = *(a1[6] + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (v12)
  {
    v13 = dispatch_data_create_concat(v11, v8);
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (gLogDatapath != 1)
    {
      goto LABEL_38;
    }

    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_104;
    }

    v18 = a1[4];
    if (v18)
    {
      v19 = (v18 + 609);
    }

    else
    {
      v19 = "";
    }

    v20 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
    v21 = *(*(a1[5] + 8) + 24);
    v22 = *(v18 + 600);
    *buf = 136447234;
    v135 = "nw_framer_write_output_no_copy_block_invoke";
    v136 = 2080;
    v137 = v19;
    v138 = 2048;
    *v139 = v20;
    *&v139[8] = 2048;
    *&v139[10] = v21;
    *&v139[18] = 1024;
    v140 = v22;
    v23 = "%{public}s %s Appending message data to output data, now %zu bytes, %zu bytes from offset %u";
    goto LABEL_103;
  }

  objc_storeStrong(v10, v8);
  if (gLogDatapath != 1)
  {
    goto LABEL_38;
  }

  v17 = __nwlog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v114 = a1[4];
    if (v114)
    {
      v115 = (v114 + 609);
    }

    else
    {
      v115 = "";
    }

    v116 = dispatch_data_get_size(*(*(a1[6] + 8) + 40));
    v117 = *(*(a1[5] + 8) + 24);
    v118 = *(v114 + 600);
    *buf = 136447234;
    v135 = "nw_framer_write_output_no_copy_block_invoke";
    v136 = 2080;
    v137 = v115;
    v138 = 2048;
    *v139 = v116;
    *&v139[8] = 2048;
    *&v139[10] = v117;
    *&v139[18] = 1024;
    v140 = v118;
    v23 = "%{public}s %s Setting message data to output data, now %zu bytes, %zu bytes from offset %u";
LABEL_103:
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, v23, buf, 0x30u);
  }

LABEL_104:

LABEL_38:
  nw_frame_claim(v3, v16, *(*(a1[5] + 8) + 24), 0);
  *(a1[4] + 600) += *(*(a1[5] + 8) + 24);
  *(*(a1[5] + 8) + 24) = 0;
  if (gLogDatapath == 1)
  {
    v64 = __nwlog_obj();
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
LABEL_92:

      goto LABEL_47;
    }

    v65 = a1[4];
    v66 = (v65 + 609);
    if (!v65)
    {
      v66 = "";
    }

LABEL_91:
    v108 = *(v65 + 600);
    v109 = *(*(a1[5] + 8) + 24);
    *buf = 136446978;
    v135 = "nw_framer_write_output_no_copy_block_invoke";
    v136 = 2080;
    v137 = v66;
    v138 = 1024;
    *v139 = v108;
    *&v139[4] = 2048;
    *&v139[6] = v109;
    _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %s Pending output cursor %u, remaining output %zu", buf, 0x26u);
    goto LABEL_92;
  }

LABEL_47:

LABEL_68:
  v92 = *(*(a1[5] + 8) + 24) != 0;

  return v92;
}

void nw_framer_resume_input(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46]);
    if ((v2[76] & 1) == 0)
    {
      *(v2 + 608) &= 0xFAu;
      nw_framer_input_loop(v2);
      nw_framer_signal_input_available(v2);
    }

    goto LABEL_4;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_framer_resume_input";
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
        v14 = "nw_framer_resume_input";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null framer", buf, 0xCu);
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
          v14 = "nw_framer_resume_input";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_framer_resume_input";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_framer_resume_input";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

LABEL_4:
}

void nw_framer_suspend_input(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(*(v1 + 46));
    if ((v2[608] & 1) == 0)
    {
      v2[608] |= 4u;
    }

    goto LABEL_4;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_framer_suspend_input";
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
        v14 = "nw_framer_suspend_input";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null framer", buf, 0xCu);
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
          v14 = "nw_framer_suspend_input";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_framer_suspend_input";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_framer_suspend_input";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

LABEL_4:
}

void nw_framer_pass_through_input(nw_framer_t framer)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    v2[608] |= 1u;
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_framer_pass_through_input";
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
        v14 = "nw_framer_pass_through_input";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null framer", buf, 0xCu);
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
          v14 = "nw_framer_pass_through_input";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_framer_pass_through_input";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_framer_pass_through_input";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
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

void nw_framer_pass_through_output(nw_framer_t framer)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    nw_framer_flush_output(v2, 0);
    v2[608] |= 2u;
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_framer_pass_through_output";
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
        v14 = "nw_framer_pass_through_output";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null framer", buf, 0xCu);
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
          v14 = "nw_framer_pass_through_output";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_framer_pass_through_output";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_framer_pass_through_output";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
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

void nw_framer_set_copy_metadata(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_copy_metadata";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_framer_set_copy_metadata";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_copy_metadata";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null copy_handler", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null copy_handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null copy_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_copy_metadata";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null copy_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((v3[606] & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_copy_metadata";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null framer->in_start", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null framer->in_start, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_copy_metadata";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v6 = _Block_copy(v4);
  v7 = *(v3 + 55);
  *(v3 + 55) = v6;

LABEL_5:
}

void nw_framer_schedule_wakeup(nw_framer_t framer, uint64_t milliseconds)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *location = 136446210;
    *&location[4] = "nw_framer_schedule_wakeup";
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
        *location = 136446210;
        *&location[4] = "nw_framer_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", location, 0xCu);
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
          *location = 136446466;
          *&location[4] = "nw_framer_schedule_wakeup";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null framer, dumping backtrace:%{public}s", location, 0x16u);
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
        *location = 136446210;
        *&location[4] = "nw_framer_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null framer, no backtrace", location, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *location = 136446210;
        *&location[4] = "nw_framer_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null framer, backtrace limit exceeded", location, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v3[52].isa)
  {
    nw_context_assert_queue(v3[46].isa);
    v5 = *(v4 + 560);
    if (!v5)
    {
      objc_initWeak(location, v4);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_framer_schedule_wakeup_block_invoke;
      aBlock[3] = &unk_1E6A3A6C8;
      objc_copyWeak(&v23, location);
      v6 = _Block_copy(aBlock);
      v7 = *(v4 + 560);
      *(v4 + 560) = v6;

      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
      v5 = *(v4 + 560);
    }

    nw_context_reset_timer_block(*(v4 + 368), v4, milliseconds, v5);
    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *location = 136446210;
  *&location[4] = "nw_framer_schedule_wakeup";
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
      *location = 136446210;
      *&location[4] = "nw_framer_schedule_wakeup";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null framer->wakeup", location, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *location = 136446210;
      *&location[4] = "nw_framer_schedule_wakeup";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null framer->wakeup, backtrace limit exceeded", location, 0xCu);
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
      *location = 136446210;
      *&location[4] = "nw_framer_schedule_wakeup";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null framer->wakeup, no backtrace", location, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *location = 136446466;
    *&location[4] = "nw_framer_schedule_wakeup";
    v27 = 2082;
    v28 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null framer->wakeup, dumping backtrace:%{public}s", location, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void __nw_framer_schedule_wakeup_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[52];
    if (v1)
    {
      (*(v1 + 16))(v1, WeakRetained);
    }
  }
}

void nw_framer_async(nw_framer_t framer, nw_framer_block_t async_block)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = async_block;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_async";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          v29 = "nw_framer_async";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v8);
        goto LABEL_5;
      }

      if (v17)
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_async";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null async_block", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null async_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null async_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v20)
    {
      *buf = 136446466;
      v29 = "nw_framer_async";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null async_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  isa = v3[46].isa;
  if (!isa)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_async";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null framer->context", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null framer->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v29 = "nw_framer_async";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null framer->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_framer_async";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null framer->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v18);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_queue_context_async(isa, v5);
LABEL_5:
}

nw_endpoint_t nw_framer_copy_remote_endpoint(nw_framer_t framer)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    isa = v2[42].isa;
    if (isa && (v4 = *(isa + 3)) != 0 && (v5 = *(v4 + 136)) != 0)
    {
      v6 = v5();
    }

    else
    {
      v6 = v2[44].isa;
    }

    v7 = v6;
    goto LABEL_7;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_framer_copy_remote_endpoint";
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
        v20 = "nw_framer_copy_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
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
          v20 = "nw_framer_copy_remote_endpoint";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_7:

  return v7;
}

nw_endpoint_t nw_framer_copy_local_endpoint(nw_framer_t framer)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    isa = v2[42].isa;
    if (isa && (v4 = *(isa + 3)) != 0 && (v5 = *(v4 + 128)) != 0)
    {
      v6 = v5();
    }

    else
    {
      v6 = nw_parameters_copy_local_endpoint(v2[45].isa);
    }

    v7 = v6;
    goto LABEL_7;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_framer_copy_local_endpoint";
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
        v20 = "nw_framer_copy_local_endpoint";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
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
          v20 = "nw_framer_copy_local_endpoint";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_local_endpoint";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_local_endpoint";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t nw_framer_prepend_application_protocol_inner(void *a1, void *a2, int a3)
{
  v144 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v133 = v6;
  if (!v5)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    v137 = "nw_framer_prepend_application_protocol_inner";
    v75 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v134 = 0;
    if (!__nwlog_fault(v75, &type, &v134))
    {
      goto LABEL_216;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v137 = "nw_framer_prepend_application_protocol_inner";
        _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v134 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v89 = type;
      v90 = os_log_type_enabled(v76, type);
      if (backtrace_string)
      {
        if (v90)
        {
          *buf = 136446466;
          v137 = "nw_framer_prepend_application_protocol_inner";
          v138 = 2082;
          v139 = backtrace_string;
          _os_log_impl(&dword_181A37000, v76, v89, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v75)
        {
          goto LABEL_218;
        }

        goto LABEL_217;
      }

      if (v90)
      {
        *buf = 136446210;
        v137 = "nw_framer_prepend_application_protocol_inner";
        _os_log_impl(&dword_181A37000, v76, v89, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v76 = __nwlog_obj();
      v106 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v137 = "nw_framer_prepend_application_protocol_inner";
        _os_log_impl(&dword_181A37000, v76, v106, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_215;
  }

  v7 = v6;
  if (!v6)
  {
    v78 = __nwlog_obj();
    *buf = 136446210;
    v137 = "nw_framer_prepend_application_protocol_inner";
    v75 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v134 = 0;
    if (!__nwlog_fault(v75, &type, &v134))
    {
      goto LABEL_216;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v79 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v137 = "nw_framer_prepend_application_protocol_inner";
        _os_log_impl(&dword_181A37000, v76, v79, "%{public}s called with null orig_protocol_options", buf, 0xCu);
      }
    }

    else if (v134 == 1)
    {
      v91 = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v92 = type;
      v93 = os_log_type_enabled(v76, type);
      if (v91)
      {
        if (v93)
        {
          *buf = 136446466;
          v137 = "nw_framer_prepend_application_protocol_inner";
          v138 = 2082;
          v139 = v91;
          _os_log_impl(&dword_181A37000, v76, v92, "%{public}s called with null orig_protocol_options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v91);
LABEL_216:
        if (!v75)
        {
LABEL_218:
          v43 = 0;
          goto LABEL_95;
        }

LABEL_217:
        free(v75);
        goto LABEL_218;
      }

      if (v93)
      {
        *buf = 136446210;
        v137 = "nw_framer_prepend_application_protocol_inner";
        _os_log_impl(&dword_181A37000, v76, v92, "%{public}s called with null orig_protocol_options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v76 = __nwlog_obj();
      v107 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v137 = "nw_framer_prepend_application_protocol_inner";
        _os_log_impl(&dword_181A37000, v76, v107, "%{public}s called with null orig_protocol_options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_215:

    goto LABEL_216;
  }

  nw_context_assert_queue(*(v5 + 46));
  v8 = _nw_protocol_options_copy(v7);
  v9 = v8;
  if (!v8)
  {
    v80 = __nwlog_obj();
    *buf = 136446210;
    v137 = "nw_framer_prepend_application_protocol_inner";
    v81 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v134 = 0;
    if (__nwlog_fault(v81, &type, &v134))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (os_log_type_enabled(v82, type))
        {
          *buf = 136446210;
          v137 = "nw_framer_prepend_application_protocol_inner";
          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null protocol_options", buf, 0xCu);
        }
      }

      else if (v134 == 1)
      {
        v94 = __nw_create_backtrace_string();
        v82 = __nwlog_obj();
        v95 = type;
        v96 = os_log_type_enabled(v82, type);
        if (v94)
        {
          if (v96)
          {
            *buf = 136446466;
            v137 = "nw_framer_prepend_application_protocol_inner";
            v138 = 2082;
            v139 = v94;
            _os_log_impl(&dword_181A37000, v82, v95, "%{public}s called with null protocol_options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v94);
          goto LABEL_222;
        }

        if (v96)
        {
          *buf = 136446210;
          v137 = "nw_framer_prepend_application_protocol_inner";
          _os_log_impl(&dword_181A37000, v82, v95, "%{public}s called with null protocol_options, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v82 = __nwlog_obj();
        v108 = type;
        if (os_log_type_enabled(v82, type))
        {
          *buf = 136446210;
          v137 = "nw_framer_prepend_application_protocol_inner";
          _os_log_impl(&dword_181A37000, v82, v108, "%{public}s called with null protocol_options, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_222:
    if (v81)
    {
      free(v81);
    }

    goto LABEL_45;
  }

  if ((v5[303] & 0x10) == 0)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    *(v5 + 606) &= ~0x10u;
LABEL_7:
    v10 = *(v5 + 42);
    v11 = _nw_protocol_options_copy_definition(v8);
    v12 = *(v5 + 44);
    v13 = *(v5 + 45);
    v14 = v11;
    v15 = v12;
    v16 = v13;
    if (v14)
    {
      v17 = v14;

      v18 = v17;
      v19 = v18[192];

      if ((v19 & 1) != 0 && (v20 = nw_protocol_definition_get_framer_create(v18)) != 0)
      {
        internal = v20(v17 + 8, v18, v15, v16);
      }

      else
      {
        internal = nw_protocol_create_internal(v17 + 8, v15, v16, 1);
      }

      v22 = internal;
      goto LABEL_13;
    }

    v84 = __nwlog_obj();
    *buf = 136446210;
    v137 = "nw_framer_create_protocol_for_definition";
    v85 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v134 = 0;
    if (__nwlog_fault(v85, &type, &v134))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v86 = __nwlog_obj();
        v87 = type;
        if (os_log_type_enabled(v86, type))
        {
          *buf = 136446210;
          v137 = "nw_framer_create_protocol_for_definition";
          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null definition", buf, 0xCu);
        }
      }

      else if (v134 == 1)
      {
        v103 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v104 = type;
        v105 = os_log_type_enabled(v86, type);
        if (v103)
        {
          if (v105)
          {
            *buf = 136446466;
            v137 = "nw_framer_create_protocol_for_definition";
            v138 = 2082;
            v139 = v103;
            _os_log_impl(&dword_181A37000, v86, v104, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v103);
          goto LABEL_227;
        }

        if (v105)
        {
          *buf = 136446210;
          v137 = "nw_framer_create_protocol_for_definition";
          _os_log_impl(&dword_181A37000, v86, v104, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v86 = __nwlog_obj();
        v119 = type;
        if (os_log_type_enabled(v86, type))
        {
          *buf = 136446210;
          v137 = "nw_framer_create_protocol_for_definition";
          _os_log_impl(&dword_181A37000, v86, v119, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_227:
    if (v85)
    {
      free(v85);
    }

    v22 = 0;
LABEL_13:

    if (v22)
    {
      v23 = v5[302];
      if (v23 != 0xFFFF)
      {
        v5[302] = v23 + 1;
      }

      v132 = nw_parameters_copy_default_protocol_stack(*(v5 + 45));
      v24 = nw_framer_copy_options(v5);
      v25 = v132;
      v26 = v9;
      v27 = v24;
      v28 = v27;
      if (v25)
      {
        if (v27)
        {
          _nw_protocol_stack_insert_application_protocol_before(v25, v26, v27);
          goto LABEL_19;
        }

        v101 = __nwlog_obj();
        *buf = 136446210;
        v137 = "nw_protocol_stack_insert_application_protocol_before";
        v131 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v134 = 0;
        v98 = v131;
        if (!__nwlog_fault(v131, &type, &v134))
        {
LABEL_242:
          if (v98)
          {
            free(v98);
          }

LABEL_19:

          v29 = v5[302];
          v30 = v26;
          v31 = v30;
          if (*(v5 + 609))
          {
            _nw_protocol_options_set_log_id(v30, 0, v5 + 609, v29);
          }

          v32 = v31;
          _nw_protocol_options_set_instance(v32, v22);

          *v22 = *(v5 + 18);
          v33 = v22[3];
          if (!v33 || (v34 = *v33) == 0 || (v34(v22, v10) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v49 = gLogObj;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v137 = "nw_framer_prepend_application_protocol_inner";
              v138 = 2080;
              v139 = v5 + 609;
              v140 = 2114;
              v141 = v14;
              _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s %s Failed to attach %{public}@ protocol", buf, 0x20u);
            }

            goto LABEL_48;
          }

          nw_protocol_set_output_handler(v10, v22);
          v35 = *(v5 + 39);
          if (v35)
          {
            v36 = *(v35 + 16);
            if (v36)
            {
              if (v36(v5 + 144, v10, v22))
              {
                v37 = *(v5 + 40);
                if (v37)
                {
                  v38 = *(v37 + 24);
                  if (v38)
                  {
                    v39 = *(v38 + 16);
                    if (v39)
                    {
                      v39(v37, v5 + 144);
                    }
                  }
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v40 = gLogObj;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446722;
                  v137 = "nw_framer_prepend_application_protocol_inner";
                  v138 = 2080;
                  v139 = v5 + 609;
                  v140 = 2114;
                  v141 = v14;
                  _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_INFO, "%{public}s %s Attached %{public}@ protocol above framer", buf, 0x20u);
                }

                v41 = v22[3];
                if (v41)
                {
                  v42 = *(v41 + 24);
                  if (v42)
                  {
                    v42(v22, v10);
LABEL_36:
                    v43 = 1;
LABEL_50:

LABEL_93:
                    goto LABEL_94;
                  }
                }

                v113 = __nwlog_obj();
                v114 = v22[2];
                if (!v114)
                {
                  v114 = "invalid";
                }

                *buf = 136446466;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2082;
                v139 = v114;
                v115 = _os_log_send_and_compose_impl();

                type = OS_LOG_TYPE_ERROR;
                v134 = 0;
                if (__nwlog_fault(v115, &type, &v134))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v116 = __nwlog_obj();
                    v117 = type;
                    if (os_log_type_enabled(v116, type))
                    {
                      v118 = v22[2];
                      if (!v118)
                      {
                        v118 = "invalid";
                      }

                      *buf = 136446466;
                      v137 = "nw_framer_prepend_application_protocol_inner";
                      v138 = 2082;
                      v139 = v118;
                      _os_log_impl(&dword_181A37000, v116, v117, "%{public}s protocol %{public}s has invalid connect callback", buf, 0x16u);
                    }
                  }

                  else if (v134 == 1)
                  {
                    v122 = __nw_create_backtrace_string();
                    v116 = __nwlog_obj();
                    v123 = type;
                    v124 = os_log_type_enabled(v116, type);
                    if (v122)
                    {
                      if (v124)
                      {
                        v125 = v22[2];
                        if (!v125)
                        {
                          v125 = "invalid";
                        }

                        *buf = 136446722;
                        v137 = "nw_framer_prepend_application_protocol_inner";
                        v138 = 2082;
                        v139 = v125;
                        v140 = 2082;
                        v141 = v122;
                        _os_log_impl(&dword_181A37000, v116, v123, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v122);
                      goto LABEL_249;
                    }

                    if (v124)
                    {
                      v128 = v22[2];
                      if (!v128)
                      {
                        v128 = "invalid";
                      }

                      *buf = 136446466;
                      v137 = "nw_framer_prepend_application_protocol_inner";
                      v138 = 2082;
                      v139 = v128;
                      _os_log_impl(&dword_181A37000, v116, v123, "%{public}s protocol %{public}s has invalid connect callback, no backtrace", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v116 = __nwlog_obj();
                    v126 = type;
                    if (os_log_type_enabled(v116, type))
                    {
                      v127 = v22[2];
                      if (!v127)
                      {
                        v127 = "invalid";
                      }

                      *buf = 136446466;
                      v137 = "nw_framer_prepend_application_protocol_inner";
                      v138 = 2082;
                      v139 = v127;
                      _os_log_impl(&dword_181A37000, v116, v126, "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded", buf, 0x16u);
                    }
                  }
                }

LABEL_249:
                if (v115)
                {
                  free(v115);
                }

                goto LABEL_36;
              }
            }
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v137 = "nw_framer_prepend_application_protocol_inner";
            v138 = 2080;
            v139 = v5 + 609;
            v140 = 2114;
            v141 = v14;
            _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s %s Failed to replace flow protocol with %{public}@ protocol", buf, 0x20u);
          }

          v54 = v22[3];
          if (v54 && (v55 = *(v54 + 8)) != 0 && v55(v22, v10, 0))
          {
            v56 = *(v5 + 39);
            if (v56)
            {
              v57 = *v56;
              if (v57)
              {
                if (v57(v5 + 144, v10))
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v49 = gLogObj;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v137 = "nw_framer_prepend_application_protocol_inner";
                    v138 = 2080;
                    v139 = v5 + 609;
                    v140 = 2114;
                    v141 = v14;
                    _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s %s Successfully repaired protocol stack after failed %{public}@ insertion", buf, 0x20u);
                  }

LABEL_48:

LABEL_49:
                  v43 = 0;
                  goto LABEL_50;
                }
              }
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v66 = gLogObj;
            *buf = 136446466;
            v137 = "nw_framer_prepend_application_protocol_inner";
            v138 = 2080;
            v139 = v5 + 609;
            v60 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v134 = 0;
            if (!__nwlog_fault(v60, &type, &v134))
            {
              goto LABEL_113;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v61 = __nwlog_obj();
              v67 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136446466;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2080;
                v139 = v5 + 609;
                _os_log_impl(&dword_181A37000, v61, v67, "%{public}s %s Failed to repair protocol stack: Could not add old input_protocol", buf, 0x16u);
              }
            }

            else if (v134 == 1)
            {
              v70 = __nw_create_backtrace_string();
              v61 = __nwlog_obj();
              v71 = type;
              v72 = os_log_type_enabled(v61, type);
              if (v70)
              {
                if (v72)
                {
                  *buf = 136446722;
                  v137 = "nw_framer_prepend_application_protocol_inner";
                  v138 = 2080;
                  v139 = v5 + 609;
                  v140 = 2082;
                  v141 = v70;
                  _os_log_impl(&dword_181A37000, v61, v71, "%{public}s %s Failed to repair protocol stack: Could not add old input_protocol, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v70);
LABEL_113:
                if (!v60)
                {
                  goto LABEL_49;
                }

LABEL_114:
                free(v60);
                goto LABEL_49;
              }

              if (v72)
              {
                *buf = 136446466;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2080;
                v139 = v5 + 609;
                _os_log_impl(&dword_181A37000, v61, v71, "%{public}s %s Failed to repair protocol stack: Could not add old input_protocol, no backtrace", buf, 0x16u);
              }
            }

            else
            {
              v61 = __nwlog_obj();
              v73 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136446466;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2080;
                v139 = v5 + 609;
                _os_log_impl(&dword_181A37000, v61, v73, "%{public}s %s Failed to repair protocol stack: Could not add old input_protocol, backtrace limit exceeded", buf, 0x16u);
              }
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v59 = gLogObj;
            *buf = 136446722;
            v137 = "nw_framer_prepend_application_protocol_inner";
            v138 = 2080;
            v139 = v5 + 609;
            v140 = 2114;
            v141 = v14;
            v60 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v134 = 0;
            if (!__nwlog_fault(v60, &type, &v134))
            {
              goto LABEL_113;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = gLogObj;
              v62 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136446722;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2080;
                v139 = v5 + 609;
                v140 = 2114;
                v141 = v14;
                _os_log_impl(&dword_181A37000, v61, v62, "%{public}s %s Failed to repair protocol stack: Could not undo failed %{public}@ insertion", buf, 0x20u);
              }
            }

            else if (v134 == 1)
            {
              v63 = __nw_create_backtrace_string();
              v61 = __nwlog_obj();
              v64 = type;
              v65 = os_log_type_enabled(v61, type);
              if (v63)
              {
                if (v65)
                {
                  *buf = 136446978;
                  v137 = "nw_framer_prepend_application_protocol_inner";
                  v138 = 2080;
                  v139 = v5 + 609;
                  v140 = 2114;
                  v141 = v14;
                  v142 = 2082;
                  v143 = v63;
                  _os_log_impl(&dword_181A37000, v61, v64, "%{public}s %s Failed to repair protocol stack: Could not undo failed %{public}@ insertion, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v63);
                if (!v60)
                {
                  goto LABEL_49;
                }

                goto LABEL_114;
              }

              if (v65)
              {
                *buf = 136446722;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2080;
                v139 = v5 + 609;
                v140 = 2114;
                v141 = v14;
                _os_log_impl(&dword_181A37000, v61, v64, "%{public}s %s Failed to repair protocol stack: Could not undo failed %{public}@ insertion, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v61 = __nwlog_obj();
              v69 = type;
              if (os_log_type_enabled(v61, type))
              {
                *buf = 136446722;
                v137 = "nw_framer_prepend_application_protocol_inner";
                v138 = 2080;
                v139 = v5 + 609;
                v140 = 2114;
                v141 = v14;
                _os_log_impl(&dword_181A37000, v61, v69, "%{public}s %s Failed to repair protocol stack: Could not undo failed %{public}@ insertion, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

          goto LABEL_113;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v99 = __nwlog_obj();
          v102 = type;
          if (os_log_type_enabled(v99, type))
          {
            *buf = 136446210;
            v137 = "nw_protocol_stack_insert_application_protocol_before";
            _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null insert_before", buf, 0xCu);
          }

LABEL_202:

          goto LABEL_241;
        }

        if (v134 != 1)
        {
          v99 = __nwlog_obj();
          v121 = type;
          if (os_log_type_enabled(v99, type))
          {
            *buf = 136446210;
            v137 = "nw_protocol_stack_insert_application_protocol_before";
            _os_log_impl(&dword_181A37000, v99, v121, "%{public}s called with null insert_before, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_202;
        }

        v109 = __nw_create_backtrace_string();
        v110 = __nwlog_obj();
        v130 = type;
        v112 = os_log_type_enabled(v110, type);
        if (v109)
        {
          if (v112)
          {
            *buf = 136446466;
            v137 = "nw_protocol_stack_insert_application_protocol_before";
            v138 = 2082;
            v139 = v109;
            _os_log_impl(&dword_181A37000, v110, v130, "%{public}s called with null insert_before, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_184:

          free(v109);
LABEL_241:
          v98 = v131;
          goto LABEL_242;
        }

        if (v112)
        {
          *buf = 136446210;
          v137 = "nw_protocol_stack_insert_application_protocol_before";
          _os_log_impl(&dword_181A37000, v110, v130, "%{public}s called with null insert_before, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v97 = __nwlog_obj();
        *buf = 136446210;
        v137 = "nw_protocol_stack_insert_application_protocol_before";
        v131 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v134 = 0;
        v98 = v131;
        if (!__nwlog_fault(v131, &type, &v134))
        {
          goto LABEL_242;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v99 = __nwlog_obj();
          v100 = type;
          if (os_log_type_enabled(v99, type))
          {
            *buf = 136446210;
            v137 = "nw_protocol_stack_insert_application_protocol_before";
            _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null stack", buf, 0xCu);
          }

          goto LABEL_202;
        }

        if (v134 != 1)
        {
          v99 = __nwlog_obj();
          v120 = type;
          if (os_log_type_enabled(v99, type))
          {
            *buf = 136446210;
            v137 = "nw_protocol_stack_insert_application_protocol_before";
            _os_log_impl(&dword_181A37000, v99, v120, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_202;
        }

        v109 = __nw_create_backtrace_string();
        v110 = __nwlog_obj();
        v129 = type;
        v111 = os_log_type_enabled(v110, type);
        if (v109)
        {
          if (v111)
          {
            *buf = 136446466;
            v137 = "nw_protocol_stack_insert_application_protocol_before";
            v138 = 2082;
            v139 = v109;
            _os_log_impl(&dword_181A37000, v110, v129, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_184;
        }

        if (v111)
        {
          *buf = 136446210;
          v137 = "nw_protocol_stack_insert_application_protocol_before";
          _os_log_impl(&dword_181A37000, v110, v129, "%{public}s called with null stack, no backtrace", buf, 0xCu);
        }
      }

      goto LABEL_241;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    *buf = 136446466;
    v137 = "nw_framer_prepend_application_protocol_inner";
    v138 = 2114;
    v139 = v14;
    v45 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v134 = 0;
    if (__nwlog_fault(v45, &type, &v134))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446466;
          v137 = "nw_framer_prepend_application_protocol_inner";
          v138 = 2114;
          v139 = v14;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_framer_create_protocol_for_definition(%{public}@) failed", buf, 0x16u);
        }
      }

      else if (v134 == 1)
      {
        v50 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v51 = type;
        v52 = os_log_type_enabled(v46, type);
        if (v50)
        {
          if (v52)
          {
            *buf = 136446722;
            v137 = "nw_framer_prepend_application_protocol_inner";
            v138 = 2114;
            v139 = v14;
            v140 = 2082;
            v141 = v50;
            _os_log_impl(&dword_181A37000, v46, v51, "%{public}s nw_framer_create_protocol_for_definition(%{public}@) failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v50);
          if (!v45)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        if (v52)
        {
          *buf = 136446466;
          v137 = "nw_framer_prepend_application_protocol_inner";
          v138 = 2114;
          v139 = v14;
          _os_log_impl(&dword_181A37000, v46, v51, "%{public}s nw_framer_create_protocol_for_definition(%{public}@) failed, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v58 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446466;
          v137 = "nw_framer_prepend_application_protocol_inner";
          v138 = 2114;
          v139 = v14;
          _os_log_impl(&dword_181A37000, v46, v58, "%{public}s nw_framer_create_protocol_for_definition(%{public}@) failed, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v45)
    {
LABEL_92:
      v43 = 0;
      goto LABEL_93;
    }

LABEL_91:
    free(v45);
    goto LABEL_92;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v48 = gLogObj;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v137 = "nw_framer_prepend_application_protocol_inner";
    v138 = 2080;
    v139 = v5 + 609;
    _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s %s Already in the ready state, cannot prepend application protocol", buf, 0x16u);
  }

LABEL_45:
  v43 = 0;
LABEL_94:

LABEL_95:
  return v43;
}

void nw_framer_mark_failed_with_error(nw_framer_t framer, int error_code)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = framer;
  v3 = v2;
  if (v2)
  {
    nw_context_assert_queue(v2[46].isa);
    HIBYTE(v3[75].isa) |= 0x80u;
    isa = v3[42].isa;
    if (isa)
    {
      v5 = *(isa + 3);
      if (v5)
      {
        v6 = *(v5 + 56);
        if (!v6 || (v6(), (v7 = v3[42].isa) != 0) && (v5 = *(v7 + 3)) != 0)
        {
          v8 = *(v5 + 48);
          if (v8)
          {
            v8();
          }
        }
      }
    }

    v9 = v3[40].isa;
    if (v9)
    {
      v10 = *(v9 + 3);
      if (v10)
      {
        v11 = *(v10 + 32);
        if (v11)
        {
          v11();
        }
      }
    }

    goto LABEL_13;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_framer_mark_failed_with_error";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_framer_mark_failed_with_error";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_framer_mark_failed_with_error";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_framer_mark_failed_with_error";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_framer_mark_failed_with_error";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v13)
  {
    free(v13);
  }

LABEL_13:
}

void nw_framer_connection_state_set_object_value(void *a1, const char *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_framer_connection_state_set_object_value";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v12, &type, &v33))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_framer_connection_state_set_object_value";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v36 = "nw_framer_connection_state_set_object_value";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v12)
        {
          goto LABEL_8;
        }

LABEL_56:
        free(v12);
        goto LABEL_8;
      }

      if (v23)
      {
        *buf = 136446210;
        v36 = "nw_framer_connection_state_set_object_value";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_framer_connection_state_set_object_value";
        _os_log_impl(&dword_181A37000, v13, v30, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (a2)
  {
    nw_context_assert_queue(*(v5 + 46));
    v7 = *(v5 + 47);
    if (v7 || (v7 = nw_protocol_copy_shared_connection_state(v5 + 288, *(v5 + 1), *(v5 + 46), 1)) != 0 || (v8 = nw_dictionary_create(), v9 = *(v5 + 47), *(v5 + 47) = v8, v9, (v7 = *(v5 + 47)) != 0))
    {
      v10 = v7;
      nw_dictionary_set_value(v7, a2, v6);
LABEL_7:

      goto LABEL_8;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_framer_connection_state_set_object_value";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v18, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v36 = "nw_framer_connection_state_set_object_value";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null connection_state", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v27 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v19, type);
        if (v27)
        {
          if (v29)
          {
            *buf = 136446466;
            v36 = "nw_framer_connection_state_set_object_value";
            v37 = 2082;
            v38 = v27;
            _os_log_impl(&dword_181A37000, v19, v28, "%{public}s called with null connection_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v27);
          goto LABEL_60;
        }

        if (v29)
        {
          *buf = 136446210;
          v36 = "nw_framer_connection_state_set_object_value";
          _os_log_impl(&dword_181A37000, v19, v28, "%{public}s called with null connection_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v36 = "nw_framer_connection_state_set_object_value";
          _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null connection_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_60:
    if (v18)
    {
      free(v18);
    }

    v10 = 0;
    goto LABEL_7;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_framer_connection_state_set_object_value";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (!__nwlog_fault(v12, &type, &v33))
  {
    goto LABEL_55;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v16 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v36 = "nw_framer_connection_state_set_object_value";
      _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null key", buf, 0xCu);
    }

    goto LABEL_54;
  }

  if (v33 != 1)
  {
    v13 = __nwlog_obj();
    v31 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v36 = "nw_framer_connection_state_set_object_value";
      _os_log_impl(&dword_181A37000, v13, v31, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v24 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v25 = type;
  v26 = os_log_type_enabled(v13, type);
  if (!v24)
  {
    if (v26)
    {
      *buf = 136446210;
      v36 = "nw_framer_connection_state_set_object_value";
      _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null key, no backtrace", buf, 0xCu);
    }

    goto LABEL_54;
  }

  if (v26)
  {
    *buf = 136446466;
    v36 = "nw_framer_connection_state_set_object_value";
    v37 = 2082;
    v38 = v24;
    _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v24);
  if (v12)
  {
    goto LABEL_56;
  }

LABEL_8:
}

void *nw_framer_connection_state_copy_object_value(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_framer_connection_state_copy_object_value";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, &type, &v22))
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
        v25 = "nw_framer_connection_state_copy_object_value";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
      }

      goto LABEL_38;
    }

    if (v22 != 1)
    {
      v11 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v25 = "nw_framer_connection_state_copy_object_value";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v25 = "nw_framer_connection_state_copy_object_value";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }

      goto LABEL_38;
    }

    if (v17)
    {
      *buf = 136446466;
      v25 = "nw_framer_connection_state_copy_object_value";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_framer_connection_state_copy_object_value";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, &type, &v22))
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
        v25 = "nw_framer_connection_state_copy_object_value";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null key", buf, 0xCu);
      }

LABEL_38:

LABEL_39:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_41;
    }

    if (v22 != 1)
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v25 = "nw_framer_connection_state_copy_object_value";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_framer_connection_state_copy_object_value";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_38;
    }

    if (v19)
    {
      *buf = 136446466;
      v25 = "nw_framer_connection_state_copy_object_value";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_26:

    free(backtrace_string);
    goto LABEL_39;
  }

  nw_context_assert_queue(v3[46]);
  v5 = v4[47];
  if (!v5)
  {
    v5 = nw_protocol_copy_shared_connection_state((v4 + 36), v4[1], v4[46], 0);
    if (!v5)
    {
LABEL_41:
      v7 = 0;
      goto LABEL_6;
    }
  }

  v6 = v5;
  v7 = nw_dictionary_copy_value(v5, a2);

LABEL_6:
  return v7;
}

uint64_t ___ZL27nw_framer_options_are_equalPU36objcproto25OS_nw_protocol_definition8NSObjectPvS2__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nw_dictionary_copy_value(**(a1 + 40), a2);
  v7 = v6;
  if (v6 && (v6 == v5 || ([v5 isEqual:v6] & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return v8;
}

void nw_framer_metadata_set_original(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_framer_metadata_set_original";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &type, &v30))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null metadata", buf, 0xCu);
      }
    }

    else if (v30 == 1)
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
          v33 = "nw_framer_metadata_set_original";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_61:
        if (!v8)
        {
          goto LABEL_11;
        }

LABEL_62:
        free(v8);
        goto LABEL_11;
      }

      if (v17)
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_framer_metadata_set_original";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &type, &v30))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null original", buf, 0xCu);
      }

      goto LABEL_60;
    }

    if (v30 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null original, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_60;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null original, no backtrace", buf, 0xCu);
      }

      goto LABEL_60;
    }

    if (v20)
    {
      *buf = 136446466;
      v33 = "nw_framer_metadata_set_original";
      v34 = 2082;
      v35 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null original, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (!nw_protocol_metadata_is_framer_message(v3))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_framer_metadata_set_original";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &type, &v30))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null nw_protocol_metadata_is_framer_message(metadata)", buf, 0xCu);
      }

      goto LABEL_60;
    }

    if (v30 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null nw_protocol_metadata_is_framer_message(metadata), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_60;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v33 = "nw_framer_metadata_set_original";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null nw_protocol_metadata_is_framer_message(metadata), no backtrace", buf, 0xCu);
      }

      goto LABEL_60;
    }

    if (v22)
    {
      *buf = 136446466;
      v33 = "nw_framer_metadata_set_original";
      v34 = 2082;
      v35 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null nw_protocol_metadata_is_framer_message(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_41:

    free(v18);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_62;
  }

  if (_nw_protocol_metadata_supports_replies(v5))
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v27 = ___ZL31nw_framer_metadata_set_originalPU34objcproto23OS_nw_protocol_metadata8NSObjectS1__block_invoke;
    v28 = &unk_1E6A3A950;
    v29 = v5;
    if (_nw_protocol_metadata_get_handle(v3))
    {
      (v27)(v26);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33 = "nw_framer_metadata_set_original";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Protocol does not support replies, cannot create a reply", buf, 0xCu);
    }
  }

LABEL_11:
}

void *nw_framer_metadata_copy_original(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = v2;
  }

  return v2;
}

nw_framer_message_t nw_framer_message_create_reply(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_message_create_reply";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_message_create_reply";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null original_message", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          v29 = "nw_framer_message_create_reply";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null original_message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v9)
        {
          goto LABEL_12;
        }

        goto LABEL_48;
      }

      if (v16)
      {
        *buf = 136446210;
        v29 = "nw_framer_message_create_reply";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null original_message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_message_create_reply";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null original_message, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_46;
  }

  if (!nw_protocol_metadata_is_framer_message(v1))
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_message_create_reply";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_message_create_reply";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null nw_protocol_metadata_is_framer_message(original_message)", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      v17 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v10, type);
      if (v17)
      {
        if (v19)
        {
          *buf = 136446466;
          v29 = "nw_framer_message_create_reply";
          v30 = 2082;
          v31 = v17;
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null nw_protocol_metadata_is_framer_message(original_message), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v17);
LABEL_47:
        if (!v9)
        {
LABEL_12:
          message = 0;
          goto LABEL_13;
        }

LABEL_48:
        free(v9);
        goto LABEL_12;
      }

      if (v19)
      {
        *buf = 136446210;
        v29 = "nw_framer_message_create_reply";
        _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null nw_protocol_metadata_is_framer_message(original_message), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_message_create_reply";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null nw_protocol_metadata_is_framer_message(original_message), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  if ((_nw_protocol_metadata_supports_replies(v2) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v29 = "nw_framer_message_create_reply";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Protocol does not support replies, cannot create a reply", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v3 = _nw_protocol_metadata_copy_definition(v2);
  message = nw_framer_protocol_create_message(v3);

  if (message)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __nw_framer_message_create_reply_block_invoke;
    v24 = &unk_1E6A3A950;
    v25 = v2;
    if (_nw_protocol_metadata_get_handle(message))
    {
      (v23)(v22);
    }

    v5 = message;
  }

LABEL_13:
  return message;
}

uint64_t ___ZL29nw_framer_deallocate_metadataPU36objcproto25OS_nw_protocol_definition8NSObjectPv_block_invoke(uint64_t a1, uint64_t a2)
{
  value = xpc_pointer_get_value();
  if (value)
  {
    v5 = *(*(a1 + 32) + 8);
    if (v5)
    {
      v6 = value;
      v7 = nw_dictionary_copy_value(v5, a2);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, v6);
      }
    }
  }

  return 1;
}

void nw_framer_protocol_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    v3 = v2;
    if (v2)
    {
      if (v2[1])
      {
        v4 = v2[69];
        if (v4 && !_nw_array_is_empty(v4))
        {
          *(v3 + 607) |= 0x40u;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v54 = "nw_framer_protocol_output_finished";
            v55 = 2080;
            v56 = v3 + 609;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %s Data pending in output_data_array, delaying output_finished", buf, 0x16u);
          }

          goto LABEL_13;
        }

        v5 = v3[40];
        if (v5)
        {
          v6 = *(v5 + 24);
          if (v6)
          {
            v7 = *(v6 + 192);
            if (v7)
            {
              v7();
LABEL_13:

              return;
            }
          }
        }

        v9 = __nwlog_obj();
        v10 = v3[40];
        v11 = "invalid";
        if (v10)
        {
          v12 = *(v10 + 16);
          if (v12)
          {
            v11 = v12;
          }
        }

        *buf = 136446466;
        v54 = "nw_framer_protocol_output_finished";
        v55 = 2082;
        v56 = v11;
        v13 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v13, &type, &v51))
        {
          goto LABEL_97;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v15 = type;
          if (os_log_type_enabled(v14, type))
          {
            v16 = v3[40];
            v17 = "invalid";
            if (v16)
            {
              v18 = *(v16 + 16);
              if (v18)
              {
                v17 = v18;
              }
            }

            *buf = 136446466;
            v54 = "nw_framer_protocol_output_finished";
            v55 = 2082;
            v56 = v17;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid output_finished callback", buf, 0x16u);
          }
        }

        else if (v51 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v20 = type;
          v21 = os_log_type_enabled(v14, type);
          if (backtrace_string)
          {
            if (v21)
            {
              v22 = v3[40];
              v23 = "invalid";
              if (v22)
              {
                v24 = *(v22 + 16);
                if (v24)
                {
                  v23 = v24;
                }
              }

              *buf = 136446722;
              v54 = "nw_framer_protocol_output_finished";
              v55 = 2082;
              v56 = v23;
              v57 = 2082;
              v58 = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v20, "%{public}s protocol %{public}s has invalid output_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
LABEL_97:
            if (!v13)
            {
              goto LABEL_13;
            }

LABEL_98:
            free(v13);
            goto LABEL_13;
          }

          if (v21)
          {
            v48 = v3[40];
            v49 = "invalid";
            if (v48)
            {
              v50 = *(v48 + 16);
              if (v50)
              {
                v49 = v50;
              }
            }

            *buf = 136446466;
            v54 = "nw_framer_protocol_output_finished";
            v55 = 2082;
            v56 = v49;
            _os_log_impl(&dword_181A37000, v14, v20, "%{public}s protocol %{public}s has invalid output_finished callback, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v14, type))
          {
            v34 = v3[40];
            v35 = "invalid";
            if (v34)
            {
              v36 = *(v34 + 16);
              if (v36)
              {
                v35 = v36;
              }
            }

            *buf = 136446466;
            v54 = "nw_framer_protocol_output_finished";
            v55 = 2082;
            v56 = v35;
            _os_log_impl(&dword_181A37000, v14, v33, "%{public}s protocol %{public}s has invalid output_finished callback, backtrace limit exceeded", buf, 0x16u);
          }
        }

LABEL_96:

        goto LABEL_97;
      }

      v31 = __nwlog_obj();
      *buf = 136446210;
      v54 = "nw_framer_protocol_output_finished";
      v13 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v51 = 0;
      if (!__nwlog_fault(v13, &type, &v51))
      {
        goto LABEL_97;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v54 = "nw_framer_protocol_output_finished";
          _os_log_impl(&dword_181A37000, v14, v32, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v51 != 1)
      {
        v14 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v54 = "nw_framer_protocol_output_finished";
          _os_log_impl(&dword_181A37000, v14, v47, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_96;
      }

      v40 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v43 = type;
      v44 = os_log_type_enabled(v14, type);
      if (!v40)
      {
        if (v44)
        {
          *buf = 136446210;
          v54 = "nw_framer_protocol_output_finished";
          _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v44)
      {
        *buf = 136446466;
        v54 = "nw_framer_protocol_output_finished";
        v55 = 2082;
        v56 = v40;
        _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      *buf = 136446210;
      v54 = "nw_framer_protocol_output_finished";
      v13 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v51 = 0;
      if (!__nwlog_fault(v13, &type, &v51))
      {
        goto LABEL_97;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v54 = "nw_framer_protocol_output_finished";
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v51 != 1)
      {
        v14 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v54 = "nw_framer_protocol_output_finished";
          _os_log_impl(&dword_181A37000, v14, v46, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_96;
      }

      v40 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v14, type);
      if (!v40)
      {
        if (v42)
        {
          *buf = 136446210;
          v54 = "nw_framer_protocol_output_finished";
          _os_log_impl(&dword_181A37000, v14, v41, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v42)
      {
        *buf = 136446466;
        v54 = "nw_framer_protocol_output_finished";
        v55 = 2082;
        v56 = v40;
        _os_log_impl(&dword_181A37000, v14, v41, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v40);
    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_98;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v54 = "nw_framer_protocol_output_finished";
  v26 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (__nwlog_fault(v26, &type, &v51))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v54 = "nw_framer_protocol_output_finished";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v51 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v27, type);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v54 = "nw_framer_protocol_output_finished";
          v55 = 2082;
          v56 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_89;
      }

      if (v39)
      {
        *buf = 136446210;
        v54 = "nw_framer_protocol_output_finished";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v54 = "nw_framer_protocol_output_finished";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_89:
  if (v26)
  {
    free(v26);
  }
}

void nw_framer_protocol_input_flush(nw_protocol *a1, nw_protocol *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    if (!v2)
    {
      v7 = 0;
      v8 = __nwlog_obj();
      *buf = 136446210;
      v29 = "nw_framer_protocol_input_flush";
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v26 = 0;
      if (!__nwlog_fault(v9, &type, &v26))
      {
        goto LABEL_57;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_input_flush";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v29 = "nw_framer_protocol_input_flush";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        if (v19)
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_input_flush";
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_input_flush";
          _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_56;
    }

    if (v2[1])
    {
LABEL_4:

      return;
    }

    v7 = v2;
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_framer_protocol_input_flush";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v9, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_input_flush";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

LABEL_56:

        goto LABEL_57;
      }

      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_input_flush";
          _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_56;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v10, type);
      if (!v20)
      {
        if (v22)
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_input_flush";
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_56;
      }

      if (v22)
      {
        *buf = 136446466;
        v29 = "nw_framer_protocol_input_flush";
        v30 = 2082;
        v31 = v20;
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v20);
    }

LABEL_57:
    if (!v9)
    {
LABEL_59:
      v2 = v7;
      goto LABEL_4;
    }

LABEL_58:
    free(v9);
    goto LABEL_59;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_framer_protocol_input_flush";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v4, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_protocol_input_flush";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v5, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v29 = "nw_framer_protocol_input_flush";
          v30 = 2082;
          v31 = v14;
          _os_log_impl(&dword_181A37000, v5, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        goto LABEL_49;
      }

      if (v16)
      {
        *buf = 136446210;
        v29 = "nw_framer_protocol_input_flush";
        _os_log_impl(&dword_181A37000, v5, v15, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v29 = "nw_framer_protocol_input_flush";
        _os_log_impl(&dword_181A37000, v5, v23, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_49:
  if (v4)
  {
    free(v4);
  }
}

uint64_t ___ZL41nw_framer_protocol_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_138(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 32) + 576);
  v6 = *(v3 + 4);
  v7 = *(v3 + 5);
  if (v6)
  {
    v5 = (v6 + 40);
  }

  *v5 = v7;
  *v7 = v6;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  nw_frame_finalize(v3);
  if (gLogDatapath == 1)
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = (v10 + 609);
      }

      else
      {
        v11 = "";
      }

      v12 = 136446466;
      v13 = "nw_framer_protocol_finalize_output_frames_block_invoke";
      v14 = 2080;
      v15 = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %s Dropping unused output frame", &v12, 0x16u);
    }
  }

  return 1;
}

void nw_framer_protocol_link_state(nw_protocol *a1, nw_protocol *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_framer_protocol_link_state";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v13, &type, &v40))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v43 = "nw_framer_protocol_link_state";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null link_info", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v43 = "nw_framer_protocol_link_state";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_73:
        if (!v13)
        {
          goto LABEL_12;
        }

LABEL_74:
        free(v13);
        goto LABEL_12;
      }

      if (v26)
      {
        *buf = 136446210;
        v43 = "nw_framer_protocol_link_state";
        _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null link_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v43 = "nw_framer_protocol_link_state";
        _os_log_impl(&dword_181A37000, v14, v36, "%{public}s called with null link_info, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  if (a1)
  {
    v6 = a1->handle;
    v7 = v6;
    if (v6)
    {
      if (*(v6 + 1))
      {
        v8 = v5;
        v9 = v8[2];

        if (v9 == 1)
        {
          v11 = v7[606] | 0x20;
        }

        else
        {
          if (v9)
          {
            goto LABEL_11;
          }

          v10 = v7[606];
          v7[606] = v10 & 0xDF;
          if ((v10 & 0x40) == 0)
          {
            goto LABEL_11;
          }

          nw_framer_protocol_output_available(a1, a2);
          v11 = v7[606] & 0xBF;
        }

        v7[606] = v11;
LABEL_11:

        goto LABEL_12;
      }

      v22 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_framer_protocol_link_state";
      v19 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v19, &type, &v40))
      {
        goto LABEL_81;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v43 = "nw_framer_protocol_link_state";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v20, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            v43 = "nw_framer_protocol_link_state";
            v44 = 2082;
            v45 = v33;
            _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          if (!v19)
          {
            goto LABEL_11;
          }

          goto LABEL_82;
        }

        if (v35)
        {
          *buf = 136446210;
          v43 = "nw_framer_protocol_link_state";
          _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v43 = "nw_framer_protocol_link_state";
          _os_log_impl(&dword_181A37000, v20, v39, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_framer_protocol_link_state";
      v19 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v19, &type, &v40))
      {
        goto LABEL_81;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v43 = "nw_framer_protocol_link_state";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v30 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v20, type);
        if (v30)
        {
          if (v32)
          {
            *buf = 136446466;
            v43 = "nw_framer_protocol_link_state";
            v44 = 2082;
            v45 = v30;
            _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v30);
LABEL_81:
          if (!v19)
          {
            goto LABEL_11;
          }

LABEL_82:
          free(v19);
          goto LABEL_11;
        }

        if (v32)
        {
          *buf = 136446210;
          v43 = "nw_framer_protocol_link_state";
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v43 = "nw_framer_protocol_link_state";
          _os_log_impl(&dword_181A37000, v20, v38, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_81;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_framer_protocol_link_state";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (!__nwlog_fault(v13, &type, &v40))
  {
    goto LABEL_73;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v14 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      v43 = "nw_framer_protocol_link_state";
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_72;
  }

  if (v40 != 1)
  {
    v14 = __nwlog_obj();
    v37 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      v43 = "nw_framer_protocol_link_state";
      _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_72;
  }

  v27 = __nw_create_backtrace_string();
  v14 = __nwlog_obj();
  v28 = type;
  v29 = os_log_type_enabled(v14, type);
  if (!v27)
  {
    if (v29)
    {
      *buf = 136446210;
      v43 = "nw_framer_protocol_link_state";
      _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_72;
  }

  if (v29)
  {
    *buf = 136446466;
    v43 = "nw_framer_protocol_link_state";
    v44 = 2082;
    v45 = v27;
    _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v27);
  if (v13)
  {
    goto LABEL_74;
  }

LABEL_12:
}

void nw_framer_protocol_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1->handle;
    v4 = v3;
    if (v3)
    {
      if (v3[1])
      {
        if (gLogDatapath == 1)
        {
          v20 = __nwlog_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v37 = "nw_framer_protocol_disconnected";
            v38 = 2080;
            v39 = v4 + 609;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %s Disconnected from output handler", buf, 0x16u);
          }
        }

        nw_protocol_remove_instance(a1);
        v5 = *(v4 + 607);
        if (v5 < 0)
        {
          if (gLogDatapath == 1)
          {
            v30 = __nwlog_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v37 = "nw_framer_protocol_disconnected";
              v38 = 2080;
              v39 = v4 + 609;
              _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %s Framer is already failed, not calling stop", buf, 0x16u);
            }
          }
        }

        else
        {
          *(v4 + 607) = v5 | 0x80;
          v6 = v4[53];
          if (v6)
          {
            (*(v6 + 16))(v6, v4);
          }

          v7 = v4[42];
          if (v7)
          {
            v8 = *(v7 + 24);
            if (v8)
            {
              v9 = *(v8 + 48);
              if (v9)
              {
                v9();
              }
            }
          }
        }

        goto LABEL_13;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v37 = "nw_framer_protocol_disconnected";
      v15 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v15, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v16 = __nwlog_obj();
          v19 = type;
          if (os_log_type_enabled(v16, type))
          {
            *buf = 136446210;
            v37 = "nw_framer_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v16 = __nwlog_obj();
          v28 = type;
          v29 = os_log_type_enabled(v16, type);
          if (backtrace_string)
          {
            if (v29)
            {
              *buf = 136446466;
              v37 = "nw_framer_protocol_disconnected";
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v16, v28, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v15)
            {
              goto LABEL_13;
            }

            goto LABEL_73;
          }

          if (v29)
          {
            *buf = 136446210;
            v37 = "nw_framer_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v16, v28, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v16 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v16, type))
          {
            *buf = 136446210;
            v37 = "nw_framer_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v16, v33, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_71;
      }

LABEL_72:
      if (!v15)
      {
LABEL_13:

        return;
      }

LABEL_73:
      free(v15);
      goto LABEL_13;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_framer_protocol_disconnected";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v15, &type, &v34))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v37 = "nw_framer_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v16, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446466;
          v37 = "nw_framer_protocol_disconnected";
          v38 = 2082;
          v39 = v24;
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        goto LABEL_72;
      }

      if (v26)
      {
        *buf = 136446210;
        v37 = "nw_framer_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v37 = "nw_framer_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v16, v32, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_71:

    goto LABEL_72;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_framer_protocol_disconnected";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v11, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_framer_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v12, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          v37 = "nw_framer_protocol_disconnected";
          v38 = 2082;
          v39 = v21;
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        goto LABEL_64;
      }

      if (v23)
      {
        *buf = 136446210;
        v37 = "nw_framer_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_framer_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_64:
  if (v11)
  {
    free(v11);
  }
}

void nw_framer_protocol_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    v5 = v4;
    if (v4)
    {
      if (v4[1])
      {
        if (gLogDatapath == 1)
        {
          v22 = __nwlog_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v38 = "nw_framer_protocol_disconnect";
            v39 = 2080;
            v40 = v5 + 609;
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %s Disconnect from input handler", buf, 0x16u);
          }
        }

        v6 = v5[53];
        if (!v6 || (*(v6 + 16))(v6, v5))
        {
          *(v5 + 607) |= 0x80u;
          if (a2)
          {
            callbacks = a2->callbacks;
            if (callbacks)
            {
              disconnected = callbacks->disconnected;
              if (disconnected)
              {
                disconnected(a2, a1);
              }
            }
          }

          v9 = v5[40];
          if (v9)
          {
            v10 = *(v9 + 24);
            if (v10)
            {
              v11 = *(v10 + 32);
              if (v11)
              {
                v11();
              }
            }
          }
        }

        goto LABEL_15;
      }

      v20 = __nwlog_obj();
      *buf = 136446210;
      v38 = "nw_framer_protocol_disconnect";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v35 = 0;
      if (__nwlog_fault(v17, &type, &v35))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v21 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v38 = "nw_framer_protocol_disconnect";
            _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v35 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v30 = type;
          v31 = os_log_type_enabled(v18, type);
          if (backtrace_string)
          {
            if (v31)
            {
              *buf = 136446466;
              v38 = "nw_framer_protocol_disconnect";
              v39 = 2082;
              v40 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_72;
          }

          if (v31)
          {
            *buf = 136446210;
            v38 = "nw_framer_protocol_disconnect";
            _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v18 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v38 = "nw_framer_protocol_disconnect";
            _os_log_impl(&dword_181A37000, v18, v34, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_70;
      }

LABEL_71:
      if (!v17)
      {
LABEL_15:

        return;
      }

LABEL_72:
      free(v17);
      goto LABEL_15;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_framer_protocol_disconnect";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v17, &type, &v35))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v38 = "nw_framer_protocol_disconnect";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v18, type);
      if (v26)
      {
        if (v28)
        {
          *buf = 136446466;
          v38 = "nw_framer_protocol_disconnect";
          v39 = 2082;
          v40 = v26;
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_71;
      }

      if (v28)
      {
        *buf = 136446210;
        v38 = "nw_framer_protocol_disconnect";
        _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v38 = "nw_framer_protocol_disconnect";
        _os_log_impl(&dword_181A37000, v18, v33, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_70:

    goto LABEL_71;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_framer_protocol_disconnect";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v13, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v38 = "nw_framer_protocol_disconnect";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v14, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v38 = "nw_framer_protocol_disconnect";
          v39 = 2082;
          v40 = v23;
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_63;
      }

      if (v25)
      {
        *buf = 136446210;
        v38 = "nw_framer_protocol_disconnect";
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v38 = "nw_framer_protocol_disconnect";
        _os_log_impl(&dword_181A37000, v14, v32, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_63:
  if (v13)
  {
    free(v13);
  }
}

uint64_t nw_framer_protocol_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v64 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_protocol_remove_input_handler";
    v65 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (__nwlog_fault(v65, type, &v90))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v66 = __nwlog_obj();
        v67 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_framer_protocol_remove_input_handler";
          _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v90 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v66 = __nwlog_obj();
        v76 = type[0];
        v77 = os_log_type_enabled(v66, type[0]);
        if (backtrace_string)
        {
          if (v77)
          {
            *buf = 136446466;
            *&buf[4] = "nw_framer_protocol_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v66, v76, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_128;
        }

        if (v77)
        {
          *buf = 136446210;
          *&buf[4] = "nw_framer_protocol_remove_input_handler";
          _os_log_impl(&dword_181A37000, v66, v76, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v66 = __nwlog_obj();
        v83 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_framer_protocol_remove_input_handler";
          _os_log_impl(&dword_181A37000, v66, v83, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_128:
    if (v65)
    {
      free(v65);
    }

    return 0;
  }

  v6 = a1->handle;
  v7 = v6;
  if (!v6)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_protocol_remove_input_handler";
    v69 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v69, type, &v90))
    {
      goto LABEL_137;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type[0];
      if (os_log_type_enabled(v70, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_protocol_remove_input_handler";
        _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null framer", buf, 0xCu);
      }

      goto LABEL_136;
    }

    if (v90 != 1)
    {
      v70 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v70, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_protocol_remove_input_handler";
        _os_log_impl(&dword_181A37000, v70, v84, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_136;
    }

    v78 = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v79 = type[0];
    v80 = os_log_type_enabled(v70, type[0]);
    if (!v78)
    {
      if (v80)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_protocol_remove_input_handler";
        _os_log_impl(&dword_181A37000, v70, v79, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }

      goto LABEL_136;
    }

    if (v80)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_protocol_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v78;
      _os_log_impl(&dword_181A37000, v70, v79, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_103;
  }

  if (!v6[1])
  {
    v72 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_protocol_remove_input_handler";
    v69 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v69, type, &v90))
    {
      goto LABEL_137;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v73 = type[0];
      if (os_log_type_enabled(v70, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_protocol_remove_input_handler";
        _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null framer->parent_definition", buf, 0xCu);
      }

LABEL_136:

LABEL_137:
      if (v69)
      {
        free(v69);
      }

      goto LABEL_9;
    }

    if (v90 != 1)
    {
      v70 = __nwlog_obj();
      v85 = type[0];
      if (os_log_type_enabled(v70, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_protocol_remove_input_handler";
        _os_log_impl(&dword_181A37000, v70, v85, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_136;
    }

    v78 = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v81 = type[0];
    v82 = os_log_type_enabled(v70, type[0]);
    if (!v78)
    {
      if (v82)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_protocol_remove_input_handler";
        _os_log_impl(&dword_181A37000, v70, v81, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_136;
    }

    if (v82)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_protocol_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v78;
      _os_log_impl(&dword_181A37000, v70, v81, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_103:

    free(v78);
    goto LABEL_137;
  }

  if (a2 && a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (gLogDatapath == 1)
  {
    v74 = __nwlog_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_protocol_remove_input_handler";
      *&buf[12] = 2080;
      *&buf[14] = v7 + 609;
      _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %s Remove input handler", buf, 0x16u);
    }
  }

  if (a1->default_input_handler != a2)
  {
LABEL_9:
    v8 = 0;
LABEL_69:

    return v8;
  }

  if (v7[66])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_protocol_remove_input_handler";
      *&buf[12] = 2080;
      *&buf[14] = v7 + 609;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %s finalizing remaining pending input frames", buf, 0x16u);
    }

    if (gLogDatapath == 1)
    {
      v86 = __nwlog_obj();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v10 = v7[66];
    if (v10)
    {
      *(v10 + 40) = type;
      v11 = v7[67];
      *type = v10;
      v92 = v11;
      v7[66] = 0;
      v7[67] = v7 + 66;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v94 = &__block_descriptor_tmp_21_49595;
      v95 = 0;
      do
      {
        v12 = *type;
        if (!*type)
        {
          break;
        }

        v13 = *(*type + 32);
        v14 = *(*type + 40);
        v15 = (v13 + 40);
        if (!v13)
        {
          v15 = &v92;
        }

        *v15 = v14;
        *v14 = v13;
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }
  }

  if (v7[64])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_protocol_remove_input_handler";
      *&buf[12] = 2080;
      *&buf[14] = v7 + 609;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %s finalizing remaining received input frames", buf, 0x16u);
    }

    if (gLogDatapath == 1)
    {
      v87 = __nwlog_obj();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v17 = v7[64];
    if (v17)
    {
      *(v17 + 40) = type;
      v18 = v7[65];
      *type = v17;
      v92 = v18;
      v7[64] = 0;
      v7[65] = v7 + 64;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v94 = &__block_descriptor_tmp_21_49595;
      v95 = 0;
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
          v22 = &v92;
        }

        *v22 = v21;
        *v21 = v20;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }
  }

  if (v7[71])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_protocol_remove_input_handler";
      *&buf[12] = 2080;
      *&buf[14] = v7 + 609;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s %s finalizing remaining received output frames", buf, 0x16u);
    }

    if (gLogDatapath == 1)
    {
      v88 = __nwlog_obj();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v24 = v7[71];
    if (v24)
    {
      *(v24 + 40) = type;
      v25 = v7[72];
      *type = v24;
      v92 = v25;
      v7[71] = 0;
      v7[72] = v7 + 71;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v94 = &__block_descriptor_tmp_21_49595;
      v95 = 0;
      do
      {
        v26 = *type;
        if (!*type)
        {
          break;
        }

        v27 = *(*type + 32);
        v28 = *(*type + 40);
        v29 = (v27 + 40);
        if (!v27)
        {
          v29 = &v92;
        }

        *v29 = v28;
        *v28 = v27;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }
  }

  nw_protocol_set_input_handler(a1, 0);
  output_handler = a1->output_handler;
  if (output_handler)
  {
    callbacks = output_handler->callbacks;
    if (callbacks)
    {
      remove_input_handler = callbacks->remove_input_handler;
      if (remove_input_handler)
      {
        remove_input_handler();
        nw_protocol_set_output_handler(a1, 0);
      }
    }
  }

  if (!a3)
  {
LABEL_68:
    v8 = 1;
    goto LABEL_69;
  }

  v33 = v7;
  v34 = *(v33 + 41);
  if (v34 == v33)
  {
LABEL_48:
    if (gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_framer_protocol_destroy";
        *&buf[12] = 2080;
        *&buf[14] = v33 + 609;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %s Destroying protocol", buf, 0x16u);
      }
    }

    v38 = *(v33 + 54);
    if (v38)
    {
      (*(v38 + 16))(v38, v33);
    }

    nw_protocol_remove_instance((v33 + 288));
    v39 = *(v33 + 40);
    if (v39)
    {
      v40 = *(v39 + 24);
      if (v40)
      {
        v41 = *(v40 + 8);
        if (v41)
        {
          v41(v39, v33 + 288);
          nw_protocol_set_output_handler((v33 + 288), 0);
        }
      }
    }

    v42 = *(v33 + 58);
    if (v42)
    {
      *(v42 + 24) = type;
      v43 = *(v33 + 59);
      *type = v42;
      v92 = v43;
      *(v33 + 58) = 0;
      *(v33 + 59) = v33 + 464;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v94 = &__block_descriptor_tmp_21_49595;
      v95 = 0;
      do
      {
        v44 = *type;
        if (!*type)
        {
          break;
        }

        v45 = *(*type + 16);
        v46 = *(*type + 24);
        v47 = (v45 + 24);
        if (!v45)
        {
          v47 = &v92;
        }

        *v47 = v46;
        *v46 = v45;
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v48 = *(v33 + 60);
    if (v48)
    {
      *(v48 + 24) = type;
      v49 = *(v33 + 61);
      *type = v48;
      v92 = v49;
      *(v33 + 60) = 0;
      *(v33 + 61) = v33 + 480;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v94 = &__block_descriptor_tmp_21_49595;
      v95 = 0;
      do
      {
        v50 = *type;
        if (!*type)
        {
          break;
        }

        v51 = *(*type + 16);
        v52 = *(*type + 24);
        v53 = (v51 + 24);
        if (!v51)
        {
          v53 = &v92;
        }

        *v53 = v52;
        *v52 = v51;
        *(v50 + 16) = 0;
        *(v50 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v54 = *(v33 + 46);
    nw_context_reset_timer_block_with_time(v54, v33, -1, 0);

    v55 = *(v33 + 70);
    *(v33 + 70) = 0;

    *(v33 + 41) = 0;
    v56 = *(v33 + 45);
    *(v33 + 45) = 0;

    v57 = *(v33 + 44);
    *(v33 + 44) = 0;

    v58 = *(v33 + 49);
    *(v33 + 49) = 0;

    v59 = *(v33 + 50);
    *(v33 + 50) = 0;

    v60 = *(v33 + 51);
    *(v33 + 51) = 0;

    v61 = *(v33 + 52);
    *(v33 + 52) = 0;

    v62 = *(v33 + 53);
    *(v33 + 53) = 0;

    v63 = *(v33 + 54);
    *(v33 + 54) = 0;

    goto LABEL_68;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v35 = gLogObj;
  os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_framer_protocol_destroy";
  v36 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v36);
  if (!result)
  {
    free(v36);
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t nw_framer_protocol_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1->handle;
    v7 = v6;
    if (v6)
    {
      if (v6[1])
      {
        if (a2)
        {
          if (a3)
          {
            if (a1->default_input_handler == a2)
            {
              nw_protocol_set_input_handler(a1, a3);
              *a1->flow_id = *a3->flow_id;
              if (!a3->output_handler)
              {
                nw_protocol_set_output_handler(a3, a1);
              }

              callbacks = a3->callbacks;
              if (callbacks && (supports_external_data = callbacks->supports_external_data) != 0)
              {
                v16 = v7[606] & 0xFE | supports_external_data(a3);
              }

              else
              {
                v16 = v7[606] & 0xFE;
              }

              v7[606] = v16;
              v17 = 1;
              goto LABEL_33;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            default_input_handler = a1->default_input_handler;
            *buf = 136446978;
            v59 = "nw_framer_protocol_replace_input_handler";
            v60 = 2080;
            v61 = v7 + 609;
            v62 = 2048;
            v63 = default_input_handler;
            v64 = 2048;
            v65 = a2;
            v10 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v56 = 0;
            if (__nwlog_fault(v10, &type, &v56))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v11 = gLogObj;
                v12 = type;
                if (os_log_type_enabled(v11, type))
                {
                  v13 = a1->default_input_handler;
                  *buf = 136446978;
                  v59 = "nw_framer_protocol_replace_input_handler";
                  v60 = 2080;
                  v61 = v7 + 609;
                  v62 = 2048;
                  v63 = v13;
                  v64 = 2048;
                  v65 = a2;
                  _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %s Old input handler does not match (%p != %p)", buf, 0x2Au);
                }
              }

              else if (v56 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v11 = gLogObj;
                v19 = type;
                v20 = os_log_type_enabled(v11, type);
                if (backtrace_string)
                {
                  if (v20)
                  {
                    v21 = a1->default_input_handler;
                    *buf = 136447234;
                    v59 = "nw_framer_protocol_replace_input_handler";
                    v60 = 2080;
                    v61 = v7 + 609;
                    v62 = 2048;
                    v63 = v21;
                    v64 = 2048;
                    v65 = a2;
                    v66 = 2082;
                    v67 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s %s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(backtrace_string);
                  if (!v10)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_31;
                }

                if (v20)
                {
                  v24 = a1->default_input_handler;
                  *buf = 136446978;
                  v59 = "nw_framer_protocol_replace_input_handler";
                  v60 = 2080;
                  v61 = v7 + 609;
                  v62 = 2048;
                  v63 = v24;
                  v64 = 2048;
                  v65 = a2;
                  _os_log_impl(&dword_181A37000, v11, v19, "%{public}s %s Old input handler does not match (%p != %p), no backtrace", buf, 0x2Au);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v11 = gLogObj;
                v22 = type;
                if (os_log_type_enabled(v11, type))
                {
                  v23 = a1->default_input_handler;
                  *buf = 136446978;
                  v59 = "nw_framer_protocol_replace_input_handler";
                  v60 = 2080;
                  v61 = v7 + 609;
                  v62 = 2048;
                  v63 = v23;
                  v64 = 2048;
                  v65 = a2;
                  _os_log_impl(&dword_181A37000, v11, v22, "%{public}s %s Old input handler does not match (%p != %p), backtrace limit exceeded", buf, 0x2Au);
                }
              }
            }

LABEL_30:
            if (!v10)
            {
LABEL_32:
              v17 = 0;
LABEL_33:

              return v17;
            }

LABEL_31:
            free(v10);
            goto LABEL_32;
          }

          v37 = __nwlog_obj();
          *buf = 136446210;
          v59 = "nw_framer_protocol_replace_input_handler";
          v10 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v56 = 0;
          if (!__nwlog_fault(v10, &type, &v56))
          {
            goto LABEL_30;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v31 = __nwlog_obj();
            v38 = type;
            if (os_log_type_enabled(v31, type))
            {
              *buf = 136446210;
              v59 = "nw_framer_protocol_replace_input_handler";
              _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null new_input_handler", buf, 0xCu);
            }

LABEL_118:

            goto LABEL_30;
          }

          if (v56 != 1)
          {
            v31 = __nwlog_obj();
            v55 = type;
            if (os_log_type_enabled(v31, type))
            {
              *buf = 136446210;
              v59 = "nw_framer_protocol_replace_input_handler";
              _os_log_impl(&dword_181A37000, v31, v55, "%{public}s called with null new_input_handler, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_118;
          }

          v42 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v49 = type;
          v50 = os_log_type_enabled(v31, type);
          if (!v42)
          {
            if (v50)
            {
              *buf = 136446210;
              v59 = "nw_framer_protocol_replace_input_handler";
              _os_log_impl(&dword_181A37000, v31, v49, "%{public}s called with null new_input_handler, no backtrace", buf, 0xCu);
            }

            goto LABEL_118;
          }

          if (v50)
          {
            *buf = 136446466;
            v59 = "nw_framer_protocol_replace_input_handler";
            v60 = 2082;
            v61 = v42;
            _os_log_impl(&dword_181A37000, v31, v49, "%{public}s called with null new_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          v35 = __nwlog_obj();
          *buf = 136446210;
          v59 = "nw_framer_protocol_replace_input_handler";
          v10 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v56 = 0;
          if (!__nwlog_fault(v10, &type, &v56))
          {
            goto LABEL_30;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v31 = __nwlog_obj();
            v36 = type;
            if (os_log_type_enabled(v31, type))
            {
              *buf = 136446210;
              v59 = "nw_framer_protocol_replace_input_handler";
              _os_log_impl(&dword_181A37000, v31, v36, "%{public}s called with null old_input_handler", buf, 0xCu);
            }

            goto LABEL_118;
          }

          if (v56 != 1)
          {
            v31 = __nwlog_obj();
            v54 = type;
            if (os_log_type_enabled(v31, type))
            {
              *buf = 136446210;
              v59 = "nw_framer_protocol_replace_input_handler";
              _os_log_impl(&dword_181A37000, v31, v54, "%{public}s called with null old_input_handler, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_118;
          }

          v42 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v47 = type;
          v48 = os_log_type_enabled(v31, type);
          if (!v42)
          {
            if (v48)
            {
              *buf = 136446210;
              v59 = "nw_framer_protocol_replace_input_handler";
              _os_log_impl(&dword_181A37000, v31, v47, "%{public}s called with null old_input_handler, no backtrace", buf, 0xCu);
            }

            goto LABEL_118;
          }

          if (v48)
          {
            *buf = 136446466;
            v59 = "nw_framer_protocol_replace_input_handler";
            v60 = 2082;
            v61 = v42;
            _os_log_impl(&dword_181A37000, v31, v47, "%{public}s called with null old_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }
      }

      else
      {
        v33 = __nwlog_obj();
        *buf = 136446210;
        v59 = "nw_framer_protocol_replace_input_handler";
        v10 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v56 = 0;
        if (!__nwlog_fault(v10, &type, &v56))
        {
          goto LABEL_30;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v31 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v31, type))
          {
            *buf = 136446210;
            v59 = "nw_framer_protocol_replace_input_handler";
            _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

          goto LABEL_118;
        }

        if (v56 != 1)
        {
          v31 = __nwlog_obj();
          v53 = type;
          if (os_log_type_enabled(v31, type))
          {
            *buf = 136446210;
            v59 = "nw_framer_protocol_replace_input_handler";
            _os_log_impl(&dword_181A37000, v31, v53, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_118;
        }

        v42 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v45 = type;
        v46 = os_log_type_enabled(v31, type);
        if (!v42)
        {
          if (v46)
          {
            *buf = 136446210;
            v59 = "nw_framer_protocol_replace_input_handler";
            _os_log_impl(&dword_181A37000, v31, v45, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_118;
        }

        if (v46)
        {
          *buf = 136446466;
          v59 = "nw_framer_protocol_replace_input_handler";
          v60 = 2082;
          v61 = v42;
          _os_log_impl(&dword_181A37000, v31, v45, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      v30 = __nwlog_obj();
      *buf = 136446210;
      v59 = "nw_framer_protocol_replace_input_handler";
      v10 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v10, &type, &v56))
      {
        goto LABEL_30;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v59 = "nw_framer_protocol_replace_input_handler";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_118;
      }

      if (v56 != 1)
      {
        v31 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v59 = "nw_framer_protocol_replace_input_handler";
          _os_log_impl(&dword_181A37000, v31, v52, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_118;
      }

      v42 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v43 = type;
      v44 = os_log_type_enabled(v31, type);
      if (!v42)
      {
        if (v44)
        {
          *buf = 136446210;
          v59 = "nw_framer_protocol_replace_input_handler";
          _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_118;
      }

      if (v44)
      {
        *buf = 136446466;
        v59 = "nw_framer_protocol_replace_input_handler";
        v60 = 2082;
        v61 = v42;
        _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v42);
    goto LABEL_30;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v59 = "nw_framer_protocol_replace_input_handler";
  v27 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v56 = 0;
  if (__nwlog_fault(v27, &type, &v56))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v59 = "nw_framer_protocol_replace_input_handler";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v56 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v28, type);
      if (v39)
      {
        if (v41)
        {
          *buf = 136446466;
          v59 = "nw_framer_protocol_replace_input_handler";
          v60 = 2082;
          v61 = v39;
          _os_log_impl(&dword_181A37000, v28, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        goto LABEL_104;
      }

      if (v41)
      {
        *buf = 136446210;
        v59 = "nw_framer_protocol_replace_input_handler";
        _os_log_impl(&dword_181A37000, v28, v40, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v59 = "nw_framer_protocol_replace_input_handler";
        _os_log_impl(&dword_181A37000, v28, v51, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_104:
  if (v27)
  {
    free(v27);
  }

  return 0;
}

uint64_t nw_framer_register_definition(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;

    v4 = nw_protocol_register_handle(v3 + 8, v3, nw_framer_protocol_create, 0);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_framer_register_definition";
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
        v17 = "nw_framer_register_definition";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null definition", buf, 0xCu);
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
          v17 = "nw_framer_register_definition";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_framer_register_definition";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_framer_register_definition";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

uint64_t __nw_framer_trigger_input_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  frame = nw_framer_protocol_create_frame(*(a1 + 32), a5, nw_framer_protocol_inbound_data_finalizer, *(a1 + 32) + 464, 0);
  buffer = nw_frame_get_buffer(frame, 0);
  memcpy(buffer, a4, a5);
  v10 = *(a1 + 32);
  frame[4] = 0;
  v11 = *(v10 + 520);
  frame[5] = v11;
  *v11 = frame;
  *(v10 + 520) = frame + 4;

  return 1;
}

uint64_t nw_protocol_options_is_framer(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_protocol_options_copy_definition(v1);
    is_framer = nw_protocol_definition_is_framer(v3);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_options_is_framer";
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
        v17 = "nw_protocol_options_is_framer";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null options", buf, 0xCu);
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
          v17 = "nw_protocol_options_is_framer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_protocol_options_is_framer";
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
        v17 = "nw_protocol_options_is_framer";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
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
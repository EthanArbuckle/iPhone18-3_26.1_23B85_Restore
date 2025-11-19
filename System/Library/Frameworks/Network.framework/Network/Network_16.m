uint64_t sub_181B687F0(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_181B2C3E0(result, a2);
  }

  return result;
}

uint64_t _nw_protocol_transform_get_fallback_mode(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 40);

  return v2;
}

uint64_t sub_181B68884(uint64_t result)
{
  v2 = *(*(v1 + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(v1 + 24);
  while (1)
  {
    if (v3)
    {
      goto LABEL_3;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    if (*(v4 + 32 + 4 * v3) == result)
    {
      return 1;
    }

LABEL_3:
    if (v2 == ++v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181B688DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

NWConcrete_nw_endpoint_mode_handler *nw_endpoint_handler_copy_resolver(NWConcrete_nw_endpoint_handler *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_copy_resolver";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v25, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_resolver";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_copy_resolver";
            v37 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v30)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_resolver";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_resolver";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_47;
  }

  if (v1->mode != 1)
  {
    if ((*(v1 + 284) & 0x40) != 0)
    {
LABEL_47:
      v3 = 0;
      goto LABEL_48;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_46:

      goto LABEL_47;
    }

    if (*(v2 + 284))
    {
      v5 = "dry-run ";
    }

    else
    {
      v5 = "";
    }

    v6 = nw_endpoint_handler_copy_endpoint(v2);
    v7 = v6;
    if (v6)
    {
      logging_description = _nw_endpoint_get_logging_description(v6);
    }

    else
    {
      logging_description = "<NULL>";
    }

    state = v2->state;
    if (state > 5)
    {
      v10 = "unknown-state";
    }

    else
    {
      v10 = off_1E6A31048[state];
    }

    v11 = v2;
    v12 = v11;
    mode = v2->mode;
    v32 = v10;
    if (mode > 2)
    {
      if (mode == 3)
      {
        v14 = logging_description;
        v15 = "proxy";
        goto LABEL_31;
      }

      if (mode != 4)
      {
        if (mode == 5)
        {
          v14 = logging_description;
          v15 = "transform";
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v14 = logging_description;
      v15 = "fallback";
    }

    else
    {
      if (!mode)
      {
        v14 = logging_description;
        v15 = "path";
        goto LABEL_31;
      }

      if (mode != 1)
      {
        if (mode == 2)
        {
          v14 = logging_description;
          v15 = nw_endpoint_flow_mode_string(v11->mode_handler);
          goto LABEL_31;
        }

LABEL_28:
        v14 = logging_description;
        v15 = "unknown-mode";
        goto LABEL_31;
      }

      v14 = logging_description;
      v15 = "resolver";
    }

LABEL_31:

    v16 = v12;
    os_unfair_lock_lock(v12 + 28);
    v17 = v16[8];
    os_unfair_lock_unlock(v12 + 28);

    v18 = v17;
    v19 = v16;
    v20 = v2->mode;
    if (v20 > 2)
    {
      switch(v20)
      {
        case 3:
          v22 = "proxy";
          goto LABEL_45;
        case 4:
          v22 = "fallback";
          goto LABEL_45;
        case 5:
          v22 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v20)
      {
        case 0:
          v22 = "path";
          goto LABEL_45;
        case 1:
          v22 = "resolver";
          goto LABEL_45;
        case 2:
          v21 = v19;
          v22 = nw_endpoint_flow_mode_string(v19[33]);
          v19 = v21;
LABEL_45:

          *buf = 136448002;
          v36 = "nw_endpoint_handler_copy_resolver";
          v37 = 2082;
          id_str = v2->id_str;
          v39 = 2082;
          v40 = v5;
          v41 = 2082;
          v42 = v14;
          v43 = 2082;
          v44 = v32;
          v45 = 2082;
          v46 = v15;
          v47 = 2114;
          v48 = v18;
          v49 = 2082;
          v50 = v22;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is %{public}s, not a resolver", buf, 0x52u);

          goto LABEL_46;
      }
    }

    v22 = "unknown-mode";
    goto LABEL_45;
  }

  v3 = v1->mode_handler;
LABEL_48:

  return v3;
}

void nw_connection_start_activity(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_connection_start_activity";
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
        v23 = "nw_connection_start_activity";
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
          v23 = "nw_connection_start_activity";
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
        v23 = "nw_connection_start_activity";
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
        v23 = "nw_connection_start_activity";
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
      nw_connection_add_client_event_internal(v3, 4, 0, v5);
    }

    goto LABEL_5;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_connection_start_activity";
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
      v23 = "nw_connection_start_activity";
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
      v23 = "nw_connection_start_activity";
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
      v23 = "nw_connection_start_activity";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null activity, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_connection_start_activity";
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

void nw_endpoint_resolver_update_path_resolver_locked(NWConcrete_nw_endpoint_handler *a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v42 = __nwlog_obj();
    *v95 = 136446210;
    *&v95[4] = "nw_endpoint_handler_get_mode";
    v43 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v43, type, buf))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *v95 = 136446210;
          *&v95[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null handler", v95, 0xCu);
        }
      }

      else if (buf[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v47 = type[0];
        v48 = os_log_type_enabled(v44, type[0]);
        if (backtrace_string)
        {
          if (v48)
          {
            *v95 = 136446466;
            *&v95[4] = "nw_endpoint_handler_get_mode";
            *&v95[12] = 2082;
            *&v95[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null handler, dumping backtrace:%{public}s", v95, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_73;
        }

        if (v48)
        {
          *v95 = 136446210;
          *&v95[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null handler, no backtrace", v95, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v53 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *v95 = 136446210;
          *&v95[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s called with null handler, backtrace limit exceeded", v95, 0xCu);
        }
      }
    }

LABEL_73:
    if (v43)
    {
      free(v43);
    }

    mode = 0;
    goto LABEL_76;
  }

  mode = v1->mode;

  if (mode == 1)
  {
    v4 = v2;
    os_unfair_lock_lock(&v4->lock);
    v5 = v4->current_path;
    os_unfair_lock_unlock(&v4->lock);

    v71 = v5;
    v6 = nw_endpoint_handler_copy_resolver(v4);
    v7 = v6[1];
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = v5;
    v10 = v9;
    if (v9)
    {
      v11 = v8[370];
      if ((v11 & 0x40) == 0)
      {
        v12 = v9;
        v13 = _nw_path_has_ipv4(v12);

        if (v13)
        {
          *(v8 + 44) &= ~1u;
        }

        v11 = v8[370];
      }

      if ((v11 & 0x80) == 0)
      {
        v14 = v10;
        v15 = _nw_path_has_ipv6(v14);

        if (v15)
        {
          *(v8 + 44) &= ~2u;
        }
      }

      v16 = v10;
      v17 = _nw_path_has_ipv4(v16);

      if (v17)
      {
        v18 = 64;
      }

      else
      {
        v18 = 0;
      }

      v8[370] = v8[370] & 0xBF | v18;
      v19 = v16;
      v20 = _nw_path_has_ipv6(v19);

      if (v20)
      {
        v21 = 0x80;
      }

      else
      {
        v21 = 0;
      }

      v8[370] = v21 & 0x80 | v8[370] & 0x7F;
LABEL_19:

      v5 = v71;
LABEL_20:
      v22 = nw_dictionary_create();
      *v95 = 0;
      *&v95[8] = v95;
      *&v95[16] = 0x3032000000;
      v96 = __Block_byref_object_copy__32509;
      *&v97 = __Block_byref_object_dispose__32510;
      *(&v97 + 1) = 0;
      v87 = 0;
      v88 = &v87;
      v89 = 0x2020000000;
      v90 = 0;
      *type = 0;
      v82 = type;
      v83 = 0x3032000000;
      v84 = __Block_byref_object_copy__32509;
      v85 = __Block_byref_object_dispose__32510;
      v86 = 0;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke;
      v73[3] = &unk_1E6A30DF8;
      v23 = v5;
      v74 = v23;
      v78 = &v87;
      v24 = v4;
      v75 = v24;
      v25 = v6;
      v76 = v25;
      v79 = v95;
      v26 = v22;
      v77 = v26;
      v80 = type;
      nw_path_enumerate_resolve_options(v23, v73);
      objc_storeStrong(v25 + 10, v22);
      objc_storeStrong(v25 + 15, *(*&v95[8] + 40));
      v27 = v25[11];
      if (*(v88 + 24) == 1 && (v28 = *(v82 + 5)) != 0)
      {
        v94 = 0uLL;
        v29 = v28;
        if (!uuid_is_null(v29 + 32))
        {
          v94 = *(v29 + 2);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          *&buf[4] = "nw_endpoint_resolver_update_path_resolver_locked";
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v94;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s Resolve exact flow is set and flow registration was added for flow ID %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        v31 = nw_path_flow_copy_resolved_endpoints(v23, &v94);
        v32 = v25[11];
        v25[11] = v31;
      }

      else
      {
        v33 = nw_path_copy_resolved_endpoints(v23);
        v34 = v25[11];
        v25[11] = v33;
      }

      if (v27 || v25[11])
      {
        goto LABEL_40;
      }

      v35 = _nw_path_copy_flows(v23);
      v36 = v35;
      if (v35)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__32509;
        v92 = __Block_byref_object_dispose__32510;
        v93 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_106;
        aBlock[3] = &unk_1E6A39B60;
        aBlock[4] = buf;
        _nw_array_apply(v35, aBlock);
        if (*(*&buf[8] + 40))
        {
          v37 = nw_endpoint_handler_copy_endpoint(v24);
          v38 = nw_endpoint_get_type(v37);

          nw_endpoint_handler_handle_failure(v24);
          if (v38 == (nw_endpoint_type_url|nw_endpoint_type_address))
          {
            v39 = 7;
          }

          else
          {
            v39 = 2;
          }

          if (v38 == nw_endpoint_type_bonjour_service)
          {
            v39 = 4;
          }

          v40 = *(*&buf[8] + 40);
          v24->event.domain = 2;
          v24->event.event = v39;
          nw_endpoint_handler_report(v24, 0, &v24->event.domain, v40);
        }

        _Block_object_dispose(buf, 8);
      }

      if (v25[11])
      {
LABEL_40:
        if ((v25[3] & 0x10) != 0)
        {
          if (v25[4])
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }
        }

        else
        {
          v41 = 2;
        }

        nw_endpoint_resolver_update(v24, v6[1], v41);
      }

      _Block_object_dispose(type, 8);
      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(v95, 8);

      goto LABEL_97;
    }

    v49 = __nwlog_obj();
    *v95 = 136446210;
    *&v95[4] = "nw_resolver_update_path";
    v50 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v50, type, buf))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v51 = __nwlog_obj();
        v52 = type[0];
        if (os_log_type_enabled(v51, type[0]))
        {
          *v95 = 136446210;
          *&v95[4] = "nw_resolver_update_path";
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null path", v95, 0xCu);
        }
      }

      else if (buf[0] == 1)
      {
        v54 = __nw_create_backtrace_string();
        v51 = __nwlog_obj();
        v55 = type[0];
        v56 = os_log_type_enabled(v51, type[0]);
        if (v54)
        {
          if (v56)
          {
            *v95 = 136446466;
            *&v95[4] = "nw_resolver_update_path";
            *&v95[12] = 2082;
            *&v95[14] = v54;
            _os_log_impl(&dword_181A37000, v51, v55, "%{public}s called with null path, dumping backtrace:%{public}s", v95, 0x16u);
          }

          free(v54);
          goto LABEL_117;
        }

        if (v56)
        {
          *v95 = 136446210;
          *&v95[4] = "nw_resolver_update_path";
          _os_log_impl(&dword_181A37000, v51, v55, "%{public}s called with null path, no backtrace", v95, 0xCu);
        }
      }

      else
      {
        v51 = __nwlog_obj();
        v70 = type[0];
        if (os_log_type_enabled(v51, type[0]))
        {
          *v95 = 136446210;
          *&v95[4] = "nw_resolver_update_path";
          _os_log_impl(&dword_181A37000, v51, v70, "%{public}s called with null path, backtrace limit exceeded", v95, 0xCu);
        }
      }
    }

LABEL_117:
    if (v50)
    {
      free(v50);
    }

    goto LABEL_19;
  }

LABEL_76:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v57 = gLogObj;
  if (mode > 5)
  {
    v58 = "unknown-mode";
  }

  else
  {
    v58 = off_1E6A31018[mode];
  }

  *v95 = 136446722;
  *&v95[4] = "nw_endpoint_resolver_update_path_resolver_locked";
  *&v95[12] = 2082;
  *&v95[14] = v58;
  *&v95[22] = 2082;
  v96 = "resolver";
  v59 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  buf[0] = 0;
  if (!__nwlog_fault(v59, type, buf))
  {
LABEL_95:
    if (!v59)
    {
      goto LABEL_97;
    }

LABEL_96:
    free(v59);
    goto LABEL_97;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v60 = gLogObj;
    v61 = type[0];
    if (os_log_type_enabled(v60, type[0]))
    {
      if (mode > 5)
      {
        v62 = "unknown-mode";
      }

      else
      {
        v62 = off_1E6A31018[mode];
      }

      *v95 = 136446722;
      *&v95[4] = "nw_endpoint_resolver_update_path_resolver_locked";
      *&v95[12] = 2082;
      *&v95[14] = v62;
      *&v95[22] = 2082;
      v96 = "resolver";
      _os_log_impl(&dword_181A37000, v60, v61, "%{public}s Handler is in mode %{public}s, expected %{public}s", v95, 0x20u);
    }

LABEL_94:

    goto LABEL_95;
  }

  if (buf[0] != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v60 = gLogObj;
    v67 = type[0];
    if (os_log_type_enabled(v60, type[0]))
    {
      if (mode > 5)
      {
        v68 = "unknown-mode";
      }

      else
      {
        v68 = off_1E6A31018[mode];
      }

      *v95 = 136446722;
      *&v95[4] = "nw_endpoint_resolver_update_path_resolver_locked";
      *&v95[12] = 2082;
      *&v95[14] = v68;
      *&v95[22] = 2082;
      v96 = "resolver";
      _os_log_impl(&dword_181A37000, v60, v67, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", v95, 0x20u);
    }

    goto LABEL_94;
  }

  v63 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v60 = gLogObj;
  v64 = type[0];
  v65 = os_log_type_enabled(v60, type[0]);
  if (!v63)
  {
    if (v65)
    {
      if (mode > 5)
      {
        v69 = "unknown-mode";
      }

      else
      {
        v69 = off_1E6A31018[mode];
      }

      *v95 = 136446722;
      *&v95[4] = "nw_endpoint_resolver_update_path_resolver_locked";
      *&v95[12] = 2082;
      *&v95[14] = v69;
      *&v95[22] = 2082;
      v96 = "resolver";
      _os_log_impl(&dword_181A37000, v60, v64, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", v95, 0x20u);
    }

    goto LABEL_94;
  }

  if (v65)
  {
    if (mode > 5)
    {
      v66 = "unknown-mode";
    }

    else
    {
      v66 = off_1E6A31018[mode];
    }

    *v95 = 136446978;
    *&v95[4] = "nw_endpoint_resolver_update_path_resolver_locked";
    *&v95[12] = 2082;
    *&v95[14] = v66;
    *&v95[22] = 2082;
    v96 = "resolver";
    LOWORD(v97) = 2082;
    *(&v97 + 2) = v63;
    _os_log_impl(&dword_181A37000, v60, v64, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", v95, 0x2Au);
  }

  free(v63);
  if (v59)
  {
    goto LABEL_96;
  }

LABEL_97:
}

void sub_181B6A1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, char a37)
{
  _Block_object_dispose((v42 - 240), 8);

  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v42 - 176), 8);

  _Unwind_Resume(a1);
}

void nw_path_enumerate_resolve_options(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_enumerate_resolve_options";
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
        v23 = "nw_path_enumerate_resolve_options";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
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
          v23 = "nw_path_enumerate_resolve_options";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_path_enumerate_resolve_options";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_resolve_options";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_path_enumerate_resolve_options(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_enumerate_resolve_options";
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
      v23 = "nw_path_enumerate_resolve_options";
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
      v23 = "nw_path_enumerate_resolve_options";
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
      v23 = "nw_path_enumerate_resolve_options";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_enumerate_resolve_options";
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

void sub_181B6A7D8(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  v9 = *(a1 + 264);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v35 = v7;
    v36 = v5;
    v11 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v9 + 64);
    v15 = OBJC_IVAR____TtC7Network8Endpoint_type;
    v32 = v8;

    v34 = v15;
    swift_beginAccess();
    v16 = 0;
    v17 = (v12 + 63) >> 6;
    v29 = a2 + 16;
    v30 = a2;
    v37 = v8;
    v33 = v9;
LABEL_8:
    while (v14)
    {
LABEL_13:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v9 + 56) + ((v16 << 9) | (8 * v19)));
      if (*(v20 + 82))
      {
        v40 = *(*(v9 + 56) + ((v16 << 9) | (8 * v19)));
        swift_retain_n();
        sub_181AC23B8(&v40, &v41);
        v21 = v41;
        if (v41)
        {
          v22 = v42;
          v23 = v43;
          v38 = v44;
          v39 = *(&v41 + 1);
          v24 = v8 + v34;
          v25 = v35;
          sub_181B5C0FC(v24, v35);
          v26 = dword_182AEE080[swift_getEnumCaseMultiPayload()];
          sub_181B5C160(v25);
          v27 = *(v22 + 16);
          if (v27)
          {
            v31 = v22;
            v28 = 0;
            v8 = v37;
            while (1)
            {
              if ((v28 & 1) == 0)
              {
                if (v28 >= *(v23 + 16))
                {
                  goto LABEL_30;
                }

                if (*(v23 + 32 + 4 * v28) == v26)
                {
                  break;
                }
              }

              if (v27 == ++v28)
              {

                sub_181AD1A40(v21);
                v9 = v33;
                goto LABEL_8;
              }
            }

            sub_181AD1A40(v21);
            if ((*(v20 + 80) & 0x13) != 1)
            {
              v41 = *(v20 + 32);
              (*(v30 + 16))(v30, &v41);
            }

            v9 = v33;
          }

          else
          {

            sub_181AD1A40(v21);
            v8 = v37;
            v9 = v33;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
      }

      if (v18 >= v17)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v16 = v18;
        goto LABEL_13;
      }
    }
  }
}

uint64_t nw_path_copy_resolved_endpoints(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_resolved_endpoints(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_resolved_endpoints";
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
        v16 = "nw_path_copy_resolved_endpoints";
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
          v16 = "nw_path_copy_resolved_endpoints";
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
        v16 = "nw_path_copy_resolved_endpoints";
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
        v16 = "nw_path_copy_resolved_endpoints";
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

uint64_t _nw_path_can_resolve_endpoint(char *a1, void *a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v3], 0x17AuLL);
    memcpy(__src, &a1[v3], sizeof(__src));
    v6 = a2;
    sub_181A3DF5C(__dst, v11);
    v7 = sub_181B6AE7C(v6);

    memcpy(v11, __src, 0x17AuLL);
    sub_181A3DFB8(v11);
    swift_endAccess();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_181B6AE7C(uint64_t a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  if (sub_181AC2A38(0) & 1) != 0 && (sub_181AC350C(0, v15), (v8 = v15[0]) != 0) && (v14[0] = v15[2], v14[1] = v15[3], v9 = OBJC_IVAR____TtC7Network8Endpoint_type, swift_beginAccess(), sub_181B5C0FC(a1 + v9, v7), v10 = dword_182AEE080[swift_getEnumCaseMultiPayload()], sub_181B5C160(v7), LOBYTE(v9) = sub_181B68884(v10), sub_181AD1A40(v8), (v9))
  {
    v11 = 1;
  }

  else
  {
    v12 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(a1 + v12, v4);
    if (swift_getEnumCaseMultiPayload() - 2 >= 3)
    {
      v11 = sub_181FD6A88(a1);
    }

    else
    {
      v11 = 1;
    }

    sub_181B5C160(v4);
  }

  return v11 & 1;
}

uint64_t sub_181B6B060(int a1)
{
  v3 = *(v1 + 288);
  v4 = *(v1 + 292);
  memcpy(__dst, v1, sizeof(__dst));
  v16 = v3;
  v17 = v4;
  v5 = *(v1 + 344);
  v20 = *(v1 + 328);
  v21 = v5;
  v22 = *(v1 + 360);
  v6 = *(v1 + 312);
  v18 = *(v1 + 296);
  v19 = v6;
  v23 = *(v1 + 376);
  if ((sub_181AC2A38(0) & 1) == 0)
  {
    if (v3 == 4 && v4)
    {
      return (a1 - 1) < 2;
    }

    return a1 == 1;
  }

  memcpy(__dst, v1, sizeof(__dst));
  v16 = v3;
  v17 = v4;
  v7 = *(v1 + 344);
  v20 = *(v1 + 328);
  v21 = v7;
  v22 = *(v1 + 360);
  v8 = *(v1 + 312);
  v18 = *(v1 + 296);
  v19 = v8;
  v23 = *(v1 + 376);
  sub_181AC350C(0, &v13);
  if (!v13)
  {
    return a1 == 1;
  }

  v9 = *(v14 + 16);
  v10 = (v14 + 32);
  while (v9)
  {
    v11 = *v10++;
    --v9;
    if (v11 == a1)
    {
      sub_181AD1A40(v13);
      return 1;
    }
  }

  sub_181AD1A40(v13);
  return 0;
}

void _nw_path_assert_required_agents(char *a1)
{
  if (a1)
  {
    v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v3 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v1], 0x17AuLL);
    memcpy(__src, &a1[v1], sizeof(__src));
    sub_181A3DF5C(__dst, v6);
    sub_181B6EA18();
    memcpy(v6, __src, 0x17AuLL);
    sub_181A3DFB8(v6);
    swift_endAccess();
  }
}

char *sub_181B6B27C()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 264);
  if (!v1)
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 56) + ((v6 << 9) | (8 * v9)));
    if ((*(v10 + 81) & 2) != 0)
    {
      v14 = *(v10 + 32);

      if (uuid_is_null(&v14) == 1)
      {
      }

      else
      {
        v14 = *(v10 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_181C6CA4C(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_181C6CA4C((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        *&v7[16 * v12 + 32] = v14;
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  return v7;
}

void nw_path_assert_required_agents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_path_assert_required_agents(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_assert_required_agents";
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
        v14 = "nw_path_assert_required_agents";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null path", buf, 0xCu);
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
          v14 = "nw_path_assert_required_agents";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_assert_required_agents";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_assert_required_agents";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

id nw_endpoint_handler_copy_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_copy_parameters";
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
        v16 = "nw_endpoint_handler_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
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
          v16 = "nw_endpoint_handler_copy_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

unint64_t get_enum_tag_for_layout_string_7Network13ProtocolStackC08InternetB0O_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t nw_endpoint_handler_get_next_id(atomic_uint *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = atomic_fetch_add(a1, 1u) + 1;
  if (v1 >= 0x100 && !v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446466;
      v6 = "nw_endpoint_handler_get_next_id";
      v7 = 1024;
      v8 = v1;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s reached %u child endpoint handlers, wrapping", &v5, 0x12u);
    }

    LOBYTE(v1) = nw_endpoint_handler_get_next_id(a1);
  }

  return v1;
}

uint64_t _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!v2)
  {
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:

LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  v6 = *(a2 + 8);
  v7 = v2;
  v4 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v7, &v6);
  swift_retain_n();

  return v4 & 1;
}

id nw_endpoint_handler_copy_context(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_copy_context";
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
        v16 = "nw_endpoint_handler_copy_context";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
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
          v16 = "nw_endpoint_handler_copy_context";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_context";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_context";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181B6C108()
{
  if (*(v0 + 376) == 1)
  {
    result = *(v0 + 100);
    if (result)
    {
      return result;
    }

    v2 = *(v0 + 8);
    if (v2)
    {
      return *(v2 + 56);
    }

    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1ED411DA8);
    v4 = sub_182AD2678();
    v5 = sub_182AD38B8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_181A37000, v4, v5, "Unable to determine MTU for path", v6, 2u);
      MEMORY[0x1865DF520](v6, -1, -1);
    }
  }

  return 0;
}

void nw_connection_async_on_queue(void *a1, void *a2, dispatch_qos_class_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (nw_parameters_is_persona_set(v7[2]))
  {
    v10 = v7[2];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZL28nw_connection_async_on_queueP24NWConcrete_nw_connectionPU28objcproto17OS_dispatch_queue8NSObject11qos_class_tU13block_pointerFvvE_block_invoke;
    v11[3] = &unk_1E6A36198;
    v12 = v7;
    v13 = v8;
    v15 = a3;
    v14 = v9;
    nw_utilities_execute_block_as_persona_from_parameters(v10, v11);
  }

  else
  {
    __nw_connection_async_on_queue(v7, v8, a3, v9);
  }
}

void __nw_connection_async_on_queue(void *a1, void *a2, dispatch_qos_class_t a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (v8)
  {
    v10 = dispatch_block_create_with_qos_class(0, a3, 0, v9);
    dispatch_async(v8, v10);

    goto LABEL_3;
  }

  if (!v7[5])
  {
    nw_context_queue_block(v7[3], v9);
    goto LABEL_3;
  }

  v11 = v7[2];
  if (v11 && !_nw_parameters_get_logging_disabled(v11))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    v13 = *(v7 + 112);
    *buf = 136446466;
    v30 = "__nw_connection_async_on_queue";
    v31 = 1024;
    v32 = v13;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v14, &type, &v27))
    {
LABEL_16:
      if (!v14)
      {
        goto LABEL_3;
      }

LABEL_17:
      free(v14);
      goto LABEL_3;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        v17 = *(v7 + 112);
        *buf = 136446466;
        v30 = "__nw_connection_async_on_queue";
        v31 = 1024;
        v32 = v17;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [C%u] unable to dispatch block", buf, 0x12u);
      }

LABEL_15:

      goto LABEL_16;
    }

    if (v27 != 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      v23 = type;
      if (os_log_type_enabled(v15, type))
      {
        v24 = *(v7 + 112);
        *buf = 136446466;
        v30 = "__nw_connection_async_on_queue";
        v31 = 1024;
        v32 = v24;
        _os_log_impl(&dword_181A37000, v15, v23, "%{public}s [C%u] unable to dispatch block, backtrace limit exceeded", buf, 0x12u);
      }

      goto LABEL_15;
    }

    backtrace_string = __nw_create_backtrace_string();
    if (!backtrace_string)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      v25 = type;
      if (os_log_type_enabled(v15, type))
      {
        v26 = *(v7 + 112);
        *buf = 136446466;
        v30 = "__nw_connection_async_on_queue";
        v31 = 1024;
        v32 = v26;
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s [C%u] unable to dispatch block, no backtrace", buf, 0x12u);
      }

      goto LABEL_15;
    }

    v19 = backtrace_string;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    v21 = type;
    if (os_log_type_enabled(v20, type))
    {
      v22 = *(v7 + 112);
      *buf = 136446722;
      v30 = "__nw_connection_async_on_queue";
      v31 = 1024;
      v32 = v22;
      v33 = 2082;
      v34 = v19;
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s [C%u] unable to dispatch block, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(v19);
    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_3:
}

uint64_t nw_parameters_get_bundle_id_to_uuid_mapping_failed(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_bundle_id_to_uuid_mapping_failed(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_bundle_id_to_uuid_mapping_failed";
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
        v12 = "nw_parameters_get_bundle_id_to_uuid_mapping_failed";
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
            v12 = "nw_parameters_get_bundle_id_to_uuid_mapping_failed";
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
        v12 = "nw_parameters_get_bundle_id_to_uuid_mapping_failed";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_bundle_id_to_uuid_mapping_failed";
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

uint64_t nw_parameters_get_pid_to_uuid_mapping_failed(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_pid_to_uuid_mapping_failed(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_pid_to_uuid_mapping_failed";
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
        v12 = "nw_parameters_get_pid_to_uuid_mapping_failed";
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
            v12 = "nw_parameters_get_pid_to_uuid_mapping_failed";
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
        v12 = "nw_parameters_get_pid_to_uuid_mapping_failed";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_pid_to_uuid_mapping_failed";
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

unint64_t _nw_protocol_stack_get_application_protocol_count()
{

  v0 = *(sub_181AC9084() + 24);

  v1 = *(sub_181A54748() + 24);

  result = v0 + v1;
  if (__OFADD__(v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *sub_181B6CD3C(uint64_t a1, uint64_t a2)
{

  v4 = *(sub_181AC9084() + 24);

  if (v4 > a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = *(a1 + 16);
      if (v6[3] > a2)
      {
        v7 = v6[4] + a2;
        v8 = v6[2];
        if (v7 < v8)
        {
          v8 = 0;
        }

        v9 = &v6[2 * (v7 - v8)];
        v10 = v9[5];
        v11 = v9[6];
        sub_181B2C3E0(v10, v11);
        v12 = v11 >> 62;
        if (v11 >> 62)
        {
LABEL_7:
          if (v12 != 1)
          {

            return 0;
          }

          v13 = v11 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_16:
          ObjectType = swift_getObjectType();
          v20 = (*(v13 + 336))(ObjectType, v13);

          sub_181AAD084(v10, v11);
          return v20;
        }

LABEL_15:
        v13 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = __OFSUB__(a2, v4);
  v15 = a2 - v4;
  if (v14)
  {
    goto LABEL_20;
  }

  result = sub_181A54748();
  if (v15 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 < result[3])
  {
    v16 = result[4] + v15;
    v17 = result[2];
    if (v16 < v17)
    {
      v17 = 0;
    }

    v18 = &result[2 * (v16 - v17)];
    v10 = v18[5];
    v11 = v18[6];
    sub_181B2C3E0(v10, v11);

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t nw_endpoint_flow_should_ignore_path_result(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[34] >> 6) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_flow_should_ignore_path_result";
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
        v15 = "nw_endpoint_flow_should_ignore_path_result";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint_flow", buf, 0xCu);
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
          v15 = "nw_endpoint_flow_should_ignore_path_result";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_should_ignore_path_result";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_should_ignore_path_result";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_protocol_stack_get_persistent_application_protocol_count()
{

  v0 = *(sub_181AC9084() + 24);

  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v0))
  {
    return v0;
  }

  __break(1u);
  return result;
}

BOOL ___ZL33nw_endpoint_flow_expected_to_joinP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flow_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v120 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v96 = v7;
  v97 = v8;
  if (nw_protocol_definition_is_proxy(v7))
  {
    if (nw_protocol_options_proxy_endpoint_should_override_stack(v8))
    {
      v9 = nw_protocol_options_copy_proxy_endpoint_for_stack(v8);
    }

    else
    {
      v9 = nw_endpoint_copy_without_proxy_parent(*(a1 + 32));
    }

    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = nw_endpoint_handler_copy_context(*(a1 + 40));
    v13 = *(*(*(a1 + 64) + 8) + 40);
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v14 = 1;
    }

    else
    {
      v14 = nw_parameters_get_use_enhanced_privacy_mode(*(a1 + 48)) ^ 1;
    }

    v15 = nw_context_copy_registered_endpoint_internal(v12, v13, v14);
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *(*(*(a1 + 72) + 8) + 24) = 1;
    *(*(a1 + 56) + 35) |= 0x20u;
  }

  identifier = nw_protocol_definition_get_identifier(v7);
  v19 = *(*(*(a1 + 72) + 8) + 24);
  v20 = *(a1 + 32);
  v21 = *(*(*(a1 + 64) + 8) + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 40);
  v98 = v20;
  v99 = v21;
  v24 = v22;
  v95 = v23;
  if (!v23)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_endpoint_flow_find_protocol_to_join";
    v59 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v59, &type, &v100))
    {
      goto LABEL_155;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v100 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v65 = type;
      v66 = os_log_type_enabled(v60, type);
      if (backtrace_string)
      {
        if (v66)
        {
          *buf = 136446466;
          v103 = "nw_endpoint_flow_find_protocol_to_join";
          v104 = 2082;
          v105 = backtrace_string;
          _os_log_impl(&dword_181A37000, v60, v65, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_155:
        if (!v59)
        {
          goto LABEL_80;
        }

        goto LABEL_156;
      }

      if (v66)
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v65, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v60 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v71, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_154:

    goto LABEL_155;
  }

  v25 = v23;
  v26 = v25[29];

  if (v26 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (v26 > 5)
    {
      v37 = "unknown-mode";
    }

    else
    {
      v37 = off_1E6A31018[v26];
    }

    *buf = 136446722;
    v103 = "nw_endpoint_flow_find_protocol_to_join";
    v104 = 2082;
    v105 = v37;
    v106 = 2082;
    v107 = "flow";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (__nwlog_fault(v44, &type, &v100))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          if (v26 > 5)
          {
            v47 = "unknown-mode";
          }

          else
          {
            v47 = off_1E6A31018[v26];
          }

          *buf = 136446722;
          v103 = "nw_endpoint_flow_find_protocol_to_join";
          v104 = 2082;
          v105 = v47;
          v106 = 2082;
          v107 = "flow";
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v100 == 1)
      {
        v48 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = gLogObj;
        v49 = type;
        v50 = os_log_type_enabled(v45, type);
        if (v48)
        {
          if (v50)
          {
            if (v26 > 5)
            {
              v51 = "unknown-mode";
            }

            else
            {
              v51 = off_1E6A31018[v26];
            }

            *buf = 136446978;
            v103 = "nw_endpoint_flow_find_protocol_to_join";
            v104 = 2082;
            v105 = v51;
            v106 = 2082;
            v107 = "flow";
            v108 = 2082;
            v109 = v48;
            _os_log_impl(&dword_181A37000, v45, v49, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v48);
          if (!v44)
          {
            goto LABEL_80;
          }

LABEL_78:
          v55 = v44;
LABEL_79:
          free(v55);
          goto LABEL_80;
        }

        if (v50)
        {
          if (v26 > 5)
          {
            v54 = "unknown-mode";
          }

          else
          {
            v54 = off_1E6A31018[v26];
          }

          *buf = 136446722;
          v103 = "nw_endpoint_flow_find_protocol_to_join";
          v104 = 2082;
          v105 = v54;
          v106 = 2082;
          v107 = "flow";
          _os_log_impl(&dword_181A37000, v45, v49, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = gLogObj;
        v52 = type;
        if (os_log_type_enabled(v45, type))
        {
          if (v26 > 5)
          {
            v53 = "unknown-mode";
          }

          else
          {
            v53 = off_1E6A31018[v26];
          }

          *buf = 136446722;
          v103 = "nw_endpoint_flow_find_protocol_to_join";
          v104 = 2082;
          v105 = v53;
          v106 = 2082;
          v107 = "flow";
          _os_log_impl(&dword_181A37000, v45, v52, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v44)
    {
LABEL_80:
      registered_endpoint = 0;
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  if (!identifier)
  {
    v62 = __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_endpoint_flow_find_protocol_to_join";
    v59 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v59, &type, &v100))
    {
      goto LABEL_155;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v63 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null identifier", buf, 0xCu);
      }

      goto LABEL_154;
    }

    if (v100 != 1)
    {
      v60 = __nwlog_obj();
      v79 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v79, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_154;
    }

    v72 = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v73 = type;
    v74 = os_log_type_enabled(v60, type);
    if (!v72)
    {
      if (v74)
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v73, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_154;
    }

    if (v74)
    {
      *buf = 136446466;
      v103 = "nw_endpoint_flow_find_protocol_to_join";
      v104 = 2082;
      v105 = v72;
      _os_log_impl(&dword_181A37000, v60, v73, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_124;
  }

  if (!v99)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_endpoint_flow_find_protocol_to_join";
    v59 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v59, &type, &v100))
    {
      goto LABEL_155;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v68 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v68, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_154;
    }

    if (v100 != 1)
    {
      v60 = __nwlog_obj();
      v80 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v80, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_154;
    }

    v72 = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v75 = type;
    v76 = os_log_type_enabled(v60, type);
    if (!v72)
    {
      if (v76)
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v75, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_154;
    }

    if (v76)
    {
      *buf = 136446466;
      v103 = "nw_endpoint_flow_find_protocol_to_join";
      v104 = 2082;
      v105 = v72;
      _os_log_impl(&dword_181A37000, v60, v75, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_124;
  }

  if (!v24)
  {
    v69 = __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_endpoint_flow_find_protocol_to_join";
    v59 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v59, &type, &v100))
    {
      goto LABEL_155;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v70, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_154;
    }

    if (v100 != 1)
    {
      v60 = __nwlog_obj();
      v81 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v81, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_154;
    }

    v72 = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v77 = type;
    v78 = os_log_type_enabled(v60, type);
    if (!v72)
    {
      if (v78)
      {
        *buf = 136446210;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v60, v77, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_154;
    }

    if (v78)
    {
      *buf = 136446466;
      v103 = "nw_endpoint_flow_find_protocol_to_join";
      v104 = 2082;
      v105 = v72;
      _os_log_impl(&dword_181A37000, v60, v77, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_124:

    free(v72);
    if (!v59)
    {
      goto LABEL_80;
    }

LABEL_156:
    v55 = v59;
    goto LABEL_79;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v27 = &g_registration_list;
  do
  {
    v27 = *v27;
    if (!v27)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_38;
    }
  }

  while (*identifier != v27[4] || *(identifier + 1) != v27[5] || *(identifier + 2) != v27[6] || *(identifier + 3) != v27[7] || *(identifier + 4) != v27[8]);
  v32 = v27[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v32)
  {
LABEL_38:
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v25) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v38 = gconnectionLogObj;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v25);
        v91 = nw_endpoint_handler_dry_run_string(v25);
        v39 = nw_endpoint_handler_copy_endpoint(v25);
        logging_description = nw_endpoint_get_logging_description(v39);
        v41 = nw_endpoint_handler_state_string(v25);
        v42 = nw_endpoint_handler_mode_string(v25);
        v43 = nw_endpoint_handler_copy_current_path(v25);
        *buf = 136448258;
        v103 = "nw_endpoint_flow_find_protocol_to_join";
        v104 = 2082;
        v105 = id_string;
        v106 = 2082;
        v107 = v91;
        v108 = 2082;
        v109 = logging_description;
        v110 = 2082;
        v111 = v41;
        v112 = 2082;
        v113 = v42;
        v114 = 2114;
        v115 = v43;
        v116 = 2080;
        v117 = identifier;
        v118 = 2048;
        v119 = identifier;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x5Cu);
      }
    }

    goto LABEL_80;
  }

  v33 = v99;
  v34 = v33;
  while (1)
  {
    registered_endpoint = nw_protocol_instance_registrar_search_for_instance_to_join(identifier, a2, v98, v34, v33, v24, v19);
    if (registered_endpoint)
    {
      break;
    }

    registered_endpoint = nw_protocol_instance_registrar_copy_next_registered_endpoint(v34, v19);

    v34 = registered_endpoint;
    if (!registered_endpoint)
    {
      goto LABEL_60;
    }
  }

  if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v25) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v82 = gconnectionLogObj;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      v83 = nw_endpoint_handler_get_id_string(v25);
      v94 = nw_endpoint_handler_dry_run_string(v25);
      v84 = nw_endpoint_handler_copy_endpoint(v25);
      v92 = nw_endpoint_get_logging_description(v84);
      v85 = nw_endpoint_handler_state_string(v25);
      v86 = nw_endpoint_handler_mode_string(v25);
      v87 = nw_endpoint_handler_copy_current_path(v25);
      v88 = v87;
      v103 = "nw_endpoint_flow_find_protocol_to_join";
      v89 = "invalid";
      v90 = *(registered_endpoint + 16);
      *buf = 136448258;
      if (v90)
      {
        v89 = v90;
      }

      v104 = 2082;
      v105 = v83;
      v106 = 2082;
      v107 = v94;
      v108 = 2082;
      v109 = v92;
      v110 = 2082;
      v111 = v85;
      v112 = 2082;
      v113 = v86;
      v114 = 2114;
      v115 = v87;
      v116 = 2080;
      v117 = v89;
      v118 = 2048;
      v119 = registered_endpoint;
      _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] returning protocol to join %s (%p)", buf, 0x5Cu);
    }
  }

LABEL_60:

LABEL_81:
  *(*(*(a1 + 80) + 8) + 24) = registered_endpoint;
  v56 = *(*(*(a1 + 80) + 8) + 24) == 0;

  return v56;
}

BOOL nw_protocol_definition_is_proxy(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[192] < 0;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_is_proxy";
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
        v15 = "nw_protocol_definition_is_proxy";
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
          v15 = "nw_protocol_definition_is_proxy";
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
        v15 = "nw_protocol_definition_is_proxy";
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
        v15 = "nw_protocol_definition_is_proxy";
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

BOOL nw_endpoint_flow_should_add_filter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = v4;
  filter_unit = _nw_path_get_filter_unit(v6);

  if (v3)
  {
    allow_socket_access = _nw_parameters_get_allow_socket_access(v3);
    if (filter_unit < 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = allow_socket_access;
    }

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else if (filter_unit < 1)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v10 = v6;
  v11 = _nw_path_uses_interface_subtype(v10, 4001);

  if (v11)
  {
    goto LABEL_10;
  }

  v14 = v10;
  nexus_protocol_level = _nw_path_get_nexus_protocol_level(v14);

  if (nexus_protocol_level == 2)
  {
    v12 = 1;
  }

  else
  {
    v16 = v14;
    v17 = _nw_path_get_nexus_protocol_level(v16);

    v12 = v17 == 0;
  }

LABEL_11:

  return v12;
}

uint64_t _nw_path_get_filter_unit(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 74);

  return v3;
}

uint64_t nw_parameters_copy_upper_transport_protocol_options(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_upper_transport_protocol_options();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_upper_transport_protocol_options";
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
        v12 = "nw_parameters_copy_upper_transport_protocol_options";
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
            v12 = "nw_parameters_copy_upper_transport_protocol_options";
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
        v12 = "nw_parameters_copy_upper_transport_protocol_options";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_upper_transport_protocol_options";
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

void *sub_181B6EA18()
{
  __dst[48] = *MEMORY[0x1E69E9840];
  result = memcpy(__dst, v0, 0x17AuLL);
  v2 = __dst[33];
  if (__dst[33])
  {
    v3 = 1 << *(__dst[33] + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(__dst[33] + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (v5)
    {
LABEL_10:
      v16 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v17 = *(*(v2 + 56) + ((v7 << 9) | (8 * v16)));
      if ((*(v17 + 81) & 2) != 0)
      {
        *uu = *(v17 + 32);

        if (uuid_is_null(uu) != 1)
        {
          v8 = type metadata accessor for __NWPath();
          v9 = objc_allocWithZone(v8);
          v10 = OBJC_IVAR____TtC7Network8__NWPath_lock;
          type metadata accessor for SystemLock._Storage();
          v11 = swift_allocObject();
          *(v11 + 16) = 0;
          *&v9[v10] = v11;
          *&v9[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
          *&v9[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
          *&v9[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
          memcpy(&v9[OBJC_IVAR____TtC7Network8__NWPath_path], __dst, 0x17AuLL);
          sub_181A3DF5C(__dst, uu);
          v18.receiver = v9;
          v18.super_class = v8;
          v12 = objc_msgSendSuper2(&v18, sel_init);
          *uu = *(v17 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
          v13 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v13);
          *(v13 + 16) = 16;
          *(v13 + 24) = 2 * v14 - 64;
          *(v13 + 32) = *uu;
          nw_path_assert_agent(v12, (v13 + 32));
        }
      }
    }

    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
      }

      if (v15 >= v6)
      {
      }

      v5 = *(v2 + 64 + 8 * v15);
      ++v7;
      if (v5)
      {
        v7 = v15;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t nw_path_copy_interface(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_path_copy_interface";
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
          v22 = "nw_path_copy_interface";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null path", buf, 0xCu);
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
            v22 = "nw_path_copy_interface";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_path_copy_interface";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_path_copy_interface";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_10;
  }

  if (_nw_path_network_is_satisfied(v1))
  {
LABEL_3:
    v3 = _nw_path_copy_direct_interface(v2);
    goto LABEL_11;
  }

  v4 = _nw_path_copy_endpoint(v2);
  v5 = v4;
  if (!v4 || (v6 = v4, v7 = _nw_endpoint_get_type(v6), v6, v7 != 1))
  {

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v8 = v6;
  address_family = _nw_endpoint_get_address_family(v8);

  v3 = 0;
  if (address_family != 2 && address_family != 30)
  {
    goto LABEL_3;
  }

LABEL_11:

  return v3;
}

uint64_t nw_resolver_derive_service_flags(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = 1073762304;
    if (v6 && (v9 = v6, v10 = _nw_endpoint_get_type(v9), v9, v10 != 3))
    {
      if ((nw_parameters_get_desperate_ivan(v7) & 1) == 0 && (nw_parameters_get_allow_unusable_addresses(v7) & 1) == 0 && ((v5[371] & 1) == 0 || (v5[370] & 0x40) != 0))
      {
        v8 = 1073795072;
      }

      if (nw_parameters_get_expired_dns_behavior(v7) != nw_parameters_expired_dns_behavior_prohibit)
      {
        v21 = v9;
        v22 = _nw_endpoint_get_type(v21);

        if (v22 == 2)
        {
          v8 |= 0x80000000;
        }
      }
    }

    else
    {
      v8 = 1073758208;
    }

    v11 = nw_parameters_requires_dnssec_validation(v7);
    traffic_class = nw_parameters_get_traffic_class(v7);
    prohibit_cellular = nw_parameters_get_prohibit_cellular(v7);
    prohibit_expensive = nw_parameters_get_prohibit_expensive(v7);
    prohibit_constrained = nw_parameters_get_prohibit_constrained(v7);
    use_awdl = nw_parameters_get_use_awdl(v7);
    use_p2p = nw_parameters_get_use_p2p(v7);
    v18 = v8 | 0x200000;
    if (!v11)
    {
      v18 = v8;
    }

    if (traffic_class == 100)
    {
      v18 |= 0x80000u;
    }

    if (prohibit_cellular)
    {
      v18 |= 0x8000000u;
    }

    if (prohibit_expensive)
    {
      v18 |= 0x20000000u;
    }

    if (prohibit_constrained)
    {
      v18 |= 0x2000u;
    }

    if (use_awdl)
    {
      v18 |= 0x100000u;
    }

    if (use_p2p)
    {
      v19 = v18 | 0x20000;
    }

    else
    {
      v19 = v18;
    }

    goto LABEL_20;
  }

  v23 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_resolver_derive_service_flags";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v24, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v34 = "nw_resolver_derive_service_flags";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v28 = type;
      v29 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v34 = "nw_resolver_derive_service_flags";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_46;
      }

      if (v29)
      {
        *buf = 136446210;
        v34 = "nw_resolver_derive_service_flags";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v34 = "nw_resolver_derive_service_flags";
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_46:
  if (v24)
  {
    free(v24);
  }

  v19 = 0;
LABEL_20:

  return v19;
}

BOOL nw_parameters_requires_dnssec_validation(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_requires_dnssec_validation(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_requires_dnssec_validation";
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
        v12 = "nw_parameters_requires_dnssec_validation";
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
            v12 = "nw_parameters_requires_dnssec_validation";
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
        v12 = "nw_parameters_requires_dnssec_validation";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_requires_dnssec_validation";
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

uint64_t nw_parameters_get_prohibit_cellular(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_cellular(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_cellular";
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
        v12 = "nw_parameters_get_prohibit_cellular";
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
            v12 = "nw_parameters_get_prohibit_cellular";
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
        v12 = "nw_parameters_get_prohibit_cellular";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_cellular";
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

unint64_t nw_resolver_get_scoped_interface_index(NWConcrete_nw_resolver *a1, unsigned int *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      if (*(v3 + 14))
      {
        v5 = 0;
        *a2 |= 0x10000000u;
        index = *(v3 + 14);
        name = "ServiceIndex";
        if (!index)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = *(v3 + 29);
        if (v5 || (v5 = nw_parameters_copy_required_interface(*(v4 + 2))) != 0 || (v5 = nw_endpoint_copy_interface(*(v4 + 3))) != 0)
        {
          name = _nw_interface_get_name(v5);
          if (_nw_interface_get_type(v5) == 4)
          {
            index = 0xFFFFFFFFLL;
          }

          else
          {
            index = _nw_interface_get_index(v5);
            if (!index)
            {
              goto LABEL_26;
            }
          }
        }

        else if ((*(v4 + 370) & 0x10) != 0)
        {
          v5 = 0;
          index = 0xFFFFFFFFLL;
          name = "LocalOnly";
        }

        else
        {
          v5 = 0;
          if (nw_parameters_get_required_interface_type(*(v4 + 2)) != nw_interface_type_loopback)
          {
            index = 0;
            goto LABEL_26;
          }

          index = 0xFFFFFFFFLL;
          name = "loopback";
        }
      }

      if ((*(v4 + 370) & 0x20) == 0)
      {
        if (*(v4 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v8 = gconnectionLogObj;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_25;
          }

          v9 = "unknown";
          *buf = 136446978;
          v32 = "nw_resolver_get_scoped_interface_index";
          v33 = 2082;
          if (name)
          {
            v9 = name;
          }

          *v34 = v4 + 280;
          *&v34[8] = 2082;
          *&v34[10] = v9;
          *&v34[18] = 1024;
          v35 = index;
          v10 = "%{public}s [C%{public}s] Scoping resolution to %{public}s [%u]";
          v11 = v8;
          v12 = 38;
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
LABEL_25:

            goto LABEL_26;
          }

          v13 = *(v4 + 91);
          v14 = "unknown";
          if (name)
          {
            v14 = name;
          }

          *buf = 136446978;
          v32 = "nw_resolver_get_scoped_interface_index";
          v33 = 1024;
          *v34 = v13;
          *&v34[4] = 2082;
          *&v34[6] = v14;
          *&v34[14] = 1024;
          *&v34[16] = index;
          v10 = "%{public}s [R%u] Scoping resolution to %{public}s [%u]";
          v11 = v8;
          v12 = 34;
        }

        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
        goto LABEL_25;
      }

LABEL_26:

      goto LABEL_27;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_resolver_get_scoped_interface_index";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_resolver_get_scoped_interface_index";
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null service_flags", buf, 0xCu);
        }

LABEL_64:

        goto LABEL_65;
      }

      if (v29 != 1)
      {
        v18 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_resolver_get_scoped_interface_index";
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null service_flags, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_64;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v26)
        {
          *buf = 136446210;
          v32 = "nw_resolver_get_scoped_interface_index";
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null service_flags, no backtrace", buf, 0xCu);
        }

        goto LABEL_64;
      }

      if (v26)
      {
        *buf = 136446466;
        v32 = "nw_resolver_get_scoped_interface_index";
        v33 = 2082;
        *v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null service_flags, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_52;
    }
  }

  else
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_resolver_get_scoped_interface_index";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_resolver_get_scoped_interface_index";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null resolver", buf, 0xCu);
        }

        goto LABEL_64;
      }

      if (v29 != 1)
      {
        v18 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_resolver_get_scoped_interface_index";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_64;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          *buf = 136446210;
          v32 = "nw_resolver_get_scoped_interface_index";
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }

        goto LABEL_64;
      }

      if (v24)
      {
        *buf = 136446466;
        v32 = "nw_resolver_get_scoped_interface_index";
        v33 = 2082;
        *v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_52:

      free(backtrace_string);
    }
  }

LABEL_65:
  if (v17)
  {
    free(v17);
  }

  index = 0;
LABEL_27:

  return index;
}

const uint8_t *__cdecl nw_endpoint_get_signature(nw_endpoint_t endpoint, size_t *out_signature_length)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = endpoint;
  v4 = v3;
  if (v3)
  {
    if (out_signature_length)
    {
      signature = _nw_endpoint_get_signature(v3, out_signature_length);
      goto LABEL_4;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_get_signature";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_get_signature";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null out_signature_length", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_get_signature";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null out_signature_length, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_endpoint_get_signature";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null out_signature_length, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_endpoint_get_signature";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null out_signature_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_get_signature";
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
          v23 = "nw_endpoint_get_signature";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_get_signature";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_endpoint_get_signature";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v23 = "nw_endpoint_get_signature";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }

  signature = 0;
LABEL_4:

  return signature;
}

BOOL nw_context_get_require_encrypted_name_resolution(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_context_get_require_encrypted_name_resolution";
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
          v20 = "nw_context_get_require_encrypted_name_resolution";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null context", buf, 0xCu);
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
            v20 = "nw_context_get_require_encrypted_name_resolution";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_context_get_require_encrypted_name_resolution";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_context_get_require_encrypted_name_resolution";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v10)
    {
      free(v10);
    }

    v5 = 0;
    goto LABEL_12;
  }

  v3 = v1[152];
  if ((v3 & 0x48) != 0x40)
  {
    goto LABEL_5;
  }

  if (dispatch_workloop_is_current())
  {
    v3 = v2[152];
LABEL_5:
    if (v3 < 0)
    {
      v5 = 1;
    }

    else
    {
      v4 = nw_context_copy_globals_context(v2);
      v5 = *(v4 + 152) < 0;
    }

    goto LABEL_12;
  }

  os_unfair_lock_lock(v2 + 22);
  if (v2[152] < 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = nw_context_copy_globals_context(v2);
    v7 = *(v6 + 152);

    v5 = v7 < 0;
  }

  os_unfair_lock_unlock(v2 + 22);
LABEL_12:

  return v5;
}

BOOL nw_parameters_has_delegated_proc_audit_token(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
    v10 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, type, &v22))
    {
      goto LABEL_45;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        buf[0].i32[0] = 136446210;
        *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
        v13 = "%{public}s called with null parameters";
LABEL_43:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }

LABEL_44:

LABEL_45:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_47;
    }

    if (v22 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        buf[0].i32[0] = 136446210;
        *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type[0];
    v16 = os_log_type_enabled(v11, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        buf[0].i32[0] = 136446210;
        *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v16)
    {
      buf[0].i32[0] = 136446466;
      *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
      buf[0].i16[6] = 2082;
      *(&buf[0].i64[1] + 6) = backtrace_string;
      v17 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_33:
      _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
    }

LABEL_34:

    free(backtrace_string);
    goto LABEL_45;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
    v10 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, type, &v22))
    {
      goto LABEL_45;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        buf[0].i32[0] = 136446210;
        *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
        v13 = "%{public}s called with null audit_token";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v22 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        buf[0].i32[0] = 136446210;
        *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
        v13 = "%{public}s called with null audit_token, backtrace limit exceeded";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type[0];
    v18 = os_log_type_enabled(v11, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        buf[0].i32[0] = 136446210;
        *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
        v13 = "%{public}s called with null audit_token, no backtrace";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v18)
    {
      buf[0].i32[0] = 136446466;
      *(buf[0].i64 + 4) = "nw_parameters_has_delegated_proc_audit_token";
      buf[0].i16[6] = 2082;
      *(&buf[0].i64[1] + 6) = backtrace_string;
      v17 = "%{public}s called with null audit_token, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  memset(buf, 0, sizeof(buf));
  if (!_nw_parameters_get_effective_audit_token(v3, buf) || (*type = buf[0], v21 = buf[1], !(buf[0].i64[0] | buf[0].i64[1] | buf[1].i64[0] | buf[1].i64[1])))
  {
LABEL_47:
    v8 = 0;
    goto LABEL_48;
  }

  v8 = buf[0].i64[0] != *a2 || buf[0].i64[1] != a2[1] || buf[1].i64[0] != a2[2] || buf[1].i64[1] != a2[3];
LABEL_48:

  return v8;
}

uint64_t nw_copy_current_audit_token(_OWORD *a1)
{
  *&v23[13] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_copy_current_audit_token::onceToken != -1)
    {
      v15 = a1;
      dispatch_once(&nw_copy_current_audit_token::onceToken, &__block_literal_global_50581);
      a1 = v15;
    }

    if (nw_copy_current_audit_token::valid)
    {
      v1 = unk_1ED4113B0;
      *a1 = nw_copy_current_audit_token::my_audit_token;
      a1[1] = v1;
      v2 = 1;
      return v2 & 1;
    }

    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v21 = "nw_copy_current_audit_token";
    v22 = 1024;
    *v23 = v3;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v4, &type, &v18))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v21 = "nw_copy_current_audit_token";
        v22 = 1024;
        *v23 = v3;
        v7 = "%{public}s task_info(mach_task_self(), TASK_AUDIT_TOKEN, (integer_t *) &audit_token, &info_size) failed %{darwin.errno}d";
LABEL_19:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0x12u);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      v9 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446722;
          v21 = "nw_copy_current_audit_token";
          v22 = 1024;
          *v23 = v3;
          v23[2] = 2082;
          *&v23[3] = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s task_info(mach_task_self(), TASK_AUDIT_TOKEN, (integer_t *) &audit_token, &info_size) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446466;
        v21 = "nw_copy_current_audit_token";
        v22 = 1024;
        *v23 = v3;
        v7 = "%{public}s task_info(mach_task_self(), TASK_AUDIT_TOKEN, (integer_t *) &audit_token, &info_size) failed %{darwin.errno}d, no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v21 = "nw_copy_current_audit_token";
        v22 = 1024;
        *v23 = v3;
        v7 = "%{public}s task_info(mach_task_self(), TASK_AUDIT_TOKEN, (integer_t *) &audit_token, &info_size) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
    if (v4)
    {
      free(v4);
    }

    v2 = nw_copy_current_audit_token::valid;
    return v2 & 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_copy_current_audit_token";
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
        v21 = "nw_copy_current_audit_token";
        v14 = "%{public}s called with null audit_token";
LABEL_37:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v17 = os_log_type_enabled(v12, type);
      if (v16)
      {
        if (v17)
        {
          *buf = 136446466;
          v21 = "nw_copy_current_audit_token";
          v22 = 2082;
          *v23 = v16;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null audit_token, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_38;
      }

      if (v17)
      {
        *buf = 136446210;
        v21 = "nw_copy_current_audit_token";
        v14 = "%{public}s called with null audit_token, no backtrace";
        goto LABEL_37;
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_copy_current_audit_token";
        v14 = "%{public}s called with null audit_token, backtrace limit exceeded";
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  if (v11)
  {
    free(v11);
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t _nw_path_network_is_satisfied(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = v1[376];

  return v3;
}

BOOL SystemUUID.isUUIDNULL.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = *v0;
  return uuid_is_null(v2) == 1;
}

BOOL _nw_parameters_has_delegated_proc_uuid(void *a1)
{
  v1 = a1;
  v2 = sub_1821F731C();

  return v2;
}

void nw_resolver_update_client(void *a1, void *a2)
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *(v3 + 2);
  v6 = _Block_copy(*(v3 + 12));
  v7 = *(v3 + 21);
  if ((*(v3 + 370) & 2) == 0 && nw_endpoint_get_type(*(v3 + 3)) == nw_endpoint_type_host && *(v3 + 2) == 2 && !*(v3 + 21))
  {
    v8 = nw_endpoint_copy_association_with_evaluator(*(v3 + 3), *(v3 + 2), 0);
    if (v8)
    {
      if (v7 && _nw_array_get_count(v7))
      {
        int64_with_default = networkd_settings_get_int64_with_default(nw_setting_hostname_cache_seconds, 10);
        v10 = nw_protocol_copy_resolver_definition();
        cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v8, v10);

        if (!cached_content_for_protocol)
        {
          cached_content_for_protocol = malloc_type_calloc(1uLL, 0x20uLL, 0xD36FF28CuLL);
          if (!cached_content_for_protocol)
          {
            v12 = __nwlog_obj();
            os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            *&buf[4] = "nw_resolver_update_client";
            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            *&buf[24] = 32;
            v13 = _os_log_send_and_compose_impl();

            if (__nwlog_should_abort(v13))
            {
              __break(1u);
              return;
            }

            free(v13);
            cached_content_for_protocol = 0;
          }
        }

        *(cached_content_for_protocol + 24) = *(v3 + 372) & 1;
        v14 = _nw_array_copy(v7);
        v15 = *cached_content_for_protocol;
        *cached_content_for_protocol = v14;

        v16 = *(v3 + 26);
        if (v16)
        {
          v17 = _nw_array_copy(v16);
        }

        else
        {
          v17 = _nw_array_create();
        }

        v19 = *(cached_content_for_protocol + 8);
        *(cached_content_for_protocol + 8) = v17;

        v20 = *(v3 + 27);
        if (v20)
        {
          v21 = _nw_array_copy(v20);
        }

        else
        {
          v21 = _nw_array_create();
        }

        v22 = *(cached_content_for_protocol + 16);
        *(cached_content_for_protocol + 16) = v21;

        v23 = nw_protocol_copy_resolver_definition();
        v24 = time(0);
        nw_association_set_cached_content_for_protocol(v8, v23, cached_content_for_protocol, v24 + int64_with_default);
      }

      else
      {
        v18 = nw_protocol_copy_resolver_definition();
        nw_association_set_cached_content_for_protocol(v8, v18, 0, 0);
      }
    }
  }

  if (!v7 || !_nw_array_get_count(v7))
  {
    srv_weighted_variant = 0;
    goto LABEL_90;
  }

  v25 = v3;
  v26 = v7;
  count = _nw_array_get_count(v26);
  v28 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_first_address_family_count, 2);
  if (v28 <= 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = v28;
  }

  if (count > v29 + 1)
  {
    v30 = _nw_array_get_object_at_index(v26, 0);
    if (nw_endpoint_get_type(v30) != nw_endpoint_type_address)
    {
      v39 = v26;
LABEL_50:

      goto LABEL_51;
    }

    address_family = nw_endpoint_get_address_family(v30);
    *v106 = 0;
    *&v106[8] = v106;
    *&v106[16] = 0x2020000000;
    v106[24] = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__6340;
    v103 = __Block_byref_object_dispose__6341;
    v104 = 0;
    v83 = MEMORY[0x1E69E9820];
    v84 = 3221225472;
    v85 = ___ZL41nw_resolver_create_happy_eyeballs_variantP22NWConcrete_nw_resolverPU22objcproto11OS_nw_array8NSObject_block_invoke;
    v86 = &unk_1E6A2C300;
    v90 = address_family;
    v87 = v106;
    v88 = &v95;
    v89 = &v99;
    _nw_array_apply(v26, &v83);
    if ((*(*&v106[8] + 24) & 1) != 0 || v96[3] <= v29)
    {
      v39 = v26;
LABEL_49:
      _Block_object_dispose(&v99, 8);

      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(v106, 8);
      goto LABEL_50;
    }

    v75 = _nw_array_create();
    if ((*(v3 + 370) & 0x20) != 0)
    {
LABEL_45:
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL41nw_resolver_create_happy_eyeballs_variantP22NWConcrete_nw_resolverPU22objcproto11OS_nw_array8NSObject_block_invoke_184;
      *&buf[24] = &unk_1E6A2C328;
      *&buf[40] = v106;
      *&buf[56] = v29;
      v42 = v75;
      *&buf[32] = v42;
      *&buf[48] = &v99;
      _nw_array_apply(v26, buf);
      if (*(*&v106[8] + 24))
      {
        v43 = v26;
      }

      else
      {
        v43 = v42;
      }

      v39 = v43;

      goto LABEL_49;
    }

    if (*(v25 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      log = gconnectionLogObj;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        logging_description = nw_endpoint_get_logging_description(v100[5]);
        v33 = v96[3];
        *buf = 136447490;
        *&buf[4] = "nw_resolver_create_happy_eyeballs_variant";
        *&buf[12] = 2082;
        *&buf[14] = v25 + 70;
        *&buf[22] = 2082;
        *&buf[24] = logging_description;
        *&buf[32] = 2048;
        *&buf[34] = v33;
        *&buf[42] = 2048;
        *&buf[44] = v29;
        *&buf[52] = 2048;
        *&buf[54] = count;
        v34 = "%{public}s [C%{public}s] Happy Eyeballs: reordering %{public}s from position %llu to %llu of %llu";
        v35 = log;
        v36 = log;
        v37 = 62;
LABEL_42:
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, v34, buf, v37);
LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      log = __nwlog_obj();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v72 = v25[91];
        v40 = nw_endpoint_get_logging_description(v100[5]);
        v41 = v96[3];
        *buf = 136447490;
        *&buf[4] = "nw_resolver_create_happy_eyeballs_variant";
        *&buf[12] = 1024;
        *&buf[14] = v72;
        *&buf[18] = 2082;
        *&buf[20] = v40;
        *&buf[28] = 2048;
        *&buf[30] = v41;
        *&buf[38] = 2048;
        *&buf[40] = v29;
        *&buf[48] = 2048;
        *&buf[50] = count;
        v34 = "%{public}s [R%u] Happy Eyeballs: reordering %{public}s from position %llu to %llu of %llu";
        v35 = log;
        v36 = log;
        v37 = 58;
        goto LABEL_42;
      }
    }

    v35 = log;
    goto LABEL_44;
  }

  v39 = v26;
LABEL_51:

  v44 = *(v25 + 4);
  v45 = v25;
  v46 = v44;
  v47 = v39;
  v48 = v47;
  if (v47 && _nw_array_get_count(v47) > 1)
  {
    v76 = _nw_array_get_object_at_index(v48, 0);
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__6340;
    v103 = __Block_byref_object_dispose__6341;
    v104 = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    LODWORD(v98) = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke;
    *&buf[24] = &unk_1E6A2C350;
    *&buf[40] = &v99;
    *&buf[48] = &v95;
    v49 = v46;
    *&buf[32] = v49;
    _nw_array_apply(v48, buf);
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    if (!*(v96 + 6))
    {
      v50 = v100[5];
      v100[5] = 0;

      v83 = MEMORY[0x1E69E9820];
      v84 = 3221225472;
      v85 = ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke_2;
      v86 = &unk_1E6A2C350;
      v88 = &v99;
      v89 = &v91;
      v87 = v49;
      _nw_array_apply(v48, &v83);

      if (!*(v96 + 6) && !v92[3])
      {
        goto LABEL_86;
      }
    }

    if (v100[5] != v76)
    {
      v51 = _nw_array_create();
      if (v49 && v49[33] == 4 || (*(v3 + 370) & 0x20) != 0)
      {
        goto LABEL_78;
      }

      if (v45[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v52 = gconnectionLogObj;
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          goto LABEL_77;
        }

        v53 = nw_endpoint_get_logging_description(v100[5]);
        *v106 = 136446722;
        *&v106[4] = "nw_resolver_create_prefer_connected_variant";
        *&v106[12] = 2082;
        *&v106[14] = v45 + 280;
        *&v106[22] = 2082;
        *&v106[24] = v53;
        v54 = "%{public}s [C%{public}s] Prefer Connected: reordering %{public}s to be the first endpoint";
        v55 = v52;
        v56 = 32;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v52 = gLogObj;
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
LABEL_77:

LABEL_78:
          if (v51)
          {
            v63 = v100[5];
            if (v63)
            {
              _nw_array_append(v51, v63);
            }
          }

          *v106 = MEMORY[0x1E69E9820];
          *&v106[8] = 3221225472;
          *&v106[16] = ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke_185;
          *&v106[24] = &unk_1E6A3BB28;
          v108 = &v99;
          v7 = v51;
          v107 = v7;
          _nw_array_apply(v48, v106);

          goto LABEL_87;
        }

        loga = *(v45 + 91);
        v62 = nw_endpoint_get_logging_description(v100[5]);
        *v106 = 136446722;
        *&v106[4] = "nw_resolver_create_prefer_connected_variant";
        *&v106[12] = 1024;
        *&v106[14] = loga;
        *&v106[18] = 2082;
        *&v106[20] = v62;
        v54 = "%{public}s [R%u] Prefer Connected: reordering %{public}s to be the first endpoint";
        v55 = v52;
        v56 = 28;
      }

      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_INFO, v54, v106, v56);
      goto LABEL_77;
    }

    if (v49 && v49[33] == 4 || (*(v3 + 370) & 0x20) != 0)
    {
LABEL_86:
      v7 = v48;
LABEL_87:
      _Block_object_dispose(&v91, 8);

      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(&v99, 8);

      goto LABEL_88;
    }

    if (v45[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v57 = gconnectionLogObj;
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      v58 = nw_endpoint_get_logging_description(v100[5]);
      *v106 = 136446722;
      *&v106[4] = "nw_resolver_create_prefer_connected_variant";
      *&v106[12] = 2082;
      *&v106[14] = v45 + 280;
      *&v106[22] = 2082;
      *&v106[24] = v58;
      v59 = "%{public}s [C%{public}s] Prefer Connected: %{public}s is already the first endpoint";
      v60 = v57;
      v61 = 32;
    }

    else
    {
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
LABEL_85:

        goto LABEL_86;
      }

      v64 = *(v45 + 91);
      v65 = nw_endpoint_get_logging_description(v100[5]);
      *v106 = 136446722;
      *&v106[4] = "nw_resolver_create_prefer_connected_variant";
      *&v106[12] = 1024;
      *&v106[14] = v64;
      *&v106[18] = 2082;
      *&v106[20] = v65;
      v59 = "%{public}s [R%u] Prefer Connected: %{public}s is already the first endpoint";
      v60 = v57;
      v61 = 28;
    }

    _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_INFO, v59, v106, v61);
    goto LABEL_85;
  }

  v7 = v48;
LABEL_88:

  if (nw_endpoint_get_type(*(v45 + 3)) != (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    srv_weighted_variant = v7;
    goto LABEL_91;
  }

  srv_weighted_variant = nw_resolver_create_srv_weighted_variant(v7);
LABEL_90:

LABEL_91:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL25nw_resolver_update_clientP22NWConcrete_nw_resolverU13block_pointerFvvE_block_invoke;
  aBlock[3] = &unk_1E6A2C2D8;
  v66 = v3;
  v78 = v66;
  v67 = v6;
  v80 = v67;
  v82 = v5;
  v68 = srv_weighted_variant;
  v79 = v68;
  v69 = v4;
  v81 = v69;
  v70 = _Block_copy(aBlock);
  v71 = *(v66 + 14);
  if (v71)
  {
    dispatch_async(v71, v70);
  }

  else
  {
    nw_queue_context_async(*(v66 + 4), v70);
  }
}

void nw_resolver_cancel_delayed_reporting_timer(NWConcrete_nw_resolver *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = *(v2 + 20);
  if (!v3)
  {
    goto LABEL_19;
  }

  if ((*(v2 + 370) & 0x20) != 0)
  {
LABEL_18:
    nw_queue_cancel_source(v3, v1);
    *(v2 + 20) = 0;
    goto LABEL_19;
  }

  if (!*(v2 + 280))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = *(v2 + 91);
    v9 = *(v2 + 3);
    v10 = v9;
    if (v9)
    {
      logging_description = _nw_endpoint_get_logging_description(v9);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v15 = 136446722;
    v16 = "nw_resolver_cancel_delayed_reporting_timer";
    v17 = 1024;
    *v18 = v8;
    *&v18[4] = 2082;
    *&v18[6] = logging_description;
    v12 = "%{public}s [R%u] Cancelling delayed reporting timer for %{public}s";
    v13 = v4;
    v14 = 28;
    goto LABEL_16;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v2 + 3);
    v6 = v5;
    if (v5)
    {
      v7 = _nw_endpoint_get_logging_description(v5);
    }

    else
    {
      v7 = "<NULL>";
    }

    v15 = 136446722;
    v16 = "nw_resolver_cancel_delayed_reporting_timer";
    v17 = 2082;
    *v18 = v2 + 280;
    *&v18[8] = 2082;
    *&v18[10] = v7;
    v12 = "%{public}s [C%{public}s] Cancelling delayed reporting timer for %{public}s";
    v13 = v4;
    v14 = 32;
LABEL_16:
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, v12, &v15, v14);
  }

LABEL_17:

  v3 = *(v2 + 20);
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_19:
}

void nw_resolver_cancel_query_locked(NWConcrete_nw_resolver *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (*(v3 + 6))
  {
    dnssd_getaddrinfo_invalidate();
    v4 = *(v3 + 6);
    *(v3 + 6) = 0;
  }

  v5 = *(v3 + 25);
  if (v5)
  {
    _nw_array_apply(v5, &__block_literal_global_281);
  }

  if (*(v3 + 8))
  {
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    dispatch_group_leave(*(v3 + 5));
  }

  if ((a2 & 1) == 0)
  {
    v6 = *(v3 + 15);
    if (v6)
    {
      if ((*(v3 + 370) & 0x20) != 0)
      {
LABEL_19:
        nw_browser_cancel(v6);
        v12 = *(v3 + 15);
        *(v3 + 15) = 0;

        goto LABEL_20;
      }

      if (*(v3 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v13 = 136446466;
        v14 = "nw_resolver_cancel_query_locked";
        v15 = 2082;
        v16 = v3 + 280;
        v8 = "%{public}s [C%{public}s] Stopping AWDL trigger browser";
        v9 = v7;
        v10 = 22;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
LABEL_18:

          v6 = *(v3 + 15);
          goto LABEL_19;
        }

        v11 = *(v3 + 91);
        v13 = 136446466;
        v14 = "nw_resolver_cancel_query_locked";
        v15 = 1024;
        LODWORD(v16) = v11;
        v8 = "%{public}s [R%u] Stopping AWDL trigger browser";
        v9 = v7;
        v10 = 18;
      }

      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      goto LABEL_18;
    }
  }

LABEL_20:
}

uint64_t ___ZL25nw_resolver_update_clientP22NWConcrete_nw_resolverU13block_pointerFvvE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2;
  os_unfair_lock_lock(v2 + 3);
  v4 = *&v3[24]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 3);

  if (v4)
  {
    (*(a1[6] + 16))();
  }

  result = a1[7];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void nw_resolver_update_flags_locked(NWConcrete_nw_resolver *a1, NWConcrete_nw_resolver_service *a2, int a3, int a4, const sockaddr *a5, int a6, int a7)
{
  v43 = a1;
  v13 = a2;
  v14 = v43;
  v15 = *(v43 + 44) & 0xFFEF | (16 * (a3 & 1));
  *(v43 + 44) = v15;
  if ((*(v43 + 371) & 2) == 0)
  {
    v15 |= 0x80u;
    *(v43 + 44) = v15;
  }

  if (!a5)
  {
    goto LABEL_35;
  }

  sa_family = a5->sa_family;
  if ((a3 & 0x40000000) != 0 && sa_family == 2)
  {
    v17 = 4;
LABEL_10:
    *(v43 + 370) |= v17;
    sa_family = a5->sa_family;
    goto LABEL_11;
  }

  if ((a3 & 0x40000000) != 0 && sa_family == 30)
  {
    v17 = 8;
    goto LABEL_10;
  }

LABEL_11:
  if (a3 < 0)
  {
    if (sa_family == 30)
    {
      if (v13)
      {
        v20 = v13->flags | 0x40;
        goto LABEL_31;
      }

      v25 = v15 | 0x40;
    }

    else
    {
      if (sa_family != 2)
      {
        goto LABEL_35;
      }

      if (v13)
      {
        v20 = v13->flags | 0x20;
LABEL_31:
        v13->flags = v20;
        goto LABEL_35;
      }

      v25 = v15 | 0x20;
    }

    *(v43 + 44) = v25;
    goto LABEL_35;
  }

  if (sa_family == 2)
  {
    if (v13 || (v15 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    v42 = a6;
    v18 = 2;
    v19 = -38;
  }

  else
  {
    if (v13 || sa_family != 30 || (v15 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    v42 = a6;
    v18 = 30;
    v19 = -75;
  }

  *(v43 + 44) = v15 & v19;
  v21 = v43;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v22 = _nw_array_create();
  v23 = v21[21];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL35nw_resolver_remove_sa_family_lockedP22NWConcrete_nw_resolverh_block_invoke;
  aBlock[3] = &unk_1E6A2C488;
  v47 = v18;
  v46 = &v48;
  v24 = v22;
  v45 = v24;
  if (v23)
  {
    _nw_array_apply(v23, aBlock);
  }

  a6 = v42;
  if (*(v49 + 24) == 1)
  {
    objc_storeStrong(v21 + 21, v22);
  }

  _Block_object_dispose(&v48, 8);
  v13 = 0;
  v14 = v43;
LABEL_35:
  v26 = *(v14 + 20);
  if (v26 == 1)
  {
    v27 = 2056;
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_40;
    }

    v27 = 1028;
  }

  *(v14 + 44) |= v27;
LABEL_40:
  if (!a4)
  {
    if (!a5)
    {
      goto LABEL_87;
    }

    if (a5->sa_len > 0x80u)
    {
      goto LABEL_87;
    }

    v31 = a5->sa_family;
    if (v31 != 30 && v31 != 2)
    {
      goto LABEL_87;
    }

    if ((a3 & 2) != 0)
    {
      if (v31 == 30)
      {
        if (a6)
        {
          v39 = 512;
        }

        else
        {
          v39 = 8;
        }

        *(v14 + 44) |= v39;
        if (v13)
        {
          v13->flags |= 8u;
        }
      }

      else
      {
        if (a6)
        {
          v35 = 256;
        }

        else
        {
          v35 = 4;
        }

        *(v14 + 44) |= v35;
        if (v13)
        {
          v13->flags |= 4u;
        }
      }

      goto LABEL_87;
    }

    if (v31 == 30)
    {
      if (v13)
      {
        flags = v13->flags;
        v33 = -11;
        goto LABEL_77;
      }

      v40 = *(v14 + 44);
      v41 = -11;
    }

    else
    {
      if (v13)
      {
        flags = v13->flags;
        v33 = -6;
LABEL_77:
        v13->flags = flags & v33;
        goto LABEL_87;
      }

      v40 = *(v14 + 44);
      v41 = -6;
    }

    v37 = v40 & v41;
    goto LABEL_86;
  }

  if (a4 == -65554 && a5)
  {
    v28 = a5->sa_family;
    if (v28 == 30)
    {
      if (v13)
      {
        v29 = v13->flags;
        v13->flags = v29 | 2;
        if (!a7)
        {
          goto LABEL_87;
        }

        v30 = 2050;
        goto LABEL_64;
      }

      v38 = *(v14 + 44);
      *(v14 + 44) = v38 | 2;
      if (a7)
      {
        v37 = v38 | 0x802;
        goto LABEL_86;
      }
    }

    else
    {
      if (v28 != 2)
      {
        goto LABEL_87;
      }

      if (v13)
      {
        v29 = v13->flags;
        v13->flags = v29 | 1;
        if (!a7)
        {
          goto LABEL_87;
        }

        v30 = 1025;
LABEL_64:
        v13->flags = v29 | v30;
        goto LABEL_87;
      }

      v36 = *(v14 + 44);
      *(v14 + 44) = v36 | 1;
      if (a7)
      {
        v37 = v36 | 0x401;
LABEL_86:
        *(v14 + 44) = v37;
      }
    }
  }

  else
  {
    if (v13)
    {
      v13->flags |= 3u;
      if ((*(v14 + 44) & 0xC) != 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v34 = *(v14 + 44) | 3;
      *(v14 + 44) = v34;
      if ((v34 & 0xC) != 0)
      {
        goto LABEL_87;
      }
    }

    *(v14 + 21) = a4;
  }

LABEL_87:
}

void sub_181B72ACC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL nw_resolver_check_svcb_complete(NWConcrete_nw_resolver *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(v1 + 25);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL31nw_resolver_check_svcb_completeP22NWConcrete_nw_resolver_block_invoke;
  aBlock[3] = &unk_1E6A39B60;
  aBlock[4] = &v6;
  if (v2)
  {
    _nw_array_apply(v2, aBlock);
    v3 = *(v7 + 24);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 44) |= 0x80u;
LABEL_6:
  _Block_object_dispose(&v6, 8);

  return (v3 & 1) == 0;
}

void sub_181B72BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void nw_resolver_update_status_locked(void *a1, void *a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (*(v3 + 21) || (v3[185] & 2) != 0)
  {
    goto LABEL_43;
  }

  if (nw_endpoint_get_type(*(v3 + 3)) != nw_endpoint_type_host)
  {
    if (nw_endpoint_get_type(*(v3 + 3)) == nw_endpoint_type_bonjour_service)
    {
      v11 = *(v3 + 21);
      if (v11 && _nw_array_get_count(v11) && (nw_parameters_get_indefinite(*(v3 + 2)) & 1) == 0 && (v3[44] & 0x10) == 0)
      {
        *(v3 + 2) = 1;
        nw_resolver_start_query_timer(v3);
        goto LABEL_178;
      }

      goto LABEL_23;
    }

    if (nw_endpoint_get_type(*(v3 + 3)) == (nw_endpoint_type_url|nw_endpoint_type_address))
    {
      if ((v3[44] & 0x10) != 0)
      {
LABEL_23:
        v12 = 0;
        v13 = 1;
LABEL_44:
        *(v3 + 2) = v13;
        goto LABEL_45;
      }
    }

    else if (nw_endpoint_get_type(*(v3 + 3)) == nw_endpoint_type_address && nw_parameters_get_resolve_ptr(*(v3 + 2)) && (v3[44] & 5) == 0)
    {
      goto LABEL_23;
    }

LABEL_43:
    v12 = 0;
    v13 = 2;
    goto LABEL_44;
  }

  v5 = v3[44];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0xE0) == 0x80 && (v5 & 0xA) != 0 && (v5 & 5) != 0)
    {
      v6 = v3[184] - 15;
      if (v6 >= 3 || (v3[185] & 0x20) != 0)
      {
LABEL_60:
        if (!*(v3 + 6))
        {
          goto LABEL_76;
        }

        if (*(v3 + 371) < 0)
        {
          if (v6 < 3)
          {
            goto LABEL_76;
          }
        }

        else if (*(v3 + 371) < 0x40u || (is_null = uuid_is_null(v3 + 256), v6 < 3) || is_null)
        {
LABEL_76:
          *(v3 + 2) = 2;
          if ((v3[186] & 4) == 0)
          {
            goto LABEL_178;
          }

          v26 = *(v3 + 21);
          if (!v26 || !_nw_array_get_count(v26))
          {
            goto LABEL_178;
          }

          v27 = nw_storage_copy_shared();
          nw_storage_store_dns_cache(v27, *(v3 + 3), *(v3 + 21));
          if ((v3[185] & 0x20) != 0)
          {
            goto LABEL_96;
          }

          if (*(v3 + 280))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v28 = gconnectionLogObj;
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              goto LABEL_95;
            }

            *buf = 136446466;
            v80 = "nw_resolver_update_status_locked";
            v81 = 2082;
            *v82 = v3 + 140;
            v29 = "%{public}s [C%{public}s] Stored DNS results to storage cache";
            v30 = v28;
            v31 = 22;
          }

          else
          {
            v28 = __nwlog_obj();
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
LABEL_95:

LABEL_96:
              goto LABEL_178;
            }

            v34 = *(v3 + 91);
            *buf = 136446466;
            v80 = "nw_resolver_update_status_locked";
            v81 = 1024;
            *v82 = v34;
            v29 = "%{public}s [R%u] Stored DNS results to storage cache";
            v30 = v28;
            v31 = 18;
          }

          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, v29, buf, v31);
          goto LABEL_95;
        }

        if (v5 & 0x802) == 0 || (v5 & 0x401) == 0 || (v3[186])
        {
          goto LABEL_76;
        }

        if ((v3[185] & 0x20) != 0)
        {
LABEL_104:
          *(v3 + 2) = 1;
          nw_resolver_cancel_query_locked(v3, 0);
          v3[44] = 0;
          *(v3 + 372) |= 1u;
          nw_resolver_create_dns_getaddrinfo_locked(v3, 0);
          goto LABEL_178;
        }

        if (*(v3 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v22 = gconnectionLogObj;
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            goto LABEL_103;
          }

          *buf = 136446466;
          v80 = "nw_resolver_update_status_locked";
          v81 = 2082;
          *v82 = v3 + 140;
          v23 = "%{public}s [C%{public}s] Failed to resolve, failing over";
          v24 = v22;
          v25 = 22;
        }

        else
        {
          v22 = __nwlog_obj();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
LABEL_103:

            goto LABEL_104;
          }

          v36 = *(v3 + 91);
          *buf = 136446466;
          v80 = "nw_resolver_update_status_locked";
          v81 = 1024;
          *v82 = v36;
          v23 = "%{public}s [R%u] Failed to resolve, failing over";
          v24 = v22;
          v25 = 18;
        }

        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, v23, buf, v25);
        goto LABEL_103;
      }

      if (*(v3 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_59;
        }

        *buf = 136446466;
        v80 = "nw_resolver_update_status_locked";
        v81 = 2082;
        *v82 = v3 + 140;
        v8 = "%{public}s [C%{public}s] Resolver blocked failover for DNS";
        v9 = v7;
        v10 = 22;
      }

      else
      {
        v7 = __nwlog_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
LABEL_59:

          goto LABEL_60;
        }

        v20 = *(v3 + 91);
        *buf = 136446466;
        v80 = "nw_resolver_update_status_locked";
        v81 = 1024;
        *v82 = v20;
        v8 = "%{public}s [R%u] Resolver blocked failover for DNS";
        v9 = v7;
        v10 = 18;
      }

      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
      goto LABEL_59;
    }

    *(v3 + 2) = 1;
    if ((v5 & 0x104) != 0 && (v5 & 0x20) == 0 || (v5 & 0x208) != 0 && (v5 & 0x40) == 0)
    {
      nw_resolver_start_query_timer(v3);
    }

    v14 = v3;
    if ((v5 & 0x20A) != 0 && (v5 & 0x80) != 0 || (int64_with_default = networkd_settings_get_int64_with_default(nw_setting_resolver_start_delay, 50)) == 0)
    {

      v12 = 0;
      goto LABEL_45;
    }

    v16 = int64_with_default;
    if ((int64_with_default & 0x8000000000000000) != 0)
    {
      if ((v3[185] & 0x20) == 0)
      {
        if (*(v14 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v17 = gconnectionLogObj;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v80 = "nw_resolver_start_delayed_reporting_timer";
            v81 = 2082;
            *v82 = v14 + 35;
            *&v82[8] = 2048;
            *&v82[10] = v16;
            *&v82[18] = 2048;
            v16 = 50;
            *&v82[20] = 50;
            v18 = "%{public}s [C%{public}s] Invalid resolver reporting delay %lldms, reverting to default value %llums";
            goto LABEL_91;
          }
        }

        else
        {
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v14 + 91);
            *buf = 136446978;
            v80 = "nw_resolver_start_delayed_reporting_timer";
            v81 = 1024;
            *v82 = v35;
            *&v82[4] = 2048;
            *&v82[6] = v16;
            *&v82[14] = 2048;
            v16 = 50;
            *&v82[16] = 50;
            v18 = "%{public}s [R%u] Invalid resolver reporting delay %lldms, reverting to default value %llums";
            goto LABEL_107;
          }
        }

        v16 = 50;
LABEL_110:

        goto LABEL_111;
      }

      v16 = 50;
    }

    else
    {
      if (int64_with_default < 0xEA61)
      {
        goto LABEL_111;
      }

      if ((v3[185] & 0x20) == 0)
      {
        if (*(v14 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v17 = gconnectionLogObj;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v80 = "nw_resolver_start_delayed_reporting_timer";
            v81 = 2082;
            *v82 = v14 + 35;
            *&v82[8] = 2048;
            *&v82[10] = v16;
            *&v82[18] = 2048;
            v16 = 60000;
            *&v82[20] = 60000;
            v18 = "%{public}s [C%{public}s] Invalid resolver reporting delay %llums, reverting to max value %llums";
LABEL_91:
            v32 = v17;
            v33 = 42;
LABEL_108:
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, v18, buf, v33);
            goto LABEL_110;
          }

LABEL_109:
          v16 = 60000;
          goto LABEL_110;
        }

        v17 = __nwlog_obj();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_109;
        }

        v37 = *(v14 + 91);
        *buf = 136446978;
        v80 = "nw_resolver_start_delayed_reporting_timer";
        v81 = 1024;
        *v82 = v37;
        *&v82[4] = 2048;
        *&v82[6] = v16;
        *&v82[14] = 2048;
        v16 = 60000;
        *&v82[16] = 60000;
        v18 = "%{public}s [R%u] Invalid resolver reporting delay %llums, reverting to max value %llums";
LABEL_107:
        v32 = v17;
        v33 = 38;
        goto LABEL_108;
      }

      v16 = 60000;
    }

LABEL_111:
    if (v14[20])
    {
      if ((v3[185] & 0x20) != 0)
      {

        goto LABEL_158;
      }

      if (*(v14 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v38 = gconnectionLogObj;
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_139;
        }

        logging_description = nw_endpoint_get_logging_description(*(v3 + 3));
        *buf = 136446722;
        v80 = "nw_resolver_start_delayed_reporting_timer";
        v81 = 2082;
        *v82 = v14 + 35;
        *&v82[8] = 2082;
        *&v82[10] = logging_description;
        v40 = "%{public}s [C%{public}s] Delayed reporting timer already running for %{public}s";
        v41 = v38;
        v42 = 32;
      }

      else
      {
        v38 = __nwlog_obj();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
LABEL_139:

LABEL_158:
          v12 = 1;
          goto LABEL_45;
        }

        v53 = *(v14 + 91);
        v54 = nw_endpoint_get_logging_description(*(v3 + 3));
        *buf = 136446722;
        v80 = "nw_resolver_start_delayed_reporting_timer";
        v81 = 1024;
        *v82 = v53;
        *&v82[4] = 2082;
        *&v82[6] = v54;
        v40 = "%{public}s [R%u] Delayed reporting timer already running for %{public}s";
        v41 = v38;
        v42 = 28;
      }

      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, v40, buf, v42);
      goto LABEL_139;
    }

    if ((v3[185] & 0x20) != 0)
    {
LABEL_156:
      v62 = v14[4];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = ___ZL41nw_resolver_start_delayed_reporting_timerP22NWConcrete_nw_resolverbbb_block_invoke;
      v77[3] = &unk_1E6A3D868;
      v63 = v14;
      v78 = v63;
      source = nw_queue_context_create_source(v62, 2, 3, 0, v77, 0);
      v14[20] = source;
      if (source)
      {
        v65 = dispatch_time(0x8000000000000000, 1000000 * v16);
        nw_queue_set_timer_values(source, v65, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
        nw_queue_activate_source(v14[20], v66);

        goto LABEL_158;
      }

      v67 = __nwlog_obj();
      *buf = 136446210;
      v80 = "nw_resolver_start_delayed_reporting_timer";
      v68 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v75 = 0;
      if (__nwlog_fault(v68, &type, &v75))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v69 = __nwlog_obj();
          v70 = type;
          if (os_log_type_enabled(v69, type))
          {
            *buf = 136446210;
            v80 = "nw_resolver_start_delayed_reporting_timer";
            _os_log_impl(&dword_181A37000, v69, v70, "%{public}s nw_queue_context_create_source failed", buf, 0xCu);
          }
        }

        else if (v75 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v69, type);
          if (backtrace_string)
          {
            if (v73)
            {
              *buf = 136446466;
              v80 = "nw_resolver_start_delayed_reporting_timer";
              v81 = 2082;
              *v82 = backtrace_string;
              _os_log_impl(&dword_181A37000, v69, v72, "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_175;
          }

          if (v73)
          {
            *buf = 136446210;
            v80 = "nw_resolver_start_delayed_reporting_timer";
            _os_log_impl(&dword_181A37000, v69, v72, "%{public}s nw_queue_context_create_source failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v69 = __nwlog_obj();
          v74 = type;
          if (os_log_type_enabled(v69, type))
          {
            *buf = 136446210;
            v80 = "nw_resolver_start_delayed_reporting_timer";
            _os_log_impl(&dword_181A37000, v69, v74, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_175:
      if (v68)
      {
        free(v68);
      }

      goto LABEL_178;
    }

    if (*(v14 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v43 = gconnectionLogObj;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_155;
      }

      v44 = nw_endpoint_get_logging_description(*(v3 + 3));
      *buf = 136448258;
      v80 = "nw_resolver_start_delayed_reporting_timer";
      v45 = " SVCB";
      v81 = 2082;
      v46 = "";
      *v82 = v14 + 35;
      if ((v5 & 0x80) != 0)
      {
        v47 = "";
      }

      else
      {
        v47 = " SVCB";
      }

      *&v82[8] = 2082;
      v48 = " IPv6";
      if ((v5 & 0x80) == 0)
      {
        v45 = "";
      }

      if ((v5 & 0x20A) != 0)
      {
        v49 = "";
      }

      else
      {
        v49 = " IPv6";
      }

      if ((v5 & 0x20A) == 0)
      {
        v48 = "";
      }

      if ((v5 & 0x105) != 0)
      {
        v46 = " IPv4";
      }

      *&v82[10] = v46;
      *&v82[18] = 2082;
      *&v82[20] = v48;
      *&v82[28] = 2082;
      *&v82[30] = v45;
      *&v82[38] = 2048;
      *&v82[40] = v16;
      *&v82[48] = 2082;
      *&v82[50] = v49;
      *&v82[58] = 2082;
      *&v82[60] = v47;
      *&v82[68] = 2082;
      *&v82[70] = v44;
      v50 = "%{public}s [C%{public}s] Received%{public}s%{public}s%{public}s result, delaying reporting: waiting %llums on%{public}s%{public}s for %{public}s";
      v51 = v43;
      v52 = 92;
    }

    else
    {
      v43 = __nwlog_obj();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
LABEL_155:

        goto LABEL_156;
      }

      v55 = *(v14 + 91);
      v56 = nw_endpoint_get_logging_description(*(v3 + 3));
      v57 = " SVCB";
      *buf = 136448258;
      v80 = "nw_resolver_start_delayed_reporting_timer";
      v58 = "";
      v81 = 1024;
      *v82 = v55;
      if ((v5 & 0x80) != 0)
      {
        v59 = "";
      }

      else
      {
        v59 = " SVCB";
      }

      *&v82[4] = 2082;
      v60 = " IPv6";
      if ((v5 & 0x80) == 0)
      {
        v57 = "";
      }

      if ((v5 & 0x20A) != 0)
      {
        v61 = "";
      }

      else
      {
        v61 = " IPv6";
      }

      if ((v5 & 0x20A) == 0)
      {
        v60 = "";
      }

      if ((v5 & 0x105) != 0)
      {
        v58 = " IPv4";
      }

      *&v82[6] = v58;
      *&v82[14] = 2082;
      *&v82[16] = v60;
      *&v82[24] = 2082;
      *&v82[26] = v57;
      *&v82[34] = 2048;
      *&v82[36] = v16;
      *&v82[44] = 2082;
      *&v82[46] = v61;
      *&v82[54] = 2082;
      *&v82[56] = v59;
      *&v82[64] = 2082;
      *&v82[66] = v56;
      v50 = "%{public}s [R%u] Received%{public}s%{public}s%{public}s result, delaying reporting: waiting %llums on%{public}s%{public}s for %{public}s";
      v51 = v43;
      v52 = 88;
    }

    _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, v50, buf, v52);
    goto LABEL_155;
  }

LABEL_178:
  v12 = 0;
LABEL_45:
  if (*(v3 + 2) == 2)
  {
    if ((nw_parameters_get_use_long_outstanding_queries(*(v3 + 2)) & 1) == 0)
    {
      nw_resolver_cancel_query_locked(v3, 0);
    }

    nw_resolver_cancel_delayed_reporting_timer(v3);
    nw_resolver_cancel_query_timer(v3);
  }

  if (*(v3 + 12))
  {
    v19 = v12;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    nw_resolver_update_client(v3, v4);
  }
}

void nw_resolver_insert_address(void *a1, void *a2, const sockaddr *a3, __int16 a4, __int16 a5, void *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a6;
  address = nw_endpoint_create_address(a3);
  nw_endpoint_set_parent_endpoint(address, v11[3], 0);
  nw_endpoint_set_priority(address, a4);
  nw_endpoint_set_weight(address, a5);
  if (v13)
  {
    nw_endpoint_set_ech_config(address, v13);
  }

  if (!v12)
  {
    goto LABEL_24;
  }

  v45 = 0;
  dnssd_getaddrinfo_result_get_validation_data();
  v15 = dnssd_getaddrinfo_result_get_cnames();
  if (v15)
  {
    v16 = address;
    v17 = v15;
    if (v16)
    {
      _nw_endpoint_set_dnssd_cname_array(v16, v17);
LABEL_7:

      goto LABEL_8;
    }

    v27 = __nwlog_obj();
    *v50 = 136446210;
    *&v50[4] = "nw_endpoint_set_dnssd_cname_array";
    v40 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    BYTE8(v44) = 0;
    v28 = v40;
    if (!__nwlog_fault(v40, buf, &v44 + 8))
    {
LABEL_62:
      if (v28)
      {
        free(v28);
      }

      goto LABEL_7;
    }

    if (buf[0] == 17)
    {
      v29 = __nwlog_obj();
      v30 = buf[0];
      if (os_log_type_enabled(v29, buf[0]))
      {
        *v50 = 136446210;
        *&v50[4] = "nw_endpoint_set_dnssd_cname_array";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null endpoint", v50, 0xCu);
      }
    }

    else
    {
      if (BYTE8(v44) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v39 = buf[0];
        v36 = os_log_type_enabled(v35, buf[0]);
        if (backtrace_string)
        {
          if (v36)
          {
            *v50 = 136446466;
            *&v50[4] = "nw_endpoint_set_dnssd_cname_array";
            *&v50[12] = 2082;
            *&v50[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v35, v39, "%{public}s called with null endpoint, dumping backtrace:%{public}s", v50, 0x16u);
          }

          free(backtrace_string);
        }

        else
        {
          if (v36)
          {
            *v50 = 136446210;
            *&v50[4] = "nw_endpoint_set_dnssd_cname_array";
            _os_log_impl(&dword_181A37000, v35, v39, "%{public}s called with null endpoint, no backtrace", v50, 0xCu);
          }
        }

        goto LABEL_61;
      }

      v29 = __nwlog_obj();
      v38 = buf[0];
      if (os_log_type_enabled(v29, buf[0]))
      {
        *v50 = 136446210;
        *&v50[4] = "nw_endpoint_set_dnssd_cname_array";
        _os_log_impl(&dword_181A37000, v29, v38, "%{public}s called with null endpoint, backtrace limit exceeded", v50, 0xCu);
      }
    }

LABEL_61:
    v28 = v40;
    goto LABEL_62;
  }

LABEL_8:
  *(&v44 + 1) = dnssd_getaddrinfo_result_get_tracker_hostname();
  *&v44 = dnssd_getaddrinfo_result_get_tracker_owner();
  v18 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    goto LABEL_12;
  }

  v19 = nw_context_copy_tracker_lookup_callback(v11[4]);
  v20 = v19;
  if (v19)
  {
    v50[0] = 0;
    (*(v19 + 2))(v19, address, &v44 + 8, &v44, v50);
    nw_endpoint_set_can_block_request(address, v50[0]);
    nw_endpoint_set_can_block_request(v11[3], v50[0]);
  }

  v18 = *(&v44 + 1);
  if (v44 != 0)
  {
LABEL_12:
    nw_endpoint_set_known_tracker_name(address, v18);
    nw_endpoint_set_known_tracker_name(v11[3], *(&v44 + 1));
    nw_endpoint_set_tracker_owner(address, v44);
    nw_endpoint_set_tracker_owner(v11[3], v44);
  }

  if (dnssd_getaddrinfo_result_get_tracker_is_approved())
  {
    nw_endpoint_set_is_approved_app_domain(address, 1);
  }

  if (dnssd_getaddrinfo_result_get_tracker_can_block_request())
  {
    nw_endpoint_set_can_block_request(address, 1);
  }

  interface_index = dnssd_getaddrinfo_result_get_interface_index();
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  if ((nw_endpoint_fillout_v4v6_address(address, v50) & 1) == 0)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_resolver_insert_address";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v24, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v47 = "nw_resolver_insert_address";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null success", buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v25, type);
        if (v31)
        {
          if (v33)
          {
            *buf = 136446466;
            v47 = "nw_resolver_insert_address";
            v48 = 2082;
            v49 = v31;
            _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
          goto LABEL_55;
        }

        if (v33)
        {
          *buf = 136446210;
          v47 = "nw_resolver_insert_address";
          _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null success, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v47 = "nw_resolver_insert_address";
          _os_log_impl(&dword_181A37000, v25, v37, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_55:
    if (v24)
    {
      free(v24);
    }

    goto LABEL_25;
  }

  if (!interface_index || v50[1] == 30 && v50[0] >= 0x18u && (v50[8] & 0xFE) == 0xFC)
  {

LABEL_24:
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = ___ZL26nw_resolver_insert_addressP22NWConcrete_nw_resolverPU38objcproto27OS_dnssd_getaddrinfo_result8NSObjectPK8sockaddrttPU27objcproto16OS_dispatch_dataS1__block_invoke;
    v41[3] = &__block_descriptor_40_e63_B24__0__NSObject_OS_nw_endpoint__8__NSObject_OS_nw_endpoint__16l;
    v41[4] = a3;
    nw_resolver_insert_endpoint_locked(v11, address, v41);
    goto LABEL_25;
  }

  v22 = nw_resolver_set_interface_on_endpoint(v11, interface_index, address);

  if (v22)
  {
    goto LABEL_24;
  }

LABEL_25:
}

nw_endpoint_t nw_endpoint_create_address(const sockaddr *address)
{
  v15 = *MEMORY[0x1E69E9840];
  if (address)
  {

    return _nw_endpoint_create_address(address);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_address";
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
        v12 = "nw_endpoint_create_address";
        v6 = "%{public}s called with null address";
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
            v12 = "nw_endpoint_create_address";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null address, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_address";
        v6 = "%{public}s called with null address, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_address";
        v6 = "%{public}s called with null address, backtrace limit exceeded";
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

void nw_endpoint_set_parent_endpoint(void *a1, void *a2, char a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    _nw_endpoint_set_parent_endpoint(v5, v6, a3);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_set_parent_endpoint";
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
        v18 = "nw_endpoint_set_parent_endpoint";
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
          v18 = "nw_endpoint_set_parent_endpoint";
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
        v18 = "nw_endpoint_set_parent_endpoint";
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
        v18 = "nw_endpoint_set_parent_endpoint";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void _nw_endpoint_set_parent_endpoint(void *a1, void *a2, char a3)
{
  v4 = a1;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a2 = 0;
  }

  sub_181B748B0(a2, a3);
}

void sub_181B748B0(void *a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if (a2)
  {
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    v4 = v3 | 0x20;
  }

  else
  {
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    v4 = v3 & 0xFFDF;
  }

  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v4;
LABEL_7:
  if (a1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
    *(v2 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint) = a1;
    v6 = a1;

    sensitive_redacted = nw_context_get_sensitive_redacted(*&v6[OBJC_IVAR____TtC7Network8Endpoint_context]);
    v8 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags);
    if ((*&v6[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
    {
      if ((v8 & 0x80) == 0)
      {
        v9 = v8 | 0x80;
        goto LABEL_17;
      }
    }

    else if ((v8 & 0x80) != 0)
    {
      v9 = v8 & 0xFF7F;
LABEL_17:
      *(v2 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v9;
    }

    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
    v12 = v6[OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2];

    v13 = v2 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort;
    *v13 = v11;
    *(v13 + 2) = v12;
    return;
  }

  v10 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  *(v2 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint) = 0;
}

void nw_endpoint_set_priority(void *a1, __int16 a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_priority(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_priority";
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
        v16 = "nw_endpoint_set_priority";
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
          v16 = "nw_endpoint_set_priority";
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
        v16 = "nw_endpoint_set_priority";
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
        v16 = "nw_endpoint_set_priority";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void _nw_endpoint_set_priority_0(void *a1, __int16 a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v14 = *(v9 + 2);
    v15 = *(v9 + 3);
    v16 = *(v9 + 16);
    v17 = *(v9 + 18);
    *v6 = *v9;
    *(v6 + 2) = v14;
    *(v6 + 3) = v15;
    *(v6 + 16) = v16;
    *(v6 + 17) = a2;
    *(v6 + 18) = v17;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *(v9 + 1);
    *v6 = *v9;
    *(v6 + 1) = v13;
    *(v6 + 28) = *(v9 + 28);
    *(v6 + 22) = a2;
    *(v6 + 46) = *(v9 + 46);
    *(v6 + 52) = *(v9 + 52);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();

    return;
  }

  sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
}

uint64_t sub_181B74E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void nw_endpoint_set_weight(void *a1, __int16 a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_weight(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_weight";
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
        v16 = "nw_endpoint_set_weight";
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
          v16 = "nw_endpoint_set_weight";
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
        v16 = "nw_endpoint_set_weight";
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
        v16 = "nw_endpoint_set_weight";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void _nw_endpoint_set_weight_0(void *a1, __int16 a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v14 = *(v9 + 2);
    v15 = *(v9 + 3);
    v16 = *(v9 + 8);
    *v6 = *v9;
    *(v6 + 2) = v14;
    *(v6 + 3) = v15;
    *(v6 + 8) = v16;
    *(v6 + 18) = a2;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *(v9 + 1);
    *v6 = *v9;
    *(v6 + 1) = v13;
    *(v6 + 30) = *(v9 + 30);
    *(v6 + 23) = a2;
    *(v6 + 6) = *(v9 + 6);
    *(v6 + 14) = *(v9 + 14);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();

    return;
  }

  sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
}

uint64_t _nw_endpoint_set_dnssd_cname_array(void *a1, void *a2)
{
  swift_unknownObjectRetain();
  sub_181B7536C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_181B7536C(void *a1, void *a2)
{
  v3 = a1;
  v10 = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = &v10;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_181B77434;
  *(v5 + 24) = v4;
  aBlock[4] = sub_181B77468;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7749C;
  aBlock[3] = &block_descriptor_12;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  nw_endpoint_internal_enumerate_cnames(a2, v6);
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    *&v7[OBJC_IVAR____TtC7Network8Endpoint_cnames] = v10;
  }

  return result;
}

uint64_t sub_181B75508()
{

  return swift_deallocObject();
}

void nw_endpoint_internal_enumerate_cnames(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  count = dnssd_cname_array_get_count();
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      cname = dnssd_cname_array_get_cname();
      v3[2](v3, cname);
    }
  }
}

void *nw_context_copy_tracker_lookup_callback(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_context_copy_tracker_lookup_callback";
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
          v18 = "nw_context_copy_tracker_lookup_callback";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null context", buf, 0xCu);
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
            v18 = "nw_context_copy_tracker_lookup_callback";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_context_copy_tracker_lookup_callback";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_context_copy_tracker_lookup_callback";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_25;
  }

  v3 = v1[17];
  if (!v3)
  {
    v4 = v2[5];
    if (v4)
    {
      v3 = *(v4 + 136);
      goto LABEL_5;
    }

LABEL_25:
    v5 = 0;
    goto LABEL_6;
  }

LABEL_5:
  v5 = _Block_copy(v3);
LABEL_6:

  return v5;
}

uint64_t nw_resolver_insert_endpoint_locked(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = _nw_array_create();
  v9 = v5[21];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZL34nw_resolver_insert_endpoint_lockedP22NWConcrete_nw_resolverPU25objcproto14OS_nw_endpoint8NSObjectU13block_pointerFbS3_S3_E_block_invoke;
  v16[3] = &unk_1E6A2C4D0;
  v10 = v7;
  v20 = v10;
  v11 = v6;
  v17 = v11;
  v21 = &v23;
  v22 = &v27;
  v12 = v5;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  if (v9)
  {
    _nw_array_apply(v9, v16);
  }

  v14 = *(v28 + 24);
  if (v14 == 1)
  {
    if ((v24[3] & 1) == 0 && v13 && v11)
    {
      _nw_array_append(v13, v11);
    }

    objc_storeStrong(v5 + 21, v8);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void sub_181B75A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL34nw_resolver_remove_endpoint_lockedP22NWConcrete_nw_resolverPU25objcproto14OS_nw_endpoint8NSObjectU13block_pointerFbS3_S3_E_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(a1[6] + 16))())
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      _nw_array_append(v5, v4);
    }
  }

  return 1;
}

uint64_t nw_endpoint_address_endpoint_matches_address(void *a1, unsigned __int8 *a2, int a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    if (a2)
    {
      v9 = _nw_endpoint_address_endpoint_matches_address(v7, a2, a3, a4);
      goto LABEL_4;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_address_endpoint_matches_address";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_address_endpoint_matches_address";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null addr", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v24 != 1)
      {
        v13 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_address_endpoint_matches_address";
          _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null addr, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_endpoint_address_endpoint_matches_address";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null addr, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21)
      {
        *buf = 136446466;
        v27 = "nw_endpoint_address_endpoint_matches_address";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null addr, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_address_endpoint_matches_address";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_address_endpoint_matches_address";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v24 != 1)
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_address_endpoint_matches_address";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v27 = "nw_endpoint_address_endpoint_matches_address";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v27 = "nw_endpoint_address_endpoint_matches_address";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_4:

  return v9;
}

uint64_t sub_181B76040(void *a1, unsigned __int8 *a2, int a3, int a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v53 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v53 - v15);
  v17 = *a2;
  if (v17 > 0x80)
  {
    goto LABEL_2;
  }

  v54 = a4;
  v53 = a3;
  memset(__dst, 0, sizeof(__dst));
  memcpy(__dst, a2, v17);
  v62 = WORD1(__dst[0]);
  v20 = DWORD1(__dst[0]);
  v21 = *(&__dst[0] + 1);
  v22 = *&__dst[1];
  v61 = *(&__dst[1] + 8);
  v60 = *(&__dst[2] + 8);
  v59 = *(&__dst[3] + 8);
  v58 = *(&__dst[4] + 8);
  v57 = *(&__dst[5] + 8);
  v56 = BYTE8(__dst[6]);
  v55 = BYTE9(__dst[6]);
  v23 = a2[1];
  v24 = a1;
  v29 = v24;
  switch(v23)
  {
    case 1:
      LOWORD(__dst[0]) = v62;
      *(__dst + 2) = v20;
      LOBYTE(v32) = BYTE1(v21);
      BYTE1(v32) = BYTE2(v21);
      BYTE2(v32) = BYTE3(v21);
      BYTE3(v32) = BYTE4(v21);
      BYTE4(v32) = BYTE5(v21);
      BYTE5(v32) = BYTE6(v21);
      BYTE6(v32) = HIBYTE(v21);
      HIBYTE(v32) = v22;
      BYTE6(__dst[0]) = v21;
      *(__dst + 7) = v32;
      v33 = HIDWORD(v22);
      v34 = v22 >> 24;
      v35 = v22 >> 16;
      v36 = v22 >> 8;
      *(__dst + 15) = vmovn_s16(vqtbl4q_s8(*(&v25 - 1), xmmword_182AF5E00)).u32[0];
      BYTE3(__dst[1]) = BYTE5(v22);
      BYTE4(__dst[1]) = BYTE6(v22);
      BYTE5(__dst[1]) = HIBYTE(v22);
      *(&__dst[1] + 6) = v61;
      *(&__dst[2] + 6) = v60;
      *(&__dst[3] + 6) = v59;
      *(&__dst[4] + 6) = v58;
      *(&__dst[5] + 6) = v57;
      BYTE6(__dst[6]) = v56;
      BYTE7(__dst[6]) = v55;
      MEMORY[0x1EEE9AC00](v21 >> 16);
      *(&v53 - 2) = __dst;
      *(&v53 - 8) = 1;
      v37 = sub_182AD30D8();
      v39 = v38;
      v40 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181A546E0(v29 + v40, v10, type metadata accessor for Endpoint.EndpointType);
      if (swift_getEnumCaseMultiPayload())
      {

        sub_181A5513C(v10, type metadata accessor for Endpoint.EndpointType);
        break;
      }

      v45 = v10[2];
      __dst[1] = v10[1];
      __dst[2] = v45;
      __dst[0] = *v10;
      *(&__dst[2] + 12) = *(v10 + 44);
      if (BYTE10(v45) == 2)
      {
        if (__dst[1] == __PAIR128__(v39, v37))
        {
          v18 = 1;
        }

        else
        {
          v18 = sub_182AD4268();
        }
      }

      else
      {
        v18 = 0;
      }

LABEL_45:
      sub_181AA57B4(__dst);
      return v18 & 1;
    case 30:
      v31 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181A546E0(v29 + v31, v13, type metadata accessor for Endpoint.EndpointType);
      if (swift_getEnumCaseMultiPayload())
      {

        sub_181A5513C(v13, type metadata accessor for Endpoint.EndpointType);
        break;
      }

      v41 = __rev16(v62);
      v42 = v13[1];
      __dst[0] = *v13;
      __dst[1] = v42;
      __dst[2] = v13[2];
      *(&__dst[2] + 12) = *(v13 + 44);
      v43 = *&__dst[0];
      v44 = __dst[2];
      if (BYTE10(__dst[2]) == 1)
      {
        v51 = WORD4(__dst[2]);
        v66 = v42;
        v67 = *&__dst[2];
        v64 = v22;
        v63 = v21;
        v65 = 0;
        if ((_s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(&v66, &v63) & 1) == 0 || v51 != v41)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (BYTE10(__dst[2]) || v21 || (v21 & 0xFFFFFFFF00000000) != 0 || v22 != -65536 && (v22 || !HIDWORD(v22) || HIDWORD(v22) == 0x1000000))
        {
          goto LABEL_42;
        }

        LODWORD(v66) = v42;
        *(&v66 + 1) = *(&v42 + 1);
        LODWORD(v63) = HIDWORD(v22);
        v64 = 0;
        if ((_s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v66, &v63) & 1) == 0 || v41 != v44)
        {
          goto LABEL_42;
        }
      }

      if ((v54 & 1) == 0)
      {

        v18 = 1;
        goto LABEL_45;
      }

      if (v43)
      {
        v52 = *(v43 + 16);

        v18 = v52 == v53;
        goto LABEL_45;
      }

LABEL_42:

      v18 = 0;
      goto LABEL_45;
    case 2:
      v30 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181A546E0(v29 + v30, v16, type metadata accessor for Endpoint.EndpointType);
      if (swift_getEnumCaseMultiPayload())
      {

        sub_181A5513C(v16, type metadata accessor for Endpoint.EndpointType);
      }

      else
      {
        v46 = v16[2];
        __dst[1] = v16[1];
        __dst[2] = v46;
        __dst[0] = *v16;
        *(&__dst[2] + 12) = *(v16 + 44);
        if (BYTE10(v46))
        {
        }

        else
        {
          v47 = __dst[2];
          LODWORD(v66) = __dst[1];
          *(&v66 + 1) = *(&__dst[1] + 1);
          LODWORD(v63) = v20;
          v64 = 0;
          v48 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v66, &v63);

          if ((v48 & 1) != 0 && __rev16(v62) == v47)
          {
            if ((v54 & 1) == 0)
            {
              sub_181AA57B4(__dst);
              v18 = 1;
              return v18 & 1;
            }

            v49 = *&__dst[0];
            if (*&__dst[0])
            {

              sub_181AA57B4(__dst);
              v50 = *(v49 + 16);

              v18 = v50 == v53;
              return v18 & 1;
            }
          }
        }

        sub_181AA57B4(__dst);
      }

      break;
    default:

      break;
  }

LABEL_2:
  v18 = 0;
  return v18 & 1;
}

uint64_t ___ZL35nw_resolver_remove_sa_family_lockedP22NWConcrete_nw_resolverh_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_endpoint_get_type(v4) == nw_endpoint_type_address && nw_endpoint_get_address_family(v4) == *(a1 + 48))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5 && v4)
    {
      _nw_array_append(v5, v4);
    }
  }

  return 1;
}

uint64_t nw_parameters_get_use_long_outstanding_queries(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_long_outstanding_queries(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_long_outstanding_queries";
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
        v12 = "nw_parameters_get_use_long_outstanding_queries";
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
            v12 = "nw_parameters_get_use_long_outstanding_queries";
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
        v12 = "nw_parameters_get_use_long_outstanding_queries";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_long_outstanding_queries";
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

uint64_t nw_resolver_remove_endpoint_locked(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = _nw_array_create();
  v6 = v3[21];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL34nw_resolver_remove_endpoint_lockedP22NWConcrete_nw_resolverPU25objcproto14OS_nw_endpoint8NSObjectU13block_pointerFbS3_S3_E_block_invoke;
  v11[3] = &unk_1E6A2C5C0;
  v7 = v4;
  v14 = v7;
  v15 = &v16;
  v12 = 0;
  v8 = v5;
  v13 = v8;
  if (v6)
  {
    _nw_array_apply(v6, v11);
  }

  v9 = *(v17 + 24);
  if (v9 == 1)
  {
    objc_storeStrong(v3 + 21, v5);
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_181B76BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_resolver_cancel_query_timer(NWConcrete_nw_resolver *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = *(v2 + 19);
  if (!v3)
  {
    goto LABEL_19;
  }

  if ((*(v2 + 370) & 0x20) != 0)
  {
LABEL_18:
    nw_queue_cancel_source(v3, v1);
    *(v2 + 19) = 0;
    goto LABEL_19;
  }

  if (!*(v2 + 280))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = *(v2 + 91);
    v9 = *(v2 + 3);
    v10 = v9;
    if (v9)
    {
      logging_description = _nw_endpoint_get_logging_description(v9);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v15 = 136446722;
    v16 = "nw_resolver_cancel_query_timer";
    v17 = 1024;
    *v18 = v8;
    *&v18[4] = 2082;
    *&v18[6] = logging_description;
    v12 = "%{public}s [R%u] Cancelling query timer for %{public}s";
    v13 = v4;
    v14 = 28;
    goto LABEL_16;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v2 + 3);
    v6 = v5;
    if (v5)
    {
      v7 = _nw_endpoint_get_logging_description(v5);
    }

    else
    {
      v7 = "<NULL>";
    }

    v15 = 136446722;
    v16 = "nw_resolver_cancel_query_timer";
    v17 = 2082;
    *v18 = v2 + 280;
    *&v18[8] = 2082;
    *&v18[10] = v7;
    v12 = "%{public}s [C%{public}s] Cancelling query timer for %{public}s";
    v13 = v4;
    v14 = 32;
LABEL_16:
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, v12, &v15, v14);
  }

LABEL_17:

  v3 = *(v2 + 19);
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_19:
}

uint64_t nw_endpoint_get_address_family(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    address_family = _nw_endpoint_get_address_family(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_address_family";
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
        v16 = "nw_endpoint_get_address_family";
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
          v16 = "nw_endpoint_get_address_family";
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
        v16 = "nw_endpoint_get_address_family";
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
        v16 = "nw_endpoint_get_address_family";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  address_family = 0;
LABEL_3:

  return address_family;
}

uint64_t AddressEndpoint.hash(into:)()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 42);
  v24 = v3;
  if (!*v0)
  {
    v9 = v0[4];
    result = sub_181B9979C(v0[2], v2, v4, v5, v6);
    if (v6 > 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = v9;
    if (v6)
    {
      sub_182AD4538();
      sub_182AD4538();
      sub_182AD4538();
      sub_182AD4538();
      sub_182AD4518();
      if (v9)
      {
        v20 = *(v9 + 16);
        v21 = *(v9 + 184);
        v22 = *(v12 + 185);
        MEMORY[0x1865DB070](v20);
        sub_182AD30E8();
        MEMORY[0x1865DB070](qword_182AFB540[v21]);
        MEMORY[0x1865DB070](qword_182AFB568[v22]);
      }

      sub_182AD4528();
      v15 = v24;
      v16 = v2;
      v17 = v12;
      v18 = v5;
      v19 = 1;
    }

    else
    {
      sub_182AD4538();
      sub_182AD4518();
      if (v2)
      {
        v13 = *(v2 + 184);
        v14 = *(v2 + 185);
        MEMORY[0x1865DB070](*(v2 + 16));
        sub_182AD30E8();
        MEMORY[0x1865DB070](qword_182AFB540[v13]);
        MEMORY[0x1865DB070](qword_182AFB568[v14]);
      }

      sub_182AD4528();
      v15 = v24;
      v16 = v2;
      v17 = v12;
      v18 = v5;
      v19 = 0;
    }

    goto LABEL_16;
  }

  sub_182AD44E8();
  v23 = *(v1 + 184);
  v7 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  v8 = v3;
  v9 = v4;
  sub_181B9979C(v8, v2, v4, v5, v6);

  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AFB540[v23]);
  MEMORY[0x1865DB070](qword_182AFB568[v7]);
  v10 = sub_182AD4558();
  MEMORY[0x1865DB070](v10);

  if (v6 <= 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 != 2)
  {
    if (v6 == 3)
    {
      sub_182AD4538();
      return sub_182AD4538();
    }

    return result;
  }

  sub_182AD30E8();
  v15 = v24;
  v16 = v2;
  v17 = v9;
  v18 = v5;
  v19 = 2;
LABEL_16:

  return sub_181AD1DE4(v15, v16, v17, v18, v19);
}

uint64_t sub_181B774CC(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = sub_182AD3158();
  v7[3] = v4;
  v8 = Endpoint.port.getter();
  v9 = 0;
  v5 = objc_allocWithZone(ObjectType);
  Endpoint.init(_:)(v7);
  MEMORY[0x1865D9F10]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  return 1;
}

uint64_t Endpoint.port.getter()
{
  v1 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = *(v6 + 16);

      return v9;
    }

    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_6;
    }

    sub_181AA91BC(v6, v3, type metadata accessor for URLEndpoint);
    v19 = sub_182AD2028();
    if (v20)
    {
      v9 = *&v3[*(v1 + 28)];
    }

    else
    {
      v9 = v19;
    }

    sub_181A5513C(v3, type metadata accessor for URLEndpoint);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
LABEL_6:
      sub_181A5513C(v6, type metadata accessor for Endpoint.EndpointType);
      return 0;
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    v12 = *(v6 + 4);
    v9 = *(v6 + 20);
    v13 = v6[42];
    if (v13 <= 1)
    {
      if (v6[42])
      {

        sub_181AD1DE4(v11, v10, v12, v9, 1u);
      }

      else
      {

        sub_181AD1DE4(v11, v10, v12, v9, 0);
        return v12;
      }
    }

    else
    {
      if (v13 == 2)
      {

        v14 = v11;
        v15 = v10;
        v16 = v12;
        v17 = v9;
        v18 = 2;
      }

      else if (v13 == 3)
      {

        v14 = v11;
        v15 = v10;
        v16 = v12;
        v17 = v9;
        v18 = 3;
      }

      else
      {

        v14 = v11;
        v15 = v10;
        v16 = v12;
        v17 = v9;
        v18 = 4;
      }

      sub_181AD1DE4(v14, v15, v16, v17, v18);
      return 0;
    }
  }

  return v9;
}

uint64_t sa_dst_compare_internal(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  v140 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      LODWORD(v6) = a5;
      pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
      pthread_once(&cache_init, sa_dst_compare_init_once);
      v10 = a1[1];
      v11 = v10 == 2 || v10 == 30;
      if (!v11)
      {
        v16 = a3[1];
LABEL_15:
        v18 = v16 == 2 || v16 == 30;
        v19 = (v18 << 31 >> 31);
LABEL_362:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v96 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v97 = *a1;
          v98 = *a3;
          if (v19 >= 0)
          {
            v99 = 62;
          }

          else
          {
            v99 = 60;
          }

          if (!v19)
          {
            v99 = 61;
          }

          *v128 = 136448003;
          *&v128[4] = "sa_dst_compare_internal";
          *&v128[12] = 1040;
          *&v128[14] = v97;
          *&v128[18] = 2101;
          *&v128[20] = a1;
          *&v128[28] = 1024;
          *&v128[30] = a2;
          *&v128[34] = 1024;
          *&v128[36] = v99;
          *&v128[40] = 1040;
          *&v128[42] = v98;
          *&v128[46] = 2101;
          *&v128[48] = a3;
          *&v128[56] = 1024;
          *&v128[58] = a4;
          _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s %{sensitive,network:sockaddr}.*P@%u %c %{sensitive,network:sockaddr}.*P@%u", v128, 0x3Eu);
        }

        return v19;
      }

      v16 = a3[1];
      if (v16 != 2 && v16 != 30)
      {
        v19 = 1;
        if (v10 == 2 || v10 == 30)
        {
          goto LABEL_362;
        }

        goto LABEL_15;
      }

      v129 = 0u;
      v130 = 0u;
      memset(v128, 0, sizeof(v128));
      v126 = 0u;
      v127 = 0u;
      memset(type, 0, sizeof(type));
      v12 = sa_dst_lookup(a1, a2, v128);
      v13 = sa_dst_lookup(a3, a4, type);
      if (v12)
      {
        if (v13)
        {
          if (!v6)
          {
            goto LABEL_123;
          }

          v14 = v13;
          if (networkd_settings_get_BOOL(nw_setting_compare_bypass_stats))
          {
LABEL_14:
            v15 = 0;
            LOBYTE(v6) = 0;
            v13 = v14;
            goto LABEL_124;
          }

          v22 = BYTE12(v130);
          v23 = BYTE12(v127);
          if ((BYTE12(v130) & 1) == 0)
          {
            v13 = v14;
            if (BYTE12(v127))
            {
              v37 = __nwlog_obj();
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_296;
              }

              *buf = 136446210;
              v132 = "sa_dst_compare_statistics";
              v38 = "%{public}s prefer 2, dst 1 has no route";
              goto LABEL_294;
            }

            goto LABEL_33;
          }

          if (BYTE12(v127))
          {
            v13 = v14;
            v39 = (BYTE12(v130) >> 2) & 1;
            v40 = (BYTE12(v127) >> 2) & 1;
            if (v39 != v40)
            {
              if (v40)
              {
                v36 = __nwlog_obj();
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_361;
                }

                *buf = 136446210;
                v132 = "sa_dst_compare_statistics";
                v33 = "%{public}s prefer dst 1, dst 2 is p2p, dst 1 is not";
                goto LABEL_359;
              }

              if (v39)
              {
                v37 = __nwlog_obj();
                if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_296;
                }

                *buf = 136446210;
                v132 = "sa_dst_compare_statistics";
                v38 = "%{public}s prefer dst 2, dst 1 is p2p, dst 2 is not";
                goto LABEL_294;
              }
            }

            if (nw_interface_get_loopback_index_onceToken != -1)
            {
              dispatch_once(&nw_interface_get_loopback_index_onceToken, &__block_literal_global_53613);
              v13 = v14;
            }

            if (HIDWORD(v129) == nw_interface_get_loopback_index_index)
            {
              v41 = 1;
            }

            else
            {
              v41 = 0;
              if (v128[1] == 30 && v128[8] == 254)
              {
                v41 = (v128[9] & 0xC0) == 0x80 && *&v128[24] == nw_interface_get_loopback_index_index;
              }
            }

            if (HIDWORD(v126) == nw_interface_get_loopback_index_index)
            {
              v42 = 1;
            }

            else
            {
              v42 = 0;
              if (type[1] == 30 && type[8] == 254)
              {
                v42 = (type[9] & 0xC0) == 0x80 && *&type[24] == nw_interface_get_loopback_index_index;
              }

              if (v41 && !v42)
              {
                v36 = __nwlog_obj();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446210;
                  v132 = "sa_dst_compare_statistics";
                  v33 = "%{public}s prefer 1, dst 1 is loopback, dst 2 is not";
                  goto LABEL_359;
                }

                goto LABEL_361;
              }
            }

            if (!v41 && v42)
            {
              v37 = __nwlog_obj();
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_296;
              }

              *buf = 136446210;
              v132 = "sa_dst_compare_statistics";
              v38 = "%{public}s prefer 2, dst 2 is loopback, dst 1 is not";
              goto LABEL_294;
            }

            if ((v22 & 2) == 0)
            {
              if ((v23 & 2) != 0)
              {
                v37 = __nwlog_obj();
                if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_296;
                }

                *buf = 136446210;
                v132 = "sa_dst_compare_statistics";
                v38 = "%{public}s prefer 2, dst 2 is local, dst 1 is not";
                goto LABEL_294;
              }

              goto LABEL_33;
            }

            if ((v23 & 2) != 0)
            {
              if (DWORD2(v129) == DWORD2(v126))
              {
                goto LABEL_87;
              }

LABEL_33:
              v15 = v130;
              v24 = v127;
              if (v130)
              {
                if (v127)
                {
                  if (v130 < v127)
                  {
                    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_rtt_leeway, 3200);
                    if (int64_with_default <= 31999)
                    {
                      v26 = int64_with_default;
                    }

                    else
                    {
                      v26 = 32000;
                    }

                    v122 = v15;
                    if (int64_with_default >= 0)
                    {
                      v27 = v26;
                    }

                    else
                    {
                      v27 = 3200;
                    }

                    v28 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_rtt_leeway_small, 320);
                    if (v28 >= v27)
                    {
                      v29 = v27;
                    }

                    else
                    {
                      v29 = v28;
                    }

                    if (v28 >= 0)
                    {
                      v30 = v29;
                    }

                    else
                    {
                      v30 = 320;
                    }

                    if (v27 + v122 < v24)
                    {
                      v31 = v30;
                      v32 = __nwlog_obj();
                      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_361;
                      }

                      *buf = 136447234;
                      v132 = "sa_dst_compare_statistics";
                      v133 = 2048;
                      *v134 = vcvtd_n_f64_u32(v122, 5uLL);
                      *&v134[8] = 2048;
                      v135 = vcvtd_n_f64_u32(v24, 5uLL);
                      v136 = 1024;
                      v137 = v27 >> 5;
                      v138 = 1024;
                      v139 = v31 >> 5;
                      v33 = "%{public}s prefering 1, dst1 min rtt %f < dst2 min rtt %f, leeway %u small leeway %u";
                      v34 = v32;
                      v35 = 44;
                      goto LABEL_360;
                    }

                    v116 = v30;
                    v119 = v30 + v122;
                    log = __nwlog_obj();
                    v53 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
                    if (v119 < v24)
                    {
                      if (v53)
                      {
                        *buf = 136447234;
                        v132 = "sa_dst_compare_statistics";
                        v133 = 2048;
                        *v134 = vcvtd_n_f64_u32(v122, 5uLL);
                        *&v134[8] = 2048;
                        v135 = vcvtd_n_f64_u32(v24, 5uLL);
                        v136 = 1024;
                        v137 = v27 >> 5;
                        v138 = 1024;
                        v139 = v116 >> 5;
                        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s prefering 1 slightly, dst1 min rtt %f < dst2 min rtt %f, leeway %u small leeway %u", buf, 0x2Cu);
                      }

                      LOBYTE(v6) = 0;
                      v15 = 1;
                      v13 = v14;
                      goto LABEL_124;
                    }

                    if (!v53)
                    {
                      goto LABEL_14;
                    }

                    *buf = 136447234;
                    v132 = "sa_dst_compare_statistics";
                    v133 = 2048;
                    *v134 = vcvtd_n_f64_u32(v122, 5uLL);
                    *&v134[8] = 2048;
                    v135 = vcvtd_n_f64_u32(v24, 5uLL);
                    v136 = 1024;
                    v137 = v27 >> 5;
                    v138 = 1024;
                    v139 = v116 >> 5;
                    v102 = "%{public}s not prefering 1, dst1 min rtt %f < dst2 min rtt %f, leeway %u small leeway %u";
                    v103 = log;
LABEL_393:
                    _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, v102, buf, 0x2Cu);
                    goto LABEL_14;
                  }

                  if (v130 <= v127)
                  {
                    v54 = __nwlog_obj();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446466;
                      v132 = "sa_dst_compare_statistics";
                      v133 = 2048;
                      *v134 = vcvtd_n_f64_u32(v15, 5uLL);
                      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s no preference, equal min rtt %f", buf, 0x16u);
                    }

                    goto LABEL_14;
                  }

                  v46 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_rtt_leeway, 3200);
                  if (v46 <= 31999)
                  {
                    LODWORD(v47) = v46;
                  }

                  else
                  {
                    LODWORD(v47) = 32000;
                  }

                  if (v46 >= 0)
                  {
                    v47 = v47;
                  }

                  else
                  {
                    v47 = 3200;
                  }

                  v123 = v47;
                  v48 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_rtt_leeway_small, 320);
                  if (v48 >= v123)
                  {
                    v49 = v123;
                  }

                  else
                  {
                    v49 = v48;
                  }

                  if (v48 >= 0)
                  {
                    v50 = v49;
                  }

                  else
                  {
                    v50 = 320;
                  }

                  if (v15 <= v123 + v24)
                  {
                    loga = v50;
                    v121 = v50 + v24;
                    v120 = __nwlog_obj();
                    v101 = os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG);
                    if (v15 > v121)
                    {
                      if (v101)
                      {
                        *buf = 136447234;
                        v132 = "sa_dst_compare_statistics";
                        v133 = 2048;
                        *v134 = vcvtd_n_f64_u32(v15, 5uLL);
                        *&v134[8] = 2048;
                        v135 = vcvtd_n_f64_u32(v24, 5uLL);
                        v136 = 1024;
                        v137 = v123 >> 5;
                        v138 = 1024;
                        v139 = loga >> 5;
                        _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s prefering 2 slightly, dst1 min rtt %f > dst2 min rtt %f, leeway %u small leeway %u", buf, 0x2Cu);
                      }

                      v15 = 0;
                      LOBYTE(v6) = 1;
                      v13 = v14;
                      goto LABEL_124;
                    }

                    if (!v101)
                    {
                      goto LABEL_14;
                    }

                    *buf = 136447234;
                    v132 = "sa_dst_compare_statistics";
                    v133 = 2048;
                    *v134 = vcvtd_n_f64_u32(v15, 5uLL);
                    *&v134[8] = 2048;
                    v135 = vcvtd_n_f64_u32(v24, 5uLL);
                    v136 = 1024;
                    v137 = v123 >> 5;
                    v138 = 1024;
                    v139 = loga >> 5;
                    v102 = "%{public}s not prefering 2, dst1 min rtt %f > dst2 min rtt %f, leeway %u small leeway %u";
                    v103 = v120;
                    goto LABEL_393;
                  }

                  v51 = v50;
                  v52 = __nwlog_obj();
                  if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_296;
                  }

                  *buf = 136447234;
                  v132 = "sa_dst_compare_statistics";
                  v133 = 2048;
                  *v134 = vcvtd_n_f64_u32(v15, 5uLL);
                  *&v134[8] = 2048;
                  v135 = vcvtd_n_f64_u32(v24, 5uLL);
                  v136 = 1024;
                  v137 = v123 >> 5;
                  v138 = 1024;
                  v139 = v51 >> 5;
                  v38 = "%{public}s prefering 2, dst1 min rtt %f > dst2 min rtt %f, leeway %u small leeway %u";
                  v44 = v52;
                  v45 = 44;
LABEL_295:
                  _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, v38, buf, v45);
                  goto LABEL_296;
                }

                if (DWORD2(v127))
                {
LABEL_87:
                  v15 = 0;
                  LOBYTE(v6) = 0;
                  goto LABEL_124;
                }

                v6 = DWORD1(v127);
                if (DWORD1(v127))
                {
                  if (networkd_settings_get_int64_with_default(nw_setting_compare_failure_threshold, 10) >= v6)
                  {
                    goto LABEL_14;
                  }

                  v56 = __nwlog_obj();
                  if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_361;
                  }

                  *buf = 136446466;
                  v132 = "sa_dst_compare_statistics";
                  v133 = 1024;
                  *v134 = v6;
                  v33 = "%{public}s prefer 1, dst 2 has no successful connections and %u attempts";
                  v34 = v56;
                  v35 = 18;
LABEL_360:
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, v33, buf, v35);
                  goto LABEL_361;
                }
              }

              else
              {
                if (!v127)
                {
                  LOBYTE(v6) = v130;
                  goto LABEL_124;
                }

                LOBYTE(v6) = v130;
                if (DWORD2(v130))
                {
LABEL_124:
                  if (v128[37])
                  {
                    if (!type[37])
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v36 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136446210;
                        v132 = "sa_dst_compare_rfc6724";
                        v33 = "%{public}s Rule 1, prefer d1, d2 is not routable";
                        goto LABEL_359;
                      }

LABEL_361:
                      v19 = 1;
                      goto LABEL_362;
                    }

LABEL_131:
                    if (v128[1] == 2)
                    {
                      v59 = bswap32(*&v128[4]);
                      v58 = (v59 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v59) == 127;
                      v57 = 14;
                    }

                    else
                    {
                      if (v128[1] != 30)
                      {
                        v57 = 0;
                        goto LABEL_147;
                      }

                      if (v128[8] == 255)
                      {
                        v81 = (v128[9] & 0xF) - 1;
                        if (v81 >= 5)
                        {
                          v57 = 14;
                        }

                        else
                        {
                          v57 = dword_182BD3394[v81];
                        }

                        goto LABEL_147;
                      }

                      if (v128[8] == 254)
                      {
                        if (v128[9] <= 0xBFu)
                        {
                          v57 = 14;
                        }

                        else
                        {
                          v57 = 5;
                        }

                        v58 = (v128[9] & 0xC0) == 128;
                      }

                      else
                      {
                        v57 = 14;
                        if (*&v128[8] | *&v128[15])
                        {
                          goto LABEL_147;
                        }

                        v58 = v128[23] == 1;
                      }
                    }

                    if (v58)
                    {
                      v57 = 2;
                    }

LABEL_147:
                    if (v128[37] == 2)
                    {
                      v62 = bswap32(*&v128[40]);
                      v61 = (v62 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v62) == 127;
                      v60 = 14;
                    }

                    else
                    {
                      if (v128[37] != 30)
                      {
                        v60 = 0;
                        goto LABEL_163;
                      }

                      if (v128[44] == 255)
                      {
                        v82 = (v128[45] & 0xF) - 1;
                        if (v82 >= 5)
                        {
                          v60 = 14;
                        }

                        else
                        {
                          v60 = dword_182BD3394[v82];
                        }

                        goto LABEL_163;
                      }

                      if (v128[44] == 254)
                      {
                        if (v128[45] <= 0xBFu)
                        {
                          v60 = 14;
                        }

                        else
                        {
                          v60 = 5;
                        }

                        v61 = (v128[45] & 0xC0) == 128;
                      }

                      else
                      {
                        v60 = 14;
                        if (*&v128[44] | *&v128[51])
                        {
                          goto LABEL_163;
                        }

                        v61 = v128[59] == 1;
                      }
                    }

                    if (v61)
                    {
                      v60 = 2;
                    }

LABEL_163:
                    if (v57 != v60)
                    {
                      goto LABEL_197;
                    }

                    if (type[1] == 2)
                    {
                      v65 = bswap32(*&type[4]);
                      v64 = (v65 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v65) == 127;
                      v63 = 14;
                    }

                    else
                    {
                      if (type[1] != 30)
                      {
                        v63 = 0;
                        goto LABEL_180;
                      }

                      if (type[8] == 255)
                      {
                        v86 = (type[9] & 0xF) - 1;
                        if (v86 >= 5)
                        {
                          v63 = 14;
                        }

                        else
                        {
                          v63 = dword_182BD3394[v86];
                        }

                        goto LABEL_180;
                      }

                      if (type[8] == 254)
                      {
                        if (type[9] <= 0xBFu)
                        {
                          v63 = 14;
                        }

                        else
                        {
                          v63 = 5;
                        }

                        v64 = (type[9] & 0xC0) == 128;
                      }

                      else
                      {
                        v63 = 14;
                        if (*&type[8] | *&type[15])
                        {
                          goto LABEL_180;
                        }

                        v64 = type[23] == 1;
                      }
                    }

                    if (v64)
                    {
                      v63 = 2;
                    }

LABEL_180:
                    if (type[37] == 2)
                    {
                      v68 = bswap32(*&type[40]);
                      v67 = (v68 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v68) == 127;
                      v66 = 14;
                    }

                    else
                    {
                      if (type[37] != 30)
                      {
                        v66 = 0;
                        goto LABEL_196;
                      }

                      if (type[44] == 255)
                      {
                        v87 = (type[45] & 0xF) - 1;
                        if (v87 >= 5)
                        {
                          v66 = 14;
                        }

                        else
                        {
                          v66 = dword_182BD3394[v87];
                        }

                        goto LABEL_196;
                      }

                      if (type[44] == 254)
                      {
                        if (type[45] <= 0xBFu)
                        {
                          v66 = 14;
                        }

                        else
                        {
                          v66 = 5;
                        }

                        v67 = (type[45] & 0xC0) == 128;
                      }

                      else
                      {
                        v66 = 14;
                        if (*&type[44] | *&type[51])
                        {
                          goto LABEL_196;
                        }

                        v67 = type[59] == 1;
                      }
                    }

                    if (v67)
                    {
                      v66 = 2;
                    }

LABEL_196:
                    if (v63 == v66)
                    {
                      goto LABEL_267;
                    }

LABEL_197:
                    if (v128[1] == 2)
                    {
                      v71 = bswap32(*&v128[4]);
                      v70 = (v71 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v71) == 127;
                      v69 = 14;
                    }

                    else
                    {
                      if (v128[1] != 30)
                      {
                        v69 = 0;
                        goto LABEL_213;
                      }

                      if (v128[8] == 255)
                      {
                        v84 = (v128[9] & 0xF) - 1;
                        if (v84 >= 5)
                        {
                          v69 = 14;
                        }

                        else
                        {
                          v69 = dword_182BD3394[v84];
                        }

                        goto LABEL_213;
                      }

                      if (v128[8] == 254)
                      {
                        if (v128[9] <= 0xBFu)
                        {
                          v69 = 14;
                        }

                        else
                        {
                          v69 = 5;
                        }

                        v70 = (v128[9] & 0xC0) == 128;
                      }

                      else
                      {
                        v69 = 14;
                        if (*&v128[8] | *&v128[15])
                        {
                          goto LABEL_213;
                        }

                        v70 = v128[23] == 1;
                      }
                    }

                    if (v70)
                    {
                      v69 = 2;
                    }

LABEL_213:
                    if (v128[37] == 2)
                    {
                      v74 = bswap32(*&v128[40]);
                      v73 = (v74 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v74) == 127;
                      v72 = 14;
                    }

                    else
                    {
                      if (v128[37] != 30)
                      {
                        v72 = 0;
                        goto LABEL_229;
                      }

                      if (v128[44] == 255)
                      {
                        v85 = (v128[45] & 0xF) - 1;
                        if (v85 >= 5)
                        {
                          v72 = 14;
                        }

                        else
                        {
                          v72 = dword_182BD3394[v85];
                        }

                        goto LABEL_229;
                      }

                      if (v128[44] == 254)
                      {
                        if (v128[45] <= 0xBFu)
                        {
                          v72 = 14;
                        }

                        else
                        {
                          v72 = 5;
                        }

                        v73 = (v128[45] & 0xC0) == 128;
                      }

                      else
                      {
                        v72 = 14;
                        if (*&v128[44] | *&v128[51])
                        {
                          goto LABEL_229;
                        }

                        v73 = v128[59] == 1;
                      }
                    }

                    if (v73)
                    {
                      v72 = 2;
                    }

LABEL_229:
                    if (v69 == v72)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v36 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136446210;
                        v132 = "sa_dst_compare_rfc6724";
                        v33 = "%{public}s Rule 2, prefer d1, d2 dst scope does not match src scope";
                        goto LABEL_359;
                      }

                      goto LABEL_361;
                    }

                    if (type[1] == 2)
                    {
                      v77 = bswap32(*&type[4]);
                      v76 = (v77 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v77) == 127;
                      v75 = 14;
                    }

                    else
                    {
                      if (type[1] != 30)
                      {
                        v75 = 0;
                        goto LABEL_248;
                      }

                      if (type[8] == 255)
                      {
                        v89 = (type[9] & 0xF) - 1;
                        if (v89 >= 5)
                        {
                          v75 = 14;
                        }

                        else
                        {
                          v75 = dword_182BD3394[v89];
                        }

                        goto LABEL_248;
                      }

                      if (type[8] == 254)
                      {
                        if (type[9] <= 0xBFu)
                        {
                          v75 = 14;
                        }

                        else
                        {
                          v75 = 5;
                        }

                        v76 = (type[9] & 0xC0) == 128;
                      }

                      else
                      {
                        v75 = 14;
                        if (*&type[8] | *&type[15])
                        {
                          goto LABEL_248;
                        }

                        v76 = type[23] == 1;
                      }
                    }

                    if (v76)
                    {
                      v75 = 2;
                    }

LABEL_248:
                    if (type[37] == 2)
                    {
                      v80 = bswap32(*&type[40]);
                      v79 = (v80 & 0xFFFF0000) == 0xA9FE0000 || HIBYTE(v80) == 127;
                      v78 = 14;
                    }

                    else
                    {
                      if (type[37] != 30)
                      {
                        v78 = 0;
                        goto LABEL_264;
                      }

                      if (type[44] == 255)
                      {
                        v90 = (type[45] & 0xF) - 1;
                        if (v90 >= 5)
                        {
                          v78 = 14;
                        }

                        else
                        {
                          v78 = dword_182BD3394[v90];
                        }

                        goto LABEL_264;
                      }

                      if (type[44] == 254)
                      {
                        if (type[45] <= 0xBFu)
                        {
                          v78 = 14;
                        }

                        else
                        {
                          v78 = 5;
                        }

                        v79 = (type[45] & 0xC0) == 128;
                      }

                      else
                      {
                        v78 = 14;
                        if (*&type[44] | *&type[51])
                        {
                          goto LABEL_264;
                        }

                        v79 = type[59] == 1;
                      }
                    }

                    if (v79)
                    {
                      v78 = 2;
                    }

LABEL_264:
                    if (v75 == v78)
                    {
                      v37 = __nwlog_obj();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136446210;
                        v132 = "sa_dst_compare_rfc6724";
                        v38 = "%{public}s Rule 2, prefer d2, d1 dst scope does not match src scope";
                        goto LABEL_294;
                      }

LABEL_296:
                      v19 = 0xFFFFFFFFLL;
                      goto LABEL_362;
                    }

LABEL_267:
                    if ((v129 & 4) != (v126 & 4))
                    {
                      if ((v129 & 4) != 0)
                      {
                        v36 = __nwlog_obj();
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446210;
                          v132 = "sa_dst_compare_rfc6724";
                          v33 = "%{public}s Rule 3, prefer d2, d1 source is deprecated";
                          goto LABEL_359;
                        }

                        goto LABEL_361;
                      }

                      if ((v126 & 4) != 0)
                      {
                        v37 = __nwlog_obj();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446210;
                          v132 = "sa_dst_compare_rfc6724";
                          v38 = "%{public}s Rule 3, prefer d1, d2 source is deprecated";
                          goto LABEL_294;
                        }

                        goto LABEL_296;
                      }
                    }

                    if ((v129 & 8) != (v126 & 8))
                    {
                      if ((v129 & 8) != 0)
                      {
                        v36 = __nwlog_obj();
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446210;
                          v132 = "sa_dst_compare_rfc6724";
                          v33 = "%{public}s Rule 3a, prefer d2, d1 source is optimistic";
                          goto LABEL_359;
                        }

                        goto LABEL_361;
                      }

                      if ((v126 & 8) != 0)
                      {
                        v37 = __nwlog_obj();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446210;
                          v132 = "sa_dst_compare_rfc6724";
                          v38 = "%{public}s Rule 3a, prefer d1, d2 source is optimistic";
                          goto LABEL_294;
                        }

                        goto LABEL_296;
                      }
                    }

                    if (*&v128[32] == WORD2(v129))
                    {
                      if (*&type[32] != WORD2(v126))
                      {
                        v36 = __nwlog_obj();
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446210;
                          v132 = "sa_dst_compare_rfc6724";
                          v33 = "%{public}s Rule 5, prefer d1, d2 dst label does not match src label";
                          goto LABEL_359;
                        }

                        goto LABEL_361;
                      }
                    }

                    else if (*&type[32] == WORD2(v126))
                    {
                      v37 = __nwlog_obj();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136446210;
                        v132 = "sa_dst_compare_rfc6724";
                        v38 = "%{public}s Rule 5, prefer d2, d1 dst label does not match src label";
                        goto LABEL_294;
                      }

                      goto LABEL_296;
                    }

                    if (*&v128[34] > *&type[34])
                    {
                      v83 = __nwlog_obj();
                      if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_361;
                      }

                      *buf = 136446722;
                      v132 = "sa_dst_compare_rfc6724";
                      v133 = 1024;
                      *v134 = *&v128[34];
                      *&v134[4] = 1024;
                      *&v134[6] = *&type[34];
                      v33 = "%{public}s Rule 6, prefer d1, d1 precedence %d > d2 precedence %d";
                      goto LABEL_300;
                    }

                    if (*&type[34] > *&v128[34])
                    {
                      v88 = __nwlog_obj();
                      if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_296;
                      }

                      *buf = 136446722;
                      v132 = "sa_dst_compare_rfc6724";
                      v133 = 1024;
                      *v134 = *&type[34];
                      *&v134[4] = 1024;
                      *&v134[6] = *&v128[34];
                      v38 = "%{public}s Rule 6, prefer d2, d2 precedence %d > d1 precedence %d";
                      goto LABEL_324;
                    }

                    if (v128[37] == 30)
                    {
                      if (*&v128[44] == 544)
                      {
                        v91 = 0;
LABEL_344:
                        if (type[37] == 30)
                        {
                          if (*&type[44] == 544)
                          {
                            v92 = 0;
                            goto LABEL_396;
                          }

                          if (*&type[44] == 288)
                          {
                            v92 = *&type[46] != 0;
LABEL_396:
                            if (v91 && !v92)
                            {
                              v36 = __nwlog_obj();
                              if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_361;
                              }

                              *buf = 136446210;
                              v132 = "sa_dst_compare_rfc6724";
                              v33 = "%{public}s Rule 7, prefer d1, d2 src is not native";
                              goto LABEL_359;
                            }

                            goto LABEL_349;
                          }
                        }

                        v92 = 1;
LABEL_349:
                        if (!v91 && v92)
                        {
                          v37 = __nwlog_obj();
                          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_296;
                          }

                          *buf = 136446210;
                          v132 = "sa_dst_compare_rfc6724";
                          v38 = "%{public}s Rule 7, prefer d2, d1 src is not native";
                          goto LABEL_294;
                        }

                        v124 = v13;
                        v93 = rfc6724_scope_sa(v128);
                        v94 = rfc6724_scope_sa(type);
                        if (v93 < v94)
                        {
                          v95 = v94;
                          v83 = __nwlog_obj();
                          if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_361;
                          }

                          *buf = 136446722;
                          v132 = "sa_dst_compare_rfc6724";
                          v133 = 1024;
                          *v134 = v93;
                          *&v134[4] = 1024;
                          *&v134[6] = v95;
                          v33 = "%{public}s Rule 8, prefer d1, d1 scope %d < d2 scope %d";
LABEL_300:
                          v34 = v83;
                          v35 = 24;
                          goto LABEL_360;
                        }

                        if (v94 >= v93)
                        {
                          if (v15)
                          {
                            v113 = 1;
                          }

                          else
                          {
                            v113 = 0xFFFFFFFFLL;
                          }

                          if ((v15 | v6))
                          {
                            goto LABEL_414;
                          }

                          v114 = common_prefix_length(v128, &v128[36]);
                          v115 = common_prefix_length(type, &type[36]);
                          if (v114 && v115)
                          {
                            if (v114 > v115)
                            {
                              v36 = __nwlog_obj();
                              if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_361;
                              }

                              *buf = 136446210;
                              v132 = "sa_dst_compare_rfc6724";
                              v33 = "%{public}s Rule 9, prefer d1, d1 shares more common prefix";
                              goto LABEL_359;
                            }

                            if (v115 > v114)
                            {
                              v37 = __nwlog_obj();
                              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_296;
                              }

                              *buf = 136446210;
                              v132 = "sa_dst_compare_rfc6724";
                              v38 = "%{public}s Rule 9, prefer d2, d2 shares more common prefix";
                              goto LABEL_294;
                            }
                          }

                          if (v12 == 1 && v124 == 2)
                          {
                            v36 = __nwlog_obj();
                            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                            {
                              goto LABEL_361;
                            }

                            *buf = 136446210;
                            v132 = "sa_dst_compare_internal_wrapper";
                            v33 = "%{public}s prefer d1, known while d2 not known";
                            goto LABEL_359;
                          }

                          v113 = 0;
                          if (v124 != 1)
                          {
LABEL_414:
                            v19 = v113;
                            goto LABEL_362;
                          }

                          v11 = v12 == 2;
                          v19 = 0;
                          if (!v11)
                          {
                            goto LABEL_362;
                          }

                          v37 = __nwlog_obj();
                          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136446210;
                            v132 = "sa_dst_compare_internal_wrapper";
                            v38 = "%{public}s prefer d2, known while d1 not known";
                            goto LABEL_294;
                          }

                          goto LABEL_296;
                        }

                        v108 = v94;
                        v88 = __nwlog_obj();
                        if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_296;
                        }

                        *buf = 136446722;
                        v132 = "sa_dst_compare_rfc6724";
                        v133 = 1024;
                        *v134 = v108;
                        *&v134[4] = 1024;
                        *&v134[6] = v93;
                        v38 = "%{public}s Rule 8, prefer d2, d2 scope %d < d1 scope %d";
LABEL_324:
                        v44 = v88;
                        v45 = 24;
                        goto LABEL_295;
                      }

                      if (*&v128[44] == 288)
                      {
                        v91 = *&v128[46] != 0;
                        goto LABEL_344;
                      }
                    }

                    v91 = 1;
                    goto LABEL_344;
                  }

                  if (!type[37])
                  {
                    goto LABEL_131;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v37 = gLogObj;
                  if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_296;
                  }

                  *buf = 136446210;
                  v132 = "sa_dst_compare_rfc6724";
                  v38 = "%{public}s Rule 1, prefer d2, d1 is not routable";
LABEL_294:
                  v44 = v37;
                  v45 = 12;
                  goto LABEL_295;
                }

                v6 = DWORD1(v130);
                if (DWORD1(v130))
                {
                  if (networkd_settings_get_int64_with_default(nw_setting_compare_failure_threshold, 10) >= v6)
                  {
                    goto LABEL_14;
                  }

                  v43 = __nwlog_obj();
                  if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_296;
                  }

                  *buf = 136446466;
                  v132 = "sa_dst_compare_statistics";
                  v133 = 1024;
                  *v134 = v6;
                  v38 = "%{public}s prefer 2, dst 1 has no successful connections and %u attempts";
                  v44 = v43;
                  v45 = 18;
                  goto LABEL_295;
                }
              }

LABEL_123:
              v15 = 0;
              goto LABEL_124;
            }

            v36 = __nwlog_obj();
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_361;
            }

            *buf = 136446210;
            v132 = "sa_dst_compare_statistics";
            v33 = "%{public}s prefer 1, dst 1 is local, dst 2 is not";
          }

          else
          {
            v36 = __nwlog_obj();
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_361;
            }

            *buf = 136446210;
            v132 = "sa_dst_compare_statistics";
            v33 = "%{public}s prefer 1, dst 2 has no route";
          }

LABEL_359:
          v34 = v36;
          v35 = 12;
          goto LABEL_360;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v132 = "sa_dst_compare_internal_wrapper";
          v21 = "%{public}s sa_dst_lookup for dst2 failed";
          goto LABEL_29;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v132 = "sa_dst_compare_internal_wrapper";
          v21 = "%{public}s sa_dst_lookup for dst1 failed";
LABEL_29:
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
        }
      }

      v19 = 0;
      goto LABEL_362;
    }

    __nwlog_obj();
    *v128 = 136446210;
    *&v128[4] = "sa_dst_compare_internal";
    v104 = _os_log_send_and_compose_impl();
    type[0] = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v104, type, buf))
    {
      goto LABEL_429;
    }

    if (type[0] == 17)
    {
      v105 = __nwlog_obj();
      v106 = type[0];
      if (os_log_type_enabled(v105, type[0]))
      {
        *v128 = 136446210;
        *&v128[4] = "sa_dst_compare_internal";
        v107 = "%{public}s called with null dst2";
        goto LABEL_428;
      }

      goto LABEL_429;
    }

    if (buf[0] != 1)
    {
      v105 = __nwlog_obj();
      v106 = type[0];
      if (os_log_type_enabled(v105, type[0]))
      {
        *v128 = 136446210;
        *&v128[4] = "sa_dst_compare_internal";
        v107 = "%{public}s called with null dst2, backtrace limit exceeded";
        goto LABEL_428;
      }

      goto LABEL_429;
    }

    backtrace_string = __nw_create_backtrace_string();
    v105 = __nwlog_obj();
    v106 = type[0];
    v112 = os_log_type_enabled(v105, type[0]);
    if (!backtrace_string)
    {
      if (v112)
      {
        *v128 = 136446210;
        *&v128[4] = "sa_dst_compare_internal";
        v107 = "%{public}s called with null dst2, no backtrace";
        goto LABEL_428;
      }

      goto LABEL_429;
    }

    if (v112)
    {
      *v128 = 136446466;
      *&v128[4] = "sa_dst_compare_internal";
      *&v128[12] = 2082;
      *&v128[14] = backtrace_string;
      v111 = "%{public}s called with null dst2, dumping backtrace:%{public}s";
      goto LABEL_408;
    }

    goto LABEL_409;
  }

  __nwlog_obj();
  *v128 = 136446210;
  *&v128[4] = "sa_dst_compare_internal";
  v104 = _os_log_send_and_compose_impl();
  type[0] = 16;
  buf[0] = 0;
  if (!__nwlog_fault(v104, type, buf))
  {
    goto LABEL_429;
  }

  if (type[0] != 17)
  {
    if (buf[0] != 1)
    {
      v105 = __nwlog_obj();
      v106 = type[0];
      if (os_log_type_enabled(v105, type[0]))
      {
        *v128 = 136446210;
        *&v128[4] = "sa_dst_compare_internal";
        v107 = "%{public}s called with null dst1, backtrace limit exceeded";
        goto LABEL_428;
      }

      goto LABEL_429;
    }

    backtrace_string = __nw_create_backtrace_string();
    v105 = __nwlog_obj();
    v106 = type[0];
    v110 = os_log_type_enabled(v105, type[0]);
    if (!backtrace_string)
    {
      if (v110)
      {
        *v128 = 136446210;
        *&v128[4] = "sa_dst_compare_internal";
        v107 = "%{public}s called with null dst1, no backtrace";
        goto LABEL_428;
      }

      goto LABEL_429;
    }

    if (v110)
    {
      *v128 = 136446466;
      *&v128[4] = "sa_dst_compare_internal";
      *&v128[12] = 2082;
      *&v128[14] = backtrace_string;
      v111 = "%{public}s called with null dst1, dumping backtrace:%{public}s";
LABEL_408:
      _os_log_impl(&dword_181A37000, v105, v106, v111, v128, 0x16u);
    }

LABEL_409:
    free(backtrace_string);
    goto LABEL_429;
  }

  v105 = __nwlog_obj();
  v106 = type[0];
  if (os_log_type_enabled(v105, type[0]))
  {
    *v128 = 136446210;
    *&v128[4] = "sa_dst_compare_internal";
    v107 = "%{public}s called with null dst1";
LABEL_428:
    _os_log_impl(&dword_181A37000, v105, v106, v107, v128, 0xCu);
  }

LABEL_429:
  if (v104)
  {
    free(v104);
  }

  return 0;
}
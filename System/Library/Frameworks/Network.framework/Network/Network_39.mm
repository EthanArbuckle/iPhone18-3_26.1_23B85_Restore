void sub_181CE2A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void sub_181CE2A68(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v4 = sub_181A93260(a1);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      v7 = _Block_copy(v3);
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v8 = *(v6 + 104);
      *(v6 + 104) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_local_max_streams_unidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_max_streams_unidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181CE2E08(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v4 = sub_181A93260(a1);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      v7 = _Block_copy(v3);
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v8 = *(v6 + 112);
      *(v6 + 112) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_close_with_error_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_close_with_error_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_close_with_error_handler";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_close_with_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_quic_connection_set_close_with_error_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_close_with_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_close_with_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181CE3190(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v4 = sub_181A93260(a1);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      v7 = _Block_copy(v3);
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v8 = *(v6 + 168);
      *(v6 + 168) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_keepalive_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_keepalive_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_keepalive_handler";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_quic_connection_set_keepalive_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181CE3578(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v4 = sub_181A93260(a1);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      v7 = _Block_copy(v3);
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v8 = *(v6 + 192);
      *(v6 + 192) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

uint64_t nw_protocol_udp_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v198 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
      v187 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v187 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v187 = 1;
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
        v191 = "nw_protocol_udp_add_input_handler";
        v8 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v188 = 0;
        if (!__nwlog_fault(v8, &type, &v188))
        {
          goto LABEL_253;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_253;
          }

          *buf = 136446210;
          v191 = "nw_protocol_udp_add_input_handler";
          v11 = "%{public}s called with null udp";
          goto LABEL_251;
        }

        if (v188 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_253;
          }

          *buf = 136446210;
          v191 = "nw_protocol_udp_add_input_handler";
          v11 = "%{public}s called with null udp, backtrace limit exceeded";
          goto LABEL_251;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        v26 = os_log_type_enabled(gLogObj, type);
        if (!backtrace_string)
        {
          if (!v26)
          {
            goto LABEL_253;
          }

          *buf = 136446210;
          v191 = "nw_protocol_udp_add_input_handler";
          v11 = "%{public}s called with null udp, no backtrace";
          v108 = v24;
          v109 = v25;
          goto LABEL_252;
        }

        if (v26)
        {
          *buf = 136446466;
          v191 = "nw_protocol_udp_add_input_handler";
          v192 = 2082;
          v193 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_253:
        if (!v8)
        {
          goto LABEL_255;
        }

        goto LABEL_254;
      }

      v7 = *a1[1].flow_id;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler == a2)
    {
      nw_protocol_set_flow_id_from_protocol(v7, a2);
      if (v2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      nw_protocol_release(default_input_handler);
      v3->default_input_handler = v2;
      if (v2)
      {
        v13 = v2->handle;
        v14 = v2;
        if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *v2[1].flow_id) != 0)
        {
          v15 = v14[1].callbacks;
          if (v15)
          {
            v14[1].callbacks = (&v15->add_input_handler + 1);
          }
        }

        nw_protocol_set_flow_id_from_protocol(v7, v2);
LABEL_27:
        if (!v2->output_handler)
        {
          if (v7)
          {
            v2->output_handler = v7;
            v16 = v7->handle;
            v17 = v7;
            if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v7[1].flow_id) != 0)
            {
              v18 = v17[1].callbacks;
              if (v18)
              {
                v17[1].callbacks = (&v18->add_input_handler + 1);
              }
            }
          }
        }

        v19 = v2->handle;
        v20 = v2;
        if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v20 = *v2[1].flow_id) != 0)
        {
          v31 = v20[1].callbacks;
          if (v31)
          {
            v21 = 0;
            v20[1].callbacks = (&v31->add_input_handler + 1);
            v22 = v2->callbacks;
            if (!v22)
            {
              goto LABEL_272;
            }
          }

          else
          {
            v21 = 0;
            v22 = v2->callbacks;
            if (!v22)
            {
              goto LABEL_272;
            }
          }
        }

        else
        {
          v21 = 1;
          v22 = v2->callbacks;
          if (!v22)
          {
            goto LABEL_272;
          }
        }

        get_local_endpoint = v22->get_local_endpoint;
        if (get_local_endpoint)
        {
          v33 = get_local_endpoint(v2);
LABEL_57:
          if ((v21 & 1) == 0)
          {
            v34 = v2->handle;
            v38 = v2;
            if (v34 == &nw_protocol_ref_counted_handle)
            {
              goto LABEL_66;
            }

            if (v34 != &nw_protocol_ref_counted_additional_handle)
            {
              goto LABEL_59;
            }

            v38 = *v2[1].flow_id;
            if (v38)
            {
LABEL_66:
              v39 = v38[1].callbacks;
              if (v39)
              {
                v40 = (v39 - 1);
                v38[1].callbacks = v40;
                if (!v40)
                {
                  v41 = *v38[1].flow_id;
                  if (v41)
                  {
                    *v38[1].flow_id = 0;
                    v41[2](v41);
                    _Block_release(v41);
                  }

                  if (v38[1].flow_id[8])
                  {
                    v42 = *v38[1].flow_id;
                    if (v42)
                    {
                      _Block_release(v42);
                    }
                  }

                  free(v38);
                }
              }
            }
          }

          v34 = v2->handle;
LABEL_59:
          v35 = v2;
          if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v35 = *v2[1].flow_id) != 0)
          {
            v43 = v35[1].callbacks;
            if (v43)
            {
              v36 = 0;
              v35[1].callbacks = (&v43->add_input_handler + 1);
              v37 = v2->callbacks;
              if (!v37)
              {
                goto LABEL_280;
              }
            }

            else
            {
              v36 = 0;
              v37 = v2->callbacks;
              if (!v37)
              {
                goto LABEL_280;
              }
            }
          }

          else
          {
            v36 = 1;
            v37 = v2->callbacks;
            if (!v37)
            {
              goto LABEL_280;
            }
          }

          get_remote_endpoint = v37->get_remote_endpoint;
          if (get_remote_endpoint)
          {
            v45 = get_remote_endpoint(v2);
            goto LABEL_81;
          }

LABEL_280:
          __nwlog_obj();
          name = v2->identifier->name;
          *buf = 136446722;
          v191 = "__nw_protocol_get_remote_endpoint";
          if (!name)
          {
            name = "invalid";
          }

          v192 = 2082;
          v193 = name;
          v194 = 2048;
          v195 = v2;
          v148 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v188 = 0;
          if (!__nwlog_fault(v148, &type, &v188))
          {
            goto LABEL_347;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v149 = __nwlog_obj();
            v150 = type;
            if (os_log_type_enabled(v149, type))
            {
              v151 = v2->identifier->name;
              if (!v151)
              {
                v151 = "invalid";
              }

              *buf = 136446722;
              v191 = "__nw_protocol_get_remote_endpoint";
              v192 = 2082;
              v193 = v151;
              v194 = 2048;
              v195 = v2;
              v152 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_345:
              v178 = v149;
LABEL_346:
              _os_log_impl(&dword_181A37000, v178, v150, v152, buf, 0x20u);
            }
          }

          else if (v188 == 1)
          {
            v165 = v148;
            v166 = __nw_create_backtrace_string();
            v167 = __nwlog_obj();
            v150 = type;
            loga = v167;
            v168 = os_log_type_enabled(v167, type);
            if (v166)
            {
              if (v168)
              {
                v169 = v2->identifier->name;
                if (!v169)
                {
                  v169 = "invalid";
                }

                *buf = 136446978;
                v191 = "__nw_protocol_get_remote_endpoint";
                v192 = 2082;
                v193 = v169;
                v194 = 2048;
                v195 = v2;
                v196 = 2082;
                v197 = v166;
                _os_log_impl(&dword_181A37000, loga, v150, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v166);
              v148 = v165;
              goto LABEL_347;
            }

            v148 = v165;
            if (v168)
            {
              v182 = v2->identifier->name;
              if (!v182)
              {
                v182 = "invalid";
              }

              *buf = 136446722;
              v191 = "__nw_protocol_get_remote_endpoint";
              v192 = 2082;
              v193 = v182;
              v194 = 2048;
              v195 = v2;
              v152 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
              v178 = loga;
              goto LABEL_346;
            }
          }

          else
          {
            v149 = __nwlog_obj();
            v150 = type;
            if (os_log_type_enabled(v149, type))
            {
              v177 = v2->identifier->name;
              if (!v177)
              {
                v177 = "invalid";
              }

              *buf = 136446722;
              v191 = "__nw_protocol_get_remote_endpoint";
              v192 = 2082;
              v193 = v177;
              v194 = 2048;
              v195 = v2;
              v152 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
              goto LABEL_345;
            }
          }

LABEL_347:
          if (v148)
          {
            free(v148);
          }

          v45 = 0;
LABEL_81:
          if ((v36 & 1) == 0)
          {
            v46 = v2->handle;
            v47 = v2;
            if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v47 = *v2[1].flow_id) != 0)
            {
              v48 = v47[1].callbacks;
              if (v48)
              {
                v49 = (v48 - 1);
                v47[1].callbacks = v49;
                if (!v49)
                {
                  v50 = *v47[1].flow_id;
                  if (v50)
                  {
                    *v47[1].flow_id = 0;
                    v50[2](v50);
                    _Block_release(v50);
                  }

                  if (v47[1].flow_id[8])
                  {
                    v51 = *v47[1].flow_id;
                    if (v51)
                    {
                      _Block_release(v51);
                    }
                  }

                  free(v47);
                }
              }
            }
          }

          if (v33)
          {
            v52 = v33;
            v53 = _nw_endpoint_get_type(v52);

            if (v53 == 1)
            {
              if (v45)
              {
                v54 = v45;
                v55 = _nw_endpoint_get_type(v54);

                if (v55 == 1)
                {
                  v56 = v52;
                  port = _nw_endpoint_get_port(v56);

                  LOWORD(v7[2].output_handler_context) = __rev16(port);
                  v58 = v54;
                  v59 = _nw_endpoint_get_port(v58);

                  WORD1(v7[2].output_handler_context) = __rev16(v59);
                  v60 = v56;
                  address_family = _nw_endpoint_get_address_family(v60);

                  v62 = v58;
                  v63 = _nw_endpoint_get_address_family(v62);

                  v64 = address_family == 0;
                  if (v63 != 2)
                  {
                    v64 = 0;
                  }

                  v65 = address_family == 2 || v64;
                  if (v65)
                  {
                    v66 = 4;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  HIWORD(v7[2].output_handler_context) = v66 | HIWORD(v7[2].output_handler_context) & 0xFFFB;
                  v67 = v60;
                  address = _nw_endpoint_get_address(v67);

                  if (v65)
                  {
                    *v7[2].flow_id = *(address + 4);
                    if (v63 == 2)
                    {
                      v69 = v62;
                      v70 = _nw_endpoint_get_address(v69);

                      LODWORD(v7[2].identifier) = *(v70 + 4);
                    }
                  }

                  else
                  {
                    *v7[2].flow_id = *(address + 8);
                    if (v63 == 30)
                    {
                      v71 = v62;
                      v72 = _nw_endpoint_get_address(v71);

                      *&v7[2].identifier = *(v72 + 8);
                    }
                  }

                  v73 = v2->handle;
                  v74 = v2;
                  if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v74 = *v2[1].flow_id) != 0)
                  {
                    v77 = v74[1].callbacks;
                    if (v77)
                    {
                      v75 = 0;
                      v74[1].callbacks = (&v77->add_input_handler + 1);
                      v76 = v2->callbacks;
                      if (!v76)
                      {
                        goto LABEL_292;
                      }
                    }

                    else
                    {
                      v75 = 0;
                      v76 = v2->callbacks;
                      if (!v76)
                      {
                        goto LABEL_292;
                      }
                    }
                  }

                  else
                  {
                    v75 = 1;
                    v76 = v2->callbacks;
                    if (!v76)
                    {
                      goto LABEL_292;
                    }
                  }

                  get_parameters = v76->get_parameters;
                  if (get_parameters)
                  {
                    v79 = get_parameters(v2);
                    goto LABEL_121;
                  }

LABEL_292:
                  __nwlog_obj();
                  v153 = v2->identifier->name;
                  *buf = 136446722;
                  v191 = "__nw_protocol_get_parameters";
                  if (!v153)
                  {
                    v153 = "invalid";
                  }

                  v192 = 2082;
                  v193 = v153;
                  v194 = 2048;
                  v195 = v2;
                  v154 = _os_log_send_and_compose_impl();
                  type = OS_LOG_TYPE_ERROR;
                  v188 = 0;
                  if (!__nwlog_fault(v154, &type, &v188))
                  {
                    goto LABEL_360;
                  }

                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v155 = __nwlog_obj();
                    v156 = type;
                    if (os_log_type_enabled(v155, type))
                    {
                      v157 = v2->identifier->name;
                      if (!v157)
                      {
                        v157 = "invalid";
                      }

                      *buf = 136446722;
                      v191 = "__nw_protocol_get_parameters";
                      v192 = 2082;
                      v193 = v157;
                      v194 = 2048;
                      v195 = v2;
                      v158 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_358:
                      v180 = v155;
LABEL_359:
                      _os_log_impl(&dword_181A37000, v180, v156, v158, buf, 0x20u);
                    }
                  }

                  else if (v188 == 1)
                  {
                    v171 = __nw_create_backtrace_string();
                    v172 = __nwlog_obj();
                    v156 = type;
                    logb = v172;
                    v173 = os_log_type_enabled(v172, type);
                    if (v171)
                    {
                      if (v173)
                      {
                        v174 = v2->identifier->name;
                        if (!v174)
                        {
                          v174 = "invalid";
                        }

                        *buf = 136446978;
                        v191 = "__nw_protocol_get_parameters";
                        v192 = 2082;
                        v193 = v174;
                        v194 = 2048;
                        v195 = v2;
                        v196 = 2082;
                        v197 = v171;
                        _os_log_impl(&dword_181A37000, logb, v156, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v171);
                      goto LABEL_360;
                    }

                    if (v173)
                    {
                      v183 = v2->identifier->name;
                      if (!v183)
                      {
                        v183 = "invalid";
                      }

                      *buf = 136446722;
                      v191 = "__nw_protocol_get_parameters";
                      v192 = 2082;
                      v193 = v183;
                      v194 = 2048;
                      v195 = v2;
                      v158 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
                      v180 = logb;
                      goto LABEL_359;
                    }
                  }

                  else
                  {
                    v155 = __nwlog_obj();
                    v156 = type;
                    if (os_log_type_enabled(v155, type))
                    {
                      v179 = v2->identifier->name;
                      if (!v179)
                      {
                        v179 = "invalid";
                      }

                      *buf = 136446722;
                      v191 = "__nw_protocol_get_parameters";
                      v192 = 2082;
                      v193 = v179;
                      v194 = 2048;
                      v195 = v2;
                      v158 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
                      goto LABEL_358;
                    }
                  }

LABEL_360:
                  if (v154)
                  {
                    free(v154);
                  }

                  v79 = 0;
LABEL_121:
                  if ((v75 & 1) == 0)
                  {
                    v80 = v2->handle;
                    if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
                    {
                      v81 = v2[1].callbacks;
                      if (v81)
                      {
                        v82 = (v81 - 1);
                        v2[1].callbacks = v82;
                        if (!v82)
                        {
                          v83 = *v2[1].flow_id;
                          if (v83)
                          {
                            *v2[1].flow_id = 0;
                            v83[2](v83);
                            _Block_release(v83);
                          }

                          if (v2[1].flow_id[8])
                          {
                            v84 = *v2[1].flow_id;
                            if (v84)
                            {
                              _Block_release(v84);
                            }
                          }

                          free(v2);
                        }
                      }
                    }
                  }

                  v85 = nw_parameters_copy_protocol_options_legacy(v79, v3);
                  if (v85)
                  {
                    v86 = v85;
                    _nw_protocol_options_get_log_id_str(v86, &v7[3]);

                    WORD2(v7[2].output_handler_context) = _nw_protocol_options_get_log_id_num(v86);
                    if (_nw_udp_options_get_prefer_no_checksum(v86))
                    {
                      v87 = 16;
                    }

                    else
                    {
                      v87 = 0;
                    }

                    HIWORD(v7[2].output_handler_context) = HIWORD(v7[2].output_handler_context) & 0xFFEF | v87;
                    if (_nw_udp_options_get_ignore_inbound_checksum(v86))
                    {
                      v88 = 64;
                    }

                    else
                    {
                      v88 = 0;
                    }

                    HIWORD(v7[2].output_handler_context) = HIWORD(v7[2].output_handler_context) & 0xFFBF | v88;
                    if (_nw_udp_options_get_no_metadata(v86))
                    {
                      v89 = 32;
                    }

                    else
                    {
                      v89 = 0;
                    }

                    HIWORD(v7[2].output_handler_context) = HIWORD(v7[2].output_handler_context) & 0xFFDF | v89;
                    os_release(v86);
                  }

                  if (nw_parameters_get_upper_transport_protocol(v79) == 253)
                  {
                    HIWORD(v7[2].output_handler_context) |= 0x80u;
                  }

                  v90 = v3->default_input_handler;
                  if (v90)
                  {
                    v91 = v90->callbacks;
                    if (v91)
                    {
                      get_path = v91->get_path;
                      if (get_path)
                      {
                        v93 = v90->handle;
                        v94 = v3->default_input_handler;
                        if (v93 == &nw_protocol_ref_counted_handle || v93 == &nw_protocol_ref_counted_additional_handle && (v94 = *v90[1].flow_id) != 0)
                        {
                          v98 = v94[1].callbacks;
                          if (v98)
                          {
                            v94[1].callbacks = (&v98->add_input_handler + 1);
                          }

                          v95 = get_path(v90);
                          v99 = v90->handle;
                          if (v99 == &nw_protocol_ref_counted_handle || v99 == &nw_protocol_ref_counted_additional_handle && (v90 = *v90[1].flow_id) != 0)
                          {
                            v100 = v90[1].callbacks;
                            if (v100)
                            {
                              v101 = (v100 - 1);
                              v90[1].callbacks = v101;
                              if (!v101)
                              {
                                v102 = v95;
                                v103 = *v90[1].flow_id;
                                if (v103)
                                {
                                  *v90[1].flow_id = 0;
                                  v103[2](v103);
                                  _Block_release(v103);
                                }

                                if (v90[1].flow_id[8])
                                {
                                  v104 = *v90[1].flow_id;
                                  if (v104)
                                  {
                                    _Block_release(v104);
                                  }
                                }

                                free(v90);
                                v95 = v102;
                              }
                            }
                          }
                        }

                        else
                        {
                          v95 = get_path(v3->default_input_handler);
                        }

                        if (v95)
                        {
                          v105 = v95;
                          effective_traffic_class = _nw_path_get_effective_traffic_class(v105);

                          LODWORD(v7[2].default_input_handler) = effective_traffic_class;
                          HIDWORD(v7[2].default_input_handler) = nw_path_get_maximum_datagram_size(v105);
                        }
                      }
                    }
                  }

                  if (_nw_signposts_once != -1)
                  {
                    dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
                  }

                  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
                  {
                    kdebug_trace();
                    result = 1;
                    if (v187)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = 1;
                    if (v187)
                    {
                      return result;
                    }
                  }

                  goto LABEL_256;
                }
              }

              __nwlog_obj();
              *buf = 136446210;
              v191 = "nw_protocol_udp_add_input_handler";
              v8 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v188 = 0;
              if (!__nwlog_fault(v8, &type, &v188))
              {
                goto LABEL_253;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v9 = __nwlog_obj();
                v10 = type;
                if (!os_log_type_enabled(v9, type))
                {
                  goto LABEL_253;
                }

                *buf = 136446210;
                v191 = "nw_protocol_udp_add_input_handler";
                v11 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address)";
                goto LABEL_251;
              }

              if (v188 == 1)
              {
                v128 = __nw_create_backtrace_string();
                v9 = __nwlog_obj();
                v10 = type;
                v170 = os_log_type_enabled(v9, type);
                if (v128)
                {
                  if (v170)
                  {
                    *buf = 136446466;
                    v191 = "nw_protocol_udp_add_input_handler";
                    v192 = 2082;
                    v193 = v128;
                    v130 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), dumping backtrace:%{public}s";
                    goto LABEL_244;
                  }

                  goto LABEL_245;
                }

                if (!v170)
                {
                  goto LABEL_253;
                }

                *buf = 136446210;
                v191 = "nw_protocol_udp_add_input_handler";
                v11 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), no backtrace";
              }

              else
              {
                v9 = __nwlog_obj();
                v10 = type;
                if (!os_log_type_enabled(v9, type))
                {
                  goto LABEL_253;
                }

                *buf = 136446210;
                v191 = "nw_protocol_udp_add_input_handler";
                v11 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), backtrace limit exceeded";
              }

LABEL_251:
              v108 = v9;
              v109 = v10;
LABEL_252:
              _os_log_impl(&dword_181A37000, v108, v109, v11, buf, 0xCu);
              goto LABEL_253;
            }
          }

LABEL_236:
          __nwlog_obj();
          *buf = 136446210;
          v191 = "nw_protocol_udp_add_input_handler";
          v8 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v188 = 0;
          if (!__nwlog_fault(v8, &type, &v188))
          {
            goto LABEL_253;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v9 = __nwlog_obj();
            v10 = type;
            if (!os_log_type_enabled(v9, type))
            {
              goto LABEL_253;
            }

            *buf = 136446210;
            v191 = "nw_protocol_udp_add_input_handler";
            v11 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address)";
            goto LABEL_251;
          }

          if (v188 != 1)
          {
            v9 = __nwlog_obj();
            v10 = type;
            if (!os_log_type_enabled(v9, type))
            {
              goto LABEL_253;
            }

            *buf = 136446210;
            v191 = "nw_protocol_udp_add_input_handler";
            v11 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), backtrace limit exceeded";
            goto LABEL_251;
          }

          v128 = __nw_create_backtrace_string();
          v9 = __nwlog_obj();
          v10 = type;
          v129 = os_log_type_enabled(v9, type);
          if (!v128)
          {
            if (!v129)
            {
              goto LABEL_253;
            }

            *buf = 136446210;
            v191 = "nw_protocol_udp_add_input_handler";
            v11 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), no backtrace";
            goto LABEL_251;
          }

          if (v129)
          {
            *buf = 136446466;
            v191 = "nw_protocol_udp_add_input_handler";
            v192 = 2082;
            v193 = v128;
            v130 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), dumping backtrace:%{public}s";
LABEL_244:
            _os_log_impl(&dword_181A37000, v9, v10, v130, buf, 0x16u);
          }

LABEL_245:
          free(v128);
          if (!v8)
          {
LABEL_255:
            result = 0;
            if (v187)
            {
              return result;
            }

LABEL_256:
            v131 = v3->handle;
            if (v131 == &nw_protocol_ref_counted_handle || v131 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
            {
              v132 = v3[1].callbacks;
              if (v132)
              {
                v133 = (v132 - 1);
                v3[1].callbacks = v133;
                if (!v133)
                {
                  v134 = result;
                  v135 = *v3[1].flow_id;
                  if (v135)
                  {
                    *v3[1].flow_id = 0;
                    v135[2](v135);
                    _Block_release(v135);
                  }

                  if (v3[1].flow_id[8])
                  {
                    v136 = *v3[1].flow_id;
                    if (v136)
                    {
                      _Block_release(v136);
                    }
                  }

                  free(v3);
                  return v134;
                }
              }
            }

            return result;
          }

LABEL_254:
          free(v8);
          goto LABEL_255;
        }

LABEL_272:
        __nwlog_obj();
        v141 = v2->identifier->name;
        *buf = 136446722;
        v191 = "__nw_protocol_get_local_endpoint";
        if (!v141)
        {
          v141 = "invalid";
        }

        v192 = 2082;
        v193 = v141;
        v194 = 2048;
        v195 = v2;
        v142 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v188 = 0;
        if (!__nwlog_fault(v142, &type, &v188))
        {
          goto LABEL_338;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v143 = __nwlog_obj();
          v144 = type;
          if (os_log_type_enabled(v143, type))
          {
            v145 = v2->identifier->name;
            if (!v145)
            {
              v145 = "invalid";
            }

            *buf = 136446722;
            v191 = "__nw_protocol_get_local_endpoint";
            v192 = 2082;
            v193 = v145;
            v194 = 2048;
            v195 = v2;
            v146 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
LABEL_336:
            v176 = v143;
LABEL_337:
            _os_log_impl(&dword_181A37000, v176, v144, v146, buf, 0x20u);
          }
        }

        else if (v188 == 1)
        {
          v161 = __nw_create_backtrace_string();
          v162 = __nwlog_obj();
          v144 = type;
          log = v162;
          v163 = os_log_type_enabled(v162, type);
          if (v161)
          {
            if (v163)
            {
              v164 = v2->identifier->name;
              if (!v164)
              {
                v164 = "invalid";
              }

              *buf = 136446978;
              v191 = "__nw_protocol_get_local_endpoint";
              v192 = 2082;
              v193 = v164;
              v194 = 2048;
              v195 = v2;
              v196 = 2082;
              v197 = v161;
              _os_log_impl(&dword_181A37000, log, v144, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v161);
            goto LABEL_338;
          }

          if (v163)
          {
            v181 = v2->identifier->name;
            if (!v181)
            {
              v181 = "invalid";
            }

            *buf = 136446722;
            v191 = "__nw_protocol_get_local_endpoint";
            v192 = 2082;
            v193 = v181;
            v194 = 2048;
            v195 = v2;
            v146 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
            v176 = log;
            goto LABEL_337;
          }
        }

        else
        {
          v143 = __nwlog_obj();
          v144 = type;
          if (os_log_type_enabled(v143, type))
          {
            v175 = v2->identifier->name;
            if (!v175)
            {
              v175 = "invalid";
            }

            *buf = 136446722;
            v191 = "__nw_protocol_get_local_endpoint";
            v192 = 2082;
            v193 = v175;
            v194 = 2048;
            v195 = v2;
            v146 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
            goto LABEL_336;
          }
        }

LABEL_338:
        if (v142)
        {
          free(v142);
        }

        v33 = 0;
        goto LABEL_57;
      }

      nw_protocol_set_flow_id_from_protocol(v7, 0);
    }

    __nwlog_obj();
    *buf = 136446210;
    v191 = "__nw_protocol_get_output_handler";
    v27 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v188 = 0;
    if (__nwlog_fault(v27, &type, &v188))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_186;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_get_output_handler";
        v30 = "%{public}s called with null protocol";
LABEL_185:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
        goto LABEL_186;
      }

      if (v188 != 1)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_186;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_get_output_handler";
        v30 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_185;
      }

      v96 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v97 = os_log_type_enabled(v28, type);
      if (!v96)
      {
        if (!v97)
        {
          goto LABEL_186;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_get_output_handler";
        v30 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_185;
      }

      if (v97)
      {
        *buf = 136446466;
        v191 = "__nw_protocol_get_output_handler";
        v192 = 2082;
        v193 = v96;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v96);
    }

LABEL_186:
    if (v27)
    {
      free(v27);
    }

    __nwlog_obj();
    *buf = 136446210;
    v191 = "__nw_protocol_set_output_handler";
    v110 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v188 = 0;
    if (__nwlog_fault(v110, &type, &v188))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v112 = type;
        if (!os_log_type_enabled(v111, type))
        {
          goto LABEL_202;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_set_output_handler";
        v113 = "%{public}s called with null protocol";
LABEL_201:
        _os_log_impl(&dword_181A37000, v111, v112, v113, buf, 0xCu);
        goto LABEL_202;
      }

      if (v188 != 1)
      {
        v111 = __nwlog_obj();
        v112 = type;
        if (!os_log_type_enabled(v111, type))
        {
          goto LABEL_202;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_set_output_handler";
        v113 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_201;
      }

      v114 = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v112 = type;
      v115 = os_log_type_enabled(v111, type);
      if (!v114)
      {
        if (!v115)
        {
          goto LABEL_202;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_set_output_handler";
        v113 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_201;
      }

      if (v115)
      {
        *buf = 136446466;
        v191 = "__nw_protocol_set_output_handler";
        v192 = 2082;
        v193 = v114;
        _os_log_impl(&dword_181A37000, v111, v112, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v114);
    }

LABEL_202:
    if (v110)
    {
      free(v110);
    }

    __nwlog_obj();
    *buf = 136446210;
    v191 = "__nw_protocol_get_local_endpoint";
    v116 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v188 = 0;
    if (__nwlog_fault(v116, &type, &v188))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v117 = __nwlog_obj();
        v118 = type;
        if (!os_log_type_enabled(v117, type))
        {
          goto LABEL_218;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_get_local_endpoint";
        v119 = "%{public}s called with null protocol";
LABEL_217:
        _os_log_impl(&dword_181A37000, v117, v118, v119, buf, 0xCu);
        goto LABEL_218;
      }

      if (v188 != 1)
      {
        v117 = __nwlog_obj();
        v118 = type;
        if (!os_log_type_enabled(v117, type))
        {
          goto LABEL_218;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_get_local_endpoint";
        v119 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_217;
      }

      v120 = __nw_create_backtrace_string();
      v117 = __nwlog_obj();
      v118 = type;
      v121 = os_log_type_enabled(v117, type);
      if (!v120)
      {
        if (!v121)
        {
          goto LABEL_218;
        }

        *buf = 136446210;
        v191 = "__nw_protocol_get_local_endpoint";
        v119 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_217;
      }

      if (v121)
      {
        *buf = 136446466;
        v191 = "__nw_protocol_get_local_endpoint";
        v192 = 2082;
        v193 = v120;
        _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v120);
    }

LABEL_218:
    if (v116)
    {
      free(v116);
    }

    __nwlog_obj();
    *buf = 136446210;
    v191 = "__nw_protocol_get_remote_endpoint";
    v122 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v188 = 0;
    if (!__nwlog_fault(v122, &type, &v188))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v123 = __nwlog_obj();
      v124 = type;
      if (!os_log_type_enabled(v123, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v191 = "__nw_protocol_get_remote_endpoint";
      v125 = "%{public}s called with null protocol";
    }

    else if (v188 == 1)
    {
      v126 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v124 = type;
      v127 = os_log_type_enabled(v123, type);
      if (v126)
      {
        if (v127)
        {
          *buf = 136446466;
          v191 = "__nw_protocol_get_remote_endpoint";
          v192 = 2082;
          v193 = v126;
          _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v126);
        goto LABEL_234;
      }

      if (!v127)
      {
LABEL_234:
        if (v122)
        {
          free(v122);
        }

        goto LABEL_236;
      }

      *buf = 136446210;
      v191 = "__nw_protocol_get_remote_endpoint";
      v125 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v123 = __nwlog_obj();
      v124 = type;
      if (!os_log_type_enabled(v123, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v191 = "__nw_protocol_get_remote_endpoint";
      v125 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
    goto LABEL_234;
  }

  __nwlog_obj();
  *buf = 136446210;
  v191 = "nw_protocol_udp_add_input_handler";
  v137 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v188 = 0;
  if (__nwlog_fault(v137, &type, &v188))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v138 = __nwlog_obj();
      v139 = type;
      if (os_log_type_enabled(v138, type))
      {
        *buf = 136446210;
        v191 = "nw_protocol_udp_add_input_handler";
        v140 = "%{public}s called with null protocol";
LABEL_365:
        _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0xCu);
      }
    }

    else if (v188 == 1)
    {
      v159 = __nw_create_backtrace_string();
      v138 = __nwlog_obj();
      v139 = type;
      v160 = os_log_type_enabled(v138, type);
      if (v159)
      {
        if (v160)
        {
          *buf = 136446466;
          v191 = "nw_protocol_udp_add_input_handler";
          v192 = 2082;
          v193 = v159;
          _os_log_impl(&dword_181A37000, v138, v139, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v159);
        goto LABEL_366;
      }

      if (v160)
      {
        *buf = 136446210;
        v191 = "nw_protocol_udp_add_input_handler";
        v140 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_365;
      }
    }

    else
    {
      v138 = __nwlog_obj();
      v139 = type;
      if (os_log_type_enabled(v138, type))
      {
        *buf = 136446210;
        v191 = "nw_protocol_udp_add_input_handler";
        v140 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_365;
      }
    }
  }

LABEL_366:
  if (v137)
  {
    free(v137);
  }

  return 0;
}

nw_protocol *nw_protocol_implementation_get_local(nw_protocol *a1)
{
  v86 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v2 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        v4 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v4, type, &v78))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_local";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v78 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v19 = type[0];
            v20 = os_log_type_enabled(v5, type[0]);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_get_local";
                v80 = 2082;
                v81 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (v20)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_local";
              _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v25 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_local";
              _os_log_impl(&dword_181A37000, v5, v25, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_44:
          v8 = 0;
          goto LABEL_45;
        }

LABEL_43:
        free(v4);
        goto LABEL_44;
      }

      v2 = *a1[1].flow_id;
    }

    v8 = &v2[1].output_handler;
    v9 = v2[1].handle;
    if (v9)
    {
      if (*(v9 + 10))
      {
        if (v2[6].output_handler)
        {
          v10 = v2[6].default_input_handler;
LABEL_46:

          goto LABEL_47;
        }

        if (v9[16] == 3)
        {
          some_node = nw_hash_table_get_some_node(*&v2[5].flow_id[8]);
          if (!some_node)
          {
            if ((SBYTE5(v2[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v26 = gLogObj;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_implementation_get_local";
                v80 = 2082;
                v81 = &v2[7].output_handler_context + 7;
                v82 = 2080;
                v83 = " ";
                _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to find any flow", buf, 0x20u);
              }
            }

            goto LABEL_45;
          }

          v12 = *(some_node + 16);
          if (!v12 || (v13 = v12[3]) == 0 || (v14 = *(v13 + 128)) == 0)
          {
LABEL_45:
            v10 = 0;
            goto LABEL_46;
          }

          v15 = v12[5];
          v16 = v12;
          if (v15 != &nw_protocol_ref_counted_handle)
          {
            if (v15 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v16) = 0;
              v17 = 1;
              goto LABEL_63;
            }

            v16 = v12[8];
            if (!v16)
            {
              v17 = 1;
LABEL_63:
              *buf = v12;
              buf[8] = v16;
              v10 = v14();
              if ((v17 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              goto LABEL_46;
            }
          }

          v31 = v16[11];
          v17 = 0;
          if (v31)
          {
            v16[11] = v31 + 1;
          }

          LOBYTE(v16) = -1;
          goto LABEL_63;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v22 = default_input_handler->handle;
          v23 = a1->default_input_handler;
          if (v22 != &nw_protocol_ref_counted_handle)
          {
            if (v22 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v23) = 0;
              v24 = 1;
              goto LABEL_54;
            }

            v23 = *default_input_handler[1].flow_id;
            if (!v23)
            {
              v24 = 1;
              goto LABEL_54;
            }
          }

          callbacks = v23[1].callbacks;
          v24 = 0;
          if (callbacks)
          {
            v23[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          LOBYTE(v23) = -1;
LABEL_54:
          *type = default_input_handler;
          v77 = v23;
          v29 = default_input_handler->callbacks;
          if (v29)
          {
            get_local_endpoint = v29->get_local_endpoint;
            if (get_local_endpoint)
            {
              v10 = get_local_endpoint();
              if (v24)
              {
                goto LABEL_46;
              }

LABEL_57:
              nw::release_if_needed<nw_protocol *>(type);
              goto LABEL_46;
            }
          }

          v74 = v24;
          v52 = default_input_handler;
          v53 = __nwlog_obj();
          name = v52->identifier->name;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_local_endpoint";
          if (!name)
          {
            name = "invalid";
          }

          v80 = 2082;
          v81 = name;
          v82 = 2048;
          v55 = v52;
          v83 = v52;
          v56 = _os_log_send_and_compose_impl();

          v78 = OS_LOG_TYPE_ERROR;
          v75 = 0;
          if (__nwlog_fault(v56, &v78, &v75))
          {
            if (v78 == OS_LOG_TYPE_FAULT)
            {
              v57 = __nwlog_obj();
              v58 = v78;
              if (os_log_type_enabled(v57, v78))
              {
                v59 = v55->identifier->name;
                if (!v59)
                {
                  v59 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                v80 = 2082;
                v81 = v59;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v58, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback", buf, 0x20u);
              }

LABEL_156:

              goto LABEL_157;
            }

            if (v75 != 1)
            {
              v57 = __nwlog_obj();
              v70 = v78;
              if (os_log_type_enabled(v57, v78))
              {
                v71 = v55->identifier->name;
                if (!v71)
                {
                  v71 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                v80 = 2082;
                v81 = v71;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v70, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_156;
            }

            v64 = __nw_create_backtrace_string();
            v57 = __nwlog_obj();
            v65 = v78;
            v66 = os_log_type_enabled(v57, v78);
            if (!v64)
            {
              if (v66)
              {
                v73 = v55->identifier->name;
                if (!v73)
                {
                  v73 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                v80 = 2082;
                v81 = v73;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v65, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_156;
            }

            if (v66)
            {
              v67 = v55->identifier->name;
              if (!v67)
              {
                v67 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              v80 = 2082;
              v81 = v67;
              v82 = 2048;
              v83 = v55;
              v84 = 2082;
              v85 = v64;
              _os_log_impl(&dword_181A37000, v57, v65, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v64);
          }

LABEL_157:
          if (v56)
          {
            free(v56);
          }

          v10 = 0;
          if (v74)
          {
            goto LABEL_46;
          }

          goto LABEL_57;
        }

        v62 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v37 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v37, type, &v78))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v63 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_local_endpoint";
            _os_log_impl(&dword_181A37000, v38, v63, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v78 != OS_LOG_TYPE_INFO)
        {
          v38 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_local_endpoint";
            _os_log_impl(&dword_181A37000, v38, v72, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v68 = type[0];
        v69 = os_log_type_enabled(v38, type[0]);
        if (!v48)
        {
          if (v69)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_local_endpoint";
            _os_log_impl(&dword_181A37000, v38, v68, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v69)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_local_endpoint";
          v80 = 2082;
          v81 = v48;
          _os_log_impl(&dword_181A37000, v38, v68, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        v37 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v37, type, &v78))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v41 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_local";
            _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v78 != OS_LOG_TYPE_INFO)
        {
          v38 = __nwlog_obj();
          v61 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_local";
            _os_log_impl(&dword_181A37000, v38, v61, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v49 = type[0];
        v50 = os_log_type_enabled(v38, type[0]);
        if (!v48)
        {
          if (v50)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_local";
            _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_local";
          v80 = 2082;
          v81 = v48;
          _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v48);
      if (!v37)
      {
        goto LABEL_45;
      }

      goto LABEL_165;
    }

    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_get_local";
    v37 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v78 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v37, type, &v78))
    {
      goto LABEL_164;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v78 == OS_LOG_TYPE_INFO)
    {
      v45 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v46 = type[0];
      v47 = os_log_type_enabled(v38, type[0]);
      if (v45)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_local";
          v80 = 2082;
          v81 = v45;
          _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v45);
LABEL_164:
        if (!v37)
        {
          goto LABEL_45;
        }

LABEL_165:
        free(v37);
        goto LABEL_45;
      }

      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v38, v60, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_163:

    goto LABEL_164;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_get_local";
  v33 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v78 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v33, type, &v78))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v78 == OS_LOG_TYPE_INFO)
    {
      v42 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v43 = type[0];
      v44 = os_log_type_enabled(v34, type[0]);
      if (v42)
      {
        if (v44)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_local";
          v80 = 2082;
          v81 = v42;
          _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_130;
      }

      if (v44)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v34, v51, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_130:
  if (v33)
  {
    free(v33);
  }

  v10 = 0;
LABEL_47:

  return v10;
}

void sub_181CE6504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if ((v12 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

id nw_protocol_implementation_get_path(nw_protocol *a1)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v2 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        v4 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v79 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v4, type, &v79))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_path";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v79 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v20 = type[0];
            v21 = os_log_type_enabled(v5, type[0]);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_get_path";
                v81 = 2082;
                v82 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (v21)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_path";
              _os_log_impl(&dword_181A37000, v5, v20, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v26 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_path";
              _os_log_impl(&dword_181A37000, v5, v26, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_44:
          v8 = 0;
          goto LABEL_45;
        }

LABEL_43:
        free(v4);
        goto LABEL_44;
      }

      v2 = *a1[1].flow_id;
    }

    v8 = &v2[1].output_handler;
    v9 = v2[1].handle;
    if (v9)
    {
      if (*(v9 + 10))
      {
        v10 = *v2[6].flow_id;
        if (v10)
        {
          v11 = v10;
LABEL_46:

          goto LABEL_47;
        }

        if (v9[16] == 3)
        {
          some_node = nw_hash_table_get_some_node(*&v2[5].flow_id[8]);
          if (!some_node)
          {
            if ((SBYTE5(v2[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v27 = gLogObj;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_implementation_get_path";
                v81 = 2082;
                v82 = &v2[7].output_handler_context + 7;
                v83 = 2080;
                v84 = " ";
                _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to find any flow", buf, 0x20u);
              }
            }

            goto LABEL_45;
          }

          v13 = *(some_node + 16);
          if (!v13 || (v14 = v13[3]) == 0 || (v15 = *(v14 + 120)) == 0)
          {
LABEL_45:
            v11 = 0;
            goto LABEL_46;
          }

          v16 = v13[5];
          v17 = v13;
          if (v16 != &nw_protocol_ref_counted_handle)
          {
            if (v16 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v17) = 0;
              v18 = 1;
              goto LABEL_63;
            }

            v17 = v13[8];
            if (!v17)
            {
              v18 = 1;
LABEL_63:
              *buf = v13;
              buf[8] = v17;
              v11 = v15();
              if ((v18 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              goto LABEL_46;
            }
          }

          v32 = v17[11];
          v18 = 0;
          if (v32)
          {
            v17[11] = v32 + 1;
          }

          LOBYTE(v17) = -1;
          goto LABEL_63;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v23 = default_input_handler->handle;
          v24 = a1->default_input_handler;
          if (v23 != &nw_protocol_ref_counted_handle)
          {
            if (v23 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v24) = 0;
              v25 = 1;
              goto LABEL_54;
            }

            v24 = *default_input_handler[1].flow_id;
            if (!v24)
            {
              v25 = 1;
              goto LABEL_54;
            }
          }

          callbacks = v24[1].callbacks;
          v25 = 0;
          if (callbacks)
          {
            v24[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          LOBYTE(v24) = -1;
LABEL_54:
          *type = default_input_handler;
          v78 = v24;
          v30 = default_input_handler->callbacks;
          if (v30)
          {
            get_path = v30->get_path;
            if (get_path)
            {
              v11 = get_path();
              if (v25)
              {
                goto LABEL_46;
              }

LABEL_57:
              nw::release_if_needed<nw_protocol *>(type);
              goto LABEL_46;
            }
          }

          v75 = v25;
          v53 = default_input_handler;
          v54 = __nwlog_obj();
          name = v53->identifier->name;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_path";
          if (!name)
          {
            name = "invalid";
          }

          v81 = 2082;
          v82 = name;
          v83 = 2048;
          v56 = v53;
          v84 = v53;
          v57 = _os_log_send_and_compose_impl();

          v79 = OS_LOG_TYPE_ERROR;
          v76 = 0;
          if (__nwlog_fault(v57, &v79, &v76))
          {
            if (v79 == OS_LOG_TYPE_FAULT)
            {
              v58 = __nwlog_obj();
              v59 = v79;
              if (os_log_type_enabled(v58, v79))
              {
                v60 = v56->identifier->name;
                if (!v60)
                {
                  v60 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_path";
                v81 = 2082;
                v82 = v60;
                v83 = 2048;
                v84 = v56;
                _os_log_impl(&dword_181A37000, v58, v59, "%{public}s protocol %{public}s (%p) has invalid get_path callback", buf, 0x20u);
              }

LABEL_156:

              goto LABEL_157;
            }

            if (v76 != 1)
            {
              v58 = __nwlog_obj();
              v71 = v79;
              if (os_log_type_enabled(v58, v79))
              {
                v72 = v56->identifier->name;
                if (!v72)
                {
                  v72 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_path";
                v81 = 2082;
                v82 = v72;
                v83 = 2048;
                v84 = v56;
                _os_log_impl(&dword_181A37000, v58, v71, "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_156;
            }

            v65 = __nw_create_backtrace_string();
            v58 = __nwlog_obj();
            v66 = v79;
            v67 = os_log_type_enabled(v58, v79);
            if (!v65)
            {
              if (v67)
              {
                v74 = v56->identifier->name;
                if (!v74)
                {
                  v74 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_path";
                v81 = 2082;
                v82 = v74;
                v83 = 2048;
                v84 = v56;
                _os_log_impl(&dword_181A37000, v58, v66, "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_156;
            }

            if (v67)
            {
              v68 = v56->identifier->name;
              if (!v68)
              {
                v68 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_path";
              v81 = 2082;
              v82 = v68;
              v83 = 2048;
              v84 = v56;
              v85 = 2082;
              v86 = v65;
              _os_log_impl(&dword_181A37000, v58, v66, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v65);
          }

LABEL_157:
          if (v57)
          {
            free(v57);
          }

          v11 = 0;
          if (v75)
          {
            goto LABEL_46;
          }

          goto LABEL_57;
        }

        v63 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_path";
        v38 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v79 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v38, type, &v79))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v39 = __nwlog_obj();
          v64 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_path";
            _os_log_impl(&dword_181A37000, v39, v64, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v79 != OS_LOG_TYPE_INFO)
        {
          v39 = __nwlog_obj();
          v73 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_path";
            _os_log_impl(&dword_181A37000, v39, v73, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v49 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v69 = type[0];
        v70 = os_log_type_enabled(v39, type[0]);
        if (!v49)
        {
          if (v70)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_path";
            _os_log_impl(&dword_181A37000, v39, v69, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v70)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_path";
          v81 = 2082;
          v82 = v49;
          _os_log_impl(&dword_181A37000, v39, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        v38 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v79 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v38, type, &v79))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v39 = __nwlog_obj();
          v42 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_path";
            _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v79 != OS_LOG_TYPE_INFO)
        {
          v39 = __nwlog_obj();
          v62 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_path";
            _os_log_impl(&dword_181A37000, v39, v62, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v49 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v50 = type[0];
        v51 = os_log_type_enabled(v39, type[0]);
        if (!v49)
        {
          if (v51)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_path";
            _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v51)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_path";
          v81 = 2082;
          v82 = v49;
          _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v49);
      if (!v38)
      {
        goto LABEL_45;
      }

      goto LABEL_165;
    }

    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_get_path";
    v38 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v79 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v38, type, &v79))
    {
      goto LABEL_164;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v79 == OS_LOG_TYPE_INFO)
    {
      v46 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v47 = type[0];
      v48 = os_log_type_enabled(v39, type[0]);
      if (v46)
      {
        if (v48)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_path";
          v81 = 2082;
          v82 = v46;
          _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v46);
LABEL_164:
        if (!v38)
        {
          goto LABEL_45;
        }

LABEL_165:
        free(v38);
        goto LABEL_45;
      }

      if (v48)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v61 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v39, v61, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_163:

    goto LABEL_164;
  }

  v33 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_get_path";
  v34 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v79 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v34, type, &v79))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v79 == OS_LOG_TYPE_INFO)
    {
      v43 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v44 = type[0];
      v45 = os_log_type_enabled(v35, type[0]);
      if (v43)
      {
        if (v45)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_path";
          v81 = 2082;
          v82 = v43;
          _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        goto LABEL_130;
      }

      if (v45)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v35, v52, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_130:
  if (v34)
  {
    free(v34);
  }

  v11 = 0;
LABEL_47:

  return v11;
}

void sub_181CE7514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if ((v12 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_path_get_maximum_datagram_size(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
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

    if (v5 >= 0x3C)
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

      v13 = _nw_path_copy_parameters(v2);
      ip_protocol = nw_parameters_get_ip_protocol(v13);
      v15 = v5 + v12;

      if (ip_protocol == 17)
      {
        v16 = -8;
      }

      else
      {
        v16 = -20;
      }

      v4 = v16 + v15;
    }

    goto LABEL_15;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_path_get_maximum_datagram_size";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v19, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v29 = "nw_path_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v29 = "nw_path_get_maximum_datagram_size";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v24)
      {
        *buf = 136446210;
        v29 = "nw_path_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v29 = "nw_path_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v19)
  {
    free(v19);
  }

  v4 = 0;
LABEL_15:

  return v4;
}

uint64_t nw_protocol_default_register_notification(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_default_register_notification";
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
      v14 = "nw_protocol_default_register_notification";
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
          v14 = "nw_protocol_default_register_notification";
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
      v14 = "nw_protocol_default_register_notification";
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
      v14 = "nw_protocol_default_register_notification";
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

  v3 = *(v2 + 144);
  if (!v3)
  {
    return 0;
  }

  return v3();
}

void nw_protocol_implementation_connected(nw_protocol *a1, nw_protocol *a2)
{
  v160 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = __nwlog_obj();
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        v7 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v143[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v7, type, v143))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v8 = __nwlog_obj();
            v9 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v149 = "nw_protocol_implementation_connected";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v143[0] == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v8 = __nwlog_obj();
            v33 = type[0];
            v34 = os_log_type_enabled(v8, type[0]);
            if (backtrace_string)
            {
              if (v34)
              {
                *buf = 136446466;
                v149 = "nw_protocol_implementation_connected";
                v150 = 2082;
                v151 = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v33, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }

            if (v34)
            {
              *buf = 136446210;
              v149 = "nw_protocol_implementation_connected";
              _os_log_impl(&dword_181A37000, v8, v33, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v8 = __nwlog_obj();
            v35 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v149 = "nw_protocol_implementation_connected";
              _os_log_impl(&dword_181A37000, v8, v35, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_75:
          v11 = 0;
          goto LABEL_76;
        }

LABEL_74:
        free(v7);
        goto LABEL_75;
      }

      v5 = *a1[1].flow_id;
    }

    v10 = &v5[1].output_handler;
    v11 = v10;
    v12 = v5[1].handle;
    if (v12)
    {
      if (v12[10])
      {
        if (!*v5[6].flow_id)
        {
          v13 = nw_protocol_instance_copy_path(v10, -1);
          v14 = *v5[6].flow_id;
          *v5[6].flow_id = v13;
        }

        v141 = 0;
        v15 = nw_protocol_implementation_lookup_path_by_protocol(v11, a2, &v141);
        if (v15)
        {
          v16 = v15;
          if (*(v15 + 144) == 1)
          {
            if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v17 = gLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = *(v16 + 16);
                v19 = *(v16 + 136);
                *buf = 136447490;
                v149 = "nw_protocol_implementation_connected";
                v150 = 2082;
                v151 = &v5[7].output_handler_context + 7;
                v152 = 2080;
                v153 = " ";
                v154 = 2048;
                v155 = v141;
                v156 = 2112;
                v157 = v18;
                v158 = 2112;
                v159 = v19;
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx is now established over %@:%@", buf, 0x3Eu);
              }
            }

            *(v16 + 144) = 3;
            callbacks = v5[6].callbacks;
            v21 = v141;
            if (callbacks == v141)
            {
              v5[6].identifier = callbacks;
            }

            v22 = v11;
            v23 = v22;
            v24 = *(*(v5[1].handle + 10) + 216);
            if (v24)
            {
              v24(v22, v21, 3, v5[6].callbacks == v21);
            }

            nw_protocol_implementation_read(v23, a2);
          }
        }

        if (*(v5[1].handle + 16) == 3)
        {
          v25 = *&v5[5].flow_id[8];
          v140[0] = MEMORY[0x1E69E9820];
          v140[1] = 3221225472;
          v140[2] = ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke;
          v140[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
          v140[4] = a2;
          nw_hash_table_apply(v25, v140);
          if (a1->output_handler == a2)
          {
            BYTE2(v5[7].output_handler_context) |= 0x20u;
            v26 = *&v5[5].flow_id[8];
            v138[0] = MEMORY[0x1E69E9820];
            v138[1] = 3221225472;
            v138[2] = ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke_2;
            v138[3] = &unk_1E6A3CDF8;
            v27 = v11;
            v139 = v27;
            nw_hash_table_apply(v26, v138);
            nw_protocol_implementation_read(v27, a1->output_handler);
          }

          goto LABEL_76;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v29 = default_input_handler->handle;
          v30 = a1->default_input_handler;
          if (v29 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_42;
          }

          if (v29 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v30) = 0;
            v31 = 1;
            goto LABEL_45;
          }

          v30 = *default_input_handler[1].flow_id;
          if (v30)
          {
LABEL_42:
            v36 = v30[1].callbacks;
            v31 = 0;
            if (v36)
            {
              v30[1].callbacks = (&v36->add_input_handler + 1);
            }

            LOBYTE(v30) = -1;
          }

          else
          {
            v31 = 1;
          }

LABEL_45:
          *type = default_input_handler;
          v147 = v30;
          if (a2)
          {
            v37 = a2->handle;
            v38 = a2;
            if (v37 != &nw_protocol_ref_counted_handle)
            {
              if (v37 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v38) = 0;
                v39 = 1;
                goto LABEL_53;
              }

              v38 = *a2[1].flow_id;
              if (!v38)
              {
                v39 = 1;
                goto LABEL_53;
              }
            }

            v40 = v38[1].callbacks;
            v39 = 0;
            if (v40)
            {
              v38[1].callbacks = (&v40->add_input_handler + 1);
            }

            LOBYTE(v38) = -1;
LABEL_53:
            *v143 = a2;
            v144 = v38;
            v41 = default_input_handler->callbacks;
            if (v41)
            {
              connected = v41->connected;
              if (connected)
              {
                connected();
LABEL_56:
                if ((v39 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(v143);
                }

LABEL_58:
                if ((v31 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(type);
                }

LABEL_60:
                if (a1->output_handler != a2)
                {
                  goto LABEL_76;
                }

                v43 = BYTE2(v5[7].output_handler_context);
                BYTE2(v5[7].output_handler_context) = v43 | 0x20;
                v44 = v5[1].handle;
                if (*(v44 + 16) != 1 && (v43 & 8) == 0)
                {
                  if ((v43 & 4) == 0)
                  {
                    if (*(v44[10] + 120))
                    {
                      BYTE2(v5[7].output_handler_context) = v43 | 0x24;
                      v45 = *(v44[10] + 120);
                      server_mode = nw_parameters_get_server_mode(v5[2].identifier->name);
                      v45(v11, -1, server_mode);
                      nw_protocol_implementation_read(v11, a1->output_handler);
                      goto LABEL_76;
                    }

                    v58 = __nwlog_obj();
                    *buf = 136446210;
                    v149 = "nw_protocol_implementation_connected";
                    v59 = _os_log_send_and_compose_impl();

                    type[0] = OS_LOG_TYPE_ERROR;
                    v143[0] = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v59, type, v143))
                    {
                      goto LABEL_118;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v60 = __nwlog_obj();
                      v61 = type[0];
                      if (os_log_type_enabled(v60, type[0]))
                      {
                        *buf = 136446210;
                        v149 = "nw_protocol_implementation_connected";
                        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null instance->parent_definition->start", buf, 0xCu);
                      }

LABEL_117:

                      goto LABEL_118;
                    }

                    if (v143[0] != OS_LOG_TYPE_INFO)
                    {
                      v60 = __nwlog_obj();
                      v65 = type[0];
                      if (os_log_type_enabled(v60, type[0]))
                      {
                        *buf = 136446210;
                        v149 = "nw_protocol_implementation_connected";
                        _os_log_impl(&dword_181A37000, v60, v65, "%{public}s called with null instance->parent_definition->start, backtrace limit exceeded", buf, 0xCu);
                      }

                      goto LABEL_117;
                    }

                    v62 = __nw_create_backtrace_string();
                    v60 = __nwlog_obj();
                    v63 = type[0];
                    v64 = os_log_type_enabled(v60, type[0]);
                    if (!v62)
                    {
                      if (v64)
                      {
                        *buf = 136446210;
                        v149 = "nw_protocol_implementation_connected";
                        _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null instance->parent_definition->start, no backtrace", buf, 0xCu);
                      }

                      goto LABEL_117;
                    }

                    if (v64)
                    {
                      *buf = 136446466;
                      v149 = "nw_protocol_implementation_connected";
                      v150 = 2082;
                      v151 = v62;
                      _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null instance->parent_definition->start, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    goto LABEL_107;
                  }

LABEL_76:

                  return;
                }

                BYTE2(v5[7].output_handler_context) = v43 | 0x28;
                v47 = a1->default_input_handler;
                if (v47)
                {
                  v48 = v47->handle;
                  v49 = a1->default_input_handler;
                  if (v48 == &nw_protocol_ref_counted_handle)
                  {
                    goto LABEL_81;
                  }

                  if (v48 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v49) = 0;
                    v50 = 1;
                    goto LABEL_84;
                  }

                  v49 = *v47[1].flow_id;
                  if (v49)
                  {
LABEL_81:
                    v51 = v49[1].callbacks;
                    v50 = 0;
                    if (v51)
                    {
                      v49[1].callbacks = (&v51->add_input_handler + 1);
                    }

                    LOBYTE(v49) = -1;
                  }

                  else
                  {
                    v50 = 1;
                  }

LABEL_84:
                  *type = v47;
                  v147 = v49;
                  v52 = a1->handle;
                  v53 = a1;
                  if (v52 != &nw_protocol_ref_counted_handle)
                  {
                    if (v52 != &nw_protocol_ref_counted_additional_handle)
                    {
                      LOBYTE(v53) = 0;
                      v54 = 1;
                      goto LABEL_91;
                    }

                    v53 = *a1[1].flow_id;
                    if (!v53)
                    {
                      v54 = 1;
                      goto LABEL_91;
                    }
                  }

                  v55 = v53[1].callbacks;
                  v54 = 0;
                  if (v55)
                  {
                    v53[1].callbacks = (&v55->add_input_handler + 1);
                  }

                  LOBYTE(v53) = -1;
LABEL_91:
                  *v143 = a1;
                  v144 = v53;
                  v56 = v47->callbacks;
                  if (v56)
                  {
                    v57 = v56->connected;
                    if (v57)
                    {
                      v57(v47, a1);
LABEL_94:
                      if ((v54 & 1) == 0)
                      {
                        nw::release_if_needed<nw_protocol *>(v143);
                      }

                      if ((v50 & 1) == 0)
                      {
                        nw::release_if_needed<nw_protocol *>(type);
                      }

                      goto LABEL_76;
                    }
                  }

                  v111 = v47;
                  v112 = __nwlog_obj();
                  name = v111->identifier->name;
                  *buf = 136446722;
                  v149 = "__nw_protocol_connected";
                  if (!name)
                  {
                    name = "invalid";
                  }

                  v150 = 2082;
                  v151 = name;
                  v152 = 2048;
                  v114 = v111;
                  v153 = v111;
                  v115 = _os_log_send_and_compose_impl();

                  v145 = OS_LOG_TYPE_ERROR;
                  v142 = 0;
                  if (__nwlog_fault(v115, &v145, &v142))
                  {
                    if (v145 == OS_LOG_TYPE_FAULT)
                    {
                      v116 = __nwlog_obj();
                      v117 = v145;
                      if (os_log_type_enabled(v116, v145))
                      {
                        v118 = v114->identifier->name;
                        if (!v118)
                        {
                          v118 = "invalid";
                        }

                        *buf = 136446722;
                        v149 = "__nw_protocol_connected";
                        v150 = 2082;
                        v151 = v118;
                        v152 = 2048;
                        v153 = v114;
                        _os_log_impl(&dword_181A37000, v116, v117, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
                      }
                    }

                    else if (v142 == 1)
                    {
                      v123 = __nw_create_backtrace_string();
                      v116 = __nwlog_obj();
                      v124 = v145;
                      v125 = os_log_type_enabled(v116, v145);
                      if (v123)
                      {
                        if (v125)
                        {
                          v126 = v114->identifier->name;
                          if (!v126)
                          {
                            v126 = "invalid";
                          }

                          *buf = 136446978;
                          v149 = "__nw_protocol_connected";
                          v150 = 2082;
                          v151 = v126;
                          v152 = 2048;
                          v153 = v114;
                          v154 = 2082;
                          v155 = v123;
                          _os_log_impl(&dword_181A37000, v116, v124, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v123);
                        goto LABEL_274;
                      }

                      if (v125)
                      {
                        v133 = v114->identifier->name;
                        if (!v133)
                        {
                          v133 = "invalid";
                        }

                        *buf = 136446722;
                        v149 = "__nw_protocol_connected";
                        v150 = 2082;
                        v151 = v133;
                        v152 = 2048;
                        v153 = v114;
                        _os_log_impl(&dword_181A37000, v116, v124, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v116 = __nwlog_obj();
                      v130 = v145;
                      if (os_log_type_enabled(v116, v145))
                      {
                        v131 = v114->identifier->name;
                        if (!v131)
                        {
                          v131 = "invalid";
                        }

                        *buf = 136446722;
                        v149 = "__nw_protocol_connected";
                        v150 = 2082;
                        v151 = v131;
                        v152 = 2048;
                        v153 = v114;
                        _os_log_impl(&dword_181A37000, v116, v130, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
                      }
                    }
                  }

LABEL_274:
                  if (v115)
                  {
                    free(v115);
                  }

                  goto LABEL_94;
                }

                v121 = __nwlog_obj();
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                v59 = _os_log_send_and_compose_impl();

                type[0] = OS_LOG_TYPE_ERROR;
                v143[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v59, type, v143))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v60 = __nwlog_obj();
                    v122 = type[0];
                    if (os_log_type_enabled(v60, type[0]))
                    {
                      *buf = 136446210;
                      v149 = "__nw_protocol_connected";
                      _os_log_impl(&dword_181A37000, v60, v122, "%{public}s called with null protocol", buf, 0xCu);
                    }

                    goto LABEL_117;
                  }

                  if (v143[0] != OS_LOG_TYPE_INFO)
                  {
                    v60 = __nwlog_obj();
                    v132 = type[0];
                    if (os_log_type_enabled(v60, type[0]))
                    {
                      *buf = 136446210;
                      v149 = "__nw_protocol_connected";
                      _os_log_impl(&dword_181A37000, v60, v132, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_117;
                  }

                  v62 = __nw_create_backtrace_string();
                  v60 = __nwlog_obj();
                  v128 = type[0];
                  v129 = os_log_type_enabled(v60, type[0]);
                  if (!v62)
                  {
                    if (v129)
                    {
                      *buf = 136446210;
                      v149 = "__nw_protocol_connected";
                      _os_log_impl(&dword_181A37000, v60, v128, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                    }

                    goto LABEL_117;
                  }

                  if (v129)
                  {
                    *buf = 136446466;
                    v149 = "__nw_protocol_connected";
                    v150 = 2082;
                    v151 = v62;
                    _os_log_impl(&dword_181A37000, v60, v128, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

LABEL_107:

                  goto LABEL_108;
                }

LABEL_118:
                if (!v59)
                {
                  goto LABEL_76;
                }

LABEL_119:
                free(v59);
                goto LABEL_76;
              }
            }

            v75 = default_input_handler;
            v76 = __nwlog_obj();
            v77 = v75->identifier->name;
            *buf = 136446722;
            v149 = "__nw_protocol_connected";
            if (!v77)
            {
              v77 = "invalid";
            }

            v150 = 2082;
            v151 = v77;
            v152 = 2048;
            *v135 = v75;
            v153 = v75;
            v137 = _os_log_send_and_compose_impl();

            v145 = OS_LOG_TYPE_ERROR;
            v142 = 0;
            v78 = v137;
            if (!__nwlog_fault(v137, &v145, &v142))
            {
LABEL_244:
              if (v78)
              {
                free(v78);
              }

              goto LABEL_56;
            }

            if (v145 == OS_LOG_TYPE_FAULT)
            {
              v79 = __nwlog_obj();
              v80 = v145;
              if (os_log_type_enabled(v79, v145))
              {
                v81 = *(*v135 + 16);
                if (!v81)
                {
                  v81 = "invalid";
                }

                *buf = 136446722;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v81;
                v152 = 2048;
                v153 = *v135;
                _os_log_impl(&dword_181A37000, v79, v80, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
              }
            }

            else if (v142 == 1)
            {
              v98 = __nw_create_backtrace_string();
              v79 = __nwlog_obj();
              v134 = v145;
              v99 = os_log_type_enabled(v79, v145);
              if (v98)
              {
                if (v99)
                {
                  v100 = *(*v135 + 16);
                  if (!v100)
                  {
                    v100 = "invalid";
                  }

                  *buf = 136446978;
                  v149 = "__nw_protocol_connected";
                  v150 = 2082;
                  v151 = v100;
                  v152 = 2048;
                  v153 = *v135;
                  v154 = 2082;
                  v155 = v98;
                  _os_log_impl(&dword_181A37000, v79, v134, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v98);
                goto LABEL_243;
              }

              if (v99)
              {
                v127 = *(*v135 + 16);
                if (!v127)
                {
                  v127 = "invalid";
                }

                *buf = 136446722;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v127;
                v152 = 2048;
                v153 = *v135;
                _os_log_impl(&dword_181A37000, v79, v134, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v79 = __nwlog_obj();
              v109 = v145;
              if (os_log_type_enabled(v79, v145))
              {
                v110 = *(*v135 + 16);
                if (!v110)
                {
                  v110 = "invalid";
                }

                *buf = 136446722;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v110;
                v152 = 2048;
                v153 = *v135;
                _os_log_impl(&dword_181A37000, v79, v109, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
              }
            }

LABEL_243:
            v78 = v137;
            goto LABEL_244;
          }

          v94 = __nwlog_obj();
          *buf = 136446210;
          v149 = "__nw_protocol_connected";
          v95 = _os_log_send_and_compose_impl();

          v143[0] = OS_LOG_TYPE_ERROR;
          v145 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v95, v143, &v145))
          {
            if (v143[0] == OS_LOG_TYPE_FAULT)
            {
              v96 = __nwlog_obj();
              v97 = v143[0];
              if (os_log_type_enabled(v96, v143[0]))
              {
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null other_protocol", buf, 0xCu);
              }
            }

            else if (v145 == OS_LOG_TYPE_INFO)
            {
              v107 = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              v136 = v143[0];
              v108 = os_log_type_enabled(v96, v143[0]);
              if (v107)
              {
                if (v108)
                {
                  *buf = 136446466;
                  v149 = "__nw_protocol_connected";
                  v150 = 2082;
                  v151 = v107;
                  _os_log_impl(&dword_181A37000, v96, v136, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v107);
                goto LABEL_259;
              }

              if (v108)
              {
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                _os_log_impl(&dword_181A37000, v96, v136, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v96 = __nwlog_obj();
              v120 = v143[0];
              if (os_log_type_enabled(v96, v143[0]))
              {
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                _os_log_impl(&dword_181A37000, v96, v120, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_259:
          if (v95)
          {
            free(v95);
          }

          goto LABEL_58;
        }

        v90 = __nwlog_obj();
        *buf = 136446210;
        v149 = "__nw_protocol_connected";
        v91 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v143[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v91, type, v143))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v92 = __nwlog_obj();
            v93 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v149 = "__nw_protocol_connected";
              _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v143[0] == OS_LOG_TYPE_INFO)
          {
            v104 = __nw_create_backtrace_string();
            v92 = __nwlog_obj();
            v105 = type[0];
            v106 = os_log_type_enabled(v92, type[0]);
            if (v104)
            {
              if (v106)
              {
                *buf = 136446466;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v104;
                _os_log_impl(&dword_181A37000, v92, v105, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v104);
              goto LABEL_249;
            }

            if (v106)
            {
              *buf = 136446210;
              v149 = "__nw_protocol_connected";
              _os_log_impl(&dword_181A37000, v92, v105, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v92 = __nwlog_obj();
            v119 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v149 = "__nw_protocol_connected";
              _os_log_impl(&dword_181A37000, v92, v119, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_249:
        if (v91)
        {
          free(v91);
        }

        goto LABEL_60;
      }

      v73 = __nwlog_obj();
      *buf = 136446210;
      v149 = "nw_protocol_implementation_connected";
      v59 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v143[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v59, type, v143))
      {
        goto LABEL_118;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v71 = __nwlog_obj();
        v74 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v74, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v143[0] == OS_LOG_TYPE_INFO)
      {
        v62 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v88 = type[0];
        v89 = os_log_type_enabled(v71, type[0]);
        if (v62)
        {
          if (v89)
          {
            *buf = 136446466;
            v149 = "nw_protocol_implementation_connected";
            v150 = 2082;
            v151 = v62;
            _os_log_impl(&dword_181A37000, v71, v88, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_108:
          free(v62);
          if (!v59)
          {
            goto LABEL_76;
          }

          goto LABEL_119;
        }

        if (v89)
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v88, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v71 = __nwlog_obj();
        v103 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v103, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v70 = __nwlog_obj();
      *buf = 136446210;
      v149 = "nw_protocol_implementation_connected";
      v59 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v143[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v59, type, v143))
      {
        goto LABEL_118;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v71 = __nwlog_obj();
        v72 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v143[0] == OS_LOG_TYPE_INFO)
      {
        v85 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v86 = type[0];
        v87 = os_log_type_enabled(v71, type[0]);
        if (v85)
        {
          if (v87)
          {
            *buf = 136446466;
            v149 = "nw_protocol_implementation_connected";
            v150 = 2082;
            v151 = v85;
            _os_log_impl(&dword_181A37000, v71, v86, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v85);
          goto LABEL_118;
        }

        if (v87)
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v86, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v71 = __nwlog_obj();
        v102 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v102, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_118;
  }

  v66 = __nwlog_obj();
  *buf = 136446210;
  v149 = "nw_protocol_implementation_connected";
  v67 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v143[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v67, type, v143))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v68 = __nwlog_obj();
      v69 = type[0];
      if (os_log_type_enabled(v68, type[0]))
      {
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v143[0] == OS_LOG_TYPE_INFO)
    {
      v82 = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v83 = type[0];
      v84 = os_log_type_enabled(v68, type[0]);
      if (v82)
      {
        if (v84)
        {
          *buf = 136446466;
          v149 = "nw_protocol_implementation_connected";
          v150 = 2082;
          v151 = v82;
          _os_log_impl(&dword_181A37000, v68, v83, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
        goto LABEL_212;
      }

      if (v84)
      {
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        _os_log_impl(&dword_181A37000, v68, v83, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v68 = __nwlog_obj();
      v101 = type[0];
      if (os_log_type_enabled(v68, type[0]))
      {
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        _os_log_impl(&dword_181A37000, v68, v101, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_212:
  if (v67)
  {
    free(v67);
  }
}

void sub_181CE9780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if ((v35 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a30);
  }

  if ((v34 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a33);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_quic_connection_get_datagram_variant_flow_id_enabled(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    datagram_variant_flow_id_enabled = _nw_quic_connection_get_datagram_variant_flow_id_enabled(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
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
        v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
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
            v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
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
        v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
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

  datagram_variant_flow_id_enabled = 0;
LABEL_3:

  return datagram_variant_flow_id_enabled;
}

uint64_t _nw_quic_connection_get_datagram_variant_flow_id_enabled(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 5) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_disable_ecn(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    disable_ecn = _nw_quic_connection_get_disable_ecn(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_disable_ecn";
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
        v14 = "nw_quic_connection_get_disable_ecn";
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
            v14 = "nw_quic_connection_get_disable_ecn";
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
        v14 = "nw_quic_connection_get_disable_ecn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn";
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

  disable_ecn = 0;
LABEL_3:

  return disable_ecn;
}

_OWORD *sub_181CE9D90(uint64_t a1)
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
  v58 = qword_1ED411A88;
  *(v1 + qword_1ED411A88) = 0;
  v14 = v1 + *(*v1 + 128);
  *v14 = 256;
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
  v59 = *(*v2 + 184);
  *(v2 + v59) = 0;
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
  LOBYTE(v23) = v23[1];
  swift_beginAccess();
  *v14 = v24;
  v14[1] = v23;
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

  *(v2 + v58) = *(a1 + qword_1ED411A88);
  v40 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v57;
  swift_beginAccess();
  *(v2 + v41) = v40;
  v42 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v59;
  swift_beginAccess();
  *(v2 + v43) = v42;
  return v2;
}

uint64_t _nw_quic_connection_get_use_swift_tls(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 12) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __nw_sec_protocol_options_iterate_application_protocols_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v8 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    v10 = (*(v8 + 16))(v8, string_ptr);
LABEL_8:
    v7 = v10;
    goto LABEL_9;
  }

  if (object_getClass(v4) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v4) == 2)
  {
    xpc_array_get_string(v4, 0);
    uint64 = xpc_array_get_uint64(v4, 1uLL);
    v6 = *(a1 + 40);
    if (!v6 || uint64 == v6)
    {
      v10 = (*(*(a1 + 32) + 16))();
      goto LABEL_8;
    }
  }

  v7 = 1;
LABEL_9:

  return v7;
}

void nw_quic_access_0rtt_state_on_queue(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
    }

    v5 = nw_protocol_copy_quic_connection_definition_quic_definition;
    if (v5)
    {
      cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v5);
      if (cached_content_for_protocol)
      {
        (*(v4 + 2))(v4, *(cached_content_for_protocol + 8), *(cached_content_for_protocol + 16));
      }

      else
      {
        (*(v4 + 2))(v4, 0, 0);
      }

LABEL_8:

      goto LABEL_9;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_access_0rtt_state_on_queue";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
LABEL_42:
      if (v13)
      {
        free(v13);
      }

      goto LABEL_8;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v16 = "%{public}s called with null definition";
LABEL_40:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_0rtt_state_on_queue";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (!v20)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v16 = "%{public}s called with null definition, no backtrace";
        goto LABEL_40;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v16 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_quic_access_0rtt_state_on_queue";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v8, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v11 = "%{public}s called with null association";
LABEL_34:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        v17 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_0rtt_state_on_queue";
            v25 = 2082;
            v26 = v17;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          goto LABEL_36;
        }

        if (!v18)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v11 = "%{public}s called with null association, no backtrace";
        goto LABEL_34;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v11 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:
  }

LABEL_36:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

uint64_t nw_protocol_implementation_finalize_pending_frames(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1[26])
  {
    v7 = 1;
    goto LABEL_17;
  }

  if ((*(v1 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v44 = "nw_protocol_implementation_finalize_pending_frames";
      v45 = 2082;
      v46 = v2 + 415;
      v47 = 2080;
      v48 = " ";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing outbound frames (batched)", buf, 0x20u);
    }
  }

  v3 = *(v2 - 8);
  if (!v3)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v44 = "__nw_protocol_finalize_output_frames";
    v30 = _os_log_send_and_compose_impl();

    v40[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v40, &type))
    {
      if (v40[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v40[0];
        if (os_log_type_enabled(v31, v40[0]))
        {
          *buf = 136446210;
          v44 = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v34 = v40[0];
        v35 = os_log_type_enabled(v31, v40[0]);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v44 = "__nw_protocol_finalize_output_frames";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_72;
        }

        if (v35)
        {
          *buf = 136446210;
          v44 = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v36 = v40[0];
        if (os_log_type_enabled(v31, v40[0]))
        {
          *buf = 136446210;
          v44 = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v31, v36, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_72:
    if (v30)
    {
      free(v30);
    }

    v7 = 0;
    goto LABEL_17;
  }

  v4 = *(v3 + 5);
  v5 = *(v2 - 8);
  if (v4 != &nw_protocol_ref_counted_handle)
  {
    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v5) = 0;
      v6 = 1;
      goto LABEL_13;
    }

    v5 = *(v3 + 8);
    if (!v5)
    {
      v6 = 1;
      goto LABEL_13;
    }
  }

  v8 = *(v5 + 88);
  v6 = 0;
  if (v8)
  {
    *(v5 + 88) = v8 + 1;
  }

  LOBYTE(v5) = -1;
LABEL_13:
  *v40 = v3;
  v41 = v5;
  v9 = *(v3 + 3);
  if (v9)
  {
    v10 = *(v9 + 96);
    if (v10)
    {
      v7 = v10();
      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v13 = v3;
  v14 = __nwlog_obj();
  v15 = *(v13 + 2);
  *buf = 136446722;
  v44 = "__nw_protocol_finalize_output_frames";
  if (!v15)
  {
    v15 = "invalid";
  }

  v45 = 2082;
  v46 = v15;
  v47 = 2048;
  v16 = v13;
  v48 = v13;
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v17, &type, &v39))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      v20 = *(v16 + 2);
      if (!v20)
      {
        v20 = "invalid";
      }

      *buf = 136446722;
      v44 = "__nw_protocol_finalize_output_frames";
      v45 = 2082;
      v46 = v20;
      v47 = 2048;
      v48 = v16;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
    }

LABEL_51:

    goto LABEL_52;
  }

  if (v39 != 1)
  {
    v18 = __nwlog_obj();
    v26 = type;
    if (os_log_type_enabled(v18, type))
    {
      v27 = *(v16 + 2);
      if (!v27)
      {
        v27 = "invalid";
      }

      *buf = 136446722;
      v44 = "__nw_protocol_finalize_output_frames";
      v45 = 2082;
      v46 = v27;
      v47 = 2048;
      v48 = v16;
      _os_log_impl(&dword_181A37000, v18, v26, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_51;
  }

  v22 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v23 = type;
  v24 = os_log_type_enabled(v18, type);
  if (!v22)
  {
    if (v24)
    {
      if (*(v16 + 2))
      {
        v28 = *(v16 + 2);
      }

      else
      {
        v28 = "invalid";
      }

      *buf = 136446722;
      v44 = "__nw_protocol_finalize_output_frames";
      v45 = 2082;
      v46 = v28;
      v47 = 2048;
      v48 = v16;
      _os_log_impl(&dword_181A37000, v18, v23, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
    }

    goto LABEL_51;
  }

  if (v24)
  {
    if (*(v16 + 2))
    {
      v25 = *(v16 + 2);
    }

    else
    {
      v25 = "invalid";
    }

    *buf = 136446978;
    v44 = "__nw_protocol_finalize_output_frames";
    v45 = 2082;
    v46 = v25;
    v47 = 2048;
    v48 = v16;
    v49 = 2082;
    v50 = v22;
    _os_log_impl(&dword_181A37000, v18, v23, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v22);
LABEL_52:
  if (v17)
  {
    free(v17);
  }

  v7 = 0;
  if ((v6 & 1) == 0)
  {
LABEL_16:
    nw::release_if_needed<nw_protocol *>(v40);
  }

LABEL_17:
  v11 = *(v2 + 37);
  if (v11)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __nw_protocol_implementation_finalize_pending_frames_block_invoke;
    v37[3] = &unk_1E6A3CDF8;
    v38 = v2;
    nw_hash_table_apply(v11, v37);
  }

  return v7;
}

void sub_181CEB118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if ((v13 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void nw_protocol_udp_connected(nw_protocol *a1, nw_protocol *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_protocol_udp_connected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v2, &type, &v105))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v108 = "nw_protocol_udp_connected";
      v40 = "%{public}s called with null protocol";
    }

    else if (v105 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v43 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v43)
        {
          *buf = 136446466;
          v108 = "nw_protocol_udp_connected";
          v109 = 2082;
          v110 = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_183;
        }

        return;
      }

      if (!v43)
      {
LABEL_102:
        if (!v2)
        {
          return;
        }

        goto LABEL_183;
      }

      *buf = 136446210;
      v108 = "nw_protocol_udp_connected";
      v40 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v108 = "nw_protocol_udp_connected";
      v40 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
    goto LABEL_102;
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
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v108 = "nw_protocol_udp_connected";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v105 = 0;
      if (!__nwlog_fault(v8, &type, &v105))
      {
        goto LABEL_41;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v108 = "nw_protocol_udp_connected";
        v11 = "%{public}s called with null udp";
        goto LABEL_39;
      }

      if (v105 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v108 = "nw_protocol_udp_connected";
        v11 = "%{public}s called with null udp, backtrace limit exceeded";
        goto LABEL_39;
      }

      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      v20 = os_log_type_enabled(gLogObj, type);
      if (v17)
      {
        if (v20)
        {
          *buf = 136446466;
          v108 = "nw_protocol_udp_connected";
          v109 = 2082;
          v110 = v17;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v17);
        if (!v8)
        {
          goto LABEL_172;
        }

LABEL_42:
        free(v8);
        goto LABEL_172;
      }

      if (v20)
      {
        *buf = 136446210;
        v108 = "nw_protocol_udp_connected";
        v11 = "%{public}s called with null udp, no backtrace";
        v21 = v18;
        v22 = v19;
        goto LABEL_40;
      }

LABEL_41:
      if (!v8)
      {
        goto LABEL_172;
      }

      goto LABEL_42;
    }

    v7 = *a1[1].flow_id;
  }

  if (gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v108 = "nw_protocol_udp_connected";
      v109 = 2082;
      v110 = v7 + 3;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Got a connected event from the lower layer", buf, 0x16u);
    }
  }

  if (!v2->default_input_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v108 = "nw_protocol_udp_connected";
      v109 = 2082;
      v110 = v7 + 3;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler found, ignoring connected call", buf, 0x16u);
    }

    goto LABEL_172;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    if (v7[1].default_input_handler)
    {
      goto LABEL_136;
    }
  }

  else if (v7[1].default_input_handler)
  {
    goto LABEL_136;
  }

  default_input_handler = v2->default_input_handler;
  if (!default_input_handler)
  {
    __nwlog_obj();
    *buf = 136446210;
    v108 = "__nw_protocol_get_path";
    v57 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v57, &type, &v105))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v108 = "__nw_protocol_get_path";
      v60 = "%{public}s called with null protocol";
    }

    else if (v105 == 1)
    {
      v61 = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = type;
      v62 = os_log_type_enabled(v58, type);
      if (v61)
      {
        if (v62)
        {
          *buf = 136446466;
          v108 = "__nw_protocol_get_path";
          v109 = 2082;
          v110 = v61;
          _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v61);
        goto LABEL_132;
      }

      if (!v62)
      {
LABEL_132:
        if (v57)
        {
          free(v57);
        }

        goto LABEL_134;
      }

      *buf = 136446210;
      v108 = "__nw_protocol_get_path";
      v60 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v108 = "__nw_protocol_get_path";
      v60 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
    goto LABEL_132;
  }

  v13 = default_input_handler->handle;
  v14 = v2->default_input_handler;
  if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *default_input_handler[1].flow_id) != 0)
  {
    v23 = v14[1].callbacks;
    v15 = 0;
    if (v23)
    {
      v14[1].callbacks = (&v23->add_input_handler + 1);
    }
  }

  else
  {
    v15 = 1;
  }

  v24 = default_input_handler->callbacks;
  if (v24)
  {
    get_path = v24->get_path;
    if (get_path)
    {
      v26 = get_path(default_input_handler);
      if (v15)
      {
        goto LABEL_62;
      }

      goto LABEL_51;
    }
  }

  __nwlog_obj();
  name = default_input_handler->identifier->name;
  *buf = 136446722;
  v108 = "__nw_protocol_get_path";
  if (!name)
  {
    name = "invalid";
  }

  v109 = 2082;
  v110 = name;
  v111 = 2048;
  v112 = default_input_handler;
  type = OS_LOG_TYPE_ERROR;
  v105 = 0;
  v45 = _os_log_send_and_compose_impl();
  if (__nwlog_fault(v45, &type, &v105))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_110;
      }

      v48 = default_input_handler->identifier->name;
      if (!v48)
      {
        v48 = "invalid";
      }

      *buf = 136446722;
      v108 = "__nw_protocol_get_path";
      v109 = 2082;
      v110 = v48;
      v111 = 2048;
      v112 = default_input_handler;
      v49 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
LABEL_108:
      v55 = v46;
LABEL_109:
      _os_log_impl(&dword_181A37000, v55, v47, v49, buf, 0x20u);
      goto LABEL_110;
    }

    if (v105 != 1)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_110;
      }

      v54 = default_input_handler->identifier->name;
      if (!v54)
      {
        v54 = "invalid";
      }

      *buf = 136446722;
      v108 = "__nw_protocol_get_path";
      v109 = 2082;
      v110 = v54;
      v111 = 2048;
      v112 = default_input_handler;
      v49 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
      goto LABEL_108;
    }

    v50 = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v47 = type;
    log = v51;
    v52 = os_log_type_enabled(v51, type);
    if (v50)
    {
      if (v52)
      {
        v53 = default_input_handler->identifier->name;
        if (!v53)
        {
          v53 = "invalid";
        }

        *buf = 136446978;
        v108 = "__nw_protocol_get_path";
        v109 = 2082;
        v110 = v53;
        v111 = 2048;
        v112 = default_input_handler;
        v113 = 2082;
        v114 = v50;
        _os_log_impl(&dword_181A37000, log, v47, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v50);
    }

    else if (v52)
    {
      v56 = default_input_handler->identifier->name;
      if (!v56)
      {
        v56 = "invalid";
      }

      *buf = 136446722;
      v108 = "__nw_protocol_get_path";
      v109 = 2082;
      v110 = v56;
      v111 = 2048;
      v112 = default_input_handler;
      v49 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
      v55 = log;
      goto LABEL_109;
    }
  }

LABEL_110:
  if (v45)
  {
    free(v45);
  }

  v26 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_51:
    v27 = default_input_handler->handle;
    if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v28 = default_input_handler[1].callbacks;
      if (v28)
      {
        v29 = (v28 - 1);
        default_input_handler[1].callbacks = v29;
        if (!v29)
        {
          v30 = v26;
          v31 = *default_input_handler[1].flow_id;
          if (v31)
          {
            *default_input_handler[1].flow_id = 0;
            v31[2](v31);
            _Block_release(v31);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v32 = *default_input_handler[1].flow_id;
            if (v32)
            {
              _Block_release(v32);
            }
          }

          free(default_input_handler);
          v26 = v30;
        }
      }
    }
  }

LABEL_62:
  if (v26)
  {
    v33 = v26;
    v34 = os_retain(v26);
    v7[1].default_input_handler = v34;
    LODWORD(v7[2].default_input_handler) = nw_path_get_effective_traffic_class(v34);
    HIDWORD(v7[2].default_input_handler) = nw_path_get_maximum_datagram_size(v7[1].default_input_handler);
    nw_protocol_udp_update_flow_registration(&v7[1].output_handler);
    v35 = v33;
    csum_flags = _nw_path_get_csum_flags(v35);

    output_handler_context_high = HIWORD(v7[2].output_handler_context);
    if ((output_handler_context_high & 4) != 0 && (csum_flags & 4) != 0 || (output_handler_context_high & 4) == 0 && (csum_flags & 0x40) != 0)
    {
      HIWORD(v7[2].output_handler_context) = output_handler_context_high & 0xFEF7 | 0x100;
    }

    goto LABEL_136;
  }

LABEL_134:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v63 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v108 = "nw_protocol_udp_connected";
    v109 = 2082;
    v110 = v7 + 3;
    _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Unable to get path from input protocol, cannot publish UDP stats", buf, 0x16u);
  }

LABEL_136:
  v8 = v2->default_input_handler;
  if (!v8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v108 = "__nw_protocol_connected";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v8, &type, &v105))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v108 = "__nw_protocol_connected";
      v11 = "%{public}s called with null protocol";
    }

    else if (v105 == 1)
    {
      v101 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v102 = os_log_type_enabled(v9, type);
      if (v101)
      {
        if (v102)
        {
          *buf = 136446466;
          v108 = "__nw_protocol_connected";
          v109 = 2082;
          v110 = v101;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v101);
        if (v8)
        {
          goto LABEL_42;
        }

        goto LABEL_172;
      }

      if (!v102)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v108 = "__nw_protocol_connected";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v108 = "__nw_protocol_connected";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    v21 = v9;
    v22 = v10;
LABEL_40:
    _os_log_impl(&dword_181A37000, v21, v22, v11, buf, 0xCu);
    goto LABEL_41;
  }

  v64 = *(v8 + 40);
  v65 = v2->default_input_handler;
  if (v64 == &nw_protocol_ref_counted_handle || v64 == &nw_protocol_ref_counted_additional_handle && (v65 = *(v8 + 64)) != 0)
  {
    v67 = v65[1].callbacks;
    v66 = 0;
    if (v67)
    {
      v65[1].callbacks = (&v67->add_input_handler + 1);
    }
  }

  else
  {
    v66 = 1;
  }

  v68 = v2->handle;
  v69 = v2;
  if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v69 = *v2[1].flow_id) != 0)
  {
    v72 = v69[1].callbacks;
    if (v72)
    {
      v70 = 0;
      v69[1].callbacks = (&v72->add_input_handler + 1);
      v71 = *(v8 + 24);
      if (!v71)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v70 = 0;
      v71 = *(v8 + 24);
      if (!v71)
      {
        goto LABEL_190;
      }
    }
  }

  else
  {
    v70 = 1;
    v71 = *(v8 + 24);
    if (!v71)
    {
      goto LABEL_190;
    }
  }

  v73 = *(v71 + 40);
  if (v73)
  {
    v73(v8, v2);
    goto LABEL_154;
  }

LABEL_190:
  __nwlog_obj();
  v90 = *(v8 + 16);
  *buf = 136446722;
  v108 = "__nw_protocol_connected";
  if (!v90)
  {
    v90 = "invalid";
  }

  v109 = 2082;
  v110 = v90;
  v111 = 2048;
  v112 = v8;
  v91 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v105 = 0;
  if (!__nwlog_fault(v91, &type, &v105))
  {
    goto LABEL_214;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v92 = __nwlog_obj();
    v93 = type;
    if (!os_log_type_enabled(v92, type))
    {
      goto LABEL_214;
    }

    v94 = *(v8 + 16);
    if (!v94)
    {
      v94 = "invalid";
    }

    *buf = 136446722;
    v108 = "__nw_protocol_connected";
    v109 = 2082;
    v110 = v94;
    v111 = 2048;
    v112 = v8;
    v95 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
    goto LABEL_213;
  }

  if (v105 != 1)
  {
    v92 = __nwlog_obj();
    v93 = type;
    if (!os_log_type_enabled(v92, type))
    {
      goto LABEL_214;
    }

    v99 = *(v8 + 16);
    if (!v99)
    {
      v99 = "invalid";
    }

    *buf = 136446722;
    v108 = "__nw_protocol_connected";
    v109 = 2082;
    v110 = v99;
    v111 = 2048;
    v112 = v8;
    v95 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    goto LABEL_213;
  }

  loga = v66;
  v96 = __nw_create_backtrace_string();
  v92 = __nwlog_obj();
  v93 = type;
  v97 = os_log_type_enabled(v92, type);
  if (v96)
  {
    if (v97)
    {
      v98 = *(v8 + 16);
      if (!v98)
      {
        v98 = "invalid";
      }

      *buf = 136446978;
      v108 = "__nw_protocol_connected";
      v109 = 2082;
      v110 = v98;
      v111 = 2048;
      v112 = v8;
      v113 = 2082;
      v114 = v96;
      _os_log_impl(&dword_181A37000, v92, v93, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v96);
    v66 = loga;
    goto LABEL_214;
  }

  v66 = loga;
  if (v97)
  {
    v100 = *(v8 + 16);
    if (!v100)
    {
      v100 = "invalid";
    }

    *buf = 136446722;
    v108 = "__nw_protocol_connected";
    v109 = 2082;
    v110 = v100;
    v111 = 2048;
    v112 = v8;
    v95 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
LABEL_213:
    _os_log_impl(&dword_181A37000, v92, v93, v95, buf, 0x20u);
  }

LABEL_214:
  if (v91)
  {
    free(v91);
  }

LABEL_154:
  if ((v70 & 1) == 0)
  {
    v74 = v2->handle;
    v75 = v2;
    if (v74 == &nw_protocol_ref_counted_handle || v74 == &nw_protocol_ref_counted_additional_handle && (v75 = *v2[1].flow_id) != 0)
    {
      v76 = v75[1].callbacks;
      if (v76)
      {
        v77 = (v76 - 1);
        v75[1].callbacks = v77;
        if (!v77)
        {
          v78 = *v75[1].flow_id;
          if (v78)
          {
            *v75[1].flow_id = 0;
            v78[2](v78);
            _Block_release(v78);
          }

          if (v75[1].flow_id[8])
          {
            v79 = *v75[1].flow_id;
            if (v79)
            {
              _Block_release(v79);
            }
          }

          free(v75);
        }
      }
    }
  }

  if ((v66 & 1) == 0)
  {
    v80 = *(v8 + 40);
    if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v8 + 64)) != 0)
    {
      v81 = *(v8 + 88);
      if (v81)
      {
        v82 = v81 - 1;
        *(v8 + 88) = v82;
        if (!v82)
        {
          v88 = *(v8 + 64);
          if (v88)
          {
            *(v8 + 64) = 0;
            v88[2](v88);
            _Block_release(v88);
          }

          if (*(v8 + 72))
          {
            v89 = *(v8 + 64);
            if (v89)
            {
              _Block_release(v89);
            }
          }

          goto LABEL_42;
        }
      }
    }
  }

LABEL_172:
  if ((v5 & 1) == 0)
  {
    v83 = v2->handle;
    if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v84 = v2[1].callbacks;
      if (v84)
      {
        v85 = (v84 - 1);
        v2[1].callbacks = v85;
        if (!v85)
        {
          v86 = *v2[1].flow_id;
          if (v86)
          {
            *v2[1].flow_id = 0;
            v86[2](v86);
            _Block_release(v86);
          }

          if (v2[1].flow_id[8])
          {
            v87 = *v2[1].flow_id;
            if (v87)
            {
              _Block_release(v87);
            }
          }

LABEL_183:
          free(v2);
        }
      }
    }
  }
}

uint64_t ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v6 = *(extra + 52);
  if ((v6 & 0xC) != 4)
  {
    return 1;
  }

  if (*(*(*(*(a1 + 32) + 8) + 80) + 120))
  {
    v7 = extra;
    *(extra + 52) = v6 | 8;
    v8 = *(a1 + 32);
    v9 = *(*(v8[1] + 10) + 120);
    v10 = v8;
    if (nw_protocol_definition_get_message_is_stream(v8[1]))
    {
      if (*(v10 - 6) == object)
      {
        object = -2;
      }
    }

    v9(v10, object, *(v7 + 52) & 1);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v23 = "nw_protocol_implementation_connected_block_invoke_2";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_implementation_connected_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null instance->parent_definition->start", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_protocol_implementation_connected_block_invoke";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null instance->parent_definition->start, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v13)
        {
          return 0;
        }

        goto LABEL_14;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_protocol_implementation_connected_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null instance->parent_definition->start, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_implementation_connected_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null instance->parent_definition->start, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v13)
  {
LABEL_14:
    free(v13);
  }

  return 0;
}

uint64_t nw_quic_connection_get_datagram_quarter_stream_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    datagram_quarter_stream_id = _nw_quic_connection_get_datagram_quarter_stream_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
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
        v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
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
            v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
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
        v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
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

  datagram_quarter_stream_id = 0;
LABEL_3:

  return datagram_quarter_stream_id;
}

uint64_t _nw_quic_connection_get_datagram_quarter_stream_id(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 6) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_phone_call_relay_optimization(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_phone_call_relay_optimization(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_phone_call_relay_optimization";
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
        v14 = "nw_quic_connection_get_phone_call_relay_optimization";
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
            v14 = "nw_quic_connection_get_phone_call_relay_optimization";
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
        v14 = "nw_quic_connection_get_phone_call_relay_optimization";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_phone_call_relay_optimization";
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

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t _nw_quic_connection_get_disable_ecn_echo(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 8) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_enable_l4s(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    enable_l4s = _nw_quic_connection_get_enable_l4s(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_enable_l4s";
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
        v14 = "nw_quic_connection_get_enable_l4s";
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
            v14 = "nw_quic_connection_get_enable_l4s";
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
        v14 = "nw_quic_connection_get_enable_l4s";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_enable_l4s";
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

  enable_l4s = 0;
LABEL_3:

  return enable_l4s;
}

uint64_t _nw_quic_connection_get_enable_l4s_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (v2 && (v3 = *(*v2 + 128), v4 = v2, swift_beginAccess(), v5 = *(v4 + v3), , , v5) && (v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S), , v6 != 2))
  {
    return v6 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t nw_quic_connection_get_force_version_negotiation(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    force_version_negotiation = _nw_quic_connection_get_force_version_negotiation(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_force_version_negotiation";
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
        v14 = "nw_quic_connection_get_force_version_negotiation";
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
            v14 = "nw_quic_connection_get_force_version_negotiation";
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
        v14 = "nw_quic_connection_get_force_version_negotiation";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_force_version_negotiation";
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

  force_version_negotiation = 0;
LABEL_3:

  return force_version_negotiation;
}

uint64_t _nw_quic_connection_get_force_version_negotiation(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 4) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_instance_add_new_flow(void *a1, uint64_t a2, int a3, void *a4, void *a5, void *a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_protocol_instance_add_new_flow";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v43, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v53 = "nw_protocol_instance_add_new_flow";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v44, type);
        if (backtrace_string)
        {
          if (v48)
          {
            *buf = 136446466;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_80;
        }

        if (v48)
        {
          *buf = 136446210;
          v53 = "nw_protocol_instance_add_new_flow";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v53 = "nw_protocol_instance_add_new_flow";
          _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_80:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_20;
  }

  v15 = *(v11 + 15);
  if (v15)
  {
    v16 = v15;
    v17 = v16;
    if ((v16[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v16[1]);
    }
  }

  if (nw_protocol_definition_get_variant(*(v11 + 1)) == 3)
  {
    v18 = _nw_parameters_copy(*(v11 + 6));
    v19 = v18;
    if (v18)
    {
      _nw_parameters_set_server_mode(v18, a2);
      if (v13)
      {
        v13[2](v13, v19);
      }

      if (a3)
      {
        v20 = 3;
      }

      else
      {
        v20 = 1;
      }

      v11[412] = v20 | v11[412] & 0xFC;
      *(v11 + 31) = 0;
      objc_storeStrong(v11 + 32, a4);
      if (v14)
      {
        v21 = nw_connection_create_from_protocol_on_nw_queue(*(v11 + 5), v19, (v11 - 96));
        if (v21)
        {
          (*(v14 + 2))(v14, *(v11 + 31), v21);

LABEL_33:
          v11[412] &= 0xFCu;
          v30 = *(v11 + 32);
          *(v11 + 32) = 0;

          v23 = *(v11 + 31);
LABEL_59:

          goto LABEL_60;
        }

        if ((v11[413] & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = v11 + 415;
            v56 = 2080;
            v57 = " ";
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snw_connection_create_from_protocol_on_nw_queue failed", buf, 0x20u);
          }
        }
      }

      else
      {
        v28 = *(v11 + 3);
        if (v28)
        {
          if (*v28)
          {
            v29 = **v28;
            if (v29)
            {
              if (v29())
              {
                goto LABEL_33;
              }
            }
          }

          if ((v11[413] & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v53 = "nw_protocol_instance_add_new_flow";
              v54 = 2082;
              v55 = v11 + 415;
              v56 = 2080;
              v57 = " ";
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sListener rejected new flow", buf, 0x20u);
            }
          }
        }

        else if ((v11[413] & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = v11 + 415;
            v56 = 2080;
            v57 = " ";
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo listener registered, cannot accept new flow", buf, 0x20u);
          }
        }
      }

      v11[412] &= 0xFCu;
      v39 = *(v11 + 32);
      *(v11 + 32) = 0;

LABEL_58:
      v23 = 0;
      goto LABEL_59;
    }

    if (v11[413] < 0)
    {
      goto LABEL_58;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *buf = 136446722;
    v53 = "nw_protocol_instance_add_new_flow";
    v54 = 2082;
    v55 = v11 + 415;
    v56 = 2080;
    v57 = " ";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v25, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446722;
          v53 = "nw_protocol_instance_add_new_flow";
          v54 = 2082;
          v55 = v11 + 415;
          v56 = 2080;
          v57 = " ";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow", buf, 0x20u);
        }
      }

      else if (v50 == 1)
      {
        v31 = __nw_create_backtrace_string();
        if (v31)
        {
          v32 = v31;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = type;
          if (os_log_type_enabled(v33, type))
          {
            *buf = 136446978;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = v11 + 415;
            v56 = 2080;
            v57 = " ";
            v58 = 2082;
            v59 = v32;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v32);
          if (!v25)
          {
            goto LABEL_58;
          }

          goto LABEL_28;
        }

        v26 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446722;
          v53 = "nw_protocol_instance_add_new_flow";
          v54 = 2082;
          v55 = v11 + 415;
          v56 = 2080;
          v57 = " ";
          _os_log_impl(&dword_181A37000, v26, v41, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446722;
          v53 = "nw_protocol_instance_add_new_flow";
          v54 = 2082;
          v55 = v11 + 415;
          v56 = 2080;
          v57 = " ";
          _os_log_impl(&dword_181A37000, v26, v36, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v25)
    {
      goto LABEL_58;
    }

LABEL_28:
    free(v25);
    goto LABEL_58;
  }

  if ((v11[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v53 = "nw_protocol_instance_add_new_flow";
      v54 = 2082;
      v55 = v11 + 415;
      v56 = 2080;
      v57 = " ";
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot add new flows to a non-multiplexing protocol", buf, 0x20u);
    }
  }

LABEL_20:
  v23 = 0;
LABEL_60:

  return v23;
}

uint64_t nw_quic_connection_get_use_swift_tls(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    use_swift_tls = _nw_quic_connection_get_use_swift_tls(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_use_swift_tls";
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
        v14 = "nw_quic_connection_get_use_swift_tls";
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
            v14 = "nw_quic_connection_get_use_swift_tls";
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
        v14 = "nw_quic_connection_get_use_swift_tls";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_use_swift_tls";
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

  use_swift_tls = 0;
LABEL_3:

  return use_swift_tls;
}

uint64_t nw_quic_connection_get_tls_state(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_tls_state(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_tls_state";
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
        v14 = "nw_quic_connection_get_tls_state";
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
            v14 = "nw_quic_connection_get_tls_state";
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
        v14 = "nw_quic_connection_get_tls_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_tls_state";
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

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_quic_connection_get_idle_timeout(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    idle_timeout = _nw_quic_connection_get_idle_timeout(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_idle_timeout";
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
        v14 = "nw_quic_connection_get_idle_timeout";
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
            v14 = "nw_quic_connection_get_idle_timeout";
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
        v14 = "nw_quic_connection_get_idle_timeout";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_idle_timeout";
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

  idle_timeout = 0;
LABEL_3:

  return idle_timeout;
}

uint64_t nw_quic_connection_get_max_udp_payload_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    max_udp_payload_size = _nw_quic_connection_get_max_udp_payload_size(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_max_udp_payload_size";
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
        v14 = "nw_quic_connection_get_max_udp_payload_size";
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
            v14 = "nw_quic_connection_get_max_udp_payload_size";
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
        v14 = "nw_quic_connection_get_max_udp_payload_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_max_udp_payload_size";
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

  max_udp_payload_size = 0;
LABEL_3:

  return max_udp_payload_size;
}

uint64_t nw_quic_connection_get_max_datagram_frame_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    max_datagram_frame_size = _nw_quic_connection_get_max_datagram_frame_size(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_max_datagram_frame_size";
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
        v14 = "nw_quic_connection_get_max_datagram_frame_size";
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
            v14 = "nw_quic_connection_get_max_datagram_frame_size";
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
        v14 = "nw_quic_connection_get_max_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_max_datagram_frame_size";
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

  max_datagram_frame_size = 0;
LABEL_3:

  return max_datagram_frame_size;
}

uint64_t _nw_quic_connection_get_initial_max_streams_bidirectional(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 48);

  return v6;
}

uint64_t nw_quic_connection_get_initial_max_streams_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_streams_unidirectional = _nw_quic_connection_get_initial_max_streams_unidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_get_initial_max_streams_unidirectional";
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
            v14 = "nw_quic_connection_get_initial_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_get_initial_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_streams_unidirectional";
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

  initial_max_streams_unidirectional = 0;
LABEL_3:

  return initial_max_streams_unidirectional;
}

void *nw_connection_create_from_protocol_on_nw_queue(void *a1, void *a2, nw_protocol *a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  nw_allow_use_of_dispatch_internal();
  v116 = v5;
  if (!v5)
  {
    v82 = __nwlog_obj();
    *buf = 136446210;
    v120 = "nw_connection_create_from_protocol_on_nw_queue";
    v83 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (!__nwlog_fault(v83, &type, &v117))
    {
      goto LABEL_197;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v84, type))
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v117 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v89 = type;
      v90 = os_log_type_enabled(v84, type);
      if (backtrace_string)
      {
        if (v90)
        {
          *buf = 136446466;
          v120 = "nw_connection_create_from_protocol_on_nw_queue";
          v121 = 2082;
          *v122 = backtrace_string;
          _os_log_impl(&dword_181A37000, v84, v89, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v83)
        {
          goto LABEL_199;
        }

        goto LABEL_198;
      }

      if (v90)
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v84, v89, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v84 = __nwlog_obj();
      v100 = type;
      if (os_log_type_enabled(v84, type))
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v84, v100, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_196;
  }

  if (!v6)
  {
    v86 = __nwlog_obj();
    *buf = 136446210;
    v120 = "nw_connection_create_from_protocol_on_nw_queue";
    v83 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (!__nwlog_fault(v83, &type, &v117))
    {
      goto LABEL_197;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v87 = type;
      if (os_log_type_enabled(v84, type))
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v84, v87, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v117 == 1)
    {
      v91 = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v92 = type;
      v93 = os_log_type_enabled(v84, type);
      if (v91)
      {
        if (v93)
        {
          *buf = 136446466;
          v120 = "nw_connection_create_from_protocol_on_nw_queue";
          v121 = 2082;
          *v122 = v91;
          _os_log_impl(&dword_181A37000, v84, v92, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v91);
LABEL_197:
        if (!v83)
        {
LABEL_199:
          v59 = 0;
          goto LABEL_136;
        }

LABEL_198:
        free(v83);
        goto LABEL_199;
      }

      if (v93)
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v84, v92, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v84 = __nwlog_obj();
      v101 = type;
      if (os_log_type_enabled(v84, type))
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v84, v101, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_196:

    goto LABEL_197;
  }

  v7 = _nw_parameters_copy_context(v6);
  nw_context_assert_queue(v7);

  v8 = _nw_parameters_copy(v6);
  v9 = v8;
  if (v8)
  {
    _nw_parameters_set_indefinite(v8, 0);
    v10 = [[NWConcrete_nw_connection alloc] initWithEndpoint:v5 parameters:v9 identifier:0];
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      nw_allow_use_of_dispatch_internal();
      if (has_modifiers == 1)
      {
        os_unfair_lock_lock(&nw_protocol_modify_lock);
        v14 = g_modifier_list;
        if (g_modifier_list)
        {
          while (1)
          {
            v15 = v14[2];
            if (v15)
            {
              if (v15(v12, v13))
              {
                break;
              }
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_7;
            }
          }

          os_unfair_lock_unlock(&nw_protocol_modify_lock);
          v16 = *(v11 + 16);
          if (!v16)
          {
            v19 = 0;
LABEL_19:
            *(v11 + 109) |= 4u;
            v20 = *(v11 + 448);
            v21 = *(v11 + 8);
            v22 = v19;
            v23 = v11;
            v114 = v22;
            v115 = v21;
            if (!v21)
            {
              v94 = __nwlog_obj();
              *buf = 136446210;
              v120 = "nw_endpoint_handler_create_from_protocol_listener";
              v95 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v117 = 0;
              if (!__nwlog_fault(v95, &type, &v117))
              {
                goto LABEL_207;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v96 = __nwlog_obj();
                v97 = type;
                if (os_log_type_enabled(v96, type))
                {
                  *buf = 136446210;
                  v120 = "nw_endpoint_handler_create_from_protocol_listener";
                  _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null endpoint", buf, 0xCu);
                }
              }

              else if (v117 == 1)
              {
                v102 = __nw_create_backtrace_string();
                v96 = __nwlog_obj();
                v103 = type;
                v104 = os_log_type_enabled(v96, type);
                if (v102)
                {
                  if (v104)
                  {
                    *buf = 136446466;
                    v120 = "nw_endpoint_handler_create_from_protocol_listener";
                    v121 = 2082;
                    *v122 = v102;
                    _os_log_impl(&dword_181A37000, v96, v103, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v102);
                  if (!v95)
                  {
                    goto LABEL_209;
                  }

                  goto LABEL_208;
                }

                if (v104)
                {
                  *buf = 136446210;
                  v120 = "nw_endpoint_handler_create_from_protocol_listener";
                  _os_log_impl(&dword_181A37000, v96, v103, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v96 = __nwlog_obj();
                v108 = type;
                if (os_log_type_enabled(v96, type))
                {
                  *buf = 136446210;
                  v120 = "nw_endpoint_handler_create_from_protocol_listener";
                  _os_log_impl(&dword_181A37000, v96, v108, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
                }
              }

              goto LABEL_206;
            }

            if (v22)
            {
              v24 = [[NWConcrete_nw_endpoint_handler alloc] initWithEndpoint:v21 parameters:v22 reportCallback:nw_connection_endpoint_report_on_nw_queue context:v23 parent:0 identifier:v20 connection_uuid:(v11 + 452)];
              v25 = v24;
              if (v24)
              {
                *(v24 + 29) = 2;
                v26 = v24[9];
                v27 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
                v28 = *(v27 + 32) & 0xFC;
                if (!v26)
                {
                  ++v28;
                }

                *(v27 + 32) = v28 | 2;
                *v27->connection_uuid = *(v25 + 148);
                v29 = v25[33];
                v25[33] = v27;

                if (nw_endpoint_flow_pre_attach_protocols(v25, a3))
                {
                  v30 = v25;
LABEL_116:

LABEL_117:
                  v70 = v23[18];
                  v23[18] = v30;

                  v71 = *(v11 + 16);
                  if (v23[18])
                  {
                    v72 = _nw_parameters_copy_immutable(v71);
                    v73 = *(v11 + 16);
                    *(v11 + 16) = v72;

                    v74 = *(v11 + 16);
                    if (v74 && !_nw_parameters_get_logging_disabled(v74))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v75 = gconnectionLogObj;
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                      {
                        v76 = *(v11 + 448);
                        v77 = v116;
                        logging_description = _nw_endpoint_get_logging_description(v77);

                        *buf = 136446722;
                        v120 = "nw_connection_create_from_protocol_on_nw_queue";
                        v121 = 1024;
                        *v122 = v76;
                        *&v122[4] = 2082;
                        *&v122[6] = logging_description;
                        _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_INFO, "%{public}s [C%u] create connection to %{public}s", buf, 0x1Cu);
                      }
                    }

                    v59 = v23;
                    goto LABEL_134;
                  }

                  if (v71 && !_nw_parameters_get_logging_disabled(v71))
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v79 = gconnectionLogObj;
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                    {
                      v80 = *(v11 + 448);
                      *buf = 136446466;
                      v120 = "nw_connection_create_from_protocol_on_nw_queue";
                      v121 = 1024;
                      *v122 = v80;
                      _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Failed to create connection from listener", buf, 0x12u);
                    }
                  }

LABEL_133:
                  v59 = 0;
LABEL_134:

                  goto LABEL_135;
                }

                if ((*(v25 + 284) & 0x40) != 0)
                {
                  goto LABEL_114;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v46 = gconnectionLogObj;
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
LABEL_113:

LABEL_114:
                  nw_endpoint_handler_cancel(v25, 1, 0);
                  goto LABEL_115;
                }

                if (*(v25 + 284))
                {
                  v47 = "dry-run ";
                }

                else
                {
                  v47 = "";
                }

                v48 = nw_endpoint_handler_copy_endpoint(v25);
                v49 = v48;
                if (v48)
                {
                  v113 = _nw_endpoint_get_logging_description(v48);
                }

                else
                {
                  v113 = "<NULL>";
                }

                v60 = *(v25 + 30);
                if (v60 > 5)
                {
                  v61 = "unknown-state";
                }

                else
                {
                  v61 = off_1E6A31048[v60];
                }

                v62 = v25;
                v63 = *(v25 + 29);
                v112 = v61;
                if (v63 > 2)
                {
                  switch(v63)
                  {
                    case 3:
                      v64 = "proxy";
                      break;
                    case 4:
                      v64 = "fallback";
                      break;
                    case 5:
                      v64 = "transform";
                      break;
                    default:
LABEL_108:
                      v64 = "unknown-mode";
                      break;
                  }
                }

                else
                {
                  if (v63)
                  {
                    if (v63 == 1)
                    {
                      v64 = "resolver";
                      goto LABEL_111;
                    }

                    if (v63 == 2)
                    {
                      v110 = nw_endpoint_flow_mode_string(v25[33]);
LABEL_112:

                      v111 = v49;
                      v65 = v23;
                      v66 = v47;
                      v67 = v62;
                      os_unfair_lock_lock(v62 + 28);
                      v68 = v67[8];
                      os_unfair_lock_unlock(v62 + 28);

                      v69 = v66;
                      v23 = v65;
                      *buf = 136447746;
                      v120 = "nw_endpoint_handler_create_from_protocol_listener";
                      v121 = 2082;
                      *v122 = v25 + 23;
                      *&v122[8] = 2082;
                      *&v122[10] = v69;
                      v123 = 2082;
                      v124 = v113;
                      v125 = 2082;
                      v126 = v112;
                      v127 = 2082;
                      v128 = v110;
                      v129 = 2114;
                      v130 = v68;
                      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nw_endpoint_flow_pre_attach_protocols", buf, 0x48u);

                      goto LABEL_113;
                    }

                    goto LABEL_108;
                  }

                  v64 = "path";
                }

LABEL_111:
                v110 = v64;
                goto LABEL_112;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              *buf = 136446210;
              v120 = "nw_endpoint_handler_create_from_protocol_listener";
              v43 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v117 = 0;
              if (__nwlog_fault(v43, &type, &v117))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v44 = gLogObj;
                  v45 = type;
                  if (os_log_type_enabled(v44, type))
                  {
                    *buf = 136446210;
                    v120 = "nw_endpoint_handler_create_from_protocol_listener";
                    _os_log_impl(&dword_181A37000, v44, v45, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 0xCu);
                  }
                }

                else if (v117 == 1)
                {
                  v54 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v44 = gLogObj;
                  v55 = type;
                  v56 = os_log_type_enabled(v44, type);
                  if (v54)
                  {
                    if (v56)
                    {
                      *buf = 136446466;
                      v120 = "nw_endpoint_handler_create_from_protocol_listener";
                      v121 = 2082;
                      *v122 = v54;
                      _os_log_impl(&dword_181A37000, v44, v55, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v54);
                    if (!v43)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_105;
                  }

                  if (v56)
                  {
                    *buf = 136446210;
                    v120 = "nw_endpoint_handler_create_from_protocol_listener";
                    _os_log_impl(&dword_181A37000, v44, v55, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v44 = gLogObj;
                  v58 = type;
                  if (os_log_type_enabled(v44, type))
                  {
                    *buf = 136446210;
                    v120 = "nw_endpoint_handler_create_from_protocol_listener";
                    _os_log_impl(&dword_181A37000, v44, v58, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

              if (!v43)
              {
LABEL_115:
                v30 = 0;
                goto LABEL_116;
              }

LABEL_105:
              free(v43);
              goto LABEL_115;
            }

            v98 = __nwlog_obj();
            *buf = 136446210;
            v120 = "nw_endpoint_handler_create_from_protocol_listener";
            v95 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v117 = 0;
            if (__nwlog_fault(v95, &type, &v117))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v96 = __nwlog_obj();
                v99 = type;
                if (os_log_type_enabled(v96, type))
                {
                  *buf = 136446210;
                  v120 = "nw_endpoint_handler_create_from_protocol_listener";
                  _os_log_impl(&dword_181A37000, v96, v99, "%{public}s called with null parameters", buf, 0xCu);
                }

LABEL_206:

                goto LABEL_207;
              }

              if (v117 != 1)
              {
                v96 = __nwlog_obj();
                v109 = type;
                if (os_log_type_enabled(v96, type))
                {
                  *buf = 136446210;
                  v120 = "nw_endpoint_handler_create_from_protocol_listener";
                  _os_log_impl(&dword_181A37000, v96, v109, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_206;
              }

              v105 = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              v106 = type;
              v107 = os_log_type_enabled(v96, type);
              if (!v105)
              {
                if (v107)
                {
                  *buf = 136446210;
                  v120 = "nw_endpoint_handler_create_from_protocol_listener";
                  _os_log_impl(&dword_181A37000, v96, v106, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
                }

                goto LABEL_206;
              }

              if (v107)
              {
                *buf = 136446466;
                v120 = "nw_endpoint_handler_create_from_protocol_listener";
                v121 = 2082;
                *v122 = v105;
                _os_log_impl(&dword_181A37000, v96, v106, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v105);
            }

LABEL_207:
            if (!v95)
            {
LABEL_209:
              v30 = 0;
              goto LABEL_117;
            }

LABEL_208:
            free(v95);
            goto LABEL_209;
          }

          if (!_nw_parameters_get_logging_disabled(v16))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v17 = gconnectionLogObj;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(v11 + 448);
              *buf = 136446466;
              v120 = "nw_connection_create_from_protocol_on_nw_queue";
              v121 = 1024;
              *v122 = v18;
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Connection parameters were modified", buf, 0x12u);
            }
          }
        }

        else
        {
LABEL_7:
          os_unfair_lock_unlock(&nw_protocol_modify_lock);
        }
      }

      v19 = *(v11 + 16);
      goto LABEL_19;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = gLogObj;
    *buf = 136446210;
    v120 = "nw_connection_create_from_protocol_on_nw_queue";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (__nwlog_fault(v36, &type, &v117))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v120 = "nw_connection_create_from_protocol_on_nw_queue";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 0xCu);
        }
      }

      else if (v117 == 1)
      {
        v50 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v51 = type;
        v52 = os_log_type_enabled(v37, type);
        if (v50)
        {
          if (v52)
          {
            *buf = 136446466;
            v120 = "nw_connection_create_from_protocol_on_nw_queue";
            v121 = 2082;
            *v122 = v50;
            _os_log_impl(&dword_181A37000, v37, v51, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          if (!v36)
          {
            goto LABEL_133;
          }

          goto LABEL_100;
        }

        if (v52)
        {
          *buf = 136446210;
          v120 = "nw_connection_create_from_protocol_on_nw_queue";
          _os_log_impl(&dword_181A37000, v37, v51, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v57 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v120 = "nw_connection_create_from_protocol_on_nw_queue";
          _os_log_impl(&dword_181A37000, v37, v57, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v36)
    {
      goto LABEL_133;
    }

LABEL_100:
    free(v36);
    goto LABEL_133;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = gLogObj;
  *buf = 136446210;
  v120 = "nw_connection_create_from_protocol_on_nw_queue";
  v32 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v117 = 0;
  if (__nwlog_fault(v32, &type, &v117))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s nw_parameters_copy failed", buf, 0xCu);
      }
    }

    else if (v117 == 1)
    {
      v39 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v40 = type;
      v41 = os_log_type_enabled(v33, type);
      if (v39)
      {
        if (v41)
        {
          *buf = 136446466;
          v120 = "nw_connection_create_from_protocol_on_nw_queue";
          v121 = 2082;
          *v122 = v39;
          _os_log_impl(&dword_181A37000, v33, v40, "%{public}s nw_parameters_copy failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (!v32)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      if (v41)
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v33, v40, "%{public}s nw_parameters_copy failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v53 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v120 = "nw_connection_create_from_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v33, v53, "%{public}s nw_parameters_copy failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v32)
  {
LABEL_81:
    free(v32);
  }

LABEL_82:
  v59 = 0;
LABEL_135:

LABEL_136:
  return v59;
}

void nw_parameters_inherit_protocol_instances(void *a1, unint64_t a2, void *a3, uint64_t a4, int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = v10;
  v89 = v9;
  if (!v9)
  {
    v47 = v10;
    v48 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_parameters_inherit_protocol_instances";
    v49 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v94) = 0;
    if (!__nwlog_fault(v49, type, &v94))
    {
      goto LABEL_107;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v50, type[0]))
      {
        *buf = 136446210;
        v99 = "nw_parameters_inherit_protocol_instances";
        _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null new_parameters", buf, 0xCu);
      }
    }

    else if (v94 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v67 = type[0];
      v68 = os_log_type_enabled(v50, type[0]);
      if (backtrace_string)
      {
        if (v68)
        {
          *buf = 136446466;
          v99 = "nw_parameters_inherit_protocol_instances";
          v100 = 2082;
          v101 = backtrace_string;
          _os_log_impl(&dword_181A37000, v50, v67, "%{public}s called with null new_parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_107:
        if (!v49)
        {
          goto LABEL_34;
        }

LABEL_108:
        free(v49);
        goto LABEL_34;
      }

      if (v68)
      {
        *buf = 136446210;
        v99 = "nw_parameters_inherit_protocol_instances";
        _os_log_impl(&dword_181A37000, v50, v67, "%{public}s called with null new_parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v50 = __nwlog_obj();
      v81 = type[0];
      if (os_log_type_enabled(v50, type[0]))
      {
        *buf = 136446210;
        v99 = "nw_parameters_inherit_protocol_instances";
        _os_log_impl(&dword_181A37000, v50, v81, "%{public}s called with null new_parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_106:

    goto LABEL_107;
  }

  if (v10)
  {
    v12 = _nw_parameters_copy_default_protocol_stack(v9);
    v87 = v11;
    if (v12)
    {
      v88 = _nw_parameters_copy_default_protocol_stack(v11);
      v86 = v12;
      if (v88)
      {
        v13 = _nw_parameters_copy_effective_proxy_config(v9);
        v14 = v13;
        v15 = 3;
        if (v13)
        {
          v16 = v13;
          v17 = v16[170];

          if (v17)
          {
            v15 = 4;
          }

          else
          {
            v15 = 3;
          }
        }

        v94 = 0;
        *type = 0;
        v18 = v12;
        v19 = v88;
        if (a4)
        {
          if (a5)
          {
            v20 = v15;
          }

          else
          {
            v20 = 2;
          }

          v21 = _nw_protocol_stack_application_protocols_are_equal_below(v18, a2, v19, a4, v20, type, &v94);

          if (!v21)
          {
            goto LABEL_16;
          }

          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = __nw_parameters_inherit_protocol_instances_block_invoke;
          v90[3] = &unk_1E6A2E390;
          v92 = *type;
          v93 = v94;
          v91 = v19;
          v22 = v18;
          v23 = v90;
          _nw_protocol_stack_iterate_application_protocols_with_index(v22, 1, 1, v23);

          v24 = v91;
LABEL_15:

LABEL_16:
          v25 = _nw_protocol_stack_copy_transport_protocol(v18);
          v26 = _nw_protocol_stack_copy_transport_protocol(v19);
          v27 = v26;
          if (v25 && v26)
          {
            v28 = _nw_protocol_options_copy_definition(v25);
            if (nw_protocol_options_matches_definition(v27, v28))
            {
              v29 = v27;
              v30 = v25;
              _nw_protocol_options_inherit_log_id(v29, v30);

              protocol_handle = _nw_protocol_options_get_protocol_handle(v29);
              _nw_protocol_options_set_instance(v30, protocol_handle);
            }
          }

          v32 = _nw_protocol_stack_copy_secondary_transport_protocol(v18);
          v33 = _nw_protocol_stack_copy_secondary_transport_protocol(v19);
          v34 = v33;
          if (v32 && v33)
          {
            v35 = _nw_protocol_options_copy_definition(v32);
            if (nw_protocol_options_matches_definition(v34, v35))
            {
              v36 = v34;
              v37 = v32;
              _nw_protocol_options_inherit_log_id(v36, v37);

              v38 = _nw_protocol_options_get_protocol_handle(v36);
              _nw_protocol_options_set_instance(v37, v38);
            }
          }

          v39 = _nw_protocol_stack_copy_internet_protocol();
          v40 = _nw_protocol_stack_copy_internet_protocol();
          v41 = v40;
          if (v39 && v40)
          {
            v42 = _nw_protocol_options_copy_definition(v39);
            if (nw_protocol_options_matches_definition(v41, v42))
            {
              v43 = v41;
              v44 = v39;
              _nw_protocol_options_inherit_log_id(v43, v44);

              v45 = _nw_protocol_options_get_protocol_handle(v43);
              _nw_protocol_options_set_instance(v44, v45);
            }
          }

LABEL_32:
          v46 = v86;
LABEL_33:

          v47 = v87;
          goto LABEL_34;
        }

        v62 = __nwlog_obj();
        *buf = 136446210;
        v99 = "nw_protocol_stack_application_protocols_are_equal_below";
        v63 = _os_log_send_and_compose_impl();

        v97 = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (__nwlog_fault(v63, &v97, &v96))
        {
          if (v97 == OS_LOG_TYPE_FAULT)
          {
            v64 = __nwlog_obj();
            v65 = v97;
            if (os_log_type_enabled(v64, v97))
            {
              *buf = 136446210;
              v99 = "nw_protocol_stack_application_protocols_are_equal_below";
              _os_log_impl(&dword_181A37000, v64, v65, "%{public}s called with null join_protocol", buf, 0xCu);
            }
          }

          else if (v96 == 1)
          {
            v78 = __nw_create_backtrace_string();
            v64 = __nwlog_obj();
            v79 = v97;
            v80 = os_log_type_enabled(v64, v97);
            if (v78)
            {
              if (v80)
              {
                *buf = 136446466;
                v99 = "nw_protocol_stack_application_protocols_are_equal_below";
                v100 = 2082;
                v101 = v78;
                _os_log_impl(&dword_181A37000, v64, v79, "%{public}s called with null join_protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v78);
              goto LABEL_122;
            }

            if (v80)
            {
              *buf = 136446210;
              v99 = "nw_protocol_stack_application_protocols_are_equal_below";
              _os_log_impl(&dword_181A37000, v64, v79, "%{public}s called with null join_protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v64 = __nwlog_obj();
            v85 = v97;
            if (os_log_type_enabled(v64, v97))
            {
              *buf = 136446210;
              v99 = "nw_protocol_stack_application_protocols_are_equal_below";
              _os_log_impl(&dword_181A37000, v64, v85, "%{public}s called with null join_protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_122:
        if (v63)
        {
          free(v63);
        }

        v24 = v18;
        goto LABEL_15;
      }

      v58 = __nwlog_obj();
      *buf = 136446210;
      v99 = "nw_parameters_inherit_protocol_instances";
      v59 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v94) = 0;
      if (__nwlog_fault(v59, type, &v94))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v60 = __nwlog_obj();
          v61 = type[0];
          if (os_log_type_enabled(v60, type[0]))
          {
            *buf = 136446210;
            v99 = "nw_parameters_inherit_protocol_instances";
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null join_stack", buf, 0xCu);
          }
        }

        else if (v94 == 1)
        {
          v75 = __nw_create_backtrace_string();
          v60 = __nwlog_obj();
          v76 = type[0];
          v77 = os_log_type_enabled(v60, type[0]);
          if (v75)
          {
            if (v77)
            {
              *buf = 136446466;
              v99 = "nw_parameters_inherit_protocol_instances";
              v100 = 2082;
              v101 = v75;
              _os_log_impl(&dword_181A37000, v60, v76, "%{public}s called with null join_stack, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v75);
            goto LABEL_117;
          }

          if (v77)
          {
            *buf = 136446210;
            v99 = "nw_parameters_inherit_protocol_instances";
            _os_log_impl(&dword_181A37000, v60, v76, "%{public}s called with null join_stack, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v60 = __nwlog_obj();
          v84 = type[0];
          if (os_log_type_enabled(v60, type[0]))
          {
            *buf = 136446210;
            v99 = "nw_parameters_inherit_protocol_instances";
            _os_log_impl(&dword_181A37000, v60, v84, "%{public}s called with null join_stack, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_117:
      if (v59)
      {
        free(v59);
      }

      goto LABEL_32;
    }

    v46 = 0;
    v54 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_parameters_inherit_protocol_instances";
    v55 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v94) = 0;
    if (__nwlog_fault(v55, type, &v94))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type[0];
        if (os_log_type_enabled(v56, type[0]))
        {
          *buf = 136446210;
          v99 = "nw_parameters_inherit_protocol_instances";
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null stack", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        v72 = __nw_create_backtrace_string();
        v56 = __nwlog_obj();
        v73 = type[0];
        v74 = os_log_type_enabled(v56, type[0]);
        if (v72)
        {
          if (v74)
          {
            *buf = 136446466;
            v99 = "nw_parameters_inherit_protocol_instances";
            v100 = 2082;
            v101 = v72;
            _os_log_impl(&dword_181A37000, v56, v73, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v72);
          goto LABEL_112;
        }

        if (v74)
        {
          *buf = 136446210;
          v99 = "nw_parameters_inherit_protocol_instances";
          _os_log_impl(&dword_181A37000, v56, v73, "%{public}s called with null stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v56 = __nwlog_obj();
        v83 = type[0];
        if (os_log_type_enabled(v56, type[0]))
        {
          *buf = 136446210;
          v99 = "nw_parameters_inherit_protocol_instances";
          _os_log_impl(&dword_181A37000, v56, v83, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_112:
    if (v55)
    {
      free(v55);
    }

    goto LABEL_33;
  }

  v47 = 0;
  v52 = __nwlog_obj();
  *buf = 136446210;
  v99 = "nw_parameters_inherit_protocol_instances";
  v49 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v94) = 0;
  if (!__nwlog_fault(v49, type, &v94))
  {
    goto LABEL_107;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v50 = __nwlog_obj();
    v53 = type[0];
    if (os_log_type_enabled(v50, type[0]))
    {
      *buf = 136446210;
      v99 = "nw_parameters_inherit_protocol_instances";
      _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null join_parameters", buf, 0xCu);
    }

    goto LABEL_106;
  }

  if (v94 != 1)
  {
    v50 = __nwlog_obj();
    v82 = type[0];
    if (os_log_type_enabled(v50, type[0]))
    {
      *buf = 136446210;
      v99 = "nw_parameters_inherit_protocol_instances";
      _os_log_impl(&dword_181A37000, v50, v82, "%{public}s called with null join_parameters, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_106;
  }

  v69 = __nw_create_backtrace_string();
  v50 = __nwlog_obj();
  v70 = type[0];
  v71 = os_log_type_enabled(v50, type[0]);
  if (!v69)
  {
    if (v71)
    {
      *buf = 136446210;
      v99 = "nw_parameters_inherit_protocol_instances";
      _os_log_impl(&dword_181A37000, v50, v70, "%{public}s called with null join_parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_106;
  }

  if (v71)
  {
    *buf = 136446466;
    v99 = "nw_parameters_inherit_protocol_instances";
    v100 = 2082;
    v101 = v69;
    _os_log_impl(&dword_181A37000, v50, v70, "%{public}s called with null join_parameters, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v69);
  if (v49)
  {
    goto LABEL_108;
  }

LABEL_34:
}
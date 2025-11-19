char *nw_path_is_listener(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_listener(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_listener";
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
        v16 = "nw_path_is_listener";
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
          v16 = "nw_path_is_listener";
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
        v16 = "nw_path_is_listener";
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
        v16 = "nw_path_is_listener";
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

char *_nw_path_is_listener(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 16) & 1);
  }

  return result;
}

void ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(*(a1 + 32) + 136))
  {
    os_channel_sync();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 460);
  if ((v3 & 2) == 0 && *(v2 + 176))
  {
    *(v2 + 460) = v3 | 2;
    v5 = os_channel_available_slot_count();
    if (v5 || (nw_channel_check_defunct(v2) & 1) == 0)
    {
      v6 = *(v2 + 176);
      if (v6)
      {
        if (*(v2 + 436) - 1 >= v5)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(v2 + 436);
        }

        v8 = *(v2 + 460);
        if (v5 == v7)
        {
          if ((v8 & 0x10) != 0)
          {
            *(v2 + 460) = v8 & 0xFFEF;
            nw_queue_resume_source(v6, v4);
          }
        }

        else if ((v8 & 0x10) == 0)
        {
          *(v2 + 460) = v8 | 0x10;
          nw_queue_suspend_source(v6);
        }
      }
    }

    *(v2 + 460) &= ~2u;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 136) && *(v2 + 216))
  {
    v9 = os_channel_available_slot_count();
    v10 = *(v2 + 436);
    if (v10 - 1 >= v9)
    {
      v10 = 0;
    }

    if (v9 != v10)
    {
      v11 = *(v2 + 280);
      if (v11)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = ___ZL34nw_channel_notify_output_availableP10nw_channel_block_invoke;
        v12[3] = &__block_descriptor_tmp_65_92481;
        v12[4] = v2;
        nw_hash_table_apply(v11, v12);
      }
    }
  }
}

uint64_t ___ZL34nw_channel_notify_output_availableP10nw_channel_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  v4 = *(a1 + 32);
  if (object)
  {
    v5 = object;
    v6 = object[3];
    if (v6)
    {
      v7 = *(v6 + 72);
      if (v7)
      {
        v8 = v4 + 3;
        v9 = object[5];
        v10 = object;
        if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = object[8]) != 0)
        {
          v12 = v10[11];
          v11 = 0;
          if (v12)
          {
            v10[11] = v12 + 1;
          }
        }

        else
        {
          v11 = 1;
        }

        v13 = v4[8];
        v14 = v4 + 3;
        if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = v4[11]) != 0)
        {
          v15 = v14[11];
          if (v15)
          {
            v14[11] = v15 + 1;
          }

          v7(object, v4 + 3);
          v16 = v4[8];
          if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v8 = v4[11]) != 0)
          {
            v17 = v8[11];
            if (v17)
            {
              v18 = v17 - 1;
              v8[11] = v18;
              if (!v18)
              {
                v19 = v8[8];
                if (v19)
                {
                  v8[8] = 0;
                  v19[2](v19);
                  _Block_release(v19);
                }

                if (v8[9])
                {
                  v20 = v8[8];
                  if (v20)
                  {
                    _Block_release(v20);
                  }
                }

                free(v8);
              }
            }
          }
        }

        else
        {
          v7(object, v4 + 3);
        }

        if ((v11 & 1) == 0)
        {
          v21 = v5[5];
          if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v5 = v5[8]) != 0)
          {
            v22 = v5[11];
            if (v22)
            {
              v23 = v22 - 1;
              v5[11] = v23;
              if (!v23)
              {
                v24 = v5[8];
                if (v24)
                {
                  v5[8] = 0;
                  v24[2](v24);
                  _Block_release(v24);
                }

                if (v5[9])
                {
                  v25 = v5[8];
                  if (v25)
                  {
                    _Block_release(v25);
                  }
                }

                free(v5);
              }
            }
          }
        }

        v4 = *(a1 + 32);
      }
    }
  }

  if (!v4[22])
  {
    return 0;
  }

  result = v4[27];
  if (result)
  {
    v27 = os_channel_available_slot_count();
    v28 = *(*(a1 + 32) + 436);
    if (v28 - 1 >= v27)
    {
      v28 = 0;
    }

    return v27 != v28;
  }

  return result;
}

uint64_t NWActivity.init(domain:label:)(uint64_t result, uint64_t a2)
{
  if (result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  if ((a2 | result) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    v2[2] = nw_activity_create(result, a2);
    v2[3] = v4;
    v2[4] = a2;
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t NWActivity.parentActivity.getter()
{
  v1 = nw_activity_copy_parent_activity(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v5[3] = swift_getObjectType();
  v5[0] = v2;
  v3 = swift_allocObject();
  NWActivity.init(_:)(v5);
  return v3;
}

uint64_t NWActivity.init(token:)(uint64_t a1)
{
  v2 = v1;
  v16 = *MEMORY[0x1E69E9840];
  *&v15 = sub_182AD2238();
  WORD4(v15) = v4;
  BYTE10(v15) = v5;
  BYTE11(v15) = v6;
  BYTE12(v15) = v7;
  BYTE13(v15) = v8;
  BYTE14(v15) = v9;
  HIBYTE(v15) = v10;
  v11 = nw_activity_create_from_token(&v15);
  if (v11)
  {
    v12 = v11;
    v13 = sub_182AD2258();
    (*(*(v13 - 8) + 8))(a1, v13);
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v12;
    return v2;
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

char *nw_activity_create_from_token(_OWORD *a1)
{
  v2 = [NWConcrete_nw_activity alloc];

  return [(NWConcrete_nw_activity *)v2 initWithToken:a1];
}

void NWActivity.parentActivity.setter(uint64_t a1)
{
  if (a1)
  {
    nw_activity_set_parent_activity(*(v1 + 16), *(a1 + 16));
  }

  else
  {
    v2 = *(v1 + 16);

    nw_activity_set_parent_activity(v2, 0);
  }
}

void nw_endpoint_handler_cancel(void *a1, uint64_t a2, int a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = v5;
  if (v5)
  {
    v8 = v5[4];
    if (v8)
    {
      v9 = _nw_parameters_copy_context(v8);
      nw_context_assert_queue(v9);
    }

    if ((v7[71] & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v7))
      {
LABEL_34:
        if (v7[30] == 5)
        {
          if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v7);
              v26 = nw_endpoint_handler_dry_run_string(v7);
              v27 = nw_endpoint_handler_copy_endpoint(v7);
              logging_description = nw_endpoint_get_logging_description(v27);
              v29 = nw_endpoint_handler_state_string(v7);
              v30 = nw_endpoint_handler_mode_string(v7);
              v31 = nw_endpoint_handler_copy_current_path(v7);
              *buf = 136447746;
              v62 = "nw_endpoint_handler_cancel";
              v63 = 2082;
              v64 = id_string;
              v65 = 2082;
              v66 = v26;
              v67 = 2082;
              v68 = logging_description;
              v69 = 2082;
              v70 = v29;
              v71 = 2082;
              v72 = v30;
              v73 = 2114;
              v74 = v31;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Handler already cancelled, ignoring cancel", buf, 0x48u);
            }
          }
        }

        else
        {
          if (a3)
          {
            v7[30] = 4;
            v7[20] = 458753;
            nw_endpoint_handler_report(v7, 0, v7 + 40, 0);
          }

          v32 = *(v7 + 17);
          if (v32)
          {
            nw_queue_cancel_source(v32, v6);
            *(v7 + 17) = 0;
          }

          v33 = *(v7 + 9);
          *(v7 + 9) = 0;

          v34 = *(v7 + 4);
          *(v7 + 4) = 0;

          os_unfair_lock_lock(v7 + 28);
          v35 = *(v7 + 8);
          *(v7 + 8) = 0;

          os_unfair_lock_unlock(v7 + 28);
          v36 = *(v7 + 7);
          if (v36)
          {
            nw_association_unregister(v36, v7);
            v37 = *(v7 + 7);
            *(v7 + 7) = 0;
          }

          v38 = *(v7 + 11);
          *(v7 + 11) = 0;

          v39 = *(v7 + 12);
          *(v7 + 12) = 0;

          v40 = *(v7 + 13);
          *(v7 + 13) = 0;

          v7[30] = 5;
          v41 = *(v7 + 33);
          [v41 cancelWithHandler:v7 forced:a2];

          if (v7[29] == 2)
          {
            nw_endpoint_handler_cancel_read_write_requests(v7, 0);
          }
        }

        goto LABEL_50;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v46 = nw_endpoint_handler_get_id_string(v7);
        v47 = nw_endpoint_handler_dry_run_string(v7);
        v57 = nw_endpoint_handler_copy_endpoint(v7);
        v48 = nw_endpoint_get_logging_description(v57);
        v49 = nw_endpoint_handler_state_string(v7);
        v50 = nw_endpoint_handler_mode_string(v7);
        v51 = nw_endpoint_handler_copy_current_path(v7);
        *buf = 136447746;
        v62 = "nw_endpoint_handler_cancel";
        v63 = 2082;
        v64 = v46;
        v65 = 2082;
        v66 = v47;
        v67 = 2082;
        v68 = v48;
        v69 = 2082;
        v70 = v49;
        v71 = 2082;
        v72 = v50;
        v73 = 2114;
        v74 = v51;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);
      }

LABEL_33:

      goto LABEL_34;
    }

    if ((v7[71] & 0x40) != 0)
    {
      goto LABEL_34;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    if (v7[71])
    {
      v11 = "dry-run ";
    }

    else
    {
      v11 = "";
    }

    v12 = nw_endpoint_handler_copy_endpoint(v7);
    v13 = v12;
    v58 = a3;
    if (v12)
    {
      v14 = _nw_endpoint_get_logging_description(v12);
    }

    else
    {
      v14 = "<NULL>";
    }

    log = v10;

    v15 = v7[30];
    if (v15 > 5)
    {
      v16 = "unknown-state";
    }

    else
    {
      v16 = off_1E6A31048[v15];
    }

    v17 = v7;
    v18 = v17;
    v19 = v17[29];
    if (v19 > 2)
    {
      switch(v19)
      {
        case 3:
          v20 = v14;
          v21 = "proxy";
          goto LABEL_32;
        case 4:
          v20 = v14;
          v21 = "fallback";
          goto LABEL_32;
        case 5:
          v20 = v14;
          v21 = "transform";
          goto LABEL_32;
      }
    }

    else
    {
      switch(v19)
      {
        case 0:
          v20 = v14;
          v21 = "path";
          goto LABEL_32;
        case 1:
          v20 = v14;
          v21 = "resolver";
          goto LABEL_32;
        case 2:
          v20 = v14;
          v21 = nw_endpoint_flow_mode_string(*(v17 + 33));
LABEL_32:

          v22 = v18;
          os_unfair_lock_lock(v18 + 28);
          v23 = v22[8];
          os_unfair_lock_unlock(v18 + 28);

          *buf = 136447746;
          v62 = "nw_endpoint_handler_cancel";
          v63 = 2082;
          v64 = v7 + 46;
          v65 = 2082;
          v66 = v11;
          v67 = 2082;
          v68 = v20;
          v69 = 2082;
          v70 = v16;
          v71 = 2082;
          v72 = v21;
          v73 = 2114;
          v74 = v23;
          v10 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          a2 = a2;
          a3 = v58;

          goto LABEL_33;
      }
    }

    v20 = v14;
    v21 = "unknown-mode";
    goto LABEL_32;
  }

  v42 = __nwlog_obj();
  *buf = 136446210;
  v62 = "nw_endpoint_handler_cancel";
  v43 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v59 = 0;
  if (__nwlog_fault(v43, &type, &v59))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v62 = "nw_endpoint_handler_cancel";
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v59 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v53 = type;
      v54 = os_log_type_enabled(v44, type);
      if (backtrace_string)
      {
        if (v54)
        {
          *buf = 136446466;
          v62 = "nw_endpoint_handler_cancel";
          v63 = 2082;
          v64 = backtrace_string;
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_72;
      }

      if (v54)
      {
        *buf = 136446210;
        v62 = "nw_endpoint_handler_cancel";
        _os_log_impl(&dword_181A37000, v44, v53, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v44 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v62 = "nw_endpoint_handler_cancel";
        _os_log_impl(&dword_181A37000, v44, v55, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_72:
  if (v43)
  {
    free(v43);
  }

LABEL_50:
}

void nw_association_unregister(void *a1, void *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v99 = __nwlog_obj();
      *buf = 136446210;
      v110 = "nw_association_unregister";
      v48 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v107 = 0;
      if (!__nwlog_fault(v48, &type, &v107))
      {
        goto LABEL_159;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v100 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v110 = "nw_association_unregister";
          _os_log_impl(&dword_181A37000, v49, v100, "%{public}s called with null handle", buf, 0xCu);
        }

        goto LABEL_158;
      }

      if (v107 != 1)
      {
        v49 = __nwlog_obj();
        v106 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v110 = "nw_association_unregister";
          _os_log_impl(&dword_181A37000, v49, v106, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_158;
      }

      backtrace_string = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v103 = type;
      v104 = os_log_type_enabled(v49, type);
      if (!backtrace_string)
      {
        if (v104)
        {
          *buf = 136446210;
          v110 = "nw_association_unregister";
          _os_log_impl(&dword_181A37000, v49, v103, "%{public}s called with null handle, no backtrace", buf, 0xCu);
        }

        goto LABEL_158;
      }

      if (v104)
      {
        *buf = 136446466;
        v110 = "nw_association_unregister";
        v111 = 2082;
        v112 = backtrace_string;
        _os_log_impl(&dword_181A37000, v49, v103, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_154;
    }

    v6 = nw_path_parameters_copy_context(*(v3 + 2));
    nw_context_assert_queue(v6);

    v7 = *(v3 + 6);
    if (!v7 || (v8 = nw_hash_table_get_node(v7, v5, 0)) == 0 || (v9 = v8, (nw_hash_table_remove_node(*(v3 + 6), v8) & 1) != 0) || (nw_path_parameters_get_logging_disabled(*(v3 + 2)) & 1) != 0)
    {
LABEL_44:
      v31 = *(v3 + 5);
      if (v31)
      {
        node = nw_hash_table_get_node(v31, v5, 0);
        if (node)
        {
          v33 = node;
          v34 = *(node + 32);
          *(node + 32) = 0;

          if (*(v33 + 40))
          {
            v35 = *(v3 + 18);
            if (v35)
            {
              *(v3 + 18) = v35 - 1;
            }
          }

          if (nw_hash_table_remove_node(*(v3 + 5), v33) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
          {
            goto LABEL_166;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v36 = gconnectionLogObj;
          v37 = *(v3 + 1);
          v38 = v37;
          if (v37)
          {
            logging_description = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446722;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = logging_description;
          v113 = 2048;
          v114 = v33;
          v72 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v107 = 0;
          if (__nwlog_fault(v72, &type, &v107))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v73 = gconnectionLogObj;
              v74 = type;
              if (os_log_type_enabled(v73, type))
              {
                v75 = *(v3 + 1);
                v76 = v75;
                if (v75)
                {
                  v77 = _nw_endpoint_get_logging_description(v75);
                }

                else
                {
                  v77 = "<NULL>";
                }

                *buf = 136446722;
                v110 = "nw_association_unregister";
                v111 = 2082;
                v112 = v77;
                v113 = 2048;
                v114 = v33;
                _os_log_impl(&dword_181A37000, v73, v74, "%{public}s <nw_association %{public}s> failed to remove handle for node %p", buf, 0x20u);
              }
            }

            else if (v107 == 1)
            {
              v78 = __nw_create_backtrace_string();
              if (v78)
              {
                v79 = v78;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v80 = gconnectionLogObj;
                v81 = type;
                if (os_log_type_enabled(v80, type))
                {
                  v82 = nw_endpoint_get_logging_description(*(v3 + 1));
                  *buf = 136446978;
                  v110 = "nw_association_unregister";
                  v111 = 2082;
                  v112 = v82;
                  v113 = 2048;
                  v114 = v33;
                  v115 = 2082;
                  v116 = v79;
                  _os_log_impl(&dword_181A37000, v80, v81, "%{public}s <nw_association %{public}s> failed to remove handle for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v79);
                goto LABEL_164;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v73 = gconnectionLogObj;
              v95 = type;
              if (os_log_type_enabled(v73, type))
              {
                v96 = nw_endpoint_get_logging_description(*(v3 + 1));
                *buf = 136446722;
                v110 = "nw_association_unregister";
                v111 = 2082;
                v112 = v96;
                v113 = 2048;
                v114 = v33;
                _os_log_impl(&dword_181A37000, v73, v95, "%{public}s <nw_association %{public}s> failed to remove handle for node %p, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v73 = gconnectionLogObj;
              v87 = type;
              if (os_log_type_enabled(v73, type))
              {
                v88 = *(v3 + 1);
                v89 = v88;
                if (v88)
                {
                  v90 = _nw_endpoint_get_logging_description(v88);
                }

                else
                {
                  v90 = "<NULL>";
                }

                *buf = 136446722;
                v110 = "nw_association_unregister";
                v111 = 2082;
                v112 = v90;
                v113 = 2048;
                v114 = v33;
                _os_log_impl(&dword_181A37000, v73, v87, "%{public}s <nw_association %{public}s> failed to remove handle for node %p, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

LABEL_164:
          if (v72)
          {
            free(v72);
          }

LABEL_166:
          nw_association_schedule_deactivation(v3);
          goto LABEL_167;
        }

        if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
        {
          goto LABEL_167;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v44 = gconnectionLogObj;
        v45 = *(v3 + 1);
        v46 = v45;
        if (v45)
        {
          v47 = _nw_endpoint_get_logging_description(v45);
        }

        else
        {
          v47 = "<NULL>";
        }

        *buf = 136446722;
        v110 = "nw_association_unregister";
        v111 = 2082;
        v112 = v47;
        v113 = 2048;
        v114 = v5;
        v48 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v107 = 0;
        if (__nwlog_fault(v48, &type, &v107))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v49 = gconnectionLogObj;
            v64 = type;
            if (os_log_type_enabled(v49, type))
            {
              v65 = *(v3 + 1);
              v66 = v65;
              if (v65)
              {
                v67 = _nw_endpoint_get_logging_description(v65);
              }

              else
              {
                v67 = "<NULL>";
              }

              *buf = 136446722;
              v110 = "nw_association_unregister";
              v111 = 2082;
              v112 = v67;
              v113 = 2048;
              v114 = v5;
              _os_log_impl(&dword_181A37000, v49, v64, "%{public}s <nw_association %{public}s> does not have handle %p registered", buf, 0x20u);
            }

LABEL_158:

            goto LABEL_159;
          }

          if (v107 != 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v49 = gconnectionLogObj;
            v83 = type;
            if (os_log_type_enabled(v49, type))
            {
              v84 = *(v3 + 1);
              v85 = v84;
              if (v84)
              {
                v86 = _nw_endpoint_get_logging_description(v84);
              }

              else
              {
                v86 = "<NULL>";
              }

              *buf = 136446722;
              v110 = "nw_association_unregister";
              v111 = 2082;
              v112 = v86;
              v113 = 2048;
              v114 = v5;
              _os_log_impl(&dword_181A37000, v49, v83, "%{public}s <nw_association %{public}s> does not have handle %p registered, backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_158;
          }

          v68 = __nw_create_backtrace_string();
          if (!v68)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v49 = gconnectionLogObj;
            v93 = type;
            if (os_log_type_enabled(v49, type))
            {
              v94 = nw_endpoint_get_logging_description(*(v3 + 1));
              *buf = 136446722;
              v110 = "nw_association_unregister";
              v111 = 2082;
              v112 = v94;
              v113 = 2048;
              v114 = v5;
              _os_log_impl(&dword_181A37000, v49, v93, "%{public}s <nw_association %{public}s> does not have handle %p registered, no backtrace", buf, 0x20u);
            }

            goto LABEL_158;
          }

          v69 = v68;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v49 = gconnectionLogObj;
          v70 = type;
          if (os_log_type_enabled(v49, type))
          {
            v71 = nw_endpoint_get_logging_description(*(v3 + 1));
            *buf = 136446978;
            v110 = "nw_association_unregister";
            v111 = 2082;
            v112 = v71;
            v113 = 2048;
            v114 = v5;
            v115 = 2082;
            v116 = v69;
            _os_log_impl(&dword_181A37000, v49, v70, "%{public}s <nw_association %{public}s> does not have handle %p registered, dumping backtrace:%{public}s", buf, 0x2Au);
          }

LABEL_99:

          free(v69);
          goto LABEL_159;
        }

        goto LABEL_159;
      }

      if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
      {
        goto LABEL_167;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v40 = gconnectionLogObj;
      v41 = *(v3 + 1);
      v42 = v41;
      if (v41)
      {
        v43 = _nw_endpoint_get_logging_description(v41);
      }

      else
      {
        v43 = "<NULL>";
      }

      *buf = 136446466;
      v110 = "nw_association_unregister";
      v111 = 2082;
      v112 = v43;
      v48 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v107 = 0;
      if (!__nwlog_fault(v48, &type, &v107))
      {
        goto LABEL_159;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v49 = gconnectionLogObj;
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          v51 = *(v3 + 1);
          v52 = v51;
          if (v51)
          {
            v53 = _nw_endpoint_get_logging_description(v51);
          }

          else
          {
            v53 = "<NULL>";
          }

          *buf = 136446466;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = v53;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s <nw_association %{public}s> does not have a handle hash table", buf, 0x16u);
        }

        goto LABEL_158;
      }

      if (v107 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v49 = gconnectionLogObj;
        v60 = type;
        if (os_log_type_enabled(v49, type))
        {
          v61 = *(v3 + 1);
          v62 = v61;
          if (v61)
          {
            v63 = _nw_endpoint_get_logging_description(v61);
          }

          else
          {
            v63 = "<NULL>";
          }

          *buf = 136446466;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = v63;
          _os_log_impl(&dword_181A37000, v49, v60, "%{public}s <nw_association %{public}s> does not have a handle hash table, backtrace limit exceeded", buf, 0x16u);
        }

        goto LABEL_158;
      }

      v54 = __nw_create_backtrace_string();
      if (!v54)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v49 = gconnectionLogObj;
        v91 = type;
        if (os_log_type_enabled(v49, type))
        {
          v92 = nw_endpoint_get_logging_description(*(v3 + 1));
          *buf = 136446466;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = v92;
          _os_log_impl(&dword_181A37000, v49, v91, "%{public}s <nw_association %{public}s> does not have a handle hash table, no backtrace", buf, 0x16u);
        }

        goto LABEL_158;
      }

      backtrace_string = v54;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v49 = gconnectionLogObj;
      v56 = type;
      if (os_log_type_enabled(v49, type))
      {
        v57 = *(v3 + 1);
        v58 = v57;
        if (v57)
        {
          v59 = _nw_endpoint_get_logging_description(v57);
        }

        else
        {
          v59 = "<NULL>";
        }

        *buf = 136446722;
        v110 = "nw_association_unregister";
        v111 = 2082;
        v112 = v59;
        v113 = 2082;
        v114 = backtrace_string;
        _os_log_impl(&dword_181A37000, v49, v56, "%{public}s <nw_association %{public}s> does not have a handle hash table, dumping backtrace:%{public}s", buf, 0x20u);
      }

LABEL_154:

      free(backtrace_string);
      if (!v48)
      {
        goto LABEL_167;
      }

      goto LABEL_160;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    v11 = *(v3 + 1);
    v12 = v11;
    if (v11)
    {
      v13 = _nw_endpoint_get_logging_description(v11);
    }

    else
    {
      v13 = "<NULL>";
    }

    *buf = 136446722;
    v110 = "nw_association_unregister";
    v111 = 2082;
    v112 = v13;
    v113 = 2048;
    v114 = v9;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v107 = 0;
    if (__nwlog_fault(v14, &type, &v107))
    {
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
          v17 = *(v3 + 1);
          v18 = v17;
          if (v17)
          {
            v19 = _nw_endpoint_get_logging_description(v17);
          }

          else
          {
            v19 = "<NULL>";
          }

          *buf = 136446722;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = v19;
          v113 = 2048;
          v114 = v9;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p", buf, 0x20u);
        }
      }

      else if (v107 == 1)
      {
        v20 = __nw_create_backtrace_string();
        if (v20)
        {
          v21 = v20;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v22 = gconnectionLogObj;
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = nw_endpoint_get_logging_description(*(v3 + 1));
            *buf = 136446978;
            v110 = "nw_association_unregister";
            v111 = 2082;
            v112 = v24;
            v113 = 2048;
            v114 = v9;
            v115 = 2082;
            v116 = v21;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v21);
          goto LABEL_42;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v29 = type;
        if (os_log_type_enabled(v15, type))
        {
          v30 = nw_endpoint_get_logging_description(*(v3 + 1));
          *buf = 136446722;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = v30;
          v113 = 2048;
          v114 = v9;
          _os_log_impl(&dword_181A37000, v15, v29, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v25 = type;
        if (os_log_type_enabled(v15, type))
        {
          v26 = *(v3 + 1);
          v27 = v26;
          if (v26)
          {
            v28 = _nw_endpoint_get_logging_description(v26);
          }

          else
          {
            v28 = "<NULL>";
          }

          *buf = 136446722;
          v110 = "nw_association_unregister";
          v111 = 2082;
          v112 = v28;
          v113 = 2048;
          v114 = v9;
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_42:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_44;
  }

  v97 = __nwlog_obj();
  *buf = 136446210;
  v110 = "nw_association_unregister";
  v48 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v107 = 0;
  if (__nwlog_fault(v48, &type, &v107))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v98 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v110 = "nw_association_unregister";
        _os_log_impl(&dword_181A37000, v49, v98, "%{public}s called with null association", buf, 0xCu);
      }

      goto LABEL_158;
    }

    if (v107 != 1)
    {
      v49 = __nwlog_obj();
      v105 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v110 = "nw_association_unregister";
        _os_log_impl(&dword_181A37000, v49, v105, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_158;
    }

    v69 = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v101 = type;
    v102 = os_log_type_enabled(v49, type);
    if (!v69)
    {
      if (v102)
      {
        *buf = 136446210;
        v110 = "nw_association_unregister";
        _os_log_impl(&dword_181A37000, v49, v101, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }

      goto LABEL_158;
    }

    if (v102)
    {
      *buf = 136446466;
      v110 = "nw_association_unregister";
      v111 = 2082;
      v112 = v69;
      _os_log_impl(&dword_181A37000, v49, v101, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_99;
  }

LABEL_159:
  if (v48)
  {
LABEL_160:
    free(v48);
  }

LABEL_167:
}

void nw_association_schedule_deactivation(NWConcrete_nw_association *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if ((*(v1 + 76) & 1) == 0 && !v1->deactivation_timer)
  {
    handles = v1->handles;
    if (!handles || !*(handles + 12))
    {
      v4 = nw_path_parameters_copy_context(v1->path_parameters);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___ZL36nw_association_schedule_deactivationP25NWConcrete_nw_association_block_invoke;
      v15[3] = &unk_1E6A3D760;
      v5 = v4;
      v16 = v5;
      v6 = v2;
      v17 = v6;
      v6->deactivation_timer = nw_queue_context_create_source(v5, 2, 3, 0, v15, 0);
      association_dormant_delay = nw_context_get_association_dormant_delay(v5);
      if (!association_dormant_delay)
      {
        association_dormant_delay = 1000 * networkd_settings_get_int64_with_default(nw_setting_association_dormant_delay, 10);
      }

      deactivation_timer = v6->deactivation_timer;
      v9 = dispatch_time(0x8000000000000000, 1000000 * association_dormant_delay);
      nw_queue_set_timer_values(deactivation_timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      nw_queue_activate_source(v6->deactivation_timer, v10);
      if ((nw_path_parameters_get_logging_disabled(v6->path_parameters) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = v6->endpoint;
          v13 = v12;
          if (v12)
          {
            logging_description = _nw_endpoint_get_logging_description(v12);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446722;
          v19 = "nw_association_schedule_deactivation";
          v20 = 2082;
          v21 = logging_description;
          v22 = 2048;
          v23 = association_dormant_delay;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s <nw_association %{public}s> will become dormant after %lldms of inactivity", buf, 0x20u);
        }
      }
    }
  }
}

uint64_t nw_context_get_association_dormant_delay(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[13];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_context_get_association_dormant_delay";
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
        v15 = "nw_context_get_association_dormant_delay";
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
          v15 = "nw_context_get_association_dormant_delay";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_context_get_association_dormant_delay";
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
        v15 = "nw_context_get_association_dormant_delay";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_path_parameters_get_logging_disabled(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 144];
  v17 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 128];
  v18 = v1;
  v19 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 160];
  v2 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 80];
  v13 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 64];
  v14 = v2;
  v3 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 112];
  v15 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 96];
  v16 = v3;
  v4 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 16];
  v9 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters];
  v10 = v4;
  v5 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 48];
  v11 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 32];
  v12 = v5;
  v6 = a1;
  sub_181A41E20(&v9, v8);

  v8[8] = v17;
  v8[9] = v18;
  v8[10] = v19;
  v8[4] = v13;
  v8[5] = v14;
  v8[6] = v15;
  v8[7] = v16;
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  LOBYTE(v6) = sub_181AC7184();
  sub_181A41E7C(&v9);
  return v6 & 1;
}

uint64_t nw_path_parameters_get_logging_disabled(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_path_parameters_get_logging_disabled(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_path_parameters_get_logging_disabled";
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
        v12 = "nw_path_parameters_get_logging_disabled";
        v6 = "%{public}s called with null path_parameters";
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
            v12 = "nw_path_parameters_get_logging_disabled";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null path_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_path_parameters_get_logging_disabled";
        v6 = "%{public}s called with null path_parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_path_parameters_get_logging_disabled";
        v6 = "%{public}s called with null path_parameters, backtrace limit exceeded";
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

BOOL nw_resolver_cancel(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[370] & 0x20) != 0)
    {
LABEL_12:
      os_unfair_lock_lock(v2 + 3);
      nw_resolver_cancel_delayed_reporting_timer(v2);
      if (!*(v2 + 19))
      {
        nw_resolver_cancel_query_locked(v2, 0);
      }

      v8 = *(v2 + 12);
      *(v2 + 12) = 0;

      v9 = *(v2 + 13);
      if (v9)
      {
        v10 = _Block_copy(v9);
        v11 = *(v2 + 13);
        *(v2 + 13) = 0;

        v12 = *(v2 + 14);
        if (v12)
        {
          dispatch_async(v12, v10);
        }

        else
        {
          nw_queue_context_async(*(v2 + 4), v10);
        }
      }

      v13 = *(v2 + 14);
      *(v2 + 14) = 0;

      v14 = *(v2 + 30);
      *(v2 + 30) = 0;

      os_unfair_lock_unlock(v2 + 3);
      goto LABEL_20;
    }

    if (v1[280])
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 136446722;
      v27 = "nw_resolver_cancel";
      v28 = 2082;
      *v29 = v2 + 280;
      *&v29[8] = 2048;
      *&v29[10] = v2;
      v4 = "%{public}s [C%{public}s] %p";
      v5 = v3;
      v6 = 32;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        goto LABEL_12;
      }

      v7 = *(v2 + 91);
      *buf = 136446722;
      v27 = "nw_resolver_cancel";
      v28 = 1024;
      *v29 = v7;
      *&v29[4] = 2048;
      *&v29[6] = v2;
      v4 = "%{public}s [R%u] %p";
      v5 = v3;
      v6 = 28;
    }

    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, v4, buf, v6);
    goto LABEL_11;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_resolver_cancel";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v17, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_resolver_cancel";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "nw_resolver_cancel";
          v28 = 2082;
          *v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "nw_resolver_cancel";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_resolver_cancel";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_37:
  if (v17)
  {
    free(v17);
  }

LABEL_20:

  return v2 != 0;
}

uint64_t nw_path_evaluator_cancel(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (!v1)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock(v1 + 24);
  if ((v1[107] & 0x20) != 0)
  {
    os_unfair_lock_unlock(v1 + 24);
LABEL_8:
    v4 = 0;
    goto LABEL_71;
  }

  if ((v1[107] & 0x40) != 0)
  {
    v2 = nw_parameters_copy_context(*(v1 + 1));
    if (!v2 || (v3 = v2[33], v2, v3 != 4))
    {
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v5 = gpathLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_cancel";
        *&buf[12] = 1042;
        *&buf[14] = 16;
        *&buf[18] = 2098;
        *&buf[20] = v1 + 80;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public,uuid_t}.16P] cancel", buf, 0x1Cu);
      }
    }
  }

  v1[107] |= 0x20u;
  v6 = *(v1 + 8);
  *(v1 + 8) = 0;

  v7 = *(v1 + 9);
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = v8;
    v10 = *(v1 + 7);
    if (v10)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __nw_path_evaluator_cancel_block_invoke;
      block[3] = &unk_1E6A3CE48;
      v11 = &v46;
      v46 = v8;
      dispatch_async(v10, block);
    }

    else
    {
      v13 = nw_parameters_copy_context(*(v1 + 1));
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __nw_path_evaluator_cancel_block_invoke_2;
      v43[3] = &unk_1E6A3CE48;
      v44 = v9;
      nw_queue_context_async(v13, v43);

      v11 = &v44;
    }

    v12 = *(v1 + 9);
  }

  else
  {
    v12 = 0;
  }

  *(v1 + 9) = 0;

  v14 = *(v1 + 7);
  *(v1 + 7) = 0;

  v15 = nw_parameters_copy_context(*(v1 + 1));
  globals_for_path = nw_context_get_globals_for_path(v15);

  os_unfair_lock_lock((globals_for_path + 116));
  if ((v1[107] & 1) == 0)
  {
    memset(buf, 0, 37);
    uuid_unparse(v1 + 80, buf);
    v17 = *(globals_for_path + 32);
    if (v17)
    {
      nw_dictionary_set_value(v17, buf, 0);
    }

    goto LABEL_61;
  }

  uuid_clear(v1 + 80);
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (sNWIsBetweenForkAndExec != 1 || (sNWParentAllowedDispatch & 1) == 0)
  {
    if (sNWDispatchAllowedNow)
    {
LABEL_31:
      if (!*(globals_for_path + 48))
      {
        goto LABEL_61;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_cancel";
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s Removing client from default path evaluator", buf, 0xCu);
      }

      v19 = *(globals_for_path + 48);
      v20 = v1;
      v21 = v19 ? _nw_array_duplicate_array_without_object(v19, v20) : _nw_array_create();
      v22 = v21;

      v23 = *(globals_for_path + 48);
      *(globals_for_path + 48) = v22;

      v24 = *(globals_for_path + 48);
      if (v24)
      {
        if (_nw_array_get_count(v24))
        {
          goto LABEL_61;
        }
      }

      v25 = nw_parameters_copy_context(*(v1 + 1));
      nw_path_shared_necp_fd(v25);

      if (!necp_client_action())
      {
        goto LABEL_58;
      }

      v26 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v27 = __nwlog_obj();
      *buf = 136446466;
      *&buf[4] = "nw_path_evaluator_cancel";
      *&buf[12] = 1024;
      *&buf[14] = v26;
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v41 = 0;
      if (__nwlog_fault(v28, &type, &v41))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_cancel";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v41 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v29 = __nwlog_obj();
          v32 = type;
          v33 = os_log_type_enabled(v29, type);
          if (backtrace_string)
          {
            if (v33)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_evaluator_cancel";
              *&buf[12] = 1024;
              *&buf[14] = v26;
              *&buf[18] = 2082;
              *&buf[20] = backtrace_string;
              _os_log_impl(&dword_181A37000, v29, v32, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(backtrace_string);
            goto LABEL_56;
          }

          if (v33)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_cancel";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, v29, v32, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v29 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v29, type))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_cancel";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, v29, v34, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_56:
      if (v28)
      {
        free(v28);
      }

LABEL_58:
      uuid_clear(globals_for_path);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_cancel";
        _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s Removed last default path evaluator client", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0 && (_dispatch_is_multithreaded() & 1) != 0 || (getpid(), sandbox_check() == 1))
    {
      sNWDispatchAllowedNow = 1;
      goto LABEL_31;
    }

    if (sNWDispatchAllowedNow == 1)
    {
      goto LABEL_31;
    }
  }

LABEL_61:
  v36 = nw_parameters_copy_context(*(v1 + 1));
  if (nw_context_is_inline(v36))
  {
    v37 = *(globals_for_path + 32);
    if (!v37 || !nw_dictionary_get_count(v37))
    {
      v38 = *(globals_for_path + 48);
      if (!v38 || _nw_array_is_empty(v38))
      {
        if (*(globals_for_path + 56))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_evaluator_cancel";
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s Suspending global NECP read source", buf, 0xCu);
          }

          *(globals_for_path + 136) |= 1u;
          nw_queue_suspend_source(*(globals_for_path + 56));
        }
      }
    }
  }

  os_unfair_lock_unlock((globals_for_path + 116));
  os_unfair_lock_unlock(v1 + 24);

  v4 = 1;
LABEL_71:

  return v4;
}

void sub_181C62108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, objc_super a18)
{
  a18.receiver = a12;
  a18.super_class = NWConcrete_nw_endpoint_handler;
  [(_Unwind_Exception *)&a18 dealloc];
  _Unwind_Resume(a1);
}

void sub_181C62F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = NWConcrete_nw_resolver;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void nw_resolver_deallocate_cache_entry(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  a2[1] = 0;

  v5 = a2[2];
  a2[2] = 0;

  free(a2);
}

void nw_protocol_definition_deallocate_cache_entry(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_definition_deallocate_cache_entry";
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
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
          v29 = "nw_protocol_definition_deallocate_cache_entry";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v5 = *(v3 + 9);
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_definition_deallocate_cache_entry";
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null definition->common_state", buf, 0xCu);
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v20)
    {
      *buf = 136446466;
      v29 = "nw_protocol_definition_deallocate_cache_entry";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_definition_deallocate_cache_entry";
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition->common_state->deallocate_cache_entry", buf, 0xCu);
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null definition->common_state->deallocate_cache_entry, backtrace limit exceeded", buf, 0xCu);
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
        v29 = "nw_protocol_definition_deallocate_cache_entry";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null definition->common_state->deallocate_cache_entry, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_protocol_definition_deallocate_cache_entry";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null definition->common_state->deallocate_cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v18);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v6(v3, a2);
LABEL_5:
}

void nw_context_remove_cache_entry(void *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      v5 = v3;
      v6 = v5;
      if ((v5[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v5[1]);
      }

      v4 = nw_context_copy_cache_context(v6);
      v7 = a2[2];
      if (v7 || a2[3])
      {
        v8 = v4[3];
        v9 = *(v8 + 64);
        if (v9)
        {
          *(v8 + 64) = v9 - 1;
        }

        v10 = a2[3];
        if (v7)
        {
          *(v7 + 24) = v10;
        }

        else
        {
          *(v8 + 24) = v10;
        }

        *v10 = v7;
        a2[2] = 0;
        a2[3] = 0;
      }

      v11 = *a2;
      v12 = a2[1];
      if (*a2)
      {
        *(v11 + 8) = v12;
        v13 = v4[3];
      }

      else
      {
        v13 = v4[3];
        *(v13 + 8) = v12;
      }

      *v12 = v11;
      *a2 = 0;
      a2[1] = 0;
      v14 = *(v13 + 68);
      if (v14)
      {
        *(v13 + 68) = v14 - 1;
      }

      goto LABEL_18;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_context_remove_cache_entry";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v20, &type, &v31))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v34 = "nw_context_remove_cache_entry";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null cache_entry", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v21, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v34 = "nw_context_remove_cache_entry";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_54;
      }

      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_context_remove_cache_entry";
        _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null cache_entry, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v34 = "nw_context_remove_cache_entry";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null cache_entry, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_18;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_context_remove_cache_entry";
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v16, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v34 = "nw_context_remove_cache_entry";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v34 = "nw_context_remove_cache_entry";
          v35 = 2082;
          v36 = v23;
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_48;
      }

      if (v25)
      {
        *buf = 136446210;
        v34 = "nw_context_remove_cache_entry";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v34 = "nw_context_remove_cache_entry";
        _os_log_impl(&dword_181A37000, v17, v29, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v16)
  {
    free(v16);
  }

  v4 = 0;
LABEL_18:
}

id *nw_resolver_create_with_path(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [NWConcrete_nw_resolver alloc];
    v3 = v1;
    v4 = _nw_path_copy_endpoint(v3);

    v5 = nw_path_copy_derived_parameters(v3);
    v6 = [(NWConcrete_nw_resolver *)v2 initWithEndpoint:v4 parameters:v5 path:v3 log_str:0];

    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_resolver_create_with_path";
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
        v19 = "nw_resolver_create_with_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
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
          v19 = "nw_resolver_create_with_path";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_resolver_create_with_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_resolver_create_with_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_3:

  return v6;
}

uint64_t nw_resolver_get_next_log_id(void)
{
  v7 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(nw_resolver_get_next_log_id(void)::s_last_id, 1u);
  result = add + 1;
  if (add == -2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446466;
      v4 = "nw_resolver_get_next_log_id";
      v5 = 1024;
      v6 = -1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached %u resolver logging ids, wrapping", &v3, 0x12u);
    }

    return nw_resolver_get_next_log_id();
  }

  return result;
}

uint64_t nw_array_apply(void *a1, void *a2)
{
  if (a1)
  {
    return _nw_array_apply(a1, a2);
  }

  else
  {
    return 1;
  }
}

char *nw_array_get_count(char *a1)
{
  if (a1)
  {
    return _nw_array_get_count(a1);
  }

  return a1;
}

void ___ZL37nw_resolver_update_client_alternativeP22NWConcrete_nw_resolverPU25objcproto14OS_nw_endpoint8NSObjectPU36objcproto25OS_nw_protocol_definitionS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  os_unfair_lock_lock(v2 + 3);
  v4 = *&v3[24]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 3);

  if (v4)
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

void *nw_endpoint_copy(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy";
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
        v16 = "nw_endpoint_copy";
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
          v16 = "nw_endpoint_copy";
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
        v16 = "nw_endpoint_copy";
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
        v16 = "nw_endpoint_copy";
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

id nw_endpoint_handler_copy_endpoint_for_alternatives(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v8, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
          _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v20)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v8)
    {
LABEL_23:
      v6 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v8);
    goto LABEL_23;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &type, &v22))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v11 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (v11)
      {
        if (v13)
        {
          *buf = 136446466;
          v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
          v26 = 2082;
          v27 = v11;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v11);
        if (!v8)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v25 = "nw_endpoint_handler_copy_endpoint_for_alternatives";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v5 = nw_endpoint_handler_copy_resolver(v3);
  v6 = v5[13];

LABEL_24:
  return v6;
}

uint64_t ___ZL36nw_endpoint_transform_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 1;
  if (v5)
  {
    if (v6)
    {
      if (v5 != &__block_literal_global_7016)
      {
        v9 = *(*(a1 + 32) + 32);
        if (v9)
        {
          if (_nw_array_contains_object(v9, v7))
          {
            minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 40));
            logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
            if (minimize_logging)
            {
              if (logging_disabled)
              {
                goto LABEL_16;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v12 = gconnectionLogObj;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                loga = nw_endpoint_handler_get_id_string(*(a1 + 40));
                v24 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
                v25 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
                logging_description = nw_endpoint_get_logging_description(v25);
                v27 = nw_endpoint_handler_state_string(*(a1 + 40));
                v28 = nw_endpoint_handler_mode_string(*(a1 + 40));
                v29 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
                *buf = 136448002;
                v33 = "nw_endpoint_transform_receive_report_block_invoke";
                v34 = 2082;
                v35 = loga;
                v36 = 2082;
                v37 = v24;
                v38 = 2082;
                v39 = logging_description;
                v40 = 2082;
                v41 = v27;
                v42 = 2082;
                v43 = v28;
                v44 = 2114;
                v45 = v29;
                v46 = 2114;
                v47 = v7;
                _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] updated endpoint alternatives allow %{public}@, restarting", buf, 0x52u);
              }
            }

            else
            {
              if (logging_disabled)
              {
LABEL_16:
                v8 = 0;
                *(*(a1 + 32) + 96) = 1;
                *(*(*(a1 + 48) + 8) + 24) = 1;
                goto LABEL_17;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v12 = gconnectionLogObj;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
                v14 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
                v15 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
                v16 = v15;
                log = v12;
                if (v15)
                {
                  v17 = _nw_endpoint_get_logging_description(v15);
                  v18 = v14;
                  v19 = id_string;
                }

                else
                {
                  v18 = v14;
                  v19 = id_string;
                  v17 = "<NULL>";
                }

                v20 = nw_endpoint_handler_state_string(*(a1 + 40));
                v21 = nw_endpoint_handler_mode_string(*(a1 + 40));
                v22 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
                *buf = 136448002;
                v33 = "nw_endpoint_transform_receive_report_block_invoke";
                v34 = 2082;
                v35 = v19;
                v36 = 2082;
                v37 = v18;
                v38 = 2082;
                v39 = v17;
                v40 = 2082;
                v41 = v20;
                v42 = 2082;
                v43 = v21;
                v44 = 2114;
                v45 = v22;
                v46 = 2114;
                v47 = v7;
                v12 = log;
                _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] updated endpoint alternatives allow %{public}@, restarting", buf, 0x52u);
              }
            }

            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_17:

  return v8;
}

unint64_t sub_181C64FFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_181C65A88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_181C65504(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void addCategories(objc_class *a1, objc_class *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v3[i]);
      if (!class_respondsToSelector(a2, Name))
      {
        Implementation = method_getImplementation(v3[i]);
        v9 = dyld_image_path_containing_address();
        if (!v9 || (v10 = v9, !strstr(v9, "CFNetwork.framework")) && !strstr(v10, "FoundationNetworking.framework"))
        {
          v5 = method_getName(v3[i]);
          TypeEncoding = method_getTypeEncoding(v3[i]);
          class_addMethod(a2, v5, Implementation, TypeEncoding);
        }
      }
    }
  }

  free(v3);
}

char *nw_application_id_create_with_uuid(unsigned __int8 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!uuid_is_null(a1))
  {
    v2 = [NWConcrete_nw_application_id alloc];

    return [NWConcrete_nw_application_id initWithUUID:v2 auditToken:a1 pid:0 bundleID:0 isBundleIDExternal:0 systemService:?];
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_application_id_create_with_uuid";
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
        v14 = "nw_application_id_create_with_uuid";
        v8 = "%{public}s uuid is null";
LABEL_18:
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
            v14 = "nw_application_id_create_with_uuid";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s uuid is null, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_application_id_create_with_uuid";
        v8 = "%{public}s uuid is null, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_application_id_create_with_uuid";
        v8 = "%{public}s uuid is null, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t sub_181C65504(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t nw_settings_get_unified_http_enabled()
{
  v0 = nw_setting_enable_unified_http;
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
    v3 = xpc_BOOL_get_value(v5);
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

uint64_t __nw_utilities_get_self_bundle_id_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetValueForInfoDictionaryKey(result, *MEMORY[0x1E695E4F0]);
    if (result)
    {
      v1 = result;
      result = CFStringGetLength(result);
      if (result >= 1)
      {
        result = nw_utilities_create_c_string_from_cfstring(v1);
        nw_utilities_get_self_bundle_id::bundle_identifier_string = result;
      }
    }
  }

  return result;
}

void nw_context_set_isolate_protocol_cache(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_context_set_isolate_protocol_cache";
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
          v20 = "nw_context_set_isolate_protocol_cache";
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
            v20 = "nw_context_set_isolate_protocol_cache";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_context_set_isolate_protocol_cache";
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
          v20 = "nw_context_set_isolate_protocol_cache";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_9;
  }

  v5 = v3[152];
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if (a2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    v4[152] = v5 & 0xFD | v8;
LABEL_9:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v20 = "nw_context_set_isolate_protocol_cache";
  v7 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v7))
  {
    free(v7);
    v5 = v4[152];
    goto LABEL_5;
  }

  __break(1u);
}

unint64_t sub_181C65A88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_181F7EBE8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_182AD3CF8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

double nw_application_id_create_self()
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  *__n = 0u;
  v13 = 0u;
  v11 = 0u;
  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v0 = nw_context_copy_implicit_context::implicit_context;
  nw_path_shared_necp_fd(v0);

  if (necp_client_action())
  {
    v1 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_application_id_create_self";
      *&buf[12] = 1024;
      *&buf[14] = v1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_GET_SIGNED_CLIENT_ID %{darwin.errno}d", buf, 0x12u);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "nw_application_id_create_self";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v9 = 2096;
      v10 = &v11;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Got client UUID=%{uuid_t}.16P", buf, 0x1Cu);
    }

    v5 = nw_application_id_create_with_uuid(&v11);
    if (v5)
    {
      v6 = LODWORD(__n[0]);
      if ((LODWORD(__n[0]) - 1) <= 0x1F)
      {
        *(v5 + 8) = __n[0];
        v7 = v5;
        memcpy(v5 + 36, __n + 4, v6);
        *buf = 0;
        *&buf[8] = 0;
        if (nw_application_id_get_current_persona(buf))
        {
          result = *buf;
          *(v7 + 88) = *buf;
        }
      }
    }
  }

  return result;
}

void __nw_utilities_get_self_name_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  v0 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  nw_utilities_get_self_name::name = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (!nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
    buffer = 0u;
    memset(v6, 0, sizeof(v6));
    v1 = getpid();
    if (proc_pidinfo(v1, 13, 1uLL, &buffer, 64) != 64 || !LOBYTE(v6[0]))
    {
      if (nw_utilities_get_self_name::name)
      {
        return;
      }

      goto LABEL_10;
    }

    v2 = strdup(v6);
    if (!v2)
    {
      v3 = __nwlog_obj();
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      v7 = 136446210;
      v8 = "strict_strdup";
      v4 = _os_log_send_and_compose_impl();

      if (__nwlog_should_abort(v4))
      {
        __break(1u);
        return;
      }

      free(v4);
      v2 = 0;
      v0 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }

    v0[77].cache = v2;
    if (!v2)
    {
LABEL_10:
      v0[77].cache = getprogname();
    }
  }
}

char *nw_utilities_create_c_string_from_cfstring(const __CFString *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_utilities_create_c_string_from_cfstring";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v8, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v11 = "%{public}s called with null stringRef";
        goto LABEL_26;
      }

      if (v30 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v11 = "%{public}s called with null stringRef, backtrace limit exceeded";
        goto LABEL_26;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v29 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v29)
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v11 = "%{public}s called with null stringRef, no backtrace";
        goto LABEL_26;
      }

      if (v29)
      {
        *buf = 136446466;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null stringRef, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_29:
    if (!v8)
    {
      return 0;
    }

    goto LABEL_30;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding == -1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v33 = "nw_utilities_create_c_string_from_cfstring";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &type, &v30))
    {
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v11 = "%{public}s CFStringGetMaximumSizeForEncoding failed";
LABEL_26:
        v23 = v9;
        v24 = v10;
LABEL_27:
        _os_log_impl(&dword_181A37000, v23, v24, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v30 == 1)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v9, type);
        if (v17)
        {
          if (v19)
          {
            *buf = 136446466;
            v33 = "nw_utilities_create_c_string_from_cfstring";
            v34 = 2082;
            v35 = v17;
            _os_log_impl(&dword_181A37000, v9, v18, "%{public}s CFStringGetMaximumSizeForEncoding failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          if (!v8)
          {
            return 0;
          }

LABEL_30:
          result = v8;
LABEL_39:
          free(result);
          return 0;
        }

        if (!v19)
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v11 = "%{public}s CFStringGetMaximumSizeForEncoding failed, no backtrace";
        v23 = v9;
        v24 = v18;
        goto LABEL_27;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v11 = "%{public}s CFStringGetMaximumSizeForEncoding failed, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v4 = MaximumSizeForEncoding;
  v5 = nw_calloc_type<unsigned char>(MaximumSizeForEncoding + 1);
  if (CFStringGetCString(a1, v5, v4 + 1, 0x8000100u))
  {
    return v5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v33 = "nw_utilities_create_c_string_from_cfstring";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v13, &type, &v30))
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
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v16 = "%{public}s CFStringGetCString failed";
LABEL_33:
        v25 = v14;
        v26 = v15;
LABEL_34:
        _os_log_impl(&dword_181A37000, v25, v26, v16, buf, 0xCu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if (v30 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v33 = "nw_utilities_create_c_string_from_cfstring";
        v16 = "%{public}s CFStringGetCString failed, backtrace limit exceeded";
        goto LABEL_33;
      }

LABEL_35:

      goto LABEL_36;
    }

    v20 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v14, type);
    if (!v20)
    {
      if (!v22)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v33 = "nw_utilities_create_c_string_from_cfstring";
      v16 = "%{public}s CFStringGetCString failed, no backtrace";
      v25 = v14;
      v26 = v21;
      goto LABEL_34;
    }

    if (v22)
    {
      *buf = 136446466;
      v33 = "nw_utilities_create_c_string_from_cfstring";
      v34 = 2082;
      v35 = v20;
      _os_log_impl(&dword_181A37000, v14, v21, "%{public}s CFStringGetCString failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v20);
  }

LABEL_36:
  if (v13)
  {
    free(v13);
  }

  result = v5;
  if (v5)
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t nw_application_id_get_current_persona(unsigned __int8 *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  uuid_clear(a1);
  gotLoadHelper_x19__OBJC_CLASS___UMUserManager(v3);
  if (objc_opt_class())
  {
    v4 = [*(v1 + 96) sharedManager];
    v5 = [v4 currentPersona];
    v6 = [v5 userPersonaUniqueString];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
      v8 = v7;
      if (v7)
      {
        [v7 getUUIDBytes:a1];
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v13 = 136446722;
          v14 = "nw_application_id_get_current_persona";
          v15 = 1040;
          v16 = 16;
          v17 = 2096;
          v18 = a1;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s Current persona id is '%{uuid_t}.16P'", &v13, 0x1Cu);
        }

        v10 = 1;
        goto LABEL_14;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 136446210;
        v14 = "nw_application_id_get_current_persona";
        v11 = "%{public}s Failed to get current persona id, personaUniqueIdentifier is not a valid UUID";
        goto LABEL_12;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 136446210;
        v14 = "nw_application_id_get_current_persona";
        v11 = "%{public}s Failed to get current persona id, no personaUniqueIdentifier set";
LABEL_12:
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, v11, &v13, 0xCu);
      }
    }

    v10 = 0;
LABEL_14:

    return v10;
  }

  return 0;
}

uint64_t NWApplicationID.encode(to:)(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = sub_182AD2088();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4608();
  v24[0] = 0;
  v8 = nw_application_id_copy_serialized_bytes(v7, v24);
  v9 = v24[0];
  (*(v4 + 104))(v6, *MEMORY[0x1E6969000], v3);
  sub_182AD2078();
  if (!v9)
  {
    v13 = sub_182AD2078();
    v13(v8, 0);

    (*(v4 + 8))(v6, v3);
    v11 = 0;
    v12 = 0xC000000000000000;
    goto LABEL_18;
  }

  sub_182AD1DB8();
  swift_allocObject();

  v10 = sub_182AD1D38();
  if (v9 > 14)
  {

    (*(v4 + 8))(v6, v3);
    if (v9 >= 0x7FFFFFFF)
    {
      sub_182AD20C8();
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      *(v11 + 24) = v9;
      v12 = v10 | 0x8000000000000000;
    }

    else
    {
      v11 = v9 << 32;
      v12 = v10 | 0x4000000000000000;
    }

    goto LABEL_18;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = sub_182AD1D58();
  if (v14)
  {
    v15 = sub_182AD1D88();
    if (!__OFSUB__(0, v15))
    {
      v14 -= v15;
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
  }

LABEL_10:
  v16 = sub_182AD1D78();
  if (v16 >= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = &v14[v17];
  if (v14)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v11 = sub_181E68460(v14, v19);
  v21 = v20;

  (*(v4 + 8))(v6, v3);
  v12 = v21 & 0xFFFFFFFFFFFFFFLL;
LABEL_18:
  v24[1] = v11;
  v24[2] = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  sub_181C675F8();
  sub_182AD4208();
  sub_181C1F2E4(v11, v12);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t nw_application_id_copy_serialized_bytes(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_application_id_copy_serialized_bytes";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v23, &type, &v35))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v38 = "nw_application_id_copy_serialized_bytes";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null application_id", buf, 0xCu);
      }

      goto LABEL_64;
    }

    if (v35 != 1)
    {
      v24 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v38 = "nw_application_id_copy_serialized_bytes";
        _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null application_id, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_64;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v29 = type;
    v30 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        v38 = "nw_application_id_copy_serialized_bytes";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null application_id, no backtrace", buf, 0xCu);
      }

      goto LABEL_64;
    }

    if (v30)
    {
      *buf = 136446466;
      v38 = "nw_application_id_copy_serialized_bytes";
      v39 = 2082;
      v40 = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null application_id, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_52;
  }

  if (!a2)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_application_id_copy_serialized_bytes";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v23, &type, &v35))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v38 = "nw_application_id_copy_serialized_bytes";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null length", buf, 0xCu);
      }

LABEL_64:

LABEL_65:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_5;
    }

    if (v35 != 1)
    {
      v24 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v38 = "nw_application_id_copy_serialized_bytes";
        _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_64;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v38 = "nw_application_id_copy_serialized_bytes";
        _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null length, no backtrace", buf, 0xCu);
      }

      goto LABEL_64;
    }

    if (v32)
    {
      *buf = 136446466;
      v38 = "nw_application_id_copy_serialized_bytes";
      v39 = 2082;
      v40 = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_52:

    free(backtrace_string);
    goto LABEL_65;
  }

  *a2 = 0;
  if (uuid_is_null(v3 + 16) || (v5 = *(v4 + 8), v5 > 0x20))
  {
LABEL_5:
    v6 = 0;
LABEL_6:

    return v6;
  }

  v8 = v5 + 36;
  v9 = malloc_type_malloc(v5 + 36, 0x6937AA6BuLL);
  v6 = v9;
  if (v9)
  {
    *v9 = *(v4 + 1);
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v38 = "nw_application_id_copy_serialized_bytes";
  v11 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    MEMORY[0] = *(v4 + 1);
LABEL_11:
    v6[1] = *(v4 + 88);
    *(v6 + 8) = *(v4 + 8);
    v12 = v6 + 36;
    v13 = *(v4 + 8);
    if (v13)
    {
      memcpy(v6 + 36, v4 + 36, v13);
      v12 += *(v4 + 8);
    }

    *a2 = v8;
    if (v12 - v6 == v8)
    {
      goto LABEL_6;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136447234;
    v38 = "nw_application_id_copy_serialized_bytes";
    v39 = 2048;
    v40 = v12;
    v41 = 2048;
    v42 = v6;
    v43 = 2048;
    v44 = v12 - v6;
    v45 = 2048;
    v46 = v8;
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v15, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136447234;
          v38 = "nw_application_id_copy_serialized_bytes";
          v39 = 2048;
          v40 = v12;
          v41 = 2048;
          v42 = v6;
          v43 = 2048;
          v44 = v12 - v6;
          v45 = 2048;
          v46 = v8;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s serialized bytes are the wrong size, cursor %p, serialized data %p, difference %ld, length needed %zu", buf, 0x34u);
        }
      }

      else if (v35 == 1)
      {
        v18 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v16, type);
        if (v18)
        {
          if (v20)
          {
            *buf = 136447490;
            v38 = "nw_application_id_copy_serialized_bytes";
            v39 = 2048;
            v40 = v12;
            v41 = 2048;
            v42 = v6;
            v43 = 2048;
            v44 = v12 - v6;
            v45 = 2048;
            v46 = v8;
            v47 = 2082;
            v48 = v18;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s serialized bytes are the wrong size, cursor %p, serialized data %p, difference %ld, length needed %zu, dumping backtrace:%{public}s", buf, 0x3Eu);
          }

          free(v18);
          if (!v15)
          {
            goto LABEL_6;
          }

          goto LABEL_32;
        }

        if (v20)
        {
          *buf = 136447234;
          v38 = "nw_application_id_copy_serialized_bytes";
          v39 = 2048;
          v40 = v12;
          v41 = 2048;
          v42 = v6;
          v43 = 2048;
          v44 = v12 - v6;
          v45 = 2048;
          v46 = v8;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s serialized bytes are the wrong size, cursor %p, serialized data %p, difference %ld, length needed %zu, no backtrace", buf, 0x34u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136447234;
          v38 = "nw_application_id_copy_serialized_bytes";
          v39 = 2048;
          v40 = v12;
          v41 = 2048;
          v42 = v6;
          v43 = 2048;
          v44 = v12 - v6;
          v45 = 2048;
          v46 = v8;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s serialized bytes are the wrong size, cursor %p, serialized data %p, difference %ld, length needed %zu, backtrace limit exceeded", buf, 0x34u);
        }
      }
    }

    if (!v15)
    {
      goto LABEL_6;
    }

LABEL_32:
    free(v15);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_181C675F8()
{
  result = qword_1EA836DC0;
  if (!qword_1EA836DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836DC0);
  }

  return result;
}

uint64_t NWApplicationID.init(from:)@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  sub_181C67934();
  sub_182AD41D8();
  v5 = v20;
  v6 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v20 + 6) = 0;
      *&v20 = 0;
      v8 = &v20;
      v7 = 0;
      goto LABEL_22;
    }

    v9 = *(v20 + 16);
    v10 = *(v20 + 24);
    v11 = sub_182AD1D58();
    if (v11)
    {
      v12 = sub_182AD1D88();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_30;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_28;
    }

    result = sub_182AD1D78();
    if (v11)
    {
LABEL_17:
      if (result >= v14)
      {
        v7 = v14;
      }

      else
      {
        v7 = result;
      }

      v8 = v11;
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE14(v20);
    v8 = &v20;
LABEL_22:
    v19 = nw_application_id_create_with_serialized_bytes(v8, v7);
    if (v19)
    {
      sub_181C1F2E4(v5, *(&v5 + 1));
      *a2 = v19;
    }

    else
    {
      sub_182AD3C98();
      swift_allocError();
      sub_182AD3C68();
      swift_willThrow();
      sub_181C1F2E4(v5, *(&v5 + 1));
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = (v20 >> 32) - v20;
  if (v20 >> 32 < v20)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v16 = sub_182AD1D58();
  if (!v16)
  {
    result = sub_182AD1D78();
    goto LABEL_32;
  }

  v17 = v16;
  v18 = sub_182AD1D88();
  if (__OFSUB__(v20, v18))
  {
    goto LABEL_29;
  }

  v11 = v20 - v18 + v17;
  result = sub_182AD1D78();
  if (v11)
  {
    goto LABEL_17;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_181C67934()
{
  result = qword_1EA836B30;
  if (!qword_1EA836B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836B30);
  }

  return result;
}

char *nw_application_id_create_with_serialized_bytes(__int128 *a1, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_application_id_create_with_serialized_bytes";
    v8 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v8, type, &v25))
    {
      goto LABEL_56;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (os_log_type_enabled(v9, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null data", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v22 = type[0];
      if (os_log_type_enabled(v9, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v16 = type[0];
    v17 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v17)
    {
      *buf = 136446466;
      *&buf[4] = "nw_application_id_create_with_serialized_bytes";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_37:

    free(backtrace_string);
    goto LABEL_56;
  }

  if (a2 <= 0x23)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_application_id_create_with_serialized_bytes";
    v8 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v8, type, &v25))
    {
      goto LABEL_56;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v9, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null (length >= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t)))", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v23 = type[0];
      if (os_log_type_enabled(v9, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null (length >= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t))), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v18 = type[0];
    v19 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null (length >= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t))), no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v19)
    {
      *buf = 136446466;
      *&buf[4] = "nw_application_id_create_with_serialized_bytes";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null (length >= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t))), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (a2 < 0x45)
  {
    v3 = *a1;
    *type = a1[1];
    *buf = v3;
    result = nw_application_id_create_with_uuid(buf);
    if (result)
    {
      *(result + 88) = *type;
      v5 = *(a1 + 8);
      *(result + 8) = v5;
      if ((v5 - 1) <= 0x1F)
      {
        v6 = result;
        memcpy(result + 36, a1 + 36, v5);
        return v6;
      }
    }

    return result;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_application_id_create_with_serialized_bytes";
  v8 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v8, type, &v25))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v9, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null (length <= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t) + 32))", buf, 0xCu);
      }

LABEL_55:

      goto LABEL_56;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type[0];
      if (os_log_type_enabled(v9, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null (length <= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t) + 32)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v20 = type[0];
    v21 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        *&buf[4] = "nw_application_id_create_with_serialized_bytes";
        _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null (length <= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t) + 32)), no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v21)
    {
      *buf = 136446466;
      *&buf[4] = "nw_application_id_create_with_serialized_bytes";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null (length <= (sizeof(uuid_t) + sizeof(uuid_t) + sizeof(uint32_t) + 32)), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_37;
  }

LABEL_56:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_application_id_set_self(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v16 = 1;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  nw_application_id_get_uuid(v1, v23);
  v2 = v1[8];
  if ((v2 - 1) <= 0x1F)
  {
    LODWORD(v23[1]) = v1[8];
    memcpy(&v23[1] + 4, v1 + 9, v2);
  }

  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v3 = nw_context_copy_implicit_context::implicit_context;
  nw_path_shared_necp_fd(v3);

  if (!necp_client_action())
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446466;
  v18 = "nw_application_id_set_self";
  v19 = 1024;
  v20 = v4;
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446466;
        v18 = "nw_application_id_set_self";
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s NECP_CLIENT_ACTION_SET_SIGNED_CLIENT_ID %{darwin.errno}d", buf, 0x12u);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446722;
          v18 = "nw_application_id_set_self";
          v19 = 1024;
          v20 = v4;
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v11, "%{public}s NECP_CLIENT_ACTION_SET_SIGNED_CLIENT_ID %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        if (v6)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "nw_application_id_set_self";
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s NECP_CLIENT_ACTION_SET_SIGNED_CLIENT_ID %{darwin.errno}d, no backtrace", buf, 0x12u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446466;
        v18 = "nw_application_id_set_self";
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_181A37000, v7, v13, "%{public}s NECP_CLIENT_ACTION_SET_SIGNED_CLIENT_ID %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
      }
    }
  }

  if (v6)
  {
LABEL_12:
    free(v6);
  }

LABEL_14:

  return v4;
}

void nw_application_id_get_uuid(void *a1, _OWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_application_id_get_uuid";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_application_id_get_uuid";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null application_id", buf, 0xCu);
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
          v23 = "nw_application_id_get_uuid";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null application_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v7);
        goto LABEL_8;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_application_id_get_uuid";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null application_id, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_application_id_get_uuid";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null application_id, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (a2)
  {
    if (uuid_is_null(v3 + 16))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v23 = "nw_application_id_get_uuid";
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %@ has no uuid", buf, 0x16u);
      }
    }

    else
    {
      *a2 = *(v4 + 1);
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_application_id_get_uuid";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_application_id_get_uuid";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null out_uuid", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_application_id_get_uuid";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null out_uuid, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
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
      v23 = "nw_application_id_get_uuid";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null out_uuid, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_application_id_get_uuid";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_43;
  }

LABEL_8:
}

void nw_parameters_set_expired_dns_behavior(nw_parameters_t parameters, nw_parameters_expired_dns_behavior_t expired_dns_behavior)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_expired_dns_behavior();
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_expired_dns_behavior";
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
        v12 = "nw_parameters_set_expired_dns_behavior";
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
            v12 = "nw_parameters_set_expired_dns_behavior";
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
        v12 = "nw_parameters_set_expired_dns_behavior";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_expired_dns_behavior";
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

void nw_parameters_set_no_cellular_fallback(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_no_cellular_fallback();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_no_cellular_fallback";
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
        v11 = "nw_parameters_set_no_cellular_fallback";
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
            v11 = "nw_parameters_set_no_cellular_fallback";
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
        v11 = "nw_parameters_set_no_cellular_fallback";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_no_cellular_fallback";
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

uint64_t nw_resolver_config_get_proxy_agent(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_proxy_agent_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_proxy_agent_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_proxy_agent";
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
        *&buf[4] = "nw_resolver_config_get_proxy_agent";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_proxy_agent";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_proxy_agent";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_proxy_agent";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void sub_181C692F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_resolver_config_get_proxy_agent_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_string(v2, "ProxyAgent");
}

void nw_resolver_config_get_identifier(void *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    *a2 = *(v3 + 24);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_config_get_identifier";
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
        v15 = "nw_resolver_config_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_resolver_config_get_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

uint64_t nw_resolver_config_get_provider_name(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_provider_name_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_provider_name_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_provider_name";
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
        *&buf[4] = "nw_resolver_config_get_provider_name";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_provider_name";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_name";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_name";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void sub_181C6996C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_resolver_config_get_provider_name_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_string(v2, "ProviderName");
}

uint64_t nw_resolver_config_get_allow_failover(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_allow_failover_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_allow_failover_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_allow_failover";
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
        *&buf[4] = "nw_resolver_config_get_allow_failover";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_allow_failover";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_allow_failover";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_allow_failover";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

  return v4 & 1;
}

void sub_181C69D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_resolver_config_get_allow_failover_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(v2, "AllowFailover");
}

void nw_parameters_set_source_application_by_bundle_id_internal(void *a1, char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_parameters_set_effective_bundle_id(v3, a2);
    v5 = NEHelperCacheCopyAppUUIDMappingExtended();
    v6 = v5;
    if (v5 && object_getClass(v5) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v6))
    {
      _nw_parameters_set_bundle_id_to_uuid_mapping_failed(v4, 0);
      uuid = xpc_array_get_uuid(v6, 0);
      _nw_parameters_set_e_proc_uuid(v4, uuid);
    }

    else
    {
      _nw_parameters_set_bundle_id_to_uuid_mapping_failed(v4, 1);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v19 = "nw_parameters_set_source_application_by_bundle_id_internal";
        v20 = 2082;
        v21 = a2;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Failed to convert from bundle ID (%{public}s) to UUID. This could lead to incorrect policies and accounting.", buf, 0x16u);
      }
    }

    goto LABEL_8;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_set_source_application_by_bundle_id_internal";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_set_source_application_by_bundle_id_internal";
        v13 = "%{public}s called with null parameters";
LABEL_24:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_parameters_set_source_application_by_bundle_id_internal";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v15)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v19 = "nw_parameters_set_source_application_by_bundle_id_internal";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_24;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_set_source_application_by_bundle_id_internal";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_24;
      }
    }

LABEL_25:
  }

LABEL_26:
  if (v10)
  {
    free(v10);
  }

LABEL_8:
}

id sub_181C6A164(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      sub_181AA39C0(a2);

      v7 = sub_181AA9530;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 1;
      if (a4)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  v12 = sub_181AA9530;
LABEL_9:
  sub_181AA39C0(a4);
  sub_181C6A300(v7, v12, v15);
  v13 = sub_1821F2D80();
  sub_181A554F4(v12);
  sub_181C6B000(v7);
  memcpy(__dst, v15, sizeof(__dst));
  sub_181F48214(__dst);
  return v13;
}

uint64_t sub_181C6A2C0()
{

  return swift_deallocObject();
}

void *sub_181C6A300@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 1) = 0uLL;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v47);
  __src[4] = v51;
  __src[5] = v52;
  __src[6] = v53;
  *&__src[7] = v54;
  __src[0] = v47;
  __src[1] = v48;
  __src[2] = v49;
  __src[3] = v50;
  v4 = v55;
  v5 = v69;
  __src[22] = v70;
  __src[23] = v71;
  *&__src[24] = v72;
  v74[8] = __src[16];
  v74[9] = __src[17];
  v74[10] = __src[18];
  v74[4] = __src[12];
  v74[5] = __src[13];
  v74[7] = __src[15];
  v74[6] = __src[14];
  v74[0] = __src[8];
  v74[1] = __src[9];
  v74[2] = __src[10];
  v74[3] = __src[11];
  sub_181A41E7C(v74);
  sub_181D9D680(0, 0xF000000000000000);
  v6 = v4;
  DWORD2(__src[7]) = v4;
  *(&__src[18] + 12) = v67;
  *(&__src[19] + 12) = *v68;
  *(&__src[20] + 8) = *&v68[12];
  *(&__src[16] + 12) = v65;
  *(&__src[17] + 12) = v66;
  *(&__src[13] + 12) = v62;
  *(&__src[14] + 12) = v63;
  *(&__src[15] + 12) = v64;
  *(&__src[9] + 12) = v58;
  *(&__src[10] + 12) = v59;
  *(&__src[11] + 12) = v60;
  *(&__src[12] + 12) = v61;
  *(&__src[7] + 12) = v56;
  *(&__src[8] + 12) = v57;
  *(&__src[21] + 1) = v5;
  if (a1)
  {
    if (nw_protocol_copy_tls_definition())
    {
      v7 = swift_unknownObjectRetain();
      v8 = v7;
    }

    else
    {
      v7 = nw_protocol_copy_tls_definition();
      v8 = 0;
    }

    sub_181AA82B4(&v47, v7, 0, 0, 0, 255, v8);
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v9 = *(&v47 + 1);
    v10 = v48;
    v11 = BYTE8(v48);
    v12 = v49;
    v13 = v47;
    sub_181F49A24(*(&v47 + 1), v48, SBYTE8(v48));
    v14 = sub_181AA90F0(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
    swift_allocObject();
    v15 = sub_181AA94EC(v13, v9, v10, v11, v14);
    sub_181F49A88(&v42, &unk_1EA838740);
    if (a1 != 1)
    {

      a1(v15);
      sub_181C6B000(a1);
    }

    v38 = v15;
    v39 = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0) | 0x4000000000000000;
    swift_retain_n();
    sub_181B2A5BC(&v38);
    sub_181AAD084(v38, v39);
  }

  if (qword_1ED410038 != -1)
  {
    swift_once();
  }

  v16 = *(&xmmword_1ED411C48 + 1);
  v17 = unk_1ED411C58;
  v18 = byte_1ED411C60;
  v47 = 0u;
  v48 = 0u;
  *&v49 = 0;
  *(&v49 + 1) = 0x100000201;
  v19 = xmmword_1ED411C48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  swift_allocObject();
  v20 = sub_181AAC92C(v19, v16, v17, v18, &v47);
  v21 = nw_setting_tcp_enable_auto_tfo[0];
  sub_181F49A24(v16, v17, v18);
  if (networkd_settings_get_BOOL(v21))
  {
    v22 = v20 + *(*v20 + 128);
    result = swift_beginAccess();
    if (*(v22 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v24 = HIDWORD(*(v22 + 40));
    if ((v24 & 0x800) == 0)
    {
      *(v22 + 44) = v24 | 0x800;
    }

    if ((v6 & 2) == 0)
    {
      DWORD2(__src[7]) = v6 | 2;
    }
  }

  if (a2)
  {

    a2(v20);
    sub_181A554F4(a2);
  }

  v25 = *(v5 + 32);
  v26 = *(v5 + 40);
  *(v5 + 32) = v20;
  *(v5 + 40) = 0x2000000000000000;

  sub_181A5301C(v25, v26);
  ProtocolStack.transport.getter(&v40);
  v27 = v41;
  if ((~v41 & 0xF000000000000007) != 0)
  {
    v35 = v40;

    sub_181A554F4(a2);
    sub_181C6B000(a1);
    sub_181A53008(v35, v27);
  }

  else
  {
    v28 = *(&xmmword_1ED411C48 + 1);
    v29 = unk_1ED411C58;
    v30 = byte_1ED411C60;
    v31 = xmmword_1ED411C48;

    sub_181A554F4(a2);
    sub_181C6B000(a1);
    v42 = 0u;
    v43 = 0u;
    *&v44 = 0;
    *(&v44 + 1) = 0x100000201;
    swift_allocObject();
    v32 = sub_181AAC92C(v31, v28, v29, v30, &v42);
    v33 = *(v5 + 32);
    v34 = *(v5 + 40);
    *(v5 + 32) = v32;
    *(v5 + 40) = 0x2000000000000000;
    sub_181F49A24(v28, v29, v30);
    sub_181A5301C(v33, v34);
  }

  BYTE1(__src[7]) = 2;
  return memcpy(a3, __src, 0x188uLL);
}

nw_parameters_t nw_parameters_create_secure_tcp(nw_parameters_configure_protocol_block_t configure_tls, nw_parameters_configure_protocol_block_t configure_tcp)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = configure_tls;
  v4 = configure_tcp;
  v5 = v4;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_parameters_create_secure_tcp";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v27 = "nw_parameters_create_secure_tcp";
      v16 = "%{public}s called with null configure_tls";
LABEL_49:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_50;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null configure_tls, backtrace limit exceeded";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v20 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null configure_tls, no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (!v20)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v27 = "nw_parameters_create_secure_tcp";
    v28 = 2082;
    v29 = backtrace_string;
    v21 = "%{public}s called with null configure_tls, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v14, v15, v21, buf, 0x16u);
LABEL_36:

    free(backtrace_string);
    goto LABEL_51;
  }

  if (!v4)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_parameters_create_secure_tcp";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v27 = "nw_parameters_create_secure_tcp";
      v16 = "%{public}s called with null configure_tcp";
      goto LABEL_49;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null configure_tcp, backtrace limit exceeded";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v22 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null configure_tcp, no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (!v22)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v27 = "nw_parameters_create_secure_tcp";
    v28 = 2082;
    v29 = backtrace_string;
    v21 = "%{public}s called with null configure_tcp, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  if (v4 != &__block_literal_global_19409)
  {
    v6 = _Block_copy(v3);
    v7 = v6;
    if (v3 == &__block_literal_global_19409 || v3 == &__block_literal_global_2)
    {

      v7 = 0;
    }

    v8 = _Block_copy(v5);
    v9 = v8;
    if (v5 == &__block_literal_global_2)
    {

      v9 = 0;
    }

    secure_tcp = _nw_parameters_create_secure_tcp(v3 == &__block_literal_global_19409, v7, v9);

    goto LABEL_10;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_parameters_create_secure_tcp";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v13, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_49;
      }

LABEL_50:

      goto LABEL_51;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v23 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_tcp";
        v16 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (!v23)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v27 = "nw_parameters_create_secure_tcp";
    v28 = 2082;
    v29 = backtrace_string;
    v21 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_35;
  }

LABEL_51:
  if (v13)
  {
    free(v13);
  }

  secure_tcp = 0;
LABEL_10:

  return secure_tcp;
}

id _nw_parameters_create_secure_tcp(char a1, void *aBlock, const void *a3)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a3);
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v5 = sub_181AACB1C;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v7 = sub_181AA94F4;
LABEL_6:
  v10 = sub_181C6A164(a1, v5, v8, v7, v9);
  sub_181A554F4(v7);
  sub_181A554F4(v5);
  return v10;
}

uint64_t sub_181C6AFC4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_181C6B000(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

BOOL nw_parameters_has_persistent_protocol_in_stack(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack(a1);
    if (v1)
    {
      has_persistent_application_protocol = _nw_protocol_stack_has_persistent_application_protocol();
LABEL_4:

      return has_persistent_application_protocol;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_has_persistent_protocol_in_stack";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v10, &type, &v18))
    {
LABEL_39:
      if (v10)
      {
        free(v10);
      }

      has_persistent_application_protocol = 0;
      goto LABEL_4;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_has_persistent_protocol_in_stack";
        v13 = "%{public}s called with null stack";
LABEL_37:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v17 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_parameters_has_persistent_protocol_in_stack";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (!v17)
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v21 = "nw_parameters_has_persistent_protocol_in_stack";
        v13 = "%{public}s called with null stack, no backtrace";
        goto LABEL_37;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_has_persistent_protocol_in_stack";
        v13 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_parameters_has_persistent_protocol_in_stack";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v5, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_has_persistent_protocol_in_stack";
        v8 = "%{public}s called with null parameters";
LABEL_30:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        v14 = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v15 = os_log_type_enabled(v6, type);
        if (v14)
        {
          if (v15)
          {
            *buf = 136446466;
            v21 = "nw_parameters_has_persistent_protocol_in_stack";
            v22 = 2082;
            v23 = v14;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v14);
          goto LABEL_32;
        }

        if (!v15)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v21 = "nw_parameters_has_persistent_protocol_in_stack";
        v8 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_30;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_has_persistent_protocol_in_stack";
        v8 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

BOOL _nw_protocol_stack_has_persistent_application_protocol()
{

  v0 = *(sub_181AC9084() + 24);

  return v0 != 0;
}

void nw_parameters_set_no_wake_from_sleep(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_no_wake_from_sleep();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_no_wake_from_sleep";
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
        v11 = "nw_parameters_set_no_wake_from_sleep";
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
            v11 = "nw_parameters_set_no_wake_from_sleep";
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
        v11 = "nw_parameters_set_no_wake_from_sleep";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_no_wake_from_sleep";
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

uint64_t ___ZL34nw_resolver_copy_protocol_for_alpnP22NWConcrete_nw_resolverPKc_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10] && (string_ptr = xpc_string_get_string_ptr(v4), !strcmp(string_ptr, *(a1 + 40))))
  {
    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), nw_protocol_copy_quic_stream_definition_quic_definition);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t ___ZL34nw_resolver_copy_protocol_for_alpnP22NWConcrete_nw_resolverPKc_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10] && (string_ptr = xpc_string_get_string_ptr(v4), !strcmp(string_ptr, *(a1 + 40))))
  {
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), g_tcp_definition);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void nw_resolver_update_client_alternative(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_resolver_update_client_alternative";
    v20 = _os_log_send_and_compose_impl();

    v39 = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v20, &v39, &v38))
    {
      goto LABEL_55;
    }

    if (v39 == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = v39;
      if (os_log_type_enabled(v21, v39))
      {
        *buf = 136446210;
        v41 = "nw_resolver_update_client_alternative";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v26 = v39;
      v27 = os_log_type_enabled(v21, v39);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v41 = "nw_resolver_update_client_alternative";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v20)
        {
          goto LABEL_21;
        }

LABEL_56:
        free(v20);
        goto LABEL_21;
      }

      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_resolver_update_client_alternative";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v31 = v39;
      if (os_log_type_enabled(v21, v39))
      {
        *buf = 136446210;
        v41 = "nw_resolver_update_client_alternative";
        _os_log_impl(&dword_181A37000, v21, v31, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (v6)
  {
    v8 = _Block_copy(*(v5 + 24));
    if (*(v5 + 26))
    {
      if (*(v5 + 27))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = _nw_array_create();
      v11 = *(v5 + 26);
      *(v5 + 26) = v10;

      if (*(v5 + 27))
      {
LABEL_5:
        v9 = *(v5 + 26);
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    v12 = _nw_array_create();
    v13 = *(v5 + 27);
    *(v5 + 27) = v12;

    v9 = *(v5 + 26);
    if (!v9)
    {
LABEL_10:
      v14 = *(v5 + 27);
      if (v14)
      {
        if (v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = MEMORY[0x1E69E9668];
        }

        _nw_array_append(v14, v15);
      }

      if (v8)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL37nw_resolver_update_client_alternativeP22NWConcrete_nw_resolverPU25objcproto14OS_nw_endpoint8NSObjectPU36objcproto25OS_nw_protocol_definitionS1__block_invoke;
        aBlock[3] = &unk_1E6A3B8E8;
        v16 = v5;
        v34 = v16;
        v37 = v8;
        v35 = v6;
        v36 = v7;
        v17 = _Block_copy(aBlock);
        v18 = *(v16 + 14);
        if (v18)
        {
          dispatch_async(v18, v17);
        }

        else
        {
          nw_queue_context_async(*(v16 + 4), v17);
        }
      }

      goto LABEL_21;
    }

LABEL_9:
    _nw_array_append(v9, v6);
    goto LABEL_10;
  }

  v23 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_resolver_update_client_alternative";
  v20 = _os_log_send_and_compose_impl();

  v39 = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v20, &v39, &v38))
  {
    goto LABEL_55;
  }

  if (v39 == OS_LOG_TYPE_FAULT)
  {
    v21 = __nwlog_obj();
    v24 = v39;
    if (os_log_type_enabled(v21, v39))
    {
      *buf = 136446210;
      v41 = "nw_resolver_update_client_alternative";
      _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null endpoint", buf, 0xCu);
    }

    goto LABEL_54;
  }

  if (v38 != 1)
  {
    v21 = __nwlog_obj();
    v32 = v39;
    if (os_log_type_enabled(v21, v39))
    {
      *buf = 136446210;
      v41 = "nw_resolver_update_client_alternative";
      _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v28 = __nw_create_backtrace_string();
  v21 = __nwlog_obj();
  v29 = v39;
  v30 = os_log_type_enabled(v21, v39);
  if (!v28)
  {
    if (v30)
    {
      *buf = 136446210;
      v41 = "nw_resolver_update_client_alternative";
      _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_54;
  }

  if (v30)
  {
    *buf = 136446466;
    v41 = "nw_resolver_update_client_alternative";
    v42 = 2082;
    v43 = v28;
    _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v28);
  if (v20)
  {
    goto LABEL_56;
  }

LABEL_21:
}

Swift::Bool __swiftcall NWPath.usesInterfaceType(_:)(Network::NWInterface::InterfaceType a1)
{
  v2 = a1;
  v3 = *(v1 + *(type metadata accessor for NWPath(0) + 52));
  if (v3)
  {
    LOBYTE(v3) = nw_path_uses_interface_type(v3, *v2);
  }

  return v3;
}

void nw_activity_complete_with_reason_and_underlying_error(void *a1, uint32_t a2, int a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    nw_activity_complete_with_reason_and_underlying_error_string_internal(v7, a2, 0, a3, a4);
    goto LABEL_3;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_activity_complete_with_reason_and_underlying_error";
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
        v20 = "nw_activity_complete_with_reason_and_underlying_error";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null activity", buf, 0xCu);
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
          v20 = "nw_activity_complete_with_reason_and_underlying_error";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_activity_complete_with_reason_and_underlying_error";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_activity_complete_with_reason_and_underlying_error";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }

LABEL_3:
}

nw_path_unsatisfied_reason_t nw_path_get_unsatisfied_reason(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    unsatisfied_reason = _nw_path_get_unsatisfied_reason(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_unsatisfied_reason";
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
        v16 = "nw_path_get_unsatisfied_reason";
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
          v16 = "nw_path_get_unsatisfied_reason";
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
        v16 = "nw_path_get_unsatisfied_reason";
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
        v16 = "nw_path_get_unsatisfied_reason";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  unsatisfied_reason = nw_path_unsatisfied_reason_not_available;
LABEL_3:

  return unsatisfied_reason;
}

NSObject *NWPath.unsatisfiedReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for NWPath(0) + 52));
  if (result)
  {
    result = nw_path_get_unsatisfied_reason(result);
    if (result >= 5)
    {
      v4 = 0;
    }

    else
    {
      v4 = result;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t _nw_path_get_unsatisfied_reason(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  if (((v1[117] - 26) & 0xFC) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (v1[117] - 26) + 1;
  }

  return v3;
}

void nw_parameters_set_attribution(nw_parameters_t parameters, nw_parameters_attribution_t attribution)
{
  v16 = *MEMORY[0x1E69E9840];
  if (parameters)
  {
    v2 = 2 * (attribution == nw_parameters_attribution_user);

    _nw_parameters_set_internal_attribution(parameters, v2);
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_parameters_set_attribution";
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
        v13 = "nw_parameters_set_attribution";
        v7 = "%{public}s called with null parameters";
LABEL_18:
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
            v13 = "nw_parameters_set_attribution";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_parameters_set_attribution";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_set_attribution";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }
}

char *sub_181C6CA4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t nw_endpoint_handler_trigger_agents(void *a1, int a2)
{
  *(&v132[2] + 6) = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = nw_path_copy_inactive_agent_uuids(v3[8], a2);
  v5 = v4;
  if (v4 && xpc_array_get_count(v4))
  {
    *(v3 + 20) = 131073;
    nw_endpoint_handler_report(v3, 0, v3 + 40, 0);
    if (v3[13])
    {
      goto LABEL_4;
    }

    v24 = v3[11];
    if (v24)
    {
      if (xpc_equal(v24, v5))
      {
LABEL_4:
        v6 = v3;
        v7 = *(v6 + 284);

        if ((v7 & 0x40) != 0)
        {
          v15 = 1;
          goto LABEL_93;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v8 = gconnectionLogObj;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_91;
        }

        v9 = v6;

        v10 = v9;
        v11 = *(v6 + 284);

        if (v11)
        {
          v12 = "dry-run ";
        }

        else
        {
          v12 = "";
        }

        v13 = nw_endpoint_handler_copy_endpoint(v10);
        v14 = v13;
        if (v13)
        {
          xarray = _nw_endpoint_get_logging_description(v13);
        }

        else
        {
          xarray = "<NULL>";
        }

        v47 = v9 + 184;

        v48 = v10;
        v49 = v48;
        v50 = v48[30];
        if (v50 > 5)
        {
          v51 = "unknown-state";
        }

        else
        {
          v51 = off_1E6A31048[v50];
        }

        v52 = v49;
        v53 = v52;
        v54 = v52[29];
        if (v54 > 2)
        {
          switch(v54)
          {
            case 3:
              v55 = "proxy";
              goto LABEL_90;
            case 4:
              v55 = "fallback";
              goto LABEL_90;
            case 5:
              v55 = "transform";
              goto LABEL_90;
          }
        }

        else
        {
          switch(v54)
          {
            case 0:
              v55 = "path";
              goto LABEL_90;
            case 1:
              v55 = "resolver";
              goto LABEL_90;
            case 2:
              v55 = nw_endpoint_flow_mode_string(*(v52 + 33));
LABEL_90:

              v71 = v53;
              os_unfair_lock_lock(v71 + 28);
              v72 = v3[8];
              os_unfair_lock_unlock(v71 + 28);

              *buf = 136447746;
              v118 = "nw_endpoint_handler_trigger_agents";
              v119 = 2082;
              v120 = v47;
              v121 = 2082;
              v122 = v12;
              v123 = 2082;
              v124 = xarray;
              v125 = 2082;
              v126 = v51;
              v127 = 2082;
              v128 = v55;
              v129 = 2114;
              v130 = v72;
              _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Already triggered agents", buf, 0x48u);

LABEL_91:
              v15 = 1;
              goto LABEL_92;
          }
        }

        v55 = "unknown-mode";
        goto LABEL_90;
      }

      v25 = v3[11];
    }

    else
    {
      v25 = 0;
    }

    *(v3 + 284) &= ~2u;
    v3[11] = 0;
    v37 = v3;

    v38 = v37[12];
    v37[12] = 0;

    v39 = v3[13];
    v3[13] = 0;

    v40 = xpc_array_create(0, 0);
    v41 = v40;
    if (v40)
    {
      v42 = v37[7];
      v43 = v40;
      xarrayb = v43;
      if (v42)
      {
        v44 = v42[3];
        v8 = v43;
        if (!v44 || (v45 = *(v44 + 48)) == 0)
        {

          goto LABEL_62;
        }

        v46 = _nw_path_evaluator_trigger_agents(v45, a2, 0, v8);

        if (v46 != 1)
        {
          if (v46)
          {
LABEL_100:
            v77 = v37;
            v78 = (*(v3 + 284) & 0x40) == 0;

            if (v78)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v79 = gconnectionLogObj;
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                id_string = nw_endpoint_handler_get_id_string(v77);
                v81 = nw_endpoint_handler_dry_run_string(v77);
                v82 = id_string;
                v109 = nw_endpoint_handler_copy_endpoint(v77);
                logging_description = nw_endpoint_get_logging_description(v109);
                v84 = nw_endpoint_handler_state_string(v77);
                v85 = nw_endpoint_handler_mode_string(v77);
                v86 = nw_endpoint_handler_copy_current_path(v77);
                v87 = v86;
                if (v46 > 2)
                {
                  v88 = "unknown error";
                }

                else
                {
                  v88 = off_1E6A39D28[v46];
                }

                *buf = 136448258;
                v118 = "nw_endpoint_handler_trigger_agents";
                v119 = 2082;
                v120 = v82;
                v121 = 2082;
                v122 = v81;
                v123 = 2082;
                v124 = logging_description;
                v125 = 2082;
                v126 = v84;
                v127 = 2082;
                v128 = v85;
                v129 = 2114;
                v130 = v86;
                v131 = 1024;
                LODWORD(v132[0]) = v46;
                WORD2(v132[0]) = 2082;
                *(v132 + 6) = v88;
                _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Trigger failed: [%d] %{public}s", buf, 0x58u);
              }
            }

            v15 = 0;
            v8 = xarrayb;
            goto LABEL_92;
          }

LABEL_62:
          if (xpc_array_get_count(xarrayb))
          {
            objc_storeStrong(v3 + 11, v5);
            objc_storeStrong(v37 + 12, v3[8]);
            objc_storeStrong(v3 + 13, v41);
            if (a2)
            {
              v56 = 2;
            }

            else
            {
              v56 = 0;
            }

            *(v3 + 284) = *(v3 + 284) & 0xFD | v56;
            if ((nw_endpoint_handler_get_logging_disabled(v37) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v57 = gconnectionLogObj;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                v58 = nw_endpoint_handler_get_id_string(v37);
                v59 = nw_endpoint_handler_dry_run_string(v37);
                v108 = nw_endpoint_handler_copy_endpoint(v37);
                v60 = nw_endpoint_get_logging_description(v108);
                v61 = nw_endpoint_handler_state_string(v37);
                v62 = nw_endpoint_handler_mode_string(v37);
                v63 = nw_endpoint_handler_copy_current_path(v37);
                count = xpc_array_get_count(v5);
                *buf = 136448002;
                v118 = "nw_endpoint_handler_trigger_agents";
                v119 = 2082;
                v120 = v58;
                v121 = 2082;
                v122 = v59;
                v123 = 2082;
                v124 = v60;
                v125 = 2082;
                v126 = v61;
                v127 = 2082;
                v128 = v62;
                v129 = 2114;
                v130 = v63;
                v131 = 2048;
                v132[0] = count;
                _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Triggered %zu agents", buf, 0x52u);
              }
            }

            v15 = 1;
            v8 = xarrayb;
            goto LABEL_92;
          }

          v46 = 0;
          goto LABEL_100;
        }

        v90 = v37;
        v91 = *(v3 + 284);

        if ((v91 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v92 = gconnectionLogObj;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v93 = nw_endpoint_handler_get_id_string(v90);
            v94 = nw_endpoint_handler_dry_run_string(v90);
            v95 = v93;
            v110 = nw_endpoint_handler_copy_endpoint(v90);
            v96 = nw_endpoint_get_logging_description(v110);
            v97 = nw_endpoint_handler_state_string(v90);
            v98 = nw_endpoint_handler_mode_string(v90);
            v99 = nw_endpoint_handler_copy_current_path(v90);
            *buf = 136448258;
            v118 = "nw_endpoint_handler_trigger_agents";
            v119 = 2082;
            v120 = v95;
            v121 = 2082;
            v122 = v94;
            v123 = 2082;
            v124 = v96;
            v125 = 2082;
            v126 = v97;
            v127 = 2082;
            v128 = v98;
            v129 = 2114;
            v130 = v99;
            v131 = 1024;
            LODWORD(v132[0]) = 1;
            WORD2(v132[0]) = 2082;
            *(v132 + 6) = "cannot satisfy";
            _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Trigger failed: [%d] %{public}s", buf, 0x58u);
          }
        }

LABEL_84:
        v15 = 0;
LABEL_92:

        goto LABEL_93;
      }

      v100 = __nwlog_obj();
      *buf = 136446210;
      v118 = "nw_association_trigger_agents";
      v111 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v115 = 0;
      if (__nwlog_fault(v111, &type, &v115))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v101 = __nwlog_obj();
          v102 = type;
          if (os_log_type_enabled(v101, type))
          {
            *buf = 136446210;
            v118 = "nw_association_trigger_agents";
            _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null association", buf, 0xCu);
          }
        }

        else
        {
          if (v115 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v104 = __nwlog_obj();
            v107 = type;
            v105 = os_log_type_enabled(v104, type);
            if (backtrace_string)
            {
              if (v105)
              {
                *buf = 136446466;
                v118 = "nw_association_trigger_agents";
                v119 = 2082;
                v120 = backtrace_string;
                _os_log_impl(&dword_181A37000, v104, v107, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
            }

            else
            {
              if (v105)
              {
                *buf = 136446210;
                v118 = "nw_association_trigger_agents";
                _os_log_impl(&dword_181A37000, v104, v107, "%{public}s called with null association, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_142;
          }

          v101 = __nwlog_obj();
          v106 = type;
          if (os_log_type_enabled(v101, type))
          {
            *buf = 136446210;
            v118 = "nw_association_trigger_agents";
            _os_log_impl(&dword_181A37000, v101, v106, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_142:
      if (v111)
      {
        free(v111);
      }

      goto LABEL_62;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v65 = gLogObj;
    *buf = 136446210;
    v118 = "nw_endpoint_handler_trigger_agents";
    v66 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v115 = 0;
    if (__nwlog_fault(v66, &type, &v115))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v67 = __nwlog_obj();
        v68 = type;
        if (os_log_type_enabled(v67, type))
        {
          *buf = 136446210;
          v118 = "nw_endpoint_handler_trigger_agents";
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s xpc_array_create failed", buf, 0xCu);
        }
      }

      else if (v115 == 1)
      {
        v74 = __nw_create_backtrace_string();
        v67 = __nwlog_obj();
        v75 = type;
        v76 = os_log_type_enabled(v67, type);
        if (v74)
        {
          if (v76)
          {
            *buf = 136446466;
            v118 = "nw_endpoint_handler_trigger_agents";
            v119 = 2082;
            v120 = v74;
            _os_log_impl(&dword_181A37000, v67, v75, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v74);
          goto LABEL_122;
        }

        if (v76)
        {
          *buf = 136446210;
          v118 = "nw_endpoint_handler_trigger_agents";
          _os_log_impl(&dword_181A37000, v67, v75, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v67 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v67, type))
        {
          *buf = 136446210;
          v118 = "nw_endpoint_handler_trigger_agents";
          _os_log_impl(&dword_181A37000, v67, v89, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_122:
    if (v66)
    {
      free(v66);
    }

    v8 = 0;
    v15 = 0;
    goto LABEL_92;
  }

  if ((a2 & 1) == 0)
  {
    v16 = v3;
    v17 = *(v16 + 284);

    if ((v17 & 0x40) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v18 = v16;

      v19 = v18;
      v20 = *(v16 + 284);

      if (v20)
      {
        v21 = "dry-run ";
      }

      else
      {
        v21 = "";
      }

      v22 = nw_endpoint_handler_copy_endpoint(v19);
      v23 = v22;
      if (v22)
      {
        xarraya = _nw_endpoint_get_logging_description(v22);
      }

      else
      {
        xarraya = "<NULL>";
      }

      v26 = v18 + 184;

      v27 = v19;
      v28 = v27;
      v29 = v27[30];
      if (v29 > 5)
      {
        v30 = "unknown-state";
      }

      else
      {
        v30 = off_1E6A31048[v29];
      }

      v31 = v28;
      v32 = v31;
      v33 = v31[29];
      v34 = v5;
      if (v33 > 2)
      {
        switch(v33)
        {
          case 3:
            v35 = v21;
            v36 = "proxy";
            goto LABEL_83;
          case 4:
            v35 = v21;
            v36 = "fallback";
            goto LABEL_83;
          case 5:
            v35 = v21;
            v36 = "transform";
            goto LABEL_83;
        }
      }

      else
      {
        switch(v33)
        {
          case 0:
            v35 = v21;
            v36 = "path";
            goto LABEL_83;
          case 1:
            v35 = v21;
            v36 = "resolver";
            goto LABEL_83;
          case 2:
            v35 = v21;
            v36 = nw_endpoint_flow_mode_string(*(v31 + 33));
LABEL_83:

            v69 = v32;
            os_unfair_lock_lock(v69 + 28);
            v70 = v3[8];
            os_unfair_lock_unlock(v69 + 28);

            *buf = 136447746;
            v118 = "nw_endpoint_handler_trigger_agents";
            v119 = 2082;
            v120 = v26;
            v121 = 2082;
            v122 = v35;
            v123 = 2082;
            v124 = xarraya;
            v125 = 2082;
            v126 = v30;
            v127 = 2082;
            v128 = v36;
            v129 = 2114;
            v130 = v70;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No inactive agents to trigger", buf, 0x48u);

            v5 = v34;
            goto LABEL_84;
        }
      }

      v35 = v21;
      v36 = "unknown-mode";
      goto LABEL_83;
    }
  }

  v15 = 0;
LABEL_93:

  return v15;
}

char *_nw_path_evaluator_trigger_agents(char *a1, char a2, char a3, void *a4)
{
  swift_unknownObjectRetain();
  v8 = sub_182263D1C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

char *sub_181C6DBC8(int a1, char a2)
{
  v75[48] = *MEMORY[0x1E69E9840];
  memcpy(v75, v2, 0x17AuLL);
  v3 = v75[33];
  if (!v75[33])
  {
    goto LABEL_56;
  }

  v4 = 1 << *(v75[33] + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v75[33] + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v66 = MEMORY[0x1E69E7CC0];
  v9 = 0;
LABEL_5:
  v61 = v9;
LABEL_6:
  v58 = v9;
  while (v6)
  {
LABEL_14:
    v11 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v12 = *(v11 + 80);
    if (BYTE4(v75[14]) == 3 && LODWORD(v75[41]) == 0)
    {
      if ((v12 & 1) == 0)
      {
        if ((v12 & 0x40) != 0)
        {

          v15 = 1;
          goto LABEL_27;
        }

LABEL_23:

        v15 = a1;
        goto LABEL_27;
      }

      v14 = (v12 >> 6) & 1;
    }

    else
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_23;
      }

      LOBYTE(v14) = 0;
    }

    v16 = v75[4];
    swift_beginAccess();
    memcpy(v73, (v16 + 16), sizeof(v73));
    memcpy(v72, (v16 + 16), 0x188uLL);

    sub_181F481DC(v73, v74);
    sub_181FD5F04(v72, v11, &v71);
    memcpy(v74, v72, 0x188uLL);
    sub_181F48214(v74);
    v15 = v71 | a1;
    if (v14)
    {
      v15 = 1;
    }

LABEL_27:
    v6 &= v6 - 1;
    v17 = *(v11 + 80);
    if ((v17 & 3) == 1 && ((v17 & 0x40) != 0 || (a2 & 1) == 0) && ((v17 >> 4) & 1 & ~v15) == 0)
    {
      if ((v17 & 0xC) == 0)
      {

        v9 = 1;
        goto LABEL_6;
      }

      v62 = type metadata accessor for __NWPath();
      v18 = objc_allocWithZone(v62);
      v59 = OBJC_IVAR____TtC7Network8__NWPath_lock;
      type metadata accessor for SystemLock._Storage();
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *&v18[v59] = v19;
      *&v18[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
      *&v18[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
      *&v18[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
      memcpy(&v18[OBJC_IVAR____TtC7Network8__NWPath_path], v75, 0x17AuLL);
      if ((v17 & 0x200) != 0)
      {
        sub_181A3DF5C(v75, v74);
        v70.receiver = v18;
        v70.super_class = v62;
        v64 = objc_msgSendSuper2(&v70, sel_init);
        v74[0] = *(v11 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        *(v27 + 16) = 16;
        *(v27 + 24) = 2 * v28 - 64;
        *(v27 + 32) = v74[0];
        v29 = nw_path_assert_agent(v64, (v27 + 32));

        v57 = v29;
        v23 = v29 == 0;
        v30 = 0xED000064656C6961;
        if (v29)
        {
          v30 = 0xE600000000000000;
        }

        v60 = v30;
        v25 = 0x6620747265737361;
        v26 = 0x747265737361;
      }

      else
      {
        sub_181A3DF5C(v75, v74);
        v69.receiver = v18;
        v69.super_class = v62;
        v63 = objc_msgSendSuper2(&v69, sel_init);
        v74[0] = *(v11 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        *(v20 + 16) = 16;
        *(v20 + 24) = 2 * v21 - 64;
        *(v20 + 32) = v74[0];
        v22 = nw_path_trigger_agent(v63, (v20 + 32));

        v57 = v22;
        v23 = v22 == 0;
        v24 = 0xEE0064656C696166;
        if (v22)
        {
          v24 = 0xE700000000000000;
        }

        v60 = v24;
        v25 = 0x2072656767697274;
        v26 = 0x72656767697274;
      }

      if (!v23)
      {
        v25 = v26;
      }

      v53 = v25;
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v31 = sub_182AD2698();
      __swift_project_value_buffer(v31, qword_1ED411DA8);

      v32 = sub_182AD2678();
      v33 = sub_182AD38D8();

      v56 = v32;
      if (os_log_type_enabled(v32, v33))
      {
        v65 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v51 = v33;
        v73[0] = v52;
        *v65 = 136315906;
        MEMORY[0x1EEE9AC00](v52);
        v34 = sub_182AD30D8();
        v36 = sub_181C64FFC(v34, v35, v73);

        *(v65 + 4) = v36;
        *(v65 + 12) = 2080;

        v37 = sub_181C64FFC(v53, v60, v73);

        *(v65 + 14) = v37;
        *(v65 + 22) = 2080;
        v38 = *(v11 + 56);
        v39 = *(v11 + 64);
        v40 = *(v11 + 72);
        *&v74[0] = *(v11 + 48);
        *(&v74[0] + 1) = v38;
        *&v74[1] = v39;
        *(&v74[1] + 1) = v40;
        sub_181AA5C1C(*&v74[0], v38);
        sub_181ADC1E0(v39, v40);
        v54 = NetworkAgentType.description.getter();
        v42 = v41;
        v43 = v74[1];
        sub_181E4926C(*&v74[0], *(&v74[0] + 1));
        sub_181E49280(v43, *(&v43 + 1));
        v44 = sub_181C64FFC(v54, v42, v73);

        *(v65 + 24) = v44;
        *(v65 + 32) = 2080;
        LODWORD(v74[0]) = *(v11 + 80);
        sub_181AA5BC8();
        v45 = sub_182AD3218();
        v55 = sub_181C64FFC(v45, v46, v73);

        *(v65 + 34) = v55;
        _os_log_impl(&dword_181A37000, v56, v51, "[%s] agent %s %s flags: 0x%s", v65, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v52, -1, -1);
        MEMORY[0x1865DF520](v65, -1, -1);
      }

      v74[0] = *(v11 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_181C6CA4C(0, *(v66 + 2) + 1, 1, v66);
      }

      v48 = *(v66 + 2);
      v47 = *(v66 + 3);
      if (v48 >= v47 >> 1)
      {
        v66 = sub_181C6CA4C((v47 > 1), v48 + 1, 1, v66);
      }

      *(v66 + 2) = v48 + 1;
      *&v66[16 * v48 + 32] = v74[0];

      if (v57)
      {
        v9 = 1;
        goto LABEL_5;
      }

LABEL_59:

      goto LABEL_55;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  if (v61)
  {
    return v66;
  }

  if (v58)
  {
LABEL_55:
    LOBYTE(v74[0]) = 0;
    sub_181C6E444();
    swift_willThrowTypedImpl();
    return 0;
  }

LABEL_56:
  v49 = 1;
  LOBYTE(v74[0]) = 1;
  sub_181C6E444();
  swift_willThrowTypedImpl();
  return v49;
}

unint64_t sub_181C6E444()
{
  result = qword_1ED40F4C0;
  if (!qword_1ED40F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F4C0);
  }

  return result;
}

void nw_parameters_clear_proxy_options(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_clear_proxy_options();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_proxy_options";
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
        v11 = "nw_parameters_clear_proxy_options";
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
            v11 = "nw_parameters_clear_proxy_options";
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
        v11 = "nw_parameters_clear_proxy_options";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_proxy_options";
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

CFErrorRef nw_error_copy_cf_error(nw_error_t error)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = error;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 description];
    v4 = v3;
    v5 = LODWORD(v2[1].isa) - 1;
    if (v5 < 4 && (isa_high = SHIDWORD(v2[1].isa), isa_high))
    {
      v7 = off_1E6A2D820[v5];
      v8 = *MEMORY[0x1E695E480];
      if (v3)
      {
        *values = v3;
        v9 = CFDictionaryCreate(v8, MEMORY[0x1E695E620], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v9 = 0;
      }

      v10 = CFErrorCreate(v8, v7, isa_high, v9);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_10;
  }

  v12 = __nwlog_obj();
  *values = 136446210;
  *&values[4] = "nw_error_copy_cf_error";
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
        *values = 136446210;
        *&values[4] = "nw_error_copy_cf_error";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null error", values, 0xCu);
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
          *values = 136446466;
          *&values[4] = "nw_error_copy_cf_error";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null error, dumping backtrace:%{public}s", values, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v18)
      {
        *values = 136446210;
        *&values[4] = "nw_error_copy_cf_error";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null error, no backtrace", values, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *values = 136446210;
        *&values[4] = "nw_error_copy_cf_error";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null error, backtrace limit exceeded", values, 0xCu);
      }
    }
  }

LABEL_27:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

const char *nwlog_get_string_for_dns_service_error(int a1)
{
  result = DNSServiceErrorCodeToString();
  if (!result)
  {
    switch(a1)
    {
      case -65570:
        result = "PolicyDenied";
        break;
      case -65569:
        result = "DefunctConnection";
        break;
      case -65568:
        result = "Timeout";
        break;
      case -65567:
        result = "PollingMode";
        break;
      case -65566:
        result = "NoRouter";
        break;
      case -65565:
        result = "NATPortMappingDisabled";
        break;
      case -65564:
        result = "NATPortMappingUnsupported";
        break;
      case -65563:
        result = "ServiceNotRunning";
        break;
      case -65562:
        result = "Transient";
        break;
      case -65561:
        result = "BadKey";
        break;
      case -65560:
        result = "BadSig";
        break;
      case -65559:
        result = "BadTime";
        break;
      case -65558:
        result = "DoubleNAT";
        break;
      case -65557:
        result = "NATTraversal";
        break;
      case -65556:
        result = "NoSuchKey";
        break;
      case -65555:
        result = "NoAuth";
        break;
      case -65554:
        result = "NoSuchRecord";
        break;
      case -65553:
        result = "Refused";
        break;
      case -65552:
        result = "BadInterfaceIndex";
        break;
      case -65551:
        result = "Incompatible";
        break;
      case -65550:
        result = "Firewall";
        break;
      case -65549:
        result = "Invalid";
        break;
      case -65548:
        result = "NameConflict";
        break;
      case -65547:
        result = "AlreadyRegistered";
        break;
      case -65546:
      case -65537:
        goto LABEL_7;
      case -65545:
        result = "NotInitialized";
        break;
      case -65544:
        result = "Unsupported";
        break;
      case -65543:
        result = "BadFlags";
        break;
      case -65542:
        result = "BadState";
        break;
      case -65541:
        result = "BadReference";
        break;
      case -65540:
        result = "BadParam";
        break;
      case -65539:
        result = "NoMemory";
        break;
      case -65538:
        result = "NoSuchName";
        break;
      default:
        if (a1)
        {
LABEL_7:
          result = "Unknown";
        }

        else
        {
          result = "NoError";
        }

        break;
    }
  }

  return result;
}

nw_path_t nw_connection_copy_current_path(nw_connection_t connection)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__24471;
    v20 = __Block_byref_object_dispose__24472;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_copy_current_path_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_current_path_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_current_path";
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
        *&buf[4] = "nw_connection_copy_current_path";
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
          *&buf[4] = "nw_connection_copy_current_path";
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
        *&buf[4] = "nw_connection_copy_current_path";
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
        *&buf[4] = "nw_connection_copy_current_path";
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

void __nw_connection_copy_current_path_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v8 = nw_endpoint_handler_copy_connected_path(*(v2 + 144));
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      v4 = v3;
      os_unfair_lock_lock(v4 + 28);
      if (v4[29] == 2)
      {
        v5 = *(v4 + 33);
        if (v5)
        {
          v6 = v5;
          os_unfair_lock_lock(v5 + 220);
          v7 = *&v6[4]._os_unfair_lock_opaque;
          os_unfair_lock_unlock(v6 + 220);

          if (v7)
          {
LABEL_7:
            os_unfair_lock_unlock(v4 + 28);
LABEL_51:

            v34 = *(*(a1 + 40) + 8);
            v35 = *(v34 + 40);
            *(v34 + 40) = v7;

            return;
          }

LABEL_6:
          v7 = *(v4 + 8);
          goto LABEL_7;
        }

        v36 = __nwlog_obj();
        *buf = 136446210;
        v48 = "nw_endpoint_flow_copy_flow_path";
        v37 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v45 = 0;
        if (__nwlog_fault(v37, &type, &v45))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v38 = __nwlog_obj();
            v39 = type;
            if (os_log_type_enabled(v38, type))
            {
              *buf = 136446210;
              v48 = "nw_endpoint_flow_copy_flow_path";
              _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null endpoint_flow", buf, 0xCu);
            }
          }

          else if (v45 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v38 = __nwlog_obj();
            v41 = type;
            v42 = os_log_type_enabled(v38, type);
            if (backtrace_string)
            {
              if (v42)
              {
                *buf = 136446466;
                v48 = "nw_endpoint_flow_copy_flow_path";
                v49 = 2082;
                v50 = backtrace_string;
                _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_70;
            }

            if (v42)
            {
              *buf = 136446210;
              v48 = "nw_endpoint_flow_copy_flow_path";
              _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v38 = __nwlog_obj();
            v43 = type;
            if (os_log_type_enabled(v38, type))
            {
              *buf = 136446210;
              v48 = "nw_endpoint_flow_copy_flow_path";
              _os_log_impl(&dword_181A37000, v38, v43, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_70:
        if (v37)
        {
          free(v37);
        }

        goto LABEL_6;
      }

      os_unfair_lock_unlock(v4 + 28);
      if ((v4[71] & 0x40) != 0)
      {
LABEL_50:
        v7 = 0;
        goto LABEL_51;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_49:

        goto LABEL_50;
      }

      if (v4[71])
      {
        v18 = "dry-run ";
      }

      else
      {
        v18 = "";
      }

      v19 = nw_endpoint_handler_copy_endpoint(v4);
      v20 = v19;
      if (v19)
      {
        logging_description = _nw_endpoint_get_logging_description(v19);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v25 = v4[30];
      if (v25 > 5)
      {
        v26 = "unknown-state";
      }

      else
      {
        v26 = off_1E6A31048[v25];
      }

      v27 = v4;
      v28 = v27;
      v29 = v4[29];
      v44 = logging_description;
      v30 = v18;
      if (v29 > 2)
      {
        switch(v29)
        {
          case 3:
            v31 = "proxy";
            goto LABEL_48;
          case 4:
            v31 = "fallback";
            goto LABEL_48;
          case 5:
            v31 = "transform";
            goto LABEL_48;
        }
      }

      else
      {
        switch(v29)
        {
          case 0:
            v31 = "path";
            goto LABEL_48;
          case 1:
            v31 = "resolver";
            goto LABEL_48;
          case 2:
            v31 = nw_endpoint_flow_mode_string(v27[33]);
LABEL_48:

            v32 = v28;
            os_unfair_lock_lock(v4 + 28);
            v33 = v32[8];
            os_unfair_lock_unlock(v4 + 28);

            *buf = 136447746;
            v48 = "nw_endpoint_handler_copy_flow_path";
            v49 = 2082;
            v50 = (v4 + 46);
            v51 = 2082;
            v52 = v30;
            v53 = 2082;
            v54 = v44;
            v55 = 2082;
            v56 = v26;
            v57 = 2082;
            v58 = v31;
            v59 = 2114;
            v60 = v33;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is not flow", buf, 0x48u);

            goto LABEL_49;
        }
      }

      v31 = "unknown-mode";
      goto LABEL_48;
    }

    v11 = *(v2 + 144);
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      os_unfair_lock_lock(v13 + 28);
      v14 = *(v13 + 8);
      os_unfair_lock_unlock(v13 + 28);

      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else
    {
      v22 = *(*(a1 + 32) + 16);
      if (v22 && !_nw_parameters_get_logging_disabled(v22))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v23 = gconnectionLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v48 = "nw_connection_copy_current_path_block_invoke";
          v49 = 1024;
          LODWORD(v50) = v24;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection has no endpoint handler", buf, 0x12u);
        }
      }
    }
  }
}

uint64_t nw_path_get_reason(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    reason = _nw_path_get_reason(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_reason";
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
        v16 = "nw_path_get_reason";
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
          v16 = "nw_path_get_reason";
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
        v16 = "nw_path_get_reason";
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
        v16 = "nw_path_get_reason";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  reason = 0;
LABEL_3:

  return reason;
}

uint64_t nw_connection_failed_due_to_blocked_tracker(void *a1)
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
    v13[2] = __nw_connection_failed_due_to_blocked_tracker_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_failed_due_to_blocked_tracker_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_failed_due_to_blocked_tracker";
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
        *&buf[4] = "nw_connection_failed_due_to_blocked_tracker";
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
          *&buf[4] = "nw_connection_failed_due_to_blocked_tracker";
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
        *&buf[4] = "nw_connection_failed_due_to_blocked_tracker";
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
        *&buf[4] = "nw_connection_failed_due_to_blocked_tracker";
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

  return v3 & 1;
}
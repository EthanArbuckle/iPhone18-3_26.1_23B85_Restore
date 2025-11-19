void sub_182418418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

uint64_t ___ZL47nw_protocol_implementation_remove_input_handlerP11nw_protocolS0_b_block_invoke_269(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  object = nw_hash_node_get_object(a2);
  if (v3)
  {
    v5 = object;
    v6 = *(v3 + 48);
    if (v6 != v5)
    {
      nw_protocol_release(v6);
      *(v3 + 48) = v5;
      if (v5)
      {
        v7 = v5[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v5 = v5[8]) != 0)
        {
          v8 = v5[11];
          if (v8)
          {
            v5[11] = v8 + 1;
          }
        }
      }
    }

    goto LABEL_9;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v49 = "__nw_protocol_set_input_handler";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v46 = 0;
  if (__nwlog_fault(v14, &type, &v46))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v49 = "__nw_protocol_set_input_handler";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          v49 = "__nw_protocol_set_input_handler";
          v50 = 2082;
          v51 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_54;
      }

      if (v30)
      {
        *buf = 136446210;
        v49 = "__nw_protocol_set_input_handler";
        _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v49 = "__nw_protocol_set_input_handler";
        _os_log_impl(&dword_181A37000, v15, v34, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_54:
  if (v14)
  {
    free(v14);
  }

LABEL_9:
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 48);
    goto LABEL_11;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v49 = "__nw_protocol_get_input_handler";
  v18 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v46 = 0;
  if (__nwlog_fault(v18, &type, &v46))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v49 = "__nw_protocol_get_input_handler";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v19, type);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          v49 = "__nw_protocol_get_input_handler";
          v50 = 2082;
          v51 = v31;
          _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_59;
      }

      if (v33)
      {
        *buf = 136446210;
        v49 = "__nw_protocol_get_input_handler";
        _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v49 = "__nw_protocol_get_input_handler";
        _os_log_impl(&dword_181A37000, v19, v35, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_59:
  if (v18)
  {
    free(v18);
  }

  v9 = 0;
  v10 = 0;
LABEL_11:
  nw_protocol_set_flow_id_from_protocol(v9, v10);
  v11 = *(a1 + 32);
  if ((!v11 || (*(v11 + 413) & 0x80000000) == 0) && gLogDatapath == 1)
  {
    v21 = __nwlog_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
LABEL_34:

      return 0;
    }

    v22 = "";
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v23 == 0;
    if (v23)
    {
      v26 = (v23 + 415);
    }

    else
    {
      v26 = "";
    }

    if (!v25)
    {
      v22 = " ";
    }

    if (v24)
    {
      v27 = *(v24 + 48);
LABEL_33:
      *buf = 136446978;
      v49 = "nw_protocol_implementation_remove_input_handler_block_invoke";
      v50 = 2082;
      v51 = v26;
      v52 = 2080;
      v53 = v22;
      v54 = 2048;
      v55 = v27;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReset default input handler to %p", buf, 0x2Au);
      goto LABEL_34;
    }

    v44 = v22;
    v45 = v26;
    v36 = __nwlog_obj();
    *buf = 136446210;
    v49 = "__nw_protocol_get_input_handler";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (__nwlog_fault(v37, &type, &v46))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          v49 = "__nw_protocol_get_input_handler";
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v46 == 1)
      {
        v40 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v41 = type;
        v42 = os_log_type_enabled(v38, type);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v49 = "__nw_protocol_get_input_handler";
            v50 = 2082;
            v51 = v40;
            _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_78;
        }

        if (v42)
        {
          *buf = 136446210;
          v49 = "__nw_protocol_get_input_handler";
          _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          v49 = "__nw_protocol_get_input_handler";
          _os_log_impl(&dword_181A37000, v38, v43, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v37)
    {
      free(v37);
    }

    v27 = 0;
    v22 = v44;
    v26 = v45;
    goto LABEL_33;
  }

  return 0;
}

uint64_t ___ZL34nw_protocol_fail_outbound_requestsP31NWConcrete_nw_protocol_instance_block_invoke(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0, 1);

  return 1;
}

void ___ZL41nw_protocol_instance_one_to_one_callbacksv_block_invoke()
{
  nw_protocol_instance_one_to_one_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_add_input_handler);
  nw_protocol_callbacks_set_replace_input_handler(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_replace_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_remove_input_handler);
  nw_protocol_callbacks_set_connected(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_connected);
  nw_protocol_callbacks_set_disconnect(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_disconnect);
  nw_protocol_callbacks_set_disconnected(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_disconnected);
  nw_protocol_callbacks_set_link_state(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_link_state);
  nw_protocol_callbacks_set_get_message_properties(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_get_message_properties);
  nw_protocol_callbacks_set_waiting_for_output(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_waiting_for_output);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_finalize_output_frames);
  nw_protocol_callbacks_set_input_available(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_input_available);
  nw_protocol_callbacks_set_input_finished(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_input_finished);
  nw_protocol_callbacks_set_input_flush(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_input_flush);
  nw_protocol_callbacks_set_output_available(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_output_available);
  nw_protocol_callbacks_set_output_finished(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_output_finished);
  nw_protocol_callbacks_set_copy_info(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_copy_info);
  nw_protocol_callbacks_set_notify(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_notify);
  nw_protocol_callbacks_set_error(nw_protocol_instance_one_to_one_callbacks(void)::callbacks, nw_protocol_implementation_error);
  v0 = nw_protocol_instance_one_to_one_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_updated_path(v0, nw_protocol_implementation_updated_path);
}

void nw_protocol_definition_unregister(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_protocol_unregister(v1 + 1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_definition_unregister";
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
        v14 = "nw_protocol_definition_unregister";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null definition", buf, 0xCu);
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
          v14 = "nw_protocol_definition_unregister";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_definition_unregister";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_definition_unregister";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_idle_state_update(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var22 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_idle_state_update";
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
        v16 = "nw_protocol_definition_set_idle_state_update";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_set_idle_state_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_idle_state_update";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_idle_state_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_make_subdata(void *a1, int a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = v5;
  if (v5)
  {
    nw_frame_claim(v5, v6, a2, a3);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_make_subdata";
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
        v19 = "nw_protocol_make_subdata";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null data", buf, 0xCu);
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
          v19 = "nw_protocol_make_subdata";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_make_subdata";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_make_subdata";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_data_copy_outbound_subdata(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_data_copy_outbound_subdata";
    v26 = _os_log_send_and_compose_impl();

    type[4] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v26, &type[4], type))
    {
      if (type[4] == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type[4];
        if (os_log_type_enabled(v27, type[4]))
        {
          *buf = 136446210;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null data", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v27 = __nwlog_obj();
        v44 = type[4];
        if (os_log_type_enabled(v27, type[4]))
        {
          *buf = 136446210;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          _os_log_impl(&dword_181A37000, v27, v44, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_86;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v32 = type[4];
      v33 = os_log_type_enabled(v27, type[4]);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null data, no backtrace", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v33)
      {
        *buf = 136446466;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        v59 = 2082;
        v60 = backtrace_string;
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_58:

      free(backtrace_string);
    }

LABEL_87:
    if (v26)
    {
      free(v26);
    }

    v23 = 0;
    goto LABEL_28;
  }

  if (!*(v5 + 15))
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_data_copy_outbound_subdata";
    v26 = _os_log_send_and_compose_impl();

    type[4] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v26, &type[4], type))
    {
      if (type[4] == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v30 = type[4];
        if (os_log_type_enabled(v27, type[4]))
        {
          *buf = 136446210;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null instance->context", buf, 0xCu);
        }

LABEL_86:

        goto LABEL_87;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v27 = __nwlog_obj();
        v45 = type[4];
        if (os_log_type_enabled(v27, type[4]))
        {
          *buf = 136446210;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_86;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v42 = type[4];
      v43 = os_log_type_enabled(v27, type[4]);
      if (!backtrace_string)
      {
        if (v43)
        {
          *buf = 136446210;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          _os_log_impl(&dword_181A37000, v27, v42, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v43)
      {
        *buf = 136446466;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        v59 = 2082;
        v60 = backtrace_string;
        _os_log_impl(&dword_181A37000, v27, v42, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_58;
    }

    goto LABEL_87;
  }

  v8 = v6;
  v9 = v8;
  if ((v8[51] & 2) != 0)
  {
    *type = 0;
    v15 = nw_frame_copy_external_data(v8, &type[4], type);
    external = nw_frame_create_external(16, *&type[4] + a3, nw_protocol_outbound_data_finalizer, v5);
    if (external)
    {
      v17 = external;
      nw_frame_set_external_data(external, v15, 0);
      nw_frame_claim(v17, v18, *&type[4], 0);

LABEL_26:
      v23 = v17;
      v23[2] = 0;
      v24 = *(v5 + 19);
      v23[3] = v24;
      *v24 = v23;
      *(v5 + 19) = v23 + 2;
LABEL_27:

LABEL_28:
      return v23;
    }

    v34 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_data_copy_outbound_subdata";
    v35 = _os_log_send_and_compose_impl();

    v55 = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v35, &v55, &v54))
    {
      goto LABEL_93;
    }

    if (v55 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = v55;
      if (os_log_type_enabled(v36, v55))
      {
        *buf = 136446210;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s nw_frame_create_external failed", buf, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      v46 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v47 = v55;
      v48 = os_log_type_enabled(v36, v55);
      if (v46)
      {
        if (v48)
        {
          *buf = 136446466;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          v59 = 2082;
          v60 = v46;
          _os_log_impl(&dword_181A37000, v36, v47, "%{public}s nw_frame_create_external failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v46);
        goto LABEL_93;
      }

      if (v48)
      {
        *buf = 136446210;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        _os_log_impl(&dword_181A37000, v36, v47, "%{public}s nw_frame_create_external failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v36 = __nwlog_obj();
      v52 = v55;
      if (os_log_type_enabled(v36, v55))
      {
        *buf = 136446210;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        _os_log_impl(&dword_181A37000, v36, v52, "%{public}s nw_frame_create_external failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_93:
    if (v35)
    {
      free(v35);
    }

    goto LABEL_101;
  }

  v10 = *(v8 + 14);
  if (!v10)
  {
    goto LABEL_16;
  }

  if ((v8[51] & 0x100) != 0 && g_channel_check_validity)
  {
    if (g_channel_check_validity(v8, *(v8 + 11)))
    {
      v10 = *(v9 + 14);
      goto LABEL_9;
    }

LABEL_16:
    v11 = 0;
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_17:
    v13 = 0;
    sized_typed = 0;
    goto LABEL_21;
  }

LABEL_9:
  v11 = (v10 + v9[14]);
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_10:
  buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(*(v5 + 15), a3);
  if (buffer_manager_with_context)
  {
    v13 = buffer_manager_with_context;
    sized_typed = nw_mem_buffer_allocate_sized_typed(a3, 0x100004077774924uLL, buffer_manager_with_context);
    if (sized_typed)
    {
      goto LABEL_20;
    }
  }

  sized_typed = malloc_type_malloc(a3, 0x79D21057uLL);
  if (sized_typed)
  {
    v13 = 0;
LABEL_20:
    memcpy(sized_typed, v11, a3);
LABEL_21:
    v22 = nw_frame_create(16, sized_typed, a3, nw_protocol_outbound_data_finalizer, v5);
    if (v22)
    {
      v17 = v22;
      if (v13)
      {
        *(v22 + 104) = v13;
      }

      else if (sized_typed)
      {
        *(v22 + 204) |= 1u;
      }

      goto LABEL_26;
    }

    v38 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_data_copy_outbound_subdata";
    v39 = _os_log_send_and_compose_impl();

    type[4] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v39, &type[4], type))
    {
      goto LABEL_99;
    }

    if (type[4] == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type[4];
      if (os_log_type_enabled(v40, type[4]))
      {
        *buf = 136446210;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s nw_frame_create failed", buf, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v49 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v50 = type[4];
      v51 = os_log_type_enabled(v40, type[4]);
      if (v49)
      {
        if (v51)
        {
          *buf = 136446466;
          v58 = "nw_protocol_data_copy_outbound_subdata";
          v59 = 2082;
          v60 = v49;
          _os_log_impl(&dword_181A37000, v40, v50, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v49);
        goto LABEL_99;
      }

      if (v51)
      {
        *buf = 136446210;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        _os_log_impl(&dword_181A37000, v40, v50, "%{public}s nw_frame_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v40 = __nwlog_obj();
      v53 = type[4];
      if (os_log_type_enabled(v40, type[4]))
      {
        *buf = 136446210;
        v58 = "nw_protocol_data_copy_outbound_subdata";
        _os_log_impl(&dword_181A37000, v40, v53, "%{public}s nw_frame_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_99:
    if (v39)
    {
      free(v39);
    }

LABEL_101:
    v23 = 0;
    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v58 = "nw_protocol_data_copy_outbound_subdata";
  v20 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v13 = 0;
    sized_typed = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void nw_protocol_make_superdata(void *a1, unsigned int a2, unsigned int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = v5;
  if (v5)
  {
    nw_frame_unclaim(v5, v6, a2, a3);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_make_superdata";
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
        v19 = "nw_protocol_make_superdata";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null data", buf, 0xCu);
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
          v19 = "nw_protocol_make_superdata";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_make_superdata";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_make_superdata";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_data_get_ecn_flag(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[186] & 3;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_data_get_ecn_flag";
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
        v15 = "nw_protocol_data_get_ecn_flag";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null data", buf, 0xCu);
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
          v15 = "nw_protocol_data_get_ecn_flag";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_get_ecn_flag";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_get_ecn_flag";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_data_set_ecn_flag(void *a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[186] = v3[186] & 0xFC | a2 & 3;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_data_set_ecn_flag";
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
        v15 = "nw_protocol_data_set_ecn_flag";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null data", buf, 0xCu);
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
          v15 = "nw_protocol_data_set_ecn_flag";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_set_ecn_flag";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_set_ecn_flag";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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

BOOL nw_protocol_data_is_in_array(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (v1[4])
    {
      v2 = 1;
    }

    else
    {
      v2 = v1[5] != 0;
    }

    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_data_is_in_array";
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
        v15 = "nw_protocol_data_is_in_array";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null data", buf, 0xCu);
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
          v15 = "nw_protocol_data_is_in_array";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_is_in_array";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_is_in_array";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_5:

  return v2;
}

NWConcrete_nw_protocol_data_array *nw_protocol_data_array_create()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(NWConcrete_nw_protocol_data_array);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446210;
  v15 = "nw_protocol_data_array_create";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_8;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v15 = "nw_protocol_data_array_create";
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s [nw_protocol_data_array init] failed", buf, 0xCu);
    }

LABEL_7:

LABEL_8:
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_9:
    free(v4);
    goto LABEL_10;
  }

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v11 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v15 = "nw_protocol_data_array_create";
      _os_log_impl(&dword_181A37000, v5, v11, "%{public}s [nw_protocol_data_array init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_7;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v9 = type;
  v10 = os_log_type_enabled(v5, type);
  if (!backtrace_string)
  {
    if (v10)
    {
      *buf = 136446210;
      v15 = "nw_protocol_data_array_create";
      _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [nw_protocol_data_array init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (v10)
  {
    *buf = 136446466;
    v15 = "nw_protocol_data_array_create";
    v16 = 2082;
    v17 = backtrace_string;
    _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [nw_protocol_data_array init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v1;
}

BOOL nw_protocol_data_array_is_empty(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (*(v1 + 6))
    {
      v2 = 0;
    }

    else
    {
      v2 = v1[1] == 0;
    }

    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_data_array_is_empty";
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
        v15 = "nw_protocol_data_array_is_empty";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null array", buf, 0xCu);
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
          v15 = "nw_protocol_data_array_is_empty";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_array_is_empty";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_array_is_empty";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 1;
  v1 = 0;
LABEL_5:

  return v2;
}

id nw_protocol_data_array_first(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_data_array_first";
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
        v16 = "nw_protocol_data_array_first";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null array", buf, 0xCu);
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
          v16 = "nw_protocol_data_array_first";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_array_first";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_array_first";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

id nw_protocol_data_array_last(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = **(*(v1 + 2) + 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_data_array_last";
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
        v16 = "nw_protocol_data_array_last";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null array", buf, 0xCu);
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
          v16 = "nw_protocol_data_array_last";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_array_last";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_array_last";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

id nw_protocol_data_array_next(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 4);
    if (!v3 && !*(v1 + 5))
    {
      v3 = 0;
    }

    v4 = v3;
    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_data_array_next";
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
        v17 = "nw_protocol_data_array_next";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null data", buf, 0xCu);
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
          v17 = "nw_protocol_data_array_next";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_protocol_data_array_next";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_data_array_next";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

void nw_protocol_data_array_append(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (v4)
    {
      ++v3[6];
      v4[4] = 0;
      v5 = *(v3 + 2);
      v4[5] = v5;
      *v5 = v4;
      *(v3 + 2) = v4 + 4;
      goto LABEL_4;
    }

    v6 = 0;
    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_data_array_append";
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
          v23 = "nw_protocol_data_array_append";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null data", buf, 0xCu);
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
          v23 = "nw_protocol_data_array_append";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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
          v23 = "nw_protocol_data_array_append";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null data, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_protocol_data_array_append";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v6 = v4;
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_data_array_append";
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
          v23 = "nw_protocol_data_array_append";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null array", buf, 0xCu);
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
          v23 = "nw_protocol_data_array_append";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
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
          v23 = "nw_protocol_data_array_append";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null array, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v23 = "nw_protocol_data_array_append";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
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

  v4 = v6;
LABEL_4:
}

void nw_protocol_data_array_insert_after(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_data_array_insert_after";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null array", buf, 0xCu);
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
          v31 = "nw_protocol_data_array_insert_after";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v10)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v10);
        goto LABEL_5;
      }

      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v6)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_data_array_insert_after";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null data", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
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
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_protocol_data_array_insert_after";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_data_array_insert_after";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null other_data", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null other_data, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
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
        v31 = "nw_protocol_data_array_insert_after";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null other_data, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_protocol_data_array_insert_after";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null other_data, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v20);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  ++v5[6];
  nw_frame_array_insert_after((v5 + 2), 1, v6, v7);
LABEL_5:
}

void nw_protocol_data_array_prepend(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_data_array_prepend";
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
        v23 = "nw_protocol_data_array_prepend";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null array", buf, 0xCu);
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
          v23 = "nw_protocol_data_array_prepend";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_protocol_data_array_prepend";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_data_array_prepend";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    ++*(v3 + 6);
    nw_frame_array_prepend(v3 + 1, 1, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_data_array_prepend";
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
      v23 = "nw_protocol_data_array_prepend";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null data", buf, 0xCu);
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
      v23 = "nw_protocol_data_array_prepend";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_protocol_data_array_prepend";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null data, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_protocol_data_array_prepend";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_data_array_remove(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_data_array_remove";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v19, &type, &v32))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_data_array_remove";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v35 = "nw_protocol_data_array_remove";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_61:
        if (!v19)
        {
          goto LABEL_27;
        }

LABEL_62:
        free(v19);
        goto LABEL_27;
      }

      if (v26)
      {
        *buf = 136446210;
        v35 = "nw_protocol_data_array_remove";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_data_array_remove";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  if (v4)
  {
    v6 = v3[6];
    if (v6)
    {
      v3[6] = v6 - 1;
LABEL_24:
      v15 = v3 + 4;
      v16 = v5[4];
      v17 = v5[5];
      if (v16)
      {
        v15 = (v16 + 40);
      }

      *v15 = v17;
      *v17 = v16;
      v5[4] = 0;
      v5[5] = 0;
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v35 = "nw_protocol_data_array_remove";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "nw_protocol_data_array_remove";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Protocol data array count attempted to decrement below zero", buf, 0xCu);
        }
      }

      else if (v32 == 1)
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
            v35 = "nw_protocol_data_array_remove";
            v36 = 2082;
            v37 = v11;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s Protocol data array count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v11);
          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446210;
          v35 = "nw_protocol_data_array_remove";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s Protocol data array count attempted to decrement below zero, no backtrace", buf, 0xCu);
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
          v35 = "nw_protocol_data_array_remove";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s Protocol data array count attempted to decrement below zero, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    free(v8);
    goto LABEL_24;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_protocol_data_array_remove";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v19, &type, &v32))
  {
    goto LABEL_61;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v20 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v20, type))
    {
      *buf = 136446210;
      v35 = "nw_protocol_data_array_remove";
      _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null data", buf, 0xCu);
    }

    goto LABEL_60;
  }

  if (v32 != 1)
  {
    v20 = __nwlog_obj();
    v31 = type;
    if (os_log_type_enabled(v20, type))
    {
      *buf = 136446210;
      v35 = "nw_protocol_data_array_remove";
      _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_60;
  }

  v27 = __nw_create_backtrace_string();
  v20 = __nwlog_obj();
  v28 = type;
  v29 = os_log_type_enabled(v20, type);
  if (!v27)
  {
    if (v29)
    {
      *buf = 136446210;
      v35 = "nw_protocol_data_array_remove";
      _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null data, no backtrace", buf, 0xCu);
    }

    goto LABEL_60;
  }

  if (v29)
  {
    *buf = 136446466;
    v35 = "nw_protocol_data_array_remove";
    v36 = 2082;
    v37 = v27;
    _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v27);
  if (v19)
  {
    goto LABEL_62;
  }

LABEL_27:
}

void nw_protocol_data_array_apply(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_data_array_apply";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_data_array_apply";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v30 = "nw_protocol_data_array_apply";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v10)
        {
          goto LABEL_7;
        }

LABEL_42:
        free(v10);
        goto LABEL_7;
      }

      if (v17)
      {
        *buf = 136446210;
        v30 = "nw_protocol_data_array_apply";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_data_array_apply";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v4)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v24 = __nw_protocol_data_array_apply_block_invoke;
    v25 = &unk_1E6A2CE18;
    v26 = v4;
    v6 = v3[1];
    do
    {
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 32);
      v8 = v24(v23);
      v6 = v7;
    }

    while ((v8 & 1) != 0);

    goto LABEL_7;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_protocol_data_array_apply";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v10, &type, &v27))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v30 = "nw_protocol_data_array_apply";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null apply_block", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v27 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v30 = "nw_protocol_data_array_apply";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null apply_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_40;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = type;
  v20 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v30 = "nw_protocol_data_array_apply";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null apply_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v20)
  {
    *buf = 136446466;
    v30 = "nw_protocol_data_array_apply";
    v31 = 2082;
    v32 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null apply_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_42;
  }

LABEL_7:
}

void nw_protocol_data_array_prepend_array(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_data_array_prepend_array";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v12, &type, &v25))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_data_array_prepend_array";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v25 == 1)
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
          v28 = "nw_protocol_data_array_prepend_array";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v12)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v12);
        goto LABEL_8;
      }

      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_data_array_prepend_array";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_data_array_prepend_array";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (v4)
  {
    v6 = v3[1];
    v7 = v4 + 1;
    if (v6)
    {
      v8 = v4[2];
      *v8 = v6;
      *(v3[1] + 40) = v8;
      v4[2] = v3[2];
      v3[1] = 0;
      v3[2] = v3 + 1;
    }

    if (*v7)
    {
      v9 = v3[2];
      *v9 = *v7;
      *(v4[1] + 40) = v9;
      v3[2] = v4[2];
      v4[1] = 0;
      v4[2] = v7;
    }

    *(v3 + 6) += *(v4 + 6);
    v10 = v4;
    v5[1] = 0;
    v10[2] = v7;
    *(v5 + 6) = 0;

    goto LABEL_8;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_data_array_prepend_array";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v12, &type, &v25))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v16 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v28 = "nw_protocol_data_array_prepend_array";
      _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null prepend_array", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v25 != 1)
  {
    v13 = __nwlog_obj();
    v24 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v28 = "nw_protocol_data_array_prepend_array";
      _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null prepend_array, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v20 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v21 = type;
  v22 = os_log_type_enabled(v13, type);
  if (!v20)
  {
    if (v22)
    {
      *buf = 136446210;
      v28 = "nw_protocol_data_array_prepend_array";
      _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null prepend_array, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v22)
  {
    *buf = 136446466;
    v28 = "nw_protocol_data_array_prepend_array";
    v29 = 2082;
    v30 = v20;
    _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null prepend_array, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v20);
  if (v12)
  {
    goto LABEL_43;
  }

LABEL_8:
}

void nw_protocol_data_array_apppend_array(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_data_array_apppend_array";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v12, &type, &v25))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_data_array_apppend_array";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v25 == 1)
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
          v28 = "nw_protocol_data_array_apppend_array";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v12)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v12);
        goto LABEL_8;
      }

      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_data_array_apppend_array";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_data_array_apppend_array";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (v4)
  {
    v6 = v3[1];
    v7 = v4 + 1;
    if (v6)
    {
      v8 = v4[2];
      *v8 = v6;
      *(v3[1] + 40) = v8;
      v4[2] = v3[2];
      v3[1] = 0;
      v3[2] = v3 + 1;
    }

    if (*v7)
    {
      v9 = v3[2];
      *v9 = *v7;
      *(v4[1] + 40) = v9;
      v3[2] = v4[2];
      v4[1] = 0;
      v4[2] = v7;
    }

    *(v3 + 6) += *(v4 + 6);
    v10 = v4;
    v5[1] = 0;
    v10[2] = v7;
    *(v5 + 6) = 0;

    goto LABEL_8;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_data_array_apppend_array";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v12, &type, &v25))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v16 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v28 = "nw_protocol_data_array_apppend_array";
      _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null append_array", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v25 != 1)
  {
    v13 = __nwlog_obj();
    v24 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v28 = "nw_protocol_data_array_apppend_array";
      _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null append_array, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v20 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v21 = type;
  v22 = os_log_type_enabled(v13, type);
  if (!v20)
  {
    if (v22)
    {
      *buf = 136446210;
      v28 = "nw_protocol_data_array_apppend_array";
      _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null append_array, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v22)
  {
    *buf = 136446466;
    v28 = "nw_protocol_data_array_apppend_array";
    v29 = 2082;
    v30 = v20;
    _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null append_array, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v20);
  if (v12)
  {
    goto LABEL_43;
  }

LABEL_8:
}

uint64_t nw_protocol_data_array_count(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[6];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_data_array_count";
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
        v15 = "nw_protocol_data_array_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null array", buf, 0xCu);
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
          v15 = "nw_protocol_data_array_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_array_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_data_array_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_data_array_data_length(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    nw_frame_array_get_frame_count(v1 + 1, 1, buf);
    v3 = *buf;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_data_array_data_length";
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
        v16 = "nw_protocol_data_array_data_length";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null array", buf, 0xCu);
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
          v16 = "nw_protocol_data_array_data_length";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_array_data_length";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_array_data_length";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
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

id nw_protocol_metadata_copy_original(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_metadata_copy_definition(v1);
  v3 = v2;
  if (!v2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_metadata_copy_original";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v12, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_metadata_copy_original";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null definition", buf, 0xCu);
        }
      }

      else if (v23 == 1)
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
            *&buf[4] = "nw_protocol_metadata_copy_original";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_metadata_copy_original";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_metadata_copy_original";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_28;
  }

  isa = v2[9].isa;
  if (!isa || !*(isa + 4))
  {
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__12441;
  v27 = __Block_byref_object_dispose__12442;
  v28 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __nw_protocol_metadata_copy_original_block_invoke;
  v20[3] = &unk_1E6A3A880;
  v22 = buf;
  v5 = v2;
  v21 = v5;
  nw_protocol_metadata_access_handle(v1, v20);
  if (!*(*&buf[8] + 40))
  {
    if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
    }

    v6 = nw_protocol_copy_quic_connection_definition_quic_definition;
    is_equal_unsafe = nw_protocol_definition_is_equal_unsafe(v5, v6);

    if (is_equal_unsafe)
    {
      v8 = _nw_quic_metadata_copy_original_external(v1);
      v9 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v8;
    }
  }

  v10 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
LABEL_29:

  return v10;
}

void sub_18241EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_metadata_copy_original_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 72) + 32))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

void nw_protocol_metadata_set_original(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = nw_protocol_metadata_copy_definition(v3);
  v6 = v5;
  if (v5)
  {
    isa = v5[9].isa;
    if (isa)
    {
      v8 = *(isa + 5);
      if (v8)
      {
        v8(v3, v4);
      }
    }

    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_metadata_set_original";
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
        v20 = "nw_protocol_metadata_set_original";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition", buf, 0xCu);
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
          v20 = "nw_protocol_metadata_set_original";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_protocol_metadata_set_original";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_metadata_set_original";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v10)
  {
    free(v10);
  }

LABEL_5:
}

id nw_http_authentication_parse_schemes(_CFHTTPAuthentication *a1, NSObject *a2, char a3, int a4, int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = _nw_array_create();
  error.domain = 0;
  *&error.error = 0;
  if (CFHTTPAuthenticationIsValid(a1, &error))
  {
    SchemesDict = _CFHTTPAuthenticationGetSchemesDict();
    v11 = _CFHTTPAuthenticationCopySortedAuthSchemes();
    v12 = v11;
    if (SchemesDict && v11)
    {
      v30 = a3;
      v13 = 0;
      v14 = *MEMORY[0x1E695AD88];
      v15 = *MEMORY[0x1E695AD90];
      theString2 = *MEMORY[0x1E695AD98];
      v31 = *MEMORY[0x1E695ADA0];
      while (1)
      {
        while (1)
        {
          if (v13 >= CFArrayGetCount(v12))
          {
            goto LABEL_42;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
          if (ValueAtIndex)
          {
            break;
          }

LABEL_6:
          ++v13;
        }

        v17 = ValueAtIndex;
        v18 = 1;
        if (CFStringCompare(ValueAtIndex, v14, 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_25;
        }

        if (CFStringCompare(v17, v15, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }

        if (CFStringCompare(v17, theString2, 1uLL) == kCFCompareEqualTo)
        {
          v18 = 5;
          goto LABEL_25;
        }

        if (CFStringCompare(v17, v31, 1uLL))
        {
          if (CFStringCompare(v17, @"OAuth", 1uLL) == kCFCompareEqualTo)
          {
            v18 = 6;
            goto LABEL_25;
          }

          if (CFStringCompare(v17, @"PrivateToken", 1uLL) == kCFCompareEqualTo)
          {
            v18 = 8;
            goto LABEL_25;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_authentication_parse_schemes";
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s Unsupported authentication type '%{public}@'", buf, 0x16u);
          ++v13;
        }

        else
        {
          if (v30)
          {
            v18 = 4;
            goto LABEL_25;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_parse_schemes";
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s Negotiate requires a URL", buf, 0xCu);
          ++v13;
        }
      }

      v18 = 2;
LABEL_25:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v37 = nw_authentication_protection_space_create(v18);
      nw_authentication_protection_space_set_endpoint(*(*&buf[8] + 24), a2);
      if (a4)
      {
        nw_authentication_protection_space_set_is_proxy(*(*&buf[8] + 24), 1);
        nw_authentication_protection_space_set_proxy_origin_is_cleartext(*(*&buf[8] + 24), a5);
      }

      Value = CFDictionaryGetValue(SchemesDict, v17);
      if (Value && (v22 = CFDictionaryGetValue(Value, @"Realm")) != 0)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 0x40000000;
        v34[2] = __nw_http_authentication_parse_schemes_block_invoke;
        v34[3] = &unk_1E6A2D1D0;
        v34[4] = buf;
        nw_utilities_get_c_string_from_cfstring(v22, 0x201u, v34);
      }

      else
      {
        v23 = *(*&buf[8] + 24);
        hostname = nw_endpoint_get_hostname(a2);
        nw_authentication_protection_space_set_realm(v23, hostname);
      }

      v25 = *(*&buf[8] + 24);
      if (v9 && v25)
      {
        _nw_array_append(v9, v25);
        v25 = *(*&buf[8] + 24);
      }

      if (v25)
      {
        os_release(v25);
        *(*&buf[8] + 24) = 0;
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v28 = "WWW-Authenticate";
      if (a4)
      {
        v28 = "Proxy-Authenticate";
      }

      *buf = 136446466;
      *&buf[4] = "nw_http_authentication_parse_schemes";
      *&buf[12] = 2080;
      *&buf[14] = v28;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s Unable to parse %s header", buf, 0x16u);
    }

LABEL_42:
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_authentication_parse_schemes";
      *&buf[12] = 2048;
      *&buf[14] = error.domain;
      *&buf[22] = 1024;
      LODWORD(v37) = error.error;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s CFHTTPAuthenticationCreateFromResponse failed to return a valid authentication ref [%ld:%d]", buf, 0x1Cu);
    }
  }

  return v9;
}

uint64_t nw_protocol_http_authentication_create::$_2::__invoke(nw_protocol_http_authentication_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "operator()";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_38;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v16 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v19 = "operator()";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v19 = "operator()";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_37;
      }

      if (v10)
      {
        *buf = 136446466;
        v19 = "operator()";
        v20 = 2082;
        v21 = backtrace_string;
        v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
        _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
      }

LABEL_26:
      free(backtrace_string);
      goto LABEL_38;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "operator()";
    v8 = "%{public}s called with null protocol";
LABEL_37:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
LABEL_38:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "operator()";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "operator()";
      v8 = "%{public}s called with null http_authentication";
      goto LABEL_37;
    }

    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "operator()";
      v8 = "%{public}s called with null http_authentication, backtrace limit exceeded";
      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v19 = "operator()";
        v20 = 2082;
        v21 = backtrace_string;
        v11 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (!v12)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "operator()";
    v8 = "%{public}s called with null http_authentication, no backtrace";
    goto LABEL_37;
  }

  if ((*(v3 + 958) & 0x40) == 0)
  {
    return 0;
  }

  if ((*(v3 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v13 = v3;
    v14 = __nwlog_obj();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    v3 = v13;
    if (v15)
    {
      *buf = 136446722;
      v19 = "operator()";
      v20 = 2082;
      v21 = (v13 + 114);
      v22 = 2080;
      v23 = " ";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sretrying pending reissue on a new stream", buf, 0x20u);
      v3 = v13;
    }
  }

  *(v3 + 956) = 2;
  nw_http_authentication_reissue(v3);
  return 1;
}

void nw_http_authentication_reissue(nw_protocol *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_reissue";
    v18 = _os_log_send_and_compose_impl();
    v46[0] = 16;
    v40 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v18, v46, &v40))
    {
      goto LABEL_57;
    }

    if (v46[0] == 17)
    {
      v19 = __nwlog_obj();
      v20 = v46[0];
      if (!os_log_type_enabled(v19, v46[0]))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_reissue";
      v21 = "%{public}s called with null protocol";
    }

    else if (v40 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = v46[0];
      v23 = os_log_type_enabled(v19, v46[0]);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_authentication_reissue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v18)
        {
          return;
        }

LABEL_58:
        free(v18);
        return;
      }

      if (!v23)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_reissue";
      v21 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = v46[0];
      if (!os_log_type_enabled(v19, v46[0]))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_reissue";
      v21 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_56:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_57;
  }

  handle = a1->handle;
  if (handle)
  {
    v3 = *(handle + 479);
    if ((v3 & 0x41) != 0x40)
    {
      return;
    }

    *(handle + 479) = v3 & 0xFFBE;
    if ((handle[198] & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(handle + 237);
        *buf = 136446978;
        *&buf[4] = "nw_http_authentication_reissue";
        *&buf[12] = 2082;
        *&buf[14] = handle + 114;
        *&buf[22] = 2080;
        v42 = " ";
        LOWORD(v43) = 1024;
        *(&v43 + 2) = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sreissuing authenticated request, challenge count %u", buf, 0x26u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v42 = __Block_byref_object_copy__116;
    v43 = __Block_byref_object_dispose__117;
    parameters = nw_protocol_get_parameters(handle);
    if (parameters)
    {
      parameters = os_retain(parameters);
    }

    v44 = parameters;
    v45 |= 1u;
    v7 = 944;
    if ((*(handle + 479) & 0x10) == 0)
    {
      v7 = 940;
    }

    v8 = *&handle[v7];
    if ((v8 & 0xFFFFFFFE) != 4 || *(handle + 234) < 4)
    {
      nw_http_messaging_options_create_transaction_in_parameters(*(*&buf[8] + 40), handle, 2);
      v15 = (*(handle + 479) & 8) == 0;
      v16 = *(handle + 91);
      v17 = handle[956];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 0x40000000;
      v36[2] = ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke_2;
      v36[3] = &__block_descriptor_tmp_120;
      v36[4] = handle;
      v37 = v15;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke_3;
      v34[3] = &unk_1E6A2D6C8;
      v34[4] = buf;
      v34[5] = handle;
      v35 = v15;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 0x40000000;
      v33[2] = ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke_5;
      v33[3] = &__block_descriptor_tmp_125;
      v33[4] = handle;
      nw_protocol_plugin_retry_reissue_output_frames((handle + 344), a1, v16, 0, 0, v17, 1, v36, v34, v33);
LABEL_25:
      _Block_object_dispose(buf, 8);
      if (v45)
      {
        if (v44)
        {
          os_release(v44);
        }
      }

      return;
    }

    if (CFDictionaryGetCount(*(handle + 79)))
    {
LABEL_21:
      v14 = *(handle + 63);
      if (!v14 || (v38[0] = MEMORY[0x1E69E9820], v38[1] = 0x40000000, v38[2] = ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke, v38[3] = &__block_descriptor_tmp_118, v38[4] = handle, ((*(v14 + 16))(v14, *(*&buf[8] + 40), v38) & 1) == 0))
      {
        nw_protocol_error(*(handle + 6), handle);
        nw_protocol_disconnected(*(handle + 6), handle);
      }

      goto LABEL_25;
    }

    v9 = objc_alloc_init(NWConcrete_nw_authentication_credential_cache_entry);
    v10 = v9;
    v11 = 760;
    if ((*(handle + 479) & 0x10) != 0)
    {
      v12 = 568;
    }

    else
    {
      v11 = 744;
      v12 = 552;
    }

    nw_authentication_credential_cache_entry_set_http_authentication(v9, *&handle[v11]);
    nw_authentication_credential_cache_entry_set_credential(v10, *&handle[v12]);
    nw_authentication_credential_cache_entry_set_for_proxy(v10, (*(handle + 479) & 0x10) != 0);
    if (v10)
    {
      v10->type = v8;
      v13 = *(handle + 77);
      if (v13)
      {
        _nw_array_append(v13, v10);
      }

      os_release(v10);
      goto LABEL_21;
    }

    v26 = __nwlog_obj();
    *v46 = 136446210;
    v47 = "nw_authentication_credential_cache_entry_set_type";
    v27 = _os_log_send_and_compose_impl();

    v40 = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v27, &v40, &v39))
    {
LABEL_74:
      if (v27)
      {
        free(v27);
      }

      goto LABEL_21;
    }

    if (v40 == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = v40;
      if (os_log_type_enabled(v28, v40))
      {
        *v46 = 136446210;
        v47 = "nw_authentication_credential_cache_entry_set_type";
        v30 = "%{public}s called with null cache_entry";
LABEL_72:
        _os_log_impl(&dword_181A37000, v28, v29, v30, v46, 0xCu);
      }
    }

    else
    {
      if (v39 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = v40;
        v32 = os_log_type_enabled(v28, v40);
        if (v31)
        {
          if (v32)
          {
            *v46 = 136446466;
            v47 = "nw_authentication_credential_cache_entry_set_type";
            v48 = 2082;
            v49 = v31;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", v46, 0x16u);
          }

          free(v31);
          goto LABEL_74;
        }

        if (!v32)
        {
          goto LABEL_73;
        }

        *v46 = 136446210;
        v47 = "nw_authentication_credential_cache_entry_set_type";
        v30 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_72;
      }

      v28 = __nwlog_obj();
      v29 = v40;
      if (os_log_type_enabled(v28, v40))
      {
        *v46 = 136446210;
        v47 = "nw_authentication_credential_cache_entry_set_type";
        v30 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_72;
      }
    }

LABEL_73:

    goto LABEL_74;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_authentication_reissue";
  v18 = _os_log_send_and_compose_impl();
  v46[0] = 16;
  v40 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v18, v46, &v40))
  {
    goto LABEL_57;
  }

  if (v46[0] == 17)
  {
    v19 = __nwlog_obj();
    v20 = v46[0];
    if (!os_log_type_enabled(v19, v46[0]))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_reissue";
    v21 = "%{public}s called with null http_authentication";
    goto LABEL_56;
  }

  if (v40 != OS_LOG_TYPE_INFO)
  {
    v19 = __nwlog_obj();
    v20 = v46[0];
    if (!os_log_type_enabled(v19, v46[0]))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_reissue";
    v21 = "%{public}s called with null http_authentication, backtrace limit exceeded";
    goto LABEL_56;
  }

  v24 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v20 = v46[0];
  v25 = os_log_type_enabled(v19, v46[0]);
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_reissue";
    v21 = "%{public}s called with null http_authentication, no backtrace";
    goto LABEL_56;
  }

  if (v25)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_authentication_reissue";
    *&buf[12] = 2082;
    *&buf[14] = v24;
    _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v24);
  if (v18)
  {
    goto LABEL_58;
  }
}

uint64_t __Block_byref_object_copy__116(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__117(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  nw_frame_set_metadata(*a2, *(*(a1 + 32) + 488), 0, *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 816);
  if (v4)
  {
    v5 = *(v3 + 808);
    if (v5)
    {
      os_release(v5);
      v4 = *(v3 + 816);
    }
  }

  *(v3 + 808) = 0;
  *(v3 + 816) = v4 | 1;
  v6 = *(a1 + 32);
  v7 = *(v6 + 832);
  if (v7)
  {
    v8 = *(v6 + 824);
    if (v8)
    {
      os_release(v8);
      v7 = *(v6 + 832);
    }
  }

  *(v6 + 824) = 0;
  *(v6 + 832) = v7 | 1;
  v9 = *(a1 + 32);
  v10 = *(v9 + 848);
  if (v10)
  {
    v11 = *(v9 + 840);
    if (v11)
    {
      os_release(v11);
      v10 = *(v9 + 848);
    }
  }

  *(v9 + 840) = 0;
  *(v9 + 848) = v10 | 1;
  v12 = *(a1 + 32);
  v13 = *(v12 + 864);
  if (v13)
  {
    v14 = *(v12 + 856);
    if (v14)
    {
      os_release(v14);
      v13 = *(v12 + 864);
    }
  }

  *(v12 + 856) = 0;
  *(v12 + 864) = v13 | 1;
  return 1;
}

uint64_t ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke_3(uint64_t a1)
{
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v2 = nw_protocol_copy_http_client_definition_definition;
  identifier = nw_protocol_definition_get_identifier(v2);
  if (v2)
  {
    os_release(v2);
  }

  v4 = *(a1 + 40);
  do
  {
    v4 = *(v4 + 48);
    if (!v4)
    {
      return 1;
    }
  }

  while (!nw_protocols_are_equal(*(v4 + 16), identifier));
  v5 = nw_parameters_copy_protocol_options_legacy(*(*(*(a1 + 32) + 8) + 40), v4);
  v6 = nw_http_client_options_copy_resend_handler(v5);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZL30nw_http_authentication_reissueP11nw_protocol_block_invoke_4;
    v12[3] = &__block_descriptor_tmp_122;
    v12[4] = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v6;
    (*(v6 + 2))(v6, *(v8 + 40), 0, v9, v12);
    _Block_release(v10);
  }

  if (v5)
  {
    os_release(v5);
  }

  return v7;
}

void nw_protocol_http_authentication_create::$_1::__invoke(uint64_t a1, int a2, void *object, int a4, uint64_t a5)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v30 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v56[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v30, type, v56))
    {
      goto LABEL_135;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v56[0] != OS_LOG_TYPE_INFO)
      {
        v31 = __nwlog_obj();
        v32 = type[0];
        if (!os_log_type_enabled(v31, type[0]))
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v33 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_134;
      }

      backtrace_string = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type[0];
      v35 = os_log_type_enabled(v31, type[0]);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v33 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_134;
      }

      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_135:
      if (v30)
      {
        goto LABEL_136;
      }

      return;
    }

    v31 = __nwlog_obj();
    v32 = type[0];
    if (!os_log_type_enabled(v31, type[0]))
    {
      goto LABEL_135;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v33 = "%{public}s called with null protocol";
    goto LABEL_134;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v30 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v56[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v30, type, v56))
    {
      goto LABEL_135;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v56[0] != OS_LOG_TYPE_INFO)
      {
        v31 = __nwlog_obj();
        v32 = type[0];
        if (!os_log_type_enabled(v31, type[0]))
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v33 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_134;
      }

      v36 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type[0];
      v37 = os_log_type_enabled(v31, type[0]);
      if (!v36)
      {
        if (!v37)
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v33 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_134;
      }

      if (!v37)
      {
        goto LABEL_86;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      v38 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
      goto LABEL_85;
    }

    v31 = __nwlog_obj();
    v32 = type[0];
    if (!os_log_type_enabled(v31, type[0]))
    {
      goto LABEL_135;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v33 = "%{public}s called with null http_authentication";
LABEL_134:
    _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
    goto LABEL_135;
  }

  if (!object)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v30 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v56[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v30, type, v56))
    {
      goto LABEL_135;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (!os_log_type_enabled(v31, type[0]))
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v33 = "%{public}s called with null metadata";
      goto LABEL_134;
    }

    if (v56[0] != OS_LOG_TYPE_INFO)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (!os_log_type_enabled(v31, type[0]))
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v33 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_134;
    }

    v36 = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type[0];
    v39 = os_log_type_enabled(v31, type[0]);
    if (!v36)
    {
      if (!v39)
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v33 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_134;
    }

    if (!v39)
    {
      goto LABEL_86;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v36;
    v38 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_85:
    _os_log_impl(&dword_181A37000, v31, v32, v38, buf, 0x16u);
    goto LABEL_86;
  }

  if (a5)
  {
    if (*(v6 + 472))
    {
LABEL_50:
      (*(a5 + 16))(a5, 1);
      return;
    }

    v10 = os_retain(object);
    v11 = *(v6 + 480);
    if ((v11 & 1) != 0 && *(v6 + 472))
    {
      v12 = v10;
      os_release(*(v6 + 472));
      v10 = v12;
      v11 = *(v6 + 480);
    }

    *(v6 + 472) = v10;
    *(v6 + 480) = v11 | 1;
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 472);
      if (v14)
      {
        *type = 0;
        v65 = type;
        v66 = 0x3802000000;
        v67 = __Block_byref_object_copy__109;
        v68 = __Block_byref_object_dispose__110;
        v69 = nw_http_metadata_copy_request(v14);
        v70 |= 1u;
        if (*(v65 + 5))
        {
          if ((*(v13 + 198) & 1) == 0 && gLogDatapath == 1)
          {
            v49 = __nwlog_obj();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_authentication_apply_cache";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 114;
              *&buf[22] = 2080;
              v72 = " ";
              _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
            }
          }

          v15 = *(v13 + 632);
          if (v15 && CFDictionaryGetCount(v15))
          {
            v16 = *(v65 + 5);
            *(v65 + 5) = 0;
            v17 = *(v13 + 848);
            if (v17)
            {
              v18 = *(v13 + 840);
              if (v18)
              {
                os_release(v18);
                v17 = *(v13 + 848);
              }
            }

            *(v13 + 840) = v16;
            *(v13 + 848) = v17 | 1;
            CFDictionaryApplyFunction(*(v13 + 632), nw_http_authentication_apply_appsso_headers, v13);
            *(v13 + 940) = 4;
            CFDictionaryRemoveAllValues(*(v13 + 632));
          }

          else
          {
            if (nw_endpoint_get_type(*(v13 + 680)) == nw_endpoint_type_url)
            {
              v19 = nw_endpoint_copy_cfurl(*(v13 + 680));
            }

            else
            {
              v19 = 0;
            }

            v20 = nw_http_request_copy_url_request(*(v65 + 5), **(&unk_1E6A3DB88 + *(v13 + 936)), v19);
            *v56 = 0;
            v57 = v56;
            v58 = 0x3802000000;
            v59 = __Block_byref_object_copy__111;
            v60 = __Block_byref_object_dispose__112;
            objecta = CFURLRequestCopyHTTPRequest();
            v62 |= 1u;
            have_field_with_name = nw_http_fields_have_field_with_name(*(v65 + 5), "Authorization");
            v22 = nw_http_fields_have_field_with_name(*(v65 + 5), "Proxy-Authorization");
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL34nw_http_authentication_apply_cacheP11nw_protocol_block_invoke;
            v72 = &unk_1E6A2D640;
            v76 = v22;
            v77 = have_field_with_name;
            v73 = v56;
            v74 = type;
            v75 = v13;
            v23 = *(v13 + 616);
            if (v23 && !_nw_array_is_empty(v23))
            {
              v26 = *(v13 + 616);
              if (v26)
              {
                _nw_array_apply(v26, buf);
                v26 = *(v13 + 616);
              }

              nw_array_remove_all_objects(v26);
            }

            else
            {
              v24 = *(v13 + 600);
              if (v24)
              {
                if (!_nw_array_is_empty(v24))
                {
                  v25 = *(v13 + 600);
                  if (v25)
                  {
                    _nw_array_apply(v25, buf);
                  }
                }
              }
            }

            _Block_object_dispose(v56, 8);
            if ((v62 & 1) != 0 && objecta)
            {
              os_release(objecta);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (v19)
            {
              CFRelease(v19);
            }
          }

LABEL_39:
          _Block_object_dispose(type, 8);
          if ((v70 & 1) != 0 && v69)
          {
            os_release(v69);
          }

          goto LABEL_42;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_apply_cache";
        v45 = _os_log_send_and_compose_impl();
        v56[0] = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (__nwlog_fault(v45, v56, &v63))
        {
          if (v56[0] == OS_LOG_TYPE_FAULT)
          {
            v46 = __nwlog_obj();
            v47 = v56[0];
            if (!os_log_type_enabled(v46, v56[0]))
            {
              goto LABEL_153;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_apply_cache";
            v48 = "%{public}s called with null request";
            goto LABEL_152;
          }

          if (v63 != 1)
          {
            v46 = __nwlog_obj();
            v47 = v56[0];
            if (!os_log_type_enabled(v46, v56[0]))
            {
              goto LABEL_153;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_apply_cache";
            v48 = "%{public}s called with null request, backtrace limit exceeded";
            goto LABEL_152;
          }

          v54 = __nw_create_backtrace_string();
          v46 = __nwlog_obj();
          v47 = v56[0];
          v55 = os_log_type_enabled(v46, v56[0]);
          if (v54)
          {
            if (v55)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_authentication_apply_cache";
              *&buf[12] = 2082;
              *&buf[14] = v54;
              _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v54);
            goto LABEL_153;
          }

          if (v55)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_apply_cache";
            v48 = "%{public}s called with null request, no backtrace";
LABEL_152:
            _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
          }
        }

LABEL_153:
        if (v45)
        {
          free(v45);
        }

        goto LABEL_39;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_apply_cache";
      v41 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v56[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v41, type, v56))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v42 = __nwlog_obj();
          v43 = type[0];
          if (!os_log_type_enabled(v42, type[0]))
          {
            goto LABEL_148;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_apply_cache";
          v44 = "%{public}s called with null http_authentication->outbound_metadata";
          goto LABEL_147;
        }

        if (v56[0] != OS_LOG_TYPE_INFO)
        {
          v42 = __nwlog_obj();
          v43 = type[0];
          if (!os_log_type_enabled(v42, type[0]))
          {
            goto LABEL_148;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_apply_cache";
          v44 = "%{public}s called with null http_authentication->outbound_metadata, backtrace limit exceeded";
          goto LABEL_147;
        }

        v52 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v43 = type[0];
        v53 = os_log_type_enabled(v42, type[0]);
        if (v52)
        {
          if (v53)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_authentication_apply_cache";
            *&buf[12] = 2082;
            *&buf[14] = v52;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http_authentication->outbound_metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          if (!v41)
          {
            goto LABEL_42;
          }

          goto LABEL_149;
        }

        if (v53)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_apply_cache";
          v44 = "%{public}s called with null http_authentication->outbound_metadata, no backtrace";
LABEL_147:
          _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
        }
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_apply_cache";
      v41 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v56[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v41, type, v56))
      {
        goto LABEL_148;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type[0];
        if (!os_log_type_enabled(v42, type[0]))
        {
          goto LABEL_148;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_apply_cache";
        v44 = "%{public}s called with null http_authentication";
        goto LABEL_147;
      }

      if (v56[0] != OS_LOG_TYPE_INFO)
      {
        v42 = __nwlog_obj();
        v43 = type[0];
        if (!os_log_type_enabled(v42, type[0]))
        {
          goto LABEL_148;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_apply_cache";
        v44 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_147;
      }

      v50 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = type[0];
      v51 = os_log_type_enabled(v42, type[0]);
      if (!v50)
      {
        if (!v51)
        {
          goto LABEL_148;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_apply_cache";
        v44 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_147;
      }

      if (v51)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_apply_cache";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
    }

LABEL_148:
    if (!v41)
    {
LABEL_42:
      v27 = nw_http_metadata_copy_request(object);
      if (nw_http_fields_have_field_with_name(v27, "Cookie"))
      {
        v28 = 4;
      }

      else
      {
        v28 = 0;
      }

      if (a4)
      {
        v29 = 0;
      }

      else
      {
        v29 = 8;
      }

      *(v6 + 958) = v28 | v29 | *(v6 + 958) & 0xFFF3;
      if (v27)
      {
        os_release(v27);
      }

      goto LABEL_50;
    }

LABEL_149:
    free(v41);
    goto LABEL_42;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "operator()";
  v30 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v56[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v30, type, v56))
  {
    goto LABEL_135;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v31 = __nwlog_obj();
    v32 = type[0];
    if (!os_log_type_enabled(v31, type[0]))
    {
      goto LABEL_135;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v33 = "%{public}s called with null completion";
    goto LABEL_134;
  }

  if (v56[0] != OS_LOG_TYPE_INFO)
  {
    v31 = __nwlog_obj();
    v32 = type[0];
    if (!os_log_type_enabled(v31, type[0]))
    {
      goto LABEL_135;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v33 = "%{public}s called with null completion, backtrace limit exceeded";
    goto LABEL_134;
  }

  v36 = __nw_create_backtrace_string();
  v31 = __nwlog_obj();
  v32 = type[0];
  v40 = os_log_type_enabled(v31, type[0]);
  if (!v36)
  {
    if (!v40)
    {
      goto LABEL_135;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v33 = "%{public}s called with null completion, no backtrace";
    goto LABEL_134;
  }

  if (v40)
  {
    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v36;
    v38 = "%{public}s called with null completion, dumping backtrace:%{public}s";
    goto LABEL_85;
  }

LABEL_86:
  free(v36);
  if (v30)
  {
LABEL_136:
    free(v30);
  }
}

uint64_t __Block_byref_object_copy__109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__110(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__112(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t ___ZL34nw_http_authentication_apply_cacheP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  http_authentication = nw_authentication_credential_cache_entry_get_http_authentication(a3);
  if (!a3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_authentication_credential_cache_entry_get_for_proxy";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v9, &type, &v51))
    {
LABEL_20:
      if (v9)
      {
        free(v9);
      }

      LOBYTE(v6) = 0;
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_for_proxy";
        v12 = "%{public}s called with null cache_entry";
LABEL_18:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v51 == 1)
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
            v54 = "nw_authentication_credential_cache_entry_get_for_proxy";
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v14)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_for_proxy";
        v12 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_18;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_for_proxy";
        v12 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v6 = *(a3 + 28);
  if (v6 == 1)
  {
    if (*(a1 + 56))
    {
      goto LABEL_59;
    }

    v7 = 1;
    goto LABEL_25;
  }

LABEL_23:
  if (*(a1 + 57))
  {
    goto LABEL_59;
  }

  v7 = 0;
LABEL_25:
  if (!CFHTTPAuthenticationIsValid(http_authentication, 0) || !CFHTTPAuthenticationAppliesToRequest(http_authentication, *(*(*(a1 + 32) + 8) + 40)))
  {
    goto LABEL_59;
  }

  if ((*(*(a1 + 48) + 198) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48) + 114;
      *buf = 136446722;
      v54 = "nw_http_authentication_apply_cache_block_invoke";
      v55 = 2082;
      v56 = v16;
      v57 = 2080;
      v58 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sapplying credential from cache", buf, 0x20u);
    }
  }

  if (!a3)
  {
    v48 = v7;
    v34 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_authentication_credential_cache_entry_get_type";
    v35 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v35, &type, &v51))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v36, type))
      {
        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_type";
        v38 = "%{public}s called with null cache_entry";
LABEL_75:
        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
      }
    }

    else if (v51 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v40 = os_log_type_enabled(v36, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v54 = "nw_authentication_credential_cache_entry_get_type";
          v55 = 2082;
          v56 = v39;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
LABEL_77:
        if (v35)
        {
          free(v35);
        }

        v41 = __nwlog_obj();
        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_credential";
        v42 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v42, &type, &v51))
        {
          goto LABEL_94;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v43 = __nwlog_obj();
          v44 = type;
          if (os_log_type_enabled(v43, type))
          {
            *buf = 136446210;
            v54 = "nw_authentication_credential_cache_entry_get_credential";
            v45 = "%{public}s called with null cache_entry";
LABEL_92:
            _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
          }
        }

        else if (v51 == 1)
        {
          v46 = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = type;
          v47 = os_log_type_enabled(v43, type);
          if (v46)
          {
            if (v47)
            {
              *buf = 136446466;
              v54 = "nw_authentication_credential_cache_entry_get_credential";
              v55 = 2082;
              v56 = v46;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v46);
            goto LABEL_94;
          }

          if (v47)
          {
            *buf = 136446210;
            v54 = "nw_authentication_credential_cache_entry_get_credential";
            v45 = "%{public}s called with null cache_entry, no backtrace";
            goto LABEL_92;
          }
        }

        else
        {
          v43 = __nwlog_obj();
          v44 = type;
          if (os_log_type_enabled(v43, type))
          {
            *buf = 136446210;
            v54 = "nw_authentication_credential_cache_entry_get_credential";
            v45 = "%{public}s called with null cache_entry, backtrace limit exceeded";
            goto LABEL_92;
          }
        }

LABEL_94:
        if (v42)
        {
          free(v42);
        }

        v17 = 0;
        v19 = 0;
        v7 = v48;
        goto LABEL_34;
      }

      if (v40)
      {
        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_type";
        v38 = "%{public}s called with null cache_entry, no backtrace";
        goto LABEL_75;
      }
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v36, type))
      {
        *buf = 136446210;
        v54 = "nw_authentication_credential_cache_entry_get_type";
        v38 = "%{public}s called with null cache_entry, backtrace limit exceeded";
        goto LABEL_75;
      }
    }

    goto LABEL_77;
  }

  v17 = *(a3 + 24);
  if (v17 == 4)
  {
    NegotiateHeaderForRequest = _CFHTTPAuthenticationCreateNegotiateHeaderForRequest();
LABEL_57:
    if (NegotiateHeaderForRequest)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 0x40000000;
      v49[2] = ___ZL34nw_http_authentication_apply_cacheP11nw_protocol_block_invoke_113;
      v49[3] = &unk_1E6A2D618;
      v49[4] = *(a1 + 40);
      v50 = v6;
      v32 = NegotiateHeaderForRequest;
      nw_utilities_get_c_string_from_cfstring(NegotiateHeaderForRequest, 0x201u, v49);
      CFRelease(v32);
    }

    goto LABEL_59;
  }

  v19 = *(a3 + 16);
LABEL_34:
  if (nw_http_authentication_apply_credentials(*(*(*(a1 + 32) + 8) + 40), http_authentication, v19))
  {
    if (v17 == 5)
    {
      NegotiateHeaderForRequest = _CFHTTPAuthenticationCreateNTLMHeaderForRequest();
      v20 = *(a1 + 48);
      if (!v7)
      {
LABEL_37:
        v21 = *(v20 + 752);
        if ((v21 & 1) != 0 && *(v20 + 744))
        {
          v22 = NegotiateHeaderForRequest;
          os_release(*(v20 + 744));
          NegotiateHeaderForRequest = v22;
          v21 = *(v20 + 752);
        }

        *(v20 + 744) = http_authentication;
        *(v20 + 752) = v21 | 1;
        v23 = *(a1 + 48);
        v24 = *(v23 + 560);
        if ((v24 & 1) != 0 && *(v23 + 552))
        {
          v25 = NegotiateHeaderForRequest;
          os_release(*(v23 + 552));
          NegotiateHeaderForRequest = v25;
          v24 = *(v23 + 560);
        }

        http_authentication = 0;
        *(v23 + 552) = v19;
        *(v23 + 560) = v24 | 1;
        *(*(a1 + 48) + 940) = v17;
        goto LABEL_57;
      }
    }

    else
    {
      if (v7)
      {
        v26 = @"Proxy-Authorization";
      }

      else
      {
        v26 = @"Authorization";
      }

      NegotiateHeaderForRequest = CFHTTPMessageCopyHeaderFieldValue(*(*(*(a1 + 32) + 8) + 40), v26);
      *(*(a1 + 48) + 958) |= 0x200u;
      v20 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_37;
      }
    }

    v27 = *(v20 + 768);
    if ((v27 & 1) != 0 && *(v20 + 760))
    {
      v28 = NegotiateHeaderForRequest;
      os_release(*(v20 + 760));
      NegotiateHeaderForRequest = v28;
      v27 = *(v20 + 768);
    }

    *(v20 + 760) = http_authentication;
    *(v20 + 768) = v27 | 1;
    v29 = *(a1 + 48);
    v30 = *(v29 + 576);
    if ((v30 & 1) != 0 && *(v29 + 568))
    {
      v31 = NegotiateHeaderForRequest;
      os_release(*(v29 + 568));
      NegotiateHeaderForRequest = v31;
      v30 = *(v29 + 576);
    }

    http_authentication = 0;
    *(v29 + 568) = v19;
    *(v29 + 576) = v30 | 1;
    *(*(a1 + 48) + 944) = v17;
    goto LABEL_57;
  }

  if (v19)
  {
    os_release(v19);
  }

LABEL_59:
  if (http_authentication)
  {
    os_release(http_authentication);
  }

  return 1;
}

BOOL nw_http_authentication_apply_credentials(__CFHTTPMessage *a1, _CFHTTPAuthentication *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  username = nw_authentication_credential_get_username(a3);
  password = nw_authentication_credential_get_password(a3);
  v8 = *MEMORY[0x1E695E480];
  if (username)
  {
    v9 = username;
  }

  else
  {
    v9 = "";
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
  if (password)
  {
    v11 = password;
  }

  else
  {
    v11 = "";
  }

  v12 = CFStringCreateWithCString(v8, v11, 0x8000100u);
  v16.domain = 0;
  *&v16.error = 0;
  v13 = CFHTTPMessageApplyCredentials(a1, a2, v10, v12, &v16);
  if (!v13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "nw_http_authentication_apply_credentials";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s CFHTTPMessageApplyCredentials() failed", buf, 0xCu);
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v13 != 0;
}

void ___ZL34nw_http_authentication_apply_cacheP11nw_protocol_block_invoke_113(uint64_t a1, const char *a2)
{
  v2 = 672;
  if (*(a1 + 40))
  {
    v2 = 1984;
  }

  nw_http_fields_set_value_by_name(*(*(*(a1 + 32) + 8) + 40), &nw_http_well_known_field_names[v2], a2);
}

void nw_http_authentication_apply_appsso_headers(const __CFString *a1, const void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_apply_appsso_headers";
    v7 = _os_log_send_and_compose_impl();
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &v17, &v16))
    {
      goto LABEL_38;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v17;
      if (!os_log_type_enabled(v8, v17))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_apply_appsso_headers";
      v10 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v17;
      v12 = os_log_type_enabled(v8, v17);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_authentication_apply_appsso_headers";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          return;
        }

LABEL_39:
        free(v7);
        return;
      }

      if (!v12)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_apply_appsso_headers";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v17;
      if (!os_log_type_enabled(v8, v17))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_apply_appsso_headers";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_38;
  }

  v3 = a3[5];
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v19 = *(v3 + 840);
    if (CFStringCompare(a1, @"Set-Cookie", 1uLL))
    {
      if (*(v3 + 936) >= 4)
      {
        v6 = *(v3 + 632);
        if (v6)
        {
          CFDictionaryAddValue(v6, a1, a2);
        }
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL43nw_http_authentication_apply_appsso_headersPKvS0_Pv_block_invoke;
      v15[3] = &unk_1E6A2D5F0;
      v15[4] = buf;
      v15[5] = a2;
      nw_utilities_get_c_string_from_cfstring(a1, 0x201u, v15);
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_authentication_apply_appsso_headers";
  v7 = _os_log_send_and_compose_impl();
  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &v17, &v16))
  {
    goto LABEL_38;
  }

  if (v17 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v17;
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_apply_appsso_headers";
    v10 = "%{public}s called with null http_authentication";
    goto LABEL_37;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v17;
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_apply_appsso_headers";
    v10 = "%{public}s called with null http_authentication, backtrace limit exceeded";
    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v17;
  v14 = os_log_type_enabled(v8, v17);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_apply_appsso_headers";
    v10 = "%{public}s called with null http_authentication, no backtrace";
    goto LABEL_37;
  }

  if (v14)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_authentication_apply_appsso_headers";
    *&buf[12] = 2082;
    *&buf[14] = v13;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v7)
  {
    goto LABEL_39;
  }
}

void ___ZL43nw_http_authentication_apply_appsso_headersPKvS0_Pv_block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZL43nw_http_authentication_apply_appsso_headersPKvS0_Pv_block_invoke_2;
  v3[3] = &unk_1E6A2D5C8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  nw_utilities_get_c_string_from_cfstring(v2, 0x201u, v3);
}

void nw_protocol_http_authentication_create::$_0::operator()(nw_protocol *a1, uint64_t a2, void *a3, const void *a4)
{
  v184 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v96 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (!__nwlog_fault(v96, type, v165))
    {
      goto LABEL_225;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v97 = __nwlog_obj();
      v98 = type[0];
      if (!os_log_type_enabled(v97, type[0]))
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null protocol";
    }

    else if (LOBYTE(v165[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = type[0];
      v101 = os_log_type_enabled(v97, type[0]);
      if (backtrace_string)
      {
        if (v101)
        {
          *buf = 136446466;
          *&buf[4] = "operator()";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v97, v98, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_225:
        if (!v96)
        {
          return;
        }

        goto LABEL_226;
      }

      if (!v101)
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v97 = __nwlog_obj();
      v98 = type[0];
      if (!os_log_type_enabled(v97, type[0]))
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_224;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v96 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (!__nwlog_fault(v96, type, v165))
    {
      goto LABEL_225;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v165[0]) != 1)
      {
        v97 = __nwlog_obj();
        v98 = type[0];
        if (!os_log_type_enabled(v97, type[0]))
        {
          goto LABEL_225;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v99 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_224;
      }

      v102 = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = type[0];
      v103 = os_log_type_enabled(v97, type[0]);
      if (!v102)
      {
        if (!v103)
        {
          goto LABEL_225;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v99 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_224;
      }

      if (!v103)
      {
        goto LABEL_177;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v102;
      v104 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
      goto LABEL_176;
    }

    v97 = __nwlog_obj();
    v98 = type[0];
    if (!os_log_type_enabled(v97, type[0]))
    {
      goto LABEL_225;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v99 = "%{public}s called with null http_authentication";
LABEL_224:
    _os_log_impl(&dword_181A37000, v97, v98, v99, buf, 0xCu);
    goto LABEL_225;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v96 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (!__nwlog_fault(v96, type, v165))
    {
      goto LABEL_225;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v165[0]) != 1)
      {
        v97 = __nwlog_obj();
        v98 = type[0];
        if (!os_log_type_enabled(v97, type[0]))
        {
          goto LABEL_225;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v99 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_224;
      }

      v102 = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = type[0];
      v105 = os_log_type_enabled(v97, type[0]);
      if (!v102)
      {
        if (!v105)
        {
          goto LABEL_225;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v99 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_224;
      }

      if (!v105)
      {
        goto LABEL_177;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v102;
      v104 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_176;
    }

    v97 = __nwlog_obj();
    v98 = type[0];
    if (!os_log_type_enabled(v97, type[0]))
    {
      goto LABEL_225;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v99 = "%{public}s called with null other_protocol";
    goto LABEL_224;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v96 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (!__nwlog_fault(v96, type, v165))
    {
      goto LABEL_225;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v97 = __nwlog_obj();
      v98 = type[0];
      if (!os_log_type_enabled(v97, type[0]))
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null metadata";
      goto LABEL_224;
    }

    if (LOBYTE(v165[0]) != 1)
    {
      v97 = __nwlog_obj();
      v98 = type[0];
      if (!os_log_type_enabled(v97, type[0]))
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_224;
    }

    v102 = __nw_create_backtrace_string();
    v97 = __nwlog_obj();
    v98 = type[0];
    v106 = os_log_type_enabled(v97, type[0]);
    if (!v102)
    {
      if (!v106)
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_224;
    }

    if (!v106)
    {
      goto LABEL_177;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v102;
    v104 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_176:
    _os_log_impl(&dword_181A37000, v97, v98, v104, buf, 0x16u);
    goto LABEL_177;
  }

  v7 = a4;
  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v96 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (!__nwlog_fault(v96, type, v165))
    {
      goto LABEL_225;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v97 = __nwlog_obj();
      v98 = type[0];
      if (!os_log_type_enabled(v97, type[0]))
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null completion";
      goto LABEL_224;
    }

    if (LOBYTE(v165[0]) != 1)
    {
      v97 = __nwlog_obj();
      v98 = type[0];
      if (!os_log_type_enabled(v97, type[0]))
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_224;
    }

    v102 = __nw_create_backtrace_string();
    v97 = __nwlog_obj();
    v98 = type[0];
    v107 = os_log_type_enabled(v97, type[0]);
    if (!v102)
    {
      if (!v107)
      {
        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v99 = "%{public}s called with null completion, no backtrace";
      goto LABEL_224;
    }

    if (v107)
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v102;
      v104 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_176;
    }

LABEL_177:
    free(v102);
    if (!v96)
    {
      return;
    }

LABEL_226:
    free(v96);
    return;
  }

  v8 = nw_http_metadata_copy_response(a3);
  status_code = nw_http_response_get_status_code(v8);
  v10 = status_code;
  if (status_code != 401)
  {
    if (status_code == 407)
    {
      if ((*(handle + 479) & 0x100) == 0)
      {
        goto LABEL_13;
      }

LABEL_29:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "operator()";
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s credential or username was NULL and resending the request without authentication didn't work", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if ((status_code - 200) > 0xC7 || !*(handle + 93))
    {
LABEL_51:
      v36 = handle[464];
      if (v36)
      {
        v37 = *(handle + 57);
        if (v37)
        {
          os_release(v37);
          v36 = handle[464];
        }
      }

      *(handle + 57) = 0;
      handle[464] = v36 | 1;
      goto LABEL_55;
    }

    v26 = os_retain(a3);
    v27 = handle[464];
    if ((v27 & 1) != 0 && *(handle + 57))
    {
      v28 = v26;
      os_release(*(handle + 57));
      v26 = v28;
      v27 = handle[464];
    }

    *(handle + 57) = v26;
    handle[464] = v27 | 1;
    v29 = nw_http_metadata_copy_request(*(handle + 59));
    v30 = nw_http_metadata_copy_response(*(handle + 57));
    if (v29)
    {
      if (v30)
      {
        if ((handle[198] & 1) == 0 && gLogDatapath == 1)
        {
          v130 = v30;
          v131 = __nwlog_obj();
          v132 = os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG);
          v30 = v130;
          if (v132)
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_authentication_process_success";
            *&buf[12] = 2082;
            *&buf[14] = handle + 114;
            *&buf[22] = 2080;
            v178 = " ";
            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
            v30 = v130;
          }
        }

        if ((*(handle + 479) & 0x10) != 0)
        {
          v31 = "Proxy-Authentication-Info";
        }

        else
        {
          v31 = "Authentication-Info";
        }

        v32 = v30;
        have_field_with_name = _nw_http_fields_have_field_with_name(v32, v31);

        if (have_field_with_name)
        {
          v34 = nw_http_response_copy_url_response(v32, v29, 0, **(&unk_1E6A3DC18 + *(handle + 234)));
          CFURLResponseGetHTTPResponse();
          _CFHTTPAuthenticationUpdateFromResponse();
          if (v34)
          {
            os_release(v34);
          }
        }

        if (*(handle + 109))
        {
          _CFHTTPAuthenticationClearAccountRefreshState();
        }

        os_release(v32);
LABEL_49:
        v35 = v29;
LABEL_50:
        os_release(v35);
        goto LABEL_51;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_process_success";
      v126 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v165[0]) = 0;
      if (__nwlog_fault(v126, type, v165))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v127 = __nwlog_obj();
          v128 = type[0];
          if (!os_log_type_enabled(v127, type[0]))
          {
            goto LABEL_290;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_process_success";
          v129 = "%{public}s called with null response";
          goto LABEL_289;
        }

        if (LOBYTE(v165[0]) != 1)
        {
          v127 = __nwlog_obj();
          v128 = type[0];
          if (!os_log_type_enabled(v127, type[0]))
          {
            goto LABEL_290;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_process_success";
          v129 = "%{public}s called with null response, backtrace limit exceeded";
          goto LABEL_289;
        }

        v137 = __nw_create_backtrace_string();
        v127 = __nwlog_obj();
        v128 = type[0];
        v138 = os_log_type_enabled(v127, type[0]);
        if (v137)
        {
          if (v138)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_authentication_process_success";
            *&buf[12] = 2082;
            *&buf[14] = v137;
            _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v137);
          goto LABEL_290;
        }

        if (v138)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_process_success";
          v129 = "%{public}s called with null response, no backtrace";
LABEL_289:
          _os_log_impl(&dword_181A37000, v127, v128, v129, buf, 0xCu);
        }
      }

LABEL_290:
      if (v126)
      {
        free(v126);
      }

      goto LABEL_49;
    }

    v121 = v30;
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_process_success";
    v122 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (__nwlog_fault(v122, type, v165))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_283;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_process_success";
        v125 = "%{public}s called with null request";
LABEL_282:
        _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
        goto LABEL_283;
      }

      if (LOBYTE(v165[0]) != 1)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_283;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_process_success";
        v125 = "%{public}s called with null request, backtrace limit exceeded";
        goto LABEL_282;
      }

      v135 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v124 = type[0];
      v136 = os_log_type_enabled(v123, type[0]);
      if (!v135)
      {
        if (!v136)
        {
          goto LABEL_283;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_process_success";
        v125 = "%{public}s called with null request, no backtrace";
        goto LABEL_282;
      }

      if (v136)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_process_success";
        *&buf[12] = 2082;
        *&buf[14] = v135;
        _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v135);
    }

LABEL_283:
    if (v122)
    {
      free(v122);
    }

    v35 = v121;
    if (!v121)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v11 = *(handle + 479);
  if ((v11 & 0x10) != 0)
  {
    v12 = v11 & 0xFFEF;
    *(handle + 479) = v12;
    *(handle + 237) = 0;
    v13 = handle[544];
    if (v13)
    {
      v14 = *(handle + 67);
      if (v14)
      {
        os_release(v14);
        v13 = handle[544];
        v12 = *(handle + 479);
      }
    }

    *(handle + 67) = 0;
    handle[544] = v13 | 1;
    v11 = v12 & 0xFEFF;
    *(handle + 479) = v11;
  }

  if ((v11 & 0x100) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  v15 = os_retain(a3);
  v16 = handle[464];
  if ((v16 & 1) != 0 && *(handle + 57))
  {
    v17 = v15;
    os_release(*(handle + 57));
    v15 = v17;
    v16 = handle[464];
  }

  *(handle + 57) = v15;
  handle[464] = v16 | 1;
  *(handle + 479) = *(handle + 479) & 0xFFEF | (16 * (v10 != 401));
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 0x40000000;
  v160[2] = ___ZZ38nw_protocol_http_authentication_createENK3__0clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke;
  v160[3] = &__block_descriptor_tmp_26_14620;
  v160[4] = handle;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
  v178 = &unk_1E6A303F0;
  LODWORD(v180) = 1;
  BYTE4(v180) = 0;
  v179 = v160;
  os_unfair_lock_lock(&lock);
  (*&buf[16])(buf);
  os_unfair_lock_unlock(&lock);
  v18 = a1->handle;
  if (v18)
  {
    if (*(v18 + 57))
    {
      v19 = nw_http_metadata_copy_request(*(v18 + 59));
      v20 = nw_http_metadata_copy_response(*(v18 + 57));
      if ((v18[198] & 1) == 0 && gLogDatapath == 1)
      {
        v112 = __nwlog_obj();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_authentication_process_challenge";
          *&buf[12] = 2082;
          *&buf[14] = v18 + 114;
          *&buf[22] = 2080;
          v178 = " ";
          _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        }
      }

      if (!*(v18 + 81) || !*(v18 + 83))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v39 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_process_challenge";
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s Unable to callout to challenge handler", buf, 0xCu);
        }

        LOBYTE(v38) = 1;
        goto LABEL_128;
      }

      v21 = a1->handle;
      if (v21)
      {
        v22 = nw_http_authentication_copy_protocol_metadata(a1);
        if (v22)
        {
          v23 = v22;
          v21[234] = nw_http_connection_metadata_get_version(v22);
          os_release(v23);
        }

        goto LABEL_25;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_set_version";
      v117 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v165[0]) = 0;
      if (__nwlog_fault(v117, type, v165))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v118 = __nwlog_obj();
          v119 = type[0];
          if (!os_log_type_enabled(v118, type[0]))
          {
            goto LABEL_278;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_set_version";
          v120 = "%{public}s called with null http_authentication";
          goto LABEL_277;
        }

        if (LOBYTE(v165[0]) != 1)
        {
          v118 = __nwlog_obj();
          v119 = type[0];
          if (!os_log_type_enabled(v118, type[0]))
          {
            goto LABEL_278;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_set_version";
          v120 = "%{public}s called with null http_authentication, backtrace limit exceeded";
          goto LABEL_277;
        }

        v133 = __nw_create_backtrace_string();
        v118 = __nwlog_obj();
        v119 = type[0];
        v134 = os_log_type_enabled(v118, type[0]);
        if (v133)
        {
          if (v134)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_authentication_set_version";
            *&buf[12] = 2082;
            *&buf[14] = v133;
            _os_log_impl(&dword_181A37000, v118, v119, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v133);
          goto LABEL_278;
        }

        if (v134)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_set_version";
          v120 = "%{public}s called with null http_authentication, no backtrace";
LABEL_277:
          _os_log_impl(&dword_181A37000, v118, v119, v120, buf, 0xCu);
        }
      }

LABEL_278:
      if (v117)
      {
        free(v117);
      }

LABEL_25:
      if (nw_endpoint_get_type(*(v18 + 85)) == nw_endpoint_type_url)
      {
        v24 = nw_endpoint_copy_cfurl(*(v18 + 85));
      }

      else
      {
        v24 = 0;
      }

      v40 = nw_http_request_copy_url_request(v19, **(&unk_1E6A3DBB8 + *(v18 + 234)), v24);
      v41 = CFURLRequestCopyHTTPRequest();
      v42 = v18[816];
      if ((v42 & 1) != 0 && *(v18 + 101))
      {
        v43 = v41;
        os_release(*(v18 + 101));
        v41 = v43;
        v42 = v18[816];
      }

      *(v18 + 101) = v41;
      v18[816] = v42 | 1;
      v44 = nw_http_response_copy_url_response(v20, v19, 0, **(&unk_1E6A3DBE8 + *(v18 + 234)));
      v38 = *MEMORY[0x1E695E480];
      object = v44;
      HTTPResponse = CFURLResponseGetHTTPResponse();
      Copy = CFHTTPMessageCreateCopy(v38, HTTPResponse);
      v47 = v18[832];
      if ((v47 & 1) != 0 && *(v18 + 103))
      {
        v48 = Copy;
        os_release(*(v18 + 103));
        Copy = v48;
        v47 = v18[832];
      }

      *(v18 + 103) = Copy;
      v18[832] = v47 | 1;
      v165[0] = MEMORY[0x1E69E9820];
      v165[1] = 0x40000000;
      v165[2] = ___ZL40nw_http_authentication_process_challengeP11nw_protocol_block_invoke;
      v165[3] = &__block_descriptor_tmp_28_14638;
      v165[4] = v18;
      v165[5] = a1;
      v49 = CFHTTPMessageCopyRequestURL(*(v18 + 101));
      v50 = v18[784];
      if (v50)
      {
        v51 = *(v18 + 97);
        if (v51)
        {
          v52 = v49;
          CFRelease(v51);
          v49 = v52;
          v50 = v18[784];
        }
      }

      *(v18 + 97) = v49;
      v18[784] = v50 | 1;
      v158 = v49;
      if (!v49)
      {
        v53 = CFURLCreateWithString(v38, @"https://localhost", 0);
        v54 = v18[784];
        if (v54)
        {
          v55 = *(v18 + 97);
          if (v55)
          {
            v56 = v53;
            CFRelease(v55);
            v53 = v56;
            v54 = v18[784];
          }
        }

        *(v18 + 97) = v53;
        v18[784] = v54 | 1;
      }

      _CFHTTPMessageSetResponseURL();
      v57 = nw_http_request_copy(v19);
      v58 = v18[848];
      if ((v58 & 1) != 0 && *(v18 + 105))
      {
        v59 = v57;
        os_release(*(v18 + 105));
        v57 = v59;
        v58 = v18[848];
      }

      *(v18 + 105) = v57;
      v18[848] = v58 | 1;
      metadata_for_request = nw_http_create_metadata_for_request(v57);
      v61 = v18[864];
      if ((v61 & 1) != 0 && *(v18 + 107))
      {
        v62 = metadata_for_request;
        os_release(*(v18 + 107));
        metadata_for_request = v62;
        v61 = v18[864];
      }

      *(v18 + 107) = metadata_for_request;
      v18[864] = v61 | 1;
      parameters = nw_protocol_get_parameters(v18);
      if (parameters)
      {
        v64 = os_retain(parameters);
      }

      else
      {
        v64 = 0;
      }

      *bytes = 0u;
      v164 = 0u;
      if (nw_parameters_get_effective_audit_token(v64, bytes))
      {
        v154 = v7;
        v65 = v8;
        v66 = v19;
        v67 = v64;
        v68 = v40;
        v69 = v20;
        v70 = v24;
        v71 = CFDataCreate(v38, bytes, 32);
        v72 = v18[912];
        if (v72)
        {
          v73 = *(v18 + 113);
          if (v73)
          {
            CFRelease(v73);
            v72 = v18[912];
          }
        }

        *(v18 + 113) = v71;
        v18[912] = v72 | 1;
        v24 = v70;
        v20 = v69;
        v40 = v68;
        v64 = v67;
        v19 = v66;
        v8 = v65;
        v7 = v154;
      }

      effective_bundle_id = nw_parameters_get_effective_bundle_id(v64);
      if (effective_bundle_id)
      {
        v75 = CFStringCreateWithCString(v38, effective_bundle_id, 0x8000100u);
        v76 = v18[928];
        if (v76)
        {
          v77 = *(v18 + 115);
          if (v77)
          {
            v155 = v7;
            v78 = v8;
            v79 = v38;
            v80 = v19;
            v81 = v64;
            v82 = v40;
            v83 = v20;
            v84 = v24;
            v85 = v75;
            CFRelease(v77);
            v75 = v85;
            v24 = v84;
            v20 = v83;
            v40 = v82;
            v64 = v81;
            v19 = v80;
            v38 = v79;
            v8 = v78;
            v7 = v155;
            v76 = v18[928];
          }
        }

        *(v18 + 115) = v75;
        v18[928] = v76 | 1;
      }

      v86 = *(v18 + 95);
      if ((*(v18 + 479) & 0x10) != 0)
      {
        v90 = v158 != 0;
        v91 = *(v18 + 71);
        v92 = *(v18 + 236);
LABEL_119:
        LOBYTE(v38) = nw_http_authentication_handle_challenge(a1, v86, v91, v92, v90, v165);
        goto LABEL_120;
      }

      if (v86)
      {
        if ((v18[198] & 1) == 0 && gLogDatapath == 1)
        {
          v157 = __nwlog_obj();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_authentication_process_challenge";
            *&buf[12] = 2082;
            *&buf[14] = v18 + 114;
            *&buf[22] = 2080;
            v178 = " ";
            _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sapplying existing proxy authentication", buf, 0x20u);
          }
        }

        nw_http_authentication_apply_authorization(a1, *(v18 + 95), *(v18 + 71), *(v18 + 236), 0, 1, 0, v165);
      }

      if (!_CFHTTPAuthenticationUsingAppSSO() || (*(v18 + 479) & 0x20) != 0)
      {
LABEL_118:
        v90 = v158 != 0;
        v86 = *(v18 + 93);
        v91 = *(v18 + 69);
        v92 = *(v18 + 235);
        goto LABEL_119;
      }

      cf = CFStringCreateWithCString(v38, v18 + 114, 0x8000100u);
      v152 = _CFHTTPAuthenticationAppSSOShouldManageURL();
      if (!v152)
      {
        v93 = cf;
        if (cf)
        {
LABEL_116:
          CFRelease(v93);
        }

LABEL_117:
        if (v152)
        {
LABEL_120:
          if (v64)
          {
            os_release(v64);
          }

          if (object)
          {
            os_release(object);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (v24)
          {
            CFRelease(v24);
          }

LABEL_128:
          if (v20)
          {
            os_release(v20);
          }

          if (v19)
          {
            os_release(v19);
          }

          goto LABEL_132;
        }

        goto LABEL_118;
      }

      v151 = v24;
      v161[0] = MEMORY[0x1E69E9820];
      v161[1] = 0x40000000;
      v161[2] = ___ZL40nw_http_authentication_process_challengeP11nw_protocol_block_invoke_32;
      v161[3] = &__block_descriptor_tmp_33_14640;
      v161[4] = v18;
      v162 = v158 != 0;
      nw_http_diag_log_for_level(1, 0, v161);
      v87 = a1->handle;
      if (v87)
      {
        *type = 0;
        v167 = type;
        v168 = 0x3802000000;
        v169 = __Block_byref_object_copy__64;
        v170 = __Block_byref_object_dispose__65;
        if (cf)
        {
          v88 = CFRetain(cf);
          v89 = v172 | 1;
        }

        else
        {
          v88 = 0;
          v89 = -1;
        }

        v171 = v88;
        v172 = v89;
        v94 = CFHTTPMessageCopyAllHeaderFields(v87[103]);
        nw_protocol_plugin_retry_begin_async((v87 + 43));
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL43nw_http_authentication_ask_appsso_for_credsP11nw_protocolPK10__CFStringbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke;
        v178 = &unk_1E6A2D5A0;
        v181 = v87;
        v182 = a1;
        v183 = v158 != 0;
        v179 = v165;
        v180 = type;
        v156 = v94;
        _CFHTTPAuthenticationGetAuthHeadersFromAppSSO();
        v95 = __nwlog_obj();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          *v173 = 136446466;
          v174 = "nw_http_authentication_ask_appsso_for_creds";
          v175 = 2114;
          v176 = cf;
          _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_INFO, "%{public}s %{public}@ will wait on AppSSO for creds", v173, 0x16u);
        }

        v24 = v151;
        if (v156)
        {
          CFRelease(v156);
        }

        _Block_object_dispose(type, 8);
        if ((v172 & 1) != 0 && v171)
        {
          CFRelease(v171);
        }

        LOBYTE(v38) = 2;
        v93 = cf;
        if (cf)
        {
          goto LABEL_116;
        }

        goto LABEL_117;
      }

      v150 = v8;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_ask_appsso_for_creds";
      v139 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v173[0] = 0;
      v140 = v139;
      if (__nwlog_fault(v139, type, v173))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v141 = __nwlog_obj();
          v142 = type[0];
          if (!os_log_type_enabled(v141, type[0]))
          {
            goto LABEL_301;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_ask_appsso_for_creds";
          v143 = "%{public}s called with null http_authentication";
LABEL_299:
          v146 = v141;
          v147 = v142;
LABEL_300:
          _os_log_impl(&dword_181A37000, v146, v147, v143, buf, 0xCu);
          goto LABEL_301;
        }

        if (v173[0] != 1)
        {
          v141 = __nwlog_obj();
          v142 = type[0];
          if (!os_log_type_enabled(v141, type[0]))
          {
            goto LABEL_301;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_ask_appsso_for_creds";
          v143 = "%{public}s called with null http_authentication, backtrace limit exceeded";
          goto LABEL_299;
        }

        v144 = __nw_create_backtrace_string();
        log = __nwlog_obj();
        v149 = type[0];
        v145 = os_log_type_enabled(log, type[0]);
        if (v144)
        {
          if (v145)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_authentication_ask_appsso_for_creds";
            *&buf[12] = 2082;
            *&buf[14] = v144;
            _os_log_impl(&dword_181A37000, log, v149, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v144);
        }

        else if (v145)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_ask_appsso_for_creds";
          v143 = "%{public}s called with null http_authentication, no backtrace";
          v146 = log;
          v147 = v149;
          goto LABEL_300;
        }
      }

LABEL_301:
      if (v140)
      {
        free(v140);
      }

      LOBYTE(v38) = 1;
      v8 = v150;
      v24 = v151;
      v93 = cf;
      if (cf)
      {
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_process_challenge";
    v108 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (__nwlog_fault(v108, type, v165))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v109 = __nwlog_obj();
        v110 = type[0];
        if (!os_log_type_enabled(v109, type[0]))
        {
          goto LABEL_265;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_process_challenge";
        v111 = "%{public}s called with null http_authentication->inbound_metadata";
        goto LABEL_264;
      }

      if (LOBYTE(v165[0]) != 1)
      {
        v109 = __nwlog_obj();
        v110 = type[0];
        if (!os_log_type_enabled(v109, type[0]))
        {
          goto LABEL_265;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_process_challenge";
        v111 = "%{public}s called with null http_authentication->inbound_metadata, backtrace limit exceeded";
        goto LABEL_264;
      }

      v115 = __nw_create_backtrace_string();
      v109 = __nwlog_obj();
      v110 = type[0];
      v116 = os_log_type_enabled(v109, type[0]);
      if (v115)
      {
        if (v116)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_authentication_process_challenge";
          *&buf[12] = 2082;
          *&buf[14] = v115;
          _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null http_authentication->inbound_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v115);
        if (!v108)
        {
          goto LABEL_55;
        }

        goto LABEL_266;
      }

      if (v116)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_process_challenge";
        v111 = "%{public}s called with null http_authentication->inbound_metadata, no backtrace";
LABEL_264:
        _os_log_impl(&dword_181A37000, v109, v110, v111, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_process_challenge";
    v108 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v165[0]) = 0;
    if (!__nwlog_fault(v108, type, v165))
    {
      goto LABEL_265;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v109 = __nwlog_obj();
      v110 = type[0];
      if (!os_log_type_enabled(v109, type[0]))
      {
        goto LABEL_265;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_process_challenge";
      v111 = "%{public}s called with null http_authentication";
      goto LABEL_264;
    }

    if (LOBYTE(v165[0]) != 1)
    {
      v109 = __nwlog_obj();
      v110 = type[0];
      if (!os_log_type_enabled(v109, type[0]))
      {
        goto LABEL_265;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_process_challenge";
      v111 = "%{public}s called with null http_authentication, backtrace limit exceeded";
      goto LABEL_264;
    }

    v113 = __nw_create_backtrace_string();
    v109 = __nwlog_obj();
    v110 = type[0];
    v114 = os_log_type_enabled(v109, type[0]);
    if (!v113)
    {
      if (!v114)
      {
        goto LABEL_265;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_process_challenge";
      v111 = "%{public}s called with null http_authentication, no backtrace";
      goto LABEL_264;
    }

    if (v114)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_authentication_process_challenge";
      *&buf[12] = 2082;
      *&buf[14] = v113;
      _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v113);
  }

LABEL_265:
  if (v108)
  {
LABEL_266:
    free(v108);
  }

LABEL_55:
  LOBYTE(v38) = 1;
LABEL_132:
  (*(v7 + 2))(v7, v38);
  if (v8)
  {
    os_release(v8);
  }
}

void ___ZZ38nw_protocol_http_authentication_createENK3__0clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32) + 114;
    v4 = 136446466;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s%sProxy Authentication", &v4, 0x16u);
  }
}

void *nw_http_authentication_copy_protocol_metadata(nw_protocol *a1)
{
  v1 = nw_protocol_copy_info(a1->output_handler->flow_id);
  v2 = v1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__14802;
  v11 = __Block_byref_object_dispose__14803;
  object = 0;
  v13 = -1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZL45nw_http_authentication_copy_protocol_metadataP11nw_protocol_block_invoke;
  v6[3] = &unk_1E6A2D278;
  v6[4] = &v7;
  if (v1 && (_nw_array_apply(v1, v6), (v3 = v8[5]) != 0))
  {
    v4 = os_retain(v3);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  if ((v13 & 1) != 0 && object)
  {
    os_release(object);
  }

  if (v2)
  {
    os_release(v2);
  }

  return v4;
}

void ___ZL40nw_http_authentication_process_challengeP11nw_protocol_block_invoke(uint64_t a1, void *object, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v16 = __nwlog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32) + 114;
      v18 = 136447234;
      v19 = "nw_http_authentication_process_challenge_block_invoke";
      v20 = 2082;
      v21 = v17;
      v22 = 2080;
      v23 = " ";
      v24 = 2048;
      v25 = object;
      v26 = 1024;
      v27 = a3;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreturned from nw_http_authentication_process_response, new_outbound_metadata %p, cancel %d", &v18, 0x30u);
    }
  }

  if (object)
  {
    v8 = os_retain(object);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 496);
  if (v10)
  {
    v11 = *(v9 + 488);
    if (v11)
    {
      os_release(v11);
      v10 = *(v9 + 496);
    }
  }

  *(v9 + 488) = v8;
  *(v9 + 496) = v10 | 1;
  if (a3)
  {
    nw_protocol_plugin_metadata_resume_input(*(a1 + 32) + 200, 1);
    nw_protocol_input_available(*(*(a1 + 40) + 48), *(a1 + 40));
  }

  else
  {
    if (a4)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = *(a1 + 32);
    *(v13 + 956) = v12;
    *(v13 + 958) |= 0x40u;
    if ((*(*(a1 + 32) + 958) & 4) == 0)
    {
      v14 = nw_http_metadata_copy_request(object);
      nw_http_fields_remove_by_name(v14, "Cookie");
      if (v14)
      {
        os_release(v14);
      }
    }

    nw_protocol_plugin_metadata_prepare_for_reissue(*(a1 + 32) + 200, *(*(a1 + 32) + 956) == 1);
    v15 = *(a1 + 32);
    if (*(v15 + 956) != 1)
    {
      nw_http_authentication_reissue(v15);
    }
  }
}

uint64_t nw_http_authentication_handle_challenge(nw_protocol *a1, _CFHTTPAuthentication *a2, void *a3, int a4, char a5, uint64_t a6)
{
  v135 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_handle_challenge";
    v99 = _os_log_send_and_compose_impl();
    v131[0] = 16;
    v125 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v99, v131, &v125))
    {
      goto LABEL_196;
    }

    if (v131[0] == 17)
    {
      v100 = __nwlog_obj();
      v101 = v131[0];
      if (os_log_type_enabled(v100, v131[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_handle_challenge";
        v102 = "%{public}s called with null protocol";
LABEL_195:
        _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0xCu);
      }

LABEL_196:
      if (v99)
      {
        free(v99);
      }

      return 1;
    }

    if (v125 != OS_LOG_TYPE_INFO)
    {
      v100 = __nwlog_obj();
      v101 = v131[0];
      if (os_log_type_enabled(v100, v131[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_handle_challenge";
        v102 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    backtrace_string = __nw_create_backtrace_string();
    v100 = __nwlog_obj();
    v101 = v131[0];
    v104 = os_log_type_enabled(v100, v131[0]);
    if (!backtrace_string)
    {
      if (v104)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_handle_challenge";
        v102 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    if (v104)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_authentication_handle_challenge";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v105 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_174:
      _os_log_impl(&dword_181A37000, v100, v101, v105, buf, 0x16u);
    }

LABEL_175:
    free(backtrace_string);
    goto LABEL_196;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_handle_challenge";
    v99 = _os_log_send_and_compose_impl();
    v131[0] = 16;
    v125 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v99, v131, &v125))
    {
      goto LABEL_196;
    }

    if (v131[0] == 17)
    {
      v100 = __nwlog_obj();
      v101 = v131[0];
      if (os_log_type_enabled(v100, v131[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_handle_challenge";
        v102 = "%{public}s called with null http_authentication";
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    if (v125 != OS_LOG_TYPE_INFO)
    {
      v100 = __nwlog_obj();
      v101 = v131[0];
      if (os_log_type_enabled(v100, v131[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_handle_challenge";
        v102 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    backtrace_string = __nw_create_backtrace_string();
    v100 = __nwlog_obj();
    v101 = v131[0];
    v106 = os_log_type_enabled(v100, v131[0]);
    if (!backtrace_string)
    {
      if (v106)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_handle_challenge";
        v102 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    if (v106)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_authentication_handle_challenge";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v105 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
      goto LABEL_174;
    }

    goto LABEL_175;
  }

  if (!a2)
  {
    goto LABEL_29;
  }

  _CFHTTPAuthenticationUpdateFromResponse();
  if (!CFHTTPAuthenticationIsValid(a2, 0))
  {
    if (a3)
    {
      if (*(handle + 67))
      {
        v19 = a3;
        v20 = v19[2];

        if (v20)
        {
          if (*(handle + 73))
          {
            v21 = [[NWConcrete_nw_authentication_credential alloc] initWithType:?];
            v22 = v19;
            v23 = v19[2];

            nw_authentication_credential_set_username(v21, v23);
            nw_authentication_credential_set_persistence(v21, 1);
            nw_authentication_credential_storage_set_default_credential(*(handle + 73), *(handle + 67), v21);
            if (v21)
            {
              os_release(v21);
            }
          }
        }
      }
    }

    if (a4 != 5)
    {
      nw_array_remove_objects(*(handle + 75), &__block_literal_global_39_14710);
    }

    if ((*(handle + 479) & 0x10) != 0)
    {
      v24 = (handle + 760);
      v25 = handle + 768;
      v26 = handle[768];
      if ((v26 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v24 = (handle + 744);
      v25 = handle + 752;
      v26 = handle[752];
      if ((v26 & 1) == 0)
      {
LABEL_25:
        *v24 = 0;
        *v25 = v26 | 1;
        v27 = handle[544];
        if (v27)
        {
          v28 = *(handle + 67);
          if (v28)
          {
            os_release(v28);
            v27 = handle[544];
          }
        }

        *(handle + 67) = 0;
        handle[544] = v27 | 1;
        goto LABEL_29;
      }
    }

    if (*v24)
    {
      os_release(*v24);
      v26 = *v25;
    }

    goto LABEL_25;
  }

  if (a3)
  {
    if (a4 == 5)
    {
      v13 = a3;
      v14 = v13[2];

      if (v14)
      {
        if (nw_http_authentication_apply_credentials(*(handle + 101), a2, v13))
        {
          NTLMHeaderForRequest = _CFHTTPAuthenticationCreateNTLMHeaderForRequest();
          if (NTLMHeaderForRequest)
          {
            v123[0] = MEMORY[0x1E69E9820];
            v123[1] = 0x40000000;
            v123[2] = ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_40;
            v123[3] = &__block_descriptor_tmp_41_14712;
            v123[4] = handle;
            v16 = NTLMHeaderForRequest;
            nw_utilities_get_c_string_from_cfstring(NTLMHeaderForRequest, 0x201u, v123);
            nw_protocol_plugin_retry_begin_async((handle + 344));
            v17 = *(handle + 91);
            v122[0] = MEMORY[0x1E69E9820];
            v122[1] = 0x40000000;
            v122[2] = ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2;
            v122[3] = &unk_1E6A2D2E0;
            v122[4] = a6;
            v122[5] = handle;
            nw_queue_context_async(v17, v122);
            CFRelease(v16);
            return 2;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v79 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_authentication_handle_challenge";
              _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_ERROR, "%{public}s Unable to find authorization", buf, 0xCu);
            }

            v18 = 1;
            (*(a6 + 16))(a6, 0, 1, 1);
          }
        }

        else
        {
          v18 = 1;
          (*(a6 + 16))(a6, 0, 1, 0);
        }

        return v18;
      }
    }
  }

LABEL_29:
  if ((*(handle + 479) & 0x10) != 0)
  {
    v119 = a6;
    v42 = a1->handle;
    if (!v42)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_set_proxy_url";
      v52 = _os_log_send_and_compose_impl();
      v131[0] = 16;
      v125 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v52, v131, &v125))
      {
        if (v131[0] == 17)
        {
          v54 = __nwlog_obj();
          v55 = v131[0];
          if (os_log_type_enabled(v54, v131[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_set_proxy_url";
            v56 = "%{public}s called with null http_authentication";
            goto LABEL_77;
          }
        }

        else if (v125 == OS_LOG_TYPE_INFO)
        {
          v107 = __nw_create_backtrace_string();
          v54 = __nwlog_obj();
          v55 = v131[0];
          v108 = os_log_type_enabled(v54, v131[0]);
          if (v107)
          {
            if (v108)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_authentication_set_proxy_url";
              *&buf[12] = 2082;
              *&buf[14] = v107;
              _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v107);
          }

          else if (v108)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_set_proxy_url";
            v56 = "%{public}s called with null http_authentication, no backtrace";
            goto LABEL_77;
          }
        }

        else
        {
          v54 = __nwlog_obj();
          v55 = v131[0];
          if (os_log_type_enabled(v54, v131[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_set_proxy_url";
            v56 = "%{public}s called with null http_authentication, backtrace limit exceeded";
            goto LABEL_77;
          }
        }
      }

      goto LABEL_79;
    }

    v43 = a1->handle;
    while (1)
    {
      v44 = v43[2];
      if (nw_protocol_http_messaging_identifier::onceToken != -1)
      {
        v117 = v43[2];
        dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
        v44 = v117;
      }

      if (nw_protocols_are_equal(v44, &nw_protocol_http_messaging_identifier::protocol_identifier))
      {
        break;
      }

      v43 = v43[4];
      if (!v43)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_set_proxy_url";
        v52 = _os_log_send_and_compose_impl();
        v131[0] = 16;
        v125 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v52, v131, &v125))
        {
          if (v131[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v54 = gLogObj;
            v55 = v131[0];
            if (!os_log_type_enabled(gLogObj, v131[0]))
            {
              goto LABEL_79;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_set_proxy_url";
            v56 = "%{public}s could not find http_messaging";
            goto LABEL_77;
          }

          if (v125 == OS_LOG_TYPE_INFO)
          {
            v61 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = v131[0];
            v64 = os_log_type_enabled(gLogObj, v131[0]);
            if (v61)
            {
              if (v64)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_authentication_set_proxy_url";
                *&buf[12] = 2082;
                *&buf[14] = v61;
                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s could not find http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v61);
              if (!v52)
              {
                goto LABEL_106;
              }

LABEL_80:
              free(v52);
              goto LABEL_106;
            }

            if (v64)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_authentication_set_proxy_url";
              v56 = "%{public}s could not find http_messaging, no backtrace";
              v65 = v62;
              v66 = v63;
              goto LABEL_78;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v54 = gLogObj;
            v55 = v131[0];
            if (!os_log_type_enabled(gLogObj, v131[0]))
            {
              goto LABEL_79;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_set_proxy_url";
            v56 = "%{public}s could not find http_messaging, backtrace limit exceeded";
LABEL_77:
            v65 = v54;
            v66 = v55;
LABEL_78:
            _os_log_impl(&dword_181A37000, v65, v66, v56, buf, 0xCu);
          }
        }

LABEL_79:
        if (!v52)
        {
          goto LABEL_106;
        }

        goto LABEL_80;
      }
    }

    parameters = nw_protocol_get_parameters(v43);
    v46 = nw_parameters_copy_effective_proxy_config(parameters);
    if (!v46)
    {
      goto LABEL_106;
    }

    v47 = v46;
    v48 = v47[5];

    if (!v48)
    {
LABEL_105:
      os_release(v47);
      goto LABEL_106;
    }

    v49 = v48;
    type = _nw_endpoint_get_type(v49);

    if (type == 1)
    {
      v118 = _nw_endpoint_copy_address_string(v49);
      hostname = 0;
    }

    else
    {
      if (type != 2)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v78 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_authentication_set_proxy_url";
          *&buf[12] = 1024;
          *&buf[14] = type;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_ERROR, "%{public}s Unsupported endpoint type: %d", buf, 0x12u);
        }

LABEL_104:
        os_release(v49);
        goto LABEL_105;
      }

      hostname = _nw_endpoint_get_hostname(v49);
      v118 = 0;
    }

    v67 = v49;
    v68 = _nw_endpoint_copy_port_string(v67);
    v116 = v67;

    if (v68)
    {
      v69 = *MEMORY[0x1E695E480];
      v70 = "";
      if (v118)
      {
        v70 = v118;
      }

      if (hostname)
      {
        v70 = hostname;
      }

      v71 = CFStringCreateWithFormat(v69, 0, @"http://%s:%s", v70, v68);
      alloc = v69;
      if (!v71)
      {
        goto LABEL_99;
      }

      v72 = CFURLCreateWithString(v69, v71, 0);
      v73 = *(v42 + 800);
      if (v73)
      {
        v74 = *(v42 + 99);
        if (v74)
        {
          CFRelease(v74);
          v73 = *(v42 + 800);
        }
      }

      *(v42 + 99) = v72;
      *(v42 + 800) = v73 | 1;
      if (v72)
      {
        _CFHTTPMessageSetResponseProxyURL();
        v75 = nw_endpoint_create_with_cfurl(*(v42 + 99));
        v76 = *(v42 + 704);
        if (v76)
        {
          v77 = v116;
          if (*(v42 + 87))
          {
            v89 = v75;
            os_release(*(v42 + 87));
            v75 = v89;
            v76 = *(v42 + 704);
          }
        }

        else
        {
          v77 = v116;
        }

        *(v42 + 87) = v75;
        *(v42 + 704) = v76 | 1;
        v80 = 1;
      }

      else
      {
LABEL_99:
        v80 = 0;
        v77 = v116;
      }

      if (v118)
      {
        free(v118);
      }

      free(v68);
      if (v71)
      {
        CFRelease(v71);
      }

      os_release(v77);
      os_release(v47);
      if ((v80 & 1) == 0)
      {
LABEL_106:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v82 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_handle_challenge";
          _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_ERROR, "%{public}s Unable to set proxy URL", buf, 0xCu);
        }

        v18 = 1;
        (*(v119 + 16))(v119, 0, 1, 0);
        return v18;
      }

      v90 = CFHTTPAuthenticationCreateFromResponse(alloc, *(handle + 103));
      v91 = handle[768];
      if ((v91 & 1) != 0 && *(handle + 95))
      {
        v92 = v90;
        os_release(*(handle + 95));
        v90 = v92;
        v91 = handle[768];
      }

      *(handle + 95) = v90;
      handle[768] = v91 | 1;
      v32 = nw_http_authentication_parse_schemes(v90, *(handle + 87), a5, 1, 1);
      a6 = v119;
      if (!v32)
      {
        goto LABEL_147;
      }

      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v81 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_set_proxy_url";
      _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_ERROR, "%{public}s Cannot connect without port", buf, 0xCu);
    }

    if (v118)
    {
      free(v118);
    }

    goto LABEL_104;
  }

  _CFHTTPAuthenticationCanRecoverFromKerberosFailure();
  v29 = _CFHTTPAuthenticationCreateFromResponseWithFlags();
  v30 = handle[752];
  if ((v30 & 1) != 0 && *(handle + 93))
  {
    v31 = v29;
    os_release(*(handle + 93));
    v29 = v31;
    v30 = handle[752];
  }

  *(handle + 93) = v29;
  handle[752] = v30 | 1;
  v32 = nw_http_authentication_parse_schemes(v29, *(handle + 85), a5, 0, 0);
  if (v32)
  {
LABEL_34:
    if (_nw_array_get_count(v32))
    {
      v33 = _nw_array_copy_object_at_index(v32, 0);
      v34 = nw_authentication_protection_space_get_type(v33);
      v35 = objc_alloc_init(NWConcrete_nw_authentication_challenge);
      v36 = handle[544];
      if ((v36 & 1) != 0 && *(handle + 67))
      {
        v37 = v35;
        os_release(*(handle + 67));
        v35 = v37;
        v36 = handle[544];
      }

      *(handle + 67) = v35;
      handle[544] = v36 | 1;
      nw_authentication_challenge_set_protection_space_array(v35, v32);
      nw_authentication_challenge_set_http_message(*(handle + 67), *(handle + 103));
      if (a3 && (v38 = a3, v39 = v38[2], v38, v39) && (*(handle + 479) & 0x200) == 0)
      {
        nw_authentication_challenge_set_proposed_credential(*(handle + 67), v38);
        if ((*(handle + 479) & 0x10) != 0)
        {
          v83 = handle[576];
          if (v83)
          {
            v84 = *(handle + 71);
            if (v84)
            {
              os_release(v84);
              v83 = handle[576];
            }
          }

          *(handle + 71) = 0;
          handle[576] = v83 | 1;
        }

        else
        {
          v40 = handle[560];
          if (v40)
          {
            v41 = *(handle + 69);
            if (v41)
            {
              os_release(v41);
              v40 = handle[560];
            }
          }

          *(handle + 69) = 0;
          handle[560] = v40 | 1;
        }
      }

      else if (v34 != 4)
      {
        v57 = *(handle + 73);
        if (v57)
        {
          v58 = nw_authentication_credential_storage_copy_default_credential(v57, *(handle + 67));
          if (v58)
          {
            v59 = v58;
            v60 = v59[3];

            if (v60)
            {
              nw_authentication_challenge_set_proposed_credential(*(handle + 67), v59);
            }

            os_release(v59);
          }
        }
      }

      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 0x40000000;
      v121[2] = ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_43;
      v121[3] = &__block_descriptor_tmp_46;
      v121[4] = handle;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
      v127 = &unk_1E6A303F0;
      LODWORD(v129) = 1;
      BYTE4(v129) = 1;
      v128 = v121;
      os_unfair_lock_lock(&lock);
      (*&buf[16])(buf);
      os_unfair_lock_unlock(&lock);
      v85 = *(handle + 479);
      if ((v85 & 0x10) != 0)
      {
        if ((v85 & 0x80) != 0 || v34 == 4 || v34 == 8)
        {
          goto LABEL_131;
        }

        if (nw_proxy_options_authbroker_is_available::onceToken != -1)
        {
          dispatch_once(&nw_proxy_options_authbroker_is_available::onceToken, &__block_literal_global_38322);
        }

        if (nw_proxy_options_authbroker_is_available::available != 1 || (v87 = nw_protocol_get_parameters(handle), (nw_parameters_get_prevents_system_http_proxy_authentication(v87) & 1) != 0))
        {
LABEL_131:
          v88 = nw_http_authentication_send_challenge(a1, a6);
          goto LABEL_132;
        }

        v88 = nw_http_authentication_ask_authbroker_for_creds(a1);
      }

      else
      {
        if (v34 != 8)
        {
          if (v34 == 4)
          {
            if (_CFHTTPAuthenticationFailedToGetKerberosTicket())
            {
              v86 = a1->handle;
              if (v86)
              {
                nw_protocol_plugin_retry_begin_async(v86 + 344);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = ___ZL45nw_http_authentication_ask_accounts_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke;
                v127 = &unk_1E6A2D428;
                v128 = a6;
                v129 = v86;
                v130 = a1;
                _CFHTTPAuthenticationAskAccountsForCreds();
                v18 = 2;
                goto LABEL_133;
              }

              __nwlog_obj();
              *v131 = 136446210;
              v132 = "nw_http_authentication_ask_accounts_for_creds";
              v109 = _os_log_send_and_compose_impl();
              v125 = OS_LOG_TYPE_ERROR;
              v124 = 0;
              if (__nwlog_fault(v109, &v125, &v124))
              {
                if (v125 == OS_LOG_TYPE_FAULT)
                {
                  v110 = __nwlog_obj();
                  v111 = v125;
                  if (os_log_type_enabled(v110, v125))
                  {
                    *v131 = 136446210;
                    v132 = "nw_http_authentication_ask_accounts_for_creds";
                    v112 = "%{public}s called with null http_authentication";
LABEL_214:
                    _os_log_impl(&dword_181A37000, v110, v111, v112, v131, 0xCu);
                  }
                }

                else if (v124 == 1)
                {
                  v113 = __nw_create_backtrace_string();
                  v110 = __nwlog_obj();
                  v111 = v125;
                  v114 = os_log_type_enabled(v110, v125);
                  if (v113)
                  {
                    if (v114)
                    {
                      *v131 = 136446466;
                      v132 = "nw_http_authentication_ask_accounts_for_creds";
                      v133 = 2082;
                      v134 = v113;
                      _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", v131, 0x16u);
                    }

                    free(v113);
                    goto LABEL_215;
                  }

                  if (v114)
                  {
                    *v131 = 136446210;
                    v132 = "nw_http_authentication_ask_accounts_for_creds";
                    v112 = "%{public}s called with null http_authentication, no backtrace";
                    goto LABEL_214;
                  }
                }

                else
                {
                  v110 = __nwlog_obj();
                  v111 = v125;
                  if (os_log_type_enabled(v110, v125))
                  {
                    *v131 = 136446210;
                    v132 = "nw_http_authentication_ask_accounts_for_creds";
                    v112 = "%{public}s called with null http_authentication, backtrace limit exceeded";
                    goto LABEL_214;
                  }
                }
              }

LABEL_215:
              if (v109)
              {
                free(v109);
              }

              v18 = 1;
              goto LABEL_133;
            }

            if (!*(handle + 237))
            {
              *(handle + 237) = 1;
              if ((*(handle + 479) & 0x10) != 0)
              {
                *(handle + 236) = 4;
                v95 = *(handle + 95);
                v96 = a1;
                v97 = 1;
              }

              else
              {
                *(handle + 235) = 4;
                v95 = *(handle + 93);
                v96 = a1;
                v97 = 0;
              }

              if (nw_http_authentication_apply_authorization(v96, v95, 0, 4, 0, v97, 0, a6))
              {
                nw_protocol_plugin_retry_begin_async((handle + 344));
                v98 = *(handle + 91);
                v120[0] = MEMORY[0x1E69E9820];
                v120[1] = 0x40000000;
                v120[2] = ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_48;
                v120[3] = &unk_1E6A2D328;
                v120[4] = a6;
                v120[5] = handle;
                nw_queue_context_async(v98, v120);
                v18 = 2;
              }

              else
              {
                v18 = 1;
                (*(a6 + 16))(a6, 0, 1, 0);
              }

LABEL_133:
              if (v33)
              {
                os_release(v33);
              }

LABEL_150:
              os_release(v32);
              return v18;
            }
          }

          goto LABEL_131;
        }

        v88 = nw_http_authentication_ask_pat_for_creds(a1, a6);
      }

LABEL_132:
      v18 = v88;
      goto LABEL_133;
    }
  }

LABEL_147:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v93 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_handle_challenge";
    _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_ERROR, "%{public}s Unable to determine authentication type", buf, 0xCu);
  }

  v18 = 1;
  (*(a6 + 16))(a6, 0, 1, 0);
  if (v32)
  {
    goto LABEL_150;
  }

  return v18;
}

BOOL nw_http_authentication_apply_authorization(nw_protocol *a1, _CFHTTPAuthentication *a2, void *a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_http_authentication_apply_authorization";
    v36 = _os_log_send_and_compose_impl();
    LOBYTE(error.domain) = 16;
    v47 = 0;
    if (!__nwlog_fault(v36, &error, &v47))
    {
      goto LABEL_76;
    }

    if (LOBYTE(error.domain) != 17)
    {
      if (v47 != 1)
      {
        v37 = __nwlog_obj();
        domain = error.domain;
        if (!os_log_type_enabled(v37, error.domain))
        {
          goto LABEL_76;
        }

        *buf = 136446210;
        v49 = "nw_http_authentication_apply_authorization";
        v39 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_75;
      }

      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      domain = error.domain;
      v41 = os_log_type_enabled(v37, error.domain);
      if (!backtrace_string)
      {
        if (!v41)
        {
          goto LABEL_76;
        }

        *buf = 136446210;
        v49 = "nw_http_authentication_apply_authorization";
        v39 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_75;
      }

      if (v41)
      {
        *buf = 136446466;
        v49 = "nw_http_authentication_apply_authorization";
        v50 = 2082;
        v51 = backtrace_string;
        v42 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_65:
        _os_log_impl(&dword_181A37000, v37, domain, v42, buf, 0x16u);
      }

LABEL_66:
      free(backtrace_string);
      goto LABEL_76;
    }

    v37 = __nwlog_obj();
    domain = error.domain;
    if (!os_log_type_enabled(v37, error.domain))
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v49 = "nw_http_authentication_apply_authorization";
    v39 = "%{public}s called with null protocol";
LABEL_75:
    _os_log_impl(&dword_181A37000, v37, domain, v39, buf, 0xCu);
LABEL_76:
    if (v36)
    {
      free(v36);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_http_authentication_apply_authorization";
    v36 = _os_log_send_and_compose_impl();
    LOBYTE(error.domain) = 16;
    v47 = 0;
    if (!__nwlog_fault(v36, &error, &v47))
    {
      goto LABEL_76;
    }

    if (LOBYTE(error.domain) == 17)
    {
      v37 = __nwlog_obj();
      domain = error.domain;
      if (!os_log_type_enabled(v37, error.domain))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      v49 = "nw_http_authentication_apply_authorization";
      v39 = "%{public}s called with null http_authentication";
      goto LABEL_75;
    }

    if (v47 != 1)
    {
      v37 = __nwlog_obj();
      domain = error.domain;
      if (!os_log_type_enabled(v37, error.domain))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      v49 = "nw_http_authentication_apply_authorization";
      v39 = "%{public}s called with null http_authentication, backtrace limit exceeded";
      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    domain = error.domain;
    v43 = os_log_type_enabled(v37, error.domain);
    if (backtrace_string)
    {
      if (v43)
      {
        *buf = 136446466;
        v49 = "nw_http_authentication_apply_authorization";
        v50 = 2082;
        v51 = backtrace_string;
        v42 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v43)
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v49 = "nw_http_authentication_apply_authorization";
    v39 = "%{public}s called with null http_authentication, no backtrace";
    goto LABEL_75;
  }

  if (a4 != 8)
  {
    if (!a3 || (v16 = a7, v17 = a3, v18 = v17[2], v17, a7 = v16, !v18))
    {
      v19 = a7 ? 256 : 0;
      *(handle + 479) = *(handle + 479) & 0xFEFF | v19;
      if (a4 != 4)
      {
        if ((handle[198] & 1) == 0 && gLogDatapath == 1)
        {
          v32 = __nwlog_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v49 = "nw_http_authentication_apply_authorization";
            v50 = 2082;
            v51 = (handle + 114);
            v52 = 2080;
            v53 = " ";
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scredential or username was NULL, resending the request without authentication", buf, 0x20u);
          }
        }

        return 1;
      }
    }
  }

  _CFHTTPAuthenticationSetPreferredScheme();
  error.domain = 0;
  *&error.error = 0;
  if (!CFHTTPAuthenticationIsValid(a2, &error))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v49 = "nw_http_authentication_apply_authorization";
    v50 = 2048;
    v51 = error.domain;
    v52 = 1024;
    LODWORD(v53) = error.error;
    v28 = "%{public}s _CFHTTPAuthenticationSetPreferredScheme failed [%ld:%d]";
    v29 = v26;
    v30 = 28;
LABEL_41:
    _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    return 0;
  }

  if (a4 == 8)
  {
    if ((a6 & 1) == 0)
    {
      nw_http_authentication_ask_pat_for_creds(a1, a8);
      return 1;
    }

    if (nw_http_authentication_apply_credentials(*(handle + 101), a2, a3))
    {
      v31 = (handle + 808);
      goto LABEL_36;
    }
  }

  else
  {
    if (a4 == 4)
    {
      NegotiateHeaderForRequest = _CFHTTPAuthenticationCreateNegotiateHeaderForRequest();
      if (NegotiateHeaderForRequest)
      {
LABEL_14:
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 0x40000000;
        v44[2] = ___ZL42nw_http_authentication_apply_authorizationP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbbbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke;
        v44[3] = &__block_descriptor_tmp_95;
        v44[4] = handle;
        v45 = a6;
        nw_utilities_get_c_string_from_cfstring(NegotiateHeaderForRequest, 0x201u, v44);
        if ((a4 & 0xFFFFFFFE) == 4 || !a5 || !nw_authentication_credential_get_persistence(a3))
        {
          goto LABEL_47;
        }

        v21 = objc_alloc_init(NWConcrete_nw_authentication_credential_cache_entry);
        nw_authentication_credential_cache_entry_set_http_authentication(v21, a2);
        nw_authentication_credential_cache_entry_set_credential(v21, a3);
        nw_authentication_credential_cache_entry_set_for_proxy(v21, a6);
        v22 = *(handle + 75);
        if (v22)
        {
          count = _nw_array_get_count(v22);
          v24 = *(handle + 75);
          if (count < 0x64)
          {
            if (v24 && v21)
            {
              _nw_array_append(v24, v21);
              goto LABEL_46;
            }
          }

          else
          {
            v25 = handle[957];
            handle[957] = v25 + 1;
            nw_array_set_object_at_index(v24, v21, v25);
            if (handle[957] >= 0x64u)
            {
              handle[957] = 0;
            }
          }
        }

        if (!v21)
        {
LABEL_47:
          CFRelease(NegotiateHeaderForRequest);
          return 1;
        }

LABEL_46:
        os_release(v21);
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    if (nw_http_authentication_apply_credentials(*(handle + 101), a2, a3))
    {
      if (a4 == 5)
      {
        NegotiateHeaderForRequest = _CFHTTPAuthenticationCreateNTLMHeaderForRequest();
        if (NegotiateHeaderForRequest)
        {
          goto LABEL_14;
        }

        goto LABEL_39;
      }

      v31 = (handle + 808);
      if (!a6)
      {
        v33 = *v31;
        v34 = @"Authorization";
LABEL_38:
        NegotiateHeaderForRequest = CFHTTPMessageCopyHeaderFieldValue(v33, v34);
        if (NegotiateHeaderForRequest)
        {
          goto LABEL_14;
        }

LABEL_39:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        *buf = 136446210;
        v49 = "nw_http_authentication_apply_authorization";
        v28 = "%{public}s Unable to find authorization";
        v29 = v35;
        v30 = 12;
        goto LABEL_41;
      }

LABEL_36:
      v33 = *v31;
      v34 = @"Proxy-Authorization";
      goto LABEL_38;
    }
  }

  return 0;
}

void ___ZL40nw_http_authentication_process_challengeP11nw_protocol_block_invoke_32(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32) + 114;
    v4 = *(a1 + 40);
    v5 = 136446722;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s%sAsking AppSSO for Credentials (contained url: %d)", &v5, 0x1Cu);
  }
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__65(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    CFRelease(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL43nw_http_authentication_ask_appsso_for_credsP11nw_protocolPK10__CFStringbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(uint64_t a1, CFTypeRef cf, void *a3)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3802000000;
  v20[3] = __Block_byref_object_copy__96;
  v20[4] = __Block_byref_object_dispose__97;
  if (cf)
  {
    v5 = CFRetain(cf);
    v6 = v22 | 1;
  }

  else
  {
    v5 = 0;
    v6 = -1;
  }

  v21 = v5;
  v22 = v6;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3802000000;
  v17[3] = __Block_byref_object_copy__98;
  v17[4] = __Block_byref_object_dispose__99;
  if (a3)
  {
    v7 = os_retain(a3);
    v8 = v19 | 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  object = v7;
  v19 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v9 = *(a1 + 32);
  v15 = *(a1 + 48);
  v11[2] = ___ZL43nw_http_authentication_ask_appsso_for_credsP11nw_protocolPK10__CFStringbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_100;
  v11[3] = &unk_1E6A2D578;
  v13 = v20;
  v14 = v17;
  v10 = *(v15 + 728);
  v16 = *(a1 + 64);
  v12 = v9;
  nw_queue_context_async(v10, v11);
  _Block_object_dispose(v17, 8);
  if ((v19 & 1) != 0 && object)
  {
    os_release(object);
  }

  _Block_object_dispose(v20, 8);
  if (v22)
  {
    if (v21)
    {
      CFRelease(v21);
    }
  }
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__97(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    CFRelease(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__99(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL43nw_http_authentication_ask_appsso_for_credsP11nw_protocolPK10__CFStringbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_100(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(*(a1 + 64) + 344))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(*(a1 + 40) + 8) + 40);
      v4 = *(*(*(a1 + 48) + 8) + 40);
      v5 = *(*(*(a1 + 56) + 8) + 40);
      v22 = 136446978;
      v23 = "nw_http_authentication_ask_appsso_for_creds_block_invoke";
      v24 = 2114;
      v25 = v3;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ handling AppSSO headers %@ error %@", &v22, 0x2Au);
    }

    v6 = *(a1 + 64);
    v7 = *(v6 + 952) + 1;
    *(v6 + 952) = v7;
    if (v7 != v7 << 31 >> 31)
    {
      if (gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(*(a1 + 64) + 952);
          v22 = 136446978;
          v23 = "nw_http_authentication_ask_appsso_for_creds_block_invoke";
          v24 = 2082;
          v25 = "http_authentication->appsso_attempt_count";
          v26 = 2048;
          v27 = 1;
          v28 = 2048;
          v29 = v21;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v22, 0x2Au);
        }
      }

      *(*(a1 + 64) + 952) = -1;
    }

    if (!*(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 48) + 8) + 40))
    {
      CFDictionaryApplyFunction(*(*(*(a1 + 48) + 8) + 40), nw_http_authentication_apply_appsso_headers, *(a1 + 64));
      *(*(a1 + 64) + 940) = 4;
      v12 = *(*(a1 + 32) + 16);
LABEL_22:
      v12();
      return;
    }

    v8 = _CFHTTPAuthenticationAppSSOIsPerformDefaultHandlingError();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!v8)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = *(*(*(a1 + 48) + 8) + 40);
        v15 = *(*(*(a1 + 56) + 8) + 40);
        v22 = 136446978;
        v23 = "nw_http_authentication_ask_appsso_for_creds_block_invoke";
        v24 = 2114;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ AppSSO received headers %@ error %@ canceling", &v22, 0x2Au);
      }

      nw_protocol_error(*(*(a1 + 64) + 48), *(a1 + 64));
      client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(*(a1 + 64) + 712), *(a1 + 64));
      if (client_metadata_in_parameters)
      {
        v17 = client_metadata_in_parameters;
        nw_http_client_metadata_set_client_error(client_metadata_in_parameters, 3);
        nw_protocol_disconnected(*(*(a1 + 64) + 48), *(a1 + 64));
        (*(*(a1 + 32) + 16))();
        os_release(v17);
        return;
      }

      nw_protocol_disconnected(*(*(a1 + 64) + 48), *(a1 + 64));
      v12 = *(*(a1 + 32) + 16);
      goto LABEL_22;
    }

    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v22 = 136446466;
      v23 = "nw_http_authentication_ask_appsso_for_creds_block_invoke";
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}@ AppSSO performing default handling", &v22, 0x16u);
    }

    *(*(a1 + 64) + 958) |= 0x20u;
    nw_http_authentication_handle_challenge(*(a1 + 72), *(*(a1 + 64) + 744), *(*(a1 + 64) + 552), *(*(a1 + 64) + 940), *(a1 + 80), *(a1 + 32));
  }

  else
  {
    v11 = *(a1 + 64);
    if ((v11[198] & 1) == 0 && gLogDatapath == 1)
    {
      v18 = __nwlog_obj();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      v11 = *(a1 + 64);
      if (v19)
      {
        v22 = 136446722;
        v23 = "nw_http_authentication_ask_appsso_for_creds_block_invoke";
        v24 = 2082;
        v25 = v11 + 114;
        v26 = 2080;
        v27 = " ";
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", &v22, 0x20u);
        v11 = *(a1 + 64);
      }
    }

    nw_http_authentication_destroy(v11);
  }
}

uint64_t nw_http_authentication_ask_pat_for_creds(nw_protocol *a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  if (handle)
  {
    parameters = nw_protocol_get_parameters(a1->handle);
    if (parameters)
    {
      v6 = os_retain(parameters);
      if (v6)
      {
        v7 = v6;
        allow_private_access_tokens_for_third_party = _nw_parameters_get_allow_private_access_tokens_for_third_party(v6);
LABEL_17:
        is_third_party_web_content = nw_parameters_is_third_party_web_content(v7);
        v17 = CFURLCopyHostName(*(handle + 776));
        if (is_third_party_web_content && (allow_private_access_tokens_for_third_party & 1) == 0 && !_CFHTTPAuthenticationCheckOriginAllowedAsThirdParty())
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_ask_pat_for_creds";
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Received PAT challenge for disallowed third party", buf, 0xCu);
          }

          client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(handle + 712), handle);
          if (client_metadata_in_parameters)
          {
            v25 = client_metadata_in_parameters;
            nw_http_client_metadata_set_client_error(client_metadata_in_parameters, 2);
            v26 = 1;
            (*(a2 + 16))(a2, 0, 1, 0);
            os_release(v25);
          }

          else
          {
            v26 = 1;
            (*(a2 + 16))(a2, 0, 1, 0);
          }

          goto LABEL_83;
        }

        v51 = v17;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v57 = __Block_byref_object_copy__64;
        v58 = __Block_byref_object_dispose__65;
        v59 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (handle + 114), 0x8000100u);
        v60 |= 1u;
        _CFHTTPAuthenticationGetPATSchemes();
        v18 = nw_parameters_copy_main_document_cfurl(v7);
        v19 = a1->handle;
        if (v19)
        {
          v20 = nw_http_authentication_copy_protocol_metadata(a1);
          if (v20)
          {
            v21 = v20;
            v19[234] = nw_http_connection_metadata_get_version(v20);
            pat_timestamps_array = nw_http_connection_metadata_find_or_create_pat_timestamps_array(v21);
            os_release(v21);
            goto LABEL_69;
          }

LABEL_68:
          pat_timestamps_array = 0;
LABEL_69:
          v39 = nw_context_copy_cached_targeted_dispatch_queue(*(handle + 728));
          *type = 0;
          *&type[8] = type;
          *&type[16] = 0x2000000000;
          v55 = 0;
          nw_protocol_plugin_retry_begin_async(handle + 344);
          if (v7)
          {
            _nw_parameters_get_using_ephemeral_configuration(v7);
LABEL_71:
            _CFHTTPAuthenticationGetPATAuthHeaders();
            if (*(*&type[8] + 24))
            {
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }

            _Block_object_dispose(type, 8);
            if (v39)
            {
              dispatch_release(v39);
            }

            v17 = v51;
            if (pat_timestamps_array)
            {
              os_release(pat_timestamps_array);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            _Block_object_dispose(buf, 8);
            if ((v60 & 1) != 0 && v59)
            {
              CFRelease(v59);
            }

LABEL_83:
            if (v17)
            {
              CFRelease(v17);
            }

            if (v7)
            {
              os_release(v7);
            }

            return v26;
          }

          v47 = __nwlog_obj();
          *v61 = 136446210;
          v62 = "nw_parameters_get_using_ephemeral_configuration";
          v50 = _os_log_send_and_compose_impl();

          v53 = OS_LOG_TYPE_ERROR;
          v52 = 0;
          if (!__nwlog_fault(v50, &v53, &v52))
          {
LABEL_102:
            if (v50)
            {
              free(v50);
            }

            goto LABEL_71;
          }

          if (v53 == OS_LOG_TYPE_FAULT)
          {
            v48 = __nwlog_obj();
            log = v53;
            if (os_log_type_enabled(v48, v53))
            {
              *v61 = 136446210;
              v62 = "nw_parameters_get_using_ephemeral_configuration";
              v41 = "%{public}s called with null parameters";
LABEL_99:
              _os_log_impl(&dword_181A37000, v48, log, v41, v61, 0xCu);
            }
          }

          else
          {
            if (v52 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              loga = __nwlog_obj();
              v44 = v53;
              v42 = os_log_type_enabled(loga, v53);
              if (backtrace_string)
              {
                if (v42)
                {
                  *v61 = 136446466;
                  v62 = "nw_parameters_get_using_ephemeral_configuration";
                  v63 = 2082;
                  v64 = backtrace_string;
                  _os_log_impl(&dword_181A37000, loga, v44, "%{public}s called with null parameters, dumping backtrace:%{public}s", v61, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_102;
              }

              if (v42)
              {
                *v61 = 136446210;
                v62 = "nw_parameters_get_using_ephemeral_configuration";
                _os_log_impl(&dword_181A37000, loga, v44, "%{public}s called with null parameters, no backtrace", v61, 0xCu);
              }

              v43 = loga;
              goto LABEL_101;
            }

            v48 = __nwlog_obj();
            log = v53;
            if (os_log_type_enabled(v48, v53))
            {
              *v61 = 136446210;
              v62 = "nw_parameters_get_using_ephemeral_configuration";
              v41 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_99;
            }
          }

          v43 = v48;
LABEL_101:

          goto LABEL_102;
        }

        __nwlog_obj();
        *type = 136446210;
        *&type[4] = "nw_http_authentication_copy_pat_timestamps_array";
        v31 = _os_log_send_and_compose_impl();
        v61[0] = 16;
        v53 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v31, v61, &v53))
        {
          if (v61[0] == 17)
          {
            v32 = __nwlog_obj();
            v33 = v61[0];
            if (!os_log_type_enabled(v32, v61[0]))
            {
              goto LABEL_66;
            }

            *type = 136446210;
            *&type[4] = "nw_http_authentication_copy_pat_timestamps_array";
            v34 = "%{public}s called with null http_authentication";
            goto LABEL_65;
          }

          if (v53 != OS_LOG_TYPE_INFO)
          {
            v32 = __nwlog_obj();
            v33 = v61[0];
            if (!os_log_type_enabled(v32, v61[0]))
            {
              goto LABEL_66;
            }

            *type = 136446210;
            *&type[4] = "nw_http_authentication_copy_pat_timestamps_array";
            v34 = "%{public}s called with null http_authentication, backtrace limit exceeded";
            goto LABEL_65;
          }

          v37 = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v33 = v61[0];
          v38 = os_log_type_enabled(v32, v61[0]);
          if (v37)
          {
            if (v38)
            {
              *type = 136446466;
              *&type[4] = "nw_http_authentication_copy_pat_timestamps_array";
              *&type[12] = 2082;
              *&type[14] = v37;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(v37);
            goto LABEL_66;
          }

          if (v38)
          {
            *type = 136446210;
            *&type[4] = "nw_http_authentication_copy_pat_timestamps_array";
            v34 = "%{public}s called with null http_authentication, no backtrace";
LABEL_65:
            _os_log_impl(&dword_181A37000, v32, v33, v34, type, 0xCu);
          }
        }

LABEL_66:
        if (v31)
        {
          free(v31);
        }

        goto LABEL_68;
      }
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_get_allow_private_access_tokens_for_third_party";
    v10 = _os_log_send_and_compose_impl();

    type[0] = 16;
    v61[0] = 0;
    if (__nwlog_fault(v10, type, v61))
    {
      if (type[0] == 17)
      {
        v11 = __nwlog_obj();
        v12 = type[0];
        if (!os_log_type_enabled(v11, type[0]))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        *&buf[4] = "nw_parameters_get_allow_private_access_tokens_for_third_party";
        v13 = "%{public}s called with null parameters";
        goto LABEL_32;
      }

      if (v61[0] != 1)
      {
        v11 = __nwlog_obj();
        v12 = type[0];
        if (!os_log_type_enabled(v11, type[0]))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        *&buf[4] = "nw_parameters_get_allow_private_access_tokens_for_third_party";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }

      v14 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type[0];
      v15 = os_log_type_enabled(v11, type[0]);
      if (!v14)
      {
        if (!v15)
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        *&buf[4] = "nw_parameters_get_allow_private_access_tokens_for_third_party";
        v13 = "%{public}s called with null parameters, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
LABEL_33:

        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (v15)
      {
        *buf = 136446466;
        *&buf[4] = "nw_parameters_get_allow_private_access_tokens_for_third_party";
        *&buf[12] = 2082;
        *&buf[14] = v14;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
    }

    if (!v10)
    {
LABEL_16:
      v7 = 0;
      allow_private_access_tokens_for_third_party = 0;
      goto LABEL_17;
    }

LABEL_15:
    free(v10);
    goto LABEL_16;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_authentication_ask_pat_for_creds";
  v27 = _os_log_send_and_compose_impl();
  type[0] = 16;
  v61[0] = 0;
  if (__nwlog_fault(v27, type, v61))
  {
    if (type[0] == 17)
    {
      v28 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v28, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_ask_pat_for_creds";
        v30 = "%{public}s called with null http_authentication";
LABEL_59:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

    else if (v61[0] == 1)
    {
      v35 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type[0];
      v36 = os_log_type_enabled(v28, type[0]);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_authentication_ask_pat_for_creds";
          *&buf[12] = 2082;
          *&buf[14] = v35;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        goto LABEL_60;
      }

      if (v36)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_ask_pat_for_creds";
        v30 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_59;
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v28, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_ask_pat_for_creds";
        v30 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (v27)
  {
    free(v27);
  }

  return 1;
}
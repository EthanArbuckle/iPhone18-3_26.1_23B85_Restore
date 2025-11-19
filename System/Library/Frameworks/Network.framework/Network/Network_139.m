void ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_177(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

void ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_178(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 40) <= 0)
  {
    v4 = *(a1 + 40);

    nw_connection_group_set_state_locked(v2, 1, v4);
  }

  else
  {
    v3 = a1;
    if (!nw_parameters_get_logging_disabled(*(v2 + 56)) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v5 = gconnection_groupLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(*(v3 + 32) + 176);
        v7 = 136446466;
        v8 = "nw_connection_group_handle_listener_state_change_block_invoke";
        v9 = 1024;
        v10 = v6;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] listener going to waiting but group already past waiting", &v7, 0x12u);
      }
    }
  }
}

void ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_179(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (!v3 || (v4 = v3, v5 = v4[2], v4, v2 = *(a1 + 32), v5 != 2))
  {
    if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v7 = gconnection_groupLogObj;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = *(*(a1 + 32) + 176);
      v14 = 136446466;
      v15 = "nw_connection_group_handle_listener_state_change_block_invoke";
      v16 = 1024;
      v17 = v10;
      v9 = "%{public}s [G%u] group listener ready";
      goto LABEL_14;
    }

LABEL_16:
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = (a1 + 32);
    nw_connection_group_set_state_locked(v11, 2, v12);
    v2 = *v13;
    v6 = *(*v13 + 198);
    goto LABEL_17;
  }

  v6 = *(v2 + 198);
  if ((v6 & 0x40) != 0)
  {
    if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v7 = gconnection_groupLogObj;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v8 = *(*(a1 + 32) + 176);
      v14 = 136446466;
      v15 = "nw_connection_group_handle_listener_state_change_block_invoke";
      v16 = 1024;
      v17 = v8;
      v9 = "%{public}s [G%u] multiplex group listener ready and first connection ready";
LABEL_14:
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, v9, &v14, 0x12u);
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  *(v2 + 198) = v6 | 0x10;
}

void nw_connection_group_cancel_connections_locked(NWConcrete_nw_connection_group *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (!nw_parameters_get_logging_disabled(*(v1 + 7)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v3 = gconnection_groupLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 44);
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_cancel_connections_locked";
        *&buf[12] = 1024;
        *&buf[14] = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [G%u] cancelling connections", buf, 0x12u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    v5 = *(v2 + 14);
    if (!v5 || (aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = ___ZL45nw_connection_group_cancel_connections_lockedP30NWConcrete_nw_connection_group_block_invoke, aBlock[3] = &unk_1E6A3BB28, v17 = v2, v18 = buf, _nw_array_apply(v5, aBlock), v17, (*(*&buf[8] + 24) & 1) == 0))
    {
      if (!nw_parameters_get_logging_disabled(*(v2 + 7)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v6 = gconnection_groupLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *(v2 + 44);
          *v20 = 136446466;
          v21 = "nw_connection_group_cancel_connections_locked";
          v22 = 1024;
          v23 = v7;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [G%u] no connections, cancelling group", v20, 0x12u);
        }
      }

      nw_connection_group_final_cleanup_locked(v2);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_18;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_cancel_connections_locked";
  v9 = _os_log_send_and_compose_impl();

  v20[0] = 16;
  v19 = 0;
  if (__nwlog_fault(v9, v20, &v19))
  {
    if (v20[0] == 17)
    {
      v10 = __nwlog_obj();
      v11 = v20[0];
      if (os_log_type_enabled(v10, v20[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_connections_locked";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = v20[0];
      v14 = os_log_type_enabled(v10, v20[0]);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_cancel_connections_locked";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_connections_locked";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = v20[0];
      if (os_log_type_enabled(v10, v20[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_connections_locked";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v9)
  {
    free(v9);
  }

LABEL_18:
}

void sub_1823C6714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  _Block_object_dispose((v19 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL45nw_connection_group_cancel_connections_lockedP30NWConcrete_nw_connection_group_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((nw_connection_is_cancelled(v4) & 1) == 0)
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v6 = gconnection_groupLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(*(a1 + 32) + 176);
        v8 = 136446722;
        v9 = "nw_connection_group_cancel_connections_locked_block_invoke";
        v10 = 1024;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] cancelling connection %@", &v8, 0x1Cu);
      }
    }

    nw_connection_cancel(v4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

void ___ZL44nw_connection_group_prune_connections_lockedP30NWConcrete_nw_connection_group_block_invoke(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v4 = gconnection_groupLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (a2 > 5)
      {
        v5 = "unknown";
      }

      else
      {
        v5 = off_1E6A2F020[a2];
      }

      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 176);
      v8 = 136446978;
      v9 = "nw_connection_group_prune_connections_locked_block_invoke";
      v10 = 1024;
      v11 = v7;
      v12 = 2112;
      v13 = v6;
      v14 = 2080;
      v15 = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [G%u] pruned connection %@ going into state %s", &v8, 0x26u);
    }
  }
}

os_log_type_t *nw_connection_group_copy_peel_off_connection(void *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v16 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
    v17 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v43) = 0;
    if (__nwlog_fault(v17, type, &v43))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null group", aBlock, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v31 = type[0];
        v32 = os_log_type_enabled(v18, type[0]);
        if (backtrace_string)
        {
          if (v32)
          {
            *aBlock = 136446466;
            *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
            *&aBlock[12] = 2082;
            *&aBlock[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v31, "%{public}s called with null group, dumping backtrace:%{public}s", aBlock, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_83;
        }

        if (v32)
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
          _os_log_impl(&dword_181A37000, v18, v31, "%{public}s called with null group, no backtrace", aBlock, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v39 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s called with null group, backtrace limit exceeded", aBlock, 0xCu);
        }
      }
    }

LABEL_83:
    if (v17)
    {
      free(v17);
    }

    goto LABEL_85;
  }

  if (*(v1 + 198) < 0 || *(v1 + 10) >= 3)
  {
    if (!nw_parameters_get_logging_disabled(v1[7]))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v20 = gconnection_groupLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(v2 + 44);
        *aBlock = 136446466;
        *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
        *&aBlock[12] = 1024;
        *&aBlock[14] = v21;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot extract a connection from a failed or cancelled group", aBlock, 0x12u);
      }
    }

LABEL_85:
    v9 = 0;
    goto LABEL_28;
  }

  v42 = nw_group_descriptor_copy_member(v1[8]);
  v3 = _nw_parameters_copy(v2[7]);
  v4 = v2;
  v5 = v42;
  v6 = v3;
  v7 = v6;
  if (!v5)
  {
    v22 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
    v23 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v43) = 0;
    if (!__nwlog_fault(v23, type, &v43))
    {
      goto LABEL_92;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (os_log_type_enabled(v24, type[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null remote_endpoint", aBlock, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v34 = type[0];
      v35 = os_log_type_enabled(v24, type[0]);
      if (v33)
      {
        if (v35)
        {
          *aBlock = 136446466;
          *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v33;
          _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(v33);
        if (!v23)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      if (v35)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null remote_endpoint, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v24, type[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null remote_endpoint, backtrace limit exceeded", aBlock, 0xCu);
      }
    }

    goto LABEL_91;
  }

  if (v6)
  {
    *type = 0;
    v48 = type;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__9201;
    v51 = __Block_byref_object_dispose__9202;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke;
    *&aBlock[24] = &unk_1E6A2CB10;
    *&aBlock[32] = v4;
    v56 = &v43;
    v54 = v7;
    v55 = v5;
    v57 = type;
    v8 = _Block_copy(aBlock);
    os_unfair_lock_lock(v4 + 45);
    v8[2](v8);
    os_unfair_lock_unlock(v4 + 45);

    if (v44[3])
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v48 + 5);
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(type, 8);

    goto LABEL_10;
  }

  v26 = __nwlog_obj();
  *aBlock = 136446210;
  *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
  v23 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v43) = 0;
  if (__nwlog_fault(v23, type, &v43))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v27 = type[0];
      if (os_log_type_enabled(v24, type[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null parameters", aBlock, 0xCu);
      }

LABEL_91:

      goto LABEL_92;
    }

    if (v43 != 1)
    {
      v24 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v24, type[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v24, v41, "%{public}s called with null parameters, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_91;
    }

    v36 = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v37 = type[0];
    v38 = os_log_type_enabled(v24, type[0]);
    if (!v36)
    {
      if (v38)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v24, v37, "%{public}s called with null parameters, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_91;
    }

    if (v38)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
      *&aBlock[12] = 2082;
      *&aBlock[14] = v36;
      _os_log_impl(&dword_181A37000, v24, v37, "%{public}s called with null parameters, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

    free(v36);
  }

LABEL_92:
  if (v23)
  {
LABEL_93:
    free(v23);
  }

LABEL_94:
  v9 = 0;
LABEL_10:

  if (!nw_parameters_get_logging_disabled(v2[7]) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v28 = gconnection_groupLogObj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      os_unfair_lock_opaque = v4[44]._os_unfair_lock_opaque;
      *aBlock = 136447234;
      *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
      *&aBlock[12] = 1024;
      *&aBlock[14] = os_unfair_lock_opaque;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v5;
      *&aBlock[28] = 2112;
      *&aBlock[30] = v7;
      *&aBlock[38] = 2112;
      v54 = v9;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Got connection for endpoint (%@) and parameters (%@): %@", aBlock, 0x30u);
    }
  }

  if (v9)
  {
    v10 = v9;
    *type = 0;
    v48 = type;
    v49 = 0x2020000000;
    LOBYTE(v50) = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = __nw_connection_is_cancelled_or_failed_block_invoke;
    *&aBlock[24] = &unk_1E6A3D738;
    v54 = type;
    v9 = v10;
    *&aBlock[32] = v9;
    os_unfair_lock_lock(v10 + 34);
    (*&aBlock[16])(aBlock);
    os_unfair_lock_unlock(v10 + 34);
    LODWORD(v10) = *(v48 + 24);

    _Block_object_dispose(type, 8);
    if (v10)
    {
      if (!nw_parameters_get_logging_disabled(v2[7]))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v11 = gconnection_groupLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = v4[44]._os_unfair_lock_opaque;
          *aBlock = 136446722;
          *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
          *&aBlock[12] = 1024;
          *&aBlock[14] = v12;
          *&aBlock[18] = 2112;
          *&aBlock[20] = v9;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Connection %@ already cancelled or failed", aBlock, 0x1Cu);
        }
      }

      v9 = 0;
    }
  }

  if (!nw_parameters_get_logging_disabled(v2[7]))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v13 = gconnection_groupLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = v4[44]._os_unfair_lock_opaque;
      *aBlock = 136446722;
      *&aBlock[4] = "nw_connection_group_copy_peel_off_connection";
      *&aBlock[12] = 1024;
      *&aBlock[14] = v14;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v9;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] returning connection %@", aBlock, 0x1Cu);
    }
  }

LABEL_28:
  return v9;
}

void ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 198) < 0)
  {
    if (!nw_parameters_get_logging_disabled(*(v2 + 56)) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v6 = gconnection_groupLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(*(a1 + 32) + 176);
        *buf = 136446466;
        v14 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] has cancelled", buf, 0x12u);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke_137;
      v8[3] = &unk_1E6A2F258;
      v9 = v2;
      v10 = *(a1 + 40);
      v4 = *(a1 + 48);
      v5 = *(a1 + 64);
      v11 = v4;
      v12 = v5;
      _nw_array_apply(v3, v8);
    }
  }
}

uint64_t ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke_137(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = nw_connection_copy_endpoint(v5);
  v7 = nw_connection_copy_parameters(v5);
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v19 = gconnection_groupLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(*(a1 + 32) + 176);
      *buf = 136446722;
      v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
      v36 = 1024;
      *v37 = v20;
      *&v37[4] = 2112;
      *&v37[6] = v5;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Inspecting connection %@", buf, 0x1Cu);
    }
  }

  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v16, &type, &v32))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null connection_parameters", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v32 != 1)
    {
      v17 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        _os_log_impl(&dword_181A37000, v17, v30, "%{public}s called with null connection_parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null connection_parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v25)
    {
      *buf = 136446466;
      v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
      v36 = 2082;
      *v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null connection_parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  v8 = *(a1 + 40);
  v9 = v8 == v7;
  if (v8 != v7 && v8)
  {
    v9 = _nw_parameters_are_compatible(v8, 0xFFFFFFFFFFFFFFFFLL, v7, 0, 0);
  }

  if (!v6)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v16, &type, &v32))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null connection_remote_endpoint", buf, 0xCu);
      }

LABEL_61:

LABEL_62:
      if (v16)
      {
        free(v16);
      }

      goto LABEL_11;
    }

    if (v32 != 1)
    {
      v17 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        _os_log_impl(&dword_181A37000, v17, v31, "%{public}s called with null connection_remote_endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null connection_remote_endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v27)
    {
      *buf = 136446466;
      v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
      v36 = 2082;
      *v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null connection_remote_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_62;
  }

  is_equal = nw_endpoint_is_equal(*(a1 + 48), v6, 31);
  if ((v9 & is_equal) == 1)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v28 = gconnection_groupLogObj;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(*(a1 + 32) + 176);
        *buf = 136446722;
        v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
        v36 = 1024;
        *v37 = v29;
        *&v37[4] = 2112;
        *&v37[6] = v5;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Connection %@ is compatible", buf, 0x1Cu);
      }
    }

LABEL_11:
    v11 = 0;
    goto LABEL_19;
  }

  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v12 = gconnection_groupLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(a1 + 32) + 176);
      *buf = 136447234;
      v35 = "nw_connection_group_copy_connection_for_endpoint_and_parameters_block_invoke";
      v36 = 1024;
      *v37 = v13;
      *&v37[4] = 2112;
      *&v37[6] = v5;
      v38 = 1024;
      v39 = v9;
      v40 = 1024;
      v41 = is_equal;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Connection %@ is not compatible (parameters: %u, remote_endpoints: %u)", buf, 0x28u);
    }
  }

  v11 = 1;
LABEL_19:

  return v11;
}

nw_connection_group_t nw_connection_group_create(nw_group_descriptor_t group_descriptor, nw_parameters_t parameters)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = group_descriptor;
  v4 = parameters;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [[NWConcrete_nw_connection_group alloc] initWithDescriptor:v3 connection:0 parameters:v4];
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_group_create";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_group_create";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_group_create";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_connection_group_create";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_group_create";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_group_create";
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
          v24 = "nw_connection_group_create";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null group_descriptor", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_group_create";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null group_descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_connection_group_create";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group_descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_group_create";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

void **nw_connection_group_create_with_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [[NWConcrete_nw_group_descriptor alloc] initWithType:0 member:0 groupID:?];
    v3 = [[NWConcrete_nw_connection_group alloc] initWithDescriptor:v2 connection:0 parameters:v1];

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_group_create_with_parameters";
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
        v16 = "nw_connection_group_create_with_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
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
          v16 = "nw_connection_group_create_with_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_group_create_with_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_group_create_with_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void **nw_connection_group_create_with_connection(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [[NWConcrete_nw_connection_group alloc] initWithDescriptor:v3 connection:v4 parameters:0];
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_group_create_with_connection";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_group_create_with_connection";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null connection", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_group_create_with_connection";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_connection_group_create_with_connection";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_group_create_with_connection";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_group_create_with_connection";
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
          v24 = "nw_connection_group_create_with_connection";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null group_descriptor", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_group_create_with_connection";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null group_descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_connection_group_create_with_connection";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group_descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_group_create_with_connection";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

void nw_connection_group_set_queue(nw_connection_group_t group, dispatch_queue_t queue)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *v35 = 136446210;
    *&v35[4] = "nw_connection_group_set_queue";
    v11 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v28 = 0;
    if (!__nwlog_fault(v11, buf, &v28))
    {
      goto LABEL_45;
    }

    if (buf[0] == 17)
    {
      v12 = __nwlog_obj();
      v13 = buf[0];
      if (os_log_type_enabled(v12, buf[0]))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_queue";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null group", v35, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = buf[0];
      v18 = os_log_type_enabled(v12, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *v35 = 136446466;
          *&v35[4] = "nw_connection_group_set_queue";
          *&v35[12] = 2082;
          *&v35[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, dumping backtrace:%{public}s", v35, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v11)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v11);
        goto LABEL_11;
      }

      if (v18)
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_queue";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, no backtrace", v35, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v12, buf[0]))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_queue";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null group, backtrace limit exceeded", v35, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v4)
  {
    *v35 = 0;
    *&v35[8] = v35;
    *&v35[16] = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_queue_block_invoke;
    aBlock[3] = &unk_1E6A3BE58;
    v6 = v3;
    v25 = v6;
    v26 = v5;
    v27 = v35;
    v7 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[22].isa + 1);
    v7[2](v7);
    os_unfair_lock_unlock(&v3[22].isa + 1);

    if (*(*&v35[8] + 24) == 1 && !nw_parameters_get_logging_disabled(v6[7].isa))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v8 = gconnection_groupLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        isa = v6[22].isa;
        *buf = 136446722;
        v30 = "nw_connection_group_set_queue";
        v31 = 1024;
        v32 = isa;
        v33 = 2080;
        v34 = "set queue";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to %s because group has already been started", buf, 0x1Cu);
      }
    }

    _Block_object_dispose(v35, 8);
    goto LABEL_11;
  }

  v14 = __nwlog_obj();
  *v35 = 136446210;
  *&v35[4] = "nw_connection_group_set_queue";
  v11 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v28 = 0;
  if (!__nwlog_fault(v11, buf, &v28))
  {
    goto LABEL_45;
  }

  if (buf[0] == 17)
  {
    v12 = __nwlog_obj();
    v15 = buf[0];
    if (os_log_type_enabled(v12, buf[0]))
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_queue";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null queue", v35, 0xCu);
    }

    goto LABEL_44;
  }

  if (v28 != 1)
  {
    v12 = __nwlog_obj();
    v23 = buf[0];
    if (os_log_type_enabled(v12, buf[0]))
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_queue";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null queue, backtrace limit exceeded", v35, 0xCu);
    }

    goto LABEL_44;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = buf[0];
  v21 = os_log_type_enabled(v12, buf[0]);
  if (!v19)
  {
    if (v21)
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_queue";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null queue, no backtrace", v35, 0xCu);
    }

    goto LABEL_44;
  }

  if (v21)
  {
    *v35 = 136446466;
    *&v35[4] = "nw_connection_group_set_queue";
    *&v35[12] = 2082;
    *&v35[14] = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null queue, dumping backtrace:%{public}s", v35, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_46;
  }

LABEL_11:
}

void sub_1823C9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 96), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_set_queue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 198))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((v1 + 8), *(a1 + 40));
  }
}

void nw_connection_group_set_has_completed_any_connection_handler(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *v35 = 136446210;
    *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
    v11 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v28 = 0;
    if (!__nwlog_fault(v11, buf, &v28))
    {
      goto LABEL_45;
    }

    if (buf[0] == 17)
    {
      v12 = __nwlog_obj();
      v13 = buf[0];
      if (os_log_type_enabled(v12, buf[0]))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null group", v35, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = buf[0];
      v18 = os_log_type_enabled(v12, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *v35 = 136446466;
          *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
          *&v35[12] = 2082;
          *&v35[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, dumping backtrace:%{public}s", v35, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v11)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v11);
        goto LABEL_11;
      }

      if (v18)
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, no backtrace", v35, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v12, buf[0]))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null group, backtrace limit exceeded", v35, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v4)
  {
    *v35 = 0;
    *&v35[8] = v35;
    *&v35[16] = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_has_completed_any_connection_handler_block_invoke;
    aBlock[3] = &unk_1E6A2C9F8;
    v6 = v3;
    v25 = v6;
    v26 = v5;
    v27 = v35;
    v7 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 45);
    v7[2](v7);
    os_unfair_lock_unlock(v3 + 45);

    if (*(*&v35[8] + 24) == 1 && !nw_parameters_get_logging_disabled(*&v6[14]._os_unfair_lock_opaque))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v8 = gconnection_groupLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        os_unfair_lock_opaque = v6[44]._os_unfair_lock_opaque;
        *buf = 136446722;
        v30 = "nw_connection_group_set_has_completed_any_connection_handler";
        v31 = 1024;
        v32 = os_unfair_lock_opaque;
        v33 = 2080;
        v34 = "set has received any connection handler";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to %s because group has already been started", buf, 0x1Cu);
      }
    }

    _Block_object_dispose(v35, 8);
    goto LABEL_11;
  }

  v14 = __nwlog_obj();
  *v35 = 136446210;
  *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
  v11 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v28 = 0;
  if (!__nwlog_fault(v11, buf, &v28))
  {
    goto LABEL_45;
  }

  if (buf[0] == 17)
  {
    v12 = __nwlog_obj();
    v15 = buf[0];
    if (os_log_type_enabled(v12, buf[0]))
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null has_completed_any_connection_handler", v35, 0xCu);
    }

    goto LABEL_44;
  }

  if (v28 != 1)
  {
    v12 = __nwlog_obj();
    v23 = buf[0];
    if (os_log_type_enabled(v12, buf[0]))
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null has_completed_any_connection_handler, backtrace limit exceeded", v35, 0xCu);
    }

    goto LABEL_44;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = buf[0];
  v21 = os_log_type_enabled(v12, buf[0]);
  if (!v19)
  {
    if (v21)
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null has_completed_any_connection_handler, no backtrace", v35, 0xCu);
    }

    goto LABEL_44;
  }

  if (v21)
  {
    *v35 = 136446466;
    *&v35[4] = "nw_connection_group_set_has_completed_any_connection_handler";
    *&v35[12] = 2082;
    *&v35[14] = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null has_completed_any_connection_handler, dumping backtrace:%{public}s", v35, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_46;
  }

LABEL_11:
}

void sub_1823C99D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 96), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_set_has_completed_any_connection_handler_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 198))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = _Block_copy(*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;
  }
}

void nw_connection_group_set_membership_changed_handler(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *v35 = 136446210;
    *&v35[4] = "nw_connection_group_set_membership_changed_handler";
    v11 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v28 = 0;
    if (!__nwlog_fault(v11, buf, &v28))
    {
      goto LABEL_45;
    }

    if (buf[0] == 17)
    {
      v12 = __nwlog_obj();
      v13 = buf[0];
      if (os_log_type_enabled(v12, buf[0]))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_membership_changed_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null group", v35, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = buf[0];
      v18 = os_log_type_enabled(v12, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *v35 = 136446466;
          *&v35[4] = "nw_connection_group_set_membership_changed_handler";
          *&v35[12] = 2082;
          *&v35[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, dumping backtrace:%{public}s", v35, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v11)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v11);
        goto LABEL_11;
      }

      if (v18)
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_membership_changed_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, no backtrace", v35, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v12, buf[0]))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_set_membership_changed_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null group, backtrace limit exceeded", v35, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v4)
  {
    *v35 = 0;
    *&v35[8] = v35;
    *&v35[16] = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_membership_changed_handler_block_invoke;
    aBlock[3] = &unk_1E6A2C9F8;
    v6 = v3;
    v25 = v6;
    v26 = v5;
    v27 = v35;
    v7 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 45);
    v7[2](v7);
    os_unfair_lock_unlock(v3 + 45);

    if (*(*&v35[8] + 24) == 1 && !nw_parameters_get_logging_disabled(*&v6[14]._os_unfair_lock_opaque))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v8 = gconnection_groupLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        os_unfair_lock_opaque = v6[44]._os_unfair_lock_opaque;
        *buf = 136446722;
        v30 = "nw_connection_group_set_membership_changed_handler";
        v31 = 1024;
        v32 = os_unfair_lock_opaque;
        v33 = 2080;
        v34 = "set membership changed handler";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to %s because group has already been started", buf, 0x1Cu);
      }
    }

    _Block_object_dispose(v35, 8);
    goto LABEL_11;
  }

  v14 = __nwlog_obj();
  *v35 = 136446210;
  *&v35[4] = "nw_connection_group_set_membership_changed_handler";
  v11 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v28 = 0;
  if (!__nwlog_fault(v11, buf, &v28))
  {
    goto LABEL_45;
  }

  if (buf[0] == 17)
  {
    v12 = __nwlog_obj();
    v15 = buf[0];
    if (os_log_type_enabled(v12, buf[0]))
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_membership_changed_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null membership_change_handler", v35, 0xCu);
    }

    goto LABEL_44;
  }

  if (v28 != 1)
  {
    v12 = __nwlog_obj();
    v23 = buf[0];
    if (os_log_type_enabled(v12, buf[0]))
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_membership_changed_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null membership_change_handler, backtrace limit exceeded", v35, 0xCu);
    }

    goto LABEL_44;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = buf[0];
  v21 = os_log_type_enabled(v12, buf[0]);
  if (!v19)
  {
    if (v21)
    {
      *v35 = 136446210;
      *&v35[4] = "nw_connection_group_set_membership_changed_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null membership_change_handler, no backtrace", v35, 0xCu);
    }

    goto LABEL_44;
  }

  if (v21)
  {
    *v35 = 136446466;
    *&v35[4] = "nw_connection_group_set_membership_changed_handler";
    *&v35[12] = 2082;
    *&v35[14] = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null membership_change_handler, dumping backtrace:%{public}s", v35, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_46;
  }

LABEL_11:
}

void sub_1823CA0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 96), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_set_membership_changed_handler_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 198))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = _Block_copy(*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = v2;
  }
}

void nw_connection_group_set_state_changed_handler(nw_connection_group_t group, nw_connection_group_state_changed_handler_t state_changed_handler)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = state_changed_handler;
  if (v3)
  {
    *v28 = 0;
    *&v28[8] = v28;
    *&v28[16] = 0x2020000000;
    v29 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_state_changed_handler_block_invoke;
    aBlock[3] = &unk_1E6A2C9F8;
    v5 = v3;
    v18 = v5;
    v19 = v4;
    v20 = v28;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[22].isa + 1);
    v6[2](v6);
    os_unfair_lock_unlock(&v3[22].isa + 1);

    if (*(*&v28[8] + 24) == 1 && !nw_parameters_get_logging_disabled(v5[7].isa))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v7 = gconnection_groupLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        isa = v5[22].isa;
        *buf = 136446722;
        v23 = "nw_connection_group_set_state_changed_handler";
        v24 = 1024;
        v25 = isa;
        v26 = 2080;
        v27 = "set state changed handler";
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to %s because group has already been started", buf, 0x1Cu);
      }
    }

    _Block_object_dispose(v28, 8);
    goto LABEL_10;
  }

  v9 = __nwlog_obj();
  *v28 = 136446210;
  *&v28[4] = "nw_connection_group_set_state_changed_handler";
  v10 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v21 = 0;
  if (__nwlog_fault(v10, buf, &v21))
  {
    if (buf[0] == 17)
    {
      v11 = __nwlog_obj();
      v12 = buf[0];
      if (os_log_type_enabled(v11, buf[0]))
      {
        *v28 = 136446210;
        *&v28[4] = "nw_connection_group_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null group", v28, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = buf[0];
      v15 = os_log_type_enabled(v11, buf[0]);
      if (backtrace_string)
      {
        if (v15)
        {
          *v28 = 136446466;
          *&v28[4] = "nw_connection_group_set_state_changed_handler";
          *&v28[12] = 2082;
          *&v28[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null group, dumping backtrace:%{public}s", v28, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v15)
      {
        *v28 = 136446210;
        *&v28[4] = "nw_connection_group_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null group, no backtrace", v28, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = buf[0];
      if (os_log_type_enabled(v11, buf[0]))
      {
        *v28 = 136446210;
        *&v28[4] = "nw_connection_group_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null group, backtrace limit exceeded", v28, 0xCu);
      }
    }
  }

LABEL_27:
  if (v10)
  {
    free(v10);
  }

LABEL_10:
}

void sub_1823CA588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 96), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_set_state_changed_handler_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 198))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = _Block_copy(*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;
  }
}

uint64_t nw_connection_group_get_connection_limit(void *a1)
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
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_get_connection_limit_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 45);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 45);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_get_connection_limit";
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
        *&buf[4] = "nw_connection_group_get_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null group", buf, 0xCu);
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
          *&buf[4] = "nw_connection_group_get_connection_limit";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_get_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_get_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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

void sub_1823CA980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_connection_group_set_connection_limit(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_connection_group_set_connection_limit_block_invoke;
      aBlock[3] = &unk_1E6A3BD68;
      v17 = a2;
      v16 = v3;
      v5 = _Block_copy(aBlock);
      os_unfair_lock_lock(v4 + 45);
      v5[2](v5);
      os_unfair_lock_unlock(v4 + 45);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v21 = "nw_connection_group_set_connection_limit";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Cannot set connection limit lower than 1", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_connection_group_set_connection_limit";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v8, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_group_set_connection_limit";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          v21 = "nw_connection_group_set_connection_limit";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446210;
        v21 = "nw_connection_group_set_connection_limit";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_group_set_connection_limit";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }

LABEL_7:
}

void __nw_connection_group_set_connection_limit_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(a1 + 40) != *(v1 + 188))
  {
    if (!nw_parameters_get_logging_disabled(*(v1 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v3 = gconnection_groupLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(*(a1 + 32) + 176);
        v5 = *(a1 + 40);
        v9 = 136446722;
        v10 = "nw_connection_group_set_connection_limit_block_invoke";
        v11 = 1024;
        v12 = v4;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [G%u] setting connection limit to %u", &v9, 0x18u);
      }
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(v7 + 188);
    *(v7 + 188) = v6;
    if (v6 < v8)
    {
      nw_connection_group_prune_connections_locked(*(a1 + 32));
    }
  }
}

uint64_t nw_connection_group_get_new_connection_limit(void *a1)
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
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_get_new_connection_limit_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 45);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 45);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_get_new_connection_limit";
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
        *&buf[4] = "nw_connection_group_get_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null group", buf, 0xCu);
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
          *&buf[4] = "nw_connection_group_get_new_connection_limit";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_get_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_get_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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

void sub_1823CB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_connection_group_set_new_connection_limit(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_new_connection_limit_block_invoke;
    aBlock[3] = &unk_1E6A3BD68;
    v16 = a2;
    v15 = v3;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(v4 + 45);
    v5[2](v5);
    os_unfair_lock_unlock(v4 + 45);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_connection_group_set_new_connection_limit";
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
        v20 = "nw_connection_group_set_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null group", buf, 0xCu);
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
          v20 = "nw_connection_group_set_new_connection_limit";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_connection_group_set_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_connection_group_set_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void __nw_connection_group_set_new_connection_limit_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  v2 = *(a1 + 32);
  if (v1 == *(v2 + 192))
  {
    return;
  }

  *(v2 + 192) = v1;
  v3 = *(a1 + 32);
  if ((*(v3 + 198) & 1) == 0)
  {
    return;
  }

  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = *(a1 + 40);

    nw_listener_set_new_connection_limit(v4, v5);
    return;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_connection_group_set_new_connection_limit_block_invoke";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  v13 = v7;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_connection_group_set_new_connection_limit_block_invoke";
        v10 = "%{public}s called with null group->listener";
LABEL_22:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v17 = "nw_connection_group_set_new_connection_limit_block_invoke";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null group->listener, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v12)
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v17 = "nw_connection_group_set_new_connection_limit_block_invoke";
        v10 = "%{public}s called with null group->listener, no backtrace";
        goto LABEL_22;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_connection_group_set_new_connection_limit_block_invoke";
        v10 = "%{public}s called with null group->listener, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:
  }

LABEL_24:
  if (v13)
  {
    free(v13);
  }
}

void nw_connection_group_set_new_connection_handler(nw_connection_group_t group, nw_connection_group_new_connection_handler_t new_connection_handler)
{
  *&v27[13] = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = new_connection_handler;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_new_connection_handler_block_invoke;
    aBlock[3] = &unk_1E6A3D710;
    v5 = v3;
    v20 = v5;
    v6 = v4;
    v21 = v6;
    v7 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[22].isa + 1);
    v7[2](v7);
    os_unfair_lock_unlock(&v3[22].isa + 1);

    if (!nw_parameters_get_logging_disabled(v5[7].isa))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v8 = gconnection_groupLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        isa = v5[22].isa;
        v10 = _Block_copy(v6);
        *buf = 136446722;
        v25 = "nw_connection_group_set_new_connection_handler";
        v26 = 1024;
        *v27 = isa;
        v27[2] = 2048;
        *&v27[3] = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] set new connection handler: %p", buf, 0x1Cu);
      }
    }

    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_connection_group_set_new_connection_handler";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v12, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v25 = "nw_connection_group_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v22 == 1)
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
          v25 = "nw_connection_group_set_new_connection_handler";
          v26 = 2082;
          *v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v17)
      {
        *buf = 136446210;
        v25 = "nw_connection_group_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v25 = "nw_connection_group_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v12)
  {
    free(v12);
  }

LABEL_9:
}

void __nw_connection_group_set_new_connection_handler_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 4)
  {
    if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v3 = gconnection_groupLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(*(a1 + 32) + 176);
        v8 = 136446466;
        v9 = "nw_connection_group_set_new_connection_handler_block_invoke";
        v10 = 1024;
        v11 = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot set new connection handler after cancel", &v8, 0x12u);
      }
    }
  }

  else
  {
    v5 = _Block_copy(*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 152);
    *(v6 + 152) = v5;
  }
}

void nw_connection_group_set_receive_handler(nw_connection_group_t group, uint32_t maximum_message_size, BOOL reject_oversized_messages, nw_connection_group_receive_handler_t receive_handler)
{
  v5 = reject_oversized_messages;
  v45 = *MEMORY[0x1E69E9840];
  v7 = group;
  v8 = receive_handler;
  if (v7)
  {
    *type = 0;
    v33 = type;
    v34 = 0x2020000000;
    v35 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_set_receive_handler_block_invoke;
    aBlock[3] = &unk_1E6A2CA20;
    v9 = v7;
    v27 = v9;
    v30 = maximum_message_size;
    v31 = v5;
    v10 = v8;
    v28 = v10;
    v29 = type;
    v11 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v7[22].isa + 1);
    v11[2](v11);
    os_unfair_lock_unlock(&v7[22].isa + 1);

    isa = v9[7].isa;
    if (*(v33 + 24) == 1)
    {
      if (!nw_parameters_get_logging_disabled(isa))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v13 = gconnection_groupLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = v9[22].isa;
          *buf = 136446466;
          v38 = "nw_connection_group_set_receive_handler";
          v39 = 1024;
          *v40 = v14;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to set receive handler because group has already been started", buf, 0x12u);
        }

LABEL_16:
      }
    }

    else if (!nw_parameters_get_logging_disabled(isa))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v13 = gconnection_groupLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = v9[22].isa;
        if (v5)
        {
          v16 = "true";
        }

        else
        {
          v16 = "false";
        }

        v17 = _Block_copy(v10);
        *buf = 136447234;
        v38 = "nw_connection_group_set_receive_handler";
        v39 = 1024;
        *v40 = v15;
        *&v40[4] = 1024;
        *&v40[6] = maximum_message_size;
        v41 = 2080;
        v42 = v16;
        v43 = 2048;
        v44 = v17;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] set maximum message size: %u, reject oversized messages: %s, handler: %p", buf, 0x2Cu);
      }

      goto LABEL_16;
    }

    _Block_object_dispose(type, 8);
    goto LABEL_18;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_connection_group_set_receive_handler";
  v19 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v19, type, &v36))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (os_log_type_enabled(v20, type[0]))
      {
        *buf = 136446210;
        v38 = "nw_connection_group_set_receive_handler";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v23 = type[0];
      v24 = os_log_type_enabled(v20, type[0]);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v38 = "nw_connection_group_set_receive_handler";
          v39 = 2082;
          *v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v24)
      {
        *buf = 136446210;
        v38 = "nw_connection_group_set_receive_handler";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v25 = type[0];
      if (os_log_type_enabled(v20, type[0]))
      {
        *buf = 136446210;
        v38 = "nw_connection_group_set_receive_handler";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v19)
  {
    free(v19);
  }

LABEL_18:
}

void sub_1823CC2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_connection_group_set_receive_handler_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 198))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(v1 + 184) = *(a1 + 56);
    *(*(a1 + 32) + 198) = *(*(a1 + 32) + 198) & 0xFD | (2 * *(a1 + 60));
    v3 = _Block_copy(*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;
  }
}

void nw_connection_group_reply(nw_connection_group_t group, nw_content_context_t inbound_message, nw_content_context_t outbound_message, dispatch_data_t content)
{
  v99 = *MEMORY[0x1E69E9840];
  v7 = group;
  v8 = inbound_message;
  v9 = outbound_message;
  v70 = v9;
  v71 = content;
  if (!v7)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_reply";
    v45 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v87[0]) = 0;
    if (!__nwlog_fault(v45, type, v87))
    {
      goto LABEL_132;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (LOBYTE(v87[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v55 = type[0];
      v56 = os_log_type_enabled(v46, type[0]);
      if (backtrace_string)
      {
        if (v56)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_reply";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v46, v55, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_132:
        if (!v45)
        {
          goto LABEL_66;
        }

LABEL_133:
        free(v45);
        goto LABEL_66;
      }

      if (v56)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v55, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v46 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v64, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_131:

    goto LABEL_132;
  }

  if (!v8)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_reply";
    v45 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v87[0]) = 0;
    if (!__nwlog_fault(v45, type, v87))
    {
      goto LABEL_132;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v49, "%{public}s called with null inbound_message", buf, 0xCu);
      }

      goto LABEL_131;
    }

    if (LOBYTE(v87[0]) != 1)
    {
      v46 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v65, "%{public}s called with null inbound_message, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_131;
    }

    v57 = __nw_create_backtrace_string();
    v46 = __nwlog_obj();
    v58 = type[0];
    v59 = os_log_type_enabled(v46, type[0]);
    if (!v57)
    {
      if (v59)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v58, "%{public}s called with null inbound_message, no backtrace", buf, 0xCu);
      }

      goto LABEL_131;
    }

    if (v59)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_reply";
      *&buf[12] = 2082;
      *&buf[14] = v57;
      _os_log_impl(&dword_181A37000, v46, v58, "%{public}s called with null inbound_message, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_102;
  }

  if (!v9)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_reply";
    v45 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v87[0]) = 0;
    if (!__nwlog_fault(v45, type, v87))
    {
      goto LABEL_132;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v51, "%{public}s called with null outbound_message", buf, 0xCu);
      }

      goto LABEL_131;
    }

    if (LOBYTE(v87[0]) != 1)
    {
      v46 = __nwlog_obj();
      v66 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v66, "%{public}s called with null outbound_message, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_131;
    }

    v57 = __nw_create_backtrace_string();
    v46 = __nwlog_obj();
    v60 = type[0];
    v61 = os_log_type_enabled(v46, type[0]);
    if (!v57)
    {
      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reply";
        _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null outbound_message, no backtrace", buf, 0xCu);
      }

      goto LABEL_131;
    }

    if (v61)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_reply";
      *&buf[12] = 2082;
      *&buf[14] = v57;
      _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null outbound_message, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_102:

    free(v57);
    if (!v45)
    {
      goto LABEL_66;
    }

    goto LABEL_133;
  }

  if ((SBYTE6(v7[24].isa) & 0x80000000) == 0 && SLODWORD(v7[5].isa) < 3)
  {
    *type = 0;
    v82 = type;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy__9201;
    v85 = __Block_byref_object_dispose__9202;
    v10 = v7;
    v11 = v8;
    v12 = nw_content_context_copy_connection(v11);
    if (!v12 && !nw_parameters_get_logging_disabled(v10[7].isa) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v62 = gconnection_groupLogObj;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        isa = v10[22].isa;
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_find_connection_for_message";
        *&buf[12] = 1024;
        *&buf[14] = isa;
        *&buf[18] = 2112;
        *&buf[20] = v11;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Did not find connection for message (%@), returning nil", buf, 0x1Cu);
      }
    }

    v86 = v12;
    v13 = v11;
    v14 = v13;
    v15 = 0;
    if (v13 != &__block_literal_global_10_44685 && v13 != &__block_literal_global_8_44676 && v13 != &__block_literal_global_6_44667 && v13 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v13 + 28);
      if ((v14[29]._os_unfair_lock_opaque & 0x200000) != 0 && (v16 = *&v14[26]._os_unfair_lock_opaque) != 0 && _nw_array_get_count(v16) >= 4 && (v17 = *&v14[26]._os_unfair_lock_opaque) != 0)
      {
        v15 = _nw_array_get_object_at_index(v17, 3);
      }

      else
      {
        v15 = 0;
      }

      os_unfair_lock_unlock(v14 + 28);
    }

    if (*(v82 + 5))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_connection_group_reply_block_invoke;
      aBlock[3] = &unk_1E6A3BE58;
      v18 = v10;
      v78 = v18;
      v80 = type;
      v19 = v9;
      v79 = v19;
      v20 = _Block_copy(aBlock);
      os_unfair_lock_lock(&v10[22].isa + 1);
      v20[2](v20);
      os_unfair_lock_unlock(&v10[22].isa + 1);

      v21 = *(v82 + 5);
      if (v21)
      {
        nw_connection_group_touch_connection(v18, v21);
        v22 = *(v82 + 5);
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = __nw_connection_group_reply_block_invoke_23;
        completion[3] = &unk_1E6A2CA48;
        v73 = v18;
        v74 = v14;
        v75 = v19;
        v76 = v71;
        nw_connection_send(v22, v76, v75, 1, completion);
      }

      goto LABEL_65;
    }

    v23 = v10[7].isa;
    if (!v71 || !v15)
    {
      if (!nw_parameters_get_logging_disabled(v23))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v25 = gconnection_groupLogObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = v10[22].isa;
          v27 = v9;
          if (v27 == &__block_literal_global_44658)
          {
            v28 = "Default Message";
          }

          else if (v27 == &__block_literal_global_6_44667)
          {
            v28 = "Final Message";
          }

          else if (v27 == &__block_literal_global_8_44676)
          {
            v28 = "Default Stream";
          }

          else if (v27 == &__block_literal_global_10_44685)
          {
            v28 = "New Inbound Message";
          }

          else
          {
            v28 = &v27[3];
          }

          *buf = 136446978;
          *&buf[4] = "nw_connection_group_reply";
          *&buf[12] = 1024;
          *&buf[14] = v26;
          *&buf[18] = 2048;
          *&buf[20] = v14;
          *&buf[28] = 2080;
          *&buf[30] = v28;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s [G%u] context %p does not have connection and is not multicast with content, dropping reply context %s", buf, 0x26u);
        }
      }

      goto LABEL_65;
    }

    if (!nw_parameters_get_logging_disabled(v23) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v67 = gconnection_groupLogObj;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v68 = v10[22].isa;
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_reply";
        *&buf[12] = 1024;
        *&buf[14] = v68;
        *&buf[18] = 2112;
        *&buf[20] = v14;
        _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Replying to multicast message (%@), sending direct response", buf, 0x1Cu);
      }
    }

    if (v10[13].isa)
    {
      v24 = nw_connection_group_copy_remote_endpoint_for_message(v10, v14);
      nw_connection_group_send_message(v10, v71, v24, v9, &__block_literal_global_9511);

LABEL_65:
      _Block_object_dispose(type, 8);

      goto LABEL_66;
    }

    v69 = v10;
    v29 = v15;
    v30 = v14;
    v31 = v9;
    v32 = v71;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = -1;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = ___ZL42nw_connection_group_send_message_on_socketP30NWConcrete_nw_connection_groupPU27objcproto16OS_nw_fd_wrapper8NSObjectPU32objcproto21OS_nw_content_contextS1_S5_PU27objcproto16OS_dispatch_dataS1__block_invoke;
    v87[3] = &unk_1E6A3C0D8;
    v87[4] = &v88;
    nw_fd_wrapper_get_fd(v29, v87);
    if ((v89[3] & 0x80000000) != 0)
    {
      if (!nw_parameters_get_logging_disabled(v10[7].isa))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v36 = gconnection_groupLogObj;
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v40 = v69[22].isa;
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_send_message_on_socket";
        *&buf[12] = 1024;
        *&buf[14] = v40;
        *&buf[18] = 2112;
        *&buf[20] = v29;
        v41 = "%{public}s [G%u] Failed to get socket for %@";
LABEL_56:
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, v41, buf, 0x1Cu);
        goto LABEL_63;
      }
    }

    else
    {
      v33 = v31;
      size = dispatch_data_get_size(v32);
      if (size)
      {
        v35 = size;
        v36 = nw_content_context_copy_remote_endpoint(v30);
        v37 = v10[7].isa;
        if (v36)
        {
          v38 = nw_parameters_copy_context(v37);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL42nw_connection_group_send_message_on_socketP30NWConcrete_nw_connection_groupPU27objcproto16OS_nw_fd_wrapper8NSObjectPU32objcproto21OS_nw_content_contextS1_S5_PU27objcproto16OS_dispatch_dataS1__block_invoke_154;
          *&buf[24] = &unk_1E6A2CB88;
          v98 = v35;
          *&buf[32] = v32;
          v93 = v69;
          v94 = v36;
          v97 = &v88;
          v95 = v30;
          v31 = v33;
          v96 = v33;
          nw_queue_context_async(v38, buf);

          v39 = *&buf[32];
        }

        else
        {
          if (nw_parameters_get_logging_disabled(v37))
          {
            v36 = 0;
            v31 = v33;
            goto LABEL_63;
          }

          v31 = v33;
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v39 = gconnection_groupLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v43 = v69[22].isa;
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_send_message_on_socket";
            *&buf[12] = 1024;
            *&buf[14] = v43;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot send without remote endpoint", buf, 0x12u);
          }
        }

LABEL_63:
        goto LABEL_64;
      }

      if (!nw_parameters_get_logging_disabled(v10[7].isa))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v36 = gconnection_groupLogObj;
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v42 = v69[22].isa;
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_send_message_on_socket";
        *&buf[12] = 1024;
        *&buf[14] = v42;
        *&buf[18] = 2048;
        *&buf[20] = 0;
        v41 = "%{public}s [G%u] Cannot send %zu-length data for multicast connection group";
        goto LABEL_56;
      }
    }

LABEL_64:
    _Block_object_dispose(&v88, 8);

    goto LABEL_65;
  }

  if (!nw_parameters_get_logging_disabled(v7[7].isa))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v52 = gconnection_groupLogObj;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = v7[22].isa;
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_reply";
      *&buf[12] = 1024;
      *&buf[14] = v53;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot reply on a failed or cancelled group", buf, 0x12u);
    }
  }

LABEL_66:
}

void __nw_connection_group_reply_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *v35 = 136446210;
    *&v35[4] = "nw_connection_group_has_connection_locked";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null group", v35, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *v35 = 136446466;
          *&v35[4] = "nw_connection_group_has_connection_locked";
          *&v35[12] = 2082;
          *&v35[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null group, dumping backtrace:%{public}s", v35, 0x16u);
        }

        free(backtrace_string);
LABEL_53:
        if (!v18)
        {
LABEL_55:

          goto LABEL_11;
        }

LABEL_54:
        free(v18);
        goto LABEL_55;
      }

      if (v25)
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null group, no backtrace", v35, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null group, backtrace limit exceeded", v35, 0xCu);
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  if (!v4)
  {
    v21 = __nwlog_obj();
    *v35 = 136446210;
    *&v35[4] = "nw_connection_group_has_connection_locked";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v19, type))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null connection", v35, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v19, type);
      if (v26)
      {
        if (v28)
        {
          *v35 = 136446466;
          *&v35[4] = "nw_connection_group_has_connection_locked";
          *&v35[12] = 2082;
          *&v35[14] = v26;
          _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null connection, dumping backtrace:%{public}s", v35, 0x16u);
        }

        free(v26);
        if (!v18)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (v28)
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null connection, no backtrace", v35, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *v35 = 136446210;
        *&v35[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null connection, backtrace limit exceeded", v35, 0xCu);
      }
    }

    goto LABEL_52;
  }

  *v35 = 0;
  *&v35[8] = v35;
  *&v35[16] = 0x2020000000;
  v36 = 0;
  v6 = v3[14];
  if (!v6)
  {
    _Block_object_dispose(v35, 8);

    goto LABEL_11;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL41nw_connection_group_has_connection_lockedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
  *&buf[24] = &unk_1E6A3BB28;
  v7 = v4;
  *&buf[32] = v7;
  v34 = v35;
  _nw_array_apply(v6, buf);

  v8 = *(*&v35[8] + 24);
  _Block_object_dispose(v35, 8);

  if ((v8 & 1) == 0)
  {
LABEL_11:
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v12 = gconnection_groupLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(a1 + 32) + 176);
        v14 = *(*(*(a1 + 48) + 8) + 40);
        identifier = nw_content_context_get_identifier(*(a1 + 40));
        *buf = 136446978;
        *&buf[4] = "nw_connection_group_reply_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v13;
        *&buf[18] = 2048;
        *&buf[20] = v14;
        *&buf[28] = 2080;
        *&buf[30] = identifier;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s [G%u] did not find connection %p, dropping reply context %s", buf, 0x26u);
      }
    }

    v16 = *(*(a1 + 48) + 8);
    v9 = *(v16 + 40);
    *(v16 + 40) = 0;
    goto LABEL_18;
  }

  if (nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    return;
  }

  if (__nwlog_connection_group_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
  }

  v9 = gconnection_groupLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(*(a1 + 32) + 176);
    id = nw_connection_get_id(*(*(*(a1 + 48) + 8) + 40));
    *buf = 136446722;
    *&buf[4] = "nw_connection_group_reply_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2048;
    *&buf[20] = id;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] has connection [C%llu], sending reply", buf, 0x1Cu);
  }

LABEL_18:
}

void sub_1823CDCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_connection_group_reply_block_invoke_23(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  if (v3)
  {
    if (!nw_parameters_get_logging_disabled(v4))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v5 = gconnection_groupLogObj;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 176);
      identifier = nw_content_context_get_identifier(*(a1 + 48));
      v16 = 136447234;
      v17 = "nw_connection_group_reply_block_invoke";
      v18 = 1024;
      v19 = v7;
      v20 = 2048;
      v21 = v6;
      v22 = 2080;
      v23 = identifier;
      v24 = 2112;
      v25 = v3;
      v9 = "%{public}s [G%u] context %p reply %s failed with error: %@";
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_181A37000, v10, v11, v9, &v16, 0x30u);
LABEL_15:
    }
  }

  else if (!nw_parameters_get_logging_disabled(v4))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v5 = gconnection_groupLogObj;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 176);
    v14 = nw_content_context_get_identifier(*(a1 + 48));
    size = *(a1 + 56);
    if (size)
    {
      size = dispatch_data_get_size(size);
    }

    v16 = 136447234;
    v17 = "nw_connection_group_reply_block_invoke";
    v18 = 1024;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 2080;
    v23 = v14;
    v24 = 2048;
    v25 = size;
    v9 = "%{public}s [G%u] sent reply to context %p: (context: %s, content: %zu bytes)";
    v10 = v5;
    v11 = OS_LOG_TYPE_DEBUG;
    goto LABEL_14;
  }
}

nw_endpoint_t nw_connection_group_copy_remote_endpoint_for_message(nw_connection_group_t group, nw_content_context_t context)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = context;
  v5 = v4;
  if (!v3)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_connection_group_copy_remote_endpoint_for_message";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v22, &type, &v53))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v44, "%{public}s called with null group", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v53 != 1)
    {
      v23 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v51, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v47 = type;
    v48 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v48)
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v47, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v48)
    {
      *buf = 136446466;
      v56 = "nw_connection_group_copy_remote_endpoint_for_message";
      v57 = 2082;
      v58 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v47, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_26;
  }

  if (!v4)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_connection_group_copy_remote_endpoint_for_message";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v22, &type, &v53))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v46, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v53 != 1)
    {
      v23 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v52, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v49 = type;
    v50 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v50)
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v49, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v50)
    {
      *buf = 136446466;
      v56 = "nw_connection_group_copy_remote_endpoint_for_message";
      v57 = 2082;
      v58 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v49, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_26:

    free(backtrace_string);
    if (!v22)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  isa = v3[8].isa;
  if (!isa)
  {
LABEL_17:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v56 = "nw_connection_group_copy_remote_endpoint_for_message";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v22, &type, &v53))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Group descriptor is not set", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v53 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s Group descriptor is not set, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v26 = type;
    v27 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_remote_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s Group descriptor is not set, no backtrace", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v27)
    {
      *buf = 136446466;
      v56 = "nw_connection_group_copy_remote_endpoint_for_message";
      v57 = 2082;
      v58 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v26, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v7 = isa;
  v8 = *(v7 + 2);

  if (v8 != 1)
  {
    v11 = v3[8].isa;
    if (v11)
    {
      v12 = v11;
      v13 = *(v12 + 2);

      if (v13 == 2)
      {
        goto LABEL_12;
      }

      v14 = v3[8].isa;
      if (v14)
      {
        v15 = v14;
        v16 = *(v15 + 2);

        if (v16 == 4)
        {
LABEL_12:
          v10 = nw_connection_group_copy_connection_for_message(v3, v5);
          if (!v10)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }

        if (v3[8].isa)
        {
          v18 = __nwlog_obj();
          v19 = nw_group_descriptor_get_type(v3[8].isa);
          if (v19 > 4)
          {
            v20 = "unknown";
          }

          else
          {
            v20 = off_1E6A2CCD0[v19];
          }

          *buf = 136446466;
          v56 = "nw_connection_group_copy_remote_endpoint_for_message";
          v57 = 2080;
          v58 = v20;
          v22 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v53 = 0;
          if (__nwlog_fault(v22, &type, &v53))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v23 = __nwlog_obj();
              v30 = type;
              if (os_log_type_enabled(v23, type))
              {
                v31 = nw_group_descriptor_get_type(v3[8].isa);
                if (v31 > 4)
                {
                  v32 = "unknown";
                }

                else
                {
                  v32 = off_1E6A2CCD0[v31];
                }

                *buf = 136446466;
                v56 = "nw_connection_group_copy_remote_endpoint_for_message";
                v57 = 2080;
                v58 = v32;
                _os_log_impl(&dword_181A37000, v23, v30, "%{public}s Unsupported group descriptor type: %s", buf, 0x16u);
              }

LABEL_33:

              goto LABEL_34;
            }

            if (v53 != 1)
            {
              v23 = __nwlog_obj();
              v38 = type;
              if (os_log_type_enabled(v23, type))
              {
                v39 = nw_group_descriptor_get_type(v3[8].isa);
                if (v39 > 4)
                {
                  v40 = "unknown";
                }

                else
                {
                  v40 = off_1E6A2CCD0[v39];
                }

                *buf = 136446466;
                v56 = "nw_connection_group_copy_remote_endpoint_for_message";
                v57 = 2080;
                v58 = v40;
                _os_log_impl(&dword_181A37000, v23, v38, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", buf, 0x16u);
              }

              goto LABEL_33;
            }

            v33 = __nw_create_backtrace_string();
            v23 = __nwlog_obj();
            v34 = type;
            v35 = os_log_type_enabled(v23, type);
            if (!v33)
            {
              if (v35)
              {
                v41 = nw_group_descriptor_get_type(v3[8].isa);
                if (v41 > 4)
                {
                  v42 = "unknown";
                }

                else
                {
                  v42 = off_1E6A2CCD0[v41];
                }

                *buf = 136446466;
                v56 = "nw_connection_group_copy_remote_endpoint_for_message";
                v57 = 2080;
                v58 = v42;
                _os_log_impl(&dword_181A37000, v23, v34, "%{public}s Unsupported group descriptor type: %s, no backtrace", buf, 0x16u);
              }

              goto LABEL_33;
            }

            if (v35)
            {
              v36 = nw_group_descriptor_get_type(v3[8].isa);
              if (v36 > 4)
              {
                v37 = "unknown";
              }

              else
              {
                v37 = off_1E6A2CCD0[v36];
              }

              *buf = 136446722;
              v56 = "nw_connection_group_copy_remote_endpoint_for_message";
              v57 = 2080;
              v58 = v37;
              v59 = 2082;
              v60 = v33;
              _os_log_impl(&dword_181A37000, v23, v34, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v33);
          }

LABEL_34:
          if (!v22)
          {
LABEL_36:
            v9 = 0;
            goto LABEL_37;
          }

LABEL_35:
          free(v22);
          goto LABEL_36;
        }
      }
    }

    goto LABEL_17;
  }

  v9 = nw_content_context_copy_remote_endpoint(v5);
  if (!v9)
  {
    v10 = nw_connection_group_copy_connection_for_message(v3, v5);
    if (!v10)
    {
LABEL_7:
      v9 = 0;

      goto LABEL_37;
    }

LABEL_13:
    v17 = v10;
    v9 = v17[1];
  }

LABEL_37:

  return v9;
}

void nw_connection_group_send_message(nw_connection_group_t group, dispatch_data_t content, nw_endpoint_t endpoint, nw_content_context_t context, nw_connection_group_send_completion_t completion)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = group;
  v10 = content;
  v11 = endpoint;
  v12 = context;
  v13 = completion;
  v14 = v13;
  v36 = v10;
  if (!v9)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_send_message";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v22, &type, &v44))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null group", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v44 != 1)
    {
      v23 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message";
        _os_log_impl(&dword_181A37000, v23, v34, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = type;
    v30 = os_log_type_enabled(v28, type);
    if (backtrace_string)
    {
      if (v30)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_send_message";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_40:
      if (!v22)
      {
        goto LABEL_6;
      }

LABEL_41:
      free(v22);
      goto LABEL_6;
    }

    if (v30)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_send_message";
      _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null group, no backtrace", buf, 0xCu);
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v13)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v47 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_send_message_block_invoke;
    aBlock[3] = &unk_1E6A349E8;
    v15 = v9;
    v38 = v15;
    v16 = v10;
    v39 = v16;
    v17 = v11;
    v40 = v17;
    v18 = v12;
    v41 = v18;
    v19 = v14;
    v42 = v19;
    v43 = buf;
    v20 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v9[22].isa + 1);
    v20[2](v20);
    os_unfair_lock_unlock(&v9[22].isa + 1);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      nw_connection_group_send_message_internal(v15, v16, v17, v18, v19);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_6;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_send_message";
  v22 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (!__nwlog_fault(v22, &type, &v44))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v23 = __nwlog_obj();
    v26 = type;
    if (os_log_type_enabled(v23, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_send_message";
      _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null completion", buf, 0xCu);
    }

LABEL_33:

    goto LABEL_40;
  }

  if (v44 != 1)
  {
    v23 = __nwlog_obj();
    v35 = type;
    if (os_log_type_enabled(v23, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_send_message";
      _os_log_impl(&dword_181A37000, v23, v35, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_33;
  }

  v31 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v32 = type;
  v33 = os_log_type_enabled(v28, type);
  if (!v31)
  {
    if (v33)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_send_message";
      _os_log_impl(&dword_181A37000, v28, v32, "%{public}s called with null completion, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v33)
  {
    *buf = 136446466;
    *&buf[4] = "nw_connection_group_send_message";
    *&buf[12] = 2082;
    *&buf[14] = v31;
    _os_log_impl(&dword_181A37000, v28, v32, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v31);
  if (v22)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void sub_1823CF028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL42nw_connection_group_send_message_on_socketP30NWConcrete_nw_connection_groupPU27objcproto16OS_nw_fd_wrapper8NSObjectPU32objcproto21OS_nw_content_contextS1_S5_PU27objcproto16OS_dispatch_dataS1__block_invoke_154(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  address = *(a1 + 80);
  if (!address)
  {
    v49 = __nwlog_obj();
    os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    *applier = 136446210;
    *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v4))
    {
      goto LABEL_79;
    }

    free(v4);
  }

  v4 = malloc_type_calloc(1uLL, address, 0x31FDA7AFuLL);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    *applier = 136446722;
    *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
    *&applier[12] = 2048;
    *&applier[14] = 1;
    *&applier[22] = 2048;
    *&applier[24] = address;
    address = _os_log_send_and_compose_impl();

    if (!__nwlog_should_abort(address))
    {
      free(address);
      v1 = (a1 + 32);
      v5 = *(a1 + 32);
      v6 = *(a1 + 80);
      *type = 0;
      v60 = type;
      v61 = 0x2000000000;
      v62 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2000000000;
      v58 = 0;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_79:
    __break(1u);
LABEL_80:
    dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    goto LABEL_76;
  }

  v1 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  *type = 0;
  v60 = type;
  v61 = 0x2000000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = v4;
  if (v5)
  {
LABEL_4:
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
    *&applier[24] = &unk_1E6A34348;
    *&applier[40] = &v55;
    *&applier[48] = v6;
    *&applier[32] = type;
    dispatch_data_apply(v5, applier);
    v7 = *(v60 + 3);
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(type, 8);
  if (v7 != *(a1 + 80))
  {
    if (nw_parameters_get_logging_disabled(*(*(a1 + 40) + 56)))
    {
      goto LABEL_53;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v13 = gconnection_groupLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(*(a1 + 40) + 176);
      v16 = *(a1 + 80);
      *applier = 136446978;
      *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
      *&applier[12] = 1024;
      *&applier[14] = v15;
      *&applier[18] = 2048;
      *&applier[20] = v16;
      *&applier[28] = 2112;
      *&applier[30] = v14;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Failed to copy %zu bytes of content from %@", applier, 0x26u);
    }

    goto LABEL_21;
  }

  address = nw_endpoint_get_address(*(a1 + 48));
  logging_disabled = nw_parameters_get_logging_disabled(*(*(a1 + 40) + 56));
  if (!address)
  {
    if (logging_disabled)
    {
      goto LABEL_53;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v13 = gconnection_groupLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = *(*(a1 + 40) + 176);
      *applier = 136446722;
      *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
      *&applier[12] = 1024;
      *&applier[14] = v18;
      *&applier[18] = 2112;
      *&applier[20] = v17;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Failed to access address from %@", applier, 0x1Cu);
    }

LABEL_21:

    goto LABEL_53;
  }

  if (logging_disabled || gLogDatapath != 1)
  {
    goto LABEL_12;
  }

  if (__nwlog_connection_group_log::onceToken != -1)
  {
    goto LABEL_80;
  }

LABEL_76:
  v50 = gconnection_groupLogObj;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = *(a1 + 48);
    v52 = *(*(a1 + 40) + 176);
    v53 = *(a1 + 80);
    v54 = *(*(*(a1 + 72) + 8) + 24);
    *applier = 136447490;
    *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
    *&applier[12] = 1024;
    *&applier[14] = v52;
    *&applier[18] = 1024;
    *&applier[20] = v54;
    *&applier[24] = 2048;
    *&applier[26] = v4;
    *&applier[34] = 2048;
    *&applier[36] = v53;
    *&applier[44] = 2112;
    *&applier[46] = v51;
    _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] calling sendto(%d, %p, %zu, 0, %@)", applier, 0x36u);
  }

LABEL_12:
  v10 = sendto(*(*(*(a1 + 72) + 8) + 24), v4, *(a1 + 80), 0, address, address->sa_len);
  v11 = v10;
  if (v10 < 0)
  {
    v19 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = *v1;
    *applier = 136446722;
    *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
    *&applier[12] = 2112;
    *&applier[14] = v21;
    *&applier[22] = 1024;
    *&applier[24] = v19;
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55) = 0;
    if (__nwlog_fault(v22, type, &v55))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          v25 = *v1;
          *applier = 136446722;
          *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
          *&applier[12] = 2112;
          *&applier[14] = v25;
          *&applier[22] = 1024;
          *&applier[24] = v19;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s sendto failed for %@ %{darwin.errno}d", applier, 0x1Cu);
        }
      }

      else if (v55 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v30 = type[0];
        v31 = os_log_type_enabled(v23, type[0]);
        if (backtrace_string)
        {
          if (v31)
          {
            v32 = *v1;
            *applier = 136446978;
            *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
            *&applier[12] = 2112;
            *&applier[14] = v32;
            *&applier[22] = 1024;
            *&applier[24] = v19;
            *&applier[28] = 2082;
            *&applier[30] = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v30, "%{public}s sendto failed for %@ %{darwin.errno}d, dumping backtrace:%{public}s", applier, 0x26u);
          }

          free(backtrace_string);
          if (!v22)
          {
LABEL_53:
            v12 = 0;
            if (!v4)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

LABEL_52:
          free(v22);
          goto LABEL_53;
        }

        if (v31)
        {
          v35 = *v1;
          *applier = 136446722;
          *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
          *&applier[12] = 2112;
          *&applier[14] = v35;
          *&applier[22] = 1024;
          *&applier[24] = v19;
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s sendto failed for %@ %{darwin.errno}d, no backtrace", applier, 0x1Cu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v33 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          v34 = *v1;
          *applier = 136446722;
          *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
          *&applier[12] = 2112;
          *&applier[14] = v34;
          *&applier[22] = 1024;
          *&applier[24] = v19;
          _os_log_impl(&dword_181A37000, v23, v33, "%{public}s sendto failed for %@ %{darwin.errno}d, backtrace limit exceeded", applier, 0x1Cu);
        }
      }
    }

    if (!v22)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (v10 != *(a1 + 80))
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 40) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v26 = gconnection_groupLogObj;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(*(a1 + 40) + 176);
        v28 = *(a1 + 80);
        *applier = 136446978;
        *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
        *&applier[12] = 1024;
        *&applier[14] = v27;
        *&applier[18] = 2048;
        *&applier[20] = v11;
        *&applier[28] = 2048;
        *&applier[30] = v28;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Failed to send entire packet, sent %zd bytes of %zu", applier, 0x26u);
      }
    }

    goto LABEL_53;
  }

  v12 = 1;
  if (v4)
  {
LABEL_54:
    free(v4);
  }

LABEL_55:
  v36 = nw_parameters_get_logging_disabled(*(*(a1 + 40) + 56));
  if (v12)
  {
    if (v36)
    {
      return;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v37 = gconnection_groupLogObj;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_71;
    }

    v38 = *(*(a1 + 40) + 176);
    v39 = *(a1 + 56);
    identifier = nw_content_context_get_identifier(*(a1 + 64));
    size = *(a1 + 32);
    if (size)
    {
      size = dispatch_data_get_size(size);
    }

    *applier = 136447234;
    *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
    *&applier[12] = 1024;
    *&applier[14] = v38;
    *&applier[18] = 2048;
    *&applier[20] = v39;
    *&applier[28] = 2080;
    *&applier[30] = identifier;
    *&applier[38] = 2048;
    *&applier[40] = size;
    v42 = "%{public}s [G%u] sent reply to context %p: (context: %s, content: %zu bytes)";
    v43 = v37;
    v44 = OS_LOG_TYPE_DEBUG;
    goto LABEL_70;
  }

  if (v36)
  {
    return;
  }

  if (__nwlog_connection_group_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
  }

  v37 = gconnection_groupLogObj;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v45 = *(*(a1 + 40) + 176);
    v46 = *(a1 + 56);
    v47 = nw_content_context_get_identifier(*(a1 + 64));
    v48 = *(a1 + 32);
    if (v48)
    {
      v48 = dispatch_data_get_size(v48);
    }

    *applier = 136447234;
    *&applier[4] = "nw_connection_group_send_message_on_socket_block_invoke";
    *&applier[12] = 1024;
    *&applier[14] = v45;
    *&applier[18] = 2048;
    *&applier[20] = v46;
    *&applier[28] = 2080;
    *&applier[30] = v47;
    *&applier[38] = 2048;
    *&applier[40] = v48;
    v42 = "%{public}s [G%u] context %p failed to send reply (context: %s, content: %zu bytes)";
    v43 = v37;
    v44 = OS_LOG_TYPE_ERROR;
LABEL_70:
    _os_log_impl(&dword_181A37000, v43, v44, v42, applier, 0x30u);
  }

LABEL_71:
}

void __nw_connection_group_send_message_block_invoke(uint64_t a1)
{
  *&v41[13] = *MEMORY[0x1E69E9840];
  if (nw_connection_group_get_type(*(a1 + 32)) != 1)
  {
    return;
  }

  v2 = *(a1 + 32);
  if (!*(v2 + 104) || (*(v2 + 198) & 0x20) != 0)
  {
    return;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v35 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  v11 = v10;
  if (!v9)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_connection_group_create_request";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v20, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v39 = "nw_connection_group_create_request";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_46;
      }

      if (v36 != 1)
      {
        v21 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v39 = "nw_connection_group_create_request";
          _os_log_impl(&dword_181A37000, v21, v33, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          v39 = "nw_connection_group_create_request";
          v40 = 2082;
          *v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_40;
      }

      if (v30)
      {
        *buf = 136446210;
        v39 = "nw_connection_group_create_request";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

LABEL_52:
    }

LABEL_53:
    if (v20)
    {
      free(v20);
    }

    v12 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_connection_group_create_request";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v20, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v39 = "nw_connection_group_create_request";
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null completion", buf, 0xCu);
        }

LABEL_46:

        goto LABEL_53;
      }

      if (v36 != 1)
      {
        v21 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v39 = "nw_connection_group_create_request";
          _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v39 = "nw_connection_group_create_request";
          v40 = 2082;
          *v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_40:

        free(backtrace_string);
        goto LABEL_53;
      }

      if (v32)
      {
        *buf = 136446210;
        v39 = "nw_connection_group_create_request";
        _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v12 = objc_alloc_init(NWConcrete_nw_connection_group_send_request);
  objc_storeStrong(&v12->group, v2);
  objc_storeStrong(&v12->data, v3);
  objc_storeStrong(&v12->endpoint, v4);
  objc_storeStrong(&v12->context, v6);
  v13 = _Block_copy(v11);
  completion = v12->completion;
  v12->completion = v13;

LABEL_7:
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v25 = gconnection_groupLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(*(a1 + 32) + 176);
      *buf = 136446722;
      v39 = "nw_connection_group_send_message_block_invoke";
      v40 = 1024;
      *v41 = v26;
      v41[2] = 2112;
      *&v41[3] = v12;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] enqueuing send request %@", buf, 0x1Cu);
    }
  }

  v15 = *(*(a1 + 32) + 120);
  if (!v15)
  {
    v16 = _nw_array_create();
    v17 = *(a1 + 32);
    v18 = *(v17 + 120);
    *(v17 + 120) = v16;

    v15 = *(*(a1 + 32) + 120);
  }

  if (v15)
  {
    if (v12)
    {
      _nw_array_append(v15, v12);
    }
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
}

void nw_connection_group_send_message_internal(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v151 = *MEMORY[0x1E69E9840];
  v9 = a1;
  content = a2;
  v10 = a3;
  context = a4;
  v11 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke;
  aBlock[3] = &unk_1E6A2CBB0;
  v12 = v9;
  v124 = v12;
  v114 = v11;
  v125 = v114;
  v112 = _Block_copy(aBlock);
  if (!context)
  {
    if (nw_parameters_get_logging_disabled(v12[7]))
    {
LABEL_159:
      v69 = 22;
LABEL_160:
      v112[2](v112, v69);
      goto LABEL_75;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v61 = gconnection_groupLogObj;
    v62 = *(v12 + 44);
    *buf = 136446466;
    *&buf[4] = "nw_connection_group_send_message_internal";
    *&buf[12] = 1024;
    *&buf[14] = v62;
    v63 = _os_log_send_and_compose_impl();

    v149[0] = 16;
    v147[0] = 0;
    if (__nwlog_fault(v63, v149, v147))
    {
      if (v149[0] == 17)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v64 = gconnection_groupLogObj;
        v65 = v149[0];
        if (os_log_type_enabled(v64, v149[0]))
        {
          v66 = *(v12 + 44);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_send_message_internal";
          *&buf[12] = 1024;
          *&buf[14] = v66;
          _os_log_impl(&dword_181A37000, v64, v65, "%{public}s [G%u] context must not be NULL", buf, 0x12u);
        }
      }

      else if (v147[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v77 = backtrace_string;
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v78 = gconnection_groupLogObj;
          v79 = v149[0];
          if (os_log_type_enabled(v78, v149[0]))
          {
            v80 = *(v12 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_send_message_internal";
            *&buf[12] = 1024;
            *&buf[14] = v80;
            *&buf[18] = 2082;
            *&buf[20] = v77;
            _os_log_impl(&dword_181A37000, v78, v79, "%{public}s [G%u] context must not be NULL, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v77);
          goto LABEL_157;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v64 = gconnection_groupLogObj;
        v99 = v149[0];
        if (os_log_type_enabled(v64, v149[0]))
        {
          v100 = *(v12 + 44);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_send_message_internal";
          *&buf[12] = 1024;
          *&buf[14] = v100;
          _os_log_impl(&dword_181A37000, v64, v99, "%{public}s [G%u] context must not be NULL, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v64 = gconnection_groupLogObj;
        v89 = v149[0];
        if (os_log_type_enabled(v64, v149[0]))
        {
          v90 = *(v12 + 44);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_send_message_internal";
          *&buf[12] = 1024;
          *&buf[14] = v90;
          _os_log_impl(&dword_181A37000, v64, v89, "%{public}s [G%u] context must not be NULL, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_157:
    if (v63)
    {
      free(v63);
    }

    goto LABEL_159;
  }

  if (*(v12 + 198) < 0 || *(v12 + 10) >= 3)
  {
    if (!nw_parameters_get_logging_disabled(v12[7]))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v67 = gconnection_groupLogObj;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = *(v12 + 44);
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_send_message_internal";
        *&buf[12] = 1024;
        *&buf[14] = v68;
        _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot send a message on a failed or cancelled group", buf, 0x12u);
      }
    }

    v69 = 89;
    goto LABEL_160;
  }

  if (v10)
  {
    goto LABEL_5;
  }

  v37 = nw_group_descriptor_copy_members(v12[8]);
  v20 = v37;
  if (!v37 || !_nw_array_get_count(v37))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v38 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_send_message_internal";
    v39 = _os_log_send_and_compose_impl();

    v149[0] = 16;
    v147[0] = 0;
    if (!__nwlog_fault(v39, v149, v147))
    {
      goto LABEL_71;
    }

    if (v149[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      v41 = v149[0];
      if (os_log_type_enabled(v40, v149[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message_internal";
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s Cannot find endpoints for sending", buf, 0xCu);
      }
    }

    else if (v147[0] == 1)
    {
      v45 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      v46 = v149[0];
      v47 = os_log_type_enabled(v40, v149[0]);
      if (v45)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_send_message_internal";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          _os_log_impl(&dword_181A37000, v40, v46, "%{public}s Cannot find endpoints for sending, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v45);
        if (!v39)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message_internal";
        _os_log_impl(&dword_181A37000, v40, v46, "%{public}s Cannot find endpoints for sending, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      v60 = v149[0];
      if (os_log_type_enabled(v40, v149[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message_internal";
        _os_log_impl(&dword_181A37000, v40, v60, "%{public}s Cannot find endpoints for sending, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_70;
  }

  v10 = _nw_array_get_object_at_index(v20, 0);
  if (v10)
  {

LABEL_5:
    v10 = v10;
    v110 = _nw_endpoint_copy(v10);

    parameters = _nw_parameters_copy(v12[7]);
    v13 = v12;
    isa = v13[8].isa;
    host_with_numeric_port = v13;
    if (isa)
    {
      v16 = isa;
      v17 = *(v16 + 2) == 1;

      if (!v17)
      {
        goto LABEL_9;
      }

      port = nw_connection_group_get_port(v13);
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("0.0.0.0", port);
      nw_parameters_set_reuse_local_address(parameters, 1);
      nw_parameters_set_local_endpoint(parameters, host_with_numeric_port);
      nw_parameters_set_allow_socket_access(parameters, 1);
    }

LABEL_9:
    v19 = v13;
    v20 = v110;
    v21 = parameters;
    v22 = v21;
    if (!v20)
    {
      v70 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
      v71 = _os_log_send_and_compose_impl();

      v149[0] = 16;
      v147[0] = 0;
      if (!__nwlog_fault(v71, v149, v147))
      {
        goto LABEL_172;
      }

      if (v149[0] == 17)
      {
        v72 = __nwlog_obj();
        v73 = v149[0];
        if (os_log_type_enabled(v72, v149[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null remote_endpoint", buf, 0xCu);
        }
      }

      else if (v147[0] == 1)
      {
        v83 = __nw_create_backtrace_string();
        v72 = __nwlog_obj();
        v84 = v149[0];
        v85 = os_log_type_enabled(v72, v149[0]);
        if (v83)
        {
          if (v85)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v83;
            _os_log_impl(&dword_181A37000, v72, v84, "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v83);
          if (!v71)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }

        if (v85)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v72, v84, "%{public}s called with null remote_endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v72 = __nwlog_obj();
        v95 = v149[0];
        if (os_log_type_enabled(v72, v149[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v72, v95, "%{public}s called with null remote_endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_171;
    }

    if (v21)
    {
      v130 = 0;
      v131 = &v130;
      v132 = 0x3032000000;
      v133 = __Block_byref_object_copy__9201;
      v134 = __Block_byref_object_dispose__9202;
      v135 = 0;
      v126 = 0;
      v127 = &v126;
      v128 = 0x2020000000;
      v129 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke;
      *&buf[24] = &unk_1E6A2CB10;
      v109 = v19;
      *&buf[32] = v109;
      v145 = &v126;
      v23 = v22;
      v143 = v23;
      v24 = v20;
      v144 = v24;
      v146 = &v130;
      v25 = _Block_copy(buf);
      os_unfair_lock_lock(&v19[22].isa + 1);
      v25[2](v25);
      os_unfair_lock_unlock(&v19[22].isa + 1);

      if (v127[3])
      {
        v26 = 0;
LABEL_58:

        _Block_object_dispose(&v126, 8);
        _Block_object_dispose(&v130, 8);

LABEL_59:
        if (v26)
        {
          if (!nw_parameters_get_logging_disabled(v12[7]) && gLogDatapath == 1)
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v81 = gconnection_groupLogObj;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v82 = v19[22].isa;
              *buf = 136447234;
              *&buf[4] = "nw_connection_group_send_message_internal";
              *&buf[12] = 1024;
              *&buf[14] = v82;
              *&buf[18] = 2112;
              *&buf[20] = v20;
              *&buf[28] = 2112;
              *&buf[30] = v22;
              *&buf[38] = 2112;
              v143 = v26;
              _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Got connection for endpoint (%@) and parameters (%@): %@", buf, 0x30u);
            }
          }

          nw_connection_group_touch_connection(v19, v26);
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 3221225472;
          completion[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_159;
          completion[3] = &unk_1E6A3A6A0;
          v117 = v19;
          v118 = v26;
          v119 = v114;
          nw_connection_send(&v118->super, content, context, 1, completion);
          v57 = &v117;
          v58 = &v118;
          v59 = v119;
        }

        else
        {
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_157;
          v120[3] = &unk_1E6A3D710;
          v121 = v19;
          v122 = v114;
          v59 = _Block_copy(v120);
          os_unfair_lock_lock(&v19[22].isa + 1);
          v59[2](v59);
          v57 = &v121;
          v58 = &v122;
          os_unfair_lock_unlock(&v19[22].isa + 1);
        }

        goto LABEL_74;
      }

      if (v131[5])
      {
        v27 = v13[8].isa;
        if (!v27 || (v28 = v27, v29 = *(v28 + 2) == 2, v28, !v29))
        {
LABEL_57:
          v26 = v131[5];
          goto LABEL_58;
        }
      }

      if (!nw_parameters_get_logging_disabled(v12[7]) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v91 = gconnection_groupLogObj;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          v92 = v109[22].isa;
          *v149 = 136446978;
          *&v149[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          *&v149[12] = 1024;
          *&v149[14] = v92;
          *&v149[18] = 2112;
          *&v149[20] = v24;
          *&v149[28] = 2112;
          *&v149[30] = v23;
          _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Did not find connection for (remote: %@, parameters: %@), creating new connection", v149, 0x26u);
        }
      }

      v30 = v131[5];
      v108 = v109;
      v106 = v30;
      v107 = v24;
      v31 = v23;
      *v149 = 0;
      *&v149[8] = v149;
      *&v149[16] = 0x3032000000;
      *&v149[24] = __Block_byref_object_copy__9201;
      *&v149[32] = __Block_byref_object_dispose__9202;
      v150 = 0;
      v105 = v31;
      v32 = _nw_parameters_copy(v31);
      nw_parameters_set_reuse_local_address(v32, 1);
      if (!nw_parameters_get_logging_disabled(v12[7]) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v93 = gconnection_groupLogObj;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          v94 = v108[22].isa;
          *v147 = 136446978;
          *&v147[4] = "nw_connection_group_create_connection_for_endpoint_and_parameters";
          *&v147[12] = 1024;
          *&v147[14] = v94;
          *&v147[18] = 2112;
          *&v147[20] = v107;
          *&v147[28] = 2112;
          *&v147[30] = v32;
          _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Creating connection for endpoint (%@) and parameters (%@)", v147, 0x26u);
        }
      }

      v33 = v13[8].isa;
      if (v33 && (v34 = v33, v35 = *(v34 + 2) == 2, v34, v35))
      {
        v36 = nw_connection_create_with_connection(v106, v32);
      }

      else
      {
        v36 = nw_connection_create_without_parameters_copy(v107, v32);
      }

      v42 = *(*&v149[8] + 40);
      *(*&v149[8] + 40) = v36;

      if (*(*&v149[8] + 40))
      {
        *v147 = MEMORY[0x1E69E9820];
        *&v147[8] = 3221225472;
        *&v147[16] = ___ZL65nw_connection_group_create_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS3_PU33objcproto22OS_nw_protocol_optionsS3_b_block_invoke;
        *&v147[24] = &unk_1E6A3D738;
        *&v147[32] = v108;
        v148 = v149;
        v43 = _Block_copy(v147);
        os_unfair_lock_lock(&v19[22].isa + 1);
        v43[2](v43);
        os_unfair_lock_unlock(&v19[22].isa + 1);

        v44 = *&v147[32];
      }

      else
      {
        if (nw_parameters_get_logging_disabled(v12[7]))
        {
          goto LABEL_47;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v44 = gconnection_groupLogObj;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v48 = v108[22].isa;
          v49 = v12[7];
          *v147 = 136446722;
          *&v147[4] = "nw_connection_group_create_connection_for_endpoint_and_parameters";
          *&v147[12] = 1024;
          *&v147[14] = v48;
          *&v147[18] = 2112;
          *&v147[20] = v49;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to create connection with parameters %@", v147, 0x1Cu);
        }
      }

LABEL_47:
      v50 = *(*&v149[8] + 40);

      _Block_object_dispose(v149, 8);
      v51 = v131[5];
      v131[5] = v50;

      if (v131[5])
      {
        *v147 = 0;
        *&v147[8] = v147;
        *&v147[16] = 0x2020000000;
        v147[24] = 0;
        *v149 = MEMORY[0x1E69E9820];
        *&v149[8] = 3221225472;
        *&v149[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke_138;
        *&v149[24] = &unk_1E6A3D738;
        v150 = v147;
        v52 = v108;
        *&v149[32] = v52;
        v53 = _Block_copy(v149);
        os_unfair_lock_lock(&v19[22].isa + 1);
        v53[2](v53);
        os_unfair_lock_unlock(&v19[22].isa + 1);

        if (*(*&v147[8] + 24) == 1)
        {
          nw_connection_start(v131[5]);
        }

        else if (!nw_parameters_get_logging_disabled(v12[7]))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v54 = gconnection_groupLogObj;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = v52[22].isa;
            v56 = v131[5];
            *v136 = 136446722;
            v137 = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
            v138 = 1024;
            v139 = v55;
            v140 = 2112;
            v141 = v56;
            _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Deferring start of connection %@ until group start", v136, 0x1Cu);
          }
        }

        _Block_object_dispose(v147, 8);
      }

      goto LABEL_57;
    }

    v74 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
    v71 = _os_log_send_and_compose_impl();

    v149[0] = 16;
    v147[0] = 0;
    if (__nwlog_fault(v71, v149, v147))
    {
      if (v149[0] == 17)
      {
        v72 = __nwlog_obj();
        v75 = v149[0];
        if (os_log_type_enabled(v72, v149[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v72, v75, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_171:

        goto LABEL_172;
      }

      if (v147[0] != 1)
      {
        v72 = __nwlog_obj();
        v96 = v149[0];
        if (os_log_type_enabled(v72, v149[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v72, v96, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_171;
      }

      v86 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v87 = v149[0];
      v88 = os_log_type_enabled(v72, v149[0]);
      if (!v86)
      {
        if (v88)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v72, v87, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_171;
      }

      if (v88)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v86;
        _os_log_impl(&dword_181A37000, v72, v87, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v86);
    }

LABEL_172:
    if (!v71)
    {
LABEL_174:
      v26 = 0;
      goto LABEL_59;
    }

LABEL_173:
    free(v71);
    goto LABEL_174;
  }

  v97 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_send_message_internal";
  v39 = _os_log_send_and_compose_impl();

  v149[0] = 16;
  v147[0] = 0;
  if (__nwlog_fault(v39, v149, v147))
  {
    if (v149[0] == 17)
    {
      v40 = __nwlog_obj();
      v98 = v149[0];
      if (os_log_type_enabled(v40, v149[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message_internal";
        _os_log_impl(&dword_181A37000, v40, v98, "%{public}s called with null endpoint", buf, 0xCu);
      }

LABEL_70:

      goto LABEL_71;
    }

    if (v147[0] != 1)
    {
      v40 = __nwlog_obj();
      v104 = v149[0];
      if (os_log_type_enabled(v40, v149[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message_internal";
        _os_log_impl(&dword_181A37000, v40, v104, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_70;
    }

    v101 = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v102 = v149[0];
    v103 = os_log_type_enabled(v40, v149[0]);
    if (!v101)
    {
      if (v103)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_send_message_internal";
        _os_log_impl(&dword_181A37000, v40, v102, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v103)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_send_message_internal";
      *&buf[12] = 2082;
      *&buf[14] = v101;
      _os_log_impl(&dword_181A37000, v40, v102, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v101);
  }

LABEL_71:
  if (v39)
  {
LABEL_72:
    free(v39);
  }

LABEL_73:
  v10 = 0;
LABEL_74:

LABEL_75:
}

void ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_2;
  aBlock[3] = &unk_1E6A3D908;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = a2;
  v5 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 45);
  v5[2](v5);
  os_unfair_lock_unlock(v4 + 45);
}

uint64_t nw_connection_group_get_port(void *a1)
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
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_get_port_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v15 = v1;
    v16 = buf;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 45);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 45);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_get_port";
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
        *&buf[4] = "nw_connection_group_get_port";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null group", buf, 0xCu);
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
          *&buf[4] = "nw_connection_group_get_port";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_get_port";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_get_port";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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

void sub_1823D212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_157(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_2_158;
    block[3] = &unk_1E6A3CE48;
    v7 = *(a1 + 40);
    v4 = v2;
    v5 = dispatch_block_create_with_qos_class(0, v3, 0, block);
    dispatch_async(v4, v5);
  }
}

void ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_159(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9201;
  v33 = __Block_byref_object_dispose__9202;
  v34 = 0;
  v4 = *(a1 + 32);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_2_160;
  aBlock[3] = &unk_1E6A3D738;
  v28 = &v29;
  v27 = v4;
  v5 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 45);
  v5[2](v5);
  os_unfair_lock_unlock(v4 + 45);

  if (v30[5])
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v14 = gconnection_groupLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 40);
        v16 = *(*(a1 + 32) + 176);
        *buf = 136446978;
        v36 = "nw_connection_group_send_message_internal_block_invoke";
        v37 = 1024;
        *v38 = v16;
        *&v38[4] = 2112;
        *&v38[6] = v15;
        v39 = 2112;
        v40 = v3;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Connection Group send to complete for connection (%@) with error: %@", buf, 0x26u);
      }
    }

    v6 = v30[5];
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_161;
    block[3] = &unk_1E6A3D710;
    v23 = *(a1 + 48);
    v22 = v3;
    v8 = v6;
    v9 = dispatch_block_create_with_qos_class(0, v7, 0, block);
    dispatch_async(v8, v9);

    goto LABEL_5;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_connection_group_send_message_internal_block_invoke";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v11, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_connection_group_send_message_internal_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null client_queue", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v36 = "nw_connection_group_send_message_internal_block_invoke";
          v37 = 2082;
          *v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v18, "%{public}s called with null client_queue, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v19)
      {
        *buf = 136446210;
        v36 = "nw_connection_group_send_message_internal_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v18, "%{public}s called with null client_queue, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_connection_group_send_message_internal_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null client_queue, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v11)
  {
    free(v11);
  }

LABEL_5:

  _Block_object_dispose(&v29, 8);
}

void sub_1823D273C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_2_158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
  (*(v1 + 16))(v1);
}

void __nw_connection_group_get_port_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    if ((*(v2 + 198) & 0x20) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = nw_listener_get_port(v3);
      if (nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
      {
        return;
      }

      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v4 = gconnection_groupLogObj;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      v5 = *(*(a1 + 32) + 176);
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v12 = 136446722;
      v13 = "nw_connection_group_get_port_block_invoke";
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      v7 = "%{public}s [G%u] using unicast_listener port=%d";
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if ((*(v2 + 198) & 0x10) == 0)
  {
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = *(v2 + 196);
    if (nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      return;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v4 = gconnection_groupLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    v8 = *(*(a1 + 32) + 176);
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v12 = 136446722;
    v13 = "nw_connection_group_get_port_block_invoke";
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v7 = "%{public}s [G%u] using initial port=%d";
    goto LABEL_19;
  }

  *(*(*(a1 + 40) + 8) + 24) = nw_listener_get_port(*(v2 + 96));
  if (nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    return;
  }

  if (__nwlog_connection_group_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
  }

  v4 = gconnection_groupLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(*(a1 + 32) + 176);
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = 136446722;
    v13 = "nw_connection_group_get_port_block_invoke";
    v14 = 1024;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    v7 = "%{public}s [G%u] using listener port=%d";
LABEL_19:
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, v7, &v12, 0x18u);
  }

LABEL_20:
}

void ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_3;
    v7[3] = &unk_1E6A3CEC0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v5 = v2;
    v6 = dispatch_block_create_with_qos_class(0, v3, 0, v7);
    dispatch_async(v5, v6);
  }
}

void ___ZL41nw_connection_group_send_message_internalP30NWConcrete_nw_connection_groupPU27objcproto16OS_dispatch_data8NSObjectPU25objcproto14OS_nw_endpointS1_PU32objcproto21OS_nw_content_contextS1_U13block_pointerFvPU22objcproto11OS_nw_errorS1_E_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  posix_error = nw_error_create_posix_error(*(a1 + 40));
  (*(v1 + 16))(v1);
}

uint64_t nw_connection_group_get_type(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_connection_group_get_type";
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
          v18 = "nw_connection_group_get_type";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null group", buf, 0xCu);
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
            v18 = "nw_connection_group_get_type";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_connection_group_get_type";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_connection_group_get_type";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_22;
  }

  v3 = *(v1 + 8);
  if (!v3)
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v4 = v3;
  v5 = v4[2];

LABEL_23:
  return v5;
}

id nw_connection_group_copy_connection_for_message(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = nw_content_context_copy_connection(v4);
  if (v5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL47nw_connection_group_copy_connection_for_messageP30NWConcrete_nw_connection_groupPU32objcproto21OS_nw_content_context8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A3BE58;
    v18 = buf;
    v6 = v3;
    v16 = v6;
    v7 = v5;
    v17 = v7;
    v8 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 45);
    v8[2](v8);
    os_unfair_lock_unlock(v3 + 45);

    if (*(*&buf[8] + 24))
    {
      v9 = v7;
    }

    else
    {
      if (!nw_parameters_get_logging_disabled(v6[7]))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v12 = gconnection_groupLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v6 + 44);
          *v19 = 136446722;
          v20 = "nw_connection_group_copy_connection_for_message";
          v21 = 1024;
          v22 = v13;
          v23 = 2112;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Context %@ is not a valid inbound message received from this group", v19, 0x1Cu);
        }
      }

      v9 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (!nw_parameters_get_logging_disabled(*(v3 + 7)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v10 = gconnection_groupLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v3 + 44);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_copy_connection_for_message";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        *&buf[18] = 2112;
        *&buf[20] = v4;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Context %@ is not a valid inbound message", buf, 0x1Cu);
      }
    }

    v9 = 0;
  }

  return v9;
}

void sub_1823D3188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL47nw_connection_group_copy_connection_for_messageP30NWConcrete_nw_connection_groupPU32objcproto21OS_nw_content_context8NSObject_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      *type = 0;
      v22 = type;
      v23 = 0x2020000000;
      v24 = 0;
      v6 = v3[14];
      if (v6)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL41nw_connection_group_has_connection_lockedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
        v27 = &unk_1E6A3BB28;
        v28 = v4;
        v29 = type;
        _nw_array_apply(v6, buf);

        v7 = *(v22 + 24);
      }

      else
      {
        v7 = 0;
      }

      _Block_object_dispose(type, 8);
      goto LABEL_7;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_has_connection_locked";
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, type, &v25))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_has_connection_locked";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null connection", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_has_connection_locked";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type[0];
      v18 = os_log_type_enabled(v10, type[0]);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_has_connection_locked";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_has_connection_locked";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_has_connection_locked";
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, type, &v25))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_has_connection_locked";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null group", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_has_connection_locked";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type[0];
      v16 = os_log_type_enabled(v10, type[0]);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_has_connection_locked";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_has_connection_locked";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }
  }

LABEL_40:
  if (v9)
  {
    free(v9);
  }

  v7 = 0;
LABEL_7:

  *(*(*(a1 + 48) + 8) + 24) = v7 & 1;
}

void sub_1823D3748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a14, 8);

  _Unwind_Resume(a1);
}

BOOL ___ZL41nw_connection_group_has_connection_lockedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v3 != a3;
}

nw_protocol_metadata_t nw_connection_group_copy_protocol_metadata(nw_connection_group_t group, nw_protocol_definition_t definition)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = definition;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = __Block_byref_object_copy__9201;
      v30 = __Block_byref_object_dispose__9202;
      v31 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_connection_group_copy_protocol_metadata_block_invoke;
      aBlock[3] = &unk_1E6A3BE58;
      v23 = v3;
      v25 = buf;
      v24 = v5;
      v6 = _Block_copy(aBlock);
      os_unfair_lock_lock(&v3[22].isa + 1);
      v6[2](v6);
      os_unfair_lock_unlock(&v3[22].isa + 1);

      v7 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_copy_protocol_metadata";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v10, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null definition", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v26 != 1)
      {
        v11 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_connection_group_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v19)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_copy_protocol_metadata";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_copy_protocol_metadata";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v10, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null group", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v26 != 1)
      {
        v11 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_connection_group_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v17)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_copy_protocol_metadata";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

void sub_1823D3D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_copy_protocol_metadata_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_connection_group_copy_protocol_metadata_block_invoke_2;
  aBlock[3] = &unk_1E6A3BB28;
  v3 = *(a1 + 40);
  v2 = v3;
  *v5 = v3;
  if (v1)
  {
    _nw_array_apply(v1, aBlock);
    v2 = v5[0];
  }
}

BOOL __nw_connection_group_copy_protocol_metadata_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_connection_copy_protocol_metadata_internal(v4, *(a1 + 32), 1);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40) == 0;
  return v8;
}

nw_connection_t nw_connection_group_extract_connection(nw_connection_group_t group, nw_endpoint_t endpoint, nw_protocol_options_t protocol_options)
{
  v143 = *MEMORY[0x1E69E9840];
  v5 = group;
  v6 = endpoint;
  v7 = protocol_options;
  v8 = v7;
  v110 = v6;
  if (!v5)
  {
    v58 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_connection_group_extract_connection";
    v59 = _os_log_send_and_compose_impl();

    iterate_block[0] = 16;
    LOBYTE(v122) = 0;
    if (__nwlog_fault(v59, iterate_block, &v122))
    {
      if (iterate_block[0] == 17)
      {
        v60 = __nwlog_obj();
        v61 = iterate_block[0];
        if (os_log_type_enabled(v60, iterate_block[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_connection_group_extract_connection";
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null group", aBlock, 0xCu);
        }
      }

      else if (v122 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v73 = iterate_block[0];
        v74 = os_log_type_enabled(v60, iterate_block[0]);
        if (backtrace_string)
        {
          if (v74)
          {
            *aBlock = 136446466;
            *&aBlock[4] = "nw_connection_group_extract_connection";
            *&aBlock[12] = 2082;
            *&aBlock[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v60, v73, "%{public}s called with null group, dumping backtrace:%{public}s", aBlock, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_149;
        }

        if (v74)
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_connection_group_extract_connection";
          _os_log_impl(&dword_181A37000, v60, v73, "%{public}s called with null group, no backtrace", aBlock, 0xCu);
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v85 = iterate_block[0];
        if (os_log_type_enabled(v60, iterate_block[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_connection_group_extract_connection";
          _os_log_impl(&dword_181A37000, v60, v85, "%{public}s called with null group, backtrace limit exceeded", aBlock, 0xCu);
        }
      }
    }

LABEL_149:
    if (v59)
    {
      free(v59);
    }

    goto LABEL_151;
  }

  v109 = v7;
  if (SBYTE6(v5[24].isa) < 0 || SLODWORD(v5[5].isa) >= 3)
  {
    if (!nw_parameters_get_logging_disabled(v5[7].isa))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v62 = gconnection_groupLogObj;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        isa = v5[22].isa;
        *aBlock = 136446466;
        *&aBlock[4] = "nw_connection_group_extract_connection";
        *&aBlock[12] = 1024;
        *&aBlock[14] = isa;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot extract a connection from a failed or cancelled group", aBlock, 0x12u);
      }
    }

LABEL_151:
    v18 = 0;
    goto LABEL_78;
  }

  if (v6)
  {
    v9 = v6;
    v10 = _nw_endpoint_copy(v9);
  }

  else
  {
    v10 = nw_group_descriptor_copy_member(v5[8].isa);
  }

  if (nw_endpoint_get_type(v10) == nw_endpoint_type_url)
  {
    v11 = nw_endpoint_copy_host_port_endpoint_for_url(v10);

    v10 = v11;
  }

  v12 = _nw_parameters_copy(v5[7].isa);
  v13 = v5;
  v14 = v10;
  v15 = v12;
  v111 = v8;
  if (!v14)
  {
    v64 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
    v65 = _os_log_send_and_compose_impl();

    iterate_block[0] = 16;
    LOBYTE(v122) = 0;
    if (!__nwlog_fault(v65, iterate_block, &v122))
    {
      goto LABEL_158;
    }

    if (iterate_block[0] == 17)
    {
      v66 = __nwlog_obj();
      v67 = iterate_block[0];
      if (os_log_type_enabled(v66, iterate_block[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null remote_endpoint", aBlock, 0xCu);
      }
    }

    else if (v122 == 1)
    {
      v75 = __nw_create_backtrace_string();
      v66 = __nwlog_obj();
      v76 = iterate_block[0];
      v77 = os_log_type_enabled(v66, iterate_block[0]);
      if (v75)
      {
        if (v77)
        {
          *aBlock = 136446466;
          *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v75;
          _os_log_impl(&dword_181A37000, v66, v76, "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(v75);
        if (!v65)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      }

      if (v77)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v66, v76, "%{public}s called with null remote_endpoint, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v66 = __nwlog_obj();
      v86 = iterate_block[0];
      if (os_log_type_enabled(v66, iterate_block[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v66, v86, "%{public}s called with null remote_endpoint, backtrace limit exceeded", aBlock, 0xCu);
      }
    }

    goto LABEL_157;
  }

  if (v15)
  {
    v116 = 0;
    v117 = &v116;
    v118 = 0x3032000000;
    v119 = __Block_byref_object_copy__9201;
    v120 = __Block_byref_object_dispose__9202;
    v121 = 0;
    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    v115 = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke;
    *&aBlock[24] = &unk_1E6A2CB10;
    v16 = v13;
    *&aBlock[32] = v16;
    v132 = &v112;
    v107 = v15;
    v130 = v107;
    v108 = v14;
    v131 = v108;
    v133 = &v116;
    v17 = _Block_copy(aBlock);
    os_unfair_lock_lock(v13 + 45);
    v17[2](v17);
    os_unfair_lock_unlock(v13 + 45);

    if (v113[3])
    {
      v18 = 0;
LABEL_58:

      _Block_object_dispose(&v112, 8);
      _Block_object_dispose(&v116, 8);

      goto LABEL_59;
    }

    if (v117[5])
    {
      v19 = *&v16[16]._os_unfair_lock_opaque;
      if (!v19 || (v20 = v19, v21 = v20[2] == 2, v20, !v21))
      {
LABEL_57:
        v18 = v117[5];
        goto LABEL_58;
      }
    }

    if (!nw_parameters_get_logging_disabled(v5[7].isa) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v81 = gconnection_groupLogObj;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        os_unfair_lock_opaque = v16[44]._os_unfair_lock_opaque;
        *iterate_block = 136446978;
        *&iterate_block[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        *&iterate_block[12] = 1024;
        *&iterate_block[14] = os_unfair_lock_opaque;
        *&iterate_block[18] = 2112;
        *&iterate_block[20] = v108;
        *&iterate_block[28] = 2112;
        *&iterate_block[30] = v107;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Did not find connection for (remote: %@, parameters: %@), creating new connection", iterate_block, 0x26u);
      }
    }

    v22 = v117[5];
    v106 = v16;
    v102 = v22;
    v103 = v108;
    v23 = v107;
    v105 = v111;
    v122 = 0;
    v123 = &v122;
    v124 = 0x3032000000;
    v125 = __Block_byref_object_copy__9201;
    v126 = __Block_byref_object_dispose__9202;
    v127 = 0;
    v101 = v23;
    v24 = _nw_parameters_copy(v23);
    v104 = v24;
    nw_parameters_set_reuse_local_address(v24, 1);
    if (!nw_parameters_get_logging_disabled(v5[7].isa) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v83 = gconnection_groupLogObj;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v84 = v106[44]._os_unfair_lock_opaque;
        *iterate_block = 136446978;
        *&iterate_block[4] = "nw_connection_group_create_connection_for_endpoint_and_parameters";
        *&iterate_block[12] = 1024;
        *&iterate_block[14] = v84;
        *&iterate_block[18] = 2112;
        *&iterate_block[20] = v103;
        *&iterate_block[28] = 2112;
        *&iterate_block[30] = v24;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Creating connection for endpoint (%@) and parameters (%@)", iterate_block, 0x26u);
      }

      if (!v105)
      {
        goto LABEL_35;
      }
    }

    else if (!v105)
    {
      goto LABEL_35;
    }

    v100 = v106;
    v25 = v24;
    v26 = v105;
    v27 = v26;
    if (v25)
    {
      v98 = v25;
      v97 = _nw_parameters_copy_default_protocol_stack(v25);
      v28 = _nw_protocol_options_copy_definition(v27);
      *v142 = 0;
      *&v142[8] = v142;
      *&v142[16] = 0x2020000000;
      v142[24] = 0;
      *iterate_block = MEMORY[0x1E69E9820];
      *&iterate_block[8] = 3221225472;
      *&iterate_block[16] = ___ZL37nw_connection_group_modify_parametersP30NWConcrete_nw_connection_groupPU27objcproto16OS_nw_parameters8NSObjectPU33objcproto22OS_nw_protocol_optionsS1__block_invoke;
      *&iterate_block[24] = &unk_1E6A2CB38;
      v141 = v142;
      v29 = v28;
      *&iterate_block[32] = v29;
      v30 = v97;
      v139 = v30;
      v31 = v27;
      v140 = v31;
      nw_protocol_stack_iterate_application_protocols(v30, iterate_block);
      if (*(*&v142[8] + 24))
      {
        v32 = 1;
      }

      else
      {
        v96 = nw_protocol_stack_copy_transport_protocol(v30);
        v33 = nw_protocol_options_copy_definition(v96);
        if (nw_protocol_definition_is_equal_unsafe(v33, v29))
        {
          nw_protocol_stack_set_transport_protocol(v30, v31);
          *(*&v142[8] + 24) = 1;
        }

        else if ((*(*&v142[8] + 24) & 1) == 0 && !nw_parameters_get_logging_disabled(v5[7].isa))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v34 = gconnection_groupLogObj;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = v100[44]._os_unfair_lock_opaque;
            *buf = 136446466;
            v135 = "nw_connection_group_modify_parameters";
            v136 = 1024;
            v137 = v35;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s [G%u] Failed to find matching protocol definition", buf, 0x12u);
          }
        }

        v32 = *(*&v142[8] + 24);
      }

      _Block_object_dispose(v142, 8);
      v24 = v104;
      if ((v32 & 1) == 0)
      {
        v43 = 0;
        goto LABEL_49;
      }

LABEL_35:
      v36 = *&v106[16]._os_unfair_lock_opaque;
      if (v36 && (v37 = v36, v38 = v37[2] == 2, v37, v24 = v104, v38))
      {
        v39 = nw_connection_create_with_connection(v102, v104);
      }

      else
      {
        v39 = nw_connection_create_without_parameters_copy(v103, v24);
      }

      v40 = v123[5];
      v123[5] = v39;

      if (v123[5])
      {
        *iterate_block = MEMORY[0x1E69E9820];
        *&iterate_block[8] = 3221225472;
        *&iterate_block[16] = ___ZL65nw_connection_group_create_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS3_PU33objcproto22OS_nw_protocol_optionsS3_b_block_invoke_2;
        *&iterate_block[24] = &unk_1E6A3D738;
        v139 = &v122;
        *&iterate_block[32] = v106;
        v41 = _Block_copy(iterate_block);
        os_unfair_lock_lock(v13 + 45);
        v41[2](v41);
        os_unfair_lock_unlock(v13 + 45);

        v42 = *&iterate_block[32];
      }

      else
      {
        v24 = v104;
        if (nw_parameters_get_logging_disabled(v5[7].isa))
        {
LABEL_48:
          v43 = v123[5];
LABEL_49:

          _Block_object_dispose(&v122, 8);
          v46 = v117[5];
          v117[5] = v43;

          if (v117[5])
          {
            v122 = 0;
            v123 = &v122;
            v124 = 0x2020000000;
            LOBYTE(v125) = 0;
            *iterate_block = MEMORY[0x1E69E9820];
            *&iterate_block[8] = 3221225472;
            *&iterate_block[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke_138;
            *&iterate_block[24] = &unk_1E6A3D738;
            v139 = &v122;
            v47 = v106;
            *&iterate_block[32] = v47;
            v48 = _Block_copy(iterate_block);
            os_unfair_lock_lock(v13 + 45);
            v48[2](v48);
            os_unfair_lock_unlock(v13 + 45);

            if (!nw_parameters_get_logging_disabled(v5[7].isa))
            {
              if (__nwlog_connection_group_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
              }

              v49 = gconnection_groupLogObj;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                v50 = v47[44]._os_unfair_lock_opaque;
                v51 = v117[5];
                *v142 = 136446722;
                *&v142[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
                *&v142[12] = 1024;
                *&v142[14] = v50;
                *&v142[18] = 2112;
                *&v142[20] = v51;
                _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Deferring start of connection %@ until group start", v142, 0x1Cu);
              }
            }

            _Block_object_dispose(&v122, 8);
          }

          goto LABEL_57;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v42 = gconnection_groupLogObj;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v44 = v106[44]._os_unfair_lock_opaque;
          v45 = v5[7].isa;
          *iterate_block = 136446722;
          *&iterate_block[4] = "nw_connection_group_create_connection_for_endpoint_and_parameters";
          *&iterate_block[12] = 1024;
          *&iterate_block[14] = v44;
          *&iterate_block[18] = 2112;
          *&iterate_block[20] = v45;
          _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to create connection with parameters %@", iterate_block, 0x1Cu);
        }
      }

      v24 = v104;
      goto LABEL_48;
    }

    v99 = v26;
    v88 = __nwlog_obj();
    *v142 = 136446210;
    *&v142[4] = "nw_connection_group_modify_parameters";
    v89 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v128 = 0;
    if (__nwlog_fault(v89, buf, &v128))
    {
      if (buf[0] == 17)
      {
        v90 = __nwlog_obj();
        v91 = buf[0];
        if (os_log_type_enabled(v90, buf[0]))
        {
          *v142 = 136446210;
          *&v142[4] = "nw_connection_group_modify_parameters";
          _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null parameters", v142, 0xCu);
        }
      }

      else if (v128 == 1)
      {
        v92 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v93 = buf[0];
        v94 = os_log_type_enabled(v90, buf[0]);
        if (v92)
        {
          if (v94)
          {
            *v142 = 136446466;
            *&v142[4] = "nw_connection_group_modify_parameters";
            *&v142[12] = 2082;
            *&v142[14] = v92;
            _os_log_impl(&dword_181A37000, v90, v93, "%{public}s called with null parameters, dumping backtrace:%{public}s", v142, 0x16u);
          }

          free(v92);
          goto LABEL_172;
        }

        if (v94)
        {
          *v142 = 136446210;
          *&v142[4] = "nw_connection_group_modify_parameters";
          _os_log_impl(&dword_181A37000, v90, v93, "%{public}s called with null parameters, no backtrace", v142, 0xCu);
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v95 = buf[0];
        if (os_log_type_enabled(v90, buf[0]))
        {
          *v142 = 136446210;
          *&v142[4] = "nw_connection_group_modify_parameters";
          _os_log_impl(&dword_181A37000, v90, v95, "%{public}s called with null parameters, backtrace limit exceeded", v142, 0xCu);
        }
      }
    }

LABEL_172:
    if (v89)
    {
      free(v89);
    }

    v43 = 0;
    v24 = v104;
    goto LABEL_49;
  }

  v68 = __nwlog_obj();
  *aBlock = 136446210;
  *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
  v65 = _os_log_send_and_compose_impl();

  iterate_block[0] = 16;
  LOBYTE(v122) = 0;
  if (__nwlog_fault(v65, iterate_block, &v122))
  {
    if (iterate_block[0] == 17)
    {
      v66 = __nwlog_obj();
      v69 = iterate_block[0];
      if (os_log_type_enabled(v66, iterate_block[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v66, v69, "%{public}s called with null parameters", aBlock, 0xCu);
      }

LABEL_157:

      goto LABEL_158;
    }

    if (v122 != 1)
    {
      v66 = __nwlog_obj();
      v87 = iterate_block[0];
      if (os_log_type_enabled(v66, iterate_block[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v66, v87, "%{public}s called with null parameters, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_157;
    }

    v78 = __nw_create_backtrace_string();
    v66 = __nwlog_obj();
    v79 = iterate_block[0];
    v80 = os_log_type_enabled(v66, iterate_block[0]);
    if (!v78)
    {
      if (v80)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v66, v79, "%{public}s called with null parameters, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_157;
    }

    if (v80)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
      *&aBlock[12] = 2082;
      *&aBlock[14] = v78;
      _os_log_impl(&dword_181A37000, v66, v79, "%{public}s called with null parameters, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

    free(v78);
  }

LABEL_158:
  if (v65)
  {
LABEL_159:
    free(v65);
  }

LABEL_160:
  v18 = 0;
LABEL_59:

  if (!nw_parameters_get_logging_disabled(v5[7].isa) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v70 = gconnection_groupLogObj;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v71 = v13[44]._os_unfair_lock_opaque;
      *aBlock = 136447234;
      *&aBlock[4] = "nw_connection_group_extract_connection";
      *&aBlock[12] = 1024;
      *&aBlock[14] = v71;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v14;
      *&aBlock[28] = 2112;
      *&aBlock[30] = v15;
      *&aBlock[38] = 2112;
      v130 = v18;
      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Got connection for endpoint (%@) and parameters (%@): %@", aBlock, 0x30u);
    }
  }

  if (v18)
  {
    v52 = v18;
    *iterate_block = 0;
    *&iterate_block[8] = iterate_block;
    *&iterate_block[16] = 0x2020000000;
    iterate_block[24] = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = __nw_connection_is_cancelled_or_failed_block_invoke;
    *&aBlock[24] = &unk_1E6A3D738;
    v130 = iterate_block;
    v18 = v52;
    *&aBlock[32] = v18;
    os_unfair_lock_lock(v52 + 34);
    (*&aBlock[16])(aBlock);
    os_unfair_lock_unlock(v52 + 34);
    LODWORD(v52) = *(*&iterate_block[8] + 24);

    _Block_object_dispose(iterate_block, 8);
    if (v52)
    {
      if (!nw_parameters_get_logging_disabled(v5[7].isa))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v53 = gconnection_groupLogObj;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = v13[44]._os_unfair_lock_opaque;
          *aBlock = 136446722;
          *&aBlock[4] = "nw_connection_group_extract_connection";
          *&aBlock[12] = 1024;
          *&aBlock[14] = v54;
          *&aBlock[18] = 2112;
          *&aBlock[20] = v18;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Connection %@ already cancelled or failed", aBlock, 0x1Cu);
        }
      }

      v18 = 0;
    }

    else
    {
      nw_connection_reset_client(v18);
    }
  }

  if (!nw_parameters_get_logging_disabled(v5[7].isa))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v55 = gconnection_groupLogObj;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v56 = v13[44]._os_unfair_lock_opaque;
      *aBlock = 136446722;
      *&aBlock[4] = "nw_connection_group_extract_connection";
      *&aBlock[12] = 1024;
      *&aBlock[14] = v56;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v18;
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] returning connection %@", aBlock, 0x1Cu);
    }
  }

  v8 = v109;
LABEL_78:

  return v18;
}

uint64_t ___ZL37nw_connection_group_modify_parametersP30NWConcrete_nw_connection_groupPU27objcproto16OS_nw_parameters8NSObjectPU33objcproto22OS_nw_protocol_optionsS1__block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_protocol_options_copy_definition(options);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v5 = v3;
    if (nw_protocol_definition_is_equal_unsafe(v3, *(a1 + 32)))
    {
      nw_protocol_stack_replace_protocol(*(a1 + 40), v5, *(a1 + 48));
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  return MEMORY[0x1EEE66C30]();
}

nw_connection_t nw_connection_group_extract_connection_for_message(nw_connection_group_t group, nw_content_context_t context)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = context;
  v5 = v4;
  if (!v3)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_extract_connection_for_message";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault(v22, type, &v46))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v30 = type[0];
      v31 = os_log_type_enabled(v23, type[0]);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_extract_connection_for_message";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_70:
        if (!v22)
        {
LABEL_72:
          v19 = 0;
          goto LABEL_30;
        }

LABEL_71:
        free(v22);
        goto LABEL_72;
      }

      if (v31)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        _os_log_impl(&dword_181A37000, v23, v35, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_69:

    goto LABEL_70;
  }

  if (!v4)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_extract_connection_for_message";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault(v22, type, &v46))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v26 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v33 = type[0];
      v34 = os_log_type_enabled(v23, type[0]);
      if (v32)
      {
        if (v34)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_extract_connection_for_message";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          _os_log_impl(&dword_181A37000, v23, v33, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        if (!v22)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      if (v34)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        _os_log_impl(&dword_181A37000, v23, v33, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        _os_log_impl(&dword_181A37000, v23, v36, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_69;
  }

  if (SBYTE6(v3[24].isa) < 0 || SLODWORD(v3[5].isa) >= 3)
  {
    if (!nw_parameters_get_logging_disabled(v3[7].isa))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v27 = gconnection_groupLogObj;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        isa = v3[22].isa;
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_extract_connection_for_message";
        *&buf[12] = 1024;
        *&buf[14] = isa;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot extract a connection from a failed or cancelled group", buf, 0x12u);
      }
    }

    goto LABEL_72;
  }

  *type = 0;
  v41 = type;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__9201;
  v44 = __Block_byref_object_dispose__9202;
  v45 = nw_content_context_copy_connection(v4);
  if (*(v41 + 5))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_extract_connection_for_message_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v38 = v3;
    v39 = type;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[22].isa + 1);
    v6[2](v6);
    os_unfair_lock_unlock(&v3[22].isa + 1);

    v7 = v38;
LABEL_12:

    goto LABEL_13;
  }

  if (!nw_parameters_get_logging_disabled(v3[7].isa))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v7 = gconnection_groupLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v3[22].isa;
      *buf = 136446722;
      *&buf[4] = "nw_connection_group_extract_connection_for_message";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [G%u] context %@ does not have connection, returning nil", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

LABEL_13:
  v9 = *(v41 + 5);
  if (v9)
  {
    v10 = v9;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_connection_is_cancelled_or_failed_block_invoke;
    *&buf[24] = &unk_1E6A3D738;
    v52 = &v46;
    v11 = v10;
    v51 = v11;
    os_unfair_lock_lock(v10 + 34);
    (*&buf[16])(buf);
    os_unfair_lock_unlock(v10 + 34);
    LODWORD(v10) = *(v47 + 24);

    _Block_object_dispose(&v46, 8);
    if (v10)
    {
      if (!nw_parameters_get_logging_disabled(v3[7].isa))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v12 = gconnection_groupLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v3[22].isa;
          v14 = *(v41 + 5);
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_extract_connection_for_message";
          *&buf[12] = 1024;
          *&buf[14] = v13;
          *&buf[18] = 2112;
          *&buf[20] = v14;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Connection %@ already cancelled or failed", buf, 0x1Cu);
        }
      }

      v15 = *(v41 + 5);
      *(v41 + 5) = 0;
    }

    else
    {
      nw_connection_reset_client(*(v41 + 5));
    }
  }

  if (!nw_parameters_get_logging_disabled(v3[7].isa))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v16 = gconnection_groupLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = v3[22].isa;
      v18 = *(v41 + 5);
      *buf = 136446722;
      *&buf[4] = "nw_connection_group_extract_connection_for_message";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      *&buf[18] = 2112;
      *&buf[20] = v18;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] returning connection %@", buf, 0x1Cu);
    }
  }

  v19 = *(v41 + 5);
  _Block_object_dispose(type, 8);

LABEL_30:
  return v19;
}

void __nw_connection_group_extract_connection_for_message_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (!v3)
  {
    v24 = __nwlog_obj();
    *v59 = 136446210;
    *&v59[4] = "nw_connection_group_has_connection_locked";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v25, &type, &v54))
    {
      goto LABEL_85;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *v59 = 136446210;
        *&v59[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null group", v59, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v26, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *v59 = 136446466;
          *&v59[4] = "nw_connection_group_has_connection_locked";
          *&v59[12] = 2082;
          *&v59[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null group, dumping backtrace:%{public}s", v59, 0x16u);
        }

        free(backtrace_string);
LABEL_85:
        if (!v25)
        {
LABEL_87:

          goto LABEL_18;
        }

LABEL_86:
        free(v25);
        goto LABEL_87;
      }

      if (v32)
      {
        *v59 = 136446210;
        *&v59[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null group, no backtrace", v59, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v26, type))
      {
        *v59 = 136446210;
        *&v59[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v26, v42, "%{public}s called with null group, backtrace limit exceeded", v59, 0xCu);
      }
    }

LABEL_84:

    goto LABEL_85;
  }

  if (!v4)
  {
    v28 = __nwlog_obj();
    *v59 = 136446210;
    *&v59[4] = "nw_connection_group_has_connection_locked";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v25, &type, &v54))
    {
      goto LABEL_85;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v26, type))
      {
        *v59 = 136446210;
        *&v59[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null connection", v59, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v26, type);
      if (v33)
      {
        if (v35)
        {
          *v59 = 136446466;
          *&v59[4] = "nw_connection_group_has_connection_locked";
          *&v59[12] = 2082;
          *&v59[14] = v33;
          _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null connection, dumping backtrace:%{public}s", v59, 0x16u);
        }

        free(v33);
        if (!v25)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if (v35)
      {
        *v59 = 136446210;
        *&v59[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null connection, no backtrace", v59, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v26, type))
      {
        *v59 = 136446210;
        *&v59[4] = "nw_connection_group_has_connection_locked";
        _os_log_impl(&dword_181A37000, v26, v43, "%{public}s called with null connection, backtrace limit exceeded", v59, 0xCu);
      }
    }

    goto LABEL_84;
  }

  *v59 = 0;
  *&v59[8] = v59;
  *&v59[16] = 0x2020000000;
  v60 = 0;
  v6 = v3[14];
  if (v6)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL41nw_connection_group_has_connection_lockedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
    *&buf[24] = &unk_1E6A3BB28;
    v7 = v4;
    v57 = v7;
    v58 = v59;
    _nw_array_apply(v6, buf);

    v8 = *(*&v59[8] + 24);
    _Block_object_dispose(v59, 8);

    if (v8)
    {
      if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v9 = gconnection_groupLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(*(a1 + 32) + 176);
          v11 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_extract_connection_for_message_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = v10;
          *&buf[18] = 2048;
          *&buf[20] = v11;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] has connection %p, removing from group and returning", buf, 0x1Cu);
        }
      }

      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v14 = v12;
      v15 = v13;
      v16 = v15;
      if (v14)
      {
        if (v15)
        {
          v17 = *(v14 + 14);
          if (v17)
          {
            v18 = v17;
            v19 = v16;
            _nw_array_remove_object(v18, v19);

            if (!nw_parameters_get_logging_disabled(*(v14 + 7)) && gLogDatapath == 1)
            {
              if (__nwlog_connection_group_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
              }

              v44 = gconnection_groupLogObj;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                v45 = *(v14 + 44);
                *buf = 136446722;
                *&buf[4] = "nw_connection_group_remove_connection_locked";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 2112;
                *&buf[20] = v19;
                _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] removed connection %@", buf, 0x1Cu);
              }
            }
          }

          goto LABEL_16;
        }

        v40 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_remove_connection_locked";
        v37 = _os_log_send_and_compose_impl();

        v59[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v37, v59, &type))
        {
          if (v59[0] == 17)
          {
            v38 = __nwlog_obj();
            v41 = v59[0];
            if (os_log_type_enabled(v38, v59[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_remove_connection_locked";
              _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null connection", buf, 0xCu);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            v49 = __nw_create_backtrace_string();
            v38 = __nwlog_obj();
            v50 = v59[0];
            v51 = os_log_type_enabled(v38, v59[0]);
            if (v49)
            {
              if (v51)
              {
                *buf = 136446466;
                *&buf[4] = "nw_connection_group_remove_connection_locked";
                *&buf[12] = 2082;
                *&buf[14] = v49;
                _os_log_impl(&dword_181A37000, v38, v50, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v49);
              if (!v37)
              {
                goto LABEL_16;
              }

              goto LABEL_101;
            }

            if (v51)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_remove_connection_locked";
              _os_log_impl(&dword_181A37000, v38, v50, "%{public}s called with null connection, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v38 = __nwlog_obj();
            v53 = v59[0];
            if (os_log_type_enabled(v38, v59[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_remove_connection_locked";
              _os_log_impl(&dword_181A37000, v38, v53, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
            }
          }

          goto LABEL_99;
        }

LABEL_100:
        if (!v37)
        {
LABEL_16:

          goto LABEL_25;
        }

LABEL_101:
        free(v37);
        goto LABEL_16;
      }

      v36 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_remove_connection_locked";
      v37 = _os_log_send_and_compose_impl();

      v59[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v37, v59, &type))
      {
        goto LABEL_100;
      }

      if (v59[0] == 17)
      {
        v38 = __nwlog_obj();
        v39 = v59[0];
        if (os_log_type_enabled(v38, v59[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_remove_connection_locked";
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null group", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v46 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v47 = v59[0];
        v48 = os_log_type_enabled(v38, v59[0]);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_remove_connection_locked";
            *&buf[12] = 2082;
            *&buf[14] = v46;
            _os_log_impl(&dword_181A37000, v38, v47, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_100;
        }

        if (v48)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_remove_connection_locked";
          _os_log_impl(&dword_181A37000, v38, v47, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v52 = v59[0];
        if (os_log_type_enabled(v38, v59[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_remove_connection_locked";
          _os_log_impl(&dword_181A37000, v38, v52, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_99:

      goto LABEL_100;
    }
  }

  else
  {
    _Block_object_dispose(v59, 8);
  }

LABEL_18:
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v20 = gconnection_groupLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(a1 + 32) + 176);
      v22 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136446722;
      *&buf[4] = "nw_connection_group_extract_connection_for_message_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      *&buf[18] = 2112;
      *&buf[20] = v22;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] did not find connection %@, returning error", buf, 0x1Cu);
    }
  }

  v23 = *(*(a1 + 40) + 8);
  v14 = *(v23 + 40);
  *(v23 + 40) = 0;
LABEL_25:
}

BOOL nw_connection_group_reinsert_extracted_connection(nw_connection_group_t group, nw_connection_t connection)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = connection;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v12)
        {
          goto LABEL_13;
        }

LABEL_55:
        free(v12);
        goto LABEL_13;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  if (!v4)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v13, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
          *&buf[12] = 2082;
          *&buf[14] = v21;
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v12)
        {
          goto LABEL_13;
        }

        goto LABEL_55;
      }

      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_53;
  }

  if (SBYTE6(v3[24].isa) < 0 || SLODWORD(v3[5].isa) >= 3)
  {
    if (nw_parameters_get_logging_disabled(v3[7].isa))
    {
      goto LABEL_13;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v8 = gconnection_groupLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      isa = v3[22].isa;
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
      *&buf[12] = 1024;
      *&buf[14] = isa;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot reinsert a connection into a failed or cancelled group", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (!v3[18].isa)
  {
    if (nw_parameters_get_logging_disabled(v3[7].isa))
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v8 = gconnection_groupLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = v3[22].isa;
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_reinsert_extracted_connection";
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] connection group does not have a receive handler, rejecting reinsertion", buf, 0x12u);
    }

LABEL_12:

    goto LABEL_13;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v33 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_connection_group_reinsert_extracted_connection_block_invoke;
  aBlock[3] = &unk_1E6A3BE58;
  v27 = v4;
  v28 = v3;
  v29 = buf;
  v6 = _Block_copy(aBlock);
  os_unfair_lock_lock(&v3[22].isa + 1);
  v6[2](v6);
  os_unfair_lock_unlock(&v3[22].isa + 1);

  v7 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_14:

  return v7 & 1;
}

void __nw_connection_group_reinsert_extracted_connection_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  nw_connection_get_group_uuid(*(a1 + 32), &v16);
  v2 = *(a1 + 40);
  if (*(v2 + 128) != v16 || *(v2 + 136) != v17)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + 112);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_18:
    nw_connection_reset_client(v4);
    nw_connection_group_add_connection_locked(*(a1 + 40), *(a1 + 32));
    nw_connection_start(*(a1 + 32));
    v9 = 1;
    goto LABEL_16;
  }

  if ((_nw_array_contains_object(v3, v4) & 1) == 0)
  {
    v4 = *(a1 + 32);
    goto LABEL_18;
  }

  v2 = *(a1 + 40);
LABEL_9:
  if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v6 = gconnection_groupLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(*(a1 + 40) + 176);
      v10 = 136446722;
      v11 = "nw_connection_group_reinsert_extracted_connection_block_invoke";
      v12 = 1024;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [G%u] connection %@ was not extracted from this group or was already reinserted, reinsertion failed", &v10, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_16:
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

uint64_t nw_connection_group_add_member(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_add_member";
    v14 = _os_log_send_and_compose_impl();

    v33 = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &v33, &v32))
    {
      goto LABEL_50;
    }

    if (v33 == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = v33;
      if (os_log_type_enabled(v15, v33))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_member";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = v33;
      v21 = os_log_type_enabled(v15, v33);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_add_member";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_50:
        if (!v14)
        {
LABEL_13:
          v11 = 0;
          goto LABEL_16;
        }

LABEL_51:
        free(v14);
        goto LABEL_13;
      }

      if (v21)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_member";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v25 = v33;
      if (os_log_type_enabled(v15, v33))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_member";
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  if (!v4)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_add_member";
    v14 = _os_log_send_and_compose_impl();

    v33 = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &v33, &v32))
    {
      goto LABEL_50;
    }

    if (v33 == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v18 = v33;
      if (os_log_type_enabled(v15, v33))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_member";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v23 = v33;
      v24 = os_log_type_enabled(v15, v33);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_add_member";
          *&buf[12] = 2082;
          *&buf[14] = v22;
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        if (!v14)
        {
          goto LABEL_13;
        }

        goto LABEL_51;
      }

      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_member";
        _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v26 = v33;
      if (os_log_type_enabled(v15, v33))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_member";
        _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_49;
  }

  if (!nw_group_descriptor_add_endpoint(*(v3 + 8), v4))
  {
    if (!nw_parameters_get_logging_disabled(*(v3 + 7)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v9 = gconnection_groupLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(v3 + 44);
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_add_member";
        *&buf[12] = 1024;
        *&buf[14] = v10;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Could not add endpoint to group", buf, 0x12u);
      }
    }

    goto LABEL_13;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v35 = 1;
  v6 = *(v3 + 9);
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_lock(v6 + 24);
    v8 = v7[6];
    os_unfair_lock_unlock(v6 + 24);

    if (v8)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __nw_connection_group_add_member_block_invoke;
      v27[3] = &unk_1E6A2CA70;
      v28 = v3;
      v29 = v5;
      v31 = buf;
      v8 = v8;
      v30 = v8;
      nw_path_enumerate_group_options(v8, v27);
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_16:

  return v11 & 1;
}

void sub_1823D7D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  _Block_object_dispose((v23 - 96), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_add_member_block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v4 = gconnection_groupLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 176);
      v10 = 136447234;
      v11 = "nw_connection_group_add_member_block_invoke";
      v12 = 1024;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      v16 = 1042;
      v17 = 16;
      v18 = 2098;
      v19 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [G%u] Adding member '%@' to Group Agent UUID=(%{public,uuid_t}.16P)", &v10, 0x2Cu);
    }
  }

  v7 = _nw_array_create();
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      _nw_array_append(v7, v9);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = nw_path_group_member_action(*(a1 + 48), a2, 133, v8);
}

void nw_connection_group_remove_member(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_connection_group_remove_member";
    v10 = _os_log_send_and_compose_impl();

    v28 = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &v28, &v27))
    {
      goto LABEL_42;
    }

    if (v28 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v28;
      if (os_log_type_enabled(v11, v28))
      {
        *buf = 136446210;
        v30 = "nw_connection_group_remove_member";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = v28;
      v17 = os_log_type_enabled(v11, v28);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v30 = "nw_connection_group_remove_member";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v10);
        goto LABEL_8;
      }

      if (v17)
      {
        *buf = 136446210;
        v30 = "nw_connection_group_remove_member";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = v28;
      if (os_log_type_enabled(v11, v28))
      {
        *buf = 136446210;
        v30 = "nw_connection_group_remove_member";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (v4)
  {
    nw_group_descriptor_remove_endpoint(*(v3 + 8), v4);
    v6 = *(v3 + 9);
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_lock(v6 + 24);
      v8 = v7[6];
      os_unfair_lock_unlock(v6 + 24);

      if (v8)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __nw_connection_group_remove_member_block_invoke;
        v23[3] = &unk_1E6A2CA98;
        v24 = v3;
        v25 = v5;
        v8 = v8;
        v26 = v8;
        nw_path_enumerate_group_options(v8, v23);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_8;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_connection_group_remove_member";
  v10 = _os_log_send_and_compose_impl();

  v28 = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v10, &v28, &v27))
  {
    goto LABEL_42;
  }

  if (v28 == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = v28;
    if (os_log_type_enabled(v11, v28))
    {
      *buf = 136446210;
      v30 = "nw_connection_group_remove_member";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null endpoint", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v27 != 1)
  {
    v11 = __nwlog_obj();
    v22 = v28;
    if (os_log_type_enabled(v11, v28))
    {
      *buf = 136446210;
      v30 = "nw_connection_group_remove_member";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = v28;
  v20 = os_log_type_enabled(v11, v28);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v30 = "nw_connection_group_remove_member";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v20)
  {
    *buf = 136446466;
    v30 = "nw_connection_group_remove_member";
    v31 = 2082;
    v32 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_43;
  }

LABEL_8:
}
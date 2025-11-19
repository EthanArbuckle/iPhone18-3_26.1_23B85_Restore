@interface NWAdvertiser
@end

@implementation NWAdvertiser

void __22___NWAdvertiser_start__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained[1] + 2);
    if (v6 && !_nw_parameters_get_logging_disabled(v6))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v7 = glistenerLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        id_string = nw_listener_get_id_string(v5[1]);
        v11 = 136446466;
        v12 = "[_NWAdvertiser start]_block_invoke";
        v13 = 2082;
        v14 = id_string;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Advertiser path update", &v11, 0x16u);
      }
    }

    v9 = v3;
    nw_context_assert_queue(*(v5[1] + 3));
    v10 = v5[1];
    if ((v10[32] - 1) <= 1 && (*(v10 + 310) & 1) == 0)
    {
      [(_NWAdvertiser *)v5 updateFlows:v9];
      [(_NWAdvertiser *)v5 reconcileChildren:v9];
    }
  }
}

void __21___NWAdvertiser_stop__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(*(a1[4] + 8) + 64));
  v2 = _Block_copy(*(*(a1[4] + 8) + 120));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[4] + 8) + 288);
  v6 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v6, v5);
}

uint64_t __29___NWAdvertiser_updateFlows___block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = nw_path_copy_flow_for_registration(*(a1 + 32), v5);
  v7 = v6;
  if (v6)
  {
    is_defunct = _nw_path_flow_is_defunct(v6);

    if (is_defunct)
    {
      nw_dictionary_set_value(*(a1 + 40), a2, v5);
    }
  }

  return 1;
}

uint64_t __29___NWAdvertiser_updateFlows___block_invoke_2(uint64_t a1, const char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 16);
  if (v6 && !_nw_parameters_get_logging_disabled(v6))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v7 = glistenerLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_listener_get_id_string(*(*(a1 + 32) + 8));
      v10 = 136446722;
      v11 = "[_NWAdvertiser updateFlows:]_block_invoke_2";
      v12 = 2082;
      v13 = id_string;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Removing defunct flow registration %{public}@", &v10, 0x20u);
    }
  }

  nw_path_flow_registration_close(v5);
  nw_dictionary_set_value(*(*(a1 + 32) + 56), a2, 0);

  return 1;
}

void __29___NWAdvertiser_updateFlows___block_invoke_5(uint64_t a1, unsigned __int8 *uu)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = nw_dictionary_copy_value(v5, out);
    if (v6)
    {
      goto LABEL_22;
    }

    v4 = *(a1 + 32);
  }

  flow_inner = nw_path_evaluator_create_flow_inner(*(v4 + 32), 0, 0, 1, 0, uu, 0, 0, 0, 0, 0);
  if (flow_inner)
  {
    v22 = 0uLL;
    v6 = flow_inner;
    if (!uuid_is_null(v6 + 32))
    {
      v22 = *(v6 + 2);
    }

    v8 = *(*(*(a1 + 32) + 8) + 16);
    if (v8 && !_nw_parameters_get_logging_disabled(v8))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v9 = glistenerLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        id_string = nw_listener_get_id_string(*(*(a1 + 32) + 8));
        *buf = 136446978;
        v15 = "[_NWAdvertiser updateFlows:]_block_invoke";
        v16 = 2082;
        v17 = id_string;
        v18 = 1042;
        v19 = 16;
        v20 = 2098;
        v21 = &v22;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Added listener flow ID %{public,uuid_t}.16P", buf, 0x26u);
      }
    }
  }

  else
  {
    v11 = *(*(*(a1 + 32) + 8) + 16);
    if (v11 && !_nw_parameters_get_logging_disabled(v11))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v12 = glistenerLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = nw_listener_get_id_string(*(*(a1 + 32) + 8));
        *buf = 136446466;
        v15 = "[_NWAdvertiser updateFlows:]_block_invoke";
        v16 = 2082;
        v17 = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Failed to add listener flow ID", buf, 0x16u);
      }
    }

    v6 = 0;
  }

LABEL_22:
  nw_dictionary_set_value(*(a1 + 40), out, v6);
}

@end
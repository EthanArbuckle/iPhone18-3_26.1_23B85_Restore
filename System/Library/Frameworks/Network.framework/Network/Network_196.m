void nw_http_retry_reissue(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a1 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 568);
        *buf = 136446978;
        *&buf[4] = "nw_http_retry_reissue";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 114;
        *&buf[22] = 2080;
        v63 = " ";
        *v64 = 1024;
        *&v64[2] = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sretrying, remaining limit %u", buf, 0x26u);
      }
    }

    v6 = *(a1 + 568);
    *(a1 + 568) = v6 - 1;
    if (v6)
    {
LABEL_23:
      *(a1 + 572) |= 8u;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v63 = __Block_byref_object_copy__44521;
      *v64 = __Block_byref_object_dispose__44522;
      parameters = nw_protocol_get_parameters(a1);
      if (parameters)
      {
        parameters = os_retain(parameters);
      }

      *&v64[8] = parameters;
      v64[16] |= 1u;
      if (*(a1 + 432) == 43)
      {
        v19 = *(a1 + 504);
        if (!v19 || (v59[0] = MEMORY[0x1E69E9820], v59[1] = 0x40000000, v59[2] = ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke, v59[3] = &__block_descriptor_tmp_19_44523, v59[4] = a1, ((*(v19 + 16))(v19, *(*&buf[8] + 40), v59) & 1) == 0))
        {
          nw_protocol_error(*(a1 + 48), a1);
          nw_protocol_disconnected(*(a1 + 48), a1);
        }

LABEL_39:
        *(a1 + 572) &= ~8u;
LABEL_40:
        _Block_object_dispose(buf, 8);
        if (v64[16])
        {
          if (*&v64[8])
          {
            os_release(*&v64[8]);
          }
        }

        return;
      }

      nw_http_messaging_options_create_transaction_in_parameters(*(*&buf[8] + 40), a1, 3);
      nw_protocol_plugin_metadata_prepare_for_reissue(a1 + 200, 0);
      v20 = *(a1 + 572);
      *type = 0;
      v53 = type;
      v54 = 0x3802000000;
      v55 = __Block_byref_object_copy__20;
      v56 = __Block_byref_object_dispose__21;
      v21 = nw_http_metadata_copy_request(a2);
      if (v21)
      {
        v22 = v21;
        v23 = _nw_http_fields_copy(v22);

        metadata_for_request = nw_http_create_metadata_for_request(v23);
        if (v23)
        {
          os_release(v23);
        }

        os_release(v22);
        goto LABEL_33;
      }

      __nwlog_obj();
      *v65 = 136446210;
      v66 = "nw_http_retry_copy_metadata";
      v32 = _os_log_send_and_compose_impl();
      v61 = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (__nwlog_fault(v32, &v61, &v60))
      {
        if (v61 == OS_LOG_TYPE_FAULT)
        {
          v33 = __nwlog_obj();
          v34 = v61;
          if (os_log_type_enabled(v33, v61))
          {
            *v65 = 136446210;
            v66 = "nw_http_retry_copy_metadata";
            v35 = "%{public}s called with null orig_request";
LABEL_84:
            _os_log_impl(&dword_181A37000, v33, v34, v35, v65, 0xCu);
          }
        }

        else if (v60 == 1)
        {
          v42 = v20;
          backtrace_string = __nw_create_backtrace_string();
          v33 = __nwlog_obj();
          v34 = v61;
          v44 = os_log_type_enabled(v33, v61);
          if (backtrace_string)
          {
            if (v44)
            {
              *v65 = 136446466;
              v66 = "nw_http_retry_copy_metadata";
              v67 = 2082;
              v68 = backtrace_string;
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null orig_request, dumping backtrace:%{public}s", v65, 0x16u);
            }

            free(backtrace_string);
            v20 = v42;
            goto LABEL_85;
          }

          v20 = v42;
          if (v44)
          {
            *v65 = 136446210;
            v66 = "nw_http_retry_copy_metadata";
            v35 = "%{public}s called with null orig_request, no backtrace";
            goto LABEL_84;
          }
        }

        else
        {
          v33 = __nwlog_obj();
          v34 = v61;
          if (os_log_type_enabled(v33, v61))
          {
            *v65 = 136446210;
            v66 = "nw_http_retry_copy_metadata";
            v35 = "%{public}s called with null orig_request, backtrace limit exceeded";
            goto LABEL_84;
          }
        }
      }

LABEL_85:
      if (v32)
      {
        free(v32);
      }

      metadata_for_request = 0;
LABEL_33:
      object = metadata_for_request;
      v58 |= 1u;
      v25 = *(v53 + 5);
      if (v25)
      {
        v26 = *(a1 + 552);
        v27 = *(a1 + 520);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 0x40000000;
        v50[2] = ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_22;
        v50[3] = &unk_1E6A33190;
        v50[4] = type;
        v51 = (v20 & 2) == 0;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 0x40000000;
        v48[2] = ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_3;
        v48[3] = &unk_1E6A331E0;
        v48[5] = type;
        v48[6] = a1;
        v49 = v51;
        v48[4] = buf;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 0x40000000;
        v47[2] = ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_5;
        v47[3] = &__block_descriptor_tmp_31_44536;
        v47[4] = a1;
        nw_protocol_plugin_retry_reissue_output_frames(a1 + 360, a1, v26, v27, 0, 2, 1, v50, v48, v47);
        goto LABEL_35;
      }

      __nwlog_obj();
      *v65 = 136446210;
      v66 = "nw_http_retry_reissue";
      v36 = _os_log_send_and_compose_impl();
      v61 = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (__nwlog_fault(v36, &v61, &v60))
      {
        if (v61 == OS_LOG_TYPE_FAULT)
        {
          v37 = __nwlog_obj();
          v38 = v61;
          if (!os_log_type_enabled(v37, v61))
          {
            goto LABEL_91;
          }

          *v65 = 136446210;
          v66 = "nw_http_retry_reissue";
          v39 = "%{public}s called with null request_metadata";
          goto LABEL_90;
        }

        if (v60 != 1)
        {
          v37 = __nwlog_obj();
          v38 = v61;
          if (!os_log_type_enabled(v37, v61))
          {
            goto LABEL_91;
          }

          *v65 = 136446210;
          v66 = "nw_http_retry_reissue";
          v39 = "%{public}s called with null request_metadata, backtrace limit exceeded";
          goto LABEL_90;
        }

        v45 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = v61;
        v46 = os_log_type_enabled(v37, v61);
        if (v45)
        {
          if (v46)
          {
            *v65 = 136446466;
            v66 = "nw_http_retry_reissue";
            v67 = 2082;
            v68 = v45;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null request_metadata, dumping backtrace:%{public}s", v65, 0x16u);
          }

          free(v45);
          goto LABEL_91;
        }

        if (v46)
        {
          *v65 = 136446210;
          v66 = "nw_http_retry_reissue";
          v39 = "%{public}s called with null request_metadata, no backtrace";
LABEL_90:
          _os_log_impl(&dword_181A37000, v37, v38, v39, v65, 0xCu);
        }
      }

LABEL_91:
      if (v36)
      {
        free(v36);
      }

LABEL_35:
      _Block_object_dispose(type, 8);
      if ((v58 & 1) != 0 && object)
      {
        os_release(object);
      }

      if (!v25)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = *(a1 + 568);
    *buf = 136446978;
    *&buf[4] = "nw_http_retry_reissue";
    *&buf[12] = 2082;
    *&buf[14] = "http_retry->limit";
    *&buf[22] = 2048;
    v63 = 1;
    *v64 = 2048;
    *&v64[2] = v7;
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v65[0] = 0;
    if (__nwlog_fault(v8, type, v65))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v11 = *(a1 + 568);
          *buf = 136446978;
          *&buf[4] = "nw_http_retry_reissue";
          *&buf[12] = 2082;
          *&buf[14] = "http_retry->limit";
          *&buf[22] = 2048;
          v63 = 1;
          *v64 = 2048;
          *&v64[2] = v11;
          v12 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_19:
          _os_log_impl(&dword_181A37000, v9, v10, v12, buf, 0x2Au);
        }
      }

      else if (v65[0] == 1)
      {
        v13 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        v14 = os_log_type_enabled(gLogObj, type[0]);
        if (v13)
        {
          if (v14)
          {
            v15 = *(a1 + 568);
            *buf = 136447234;
            *&buf[4] = "nw_http_retry_reissue";
            *&buf[12] = 2082;
            *&buf[14] = "http_retry->limit";
            *&buf[22] = 2048;
            v63 = 1;
            *v64 = 2048;
            *&v64[2] = v15;
            *&v64[10] = 2082;
            *&v64[12] = v13;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v13);
          goto LABEL_20;
        }

        if (v14)
        {
          v17 = *(a1 + 568);
          *buf = 136446978;
          *&buf[4] = "nw_http_retry_reissue";
          *&buf[12] = 2082;
          *&buf[14] = "http_retry->limit";
          *&buf[22] = 2048;
          v63 = 1;
          *v64 = 2048;
          *&v64[2] = v17;
          v12 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_19;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v16 = *(a1 + 568);
          *buf = 136446978;
          *&buf[4] = "nw_http_retry_reissue";
          *&buf[12] = 2082;
          *&buf[14] = "http_retry->limit";
          *&buf[22] = 2048;
          v63 = 1;
          *v64 = 2048;
          *&v64[2] = v16;
          v12 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    if (v8)
    {
      free(v8);
    }

    *(a1 + 568) = 0;
    goto LABEL_23;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_retry_reissue";
  v28 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v65[0] = 0;
  if (__nwlog_fault(v28, type, v65))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_retry_reissue";
      v31 = "%{public}s called with null _request_metadata";
      goto LABEL_79;
    }

    if (v65[0] != 1)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_retry_reissue";
      v31 = "%{public}s called with null _request_metadata, backtrace limit exceeded";
      goto LABEL_79;
    }

    v40 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type[0];
    v41 = os_log_type_enabled(v29, type[0]);
    if (v40)
    {
      if (v41)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_retry_reissue";
        *&buf[12] = 2082;
        *&buf[14] = v40;
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null _request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v40);
      goto LABEL_80;
    }

    if (v41)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_retry_reissue";
      v31 = "%{public}s called with null _request_metadata, no backtrace";
LABEL_79:
      _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    }
  }

LABEL_80:
  if (v28)
  {
    free(v28);
  }
}

uint64_t __Block_byref_object_copy__44521(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__44522(uint64_t result)
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

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__21(uint64_t result)
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

uint64_t ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_22(uint64_t a1, uint64_t *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_2;
  v8 = &unk_1E6A33168;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v2 = *a2;
  do
  {
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 32);
    v4 = (v7)(v6);
    v2 = v3;
  }

  while ((v4 & 1) != 0);
  return 1;
}

uint64_t ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_3(uint64_t a1)
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

  v4 = *(a1 + 48);
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
    v12[2] = ___ZL21nw_http_retry_reissueP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke_4;
    v12[3] = &unk_1E6A331B8;
    v12[4] = *(a1 + 40);
    v9 = *(a1 + 56);
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

uint64_t ___ZL23nw_http_retry_can_retryP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_http_transaction = nw_protocol_metadata_is_http_transaction(a3);
  if (is_http_transaction)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_http_transaction_metadata_get_used_early_data(a3);
  }

  return is_http_transaction ^ 1u;
}

void nw_protocol_http_retry_create::$_2::__invoke(nw_protocol_http_retry_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "operator()";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v20 = "operator()";
      v12 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
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
          v20 = "operator()";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v9)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!v14)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v20 = "operator()";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v20 = "operator()";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_41;
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 480);
    if (v4)
    {
      v5 = *(v3 + 472);
      if (v5)
      {
        os_release(v5);
        v4 = *(v3 + 480);
      }
    }

    *(v3 + 472) = 0;
    *(v3 + 480) = v4 | 1;
    v6 = *(v3 + 496);
    if (v6)
    {
      v7 = *(v3 + 488);
      if (v7)
      {
        os_release(v7);
        v6 = *(v3 + 496);
      }
    }

    *(v3 + 488) = 0;
    *(v3 + 496) = v6 | 1;
    v8 = nw_parameters_copy_protocol_options_legacy(*(v3 + 536), v3);
    *(v3 + 568) = nw_http_retry_options_get_limit(v8);
    *(v3 + 572) &= 0xF9u;
    if (v8)
    {

      os_release(v8);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "operator()";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v9, &type, &v17))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v20 = "operator()";
    v12 = "%{public}s called with null http_retry";
    goto LABEL_40;
  }

  if (v17 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v20 = "operator()";
    v12 = "%{public}s called with null http_retry, backtrace limit exceeded";
    goto LABEL_40;
  }

  v15 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v16 = os_log_type_enabled(v10, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v20 = "operator()";
    v12 = "%{public}s called with null http_retry, no backtrace";
    goto LABEL_40;
  }

  if (v16)
  {
    *buf = 136446466;
    v20 = "operator()";
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null http_retry, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v9)
  {
LABEL_42:
    free(v9);
  }
}

void nw_protocol_http_retry_create::$_1::__invoke(uint64_t a1, int a2, void *object, int a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null protocol";
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "operator()";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_67:
        if (!v13)
        {
          return;
        }

        goto LABEL_68;
      }

      if (!v18)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_66;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_67;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v24 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v27 = "operator()";
        v16 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_66;
      }

      v19 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v27 = "operator()";
        v16 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_66;
      }

      if (!v20)
      {
        goto LABEL_48;
      }

      *buf = 136446466;
      v27 = "operator()";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_47;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_67;
    }

    *buf = 136446210;
    v27 = "operator()";
    v16 = "%{public}s called with null http_retry";
LABEL_66:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_67;
  }

  if (!object)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null metadata";
      goto LABEL_66;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_66;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v22 = os_log_type_enabled(v14, type);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_66;
    }

    if (!v22)
    {
      goto LABEL_48;
    }

    *buf = 136446466;
    v27 = "operator()";
    v28 = 2082;
    v29 = v19;
    v21 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_47:
    _os_log_impl(&dword_181A37000, v14, v15, v21, buf, 0x16u);
    goto LABEL_48;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null completion";
      goto LABEL_66;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_66;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v23 = os_log_type_enabled(v14, type);
    if (!v19)
    {
      if (!v23)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null completion, no backtrace";
      goto LABEL_66;
    }

    if (v23)
    {
      *buf = 136446466;
      v27 = "operator()";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_47;
    }

LABEL_48:
    free(v19);
    if (!v13)
    {
      return;
    }

LABEL_68:
    free(v13);
    return;
  }

  v8 = os_retain(object);
  v9 = *(v5 + 480);
  if ((v9 & 1) != 0 && *(v5 + 472))
  {
    v10 = v8;
    os_release(*(v5 + 472));
    v8 = v10;
    v9 = *(v5 + 480);
  }

  *(v5 + 472) = v8;
  *(v5 + 480) = v9 | 1;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  *(v5 + 572) = *(v5 + 572) & 0xFD | v11;
  v12 = *(a5 + 16);

  v12(a5, 1);
}

void nw_protocol_http_retry_create::$_0::__invoke(uint64_t a1, uint64_t a2, void *object, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v11, type, &v35))
    {
      goto LABEL_96;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (!os_log_type_enabled(v12, type[0]))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v14 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_95;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v20 = os_log_type_enabled(v12, type[0]);
      if (!backtrace_string)
      {
        if (!v20)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v14 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_95;
      }

      if (v20)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_96:
      if (v11)
      {
        goto LABEL_97;
      }

      return;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v14 = "%{public}s called with null protocol";
    goto LABEL_95;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v11, type, &v35))
    {
      goto LABEL_96;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (!os_log_type_enabled(v12, type[0]))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v14 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_95;
      }

      v21 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v22 = os_log_type_enabled(v12, type[0]);
      if (!v21)
      {
        if (!v22)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v14 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_95;
      }

      if (!v22)
      {
        goto LABEL_64;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v21;
      v23 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_63;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v14 = "%{public}s called with null http_retry";
LABEL_95:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_96;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v11, type, &v35))
    {
      goto LABEL_96;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (!os_log_type_enabled(v12, type[0]))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v14 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_95;
      }

      v21 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v24 = os_log_type_enabled(v12, type[0]);
      if (!v21)
      {
        if (!v24)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v14 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_95;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v21;
      v23 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_63;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v14 = "%{public}s called with null other_protocol";
    goto LABEL_95;
  }

  if (!object)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v11, type, &v35))
    {
      goto LABEL_96;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v14 = "%{public}s called with null metadata";
      goto LABEL_95;
    }

    if (v35 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v14 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_95;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v25 = os_log_type_enabled(v12, type[0]);
    if (!v21)
    {
      if (!v25)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v14 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_95;
    }

    if (!v25)
    {
      goto LABEL_64;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    v23 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_63:
    _os_log_impl(&dword_181A37000, v12, v13, v23, buf, 0x16u);
    goto LABEL_64;
  }

  if (a5)
  {
    if (*(v5 + 472))
    {
      v8 = os_retain(object);
      v9 = *(v5 + 496);
      if ((v9 & 1) != 0 && *(v5 + 488))
      {
        v10 = v8;
        os_release(*(v5 + 488));
        v8 = v10;
        v9 = *(v5 + 496);
      }

      *(v5 + 488) = v8;
      *(v5 + 496) = v9 | 1;
      if ((*(v5 + 572) & 8) != 0)
      {
        goto LABEL_13;
      }

      if (nw_http_retry_can_retry(v5, object))
      {
        nw_http_retry_reissue(v5, *(v5 + 472));
LABEL_13:
        *type = MEMORY[0x1E69E9820];
        v31 = 0x40000000;
        v32 = ___ZZ29nw_protocol_http_retry_createENK3__0clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke;
        v33 = &__block_descriptor_tmp_15_44630;
        v34 = v5;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
        v37 = &unk_1E6A303F0;
        v39 = 1;
        v40 = 0;
        v38 = type;
        os_unfair_lock_lock(&lock);
        (*&buf[16])(buf);
        os_unfair_lock_unlock(&lock);
        (*(a5 + 16))(a5, 3);
        return;
      }

      if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v29 = __nwlog_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_retry_process";
          *&buf[12] = 2082;
          *&buf[14] = v5 + 114;
          *&buf[22] = 2080;
          v37 = " ";
          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCannot retry request on stream", buf, 0x20u);
        }
      }

      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_retry_process";
    v15 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v15, type, &v35))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type[0];
        if (!os_log_type_enabled(v16, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_retry_process";
        v18 = "%{public}s called with null http_retry->request_metadata";
        goto LABEL_100;
      }

      if (v35 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type[0];
        if (!os_log_type_enabled(v16, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_retry_process";
        v18 = "%{public}s called with null http_retry->request_metadata, backtrace limit exceeded";
        goto LABEL_100;
      }

      v27 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type[0];
      v28 = os_log_type_enabled(v16, type[0]);
      if (v27)
      {
        if (v28)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_retry_process";
          *&buf[12] = 2082;
          *&buf[14] = v27;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null http_retry->request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v27);
        goto LABEL_101;
      }

      if (v28)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_retry_process";
        v18 = "%{public}s called with null http_retry->request_metadata, no backtrace";
LABEL_100:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

LABEL_101:
    if (v15)
    {
      free(v15);
    }

LABEL_16:
    (*(a5 + 16))(a5, 1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "operator()";
  v11 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v11, type, &v35))
  {
    goto LABEL_96;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v14 = "%{public}s called with null completion";
    goto LABEL_95;
  }

  if (v35 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v14 = "%{public}s called with null completion, backtrace limit exceeded";
    goto LABEL_95;
  }

  v21 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type[0];
  v26 = os_log_type_enabled(v12, type[0]);
  if (!v21)
  {
    if (!v26)
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v14 = "%{public}s called with null completion, no backtrace";
    goto LABEL_95;
  }

  if (v26)
  {
    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    v23 = "%{public}s called with null completion, dumping backtrace:%{public}s";
    goto LABEL_63;
  }

LABEL_64:
  free(v21);
  if (v11)
  {
LABEL_97:
    free(v11);
  }
}

void ___ZZ29nw_protocol_http_retry_createENK3__0clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s%sRetry Registered", &v4, 0x16u);
  }
}

void ___ZL36nw_protocol_http_retry_get_callbacksv_block_invoke()
{
  nw_protocol_http_retry_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840E00 = nw_protocol_common_replace_input_handler;
  qword_1EA840E40 = nw_protocol_common_get_input_frames;
  qword_1EA840E48 = nw_protocol_common_get_output_frames;
  qword_1EA840E50 = nw_protocol_common_finalize_output_frames;
  qword_1EA840E60 = nw_protocol_common_get_parameters;
  qword_1EA840E68 = nw_protocol_common_get_path;
  qword_1EA840E78 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840E70 = nw_protocol_common_get_local_endpoint;
  qword_1EA840EB8 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840EC0 = nw_protocol_common_get_output_interface;
  qword_1EA840E08 = nw_protocol_common_connect;
  qword_1EA840E18 = nw_protocol_common_connected;
  qword_1EA840E10 = nw_protocol_common_disconnect;
  qword_1EA840E20 = nw_protocol_common_disconnected;
  qword_1EA840E30 = nw_protocol_common_input_available;
  qword_1EA840E38 = nw_protocol_common_output_available;
  qword_1EA840EA8 = nw_protocol_common_input_finished;
  qword_1EA840EB0 = nw_protocol_common_output_finished;
  qword_1EA840EF8 = nw_protocol_common_input_flush;
  qword_1EA840E28 = nw_protocol_common_error;
  qword_1EA840EF0 = nw_protocol_common_reset;
  qword_1EA840EE8 = nw_protocol_common_get_message_properties;
  qword_1EA840ED0 = nw_protocol_common_copy_info;
  qword_1EA840EA0 = nw_protocol_common_supports_external_data;
  qword_1EA840EC8 = nw_protocol_common_waiting_for_output;
  qword_1EA840E80 = nw_protocol_common_register_notification;
  qword_1EA840E88 = nw_protocol_common_unregister_notification;
  qword_1EA840E90 = nw_protocol_common_notify;
  qword_1EA840E98 = nw_protocol_common_updated_path;
  qword_1EA840E58 = nw_protocol_common_link_state;
  qword_1EA840DF8 = nw_protocol_http_retry_remove_input_handler;
}

double __nw_protocol_http_retry_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_retry_identifier::protocol_identifier, "http_retry");
  *&result = 0x100000005;
  qword_1EA841020 = 0x100000005;
  return result;
}

uint64_t nw_content_context_get_expiration_milliseconds(nw_content_context_t context)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = context;
  if (v1)
  {
    isa = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      if (BYTE6(v1[14].isa))
      {
        isa = 0;
      }

      else
      {
        isa = v1[8].isa;
      }
    }

    goto LABEL_9;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_content_context_get_expiration_milliseconds";
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
        v15 = "nw_content_context_get_expiration_milliseconds";
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
          v15 = "nw_content_context_get_expiration_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_content_context_get_expiration_milliseconds";
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
        v15 = "nw_content_context_get_expiration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_9:

  return isa;
}

double nw_content_context_get_relative_priority(nw_content_context_t context)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = context;
  if (v1)
  {
    v2 = 0.5;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658 && (BYTE6(v1[14].isa) & 1) == 0)
    {
      v2 = *&v1[10].isa;
    }

    goto LABEL_8;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_content_context_get_relative_priority";
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
        v15 = "nw_content_context_get_relative_priority";
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
          v15 = "nw_content_context_get_relative_priority";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_content_context_get_relative_priority";
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
        v15 = "nw_content_context_get_relative_priority";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v5)
  {
    free(v5);
  }

  v2 = 0.5;
  v1 = 0;
LABEL_8:

  return v2;
}

void nw_content_context_set_antecedent(nw_content_context_t context, nw_content_context_t antecedent_context)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = context;
  v4 = antecedent_context;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_content_context_set_antecedent";
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
          v22 = "nw_content_context_set_antecedent";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
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
            v22 = "nw_content_context_set_antecedent";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_antecedent";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_content_context_set_antecedent";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_18;
  }

  if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658 && v4 != &__block_literal_global_10_44685 && v4 != &__block_literal_global_8_44676 && v4 != &__block_literal_global_6_44667 && v4 != &__block_literal_global_44658)
  {
    os_unfair_lock_lock(&v3[14]);
    v6 = v5;
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      while (v8 != v3)
      {
        v9 = v8[7];

        v8 = v9;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "nw_content_context_set_antecedent";
        v23 = 2114;
        v24 = v7;
        v25 = 2114;
        v26 = v3;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Cannot create antecedent loops (%{public}@ introduces loop to %{public}@)", buf, 0x20u);
      }

      os_unfair_lock_unlock(&v3[14]);
    }

    else
    {
LABEL_14:
      objc_storeStrong(&v3[7].isa, antecedent_context);
      os_unfair_lock_unlock(&v3[14]);
    }
  }

LABEL_18:
}

nw_content_context_t nw_content_context_copy_antecedent(nw_content_context_t context)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = context;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_content_context_copy_antecedent";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v5, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v16 = "nw_content_context_copy_antecedent";
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v13 == 1)
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
            v16 = "nw_content_context_copy_antecedent";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v10)
        {
          *buf = 136446210;
          v16 = "nw_content_context_copy_antecedent";
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
          v16 = "nw_content_context_copy_antecedent";
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_26;
  }

  v3 = 0;
  if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
  {
    if ((BYTE6(v1[14].isa) & 1) == 0)
    {
      os_unfair_lock_lock(&v1[14]);
      v3 = v2[7].isa;
      os_unfair_lock_unlock(&v2[14]);
      goto LABEL_27;
    }

LABEL_26:
    v3 = 0;
  }

LABEL_27:

  return v3;
}

uint64_t __Block_byref_object_copy__44932(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t nw_content_context_supports_replies(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (v1 == &__block_literal_global_10_44685)
    {
      v3 = 1;
    }

    else
    {
      v3 = 0;
      if (v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
      {
        os_unfair_lock_lock(v1 + 28);
        v3 = (BYTE2(v2[29]._os_unfair_lock_opaque) >> 6) & 1;
        os_unfair_lock_unlock(v2 + 28);
      }
    }

    goto LABEL_8;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_content_context_supports_replies";
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
        v16 = "nw_content_context_supports_replies";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null context", buf, 0xCu);
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
          v16 = "nw_content_context_supports_replies";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_content_context_supports_replies";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_content_context_supports_replies";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_8:

  return v3;
}

void nw_content_context_set_packet_id(void *a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
      {
        v3[118] |= 8u;
        *(v3 + 8) = *a2;
      }

      goto LABEL_8;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_content_context_set_packet_id";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_content_context_set_packet_id";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null packet_id", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_content_context_set_packet_id";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null packet_id, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_content_context_set_packet_id";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null packet_id, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_content_context_set_packet_id";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null packet_id, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_content_context_set_packet_id";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_content_context_set_packet_id";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_content_context_set_packet_id";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v21 = "nw_content_context_set_packet_id";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_content_context_set_packet_id";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_8:
}

void nw_content_context_set_app_metadata(void *a1, char a2, char a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    if (v5 != &__block_literal_global_10_44685 && v5 != &__block_literal_global_8_44676 && v5 != &__block_literal_global_6_44667 && v5 != &__block_literal_global_44658)
    {
      v5[119] |= 1u;
      v5[116] = a2;
      v5[117] = a3;
    }

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_content_context_set_app_metadata";
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
        v17 = "nw_content_context_set_app_metadata";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_content_context_set_app_metadata";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_content_context_set_app_metadata";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_content_context_set_app_metadata";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v7)
  {
    free(v7);
  }

  v5 = 0;
LABEL_7:
}

uint64_t nw_content_context_copy_local_endpoint(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == &__block_literal_global_10_44685 || v1 == &__block_literal_global_8_44676 || v1 == &__block_literal_global_6_44667 || v1 == &__block_literal_global_44658)
  {
    v8 = 0;
  }

  else
  {
    os_unfair_lock_lock(v1 + 28);
    if ((v2[29]._os_unfair_lock_opaque & 0x200000) != 0 && (v6 = *&v2[26]._os_unfair_lock_opaque) != 0 && _nw_array_get_count(v6) && (v7 = *&v2[26]._os_unfair_lock_opaque) != 0)
    {
      v8 = _nw_array_get_object_at_index(v7, 0);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock(v2 + 28);
  }

  return v8;
}

uint64_t nw_content_context_copy_remote_endpoint(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == &__block_literal_global_10_44685 || v1 == &__block_literal_global_8_44676 || v1 == &__block_literal_global_6_44667 || v1 == &__block_literal_global_44658)
  {
    v8 = 0;
  }

  else
  {
    os_unfair_lock_lock(v1 + 28);
    if ((v2[29]._os_unfair_lock_opaque & 0x200000) != 0 && (v6 = *&v2[26]._os_unfair_lock_opaque) != 0 && _nw_array_get_count(v6) >= 2 && (v7 = *&v2[26]._os_unfair_lock_opaque) != 0)
    {
      v8 = _nw_array_get_object_at_index(v7, 1);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock(v2 + 28);
  }

  return v8;
}

uint64_t nw_content_context_copy_interface(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == &__block_literal_global_10_44685 || v1 == &__block_literal_global_8_44676 || v1 == &__block_literal_global_6_44667 || v1 == &__block_literal_global_44658)
  {
    v8 = 0;
  }

  else
  {
    os_unfair_lock_lock(v1 + 28);
    if ((v2[29]._os_unfair_lock_opaque & 0x200000) != 0 && (v6 = *&v2[26]._os_unfair_lock_opaque) != 0 && _nw_array_get_count(v6) >= 3 && (v7 = *&v2[26]._os_unfair_lock_opaque) != 0)
    {
      v8 = _nw_array_get_object_at_index(v7, 2);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock(v2 + 28);
  }

  return v8;
}

uint64_t llhttp__after_headers_complete(uint64_t a1)
{
  v1 = *(a1 + 82);
  if ((v1 & 8) != 0)
  {
    v2 = 1;
    if (!*(a1 + 80))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = *(a1 + 64) != 0;
    if (!*(a1 + 80))
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 73) == 5 || (v1 & 0x40) != 0 || !v2)
  {
    return 1;
  }

LABEL_7:
  v3 = *(a1 + 72);
  if (v3 == 2)
  {
    v4 = *(a1 + 84);
    if (v4 == 101)
    {
      return 1;
    }

    v6 = 0;
    if ((v1 & 0x40) != 0)
    {
      return v6;
    }

    if (v4 == 100)
    {
      return v6;
    }

    v6 = 0;
    if ((v4 - 102) < 2 || v4 == 204 || v4 == 304)
    {
      return v6;
    }
  }

  else if ((v1 & 0x40) != 0)
  {
    return 0;
  }

  if ((v1 & 8) != 0)
  {
    return 2;
  }

  if ((*(a1 + 82) & 0x200) == 0)
  {
    if ((v1 & 0x20) == 0)
    {
      return 4 * llhttp_message_needs_eof(a1);
    }

    if (*(a1 + 64))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  if (v3 == 1 && (*(a1 + 78) & 0xA) == 0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

BOOL llhttp_message_needs_eof(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return 0;
  }

  v2 = *(a1 + 84);
  if ((v2 - 100) < 0x64)
  {
    return 0;
  }

  v3 = 0;
  if (v2 != 204 && v2 != 304)
  {
    v4 = *(a1 + 82);
    v5 = (v4 & 0x208) == 0x200 || (v4 & 0x28) == 0;
    return (v4 & 0x40) == 0 && v5;
  }

  return v3;
}

void sub_182795210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1827981D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45462(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18279CE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45706(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t handleRunProbes()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = os_transaction_create();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v1 = gLogObj;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "handleRunProbes";
    *&buf[12] = 2112;
    *&buf[14] = v0;
    _os_log_impl(&dword_181A37000, v1, OS_LOG_TYPE_DEFAULT, "%{public}s created transaction %@", buf, 0x16u);
  }

  v2 = v0;
  if (v2)
  {
    v3 = +[ManagedNetworkSettings sharedMNS];
    v4 = [v3 queue];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __runProbes_block_invoke;
    v16 = &unk_1E6A3D868;
    v17 = v2;
    dispatch_async(v4, buf);

    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "runProbes";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "runProbes";
        v10 = "%{public}s called with null transaction";
LABEL_19:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            *&buf[4] = "runProbes";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null transaction, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        *&buf[4] = "runProbes";
        v10 = "%{public}s called with null transaction, no backtrace";
        goto LABEL_19;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "runProbes";
        v10 = "%{public}s called with null transaction, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

LABEL_5:

  return 0;
}

uint64_t handleTeardownFakeEthernetPair(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  if (!string || strlen(string) > 0x10 || ([v1 request], v4 = objc_claimAutoreleasedReturnValue(), v5 = xpc_dictionary_get_string(v4, networkd_privileged_key_second_interface_name), v4, !v5) || strlen(v5) > 0x10)
  {
    v6 = 22;
    goto LABEL_6;
  }

  v8 = socket(2, 2, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    teardownFakeEthernet(v8, string);
    teardownFakeEthernet(v9, v5);
    close(v9);
    v6 = 0;
    goto LABEL_6;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v21 = "handleTeardownFakeEthernetPair";
  v22 = 1024;
  v23 = v10;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v12, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v21 = "handleTeardownFakeEthernetPair";
        v22 = 1024;
        v23 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446722;
            v21 = "handleTeardownFakeEthernetPair";
            v22 = 1024;
            v23 = v10;
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v17)
        {
          goto LABEL_23;
        }

        *buf = 136446466;
        v21 = "handleTeardownFakeEthernetPair";
        v22 = 1024;
        v23 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        goto LABEL_22;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v21 = "handleTeardownFakeEthernetPair";
        v22 = 1024;
        v23 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:
  }

LABEL_24:
  v6 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_6:

  return v6;
}

void teardownFakeEthernet(int a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (sysctlbyname("net.link.fake.nxattach", 0, 0, &v22, 4uLL))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v24 = "teardownFakeEthernet";
      v5 = "%{public}s Failed to clear sysctl to attach fake ethernet";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_7:
      _os_log_impl(&dword_181A37000, v6, v7, v5, buf, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  memset(v31, 0, sizeof(v31));
  __strlcpy_chk();
  if ((ioctl(a1, 0x80206979uLL, v31) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "teardownFakeEthernet";
      v25 = 2082;
      *v26 = v31;
      v5 = "%{public}s Successfully destroyed interface %{public}s";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 22;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v9 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446978;
  v24 = "teardownFakeEthernet";
  v25 = 1024;
  *v26 = a1;
  *&v26[4] = 2082;
  *&v26[6] = a2;
  v27 = 1024;
  v28 = v9;
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v11, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446978;
        v24 = "teardownFakeEthernet";
        v25 = 1024;
        *v26 = a1;
        *&v26[4] = 2082;
        *&v26[6] = a2;
        v27 = 1024;
        v28 = v9;
        v14 = "%{public}s ioctl(%d, SIOCIFDESTROY, %{public}s) failed %{darwin.errno}d";
LABEL_21:
        v18 = v12;
        v19 = v13;
LABEL_22:
        _os_log_impl(&dword_181A37000, v18, v19, v14, buf, 0x22u);
      }
    }

    else
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v16 = type;
        v17 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136447234;
            v24 = "teardownFakeEthernet";
            v25 = 1024;
            *v26 = a1;
            *&v26[4] = 2082;
            *&v26[6] = a2;
            v27 = 1024;
            v28 = v9;
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v16, "%{public}s ioctl(%d, SIOCIFDESTROY, %{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x2Cu);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v17)
        {
          goto LABEL_23;
        }

        *buf = 136446978;
        v24 = "teardownFakeEthernet";
        v25 = 1024;
        *v26 = a1;
        *&v26[4] = 2082;
        *&v26[6] = a2;
        v27 = 1024;
        v28 = v9;
        v14 = "%{public}s ioctl(%d, SIOCIFDESTROY, %{public}s) failed %{darwin.errno}d, no backtrace";
        v18 = v12;
        v19 = v16;
        goto LABEL_22;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446978;
        v24 = "teardownFakeEthernet";
        v25 = 1024;
        *v26 = a1;
        *&v26[4] = 2082;
        *&v26[6] = a2;
        v27 = 1024;
        v28 = v9;
        v14 = "%{public}s ioctl(%d, SIOCIFDESTROY, %{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_23:
  }

LABEL_24:
  if (v11)
  {
    free(v11);
  }
}

uint64_t handleSetupFakeEthernetPair(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  if (string)
  {
    if (strlen(string) <= 0x10)
    {
      v4 = [v1 request];
      v5 = xpc_dictionary_get_string(v4, networkd_privileged_key_second_interface_name);

      if (v5)
      {
        if (strlen(v5) <= 0x10)
        {
          v8 = socket(2, 2, 0);
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v8;
            LODWORD(v6) = setupFakeEthernet(v8, string);
            if (v6)
            {
LABEL_25:
              close(v9);
LABEL_32:
              v6 = v6;
              goto LABEL_6;
            }

            v10 = setupFakeEthernet(v9, v5);
            if (v10)
            {
              LODWORD(v6) = v10;
              v11 = v9;
              v12 = string;
LABEL_11:
              teardownFakeEthernet(v11, v12);
              goto LABEL_25;
            }

            v50[0] = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            memset(buf, 0, sizeof(buf));
            __strlcpy_chk();
            v50[1] = xmmword_182B08E00;
            v51 = buf;
            __strlcpy_chk();
            if ((ioctl(v9, 0x8028697BuLL, v50) & 0x80000000) == 0)
            {
              LODWORD(v6) = 0;
              goto LABEL_25;
            }

            LODWORD(v6) = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            v20 = __nwlog_obj();
            *type = 136447234;
            v30 = "handleSetupFakeEthernetPair";
            v31 = 1024;
            v32 = v9;
            v33 = 2082;
            v34 = string;
            v35 = 2082;
            v36 = v5;
            v37 = 1024;
            v38 = v6;
            v21 = _os_log_send_and_compose_impl();

            v28 = OS_LOG_TYPE_ERROR;
            v27 = 0;
            if (!__nwlog_fault(v21, &v28, &v27))
            {
LABEL_48:
              if (v21)
              {
                free(v21);
              }

              teardownFakeEthernet(v9, string);
              v11 = v9;
              v12 = v5;
              goto LABEL_11;
            }

            if (v28 == OS_LOG_TYPE_FAULT)
            {
              v22 = __nwlog_obj();
              v23 = v28;
              if (os_log_type_enabled(v22, v28))
              {
                *type = 136447234;
                v30 = "handleSetupFakeEthernetPair";
                v31 = 1024;
                v32 = v9;
                v33 = 2082;
                v34 = string;
                v35 = 2082;
                v36 = v5;
                v37 = 1024;
                v38 = v6;
                v24 = "%{public}s ioctl(%d, SIOCSDRVSPEC, %{public}s<->%{public}s) failed %{darwin.errno}d";
LABEL_46:
                _os_log_impl(&dword_181A37000, v22, v23, v24, type, 0x2Cu);
              }
            }

            else
            {
              if (v27 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v22 = __nwlog_obj();
                v23 = v28;
                v26 = os_log_type_enabled(v22, v28);
                if (backtrace_string)
                {
                  if (v26)
                  {
                    *type = 136447490;
                    v30 = "handleSetupFakeEthernetPair";
                    v31 = 1024;
                    v32 = v9;
                    v33 = 2082;
                    v34 = string;
                    v35 = 2082;
                    v36 = v5;
                    v37 = 1024;
                    v38 = v6;
                    v39 = 2082;
                    v40 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v22, v23, "%{public}s ioctl(%d, SIOCSDRVSPEC, %{public}s<->%{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x36u);
                  }

                  free(backtrace_string);
                  goto LABEL_48;
                }

                if (!v26)
                {
                  goto LABEL_47;
                }

                *type = 136447234;
                v30 = "handleSetupFakeEthernetPair";
                v31 = 1024;
                v32 = v9;
                v33 = 2082;
                v34 = string;
                v35 = 2082;
                v36 = v5;
                v37 = 1024;
                v38 = v6;
                v24 = "%{public}s ioctl(%d, SIOCSDRVSPEC, %{public}s<->%{public}s) failed %{darwin.errno}d, no backtrace";
                goto LABEL_46;
              }

              v22 = __nwlog_obj();
              v23 = v28;
              if (os_log_type_enabled(v22, v28))
              {
                *type = 136447234;
                v30 = "handleSetupFakeEthernetPair";
                v31 = 1024;
                v32 = v9;
                v33 = 2082;
                v34 = string;
                v35 = 2082;
                v36 = v5;
                v37 = 1024;
                v38 = v6;
                v24 = "%{public}s ioctl(%d, SIOCSDRVSPEC, %{public}s<->%{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_46;
              }
            }

LABEL_47:

            goto LABEL_48;
          }

          LODWORD(v6) = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "handleSetupFakeEthernetPair";
          *&buf[12] = 1024;
          *&buf[14] = v6;
          v14 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v50[0]) = 0;
          if (!__nwlog_fault(v14, type, v50))
          {
LABEL_30:
            if (v14)
            {
              free(v14);
            }

            goto LABEL_32;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v15 = __nwlog_obj();
            v16 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "handleSetupFakeEthernetPair";
              *&buf[12] = 1024;
              *&buf[14] = v6;
              v17 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_28:
              _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x12u);
            }
          }

          else
          {
            if (LOBYTE(v50[0]) == 1)
            {
              v18 = __nw_create_backtrace_string();
              v15 = __nwlog_obj();
              v16 = type[0];
              v19 = os_log_type_enabled(v15, type[0]);
              if (v18)
              {
                if (v19)
                {
                  *buf = 136446722;
                  *&buf[4] = "handleSetupFakeEthernetPair";
                  *&buf[12] = 1024;
                  *&buf[14] = v6;
                  *&buf[18] = 2082;
                  *&buf[20] = v18;
                  _os_log_impl(&dword_181A37000, v15, v16, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v18);
                goto LABEL_30;
              }

              if (!v19)
              {
                goto LABEL_29;
              }

              *buf = 136446466;
              *&buf[4] = "handleSetupFakeEthernetPair";
              *&buf[12] = 1024;
              *&buf[14] = v6;
              v17 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
              goto LABEL_28;
            }

            v15 = __nwlog_obj();
            v16 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "handleSetupFakeEthernetPair";
              *&buf[12] = 1024;
              *&buf[14] = v6;
              v17 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_28;
            }
          }

LABEL_29:

          goto LABEL_30;
        }
      }
    }
  }

  v6 = 22;
LABEL_6:

  return v6;
}

uint64_t setupFakeEthernet(int a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v4 = sysctlbyname("net.link.fake.nxattach", 0, 0, &v31, 4uLL);
  if (v4)
  {
    v5 = v4;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33 = "setupFakeEthernet";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Failed to set sysctl to attach fake ethernet", buf, 0xCu);
    }

    return v5;
  }

  v40 = 0u;
  v41 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC0206978uLL, &v40) < 0)
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446978;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v10, &type, &v29))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_72;
      }

      *buf = 136446978;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v13 = "%{public}s ioctl(%d, SIOCIFCREATE, %{public}s) failed %{darwin.errno}d";
LABEL_70:
      v26 = v11;
      v27 = v12;
      goto LABEL_71;
    }

    if (v29 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_72;
      }

      *buf = 136446978;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v13 = "%{public}s ioctl(%d, SIOCIFCREATE, %{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (!v17)
      {
        goto LABEL_36;
      }

      *buf = 136447234;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v38 = 2082;
      v39 = backtrace_string;
      v18 = "%{public}s ioctl(%d, SIOCIFCREATE, %{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

    if (!v17)
    {
      goto LABEL_72;
    }

    *buf = 136446978;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v13 = "%{public}s ioctl(%d, SIOCIFCREATE, %{public}s) failed %{darwin.errno}d, no backtrace";
LABEL_63:
    v26 = v11;
    v27 = v16;
LABEL_71:
    _os_log_impl(&dword_181A37000, v26, v27, v13, buf, 0x22u);
    goto LABEL_72;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v33 = "setupFakeEthernet";
    v34 = 2082;
    *v35 = &v40;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully created interface %{public}s", buf, 0x16u);
  }

  if (ioctl(a1, 0xC0206950uLL, &v40) < 0)
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446978;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v10, &type, &v29))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_72;
      }

      *buf = 136446978;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v13 = "%{public}s ioctl(%d, SIOCPROTOATTACH, %{public}s) failed %{darwin.errno}d";
      goto LABEL_70;
    }

    if (v29 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_72;
      }

      *buf = 136446978;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v13 = "%{public}s ioctl(%d, SIOCPROTOATTACH, %{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v16 = type;
    v20 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_36;
      }

      *buf = 136447234;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v38 = 2082;
      v39 = backtrace_string;
      v18 = "%{public}s ioctl(%d, SIOCPROTOATTACH, %{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_35:
      _os_log_impl(&dword_181A37000, v11, v16, v18, buf, 0x2Cu);
LABEL_36:

      free(backtrace_string);
      if (!v10)
      {
        return v5;
      }

      goto LABEL_74;
    }

    if (!v20)
    {
      goto LABEL_72;
    }

    *buf = 136446978;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v13 = "%{public}s ioctl(%d, SIOCPROTOATTACH, %{public}s) failed %{darwin.errno}d, no backtrace";
    goto LABEL_63;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v33 = "setupFakeEthernet";
    v34 = 2082;
    *v35 = &v40;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully attach proto to interface %{public}s", buf, 0x16u);
  }

  v40 = 0u;
  v41 = 0u;
  __strlcpy_chk();
  if ((ioctl(a1, 0xC0206911uLL, &v40) & 0x80000000) == 0)
  {
    if (v41)
    {
      return 0;
    }

    LOWORD(v41) = v41 | 1;
    if ((ioctl(a1, 0x80206910uLL, &v40) & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v23 = __nwlog_obj();
    *buf = 136446978;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v10, &type, &v29))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446978;
        v33 = "setupFakeEthernet";
        v34 = 1024;
        *v35 = a1;
        *&v35[4] = 2082;
        *&v35[6] = a2;
        v36 = 1024;
        v37 = v5;
        v13 = "%{public}s ioctl(%d, SIOCSIFFLAGS, %{public}s) failed %{darwin.errno}d";
        goto LABEL_70;
      }
    }

    else if (v29 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v25 = os_log_type_enabled(v11, type);
      if (v24)
      {
        if (v25)
        {
          *buf = 136447234;
          v33 = "setupFakeEthernet";
          v34 = 1024;
          *v35 = a1;
          *&v35[4] = 2082;
          *&v35[6] = a2;
          v36 = 1024;
          v37 = v5;
          v38 = 2082;
          v39 = v24;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s ioctl(%d, SIOCSIFFLAGS, %{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x2Cu);
        }

        free(v24);
LABEL_73:
        if (!v10)
        {
          return v5;
        }

LABEL_74:
        free(v10);
        return v5;
      }

      if (v25)
      {
        *buf = 136446978;
        v33 = "setupFakeEthernet";
        v34 = 1024;
        *v35 = a1;
        *&v35[4] = 2082;
        *&v35[6] = a2;
        v36 = 1024;
        v37 = v5;
        v13 = "%{public}s ioctl(%d, SIOCSIFFLAGS, %{public}s) failed %{darwin.errno}d, no backtrace";
        goto LABEL_70;
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446978;
        v33 = "setupFakeEthernet";
        v34 = 1024;
        *v35 = a1;
        *&v35[4] = 2082;
        *&v35[6] = a2;
        v36 = 1024;
        v37 = v5;
        v13 = "%{public}s ioctl(%d, SIOCSIFFLAGS, %{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_70;
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136446978;
  v33 = "setupFakeEthernet";
  v34 = 1024;
  *v35 = a1;
  *&v35[4] = 2082;
  *&v35[6] = a2;
  v36 = 1024;
  v37 = v5;
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v10, &type, &v29))
  {
    goto LABEL_73;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_72;
    }

    *buf = 136446978;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v13 = "%{public}s ioctl(%d, SIOCGIFFLAGS, %{public}s) failed %{darwin.errno}d";
    goto LABEL_70;
  }

  if (v29 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446978;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v13 = "%{public}s ioctl(%d, SIOCGIFFLAGS, %{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_70;
    }

    goto LABEL_72;
  }

  v21 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v22 = os_log_type_enabled(v11, type);
  if (!v21)
  {
    if (v22)
    {
      *buf = 136446978;
      v33 = "setupFakeEthernet";
      v34 = 1024;
      *v35 = a1;
      *&v35[4] = 2082;
      *&v35[6] = a2;
      v36 = 1024;
      v37 = v5;
      v13 = "%{public}s ioctl(%d, SIOCGIFFLAGS, %{public}s) failed %{darwin.errno}d, no backtrace";
      goto LABEL_70;
    }

    goto LABEL_72;
  }

  if (v22)
  {
    *buf = 136447234;
    v33 = "setupFakeEthernet";
    v34 = 1024;
    *v35 = a1;
    *&v35[4] = 2082;
    *&v35[6] = a2;
    v36 = 1024;
    v37 = v5;
    v38 = 2082;
    v39 = v21;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s ioctl(%d, SIOCGIFFLAGS, %{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x2Cu);
  }

  free(v21);
  if (v10)
  {
    goto LABEL_74;
  }

  return v5;
}

uint64_t handleExpensive(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v40 = 0u;
  v41 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_56;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LODWORD(v41) = xpc_dictionary_get_BOOL(v5, networkd_privileged_key_expensive);

  v6 = socket(2, 2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (ioctl(v6, 0xC02069A1uLL, &v40) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v36 = "handleExpensive";
        *buf = 136446722;
        if (v41)
        {
          v9 = "Set";
        }

        else
        {
          v9 = "Cleared";
        }

        v37 = 2082;
        *v38 = v9;
        *&v38[8] = 2082;
        *&v38[10] = &v40;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully %{public}s expensive on %{public}s", buf, 0x20u);
      }

      v4 = 0;
LABEL_55:
      close(v7);
      goto LABEL_56;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "set";
      v36 = "handleExpensive";
      *buf = 136446978;
      v37 = 2082;
      if (!v41)
      {
        v18 = "clear";
      }

      *v38 = v18;
      *&v38[8] = 2082;
      *&v38[10] = &v40;
      *&v38[18] = 1024;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to %{public}s expensive on %{public}s: %{darwin.errno}d", buf, 0x26u);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = v19;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = 6;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFEXPENSIVE, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_55;
    }

    *buf = 136446722;
    v36 = "handleExpensive";
    v37 = 1024;
    *v38 = v7;
    *&v38[4] = 1024;
    *&v38[6] = v16;
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v24, &type, &v33))
    {
LABEL_53:
      if (v24)
      {
        free(v24);
      }

      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446722;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFEXPENSIVE, ...) failed %{darwin.errno}d";
LABEL_51:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x18u);
      }
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v31 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446978;
            v36 = "handleExpensive";
            v37 = 1024;
            *v38 = v7;
            *&v38[4] = 1024;
            *&v38[6] = v16;
            *&v38[10] = 2082;
            *&v38[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s ioctl(%d, SIOCSIFEXPENSIVE, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (!v31)
        {
          goto LABEL_52;
        }

        *buf = 136446722;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFEXPENSIVE, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_51;
      }

      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446722;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFEXPENSIVE, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_51;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v36 = "handleExpensive";
  v37 = 1024;
  *v38 = v10;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v12, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_35:
        v28 = v13;
        v29 = v14;
LABEL_36:
        _os_log_impl(&dword_181A37000, v28, v29, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v33 == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v13, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            v36 = "handleExpensive";
            v37 = 1024;
            *v38 = v10;
            *&v38[4] = 2082;
            *&v38[6] = v21;
            _os_log_impl(&dword_181A37000, v13, v22, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v21);
          goto LABEL_38;
        }

        if (!v23)
        {
          goto LABEL_37;
        }

        *buf = 136446466;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v28 = v13;
        v29 = v22;
        goto LABEL_36;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v36 = "handleExpensive";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_37:
  }

LABEL_38:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_56:

  return v4;
}

uint64_t handleUltraConstrained(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v40 = 0u;
  v41 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_56;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LODWORD(v41) = xpc_dictionary_get_BOOL(v5, networkd_privileged_key_constrained);

  v6 = socket(2, 2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (ioctl(v6, 0xC02069DBuLL, &v40) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v36 = "handleUltraConstrained";
        *buf = 136446722;
        if (v41)
        {
          v9 = "Set";
        }

        else
        {
          v9 = "Cleared";
        }

        v37 = 2082;
        *v38 = v9;
        *&v38[8] = 2082;
        *&v38[10] = &v40;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully %{public}s ultra constrained on %{public}s", buf, 0x20u);
      }

      v4 = 0;
LABEL_55:
      close(v7);
      goto LABEL_56;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "set";
      v36 = "handleUltraConstrained";
      *buf = 136446978;
      v37 = 2082;
      if (!v41)
      {
        v18 = "clear";
      }

      *v38 = v18;
      *&v38[8] = 2082;
      *&v38[10] = &v40;
      *&v38[18] = 1024;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to %{public}s ultra constrained on %{public}s: %{darwin.errno}d", buf, 0x26u);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = v19;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = 6;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFULTRACONSTRAINED, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_55;
    }

    *buf = 136446722;
    v36 = "handleUltraConstrained";
    v37 = 1024;
    *v38 = v7;
    *&v38[4] = 1024;
    *&v38[6] = v16;
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v24, &type, &v33))
    {
LABEL_53:
      if (v24)
      {
        free(v24);
      }

      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446722;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFULTRACONSTRAINED, ...) failed %{darwin.errno}d";
LABEL_51:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x18u);
      }
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v31 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446978;
            v36 = "handleUltraConstrained";
            v37 = 1024;
            *v38 = v7;
            *&v38[4] = 1024;
            *&v38[6] = v16;
            *&v38[10] = 2082;
            *&v38[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s ioctl(%d, SIOCSIFULTRACONSTRAINED, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (!v31)
        {
          goto LABEL_52;
        }

        *buf = 136446722;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFULTRACONSTRAINED, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_51;
      }

      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446722;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFULTRACONSTRAINED, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_51;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v36 = "handleUltraConstrained";
  v37 = 1024;
  *v38 = v10;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v12, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_35:
        v28 = v13;
        v29 = v14;
LABEL_36:
        _os_log_impl(&dword_181A37000, v28, v29, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v33 == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v13, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            v36 = "handleUltraConstrained";
            v37 = 1024;
            *v38 = v10;
            *&v38[4] = 2082;
            *&v38[6] = v21;
            _os_log_impl(&dword_181A37000, v13, v22, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v21);
          goto LABEL_38;
        }

        if (!v23)
        {
          goto LABEL_37;
        }

        *buf = 136446466;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v28 = v13;
        v29 = v22;
        goto LABEL_36;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v36 = "handleUltraConstrained";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_37:
  }

LABEL_38:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_56:

  return v4;
}

uint64_t handleConstrained(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v40 = 0u;
  v41 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_56;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LODWORD(v41) = xpc_dictionary_get_BOOL(v5, networkd_privileged_key_constrained);

  v6 = socket(2, 2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (ioctl(v6, 0xC02069CDuLL, &v40) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v36 = "handleConstrained";
        *buf = 136446722;
        if (v41)
        {
          v9 = "Set";
        }

        else
        {
          v9 = "Cleared";
        }

        v37 = 2082;
        *v38 = v9;
        *&v38[8] = 2082;
        *&v38[10] = &v40;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully %{public}s constrained on %{public}s", buf, 0x20u);
      }

      v4 = 0;
LABEL_55:
      close(v7);
      goto LABEL_56;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "set";
      v36 = "handleConstrained";
      *buf = 136446978;
      v37 = 2082;
      if (!v41)
      {
        v18 = "clear";
      }

      *v38 = v18;
      *&v38[8] = 2082;
      *&v38[10] = &v40;
      *&v38[18] = 1024;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to %{public}s constrained on %{public}s: %{darwin.errno}d", buf, 0x26u);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = v19;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = 6;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_55;
    }

    *buf = 136446722;
    v36 = "handleConstrained";
    v37 = 1024;
    *v38 = v7;
    *&v38[4] = 1024;
    *&v38[6] = v16;
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v24, &type, &v33))
    {
LABEL_53:
      if (v24)
      {
        free(v24);
      }

      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446722;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d";
LABEL_51:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x18u);
      }
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v31 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446978;
            v36 = "handleConstrained";
            v37 = 1024;
            *v38 = v7;
            *&v38[4] = 1024;
            *&v38[6] = v16;
            *&v38[10] = 2082;
            *&v38[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (!v31)
        {
          goto LABEL_52;
        }

        *buf = 136446722;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_51;
      }

      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446722;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v7;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        v27 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_51;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v36 = "handleConstrained";
  v37 = 1024;
  *v38 = v10;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v12, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_35:
        v28 = v13;
        v29 = v14;
LABEL_36:
        _os_log_impl(&dword_181A37000, v28, v29, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v33 == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v13, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            v36 = "handleConstrained";
            v37 = 1024;
            *v38 = v10;
            *&v38[4] = 2082;
            *&v38[6] = v21;
            _os_log_impl(&dword_181A37000, v13, v22, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v21);
          goto LABEL_38;
        }

        if (!v23)
        {
          goto LABEL_37;
        }

        *buf = 136446466;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v28 = v13;
        v29 = v22;
        goto LABEL_36;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v36 = "handleConstrained";
        v37 = 1024;
        *v38 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_37:
  }

LABEL_38:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_56:

  return v4;
}

uint64_t handleSetNetworkdSetting(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_settings_key);

  if (string)
  {
    v4 = [v1 request];
    v5 = xpc_dictionary_get_string(v4, networkd_privileged_key_settings_file_prefix);

    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      v7 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"_-"];
      v8 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      [v7 formUnionWithCharacterSet:v8];

      v9 = [v7 invertedSet];
      if ([v6 rangeOfCharacterFromSet:v9] != 0x7FFFFFFFFFFFFFFFLL)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v40 = "handleSetNetworkdSetting";
          v41 = 1024;
          *v42 = [v1 pid];
          *&v42[4] = 2082;
          *&v42[6] = v5;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s pid %d sent us file_prefix %{public}s containing invalid characters", buf, 0x1Cu);
        }

        v10 = 0;
        v11 = 22;
        goto LABEL_33;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"/Library/Preferences/com.apple.networkd.", v6, @".plist"];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_file_path_settings];
    }

    v12 = [v1 request];
    v6 = xpc_dictionary_get_value(v12, networkd_privileged_key_settings_value);

    v13 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v10];
    if (v6)
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v7 = 0;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if (v7)
    {
      if (!v13)
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
      }

      v15 = [v13 objectForKeyedSubscript:v9];
      v16 = [v7 isEqual:v15];

      if ((v16 & 1) == 0)
      {
        [v13 setObject:v7 forKeyedSubscript:v9];
        if (!v13)
        {
          goto LABEL_45;
        }

        goto LABEL_25;
      }
    }

    else if (v13)
    {
      v17 = [v13 objectForKeyedSubscript:v9];

      if (v17)
      {
        [v13 removeObjectForKey:v9];
        if (![v13 count])
        {

LABEL_45:
          if (unlink([v10 UTF8String]))
          {
            v29 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            *buf = 136446722;
            v40 = "handleSetNetworkdSetting";
            v41 = 2114;
            *v42 = v10;
            *&v42[8] = 1024;
            *&v42[10] = v29;
            v31 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v37 = 0;
            if (!__nwlog_fault(v31, &type, &v37))
            {
              goto LABEL_72;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446722;
                v40 = "handleSetNetworkdSetting";
                v41 = 2114;
                *v42 = v10;
                *&v42[8] = 1024;
                *&v42[10] = v29;
                v34 = "%{public}s unlink(%{public}@) failed %{darwin.errno}d";
LABEL_70:
                _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x1Cu);
              }
            }

            else
            {
              if (v37 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v32 = __nwlog_obj();
                v33 = type;
                v36 = os_log_type_enabled(v32, type);
                if (backtrace_string)
                {
                  if (v36)
                  {
                    *buf = 136446978;
                    v40 = "handleSetNetworkdSetting";
                    v41 = 2114;
                    *v42 = v10;
                    *&v42[8] = 1024;
                    *&v42[10] = v29;
                    *&v42[14] = 2082;
                    *&v42[16] = backtrace_string;
                    _os_log_impl(&dword_181A37000, v32, v33, "%{public}s unlink(%{public}@) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                  }

                  free(backtrace_string);
                  goto LABEL_72;
                }

                if (!v36)
                {
                  goto LABEL_71;
                }

                *buf = 136446722;
                v40 = "handleSetNetworkdSetting";
                v41 = 2114;
                *v42 = v10;
                *&v42[8] = 1024;
                *&v42[10] = v29;
                v34 = "%{public}s unlink(%{public}@) failed %{darwin.errno}d, no backtrace";
                goto LABEL_70;
              }

              v32 = __nwlog_obj();
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446722;
                v40 = "handleSetNetworkdSetting";
                v41 = 2114;
                *v42 = v10;
                *&v42[8] = 1024;
                *&v42[10] = v29;
                v34 = "%{public}s unlink(%{public}@) failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_70;
              }
            }

LABEL_71:

LABEL_72:
            v11 = v29;
            if (v31)
            {
              free(v31);
            }

            goto LABEL_33;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v40 = "handleSetNetworkdSetting";
            v41 = 2114;
            *v42 = v9;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully removed value of setting %{public}@", buf, 0x16u);
          }

LABEL_32:

          fixFilePermissions(v10);
          v11 = 0;
LABEL_33:

          goto LABEL_34;
        }

LABEL_25:
        v18 = [v13 writeToFile:v10 atomically:1];
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = v19;
        if (v18)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v40 = "handleSetNetworkdSetting";
            v41 = 2114;
            *v42 = v9;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully changed value of setting %{public}@", buf, 0x16u);
          }

          goto LABEL_32;
        }

        *buf = 136446466;
        v40 = "handleSetNetworkdSetting";
        v41 = 2114;
        *v42 = v10;
        v23 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v37 = 0;
        if (!__nwlog_fault(v23, &type, &v37))
        {
LABEL_65:
          if (v23)
          {
            free(v23);
          }

          v11 = 5;
          goto LABEL_33;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            *buf = 136446466;
            v40 = "handleSetNetworkdSetting";
            v41 = 2114;
            *v42 = v10;
            v26 = "%{public}s settings writeToFile:%{public}@ failed";
LABEL_63:
            _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x16u);
          }
        }

        else
        {
          if (v37 == 1)
          {
            v27 = __nw_create_backtrace_string();
            v24 = __nwlog_obj();
            v25 = type;
            v28 = os_log_type_enabled(v24, type);
            if (v27)
            {
              if (v28)
              {
                *buf = 136446722;
                v40 = "handleSetNetworkdSetting";
                v41 = 2114;
                *v42 = v10;
                *&v42[8] = 2082;
                *&v42[10] = v27;
                _os_log_impl(&dword_181A37000, v24, v25, "%{public}s settings writeToFile:%{public}@ failed, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v27);
              goto LABEL_65;
            }

            if (!v28)
            {
              goto LABEL_64;
            }

            *buf = 136446466;
            v40 = "handleSetNetworkdSetting";
            v41 = 2114;
            *v42 = v10;
            v26 = "%{public}s settings writeToFile:%{public}@ failed, no backtrace";
            goto LABEL_63;
          }

          v24 = __nwlog_obj();
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            *buf = 136446466;
            v40 = "handleSetNetworkdSetting";
            v41 = 2114;
            *v42 = v10;
            v26 = "%{public}s settings writeToFile:%{public}@ failed, backtrace limit exceeded";
            goto LABEL_63;
          }
        }

LABEL_64:

        goto LABEL_65;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v40 = "handleSetNetworkdSetting";
      v41 = 2114;
      *v42 = v9;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s new value is the same, will not save settings for %{public}@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v40 = "handleSetNetworkdSetting";
    v41 = 1024;
    *v42 = [v1 pid];
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s pid %d sent us NULL settings key", buf, 0x12u);
  }

  v11 = 22;
LABEL_34:

  return v11;
}

uint64_t handleCheckMobileAsset()
{
  v34[3] = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v1 = gLogObj;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    *&buf[4] = "nwphCheckMobileAsset";
    _os_log_impl(&dword_181A37000, v1, OS_LOG_TYPE_DEBUG, "%{public}s starting mobile asset check", buf, 0xCu);
  }

  gotLoadHelper_x26__OBJC_CLASS___MAAsset(v2);
  if (objc_opt_class())
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.networkd.networknomicon.plist"];
    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v4 = MEMORY[0x1E695DF00];
    v5 = v3;
    v6 = [v4 date];
    v7 = [v5 objectForKeyedSubscript:@"LastAttempt"];
    v8 = [v5 objectForKeyedSubscript:@"LastSuccess"];
    v9 = [v5 objectForKeyedSubscript:@"PollFrequencySeconds"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 longLongValue];
      v11 = 86400.0;
      if (v10 - 3600 < 0x277EF1)
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 86400.0;
    }

    v12 = nwphShouldRunCheck(v6, v7, v8, 1, 3600.0, v11);

    if ((v12 & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nwphCheckMobileAsset";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s skipping Mobile Asset attempt", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v13 = [MEMORY[0x1E695DF00] date];
    [v5 setObject:v13 forKeyedSubscript:@"LastAttempt"];

    if (([v5 writeToFile:@"/Library/Preferences/com.apple.networkd.networknomicon.plist" atomically:1]& 1) != 0)
    {
LABEL_34:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = "nwphCheckMobileAsset";
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s starting mobile asset catalog download", buf, 0xCu);
      }

      v26 = *(v0 + 2272);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nwphCheckMobileAsset_block_invoke;
      v33 = &unk_1E6A2E748;
      v34[0] = v5;
      [v26 startCatalogDownload:@"com.apple.MobileAsset.network.networknomicon" then:buf];
      v19 = v34[0];
LABEL_37:

      goto LABEL_38;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nwphCheckMobileAsset";
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v33 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v15, &type, &v30))
    {
LABEL_32:
      if (v15)
      {
        free(v15);
      }

      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446722;
        *&buf[4] = "nwphCheckMobileAsset";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v33 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
        v18 = "%{public}s Failed to save mobile asset networknomicon attempt %{public}@ to %{public}@";
LABEL_29:
        v23 = v16;
        v24 = v17;
LABEL_30:
        _os_log_impl(&dword_181A37000, v23, v24, v18, buf, 0x20u);
      }
    }

    else
    {
      if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446978;
            *&buf[4] = "nwphCheckMobileAsset";
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            v33 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
            LOWORD(v34[0]) = 2082;
            *(v34 + 2) = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v21, "%{public}s Failed to save mobile asset networknomicon attempt %{public}@ to %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (!v22)
        {
          goto LABEL_31;
        }

        *buf = 136446722;
        *&buf[4] = "nwphCheckMobileAsset";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v33 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
        v18 = "%{public}s Failed to save mobile asset networknomicon attempt %{public}@ to %{public}@, no backtrace";
        v23 = v16;
        v24 = v21;
        goto LABEL_30;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446722;
        *&buf[4] = "nwphCheckMobileAsset";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v33 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
        v18 = "%{public}s Failed to save mobile asset networknomicon attempt %{public}@ to %{public}@, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_31:

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    *&buf[4] = "nwphCheckMobileAsset";
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Mobile Asset not available", buf, 0xCu);
  }

LABEL_38:

  v27 = +[ManagedNetworkSettings sharedMNS];
  v28 = [v27 queue];
  dispatch_async(v28, &__block_literal_global_525);

  return 0;
}

uint64_t handleReloadManagedNetworkSettings()
{
  v6 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "handleReloadManagedNetworkSettings";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s Reloading managed network settings", &v4, 0xCu);
  }

  v1 = +[ManagedNetworkSettings sharedMNS];
  [v1 reloadNetworkdSettings];

  v2 = +[ManagedNetworkSettings sharedMNS];
  [v2 reloadMNS];

  return 0;
}

uint64_t internalHandleSetNetworkAgentOnInterface(void *a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 request];
  uuid = xpc_dictionary_get_uuid(v4, networkd_privileged_key_agent_uuid);

  if (!uuid)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    *length = 136446466;
    *&length[4] = "internalHandleSetNetworkAgentOnInterface";
    v50 = 1024;
    v51 = [v3 pid];
    LODWORD(v47) = 18;
    v20 = _os_log_send_and_compose_impl();

    uu[0] = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v20, uu, &v48))
    {
      goto LABEL_47;
    }

    if (uu[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = uu[0];
      if (!os_log_type_enabled(v21, uu[0]))
      {
        goto LABEL_40;
      }

      v23 = [v3 pid];
      *length = 136446466;
      *&length[4] = "internalHandleSetNetworkAgentOnInterface";
      v50 = 1024;
      v51 = v23;
      v24 = "%{public}s Unable to extract agent UUID bytes from agent request from pid %d";
    }

    else
    {
      if (v48 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v30 = uu[0];
        v31 = os_log_type_enabled(v21, uu[0]);
        if (backtrace_string)
        {
          if (v31)
          {
            v32 = [v3 pid];
            *length = 136446722;
            *&length[4] = "internalHandleSetNetworkAgentOnInterface";
            v50 = 1024;
            v51 = v32;
            v52 = 2082;
            v53 = backtrace_string;
            v33 = "%{public}s Unable to extract agent UUID bytes from agent request from pid %d, dumping backtrace:%{public}s";
LABEL_34:
            _os_log_impl(&dword_181A37000, v21, v30, v33, length, 0x1Cu);
          }

LABEL_35:

          free(backtrace_string);
          goto LABEL_47;
        }

        if (!v31)
        {
LABEL_40:

          if (!v20)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        v43 = [v3 pid];
        *length = 136446466;
        *&length[4] = "internalHandleSetNetworkAgentOnInterface";
        v50 = 1024;
        v51 = v43;
        v24 = "%{public}s Unable to extract agent UUID bytes from agent request from pid %d, no backtrace";
        v37 = v21;
        v38 = v30;
LABEL_39:
        _os_log_impl(&dword_181A37000, v37, v38, v24, length, 0x12u);
        goto LABEL_40;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = uu[0];
      if (!os_log_type_enabled(v21, uu[0]))
      {
        goto LABEL_40;
      }

      v36 = [v3 pid];
      *length = 136446466;
      *&length[4] = "internalHandleSetNetworkAgentOnInterface";
      v50 = 1024;
      v51 = v36;
      v24 = "%{public}s Unable to extract agent UUID bytes from agent request from pid %d, backtrace limit exceeded";
    }

    v37 = v21;
    v38 = v22;
    goto LABEL_39;
  }

  v6 = [v3 request];
  string = xpc_dictionary_get_string(v6, networkd_privileged_key_interface_name);

  if (!string)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    *length = 136446466;
    *&length[4] = "internalHandleSetNetworkAgentOnInterface";
    v50 = 1024;
    v51 = [v3 pid];
    LODWORD(v47) = 18;
    v20 = _os_log_send_and_compose_impl();

    uu[0] = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v20, uu, &v48))
    {
      goto LABEL_47;
    }

    if (uu[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v26 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        v27 = [v3 pid];
        *length = 136446466;
        *&length[4] = "internalHandleSetNetworkAgentOnInterface";
        v50 = 1024;
        v51 = v27;
        v28 = "%{public}s Unable to extract interface name from agent request from pid %d";
LABEL_44:
        v40 = v21;
        v41 = v26;
LABEL_45:
        _os_log_impl(&dword_181A37000, v40, v41, v28, length, 0x12u);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    if (v48 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v26 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        v39 = [v3 pid];
        *length = 136446466;
        *&length[4] = "internalHandleSetNetworkAgentOnInterface";
        v50 = 1024;
        v51 = v39;
        v28 = "%{public}s Unable to extract interface name from agent request from pid %d, backtrace limit exceeded";
        goto LABEL_44;
      }

LABEL_46:

LABEL_47:
      if (!v20)
      {
LABEL_49:
        v18 = 22;
        goto LABEL_63;
      }

LABEL_48:
      free(v20);
      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v30 = uu[0];
    v34 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (!v34)
      {
        goto LABEL_46;
      }

      v44 = [v3 pid];
      *length = 136446466;
      *&length[4] = "internalHandleSetNetworkAgentOnInterface";
      v50 = 1024;
      v51 = v44;
      v28 = "%{public}s Unable to extract interface name from agent request from pid %d, no backtrace";
      v40 = v21;
      v41 = v30;
      goto LABEL_45;
    }

    if (v34)
    {
      v35 = [v3 pid];
      *length = 136446722;
      *&length[4] = "internalHandleSetNetworkAgentOnInterface";
      v50 = 1024;
      v51 = v35;
      v52 = 2082;
      v53 = backtrace_string;
      v33 = "%{public}s Unable to extract interface name from agent request from pid %d, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v8 = [v3 request];
  v9 = xpc_dictionary_get_BOOL(v8, networkd_privileged_key_remove);

  *uu = *uuid;
  if (a2)
  {
    v10 = nw_network_agent_copy_struct(uu);
    if (!v10 || (v11 = v10, v12 = xpc_dictionary_create(0, 0, 0), xpc_dictionary_set_data(v12, "data", v11, v11[53] + 216), free(v11), !v12))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *length = 136446466;
        *&length[4] = "internalHandleSetNetworkAgentOnInterface";
        v50 = 1024;
        v51 = [v3 pid];
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Failed to find agent for request from pid %d", length, 0x12u);
      }

      v12 = 0;
      v18 = 2;
      goto LABEL_29;
    }

    *length = 0;
    data = xpc_dictionary_get_data(v12, "data", length);
    if (!data || *length < 0xD8uLL || *length != *(data + 53) + 216)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v42 = [v3 pid];
        *length = 136446466;
        *&length[4] = "internalHandleSetNetworkAgentOnInterface";
        v50 = 1024;
        v51 = v42;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Failed to parse agent for request from pid %d", length, 0x12u);
      }

      v18 = -1006;
      goto LABEL_29;
    }

    v14 = data;
    v15 = (data + 16);
    if (strncmp(data + 16, "Persistent", 0x20uLL) || strncmp(v14 + 48, "Persistent", 0x20uLL))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v3 pid];
        *length = 136447234;
        *&length[4] = "internalHandleSetNetworkAgentOnInterface";
        v50 = 1024;
        v51 = v17;
        v52 = 2082;
        v53 = string;
        v54 = 2082;
        v55 = v15;
        v56 = 2082;
        v57 = v14 + 48;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Client pid %d not allowed to modify agent on %{public}s (domain:%{public}s, type:%{public}s)", length, 0x30u);
      }

      v18 = 1;
LABEL_29:

      goto LABEL_63;
    }
  }

  if (v9)
  {
    v45 = nw_network_agent_remove_from_interface(string, uu);
  }

  else
  {
    v45 = nw_network_agent_add_to_interface(string, uu);
  }

  v18 = v45;
LABEL_63:

  return v18;
}

uint64_t internalHandleCreateKernelSocket(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = socket(32, 2, 2);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    memset(buf, 0, sizeof(buf));
    __strlcpy_chk();
    if (ioctl(v5, 0xC0644E03uLL, buf) != -1)
    {
      *&v69[12] = 0;
      v70 = 0;
      v71 = 0;
      *v69 = 139296;
      *&v69[4] = *buf;
      *&v69[8] = 0;
      if (connect(v5, v69, 0x20u))
      {
        v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        *v73 = 136447234;
        v74 = "createKernelSocket";
        v75 = 1024;
        *v76 = *buf;
        *&v76[4] = 2082;
        *&v76[6] = &buf[4];
        *&v76[14] = 1024;
        *&v76[16] = v5;
        v77 = 1024;
        LODWORD(v78[0]) = v6;
        v8 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v68 = 0;
        if (!__nwlog_fault(v8, &type, &v68))
        {
          goto LABEL_57;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (os_log_type_enabled(v9, type))
          {
            *v73 = 136447234;
            v74 = "createKernelSocket";
            v75 = 1024;
            *v76 = *buf;
            *&v76[4] = 2082;
            *&v76[6] = &buf[4];
            *&v76[14] = 1024;
            *&v76[16] = v5;
            v77 = 1024;
            LODWORD(v78[0]) = v6;
            v11 = "%{public}s unable to connect to id %u for socket control name %{public}s on fd %d %{darwin.errno}d";
LABEL_49:
            v41 = v9;
            v42 = v10;
LABEL_50:
            v43 = 40;
LABEL_55:
            _os_log_impl(&dword_181A37000, v41, v42, v11, v73, v43);
          }
        }

        else
        {
          if (v68 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v9 = gLogObj;
            v34 = type;
            v35 = os_log_type_enabled(v9, type);
            if (backtrace_string)
            {
              if (v35)
              {
                *v73 = 136447490;
                v74 = "createKernelSocket";
                v75 = 1024;
                *v76 = *buf;
                *&v76[4] = 2082;
                *&v76[6] = &buf[4];
                *&v76[14] = 1024;
                *&v76[16] = v5;
                v77 = 1024;
                LODWORD(v78[0]) = v6;
                WORD2(v78[0]) = 2082;
                *(v78 + 6) = backtrace_string;
                _os_log_impl(&dword_181A37000, v9, v34, "%{public}s unable to connect to id %u for socket control name %{public}s on fd %d %{darwin.errno}d, dumping backtrace:%{public}s", v73, 0x32u);
              }

              free(backtrace_string);
              if (!v8)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            if (!v35)
            {
              goto LABEL_56;
            }

            *v73 = 136447234;
            v74 = "createKernelSocket";
            v75 = 1024;
            *v76 = *buf;
            *&v76[4] = 2082;
            *&v76[6] = &buf[4];
            *&v76[14] = 1024;
            *&v76[16] = v5;
            v77 = 1024;
            LODWORD(v78[0]) = v6;
            v11 = "%{public}s unable to connect to id %u for socket control name %{public}s on fd %d %{darwin.errno}d, no backtrace";
            v41 = v9;
            v42 = v34;
            goto LABEL_50;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (os_log_type_enabled(v9, type))
          {
            *v73 = 136447234;
            v74 = "createKernelSocket";
            v75 = 1024;
            *v76 = *buf;
            *&v76[4] = 2082;
            *&v76[6] = &buf[4];
            *&v76[14] = 1024;
            *&v76[16] = v5;
            v77 = 1024;
            LODWORD(v78[0]) = v6;
            v11 = "%{public}s unable to connect to id %u for socket control name %{public}s on fd %d %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_49;
          }
        }

LABEL_56:

        goto LABEL_57;
      }

      v25 = fcntl(v5, 3, 0);
      if (v25 != -1)
      {
        v26 = v25;
        if (fcntl(v5, 4, v25 | 4u) != -1)
        {
          goto LABEL_94;
        }

        v27 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        *v73 = 136447234;
        v74 = "createKernelSocket";
        v75 = 1024;
        *v76 = v5;
        *&v76[4] = 1024;
        *&v76[6] = v26;
        *&v76[10] = 2082;
        *&v76[12] = &buf[4];
        v77 = 1024;
        LODWORD(v78[0]) = v27;
        v29 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v68 = 0;
        if (__nwlog_fault(v29, &type, &v68))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v30 = __nwlog_obj();
            v31 = type;
            if (os_log_type_enabled(v30, type))
            {
              *v73 = 136447234;
              v74 = "createKernelSocket";
              v75 = 1024;
              *v76 = v5;
              *&v76[4] = 1024;
              *&v76[6] = v26;
              *&v76[10] = 2082;
              *&v76[12] = &buf[4];
              v77 = 1024;
              LODWORD(v78[0]) = v27;
              v32 = "%{public}s fcntl(%d, F_SETFL, %d | O_NONBLOCK) failed for socket control name %{public}s %{darwin.errno}d";
LABEL_85:
              v53 = v30;
              v54 = v31;
LABEL_86:
              _os_log_impl(&dword_181A37000, v53, v54, v32, v73, 0x28u);
            }
          }

          else
          {
            if (v68 == 1)
            {
              v51 = __nw_create_backtrace_string();
              v30 = __nwlog_obj();
              v67 = type;
              v52 = os_log_type_enabled(v30, type);
              if (v51)
              {
                if (v52)
                {
                  *v73 = 136447490;
                  v74 = "createKernelSocket";
                  v75 = 1024;
                  *v76 = v5;
                  *&v76[4] = 1024;
                  *&v76[6] = v26;
                  *&v76[10] = 2082;
                  *&v76[12] = &buf[4];
                  v77 = 1024;
                  LODWORD(v78[0]) = v27;
                  WORD2(v78[0]) = 2082;
                  *(v78 + 6) = v51;
                  _os_log_impl(&dword_181A37000, v30, v67, "%{public}s fcntl(%d, F_SETFL, %d | O_NONBLOCK) failed for socket control name %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", v73, 0x32u);
                }

                free(v51);
                if (!v29)
                {
LABEL_94:
                  v55 = xpc_fd_create(v5);
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v56 = gLogObj;
                  v57 = v56;
                  if (v55)
                  {
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = [v3 pid];
                      *buf = 136446978;
                      *&buf[4] = "internalHandleCreateKernelSocket";
                      *&buf[12] = 1024;
                      *&buf[14] = v5;
                      *&buf[18] = 2082;
                      *&buf[20] = a2;
                      *&buf[28] = 1024;
                      *&buf[30] = v58;
                      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully created kernel socket %d with name %{public}s for pid %d", buf, 0x22u);
                    }

                    v59 = [v3 reply];
                    xpc_dictionary_set_value(v59, networkd_privileged_key_kernel_socket_fd, v55);

                    v24 = 0;
LABEL_116:
                    close(v5);

                    goto LABEL_117;
                  }

                  *buf = 136446722;
                  *&buf[4] = "internalHandleCreateKernelSocket";
                  *&buf[12] = 1024;
                  *&buf[14] = v5;
                  *&buf[18] = 2082;
                  *&buf[20] = a2;
                  v60 = _os_log_send_and_compose_impl();

                  v73[0] = OS_LOG_TYPE_ERROR;
                  v69[0] = 0;
                  if (!__nwlog_fault(v60, v73, v69))
                  {
LABEL_113:
                    if (v60)
                    {
                      free(v60);
                    }

                    v24 = -1005;
                    goto LABEL_116;
                  }

                  if (v73[0] == OS_LOG_TYPE_FAULT)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v61 = gLogObj;
                    v62 = v73[0];
                    if (os_log_type_enabled(v61, v73[0]))
                    {
                      *buf = 136446722;
                      *&buf[4] = "internalHandleCreateKernelSocket";
                      *&buf[12] = 1024;
                      *&buf[14] = v5;
                      *&buf[18] = 2082;
                      *&buf[20] = a2;
                      v63 = "%{public}s xpc_fd_create(%d) name %{public}s failed";
LABEL_111:
                      _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    if (v69[0] == 1)
                    {
                      v64 = __nw_create_backtrace_string();
                      v61 = __nwlog_obj();
                      v62 = v73[0];
                      v65 = os_log_type_enabled(v61, v73[0]);
                      if (v64)
                      {
                        if (v65)
                        {
                          *buf = 136446978;
                          *&buf[4] = "internalHandleCreateKernelSocket";
                          *&buf[12] = 1024;
                          *&buf[14] = v5;
                          *&buf[18] = 2082;
                          *&buf[20] = a2;
                          *&buf[28] = 2082;
                          *&buf[30] = v64;
                          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s xpc_fd_create(%d) name %{public}s failed, dumping backtrace:%{public}s", buf, 0x26u);
                        }

                        free(v64);
                        goto LABEL_113;
                      }

                      if (!v65)
                      {
                        goto LABEL_112;
                      }

                      *buf = 136446722;
                      *&buf[4] = "internalHandleCreateKernelSocket";
                      *&buf[12] = 1024;
                      *&buf[14] = v5;
                      *&buf[18] = 2082;
                      *&buf[20] = a2;
                      v63 = "%{public}s xpc_fd_create(%d) name %{public}s failed, no backtrace";
                      goto LABEL_111;
                    }

                    v61 = __nwlog_obj();
                    v62 = v73[0];
                    if (os_log_type_enabled(v61, v73[0]))
                    {
                      *buf = 136446722;
                      *&buf[4] = "internalHandleCreateKernelSocket";
                      *&buf[12] = 1024;
                      *&buf[14] = v5;
                      *&buf[18] = 2082;
                      *&buf[20] = a2;
                      v63 = "%{public}s xpc_fd_create(%d) name %{public}s failed, backtrace limit exceeded";
                      goto LABEL_111;
                    }
                  }

LABEL_112:

                  goto LABEL_113;
                }

LABEL_93:
                free(v29);
                goto LABEL_94;
              }

              if (!v52)
              {
                goto LABEL_87;
              }

              *v73 = 136447234;
              v74 = "createKernelSocket";
              v75 = 1024;
              *v76 = v5;
              *&v76[4] = 1024;
              *&v76[6] = v26;
              *&v76[10] = 2082;
              *&v76[12] = &buf[4];
              v77 = 1024;
              LODWORD(v78[0]) = v27;
              v32 = "%{public}s fcntl(%d, F_SETFL, %d | O_NONBLOCK) failed for socket control name %{public}s %{darwin.errno}d, no backtrace";
              v53 = v30;
              v54 = v67;
              goto LABEL_86;
            }

            v30 = __nwlog_obj();
            v31 = type;
            if (os_log_type_enabled(v30, type))
            {
              *v73 = 136447234;
              v74 = "createKernelSocket";
              v75 = 1024;
              *v76 = v5;
              *&v76[4] = 1024;
              *&v76[6] = v26;
              *&v76[10] = 2082;
              *&v76[12] = &buf[4];
              v77 = 1024;
              LODWORD(v78[0]) = v27;
              v32 = "%{public}s fcntl(%d, F_SETFL, %d | O_NONBLOCK) failed for socket control name %{public}s %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_85;
            }
          }

LABEL_87:
        }

LABEL_92:
        if (!v29)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      v44 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      *v73 = 136446978;
      v74 = "createKernelSocket";
      v75 = 2082;
      *v76 = &buf[4];
      *&v76[8] = 1024;
      *&v76[10] = v5;
      *&v76[14] = 1024;
      *&v76[16] = v44;
      v29 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v68 = 0;
      if (!__nwlog_fault(v29, &type, &v68))
      {
        goto LABEL_92;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *v73 = 136446978;
          v74 = "createKernelSocket";
          v75 = 2082;
          *v76 = &buf[4];
          *&v76[8] = 1024;
          *&v76[10] = v5;
          *&v76[14] = 1024;
          *&v76[16] = v44;
          v48 = "%{public}s get flags failed for socket control name %{public}s on fd %d %{darwin.errno}d";
LABEL_90:
          _os_log_impl(&dword_181A37000, v46, v47, v48, v73, 0x22u);
        }
      }

      else if (v68 == 1)
      {
        v49 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v47 = type;
        v50 = os_log_type_enabled(v46, type);
        if (v49)
        {
          if (v50)
          {
            *v73 = 136447234;
            v74 = "createKernelSocket";
            v75 = 2082;
            *v76 = &buf[4];
            *&v76[8] = 1024;
            *&v76[10] = v5;
            *&v76[14] = 1024;
            *&v76[16] = v44;
            v77 = 2082;
            v78[0] = v49;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s get flags failed for socket control name %{public}s on fd %d %{darwin.errno}d, dumping backtrace:%{public}s", v73, 0x2Cu);
          }

          free(v49);
          goto LABEL_92;
        }

        if (v50)
        {
          *v73 = 136446978;
          v74 = "createKernelSocket";
          v75 = 2082;
          *v76 = &buf[4];
          *&v76[8] = 1024;
          *&v76[10] = v5;
          *&v76[14] = 1024;
          *&v76[16] = v44;
          v48 = "%{public}s get flags failed for socket control name %{public}s on fd %d %{darwin.errno}d, no backtrace";
          goto LABEL_90;
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *v73 = 136446978;
          v74 = "createKernelSocket";
          v75 = 2082;
          *v76 = &buf[4];
          *&v76[8] = 1024;
          *&v76[10] = v5;
          *&v76[14] = 1024;
          *&v76[16] = v44;
          v48 = "%{public}s get flags failed for socket control name %{public}s on fd %d %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_90;
        }
      }

      goto LABEL_92;
    }

    v18 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    *v73 = 136446978;
    v74 = "createKernelSocket";
    v75 = 2082;
    *v76 = &buf[4];
    *&v76[8] = 1024;
    *&v76[10] = v5;
    *&v76[14] = 1024;
    *&v76[16] = v18;
    v8 = _os_log_send_and_compose_impl();

    v69[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, v69, &type))
    {
      goto LABEL_57;
    }

    if (v69[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v20 = v69[0];
      if (!os_log_type_enabled(v9, v69[0]))
      {
        goto LABEL_56;
      }

      *v73 = 136446978;
      v74 = "createKernelSocket";
      v75 = 2082;
      *v76 = &buf[4];
      *&v76[8] = 1024;
      *&v76[10] = v5;
      *&v76[14] = 1024;
      *&v76[16] = v18;
      v11 = "%{public}s unable to look up socket control name %{public}s on fd %d %{darwin.errno}d";
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v36 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v37 = v69[0];
        v38 = os_log_type_enabled(v9, v69[0]);
        if (v36)
        {
          if (v38)
          {
            *v73 = 136447234;
            v74 = "createKernelSocket";
            v75 = 2082;
            *v76 = &buf[4];
            *&v76[8] = 1024;
            *&v76[10] = v5;
            *&v76[14] = 1024;
            *&v76[16] = v18;
            v77 = 2082;
            v78[0] = v36;
            _os_log_impl(&dword_181A37000, v9, v37, "%{public}s unable to look up socket control name %{public}s on fd %d %{darwin.errno}d, dumping backtrace:%{public}s", v73, 0x2Cu);
          }

          free(v36);
LABEL_57:
          if (!v8)
          {
LABEL_59:
            close(v5);
            v24 = -1004;
            goto LABEL_117;
          }

LABEL_58:
          free(v8);
          goto LABEL_59;
        }

        if (!v38)
        {
          goto LABEL_56;
        }

        *v73 = 136446978;
        v74 = "createKernelSocket";
        v75 = 2082;
        *v76 = &buf[4];
        *&v76[8] = 1024;
        *&v76[10] = v5;
        *&v76[14] = 1024;
        *&v76[16] = v18;
        v11 = "%{public}s unable to look up socket control name %{public}s on fd %d %{darwin.errno}d, no backtrace";
        v41 = v9;
        v42 = v37;
LABEL_54:
        v43 = 34;
        goto LABEL_55;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v20 = v69[0];
      if (!os_log_type_enabled(v9, v69[0]))
      {
        goto LABEL_56;
      }

      *v73 = 136446978;
      v74 = "createKernelSocket";
      v75 = 2082;
      *v76 = &buf[4];
      *&v76[8] = 1024;
      *&v76[10] = v5;
      *&v76[14] = 1024;
      *&v76[16] = v18;
      v11 = "%{public}s unable to look up socket control name %{public}s on fd %d %{darwin.errno}d, backtrace limit exceeded";
    }

    v41 = v9;
    v42 = v20;
    goto LABEL_54;
  }

  v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  *buf = 136446466;
  *&buf[4] = "createKernelSocket";
  *&buf[12] = 1024;
  *&buf[14] = v12;
  v14 = _os_log_send_and_compose_impl();

  v73[0] = OS_LOG_TYPE_ERROR;
  v69[0] = 0;
  if (__nwlog_fault(v14, v73, v69))
  {
    if (v73[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = v73[0];
      if (!os_log_type_enabled(v15, v73[0]))
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      *&buf[4] = "createKernelSocket";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v17 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d";
LABEL_43:
      v39 = v15;
      v40 = v16;
      goto LABEL_44;
    }

    if (v69[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = v73[0];
      if (!os_log_type_enabled(v15, v73[0]))
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      *&buf[4] = "createKernelSocket";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v17 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_43;
    }

    v21 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v22 = v73[0];
    v23 = os_log_type_enabled(v15, v73[0]);
    if (!v21)
    {
      if (!v23)
      {
LABEL_45:

        if (!v14)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      *buf = 136446466;
      *&buf[4] = "createKernelSocket";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v17 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d, no backtrace";
      v39 = v15;
      v40 = v22;
LABEL_44:
      _os_log_impl(&dword_181A37000, v39, v40, v17, buf, 0x12u);
      goto LABEL_45;
    }

    if (v23)
    {
      *buf = 136446722;
      *&buf[4] = "createKernelSocket";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 2082;
      *&buf[20] = v21;
      _os_log_impl(&dword_181A37000, v15, v22, "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(v21);
  }

  if (v14)
  {
LABEL_22:
    free(v14);
  }

LABEL_23:
  v24 = -1004;
LABEL_117:

  return v24;
}

uint64_t handleOpportunistic(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_opportunistic_ifname);

  if (!string)
  {
    v8 = 0;
    v11 = 22;
    goto LABEL_53;
  }

  v4 = socket(2, 2, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v6 = [v1 request];
    v7 = xpc_dictionary_get_BOOL(v6, networkd_privileged_key_opportunistic_disable);

    *type = 0u;
    v46 = 0u;
    __strlcpy_chk();
    LODWORD(v46) = v7;
    if (ioctl(v5, 0xC020698BuLL, type) != -1)
    {
      v8 = DWORD1(v46);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v10 = "";
        }

        else
        {
          v10 = "un";
        }

        *buf = 136447234;
        v39 = "handleOpportunistic";
        v40 = 2082;
        *v41 = v10;
        *&v41[8] = 2082;
        *&v41[10] = string;
        *&v41[18] = 1024;
        v42 = [v1 pid];
        v43 = 2048;
        v44 = v8;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully %{public}sblocked opportunistic for %{public}s from %d count=%llu", buf, 0x30u);
      }

      v11 = 0;
LABEL_52:
      close(v5);
      goto LABEL_53;
    }

    v18 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = v19;
    if (v18 == 6)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v5;
        *&v41[4] = 1024;
        *&v41[6] = 6;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFOPPORTUNISTIC, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      v8 = 0;
      v11 = 6;
      goto LABEL_52;
    }

    *buf = 136446722;
    v39 = "handleOpportunistic";
    v40 = 1024;
    *v41 = v5;
    *&v41[4] = 1024;
    *&v41[6] = v18;
    LODWORD(v35) = 24;
    v34 = buf;
    v24 = _os_log_send_and_compose_impl();

    v37 = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v24, &v37, &v36))
    {
LABEL_49:
      v11 = v18;
      if (v24)
      {
        free(v24);
      }

      v8 = 0;
      goto LABEL_52;
    }

    if (v37 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = v37;
      if (os_log_type_enabled(v25, v37))
      {
        *buf = 136446722;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v5;
        *&v41[4] = 1024;
        *&v41[6] = v18;
        v27 = "%{public}s ioctl(%d, SIOCSIFOPPORTUNISTIC, ...) failed %{darwin.errno}d";
LABEL_47:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x18u);
      }
    }

    else
    {
      if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = v37;
        v31 = os_log_type_enabled(v25, v37);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446978;
            v39 = "handleOpportunistic";
            v40 = 1024;
            *v41 = v5;
            *&v41[4] = 1024;
            *&v41[6] = v18;
            *&v41[10] = 2082;
            *&v41[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s ioctl(%d, SIOCSIFOPPORTUNISTIC, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_49;
        }

        if (!v31)
        {
          goto LABEL_48;
        }

        *buf = 136446722;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v5;
        *&v41[4] = 1024;
        *&v41[6] = v18;
        v27 = "%{public}s ioctl(%d, SIOCSIFOPPORTUNISTIC, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_47;
      }

      v25 = __nwlog_obj();
      v26 = v37;
      if (os_log_type_enabled(v25, v37))
      {
        *buf = 136446722;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v5;
        *&v41[4] = 1024;
        *&v41[6] = v18;
        v27 = "%{public}s ioctl(%d, SIOCSIFOPPORTUNISTIC, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_47;
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  *buf = 136446466;
  v39 = "handleOpportunistic";
  v40 = 1024;
  *v41 = v12;
  LODWORD(v35) = 18;
  v34 = buf;
  v14 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v37 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v14, type, &v37))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (os_log_type_enabled(v15, type[0]))
      {
        *buf = 136446466;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v12;
        v17 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_30:
        v28 = v15;
        v29 = v16;
LABEL_31:
        _os_log_impl(&dword_181A37000, v28, v29, v17, buf, 0x12u);
      }
    }

    else
    {
      if (v37 == OS_LOG_TYPE_INFO)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v22 = type[0];
        v23 = os_log_type_enabled(v15, type[0]);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            v39 = "handleOpportunistic";
            v40 = 1024;
            *v41 = v12;
            *&v41[4] = 2082;
            *&v41[6] = v21;
            _os_log_impl(&dword_181A37000, v15, v22, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v21);
          goto LABEL_33;
        }

        if (!v23)
        {
          goto LABEL_32;
        }

        *buf = 136446466;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v12;
        v17 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v28 = v15;
        v29 = v22;
        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (os_log_type_enabled(v15, type[0]))
      {
        *buf = 136446466;
        v39 = "handleOpportunistic";
        v40 = 1024;
        *v41 = v12;
        v17 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_32:
  }

LABEL_33:
  v11 = v12;
  if (v14)
  {
    free(v14);
  }

  v8 = 0;
LABEL_53:
  v32 = [v1 reply];
  xpc_dictionary_set_uint64(v32, networkd_privileged_key_opportunistic_inuse, v8);

  return v11;
}

void NWPrivilegedHelperStart(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __NWPrivilegedHelperStart_block_invoke;
  block[3] = &unk_1E6A3D868;
  v5 = v1;
  v2 = NWPrivilegedHelperStart_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&NWPrivilegedHelperStart_onceToken, block);
  }
}

void __NWPrivilegedHelperStart_block_invoke(uint64_t a1)
{
  v1 = [[NWPrivilegedHelper alloc] initWithQueue:*(a1 + 32)];
  v2 = NWPrivilegedHelperStart_sNWPrivilegedHelper;
  NWPrivilegedHelperStart_sNWPrivilegedHelper = v1;
}

void NWPrivilegedHelperHandleEvent(void *a1, const char *a2)
{
  v3 = a1;
  if (!strcmp(a2, "com.apple.fsevents.matching"))
  {
    v4 = +[ManagedNetworkSettings sharedMNS];
    v5 = [v4 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __handleEventForManagedNetworkSettings_block_invoke;
    block[3] = &unk_1E6A3D868;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

BOOL nw_remote_director_write_request(uint64_t a1, uint64_t a2, void *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v77 = a1;
  v78 = a2;
  v76 = v5;
  while (1)
  {
    v6 = [v5 data];
    v7 = [v6 length];

    v8 = [v5 data];
    v9 = [v5 clientID];
    v10 = v8;
    v11 = v9;
    v12 = [v10 length];
    v13 = [v10 bytes];
    v80 = v11;
    if (!a1)
    {
      v53 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_remote_director_write_one";
      LODWORD(v75) = 12;
      v74 = buf;
      v54 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v83) = 0;
      if (__nwlog_fault(v54, type, &v83))
      {
        v55 = v7;
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v56 = __nwlog_obj();
          v57 = type[0];
          if (os_log_type_enabled(v56, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_remote_director_write_one";
            v58 = v56;
            v59 = v57;
            v60 = "%{public}s called with null protocol";
LABEL_90:
            _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
          }

LABEL_91:

          goto LABEL_92;
        }

        if (v83 != 1)
        {
          v56 = __nwlog_obj();
          v71 = type[0];
          if (os_log_type_enabled(v56, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_remote_director_write_one";
            v58 = v56;
            v59 = v71;
            v60 = "%{public}s called with null protocol, backtrace limit exceeded";
            goto LABEL_90;
          }

          goto LABEL_91;
        }

        backtrace_string = __nw_create_backtrace_string();
        v56 = __nwlog_obj();
        v64 = type[0];
        v65 = os_log_type_enabled(v56, type[0]);
        if (!backtrace_string)
        {
          if (v65)
          {
            *buf = 136446210;
            *&buf[4] = "nw_remote_director_write_one";
            v58 = v56;
            v59 = v64;
            v60 = "%{public}s called with null protocol, no backtrace";
            goto LABEL_90;
          }

          goto LABEL_91;
        }

        if (v65)
        {
          *buf = 136446466;
          *&buf[4] = "nw_remote_director_write_one";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v66 = v56;
          v67 = v64;
          v68 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_80:
          _os_log_impl(&dword_181A37000, v66, v67, v68, buf, 0x16u);
        }

LABEL_81:

        free(backtrace_string);
LABEL_92:
        v7 = v55;
      }

LABEL_93:
      if (v54)
      {
        free(v54);
      }

      v19 = 0;
      goto LABEL_22;
    }

    if (!a2)
    {
      v61 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_remote_director_write_one";
      LODWORD(v75) = 12;
      v74 = buf;
      v54 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v83) = 0;
      if (__nwlog_fault(v54, type, &v83))
      {
        v55 = v7;
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v56 = __nwlog_obj();
          v62 = type[0];
          if (os_log_type_enabled(v56, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_remote_director_write_one";
            v58 = v56;
            v59 = v62;
            v60 = "%{public}s called with null output_handler";
            goto LABEL_90;
          }

          goto LABEL_91;
        }

        if (v83 != 1)
        {
          v56 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v56, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_remote_director_write_one";
            v58 = v56;
            v59 = v72;
            v60 = "%{public}s called with null output_handler, backtrace limit exceeded";
            goto LABEL_90;
          }

          goto LABEL_91;
        }

        backtrace_string = __nw_create_backtrace_string();
        v56 = __nwlog_obj();
        v69 = type[0];
        v70 = os_log_type_enabled(v56, type[0]);
        if (!backtrace_string)
        {
          if (v70)
          {
            *buf = 136446210;
            *&buf[4] = "nw_remote_director_write_one";
            v58 = v56;
            v59 = v69;
            v60 = "%{public}s called with null output_handler, no backtrace";
            goto LABEL_90;
          }

          goto LABEL_91;
        }

        if (v70)
        {
          *buf = 136446466;
          *&buf[4] = "nw_remote_director_write_one";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v66 = v56;
          v67 = v69;
          v68 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      goto LABEL_93;
    }

    v14 = v13;
    v83 = 0;
    v84 = 0;
    v15 = (*(*(a2 + 24) + 88))(a2, a1, 1, v12, 1, &v83);
    v16 = v83;
    if (v83 && v15)
    {
      v87[0] = 0;
      v87[1] = 0;
      v79 = v7;
      if (v11)
      {
        v17 = v87;
        [v11 getUUIDBytes:v87];
        v16 = v83;
      }

      else
      {
        v17 = 0;
      }

      v81 = 0;
      v82 = &v81;
      v20 = v16;
      if (v20)
      {
        v21 = v20;
        v19 = 0;
        if (!v17)
        {
          while (1)
          {
            v50 = *(v21 + 32);
            if (!v50 && !*(v21 + 40))
            {
              v50 = 0;
            }

            v51 = v50;
            v41 = *(v21 + 112);
            if (v41)
            {
              if ((*(v21 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v21, *(v21 + 88)))
              {
                LODWORD(v41) = *(v21 + 52);
                v52 = *(v21 + 56);
                if (v41)
                {
                  LODWORD(v41) = v41 - (v52 + *(v21 + 60));
                }

                v42 = (*(v21 + 112) + v52);
                goto LABEL_48;
              }

              LODWORD(v41) = 0;
            }

            v42 = 0;
LABEL_48:
            if (v41 >= v12 - v19)
            {
              v43 = v12 - v19;
            }

            else
            {
              v43 = v41;
            }

            memcpy(v42, (v14 + v19), v43);
            v19 += v43;
            nw_frame_claim(v21, v44, v43, 0);
            nw_frame_collapse(v21);
            nw_frame_unclaim(v21, v45, v43, 0);
            v46 = *(v21 + 32);
            v47 = *(v21 + 40);
            v48 = (v46 + 40);
            if (!v46)
            {
              v48 = &v84;
            }

            *v48 = v47;
            *v47 = v46;
            v49 = v82;
            *(v21 + 32) = 0;
            *(v21 + 40) = v49;
            *v49 = v21;
            v82 = (v21 + 32);

            v21 = v51;
            if (!v51)
            {
              goto LABEL_16;
            }
          }
        }

        while (2)
        {
          v38 = *(v21 + 32);
          if (!v38 && !*(v21 + 40))
          {
            v38 = 0;
          }

          v39 = v38;
          if ((*(v21 + 204) & 0x100) != 0 && g_channel_set_flow_handler)
          {
            g_channel_set_flow_handler(v21, v17);
          }

          v29 = *(v21 + 112);
          if (v29)
          {
            if ((*(v21 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v21, *(v21 + 88)))
            {
              LODWORD(v29) = *(v21 + 52);
              v40 = *(v21 + 56);
              if (v29)
              {
                LODWORD(v29) = v29 - (v40 + *(v21 + 60));
              }

              v30 = (*(v21 + 112) + v40);
LABEL_27:
              if (v29 >= v12 - v19)
              {
                v31 = v12 - v19;
              }

              else
              {
                v31 = v29;
              }

              memcpy(v30, (v14 + v19), v31);
              v19 += v31;
              nw_frame_claim(v21, v32, v31, 0);
              nw_frame_collapse(v21);
              nw_frame_unclaim(v21, v33, v31, 0);
              v34 = *(v21 + 32);
              v35 = *(v21 + 40);
              v36 = (v34 + 40);
              if (!v34)
              {
                v36 = &v84;
              }

              *v36 = v35;
              *v35 = v34;
              v37 = v82;
              *(v21 + 32) = 0;
              *(v21 + 40) = v37;
              *v37 = v21;
              v82 = (v21 + 32);

              v21 = v39;
              if (!v39)
              {
                goto LABEL_16;
              }

              continue;
            }

            LODWORD(v29) = 0;
          }

          break;
        }

        v30 = 0;
        goto LABEL_27;
      }

      v19 = 0;
LABEL_16:
      a2 = v78;
      (*(*(v78 + 24) + 96))(v78, &v81);
      v22 = v83;
      v5 = v76;
      a1 = v77;
      v7 = v79;
      if (v83)
      {
        v83[5] = type;
        *type = v22;
        v86 = v84;
        v83 = 0;
        v84 = &v83;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_21_49595;
        v89 = 0;
        do
        {
          v23 = *type;
          if (!*type)
          {
            break;
          }

          v24 = *(*type + 32);
          v25 = *(*type + 40);
          v26 = (v24 + 40);
          if (!v24)
          {
            v26 = &v86;
          }

          *v26 = v25;
          *v25 = v24;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_remote_director_write_one";
        *&buf[12] = 1024;
        *&buf[14] = v12;
        *&buf[18] = 2114;
        *&buf[20] = v11;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s Failed to write %u bytes for %{public}@", buf, 0x1Cu);
      }

      v19 = 0;
    }

LABEL_22:

    if (!v19 || v7 <= v19)
    {
      break;
    }

    v27 = [v5 data];
    v28 = [v27 subdataWithRange:{v19, v7 - v19}];
    [v5 setData:v28];
  }

  return v19 != 0;
}

void nw_remote_director_output_available(uint64_t a1, uint64_t a2)
{
  obj = *(a1 + 40);
  objc_sync_enter(obj);
  while (1)
  {
    v4 = [obj writeRequests];
    v5 = [v4 count];

    if (!v5)
    {
      break;
    }

    v6 = [obj writeRequests];
    v7 = [v6 firstObject];

    if (!nw_remote_director_write_request(a1, a2, v7))
    {

      break;
    }

    v8 = [obj writeRequests];
    [v8 removeObjectAtIndex:0];
  }

  objc_sync_exit(obj);
}

uint64_t nw_remote_director_input_available(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0;
  result = (*(*(a2 + 24) + 80))(a2, a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, &v36);
  if (result)
  {
    v4 = &qword_1ED411000;
    v29 = v2;
    while (1)
    {
      v34 = *(v2 + 40);
      v31 = [v34 maximumDataChunkSize];
      v32 = [MEMORY[0x1E695DF70] array];
      v7 = v36;
      v39 = 0uLL;
      if (!v7)
      {
        goto LABEL_3;
      }

      v5 = 0;
      v35 = 0;
      v33 = 0;
      do
      {
        v13 = v7[4];
        if (!v13 && !v7[5])
        {
          v13 = 0;
        }

        v14 = v13;
        if (v7[14])
        {
          if ((*(v7 + 102) & 0x100) == 0 || (v15 = v4[423]) == 0 || v15(v7, v7[11]))
          {
            v16 = *(v7 + 13);
            if (v16)
            {
              v17 = *(v7 + 14);
              v18 = v17 + *(v7 + 15);
              v19 = (v16 - v18);
              if (v16 != v18)
              {
                v20 = v7[14];
                if (v20)
                {
                  v21 = 0;
                  v38 = 0uLL;
                  if (*(v7 + 205))
                  {
                    v22 = 0;
                    if (g_channel_get_flow_handler)
                    {
                      g_channel_get_flow_handler(v7);
                      v21 = *(&v38 + 1);
                      v22 = v38;
                    }
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = v22 == v39 && v21 == *(&v39 + 1);
                  v24 = v23;
                  if (v23 && [v5 length] + v19 <= v31)
                  {
                    goto LABEL_38;
                  }

                  if (v5 && v35)
                  {
                    v25 = [v34 createSendDataMessageForClientID:v35 data:v5 receiveWindow:0];
                    [v32 addObject:v25];

                    v5 = 0;
                  }

                  if (v24)
                  {
LABEL_38:
                    v26 = v33;
                  }

                  else
                  {
                    v39 = v38;
                    v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v39];

                    v26 = [v34 dataModeForFlowID:v27];
                    v35 = v27;
                  }

                  v33 = v26;
                  v4 = &qword_1ED411000;
                  if (v26 == 2)
                  {
                    if (!v5)
                    {
                      v5 = [MEMORY[0x1E695DF88] data];
                    }

                    [v5 appendBytes:v20 + v17 length:v19];
                  }

                  else
                  {
                    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v20 + v17 length:v19];
                    v9 = [v34 createSendDataMessageForClientID:v35 data:v8 receiveWindow:0];
                    [v32 addObject:v9];
                  }
                }
              }
            }
          }
        }

        v10 = v7[4];
        v11 = v7[5];
        v12 = (v10 + 40);
        if (!v10)
        {
          v12 = &v37;
        }

        *v12 = v11;
        *v11 = v10;
        v7[4] = 0;
        v7[5] = 0;
        nw_frame_finalize(v7);

        v7 = v14;
      }

      while (v14);
      if (!v5)
      {
        v2 = v29;
        v7 = v35;
        goto LABEL_4;
      }

      v2 = v29;
      v7 = v35;
      if (v35)
      {
        break;
      }

LABEL_4:
      v6 = [v34 delegate];
      [v6 sendRemoteCommands:v32];

      v36 = 0;
      v37 = 0;
      result = (*(*(a2 + 24) + 80))();
      if (!result)
      {
        return result;
      }
    }

    v28 = [v34 createSendDataMessageForClientID:v35 data:v5 receiveWindow:0];
    [v32 addObject:v28];

LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  return result;
}

uint64_t areNSSetsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 count])
  {

    v3 = 0;
  }

  if ([v4 count])
  {
    v5 = v3 == v4;
    if (v3 != v4 && v4 && v3)
    {
      v5 = [v3 isEqualToSet:v4];
    }
  }

  else
  {

    v4 = 0;
    v5 = v3 == 0;
  }

  return v5;
}

void sub_1827ADA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46581(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1827ADCC8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1827ADEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827AE188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827AE558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827AE978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827AF3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827AF80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827AFC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B0128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B0540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B0958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B0D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B10CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B1594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B1984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B1DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B22B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B2638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B298C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B2D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B30F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827B355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __isWebKitNetworking_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 hasPrefix:@"com.apple.WebKit.Networking"];

  if (v2)
  {
    isWebKitNetworking_result = 1;
  }
}

uint64_t nw_protocol_register_many_to_one(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  if (*(a1 + 36) != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v35 = "nw_protocol_register_many_to_one";
    v36 = 2082;
    v37 = a1;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v16, &type, &v32))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v35 = "nw_protocol_register_many_to_one";
      v36 = 2082;
      v37 = a1;
      v19 = "%{public}s Protocol identifier %{public}s is not a many-to-one protocol";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      v29 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446722;
          v35 = "nw_protocol_register_many_to_one";
          v36 = 2082;
          v37 = a1;
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Protocol identifier %{public}s is not a many-to-one protocol, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
LABEL_55:
        if (v16)
        {
          free(v16);
        }

        return 0;
      }

      if (!v29)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v35 = "nw_protocol_register_many_to_one";
      v36 = 2082;
      v37 = a1;
      v19 = "%{public}s Protocol identifier %{public}s is not a many-to-one protocol, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v35 = "nw_protocol_register_many_to_one";
      v36 = 2082;
      v37 = a1;
      v19 = "%{public}s Protocol identifier %{public}s is not a many-to-one protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0x16u);
    goto LABEL_55;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v6 = &g_registration_list;
  while (1)
  {
    v6 = *v6;
    v7 = v6 == 0;
    if (!v6)
    {
      break;
    }

    if (*a1 == v6[4] && *(a1 + 8) == v6[5] && *(a1 + 16) == v6[6] && *(a1 + 24) == v6[7] && *(a1 + 32) == v6[8])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v35 = "nw_protocol_register_many_to_one";
      v36 = 2082;
      v37 = a1;
      v12 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v32 = 0;
      if (!__nwlog_fault(v12, &type, &v32))
      {
        goto LABEL_61;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v32 == 1)
        {
          v30 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          v31 = os_log_type_enabled(gLogObj, type);
          if (v30)
          {
            if (v31)
            {
              *buf = 136446722;
              v35 = "nw_protocol_register_many_to_one";
              v36 = 2082;
              v37 = a1;
              v38 = 2082;
              v39 = v30;
              _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Protocol identifier %{public}s is already registered, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v30);
            goto LABEL_61;
          }

          if (!v31)
          {
            goto LABEL_61;
          }

          *buf = 136446466;
          v35 = "nw_protocol_register_many_to_one";
          v36 = 2082;
          v37 = a1;
          v15 = "%{public}s Protocol identifier %{public}s is already registered, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_61;
          }

          *buf = 136446466;
          v35 = "nw_protocol_register_many_to_one";
          v36 = 2082;
          v37 = a1;
          v15 = "%{public}s Protocol identifier %{public}s is already registered, backtrace limit exceeded";
        }

LABEL_60:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0x16u);
        goto LABEL_61;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v35 = "nw_protocol_register_many_to_one";
        v36 = 2082;
        v37 = a1;
        v15 = "%{public}s Protocol identifier %{public}s is already registered";
        goto LABEL_60;
      }

LABEL_61:
      if (v12)
      {
        free(v12);
      }

LABEL_63:
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      return v7;
    }
  }

  v20 = malloc_type_calloc(1uLL, 0x78uLL, 0xA6170F9EuLL);
  if (v20)
  {
LABEL_29:
    v23 = *a1;
    v24 = *(a1 + 16);
    v20[8] = *(a1 + 32);
    *(v20 + 2) = v23;
    *(v20 + 3) = v24;
    v20[11] = a2;
    v20[13] = a3;
    v25 = g_registration_list;
    *v20 = g_registration_list;
    if (v25)
    {
      *(v25 + 8) = v20;
    }

    g_registration_list = v20;
    v20[1] = &g_registration_list;
    if (a3)
    {
      v26 = g_many_to_one_list;
      v20[2] = g_many_to_one_list;
      if (v26)
      {
        *(v26 + 24) = v20 + 2;
      }

      g_many_to_one_list = v20;
      v20[3] = &g_many_to_one_list;
    }

    v20[9] = _nw_array_create();
    if (gLogDatapath == 1)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v35 = "nw_protocol_register_many_to_one";
        v36 = 2080;
        v37 = a1;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s created new registration for many-to-one protocol %s", buf, 0x16u);
      }
    }

    goto LABEL_63;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v35 = "nw_protocol_register_many_to_one";
  v36 = 2048;
  v37 = 1;
  v38 = 2048;
  v39 = 120;
  v21 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v21);
  if (!result)
  {
    free(v21);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

BOOL nw_protocol_unregister(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v2 = &g_registration_list;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*a1 == v2[4] && a1[1] == v2[5] && a1[2] == v2[6] && a1[3] == v2[7] && a1[4] == v2[8])
    {
      v7 = *v2;
      v8 = v2[1];
      if (*v2)
      {
        *(v7 + 8) = v8;
      }

      *v8 = v7;
      v9 = v2[2];
      v10 = v2[3];
      if (v9)
      {
        *(v9 + 24) = v10;
      }

      *v10 = v9;
      v11 = v2[14];
      if (v11)
      {
        os_release(v11);
        v2[14] = 0;
      }

      free(v2);
      goto LABEL_26;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v14 = 136446466;
    v15 = "nw_protocol_unregister";
    v16 = 2082;
    v17 = a1;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s Protocol %{public}s is not registered", &v14, 0x16u);
  }

LABEL_26:
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  return v2 != 0;
}

BOOL nw_protocol_is_registered(void *a1)
{
  nw_allow_use_of_dispatch_internal();
  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v2 = &g_registration_list;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = *a1 == v2[4] && a1[1] == v2[5];
    v4 = v3 && a1[2] == v2[6];
    v5 = v4 && a1[3] == v2[7];
  }

  while (!v5 || a1[4] != v2[8]);
  v7 = v2 != 0;
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  return v7;
}

uint64_t nw_protocol_copy_shared_connection_state(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_copy_shared_connection_state";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v19, &type, &v29))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_copy_shared_connection_state";
        v22 = "%{public}s called with null protocol";
LABEL_55:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }

LABEL_56:
      if (v19)
      {
        free(v19);
      }

      return 0;
    }

    if (v29 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_copy_shared_connection_state";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v24 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_copy_shared_connection_state";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v24)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_copy_shared_connection_state";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_45:
      _os_log_impl(&dword_181A37000, v20, v21, v25, buf, 0x16u);
    }

LABEL_46:
    free(backtrace_string);
    goto LABEL_56;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_copy_shared_connection_state";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v19, &type, &v29))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_copy_shared_connection_state";
        v22 = "%{public}s called with null context";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v29 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_copy_shared_connection_state";
        v22 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v26 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_copy_shared_connection_state";
        v22 = "%{public}s called with null context, no backtrace";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_copy_shared_connection_state";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v25 = "%{public}s called with null context, dumping backtrace:%{public}s";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v7 = a3;
  v8 = v7;
  if ((v7[19] & 8) == 0)
  {
    dispatch_assert_queue_V2(v7[1]);
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v32 = 0;
  v9 = a1;
  do
  {
    if (*(*&buf[8] + 24))
    {
      break;
    }

    v10 = *(v9 + 16);
    if (*(v10 + 36) == 2)
    {
      v11 = &g_registration_list;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        if (*v10 == v11[4] && *(v10 + 8) == v11[5] && *(v10 + 16) == v11[6] && *(v10 + 24) == v11[7] && *(v10 + 32) == v11[8])
        {
          v16 = v11[9];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 0x40000000;
          aBlock[2] = __nw_protocol_copy_shared_connection_state_block_invoke;
          aBlock[3] = &unk_1E6A334B8;
          aBlock[4] = buf;
          aBlock[5] = v9;
          aBlock[6] = a1;
          aBlock[7] = a2;
          aBlock[8] = v8;
          v28 = a4;
          if (v16)
          {
            _nw_array_apply(v16, aBlock);
          }

          break;
        }
      }
    }

    v9 = *(v9 + 32);
  }

  while (v9);
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  v17 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v17;
}

BOOL __nw_protocol_copy_shared_connection_state_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = nw_endpoint_copy_registrar_for_identifier(a3, *(*(a1 + 40) + 16), 0);
  if (v4)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = v4;
    v10 = v5;
    v11 = v7;
    v12 = v11;
    if (v6)
    {
      if (v10)
      {
        if (v11)
        {
          v13 = v11;
          v14 = v13;
          if ((v13[19] & 8) == 0)
          {
            dispatch_assert_queue_V2(v13[1]);
          }

          *type = 0;
          v38 = type;
          v39 = 0x3032000000;
          v40 = __Block_byref_object_copy__4524;
          v41 = __Block_byref_object_dispose__4525;
          v42 = 0;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 3221225472;
          *&aBlock[16] = __nw_protocol_instance_registrar_copy_shared_connection_state_block_invoke;
          v45 = &unk_1E6A2C0B0;
          v46 = v9;
          v50 = v6;
          v51 = v8;
          v47 = v14;
          v48 = v10;
          v49 = type;
          v15 = _Block_copy(aBlock);
          os_unfair_lock_lock(v9 + 2);
          v15[2](v15);
          os_unfair_lock_unlock(v9 + 2);

          v16 = *(v38 + 5);
          _Block_object_dispose(type, 8);

          goto LABEL_8;
        }

        v24 = __nwlog_obj();
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
        v19 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (__nwlog_fault(v19, type, &v43))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v20 = __nwlog_obj();
            v25 = type[0];
            if (os_log_type_enabled(v20, type[0]))
            {
              *aBlock = 136446210;
              *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
              _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null context", aBlock, 0xCu);
            }

LABEL_58:

            goto LABEL_59;
          }

          if (v43 != 1)
          {
            v20 = __nwlog_obj();
            v36 = type[0];
            if (os_log_type_enabled(v20, type[0]))
            {
              *aBlock = 136446210;
              *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
              _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null context, backtrace limit exceeded", aBlock, 0xCu);
            }

            goto LABEL_58;
          }

          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v32 = type[0];
          v33 = os_log_type_enabled(v20, type[0]);
          if (!backtrace_string)
          {
            if (v33)
            {
              *aBlock = 136446210;
              *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
              _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null context, no backtrace", aBlock, 0xCu);
            }

            goto LABEL_58;
          }

          if (v33)
          {
            *aBlock = 136446466;
            *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
            *&aBlock[12] = 2082;
            *&aBlock[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null context, dumping backtrace:%{public}s", aBlock, 0x16u);
          }

          free(backtrace_string);
        }

LABEL_59:
        if (!v19)
        {
LABEL_61:
          v16 = 0;
LABEL_8:

          *(*(*(a1 + 32) + 8) + 24) = v16;
          os_release(v9);
          return *(*(*(a1 + 32) + 8) + 24) == 0;
        }

LABEL_60:
        free(v19);
        goto LABEL_61;
      }

      v22 = __nwlog_obj();
      *aBlock = 136446210;
      *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
      v19 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v19, type, &v43))
      {
        goto LABEL_59;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v23 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null definition", aBlock, 0xCu);
        }

        goto LABEL_58;
      }

      if (v43 != 1)
      {
        v20 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
          _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null definition, backtrace limit exceeded", aBlock, 0xCu);
        }

        goto LABEL_58;
      }

      v26 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v29 = type[0];
      v30 = os_log_type_enabled(v20, type[0]);
      if (!v26)
      {
        if (v30)
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null definition, no backtrace", aBlock, 0xCu);
        }

        goto LABEL_58;
      }

      if (v30)
      {
        *aBlock = 136446466;
        *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
        *&aBlock[12] = 2082;
        *&aBlock[14] = v26;
        _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null definition, dumping backtrace:%{public}s", aBlock, 0x16u);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      *aBlock = 136446210;
      *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
      v19 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v19, type, &v43))
      {
        goto LABEL_59;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol", aBlock, 0xCu);
        }

        goto LABEL_58;
      }

      if (v43 != 1)
      {
        v20 = __nwlog_obj();
        v34 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
          _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null protocol, backtrace limit exceeded", aBlock, 0xCu);
        }

        goto LABEL_58;
      }

      v26 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type[0];
      v28 = os_log_type_enabled(v20, type[0]);
      if (!v26)
      {
        if (v28)
        {
          *aBlock = 136446210;
          *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null protocol, no backtrace", aBlock, 0xCu);
        }

        goto LABEL_58;
      }

      if (v28)
      {
        *aBlock = 136446466;
        *&aBlock[4] = "nw_protocol_instance_registrar_copy_shared_connection_state";
        *&aBlock[12] = 2082;
        *&aBlock[14] = v26;
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", aBlock, 0x16u);
      }
    }

    free(v26);
    if (!v19)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void nw_protocol_enumerate_instances(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_enumerate_instances";
    v10 = _os_log_send_and_compose_impl();
    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &v20, &v19))
    {
      goto LABEL_51;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v20;
      if (!os_log_type_enabled(v11, v20))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_enumerate_instances";
      v13 = "%{public}s called with null identifier";
      goto LABEL_50;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = v20;
      if (!os_log_type_enabled(v11, v20))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_enumerate_instances";
      v13 = "%{public}s called with null identifier, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = v20;
    v15 = os_log_type_enabled(v11, v20);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_enumerate_instances";
      v13 = "%{public}s called with null identifier, no backtrace";
      goto LABEL_50;
    }

    if (v15)
    {
      *buf = 136446466;
      v22 = "nw_protocol_enumerate_instances";
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_51:
    if (!v10)
    {
      return;
    }

    goto LABEL_52;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_enumerate_instances";
    v10 = _os_log_send_and_compose_impl();
    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &v20, &v19))
    {
      goto LABEL_51;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v20;
      if (!os_log_type_enabled(v11, v20))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_enumerate_instances";
      v13 = "%{public}s called with null enumerator";
      goto LABEL_50;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = v20;
      if (!os_log_type_enabled(v11, v20))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_enumerate_instances";
      v13 = "%{public}s called with null enumerator, backtrace limit exceeded";
      goto LABEL_50;
    }

    v16 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = v20;
    v17 = os_log_type_enabled(v11, v20);
    if (v16)
    {
      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_protocol_enumerate_instances";
        v23 = 2082;
        v24 = v16;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v16);
      if (!v10)
      {
        return;
      }

LABEL_52:
      free(v10);
      return;
    }

    if (v17)
    {
      *buf = 136446210;
      v22 = "nw_protocol_enumerate_instances";
      v13 = "%{public}s called with null enumerator, no backtrace";
LABEL_50:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  nw_allow_use_of_dispatch_internal();
  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v4 = &g_registration_list;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a1 == v4[4] && a1[1] == v4[5] && a1[2] == v4[6] && a1[3] == v4[7] && a1[4] == v4[8])
    {
      v9 = v4[9];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_protocol_enumerate_instances_block_invoke;
      aBlock[3] = &unk_1E6A334E0;
      aBlock[4] = a2;
      aBlock[5] = a1;
      if (v9)
      {
        _nw_array_apply(v9, aBlock);
      }

      break;
    }
  }

  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
}

uint64_t __nw_protocol_enumerate_instances_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = v3;
  v7 = v6;
  if (!v5)
  {
    v12 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v13, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null registered_endpoint", aBlock, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *aBlock = 136446466;
          *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
          *&aBlock[12] = 2082;
          *&aBlock[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null registered_endpoint, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v13)
        {
          goto LABEL_7;
        }

LABEL_58:
        free(v13);
        goto LABEL_7;
      }

      if (v22)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null registered_endpoint, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v14, type))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null registered_endpoint, backtrace limit exceeded", aBlock, 0xCu);
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!v4)
  {
    v16 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v13, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v14, type))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null identifier", aBlock, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v14 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v14, type))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v29, "%{public}s called with null identifier, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_56;
    }

    v23 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!v23)
    {
      if (v25)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null identifier, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_56;
    }

    if (v25)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
      *&aBlock[12] = 2082;
      *&aBlock[14] = v23;
      _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null identifier, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    v18 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v13, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null enumerator", aBlock, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v14 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v14, type))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null enumerator, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_56;
    }

    v23 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v14, type);
    if (!v23)
    {
      if (v27)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
        _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null enumerator, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_56;
    }

    if (v27)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_protocol_instance_registrar_enumerate_instances";
      *&aBlock[12] = 2082;
      *&aBlock[14] = v23;
      _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null enumerator, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

LABEL_37:

    free(v23);
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

  v8 = v5;
  v9 = _nw_endpoint_copy_registrar_for_identifier(v8, v4, 0);

  if (v9)
  {
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = __nw_protocol_instance_registrar_enumerate_instances_block_invoke;
    v34 = &unk_1E6A3B530;
    v35 = v9;
    v37 = v4;
    v36 = v7;
    v10 = _Block_copy(aBlock);
    os_unfair_lock_lock(v9 + 2);
    v10[2](v10);
    os_unfair_lock_unlock(v9 + 2);
  }

LABEL_7:
  return 1;
}

uint64_t nw_protocol_register_parameter_modifier(uint64_t a1)
{
  nw_allow_use_of_dispatch_internal();
  os_unfair_lock_lock(&nw_protocol_modify_lock);
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0xA8327864uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v3 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v3);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v3);
    v2 = 0;
  }

  v2[2] = a1;
  v5 = g_modifier_list;
  *v2 = g_modifier_list;
  if (v5)
  {
    *(v5 + 8) = v2;
  }

  g_modifier_list = v2;
  v2[1] = &g_modifier_list;
  has_modifiers = 1;
  os_unfair_lock_unlock(&nw_protocol_modify_lock);
  return 1;
}

const char *nw_protocol_notification_type_to_string(unsigned int a1)
{
  if (a1 > 0x1E)
  {
    return "unknown";
  }

  else
  {
    return off_1E6A33500[a1];
  }
}

BOOL nw_protocol_input_handler_is_connection_flow(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_input_handler_is_connection_flow";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v9 = 0;
    if (!__nwlog_fault(v3, &type, &v9))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v12 = "nw_protocol_input_handler_is_connection_flow";
      v6 = "%{public}s called with null input_handler";
    }

    else if (v9 == 1)
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
          v12 = "nw_protocol_input_handler_is_connection_flow";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v8)
      {
LABEL_20:
        if (v3)
        {
          free(v3);
        }

        return 0;
      }

      *buf = 136446210;
      v12 = "nw_protocol_input_handler_is_connection_flow";
      v6 = "%{public}s called with null input_handler, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v12 = "nw_protocol_input_handler_is_connection_flow";
      v6 = "%{public}s called with null input_handler, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_20;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  return !strcmp(*(a1 + 16), "endpoint_flow") || strcmp(v1, "flow_replay") == 0;
}

const char *nw_protocol_input_handler_is_flow_replay(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 16);
    if (result)
    {
      return (strcmp(result, "flow_replay") == 0);
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_input_handler_is_flow_replay";
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
        v11 = "nw_protocol_input_handler_is_flow_replay";
        v5 = "%{public}s called with null input_handler";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
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
          v11 = "nw_protocol_input_handler_is_flow_replay";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_19;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_protocol_input_handler_is_flow_replay";
        v5 = "%{public}s called with null input_handler, no backtrace";
        goto LABEL_18;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_input_handler_is_flow_replay";
        v5 = "%{public}s called with null input_handler, backtrace limit exceeded";
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_invoke_dealloc(id a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    {
      nw_invoke_dealloc(void *)::$_0::operator() const(void *)::deallocSelector = sel_registerName("dealloc");
    }

    v2 = nw_invoke_dealloc(void *)::$_0::operator() const(void *)::deallocSelector;

    [a1 v2];
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_invoke_dealloc";
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
        v14 = "nw_invoke_dealloc";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null obj", buf, 0xCu);
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
          v14 = "nw_invoke_dealloc";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null obj, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_invoke_dealloc";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null obj, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_invoke_dealloc";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null obj, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v4)
  {
    free(v4);
  }
}

void __nw_utilities_set_log_intercept_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1 == 1 && nw_utilities_set_log_intercept::stream == 0)
  {
    if (nw_utilities_get_log_event_source(void)::once != -1)
    {
      dispatch_once(&nw_utilities_get_log_event_source(void)::once, &__block_literal_global_57);
    }

    v4 = nw_utilities_get_log_event_source(void)::source;
    if (v4)
    {
      gotLoadHelper_x8__OBJC_CLASS___OSLogEventLiveStream(v5);
      v7 = [objc_alloc(*(v6 + 952)) initWithLiveSource:v4];
      v8 = nw_utilities_set_log_intercept::stream;
      nw_utilities_set_log_intercept::stream = v7;

      [nw_utilities_set_log_intercept::stream setFlags:7];
      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"processIdentifier == %d && subsystem == com.apple.network", getpid()];
      [nw_utilities_set_log_intercept::stream setFilterPredicate:v9];

      [nw_utilities_set_log_intercept::stream setStreamHandler:&__block_literal_global_46980];
      [nw_utilities_set_log_intercept::stream activate];
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_utilities_set_log_intercept_block_invoke";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Unable to start intercept, no log source", buf, 0xCu);
      }
    }
  }

  else if ((v1 & 1) == 0 && nw_utilities_set_log_intercept::stream)
  {
    [nw_utilities_set_log_intercept::stream invalidate];
    v3 = nw_utilities_set_log_intercept::stream;
    nw_utilities_set_log_intercept::stream = 0;
  }
}

void sub_1827B89D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void __nw_utilities_set_log_intercept_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 composedMessage];
  __nwlog_handle_composed([v2 UTF8String], objc_msgSend(v3, "unixDate"));
}

void ___ZL33nw_utilities_get_log_event_sourcev_block_invoke(double a1)
{
  gotLoadHelper_x19__OBJC_CLASS___OSLogEventLiveSource(a1);
  if (objc_opt_class())
  {
    v2 = objc_alloc_init(*(v1 + 928));
    v3 = nw_utilities_get_log_event_source(void)::source;
    nw_utilities_get_log_event_source(void)::source = v2;
  }
}

void *nw_utilities_public_key_info_for_sec_identity(void *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_utilities_public_key_info_for_sec_identity";
    v19 = _os_log_send_and_compose_impl();

    LOBYTE(privateKeyRef) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v19, &privateKeyRef, &type))
    {
      goto LABEL_112;
    }

    if (privateKeyRef == 17)
    {
      v20 = __nwlog_obj();
      v21 = privateKeyRef;
      if (os_log_type_enabled(v20, privateKeyRef))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null identity", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v34 = privateKeyRef;
      v35 = os_log_type_enabled(v20, privateKeyRef);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          v55 = "nw_utilities_public_key_info_for_sec_identity";
          v56 = 2082;
          v57 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null identity, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_78:
        free(backtrace_string);
        if (!v19)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

      if (v35)
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null identity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v46 = privateKeyRef;
      if (os_log_type_enabled(v20, privateKeyRef))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v20, v46, "%{public}s called with null identity, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_105:

    goto LABEL_112;
  }

  v3 = sec_identity_copy_ref(v1);
  v4 = v3;
  if (!v3)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_utilities_public_key_info_for_sec_identity";
    v19 = _os_log_send_and_compose_impl();

    LOBYTE(privateKeyRef) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v19, &privateKeyRef, &type))
    {
      goto LABEL_112;
    }

    if (privateKeyRef == 17)
    {
      v20 = __nwlog_obj();
      v23 = privateKeyRef;
      if (os_log_type_enabled(v20, privateKeyRef))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null secIdentity", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v36 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v37 = privateKeyRef;
      v38 = os_log_type_enabled(v20, privateKeyRef);
      if (v36)
      {
        if (v38)
        {
          *buf = 136446466;
          v55 = "nw_utilities_public_key_info_for_sec_identity";
          v56 = 2082;
          v57 = v36;
          _os_log_impl(&dword_181A37000, v20, v37, "%{public}s called with null secIdentity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
LABEL_112:
        if (!v19)
        {
LABEL_114:
          v15 = 0;
          goto LABEL_32;
        }

LABEL_113:
        free(v19);
        goto LABEL_114;
      }

      if (v38)
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v20, v37, "%{public}s called with null secIdentity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v47 = privateKeyRef;
      if (os_log_type_enabled(v20, privateKeyRef))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v20, v47, "%{public}s called with null secIdentity, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_105;
  }

  privateKeyRef = 0;
  v5 = SecIdentityCopyPrivateKey(v3, &privateKeyRef);
  CFRelease(v4);
  if (!v5)
  {
    goto LABEL_25;
  }

  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
    privateKeyRef = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446210;
  v55 = "nw_utilities_public_key_info_for_sec_identity";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (!__nwlog_fault(v7, &type, &v51))
  {
LABEL_23:
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v55 = "nw_utilities_public_key_info_for_sec_identity";
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s SecIdentityCopyPrivateKey failed", buf, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v51 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v55 = "nw_utilities_public_key_info_for_sec_identity";
      _os_log_impl(&dword_181A37000, v8, v13, "%{public}s SecIdentityCopyPrivateKey failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v10 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v11 = type;
  v12 = os_log_type_enabled(v8, type);
  if (!v10)
  {
    if (v12)
    {
      *buf = 136446210;
      v55 = "nw_utilities_public_key_info_for_sec_identity";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s SecIdentityCopyPrivateKey failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (v12)
  {
    *buf = 136446466;
    v55 = "nw_utilities_public_key_info_for_sec_identity";
    v56 = 2082;
    v57 = v10;
    _os_log_impl(&dword_181A37000, v8, v11, "%{public}s SecIdentityCopyPrivateKey failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v7)
  {
LABEL_24:
    free(v7);
  }

LABEL_25:
  if (!privateKeyRef)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_utilities_public_key_info_for_sec_identity";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v19, &type, &v51))
    {
      goto LABEL_112;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null privateKey", buf, 0xCu);
      }

      goto LABEL_111;
    }

    if (v51 != 1)
    {
      v25 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v25, v48, "%{public}s called with null privateKey, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_111;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v39 = type;
    v40 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null privateKey, no backtrace", buf, 0xCu);
      }

      goto LABEL_111;
    }

    if (v40)
    {
      *buf = 136446466;
      v55 = "nw_utilities_public_key_info_for_sec_identity";
      v56 = 2082;
      v57 = backtrace_string;
      _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null privateKey, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_77:

    goto LABEL_78;
  }

  v14 = SecKeyCopyPublicKey(privateKeyRef);
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
    privateKeyRef = 0;
  }

  if (!v14)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_utilities_public_key_info_for_sec_identity";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v19, &type, &v51))
    {
      goto LABEL_112;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null publicKey", buf, 0xCu);
      }

LABEL_111:

      goto LABEL_112;
    }

    if (v51 != 1)
    {
      v25 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v25, v49, "%{public}s called with null publicKey, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_111;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v41 = type;
    v42 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v42)
      {
        *buf = 136446210;
        v55 = "nw_utilities_public_key_info_for_sec_identity";
        _os_log_impl(&dword_181A37000, v25, v41, "%{public}s called with null publicKey, no backtrace", buf, 0xCu);
      }

      goto LABEL_111;
    }

    if (v42)
    {
      *buf = 136446466;
      v55 = "nw_utilities_public_key_info_for_sec_identity";
      v56 = 2082;
      v57 = backtrace_string;
      _os_log_impl(&dword_181A37000, v25, v41, "%{public}s called with null publicKey, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_77;
  }

  v15 = SecKeyCopySubjectPublicKeyInfo();
  CFRelease(v14);
  if (!v15)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_utilities_public_key_info_for_sec_identity";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v30, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v55 = "nw_utilities_public_key_info_for_sec_identity";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null result", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        v43 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v44 = type;
        v45 = os_log_type_enabled(v31, type);
        if (v43)
        {
          if (v45)
          {
            *buf = 136446466;
            v55 = "nw_utilities_public_key_info_for_sec_identity";
            v56 = 2082;
            v57 = v43;
            _os_log_impl(&dword_181A37000, v31, v44, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v43);
          goto LABEL_118;
        }

        if (v45)
        {
          *buf = 136446210;
          v55 = "nw_utilities_public_key_info_for_sec_identity";
          _os_log_impl(&dword_181A37000, v31, v44, "%{public}s called with null result, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v55 = "nw_utilities_public_key_info_for_sec_identity";
          _os_log_impl(&dword_181A37000, v31, v50, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_118:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_31;
  }

  v16 = v15;
LABEL_31:

LABEL_32:
  return v15;
}
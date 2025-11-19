void nw_protocol_instance_path_callback(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(*(v5 + 1) + 80) + 216);
    if (v7)
    {
      v7(v5, a2, a3, *(v5 + 39) == a2);
    }

    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_instance_path_callback";
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
        v19 = "nw_protocol_instance_path_callback";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
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
          v19 = "nw_protocol_instance_path_callback";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_path_callback";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_path_callback";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v9)
  {
    free(v9);
  }

LABEL_4:
}

uint64_t nw_protocol_instance_get_priority_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_get_priority_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_get_priority_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_get_priority_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
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
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_get_priority_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = *(node + 184);
LABEL_41:

  return v7;
}

void nw_activity_fill_out_activity_report(NWConcrete_nw_activity *a1, nw_activity_report_s *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_activity_fill_out_activity_report";
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
          v21 = "nw_activity_fill_out_activity_report";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_activity_fill_out_activity_report";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_activity_fill_out_activity_report";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_activity_fill_out_activity_report";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_12;
  }

  a2->domain = v3->domain;
  a2->label = v3->label;
  *a2->activity_uuid = *v3->token;
  m_obj = v3->parent.m_obj;
  if (m_obj && !uuid_is_null(m_obj->token))
  {
    *a2->parent_activity_uuid = *v4->parent.m_obj->token;
  }

  *(a2 + 304) = *(a2 + 304) & 0xFE | *(v4 + 140) & 1;
  a2->investigation_identifier = v4->investigation_identifier;
  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  v6 = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
    bundle_id = a2->bundle_id;
    v8 = 256;
    while (1)
    {
      v9 = *v6;
      *bundle_id = v9;
      if (!v9)
      {
        break;
      }

      ++bundle_id;
      ++v6;
      if (--v8 <= 1)
      {
        *bundle_id = 0;
        break;
      }
    }
  }

LABEL_12:
}

uint64_t nw_activity_get_fragments_quenched(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v21 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_activity_get_fragments_quenched_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    v17 = v3;
    nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v2 + 20, &v17);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_activity_get_fragments_quenched";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v7, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_get_fragments_quenched";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          *&buf[4] = "nw_activity_get_fragments_quenched";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_get_fragments_quenched";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_get_fragments_quenched";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
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

void sub_181F24500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_activity_get_underlying_error_domain(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_activity_get_underlying_error_domain";
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
          v17 = "nw_activity_get_underlying_error_domain";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
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
            v17 = "nw_activity_get_underlying_error_domain";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_8;
  }

  if ((v1[35] & 8) != 0)
  {
    v4 = v1[31];
    goto LABEL_10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v3 = gactivityLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ not complete, returning 0 for underlying error domain", buf, 0xCu);
  }

LABEL_8:
  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t nw_activity_get_completion_reason(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_activity_get_completion_reason";
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
          v17 = "nw_activity_get_completion_reason";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
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
            v17 = "nw_activity_get_completion_reason";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_activity_get_completion_reason";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_activity_get_completion_reason";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_8;
  }

  if ((v1[35] & 8) != 0)
  {
    v4 = v1[34];
    goto LABEL_10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v3 = gactivityLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ not complete, returning nw_activity_completion_reason_invalid", buf, 0xCu);
  }

LABEL_8:
  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t nw_activity_get_underlying_error_domain_string(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_activity_get_underlying_error_domain_string";
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
          v17 = "nw_activity_get_underlying_error_domain_string";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
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
            v17 = "nw_activity_get_underlying_error_domain_string";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain_string";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain_string";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_8;
  }

  if ((v1[140] & 8) != 0)
  {
    v4 = *(v1 + 9);
    goto LABEL_10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v3 = gactivityLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ not complete, returning NULL for underlying error domain string", buf, 0xCu);
  }

LABEL_8:
  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(uint64_t a1)
{
  if (qword_1EA836C08 != -1)
  {
LABEL_9:
    swift_once();
  }

  v2 = 0;
  v3 = off_1EA836C18;
  v4 = *(off_1EA836C18 + 2);
  v5 = off_1EA836C18 + 32;
  while (v4 != v2)
  {
    if (v2 >= v3[2])
    {
      __break(1u);
      goto LABEL_9;
    }

    v6 = *&v5[8 * v2++];
    if ((*(v6 + 88))(a1))
    {
      v7 = *(v6 + 96);
      v8 = swift_unknownObjectRetain();
      return v7(v8);
    }
  }

  return 0;
}

BOOL nw_protocol_metadata_is_udp(nw_protocol_metadata_t metadata)
{
  v15 = *MEMORY[0x1E69E9840];
  if (metadata)
  {

    return _nw_protocol_metadata_is_udp(metadata);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_is_udp";
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
        v12 = "nw_protocol_metadata_is_udp";
        v6 = "%{public}s called with null metadata";
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
            v12 = "nw_protocol_metadata_is_udp";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_udp";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_udp";
        v6 = "%{public}s called with null metadata, backtrace limit exceeded";
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

BOOL nw_protocol_metadata_is_ws(nw_protocol_metadata_t metadata)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (v1)
  {
    if (nw_protocol_copy_ws_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_ws_definition::onceToken, &__block_literal_global_4247);
    }

    v2 = nw_protocol_copy_ws_definition::definition;
    v3 = nw_protocol_metadata_matches_definition(v1, v2);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_metadata_is_ws";
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
        v16 = "nw_protocol_metadata_is_ws";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata", buf, 0xCu);
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
          v16 = "nw_protocol_metadata_is_ws";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_ws";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_ws";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

uint64_t sub_181F258C4(uint64_t a1, uint64_t (*a2)(void, void))
{
  result = a2(*(v2 + 16), *(a1 + 32));
  if (result)
  {
    v4 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t NWProtocolFramer.Message.__allocating_init(instance:)()
{
  v0 = swift_allocObject();
  v1 = swift_unknownObjectRetain();
  v2 = nw_framer_message_create(v1);
  swift_unknownObjectRelease();

  *(v0 + 16) = v2;
  return v0;
}

void sub_181F25A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = a4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_181D478F8;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  nw_connection_receive_message(v10, v12);
  _Block_release(v12);
}

uint64_t sub_181F25B7C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = (v1 + 16);
  v3 = *(v0 + 16);
  v7[4] = sub_181F25E08;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_181F25CD0;
  v7[3] = &block_descriptor_136;
  v4 = _Block_copy(v7);

  nw_content_context_foreach_protocol_metadata(v3, v4);
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v2;

  return v5;
}

uint64_t sub_181F25C94()
{

  return swift_deallocObject();
}

uint64_t sub_181F25CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_181F25D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(a2);
  if (result)
  {
    swift_beginAccess();

    MEMORY[0x1865D9F10](v5);
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    swift_endAccess();
  }

  return result;
}

void __nw_socks5_server_start_block_invoke_10(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v73 = a1;
  if (v6)
  {
    if (_nw_parameters_get_no_proxy(v6))
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 32);
  v9 = *(v5 + 136);
  v10 = v4;
  v11 = v8;
  v74 = v5;
  if (v10)
  {
    if (v11)
    {
      v12 = [NWConcrete_nw_socks5_connection alloc];
      v13 = v10;
      v14 = v11;
      v15 = v74;
      if (!v12)
      {
        goto LABEL_15;
      }

      v83.receiver = v12;
      v83.super_class = NWConcrete_nw_socks5_connection;
      v16 = objc_msgSendSuper2(&v83, sel_init);
      v12 = v16;
      if (v16)
      {
        v16->sc_id = atomic_fetch_add(&s_last_connection_id, 1uLL);
        objc_storeStrong(&v16->sc_in_connection, a2);
        objc_storeStrong(&v12->sc_queue, v8);
        if (v9)
        {
          v17 = 101;
        }

        else
        {
          v17 = 1;
        }

        v12->sc_state = v17;
        *(v12 + 160) = *(v12 + 160) & 0xFB | v7;
        objc_storeWeak(&v12->sc_parent, v15);
        goto LABEL_15;
      }

      v58 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
      v59 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v81 = 0;
      if (__nwlog_fault(v59, &type, &v81))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v60 = __nwlog_obj();
          v61 = type;
          if (os_log_type_enabled(v60, type))
          {
            *buf = 136446210;
            *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s [super init] failed", buf, 0xCu);
          }
        }

        else if (v81 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v60 = __nwlog_obj();
          v68 = type;
          v69 = os_log_type_enabled(v60, type);
          if (backtrace_string)
          {
            if (v69)
            {
              *buf = 136446466;
              *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v60, v68, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_114;
          }

          if (v69)
          {
            *buf = 136446210;
            *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
            _os_log_impl(&dword_181A37000, v60, v68, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v60 = __nwlog_obj();
          v72 = type;
          if (os_log_type_enabled(v60, type))
          {
            *buf = 136446210;
            *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
            _os_log_impl(&dword_181A37000, v60, v72, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_114:
      if (v59)
      {
        free(v59);
      }

      v12 = 0;
LABEL_15:

      if (v12)
      {
        v18 = v12;
LABEL_36:

        goto LABEL_37;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_socks5_connection_create";
      v20 = _os_log_send_and_compose_impl();

      LOBYTE(v83.receiver) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v20, &v83, &type))
      {
        if (LOBYTE(v83.receiver) == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          receiver = v83.receiver;
          if (os_log_type_enabled(v21, v83.receiver))
          {
            *buf = 136446210;
            *&buf[4] = "nw_socks5_connection_create";
            _os_log_impl(&dword_181A37000, v21, receiver, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed", buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v23 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v24 = v83.receiver;
          v25 = os_log_type_enabled(v21, v83.receiver);
          if (v23)
          {
            if (v25)
            {
              *buf = 136446466;
              *&buf[4] = "nw_socks5_connection_create";
              *&buf[12] = 2082;
              *&buf[14] = v23;
              _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v23);
            if (!v20)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          if (v25)
          {
            *buf = 136446210;
            *&buf[4] = "nw_socks5_connection_create";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v26 = v83.receiver;
          if (os_log_type_enabled(v21, v83.receiver))
          {
            *buf = 136446210;
            *&buf[4] = "nw_socks5_connection_create";
            _os_log_impl(&dword_181A37000, v21, v26, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v20)
      {
        goto LABEL_36;
      }

LABEL_35:
      free(v20);
      goto LABEL_36;
    }

    v56 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_create";
    v53 = _os_log_send_and_compose_impl();

    LOBYTE(v83.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v53, &v83, &type))
    {
      if (LOBYTE(v83.receiver) == 17)
      {
        v54 = __nwlog_obj();
        v57 = v83.receiver;
        if (os_log_type_enabled(v54, v83.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v57, "%{public}s called with null queue", buf, 0xCu);
        }

LABEL_107:

        goto LABEL_108;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v54 = __nwlog_obj();
        v71 = v83.receiver;
        if (os_log_type_enabled(v54, v83.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v71, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_107;
      }

      v62 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v65 = v83.receiver;
      v66 = os_log_type_enabled(v54, v83.receiver);
      if (!v62)
      {
        if (v66)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v65, "%{public}s called with null queue, no backtrace", buf, 0xCu);
        }

        goto LABEL_107;
      }

      if (v66)
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_create";
        *&buf[12] = 2082;
        *&buf[14] = v62;
        _os_log_impl(&dword_181A37000, v54, v65, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_87;
    }
  }

  else
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_create";
    v53 = _os_log_send_and_compose_impl();

    LOBYTE(v83.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v53, &v83, &type))
    {
      if (LOBYTE(v83.receiver) == 17)
      {
        v54 = __nwlog_obj();
        v55 = v83.receiver;
        if (os_log_type_enabled(v54, v83.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_107;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v54 = __nwlog_obj();
        v70 = v83.receiver;
        if (os_log_type_enabled(v54, v83.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v70, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_107;
      }

      v62 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v63 = v83.receiver;
      v64 = os_log_type_enabled(v54, v83.receiver);
      if (!v62)
      {
        if (v64)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v63, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_107;
      }

      if (v64)
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_create";
        *&buf[12] = 2082;
        *&buf[14] = v62;
        _os_log_impl(&dword_181A37000, v54, v63, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_87:

      free(v62);
    }
  }

LABEL_108:
  if (v53)
  {
    free(v53);
  }

  v12 = 0;
LABEL_37:

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v27 = gLogObj;
  v28 = v27;
  if (v12)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v73 + 32);
      v30 = nw_connection_copy_endpoint(v10);
      *buf = 136446978;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v29;
      *&buf[22] = 2112;
      v85 = v12;
      LOWORD(v86) = 2112;
      *(&v86 + 2) = v30;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s %@ received new connection %@ from %@", buf, 0x2Au);
    }

    v31 = *(v73 + 32);
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __nw_socks5_server_start_block_invoke_11;
    v78[3] = &unk_1E6A3D760;
    v79 = v31;
    v32 = v12;
    v80 = v32;
    os_unfair_lock_lock(v31 + 6);
    __nw_socks5_server_start_block_invoke_11(v78);
    os_unfair_lock_unlock(v31 + 6);
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __nw_socks5_server_start_block_invoke_2_12;
    v75[3] = &unk_1E6A3D760;
    v76 = *(v73 + 32);
    v77 = v32;
    v33 = v77;
    v34 = v75;
    v36 = v33 + 5;
    v35 = v33[5];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_socks5_connection_set_cancel_handler_block_invoke;
    v85 = &unk_1E6A3D710;
    v37 = v33;
    *&v86 = v37;
    v38 = v34;
    *(&v86 + 1) = v38;
    dispatch_async(v35, buf);

    v39 = v37;
    v40 = *v36;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_socks5_connection_start_block_invoke;
    v85 = &unk_1E6A3D868;
    v41 = v39;
    *&v86 = v41;
    dispatch_async(v40, buf);

    goto LABEL_62;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v42 = *(v73 + 32);
    v43 = nw_connection_copy_endpoint(v10);
    *buf = 136446722;
    *&buf[4] = "nw_socks5_server_start_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v42;
    *&buf[22] = 2112;
    v85 = v43;
    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %@ failed to create new connection from %@", buf, 0x20u);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v44 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_socks5_server_start_block_invoke";
  v45 = _os_log_send_and_compose_impl();

  LOBYTE(v83.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v45, &v83, &type))
  {
    goto LABEL_60;
  }

  if (LOBYTE(v83.receiver) == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v47 = v83.receiver;
    if (os_log_type_enabled(v46, v83.receiver))
    {
      *buf = 136446210;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_socks5_connection_create failed", buf, 0xCu);
    }

LABEL_59:

LABEL_60:
    if (!v45)
    {
      goto LABEL_62;
    }

LABEL_61:
    free(v45);
    goto LABEL_62;
  }

  if (type != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v51 = v83.receiver;
    if (os_log_type_enabled(v46, v83.receiver))
    {
      *buf = 136446210;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      _os_log_impl(&dword_181A37000, v46, v51, "%{public}s nw_socks5_connection_create failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v48 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v46 = gLogObj;
  v49 = v83.receiver;
  v50 = os_log_type_enabled(v46, v83.receiver);
  if (!v48)
  {
    if (v50)
    {
      *buf = 136446210;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      _os_log_impl(&dword_181A37000, v46, v49, "%{public}s nw_socks5_connection_create failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (v50)
  {
    *buf = 136446466;
    *&buf[4] = "nw_socks5_server_start_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v48;
    _os_log_impl(&dword_181A37000, v46, v49, "%{public}s nw_socks5_connection_create failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v48);
  if (v45)
  {
    goto LABEL_61;
  }

LABEL_62:
}

char *__nw_socks5_server_start_block_invoke_11(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 80);
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    _nw_array_append(v4, v2);
    v3 = *(a1 + 32);
  }

  v6 = *(v3 + 108);
  if (v6 != -1)
  {
    *(v3 + 108) = v6 + 1;
    v3 = *(a1 + 32);
  }

  result = *(v3 + 80);
  if (result)
  {
    result = _nw_array_get_count(result);
    v8 = *(a1 + 32);
    if (result > *(v8 + 104))
    {
      v9 = -1;
      if (result < 0xFFFFFFFF)
      {
        v9 = result;
      }

      *(v8 + 104) = v9;
    }
  }

  return result;
}

void __nw_socks5_connection_set_cancel_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

void nw_socks5_connection_start_on_queue(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v4[4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke;
  v17[3] = &unk_1E6A3D868;
  v7 = v4;
  v18 = v7;
  nw_connection_set_read_close_handler(v6, v17);
  v8 = v4[4];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke_142;
  handler[3] = &unk_1E6A3D958;
  v9 = v7;
  v15 = v9;
  v10 = v5;
  v16 = v10;
  nw_connection_set_state_changed_handler(v8, handler);
  nw_connection_set_queue(v4[4], v9[5]);
  nw_connection_start(v4[4]);
  v11 = mach_continuous_time();
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v9[17] = v12;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v20 = "nw_socks5_connection_start_on_queue";
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}@ started connection", buf, 0x16u);
  }

  if (!v9[2])
  {
    objc_storeStrong(v9 + 2, a1);
  }
}

uint64_t nw_dispatch_data_copyout(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = a2;
  if (a1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __nw_dispatch_data_copyout_block_invoke;
    applier[3] = &unk_1E6A34348;
    applier[5] = v6;
    applier[6] = a3;
    applier[4] = &v7;
    dispatch_data_apply(a1, applier);
    v3 = v8[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_148(uint64_t a1, uint64_t a2)
{
  if (strcmp((a2 + 16), "com.apple.networkrelay"))
  {
    return 1;
  }

  if (strcmp((a2 + 48), "CompanionProxyConfig"))
  {
    return 1;
  }

  v4 = *(a2 + 212);
  if ((v4 - 0x10000) < 0xFFFF0001)
  {
    return 1;
  }

  nw_parameters_update_with_data(*(*(*(a1 + 32) + 8) + 40), a2 + 216, v4);
  return 0;
}

void nw_parameters_update_with_data(void *a1, uint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v15 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v23 = "nw_parameters_update_with_data";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_48:
          if (!v8)
          {
            goto LABEL_5;
          }

LABEL_49:
          free(v8);
          goto LABEL_5;
        }

        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_46;
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_46;
        }
      }

      goto LABEL_47;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v11 = "%{public}s called with null parameters";
    goto LABEL_46;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v16 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!v16)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null data, no backtrace";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_parameters_update_with_data";
        v24 = 2082;
        v25 = v16;
        v18 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v9, v10, v18, buf, 0x16u);
      }

LABEL_32:

      free(v16);
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v11 = "%{public}s called with null data";
LABEL_46:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_47;
  }

  if (!a3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v23 = "nw_parameters_update_with_data";
        v11 = "%{public}s called with null data_len";
        goto LABEL_46;
      }

LABEL_47:

      goto LABEL_48;
    }

    if (v20 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v23 = "nw_parameters_update_with_data";
        v11 = "%{public}s called with null data_len, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v16 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!v16)
    {
      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_parameters_update_with_data";
        v11 = "%{public}s called with null data_len, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_parameters_update_with_data";
      v24 = 2082;
      v25 = v16;
      v18 = "%{public}s called with null data_len, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  nw_path_parse_necp_parameters(v5, 0, 0, 0, 0, 0, 0, 0, 0, a2, a3);
LABEL_5:
}

void nw_shoes_tlv_parser(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 >= 3)
  {
    v6 = 0;
    v7 = a1;
    while (1)
    {
      v8 = a2 - v6;
      if ((a2 - v6) <= 2u)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v12 = *a1;
        v17 = 136446978;
        v18 = "nw_shoes_tlv_parser";
        v19 = 1024;
        v20 = v8;
        v21 = 2048;
        v22 = 3;
        v23 = 1024;
        v24 = v12;
        v13 = "%{public}s Incomplete tlv buffer (%u < %zu) type %u";
        v14 = v11;
        v15 = 34;
        goto LABEL_11;
      }

      v9 = bswap32(*(v7 + 1)) >> 16;
      v10 = v9 + 3;
      if (v9 + 3 > v8)
      {
        break;
      }

      (v5)[2](v5, v7);
      v7 += v10;
      v6 += v10;
      if (a2 <= v6)
      {
        goto LABEL_13;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = *a1;
    v17 = 136447234;
    v18 = "nw_shoes_tlv_parser";
    v19 = 1024;
    v20 = v8;
    v21 = 2048;
    v22 = 3;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v16;
    v13 = "%{public}s Invalid tlv buffer (%u < %zu + %u) type %u";
    v14 = v11;
    v15 = 40;
LABEL_11:
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, &v17, v15);
LABEL_12:
  }

LABEL_13:
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_152(uint64_t a1, unsigned __int8 *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    if (v5 > 9)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_1E6A2B458[v5];
    }

    v7 = *(a1 + 32);
    *buf = 136446722;
    v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v60 = 2114;
    v61 = v7;
    v62 = 2082;
    *v63 = v6;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ processing shoes tlv: %{public}s", buf, 0x20u);
  }

  v8 = *a2;
  if (v8 > 4)
  {
    switch(v8)
    {
      case 5u:
        v22 = *(a2 + 1);
        if (v22 == 768)
        {
          v23 = a2[3];
          v24 = *(a2 + 2);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 32);
            *buf = 136446978;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v26;
            v62 = 1024;
            *v63 = v23;
            *&v63[4] = 1024;
            *&v63[6] = __rev16(v24);
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ setting multipath on outer connection to service: %u/alternate_port: %u", buf, 0x22u);
          }

          nw_parameters_set_multipath_service(*(*(*(a1 + 48) + 8) + 40), v23);
          nw_endpoint_set_alternate_port(*(a1 + 40), v24);
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v48 = *(a1 + 32);
          *buf = 136447234;
          v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v60 = 2114;
          v61 = v48;
          v62 = 2080;
          *v63 = "multipath";
          *&v63[8] = 1024;
          *&v63[10] = __rev16(v22);
          v64 = 2048;
          v65 = 3;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length for %s (%u != %zu)", buf, 0x30u);
        }

        break;
      case 6u:
        v43 = *(a2 + 1);
        if (v43 == 512)
        {
          v44 = *(a1 + 32);
          if (*(v44 + 161))
          {
            return;
          }

          *(v44 + 160) |= 0x80u;
          *(*(*(a1 + 56) + 8) + 24) = bswap32(*(a2 + 3)) >> 16;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(a1 + 32);
            v46 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446722;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v45;
            v62 = 1024;
            *v63 = v46;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to create UDP association to inner connection port: %u", buf, 0x1Cu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v52 = *(a1 + 32);
            *buf = 136446978;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v52;
            v62 = 1024;
            *v63 = __rev16(v43);
            *&v63[4] = 2048;
            *&v63[6] = 1;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u < %zu)", buf, 0x26u);
          }
        }

        break;
      case 9u:
        v15 = bswap32(*(a2 + 1)) >> 16;
        if (v15 > 3)
        {
          v49 = *(a2 + 3);
          if (v49)
          {
            if (v49)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v54 = gLogObj;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = *(a1 + 32);
                *buf = 136446466;
                v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
                v60 = 2114;
                v61 = v55;
                _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requiring interface type wifi on outer connection", buf, 0x16u);
              }

              nw_parameters_set_required_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_wifi);
            }

            else if ((v49 & 2) != 0)
            {
              v56 = __nwlog_obj();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v57 = *(a1 + 32);
                *buf = 136446466;
                v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
                v60 = 2114;
                v61 = v57;
                _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requiring interface type cellular on outer connection", buf, 0x16u);
              }

              nw_parameters_set_required_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_cellular);
            }

            else if ((v49 & 4) != 0)
            {
              v50 = __nwlog_obj();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = *(a1 + 32);
                *buf = 136446466;
                v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
                v60 = 2114;
                v61 = v51;
                _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requiring interface type wired on outer connection", buf, 0x16u);
              }

              nw_parameters_set_required_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_wired);
            }
          }

          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          *buf = 136446978;
          v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v60 = 2114;
          v61 = v17;
          v62 = 1024;
          *v63 = v15;
          *&v63[4] = 2048;
          *&v63[6] = 4;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u < %zu)", buf, 0x26u);
        }

        break;
      default:
        return;
    }

LABEL_86:

    return;
  }

  if (v8 == 1)
  {
    v18 = *(a2 + 1);
    if (v18 == 1024)
    {
      v19 = bswap32(*(a2 + 3));
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        *buf = 136446722;
        v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
        v60 = 2114;
        v61 = v21;
        v62 = 1024;
        *v63 = v19;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ applying traffic class %u to inner and outer connections", buf, 0x1Cu);
      }

      nw_parameters_set_traffic_class(*(*(*(a1 + 48) + 8) + 40), v19);
      nw_connection_reset_traffic_class(*(*(a1 + 32) + 32), v19);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a1 + 32);
      *buf = 136446978;
      v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v60 = 2114;
      v61 = v47;
      v62 = 1024;
      *v63 = __rev16(v18);
      *&v63[4] = 2048;
      *&v63[6] = 4;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u != %zu)", buf, 0x26u);
    }

    goto LABEL_86;
  }

  if (v8 == 2)
  {
    v27 = *(a2 + 1);
    if (*(a2 + 1))
    {
      v28 = a2[3];
      if (v28)
      {
        if ((a2[3] & 0x80) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v30;
            _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting expensive networks on outer connection", buf, 0x16u);
          }

          nw_parameters_set_prohibit_expensive(*(*(*(a1 + 48) + 8) + 40), 1);
          v28 = a2[3];
        }

        if ((v28 & 0x20) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v32;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting wifi networks on outer connection", buf, 0x16u);
          }

          nw_parameters_prohibit_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_wifi);
          v28 = a2[3];
        }

        if ((v28 & 0x40) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v34;
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting cellular networks on outer connection", buf, 0x16u);
          }

          nw_parameters_prohibit_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_cellular);
          v28 = a2[3];
        }

        if ((v28 & 0x10) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v36;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting constrained networks on outer connection", buf, 0x16u);
          }

          nw_parameters_set_prohibit_constrained(*(*(*(a1 + 48) + 8) + 40), 1);
          v28 = a2[3];
        }

        if (v28)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v38;
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to prefer wi-fi", buf, 0x16u);
          }

          *(*(a1 + 32) + 160) |= 0x40u;
          v28 = a2[3];
        }

        if ((v28 & 2) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v40;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to fetch connected endpoint", buf, 0x16u);
          }

          *(*(a1 + 32) + 161) |= 2u;
          v28 = a2[3];
        }

        if ((v28 & 4) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 32);
            *buf = 136446466;
            v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v60 = 2114;
            v61 = v42;
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to fetch resolved endpoints", buf, 0x16u);
          }

          *(*(a1 + 32) + 161) |= 4u;
        }
      }

      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v53 = *(a1 + 32);
      *buf = 136446978;
      v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v60 = 2114;
      v61 = v53;
      v62 = 1024;
      *v63 = __rev16(v27);
      *&v63[4] = 2048;
      *&v63[6] = 1;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u < %zu)", buf, 0x26u);
    }

    goto LABEL_86;
  }

  if (v8 == 3 && *(a2 + 1))
  {
    v9 = __rev16(*(a2 + 1));
    v10 = malloc_type_calloc(1uLL, v9 + 1, 0xA818887AuLL);
    if (!v10)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v60 = 2048;
      v61 = 1;
      v62 = 2048;
      *v63 = v9 + 1;
      v12 = _os_log_send_and_compose_impl();

      if (__nwlog_should_abort(v12))
      {
        __break(1u);
        return;
      }

      free(v12);
    }

    memcpy(v10, a2 + 3, v9);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 136446722;
      v59 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v60 = 2114;
      v61 = v14;
      v62 = 2082;
      *v63 = v10;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ setting bundle id on outer connection to %{public}s", buf, 0x20u);
    }

    nw_parameters_set_source_application_by_bundle_id_internal(*(*(*(a1 + 48) + 8) + 40), v10);
    if (v10)
    {
      free(v10);
    }
  }
}

void nw_socks5_server_call_outer_connection_handler(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5[12];
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_socks5_server_call_outer_connection_handler";
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
        v19 = "nw_socks5_server_call_outer_connection_handler";
        v13 = "%{public}s called with null server";
LABEL_18:
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
            v19 = "nw_socks5_server_call_outer_connection_handler";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v15)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "nw_socks5_server_call_outer_connection_handler";
        v13 = "%{public}s called with null server, no backtrace";
        goto LABEL_18;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_socks5_server_call_outer_connection_handler";
        v13 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

void nw_socks5_connection_connect_outer_on_queue(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  secure_tcp = a3;
  if (!secure_tcp)
  {
    secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
    if (!secure_tcp)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      *v47 = 136446210;
      *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
      v24 = _os_log_send_and_compose_impl();

      buf[0] = 16;
      v40 = 0;
      if (__nwlog_fault(v24, buf, &v40))
      {
        if (buf[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = buf[0];
          if (os_log_type_enabled(v25, buf[0]))
          {
            *v47 = 136446210;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_parameters_create_secure_tcp failed", v47, 0xCu);
          }
        }

        else if (v40 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v30 = backtrace_string;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = buf[0];
            if (os_log_type_enabled(v31, buf[0]))
            {
              *v47 = 136446466;
              *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
              *&v47[12] = 2082;
              *&v47[14] = v30;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s nw_parameters_create_secure_tcp failed, dumping backtrace:%{public}s", v47, 0x16u);
            }

            free(v30);
            if (!v24)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          v25 = __nwlog_obj();
          v34 = buf[0];
          if (os_log_type_enabled(v25, buf[0]))
          {
            *v47 = 136446210;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            _os_log_impl(&dword_181A37000, v25, v34, "%{public}s nw_parameters_create_secure_tcp failed, no backtrace", v47, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v33 = buf[0];
          if (os_log_type_enabled(v25, buf[0]))
          {
            *v47 = 136446210;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s nw_parameters_create_secure_tcp failed, backtrace limit exceeded", v47, 0xCu);
          }
        }
      }

      if (!v24)
      {
LABEL_28:
        v27 = [[NWConcrete_nw_error alloc] initWithDomain:12 code:?];
        nw_socks5_connection_cancel_on_queue(v5, v27);
        secure_tcp = v27;
        goto LABEL_29;
      }

LABEL_27:
      free(v24);
      goto LABEL_28;
    }
  }

  _nw_parameters_set_no_proxy(secure_tcp, (*(v5 + 160) & 4) != 0);
  _nw_parameters_set_indefinite(secure_tcp, 0);
  v8 = nw_connection_create(v6, secure_tcp);
  v9 = *(v5 + 18);
  *(v5 + 18) = v8;

  if (!*(v5 + 18))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *v47 = 136446210;
    *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
    v16 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v40 = 0;
    if (__nwlog_fault(v16, buf, &v40))
    {
      if (buf[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = buf[0];
        if (os_log_type_enabled(v17, buf[0]))
        {
          *v47 = 136446210;
          *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s nw_connection_create failed", v47, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v21 = buf[0];
        v22 = os_log_type_enabled(v17, buf[0]);
        if (v20)
        {
          if (v22)
          {
            *v47 = 136446466;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            *&v47[12] = 2082;
            *&v47[14] = v20;
            _os_log_impl(&dword_181A37000, v17, v21, "%{public}s nw_connection_create failed, dumping backtrace:%{public}s", v47, 0x16u);
          }

          free(v20);
          if (!v16)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        if (v22)
        {
          *v47 = 136446210;
          *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
          _os_log_impl(&dword_181A37000, v17, v21, "%{public}s nw_connection_create failed, no backtrace", v47, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v28 = buf[0];
        if (os_log_type_enabled(v17, buf[0]))
        {
          *v47 = 136446210;
          *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
          _os_log_impl(&dword_181A37000, v17, v28, "%{public}s nw_connection_create failed, backtrace limit exceeded", v47, 0xCu);
        }
      }
    }

    if (!v16)
    {
LABEL_14:
      v19 = [[NWConcrete_nw_error alloc] initWithDomain:12 code:?];
      nw_socks5_connection_cancel_on_queue(v5, v19);

      goto LABEL_29;
    }

LABEL_13:
    free(v16);
    goto LABEL_14;
  }

  *v47 = 0;
  *&v47[8] = v47;
  *&v47[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__16762;
  v49 = __Block_byref_object_dispose__16763;
  WeakRetained = objc_loadWeakRetained(v5 + 3);
  v10 = *(v5 + 18);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke;
  handler[3] = &unk_1E6A313C0;
  v11 = v5;
  v39 = v11;
  nw_connection_set_viability_changed_handler(v10, handler);
  v12 = *(v5 + 18);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_159;
  v35[3] = &unk_1E6A2DA90;
  v13 = v11;
  v36 = v13;
  v37 = v47;
  nw_connection_set_state_changed_handler(v12, v35);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v42 = "nw_socks5_connection_connect_outer_on_queue";
    v43 = 2114;
    v44 = v13;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ connecting to remote %@", buf, 0x20u);
  }

  nw_connection_set_queue(*(v5 + 18), v13[5]);
  nw_socks5_connection_increment_busy_on_queue(v13, *(*&v47[8] + 40));
  nw_connection_start(*(v5 + 18));

  _Block_object_dispose(v47, 8);
LABEL_29:
}

uint64_t nw_shoes_add_tlv(uint64_t a1, unsigned int a2, unsigned int a3, size_t __n, void *__src)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_shoes_add_tlv";
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
          v23 = "nw_shoes_add_tlv";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null buffer", buf, 0xCu);
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
            v23 = "nw_shoes_add_tlv";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (v18)
        {
          *buf = 136446210;
          v23 = "nw_shoes_add_tlv";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v23 = "nw_shoes_add_tlv";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  v5 = __n + 3;
  v6 = (__n + 3);
  if (v6 > a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (a3 > 9)
      {
        v10 = "unknown";
      }

      else
      {
        v10 = off_1E6A2B458[a3];
      }

      *buf = 136446978;
      v23 = "nw_shoes_add_tlv";
      v24 = 2082;
      v25 = v10;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = v6;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Insufficient buffer length to write tlv %{public}s (%u < %u)", buf, 0x22u);
    }

    return 0;
  }

  *a1 = a3;
  *(a1 + 1) = __rev16(__n);
  memcpy((a1 + 3), __src, __n);
  return v5;
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 136446466;
      v8 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ out connection no longer viable, cancelling", &v7, 0x16u);
    }

    *(*(a1 + 32) + 160) |= 1u;
    v5 = *(a1 + 32);
    v6 = [[NWConcrete_nw_error alloc] initWithDomain:50 code:?];
    nw_socks5_connection_cancel_on_queue(v5, v6);
  }
}

void ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_169(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  v4 = v3;
  v5 = v4[3];

  if ((v5 - 32) <= 0x39 && ((1 << (v5 - 32)) & 0x2000002326E0001) != 0 || v5 == 6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136446722;
      v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
      v28 = 2114;
      v29 = v9;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write in request reply error %{darwin.errno}d", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v11 = *(a1 + 32);
  *buf = 136446722;
  v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
  v28 = 2114;
  v29 = v11;
  v30 = 1024;
  v31 = v5;
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v12, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        v16 = *(a1 + 32);
        *buf = 136446722;
        v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v28 = 2114;
        v29 = v16;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ write in request reply error %{darwin.errno}d", buf, 0x1Cu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v19)
        {
          v20 = *(a1 + 32);
          *buf = 136446978;
          v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
          v28 = 2114;
          v29 = v20;
          v30 = 1024;
          v31 = v5;
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ write in request reply error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v19)
      {
        v23 = *(a1 + 32);
        *buf = 136446722;
        v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v28 = 2114;
        v29 = v23;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ write in request reply error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v14, type))
      {
        v22 = *(a1 + 32);
        *buf = 136446722;
        v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v28 = 2114;
        v29 = v22;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s %{public}@ write in request reply error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
      }
    }
  }

LABEL_32:
  if (v12)
  {
    free(v12);
  }

LABEL_13:
  nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
  (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
LABEL_15:
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_160(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 != 255)
  {
    if (!a2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
        return;
      }

      v20 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v20;
      v21 = "%{public}s %{public}@ failed to write reply";
LABEL_25:
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
      goto LABEL_26;
    }

    if (v3 != 105 && v3 != 8)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v24 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v24;
      v21 = "%{public}s %{public}@ wrote reply but ended in bad state";
      goto LABEL_25;
    }

    *(v2 + 56) = -56;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ successfully wrote reply", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    if ((v9 & 0xA0) != 0x20)
    {
      goto LABEL_53;
    }

    v10 = *(v8 + 32);
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v11 = g_tcp_definition;
    v12 = nw_connection_copy_protocol_metadata(v10, v11);

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = v13;
    if (!v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        *buf = 136446466;
        v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
        v47 = 2114;
        v48 = v25;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ metadata for inner connection is nil -- unable to setting TCP no delay", buf, 0x16u);
      }

      goto LABEL_48;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v15;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}@ setting TCP no delay on inner connection", buf, 0x16u);
    }

    if (!nw_tcp_set_no_delay(v12, 1))
    {
LABEL_48:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = *(a1 + 32);
        *buf = 136446466;
        v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
        v47 = 2114;
        v48 = v39;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_INFO, "%{public}s %{public}@ adding UDP framer", buf, 0x16u);
      }

      if (nw_shoes_copy_udp_framer_definition::onceToken != -1)
      {
        dispatch_once(&nw_shoes_copy_udp_framer_definition::onceToken, &__block_literal_global_27124);
      }

      v40 = nw_shoes_copy_udp_framer_definition::definition;
      v41 = *(*(a1 + 32) + 32);
      options = nw_framer_create_options(v40);
      nw_connection_append_and_start_application_protocol(v41, options);

      v8 = *(a1 + 32);
      v9 = *(v8 + 160);
LABEL_53:
      *(v8 + 160) = v9 | 0x10;
      nw_socks5_connection_outer_connection_read_on_queue(*(a1 + 32));
      nw_socks5_connection_inner_connection_read_on_queue(*(a1 + 32));
      return;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = v17;
    if (v16 == 22)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 136446722;
        v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
        v47 = 2114;
        v48 = v19;
        v49 = 1024;
        v50 = 22;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d", buf, 0x1Cu);
      }

      goto LABEL_48;
    }

    v26 = *(a1 + 32);
    *buf = 136446722;
    v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v47 = 2114;
    v48 = v26;
    v49 = 1024;
    v50 = v16;
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v27, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          v30 = *(a1 + 32);
          *buf = 136446722;
          v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v47 = 2114;
          v48 = v30;
          v49 = 1024;
          v50 = v16;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v33)
          {
            v34 = *(a1 + 32);
            *buf = 136446978;
            v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
            v47 = 2114;
            v48 = v34;
            v49 = 1024;
            v50 = v16;
            v51 = 2082;
            v52 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v32, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_46;
        }

        if (v33)
        {
          v37 = *(a1 + 32);
          *buf = 136446722;
          v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v47 = 2114;
          v48 = v37;
          v49 = 1024;
          v50 = v16;
          _os_log_impl(&dword_181A37000, v28, v32, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v28, type))
        {
          v36 = *(a1 + 32);
          *buf = 136446722;
          v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v47 = 2114;
          v48 = v36;
          v49 = 1024;
          v50 = v16;
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_46:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_48;
  }
}

void ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 != 200)
  {
    if (v3 == 255)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 32);
    v11 = 136446466;
    v12 = "nw_socks5_connection_start_on_queue_block_invoke";
    v13 = 2114;
    v14 = v5;
    v6 = "%{public}s %{public}@ in connection read close before proxy connection ready, cancelling";
    goto LABEL_11;
  }

  v7 = *(v2 + 160);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v7 < 0)
  {
    if (!v8)
    {
LABEL_12:

      nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
      return;
    }

    v10 = *(a1 + 32);
    v11 = 136446466;
    v12 = "nw_socks5_connection_start_on_queue_block_invoke";
    v13 = 2114;
    v14 = v10;
    v6 = "%{public}s %{public}@ in connection read close for associated UDP connection, cancelling";
LABEL_11:
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, v6, &v11, 0x16u);
    goto LABEL_12;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    v11 = 136446466;
    v12 = "nw_socks5_connection_start_on_queue_block_invoke";
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ ignoring in connection read close event", &v11, 0x16u);
  }
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136446466;
      v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}@ out connection write close done", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v4 = v3;
  v5 = v4[3];

  if ((v5 - 6) > 0x3B || ((1 << (v5 - 6)) & 0x8C9B80004000001) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v28 = 2114;
    v29 = v12;
    v30 = 1024;
    v31 = v5;
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
          v16 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v28 = 2114;
          v29 = v16;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ out connection write close error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v19)
          {
            v20 = *(a1 + 32);
            *buf = 136446978;
            v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v28 = 2114;
            v29 = v20;
            v30 = 1024;
            v31 = v5;
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ out connection write close error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v19)
        {
          v23 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v28 = 2114;
          v29 = v23;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ out connection write close error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          v22 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v28 = 2114;
          v29 = v22;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s %{public}@ out connection write close error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_32:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v28 = 2114;
    v29 = v8;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ out connection write close error %{darwin.errno}d", buf, 0x1Cu);
  }

LABEL_12:

LABEL_13:
  *(*(a1 + 32) + 160) |= 1u;
  v10 = *(a1 + 32);
  if ((~v10[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v10, v3);
  }

LABEL_15:
}

uint64_t sub_181F2AE8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F2AEAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 152) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NECPKernelPolicyRoutingResultParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NECPKernelPolicyRoutingResultParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

_DWORD *sub_181F2AF64@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_181F2AF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for SystemUUID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemUUID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_181F2AFEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F2B00C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DefaultManyToManyProtocol.MultiplexedFlowIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7Network16GlobalStatisticsVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unsigned __int8 *sub_181F2B104@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

BOOL sub_181F2B1B4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_181F2B1E4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_181F2B210@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_181F2B340()
{

  return swift_deallocObject();
}

uint64_t sub_181F2B388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

void sub_181F2B3D0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  nw_ws_options_set_auto_reply_ping(*(v3 + 16), v2);
}

uint64_t sub_181F2B420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

void sub_181F2B468(size_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  nw_ws_options_set_maximum_message_size(*(v3 + 16), v2);
}

uint64_t sub_181F2B4B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

void sub_181F2B500(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  nw_ws_options_set_skip_handshake(*(v3 + 16), v2);
}

uint64_t sub_181F2B550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 42);
  *a2 = *(v3 + 40);
  *(a2 + 2) = v5;
  return result;
}

void sub_181F2B5A0(uint64_t a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_181F4C1DC(&v2);
}

uint64_t sub_181F2B614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_181F2B698()
{
  swift_getWitnessTable();

  return sub_182AD3768();
}

uint64_t sub_181F2B71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_181F2B7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F2B820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F2B8B8()
{
  type metadata accessor for NetworkBrowser.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD3728();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2B9C8()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD3728();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BB20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2BB78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2BBB8()
{

  return swift_deallocObject();
}

uint64_t sub_181F2BBF0()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BD08()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BDE4()
{
  type metadata accessor for NetworkBrowser.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BEB8()
{
  swift_unknownObjectRelease();
  sub_181F5DEC4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_181F2BF0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2BF4C()
{
  type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F2C008()
{
  type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2C100()
{

  return swift_deallocObject();
}

double sub_181F2C170@<D0>(_OWORD *a1@<X8>)
{
  ProtocolStack.transport.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_181F2C1AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  *(v4 + 32) = *a1;
  *(v4 + 40) = v3;
  sub_181AC8268(v2, v3);

  return sub_181A5301C(v5, v6);
}

double sub_181F2C1FC@<D0>(_OWORD *a1@<X8>)
{
  ProtocolStack.link.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_181F2C238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 64);
  *(v4 + 64) = *a1;
  *(v4 + 72) = v3;
  sub_181AB78DC(v2);

  return sub_181AC3890(v5);
}

uint64_t sub_181F2C2B4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2C334()
{
  if ((v0[1] & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  return result;
}

uint64_t sub_181F2C370()
{
  result = *v0;
  if (*v0)
  {
    return MEMORY[0x1865DB070]();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network20OutputHandlerLinkageV01_bC0O_0(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_181F2C3DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F2C414()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2C478()
{
  swift_unknownObjectRelease();

  sub_181C1F2E4(*(v0 + 40), *(v0 + 48));
  sub_181C1F2E4(*(v0 + 56), *(v0 + 64));
  sub_181C1F2E4(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_181F2C4E4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2C558()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_181F2C5B8()
{
  v1 = *(type metadata accessor for NetworkStorage.AltSvcEntry(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_182AD21E8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_181F2C6F4()
{
  v1 = v0[3];
  if (v1 >> 60 != 15)
  {
    sub_181C1F2E4(v0[2], v1);
    sub_181C1F2E4(v0[4], v0[5]);
    sub_181C1F2E4(v0[6], v0[7]);
  }

  return swift_deallocObject();
}

uint64_t sub_181F2C754()
{

  return swift_deallocObject();
}

uint64_t sub_181F2C7E4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2C82C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181F2C884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181F2C8DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181F2C934@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_181F2C98C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_181F2CB3C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CB84()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CBCC()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CC04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F2CCC0()
{
  if (*v0)
  {
    return 0x6E69616D6F64;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_181F2CCF8()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CD30()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_181F2CDB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_181F2CE70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F2CF20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NWEndpoint();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_181F2CFCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NWEndpoint();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F2D07C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2D0F8()
{

  return swift_deallocObject();
}

uint64_t sub_181F2D138(uint64_t result, uint64_t a2)
{

  return sub_181FABC0C(result, a2);
}

uint64_t sub_181F2D190()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_181C1F2E4(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_181F2D258@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.alternatives.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F2D378@<X0>(_BYTE *a1@<X8>)
{
  result = NWEndpoint.remoteInterfaceType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_181F2D418@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.publicKeys.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F2D448@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.deviceName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D48C@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.deviceModel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D4D8@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.deviceID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D51C@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.contactID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D560@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.applicationService.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_181F2D604@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_182AE8230;
  return result;
}

uint64_t sub_181F2D614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_181F49B44(*a1, v2);
  return NWEndpoint.pairingData.setter(v1, v2);
}

uint64_t sub_181F2D660()
{
  sub_181C1F2E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_181F2D698()
{

  return swift_deallocObject();
}

_BYTE *sub_181F2D7A0(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFE;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D7DC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFD;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D818(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFB;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D854(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFF7;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D890(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x10) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10;
  }

  else
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFEF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D8CC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x20) != 0)
    {
      return result;
    }

    v3 = v2 | 0x20;
  }

  else
  {
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFDF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D908(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x40) != 0)
    {
      return result;
    }

    v3 = v2 | 0x40;
  }

  else
  {
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFBF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D944(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x80) != 0)
    {
      return result;
    }

    v3 = v2 | 0x80;
  }

  else
  {
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFF7F;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D970(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x100) != 0)
    {
      return result;
    }

    v3 = v2 | 0x100;
  }

  else
  {
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFEFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D9AC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x200) != 0)
    {
      return result;
    }

    v3 = v2 | 0x200;
  }

  else
  {
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFDFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D9E8(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x400) != 0)
    {
      return result;
    }

    v3 = v2 | 0x400;
  }

  else
  {
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFBFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DA24(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x800) != 0)
    {
      return result;
    }

    v3 = v2 | 0x800;
  }

  else
  {
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFF7FF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DA60(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x2000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x2000;
  }

  else
  {
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFDFFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DA9C(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x4000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x4000;
  }

  else
  {
    if ((v2 & 0x4000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFBFFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DAD8(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x8000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x8000;
  }

  else
  {
    if ((v2 & 0x8000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFF7FFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DB14(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x10000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10000;
  }

  else
  {
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFEFFFF;
  }

  *(a2 + 44) = v3;
  return result;
}

uint64_t sub_181F2DFE4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E01C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_181FBA13C();
  *a1 = result;
  return result;
}

uint64_t sub_181F2E048()
{

  sub_181FBC07C(v0);
}

BOOL sub_181F2E08C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_quic_get_stream_is_unidirectional(*(*a1 + 16));
  *a2 = result;
  return result;
}

BOOL sub_181F2E0D0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_quic_get_stream_is_datagram(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F2E114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_idle_timeout(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E148(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >= 0xFFFFFFFFLL)
  {
    v2 = 0xFFFFFFFFLL;
  }

  nw_quic_set_idle_timeout(*(*a2 + 16), v2 & ~(v2 >> 63));
}

uint64_t sub_181F2E16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_max_udp_payload_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E1A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >= 0xFFFF)
  {
    v2 = 0xFFFFLL;
  }

  nw_quic_set_max_udp_payload_size(*(*a2 + 16), v2 & ~(v2 >> 63));
}

uint64_t sub_181F2E2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_max_datagram_frame_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F2E344@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_initial_packet_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F2E3AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nw_quic_get_stream_application_error(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E490(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v3 + 24) = *a1;
  nw_quic_stream_set_is_unidirectional(*(v3 + 16), v2);
}

uint64_t sub_181F2E4A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nw_quic_stream_get_application_error(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E4FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + 24) = *a1;
  if (v2 >= 0xFFFFFFFFLL)
  {
    v2 = 0xFFFFFFFFLL;
  }

  nw_quic_connection_set_idle_timeout(*(v3 + 16), v2 & ~(v2 >> 63));
}

void sub_181F2E534(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + 32) = *a1;
  if (v2 >= 0xFFFF)
  {
    v2 = 0xFFFFLL;
  }

  nw_quic_connection_set_max_udp_payload_size(*(v3 + 16), v2 & ~(v2 >> 63));
}

void sub_181F2E56C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 40) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_data(*(v4 + 16), v3);
  }
}

void sub_181F2E59C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 48) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(*(v4 + 16), v3);
  }
}

void sub_181F2E5CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 56) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_local(*(v4 + 16), v3);
  }
}

void sub_181F2E5FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 64) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_unidirectional(*(v4 + 16), v3);
  }
}

void sub_181F2E62C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 72) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_bidirectional(*(v4 + 16), v3);
  }
}

void sub_181F2E65C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 80) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_unidirectional(*(v4 + 16), v3);
  }
}

uint64_t sub_181F2E72C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F2E768()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E7A0()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E7D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_181F2E844()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for FrameArray;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F2E87C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E8B4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EA8C()
{
  type metadata accessor for BrowserProviderFactories.ApplicationService();

  return swift_getWitnessTable();
}

uint64_t sub_181F2EAD8()
{

  sub_181C1F2E4(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_181F2EB20()
{

  sub_181C1F2E4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_181F2EB68()
{

  sub_181C1F2E4(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_181F2EBB0()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_181C1F2E4(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_181F2EC08()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EC54()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2ED18()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2EDF4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EE40()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181F2EF9C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EFD4()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181F2F134()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F2F16C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2F1F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  *a2 = v3;
  a2[1] = v2;
  return sub_181E6550C(v3);
}

uint64_t sub_181F2F204(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 56);
  sub_181E6550C(*a1);
  result = sub_181AB612C(v5);
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_181F2F2A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_listener_get_new_connection_limit(*(*a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_181F2F36C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return HTTPField.value.setter(v1, v2);
}

uint64_t sub_181F2F3AC()
{

  return swift_deallocObject();
}

uint64_t sub_181F2F404()
{

  return swift_deallocObject();
}

uint64_t sub_181F30580()
{

  return swift_deallocObject();
}

uint64_t sub_181F305C8()
{

  return swift_deallocObject();
}

ValueMetadata *sub_181F306B0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for StreamSendBuffer;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F306E8()
{

  return swift_deallocObject();
}

uint64_t sub_181F30730()
{

  return swift_deallocObject();
}

void *sub_181F30C18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for FrameArray;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F30CD0()
{

  return swift_deallocObject();
}

uint64_t sub_181F30D18()
{

  return swift_deallocObject();
}

uint64_t sub_181F30D50()
{

  return swift_deallocObject();
}

uint64_t sub_181F31A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F31B2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_182AD23C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F31BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_181F31D00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_181F31E30(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_182AD23C8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_181F31FB4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_182AD23C8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_181F32138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_182AD23C8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_181F321B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_182AD23C8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_181F3222C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F322D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_182AD23C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_181F32390(id result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_181F68EA8(result, a2, a3);
  }

  return result;
}

uint64_t sub_181F32428()
{

  return swift_deallocObject();
}

uint64_t sub_181F32470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F324E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F32564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_181F3262C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_181F326F0()
{

  return swift_deallocObject();
}

void sub_181F3273C(uint64_t a1, unint64_t a2)
{
  v4 = sub_182AD2188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_181C1F2E4(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_181AC1BE8(v9, 0);
      v12 = sub_182AD20B8();
      sub_181C1F2E4(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_181F328BC()
{

  return swift_deallocObject();
}

uint64_t sub_181F328F4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_181F329C4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

uint64_t sub_181F32AB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F32AF4()
{

  return swift_deallocObject();
}

uint64_t sub_181F32B38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = nw_ip_options_get_version(*(*a1 + 16));
  v4 = 2 * (result == 6);
  if (result == 4)
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_181F32B98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_ip_options_get_hop_limit(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F32BDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_ip_options_get_use_minimum_mtu(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F32C20@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = nw_ip_options_get_fragmentation_value(*(*a1 + 16));
  *a2 = result == 1;
  return result;
}

uint64_t sub_181F32C6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_ip_options_get_calculate_receive_time(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F32CB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = nw_ip_options_get_local_address_preference(*(*a1 + 16));
  v4 = 2 * (result == 2);
  if (result == 1)
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_181F32D08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_ip_options_get_disable_multicast_loopback(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F32D4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182092C58(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_181F32D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182092D38(&v3);
  *a1 = v3;
  return result;
}

void sub_181F32DCC(_BYTE *a1@<X8>)
{

  sub_182093930(v2, a1);
}

uint64_t sub_181F32F00()
{

  return swift_deallocObject();
}

uint64_t sub_181F32F38@<X0>(uint64_t *a1@<X8>)
{
  result = Connection7<>.streamApplicationErrorCode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F32FC4()
{

  return swift_deallocObject();
}

uint64_t sub_181F33038()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F33148()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F334C8@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkListener.newConnectionLimit.getter();
  *a1 = result;
  return result;
}

__n128 sub_181F33528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_181F33534@<Q0>(uint64_t a1@<X8>)
{
  NetworkListener.service.getter(v5);
  v2 = v6[0];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 91) = *(v6 + 11);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_181F3363C()
{

  return swift_deallocObject();
}

uint64_t sub_181F33714()
{
  type metadata accessor for Listener8.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F337E4()
{

  return swift_deallocObject();
}

uint64_t sub_181F339CC()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

uint64_t sub_181F33A68()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 185);
  MEMORY[0x1865DB070](*(*v0 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v1]);
  return MEMORY[0x1865DB070](qword_182AF5540[v2]);
}

uint64_t sub_181F33AE4()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

uint64_t sub_181F33B84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F33BBC()
{

  return swift_deallocObject();
}

uint64_t sub_181F33C04()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F33C3C()
{

  return swift_deallocObject();
}

ValueMetadata *sub_181F33CB0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for Frame;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F33CE8()
{

  return swift_deallocObject();
}

uint64_t sub_181F33D30()
{

  return swift_deallocObject();
}

uint64_t sub_181F33E98@<X0>(_BYTE *a1@<X8>)
{
  result = NWActivity.reportingStrategy.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_181F33EE4()
{

  sub_181C58A34(v0);
}

void *sub_181F33F68(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_181F34060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for NWActorID();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_181F341E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_182AD2258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for NWActorID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_181F34A98()
{

  return swift_deallocObject();
}

uint64_t sub_181F34AE0()
{

  return swift_deallocObject();
}

uint64_t sub_181F34B90()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5C0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_181F34BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD21E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_181F34C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_182AD21E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_181F34E7C()
{

  return swift_deallocObject();
}

uint64_t sub_181F34EC4()
{

  return swift_deallocObject();
}

uint64_t sub_181F34FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_181F35108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_181F35244()
{

  return swift_deallocObject();
}

uint64_t sub_181F35284()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F352C0()
{
  MEMORY[0x1865DF630](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_181F35328()
{

  return swift_deallocObject();
}

uint64_t sub_181F35370()
{

  return swift_deallocObject();
}

uint64_t sub_181F353B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F353F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F35454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteCallEnvelope(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F354C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteCallEnvelope(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F35530()
{

  return swift_deallocObject();
}

uint64_t sub_181F35568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_181C1F2E4(*(v0 + v4 + 8), *(v0 + v4 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F35658()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F35694()
{
  v1 = (type metadata accessor for RemoteCallEnvelope(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_182AD2258();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = v3 + v1[7];

  v7 = type metadata accessor for NWActorID();
  v5(v6 + *(v7 + 20), v4);

  return swift_deallocObject();
}

uint64_t sub_181F35808@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_udp_options_get_prefer_no_checksum(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F3589C()
{

  return swift_deallocObject();
}

uint64_t sub_181F35908()
{

  return swift_deallocObject();
}

uint64_t sub_181F35950()
{

  return swift_deallocObject();
}

uint64_t sub_181F35B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD2258();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F35BE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_182AD2258();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_181F35C88()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for FrameArray;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

_BYTE *sub_181F35CC0(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*result == 1)
  {
    if ((*(a2 + 8) & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  *(a2 + 8) = v3;
  return result;
}

_BYTE *sub_181F35CFC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*result == 1)
  {
    if ((*(a2 + 32) & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((*(a2 + 32) & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_181F35D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_181F35D70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

__n128 sub_181F35DB4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  result = *(v3 + 24);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

__n128 sub_181F35E04(__n128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *a2;
  swift_beginAccess();
  result = v5;
  *(v3 + 24) = v5;
  *(v3 + 40) = v2;
  return result;
}

__n128 sub_181F35E58@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[4].n128_u64[0];
  result = v3[3];
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

__n128 sub_181F35EA8(__n128 *a1, __n128 **a2)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *a2;
  swift_beginAccess();
  result = v5;
  v3[3] = v5;
  v3[4].n128_u64[0] = v2;
  return result;
}

uint64_t sub_181F35EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_181F35F44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

uint64_t sub_181F35F88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F35FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F36014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  *a2 = v3;
  a2[1] = v2;
}

__n128 sub_181F36028@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  result = (*a1)[4];
  *a2 = result;
  return result;
}

uint64_t sub_181F3603C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F36050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 96);
  v2 = *(*a1 + 104);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F36064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 112);
  v2 = *(*a1 + 120);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F360A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 136);
  v2 = *(*a1 + 144);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F361C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18218F468(a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F36240@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v3 = a2;
  }

  *a3 = a1;
  *(a3 + 8) = v3;
}

uint64_t sub_181F362A8()
{

  return swift_deallocObject();
}

uint64_t sub_181F362E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_181F36330@<X0>(uint64_t *a1@<X8>)
{
  result = QUIC.Stream.streamApplicationErrorCode.getter();
  *a1 = result;
  return result;
}

__n128 sub_181F36390(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_181F3639C@<D0>(uint64_t a1@<X8>)
{
  NetworkConnection<>.applicationError.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

nw_protocol_metadata_t sub_181F363E0(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  return NetworkConnection<>.applicationError.setter(&v3);
}

NSObject *sub_181F36438@<X0>(NSObject **a1@<X8>)
{
  result = NetworkConnection<>.localMaxStreamsUnidirectional.getter();
  *a1 = result;
  return result;
}

NSObject *sub_181F3649C@<X0>(NSObject **a1@<X8>)
{
  result = NetworkConnection<>.localMaxStreamsBidirectional.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F36580@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkChannel<>.streamApplicationErrorCode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F365EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD35D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F3665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD35D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F366F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F3672C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F36780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F36858()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F36898()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F368D8()
{
  type metadata accessor for Coder.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80)), v1);
  return swift_deallocObject();
}

uint64_t sub_181F36A10()
{

  return swift_deallocObject();
}

uint64_t sub_181F36A70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F36B08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F36B58()
{

  return swift_deallocObject();
}

uint64_t sub_181F36B90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F36C68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F36CB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F36D8C()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F37090()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F370D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F37144()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37240()
{

  return swift_deallocObject();
}

uint64_t sub_181F37278()
{
  type metadata accessor for JSON.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37358()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F3741C()
{

  return swift_deallocObject();
}

uint64_t sub_181F37454()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37550()
{
  v1 = sub_182AD35A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F37618()
{
  type metadata accessor for Framer.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37710(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_181F37724()
{
  type metadata accessor for Coder.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80)), v1);
  return swift_deallocObject();
}

uint64_t sub_181F37820()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F37884()
{

  return swift_deallocObject();
}

uint64_t sub_181F378BC()
{

  return swift_deallocObject();
}

uint64_t sub_181F378F4()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37CA4()
{

  return swift_deallocObject();
}

uint64_t sub_181F37CDC()
{

  return swift_deallocObject();
}

uint64_t sub_181F382C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_no_delay(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38308@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_no_push(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F3834C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_no_options(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38390@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_enable_keepalive(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F383D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_keepalive_count(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38434@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_keepalive_idle_time(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38494@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_keepalive_interval(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F384F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_maximum_segment_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_connection_timeout(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F385B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_persist_timeout(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_tcp_options_get_retransmit_connection_drop_time(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_retransmit_fin_drop(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F386B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_disable_ack_stretching(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F386FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_enable_fast_open(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38740@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_tcp_options_get_disable_ecn(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F38788()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F387C4()
{

  return swift_deallocObject();
}

uint64_t sub_181F38858(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for NWEndpoint();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_181F388FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for NWEndpoint();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_181F38A18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1EEFD0728;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F38A54()
{

  return swift_deallocObject();
}

uint64_t sub_181F38A9C()
{

  return swift_deallocObject();
}

double sub_181F38B50@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  HTTPResponse.status.getter(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_181F38B9C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  return HTTPResponse.status.setter(&v3);
}

uint64_t sub_181F38BF0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_181F38C48()
{

  return swift_deallocObject();
}

uint64_t sub_181F38CF4()
{

  return swift_deallocObject();
}

uint64_t sub_181F38D2C()
{

  return swift_deallocObject();
}

uint64_t sub_181F38DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWBrowser.Result(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_181F38EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NWBrowser.Result(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

_DWORD *sub_181F38F6C@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181F38F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F38FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F39074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2B78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_181F39170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_182AD2B78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_181F39278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2B78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_181F39390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_182AD2B78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_181F394C4()
{

  return swift_deallocObject();
}

uint64_t sub_181F394FC()
{

  return swift_deallocObject();
}

void sub_181F39D9C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_181F39DB8()
{

  return swift_deallocObject();
}

uint64_t sub_181F39DF0()
{
  sub_181C1F2E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_181F39E28@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = NWTXTRecord.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_181F39E80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F39EBC()
{

  return swift_deallocObject();
}

uint64_t sub_181F39F54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_181F39FC0()
{

  return swift_deallocObject();
}

uint64_t sub_181F3A00C()
{

  return swift_deallocObject();
}

uint64_t sub_181F3A080()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F3A190()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F3A5D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F3A608()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

__n128 sub_181F3A6D0@<Q0>(uint64_t a1@<X8>)
{
  ProtocolOptions<>.tlsOptions.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_181F3A724(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v7 = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  sub_1820752BC(v6, v5);
  return ProtocolOptions<>.tlsOptions.setter(a1);
}

uint64_t sub_181F3A79C()
{

  return swift_deallocObject();
}

uint64_t sub_181F3A7E4()
{

  return swift_deallocObject();
}

void sub_181F3A8B4(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_18228AA98(a1, a2);
}

BOOL sub_181F3B05C@<W0>(nw_proxy_config_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_proxy_config_get_failover_allowed(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F3B098@<X0>(uint64_t *a1@<X8>)
{
  result = ProxyConfiguration.matchDomains.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F3B100@<X0>(uint64_t *a1@<X8>)
{
  result = ProxyConfiguration.excludedDomains.getter();
  *a1 = result;
  return result;
}

char *sub_181F3B168@<X0>(char **a1@<X8>)
{
  result = NSURLSessionConfiguration.proxyConfigurations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F3B1FC()
{

  return swift_deallocObject();
}

uint64_t sub_181F3B244()
{

  return swift_deallocObject();
}

void *sub_181F3B46C@<X0>(void *result@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  if (*result && *a2 <= 0x4Du && (v3 = *(*result + 8 * *a2), v3 < 0))
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void *sub_181F3B498(void *result, void *a2, unsigned int *a3)
{
  if (*a2)
  {
    v3 = *a3;
    if (v3 <= 0x4D)
    {
      if ((*result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        *(*a2 + 8 * v3) = *result;
      }
    }
  }

  return result;
}

uint64_t sub_181F3B4D0@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {
    result = sub_181A41ED0(*a2);
    if (v6)
    {
      v5 = *(*(v4 + 56) + 8 * result);
    }

    else
    {
      v5 = 0;
    }
  }

  *a3 = v5;
  return result;
}

__n128 sub_181F3B530@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_181F3B564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_181F3B598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NWActorID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_181F3B6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_182AD2258();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NWActorID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_181F3B7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F3B820(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_181F3B8D4@<D0>(_OWORD *a1@<X8>)
{
  ProtocolOptions.protocolInstance.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_181F3B910(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_1822B3360(v3[0], v1);
  return ProtocolOptions.protocolInstance.setter(v3);
}

__n128 sub_181F3B960(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_181F3B96C@<X0>(uint64_t *a1@<X8>)
{
  result = ProtocolOptions.protocolHandle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F3B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NWActorID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F3BA7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NWActorID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F3BB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = ((*(a1 + *(a3 + 24) + 24) >> 60) & 3 | (4 * *(a1 + *(a3 + 24) + 32))) ^ 0x3FF;
    if (v10 >= 0x3FB)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_181F3BBE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_182AD2258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 24);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = (~a2 & 3) << 60;
    *(v11 + 32) = ~a2 >> 2;
  }

  return result;
}

uint64_t sub_181F3BCD0()
{

  return swift_deallocObject();
}

uint64_t sub_181F3BD18()
{

  return swift_deallocObject();
}

uint64_t sub_181F3BD50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_181F3BD98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_181F3BEDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RemoteCallEnvelope(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_181F3BF88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RemoteCallEnvelope(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F3C064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_181F3C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C088);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_181F3C2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C088);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_181F3CF20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

BOOL sub_181F3CFBC(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_181F3CFEC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_181F3D018@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for MultipathSpaceID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultipathSpaceID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_181F3D150(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D16C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_181F3D1B4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_181F3D1E4(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_WORD *sub_181F3D214@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

BOOL sub_181F3D290(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_181F3D2C0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_181F3D2EC@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

void *sub_181F3D3E0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_181F3D400@<X0>(unint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v4 = a1 + 8;
    if (a1 < 0xFFFFFFFFFFFFFFF8)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    v4 = qword_182AF7938[a1];
    goto LABEL_9;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  if (a1)
  {
    v4 = 49;
  }

  else
  {
    v4 = 48;
  }

LABEL_9:
  result = InPlaceSerializer.vle(_:)(v4, &v7);
  v6 = v8;
  *a3 = v7;
  *(a3 + 8) = v6;
  return result;
}

void sub_181F3D4C0(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_181F68E5C(a1, a2, a3);
  }
}

uint64_t sub_181F3D4E8()
{
  sub_181F3D244();
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_181F3D56C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 624))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D58C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 624) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AgentResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AgentResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EthernetAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EthernetAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VSOCKAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VSOCKAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy56_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_181F3D8E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D908(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_181F3D978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

uint64_t sub_181F3DADC()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  sub_182AD2368();
  return sub_182AD4558();
}

uint64_t sub_181F3DB4C(uint64_t a1, id *a2)
{
  result = sub_182AD2F68();
  *a2 = 0;
  return result;
}

uint64_t sub_181F3DBC4(uint64_t a1, id *a2)
{
  v3 = sub_182AD2F78();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_181F3DC44@<X0>(uint64_t *a1@<X8>)
{
  sub_182AD2F88();
  v2 = sub_182AD2F58();

  *a1 = v2;
  return result;
}

uint64_t sub_181F3DC88()
{
  v0 = sub_182AD2F88();
  v1 = MEMORY[0x1865D9D70](v0);

  return v1;
}

uint64_t sub_181F3DCC4()
{
  sub_182AD2F88();
  sub_182AD30E8();
}

uint64_t sub_181F3DD18()
{
  sub_182AD2F88();
  sub_182AD44E8();
  sub_182AD30E8();
  v0 = sub_182AD4558();

  return v0;
}

uint64_t sub_181F3DD8C()
{
  swift_getWitnessTable();

  return sub_182AD2358();
}

uint64_t sub_181F3DE40()
{
  v0 = sub_182AD2F88();
  v2 = v1;
  if (v0 == sub_182AD2F88() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_182AD4268();
  }

  return v5 & 1;
}

uint64_t sub_181F3DF10(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181F3DF58@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_182AD2F58();

  *a1 = v2;
  return result;
}

uint64_t sub_181F3DFA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_182AD2F88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_181F3DFF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3E014(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Recovery.PathState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Recovery.PathState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_181F3E100(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3E120(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

uint64_t sub_181F3E1F0(uint64_t a1)
{
  v2 = sub_181F3DF10(&qword_1EA838490, type metadata accessor for URLResourceKey);
  v3 = sub_181F3DF10(&qword_1EA838498, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_181F3E410(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_181F3E46C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}
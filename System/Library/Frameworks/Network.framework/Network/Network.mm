BOOL nw_activity_label_is_valid(int a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1 - 900;
  v4 = a1 - 11;
  result = (a1 - 900) < 0x64;
  if (v3 < 0x64 || v4 < 0x34)
  {
    switch(v4)
    {
      case 0u:
        if ((a2 - 1) < 8)
        {
          goto LABEL_10;
        }

        break;
      case 1u:
      case 0x16u:
      case 0x1Bu:
      case 0x1Fu:
      case 0x25u:
      case 0x32u:
      case 0x33u:
        if ((a2 - 1) < 3)
        {
          goto LABEL_10;
        }

        break;
      case 2u:
      case 5u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x18u:
      case 0x27u:
      case 0x2Eu:
        if ((a2 - 1) < 2)
        {
          goto LABEL_10;
        }

        break;
      case 3u:
      case 0x15u:
        if ((a2 - 1) < 0xC)
        {
          goto LABEL_10;
        }

        break;
      case 4u:
      case 0x22u:
        if ((a2 - 1) < 9)
        {
          goto LABEL_10;
        }

        break;
      case 6u:
      case 0x13u:
      case 0x2Bu:
      case 0x2Cu:
        if ((a2 - 1) < 4)
        {
          goto LABEL_10;
        }

        break;
      case 7u:
        if ((a2 - 1) < 0x11)
        {
          goto LABEL_10;
        }

        break;
      case 0xAu:
      case 0x2Fu:
        if ((a2 - 1) < 0x17)
        {
          goto LABEL_10;
        }

        break;
      case 0xBu:
      case 0x1Eu:
        if ((a2 - 1) < 6)
        {
          goto LABEL_10;
        }

        break;
      case 0xCu:
        if ((a2 - 1) < 0x18)
        {
          goto LABEL_10;
        }

        break;
      case 0x10u:
      case 0x11u:
      case 0x12u:
        if ((a2 - 1) < 0x42)
        {
          goto LABEL_10;
        }

        break;
      case 0x14u:
      case 0x1Cu:
      case 0x23u:
        if (a2 == 1)
        {
          goto LABEL_10;
        }

        break;
      case 0x17u:
      case 0x28u:
      case 0x31u:
        if ((a2 - 1) < 0xB)
        {
          goto LABEL_10;
        }

        break;
      case 0x19u:
      case 0x26u:
        if ((a2 - 1) < 0xA)
        {
          goto LABEL_10;
        }

        break;
      case 0x1Au:
      case 0x24u:
        if ((a2 - 1) < 0xD)
        {
          goto LABEL_10;
        }

        break;
      case 0x1Du:
      case 0x21u:
      case 0x29u:
      case 0x30u:
        if ((a2 - 1) < 7)
        {
          goto LABEL_10;
        }

        break;
      case 0x20u:
        if ((a2 - 1) < 0x10)
        {
          goto LABEL_10;
        }

        break;
      case 0x2Au:
        if ((a2 - 1) < 5)
        {
LABEL_10:
          result = 1;
        }

        break;
      default:
        return result;
    }
  }

  else
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v7 = gactivityLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109376;
      v8[1] = a2;
      v9 = 1024;
      v10 = a1;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "Label %u is not valid because domain %u is not valid", v8, 0xEu);
    }

    return 0;
  }

  return result;
}

uint64_t nw_activity_should_log(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    *v25 = "nw_activity_should_log";
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
          *v25 = "nw_activity_should_log";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null activity", buf, 0xCu);
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
            *v25 = "nw_activity_should_log";
            *&v25[8] = 2082;
            *&v25[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_66;
        }

        if (v20)
        {
          *buf = 136446210;
          *v25 = "nw_activity_should_log";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          *v25 = "nw_activity_should_log";
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_66:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_44;
  }

  if ((v1[35] & 2) != 0)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v5 = gactivityLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *v25 = v2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "Not checking if we should log for lightweight activity %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (!nw_activity_label_is_valid(v1[29], v1[28]))
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v5 = gactivityLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "Returning true for logging about invalid label", buf, 2u);
    }

    goto LABEL_19;
  }

  if (v2[35] & 4) != 0 && (*(v2 + 17))
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v5 = gactivityLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *v25 = v2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "Returning true for logging about activity that is selected for reporting %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v3 = v2[29];
  if (v3 == 12)
  {
    v9 = v2[28];
    if (v9 == 3)
    {
      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v10 = gactivityLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = nw_activity_domain_and_label_to_string(v2[29], v2[28]);
        *buf = 67109378;
        *v25 = 0;
        *&v25[4] = 2082;
        *&v25[6] = v13;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "Returning should log: %u for activity %{public}s", buf, 0x12u);
      }
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_20;
      }

      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v10 = gactivityLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = nw_activity_domain_and_label_to_string(v2[29], v2[28]);
        *buf = 67109378;
        *v25 = 0;
        *&v25[4] = 2082;
        *&v25[6] = v11;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "Returning should log: %u for activity %{public}s", buf, 0x12u);
      }
    }

    goto LABEL_43;
  }

  if (v3 != 11)
  {
    goto LABEL_20;
  }

  v4 = v2[28];
  if (v4 == 8)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v10 = gactivityLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = nw_activity_domain_and_label_to_string(v2[29], v2[28]);
      *buf = 67109378;
      *v25 = 0;
      *&v25[4] = 2082;
      *&v25[6] = v12;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "Returning should log: %u for activity %{public}s", buf, 0x12u);
    }

LABEL_43:

LABEL_44:
    v7 = 0;
    goto LABEL_21;
  }

  if (v4 == 7)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v5 = gactivityLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = nw_activity_domain_and_label_to_string(v2[29], v2[28]);
      *buf = 67109378;
      *v25 = 1;
      *&v25[4] = 2082;
      *&v25[6] = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "Returning should log: %u for activity %{public}s", buf, 0x12u);
    }

LABEL_19:
  }

LABEL_20:
  v7 = 1;
LABEL_21:

  return v7;
}

_DWORD *nw_activity_create(int a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [NWConcrete_nw_activity alloc];
  if (!v4)
  {
    return 0;
  }

  v29.receiver = v4;
  v29.super_class = NWConcrete_nw_activity;
  v5 = objc_msgSendSuper2(&v29, sel_init);
  v6 = v5;
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
            *&v31[8] = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v20, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_40;
        }

        if (v21)
        {
          *buf = 136446210;
          *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
          _os_log_impl(&dword_181A37000, v13, v25, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_40:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  v5[28] = a2;
  v5[29] = a1;
  *(v5 + 140) &= ~2u;
  if (nw_activity_should_log(v5))
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v7 = gactivityLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v6[28];
      v8 = v6[29];
      *buf = 67109376;
      *v31 = v8;
      *&v31[4] = 1024;
      *&v31[6] = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "Create activity <nw_activity %u:%u>", buf, 0xEu);
    }
  }

  if (!nw_activity_label_is_valid(a1, a2))
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v16, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Invalid domain or label specified", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v17, type);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
            *&v31[8] = 2082;
            v32 = v22;
            _os_log_impl(&dword_181A37000, v17, v23, "%{public}s Invalid domain or label specified, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_46;
        }

        if (v24)
        {
          *buf = 136446210;
          *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
          _os_log_impl(&dword_181A37000, v17, v23, "%{public}s Invalid domain or label specified, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          *v31 = "[NWConcrete_nw_activity initWithDomain:label:]";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s Invalid domain or label specified, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_46:
    if (v16)
    {
      free(v16);
    }
  }

  return v6;
}

void nw_activity_activate(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *v30 = 0;
    *&v30[8] = v30;
    *&v30[16] = 0x2020000000;
    v31 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_activity_activate_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v27 = v30;
    v3 = v1;
    v26 = v3;
    v4 = _Block_copy(aBlock);
    v28 = v4;
    nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v2 + 20, &v28);

    if (*(*&v30[8] + 24) == 1)
    {
      v5 = v3;
      v6 = v5;
      if ((v5[35]._os_unfair_lock_opaque & 4) != 0)
      {
        v7 = v5 + 2;
        if (!uuid_is_null(&v5[2]))
        {
          if (nw_activity_should_log(v6))
          {
            v8 = v6;
            if (uuid_is_null(v6 + 8))
            {
              v9 = nw_activity_signpost_id_fallback();
            }

            else
            {
              v9 = *(v8 + 2) ^ *&v7->_os_unfair_lock_opaque;
            }

            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v10 = gactivityLogObj;
            v11 = v10;
            if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              v13 = *(v8 + 28);
              v12 = *(v8 + 29);
              *buf = 67109890;
              *&buf[4] = v12;
              v33 = 1024;
              v34 = v13;
              v35 = 1040;
              v36 = 16;
              v37 = 2096;
              v38 = v7;
              _os_signpost_emit_with_name_impl(&dword_181A37000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "nw_activity", "<%u:%u [%{uuid_t}.16P]>", buf, 0x1Eu);
            }
          }
        }
      }

      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      *buf = nw_context_copy_implicit_context::implicit_context;
      LOBYTE(v33) = -1;
      v14 = *buf;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __nw_activity_activate_block_invoke_55;
      v23[3] = &unk_1E6A3D868;
      v24 = v6;
      nw_queue_context_async_if_needed(v14, v23);

      if (v14)
      {
      }
    }

    _Block_object_dispose(v30, 8);
    goto LABEL_20;
  }

  v15 = __nwlog_obj();
  *v30 = 136446210;
  *&v30[4] = "nw_activity_activate";
  v16 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v29 = 0;
  if (__nwlog_fault(v16, buf, &v29))
  {
    if (buf[0] == 17)
    {
      v17 = __nwlog_obj();
      v18 = buf[0];
      if (os_log_type_enabled(v17, buf[0]))
      {
        *v30 = 136446210;
        *&v30[4] = "nw_activity_activate";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null activity", v30, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v20 = buf[0];
      v21 = os_log_type_enabled(v17, buf[0]);
      if (backtrace_string)
      {
        if (v21)
        {
          *v30 = 136446466;
          *&v30[4] = "nw_activity_activate";
          *&v30[12] = 2082;
          *&v30[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null activity, dumping backtrace:%{public}s", v30, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (v21)
      {
        *v30 = 136446210;
        *&v30[4] = "nw_activity_activate";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null activity, no backtrace", v30, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v17, buf[0]))
      {
        *v30 = 136446210;
        *&v30[4] = "nw_activity_activate";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null activity, backtrace limit exceeded", v30, 0xCu);
      }
    }
  }

LABEL_38:
  if (v16)
  {
    free(v16);
  }

LABEL_20:
}

void sub_181A3AC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(os_unfair_lock_s *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_synchronize";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_synchronize";
        v8 = "%{public}s called with null lock";
LABEL_33:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_synchronize";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null lock, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v5)
        {
          return;
        }

        goto LABEL_36;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_synchronize";
        v8 = "%{public}s called with null lock, no backtrace";
        goto LABEL_33;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_synchronize";
        v8 = "%{public}s called with null lock, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  if (*a2)
  {
    os_unfair_lock_lock(a1);
    (*(*a2 + 16))();

    os_unfair_lock_unlock(a1);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_synchronize";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v17 = "nw_synchronize";
      v8 = "%{public}s called with null func";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v14 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v17 = "nw_synchronize";
      v8 = "%{public}s called with null func, backtrace limit exceeded";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_synchronize";
      v8 = "%{public}s called with null func, no backtrace";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_synchronize";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null func, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
LABEL_36:
    free(v5);
  }
}

void __nw_activity_activate_block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 140) & 4) == 0;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    return;
  }

  v2 = mach_continuous_time();
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *(*(a1 + 32) + 32) = v3;
  if (!nw_activity_is_lightweight_representation(*(a1 + 32)))
  {
    if (!*(*(a1 + 32) + 24))
    {
      *(*(a1 + 32) + 24) = nw_activity_get_investigation_id_from_defaults();
      v4 = *(a1 + 32);
      if (!v4[3])
      {
        v7 = v4;
LABEL_13:
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL51nw_activity_inherit_from_global_parent_if_necessaryP22NWConcrete_nw_activity_block_invoke;
        v64 = &unk_1E6A3D868;
        v65 = v7;
        v8 = v7;
        v9 = _Block_copy(buf);
        *__upper_bound = v9;
        nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(&global_parent_lock, __upper_bound);

        goto LABEL_14;
      }
    }

    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v5 = gactivityLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%@ overriding reporting strategy to always due to investigation identifier", buf, 0xCu);
    }

    *(*(a1 + 32) + 132) = 3;
    v7 = *(a1 + 32);
    if (v7)
    {
      goto LABEL_13;
    }

    v38 = __nwlog_obj();
    *type = 136446210;
    v67 = "nw_activity_inherit_from_global_parent_if_necessary";
    v39 = _os_log_send_and_compose_impl();

    v62 = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v39, &v62, &v61))
    {
      if (v62 == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = v62;
        if (os_log_type_enabled(v40, v62))
        {
          *type = 136446210;
          v67 = "nw_activity_inherit_from_global_parent_if_necessary";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null activity", type, 0xCu);
        }
      }

      else if (v61 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v49 = v62;
        v50 = os_log_type_enabled(v40, v62);
        if (backtrace_string)
        {
          if (v50)
          {
            *type = 136446466;
            v67 = "nw_activity_inherit_from_global_parent_if_necessary";
            v68 = 2082;
            v69 = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null activity, dumping backtrace:%{public}s", type, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_133;
        }

        if (v50)
        {
          *type = 136446210;
          v67 = "nw_activity_inherit_from_global_parent_if_necessary";
          _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null activity, no backtrace", type, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v57 = v62;
        if (os_log_type_enabled(v40, v62))
        {
          *type = 136446210;
          v67 = "nw_activity_inherit_from_global_parent_if_necessary";
          _os_log_impl(&dword_181A37000, v40, v57, "%{public}s called with null activity, backtrace limit exceeded", type, 0xCu);
        }
      }
    }

LABEL_133:
    if (v39)
    {
      free(v39);
    }

LABEL_14:
    v10 = *(a1 + 32);
    v11 = v10;
    if (v10)
    {
      v12 = v10[7];
      if (v12)
      {
        if ((v12[140] & 4) != 0)
        {
          if (nw_activity_is_lightweight_representation(v12))
          {
            v13 = *(v11 + 7);
          }

          else
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v17 = gactivityLogObj;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(v11 + 7);
              *buf = 138543618;
              *&buf[4] = v11;
              *&buf[12] = 2114;
              *&buf[14] = v18;
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "Activity %{public}@ inheriting reporting strategy from parent %{public}@", buf, 0x16u);
            }

            v13 = *(v11 + 7);
            *(v11 + 33) = v13[33];
          }

          is_selected_for_reporting = nw_activity_is_selected_for_reporting(v13);
          goto LABEL_58;
        }

        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v25 = gactivityLogObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "Cannot activate activity if parent is not yet activated (log only)", buf, 2u);
        }

        goto LABEL_56;
      }

      v14 = *(v11 + 33);
      if (v14 < 2)
      {
        *type = 0;
        __upper_bound[0] = 0;
        nw_activity_get_sampling_rate_for_domain(*(v11 + 29), type, __upper_bound);
        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v19 = gactivityLogObj;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          *&buf[4] = v11;
          *&buf[12] = 1024;
          *&buf[14] = *type;
          *&buf[18] = 1024;
          *&buf[20] = __upper_bound[0];
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ sampled at %u / %u", buf, 0x18u);
        }

        is_selected_for_reporting = arc4random_uniform(__upper_bound[0]) < *type;
      }

      else
      {
        if (v14 != 2)
        {
          if (v14 == 3)
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v15 = gactivityLogObj;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              *&buf[4] = v11;
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "Always reporting activity %{public}@", buf, 0xCu);
            }

            is_selected_for_reporting = 1;
            goto LABEL_44;
          }

          if (!nw_activity_label_is_valid(*(v11 + 29), *(v11 + 28)))
          {
LABEL_52:
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v25 = gactivityLogObj;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138739971;
              *&buf[4] = v11;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "Never reporting invalid activity %{sensitive}@", buf, 0xCu);
            }

LABEL_56:

LABEL_57:
            is_selected_for_reporting = 0;
LABEL_58:

            v26 = *(a1 + 32);
            uuid_generate_random(v26 + 8);
            *(v26 + 17) = *(v26 + 17) & 0xFE | is_selected_for_reporting;
            os_unfair_lock_lock(v26 + 26);
            v27 = *(v26 + 11);
            if ((*(v26 + 96) & 1) != 0 && v27)
            {
              *(v26 + 11) = 0;

              v27 = *(v26 + 11);
            }

            *(v26 + 11) = 0;

            os_unfair_lock_unlock(v26 + 26);
            if ((is_selected_for_reporting | nw_activity_should_log(*(a1 + 32))) == 1)
            {
              v28 = *(*(a1 + 32) + 56);
              if (__nwlog_activity_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
              }

              v29 = gactivityLogObj;
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              if (v28)
              {
                if (v30)
                {
                  v31 = *(a1 + 32);
                  v32 = *(v31 + 56);
                  *buf = 138543618;
                  *&buf[4] = v31;
                  *&buf[12] = 2114;
                  *&buf[14] = v32;
                  _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "Activated %{public}@ with parent %{public}@", buf, 0x16u);
                }
              }

              else if (v30)
              {
                v33 = *(a1 + 32);
                *buf = 138543362;
                *&buf[4] = v33;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "Activated %{public}@", buf, 0xCu);
              }
            }

            *(*(a1 + 32) + 140) |= 4u;
            return;
          }

          v21 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_activity_make_reporting_decision";
          *&buf[12] = 2082;
          *&buf[14] = "Unknown reporting strategy";
          v22 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(__upper_bound[0]) = 0;
          if (!__nwlog_fault(v22, type, __upper_bound))
          {
            goto LABEL_83;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v23 = __nwlog_obj();
            v24 = type[0];
            if (os_log_type_enabled(v23, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_activity_make_reporting_decision";
              *&buf[12] = 2082;
              *&buf[14] = "Unknown reporting strategy";
              _os_log_impl(&dword_181A37000, v23, v24, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
            }

LABEL_82:

            goto LABEL_83;
          }

          if (LOBYTE(__upper_bound[0]) != 1)
          {
            v23 = __nwlog_obj();
            v37 = type[0];
            if (os_log_type_enabled(v23, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_activity_make_reporting_decision";
              *&buf[12] = 2082;
              *&buf[14] = "Unknown reporting strategy";
              _os_log_impl(&dword_181A37000, v23, v37, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_82;
          }

          v34 = __nw_create_backtrace_string();
          v23 = __nwlog_obj();
          v35 = type[0];
          v36 = os_log_type_enabled(v23, type[0]);
          if (!v34)
          {
            if (v36)
            {
              *buf = 136446466;
              *&buf[4] = "nw_activity_make_reporting_decision";
              *&buf[12] = 2082;
              *&buf[14] = "Unknown reporting strategy";
              _os_log_impl(&dword_181A37000, v23, v35, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
            }

            goto LABEL_82;
          }

          if (v36)
          {
            *buf = 136446722;
            *&buf[4] = "nw_activity_make_reporting_decision";
            *&buf[12] = 2082;
            *&buf[14] = "Unknown reporting strategy";
            *&buf[22] = 2082;
            v64 = v34;
            _os_log_impl(&dword_181A37000, v23, v35, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v34);
LABEL_83:
          if (!v22)
          {
            goto LABEL_57;
          }

LABEL_84:
          free(v22);
          goto LABEL_57;
        }

        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v20 = gactivityLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "Suppressing reports for activity %{public}@", buf, 0xCu);
        }

        is_selected_for_reporting = 0;
      }

LABEL_44:
      if (nw_activity_label_is_valid(*(v11 + 29), *(v11 + 28)))
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_make_reporting_decision";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__upper_bound[0]) = 0;
    if (__nwlog_fault(v22, type, __upper_bound))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v47 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_activity_make_reporting_decision";
          _os_log_impl(&dword_181A37000, v23, v47, "%{public}s called with null activity", buf, 0xCu);
        }
      }

      else if (LOBYTE(__upper_bound[0]) == 1)
      {
        v54 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v55 = type[0];
        v56 = os_log_type_enabled(v23, type[0]);
        if (v54)
        {
          if (v56)
          {
            *buf = 136446466;
            *&buf[4] = "nw_activity_make_reporting_decision";
            *&buf[12] = 2082;
            *&buf[14] = v54;
            _os_log_impl(&dword_181A37000, v23, v55, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          if (!v22)
          {
            goto LABEL_57;
          }

          goto LABEL_84;
        }

        if (v56)
        {
          *buf = 136446210;
          *&buf[4] = "nw_activity_make_reporting_decision";
          _os_log_impl(&dword_181A37000, v23, v55, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v59 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_activity_make_reporting_decision";
          _os_log_impl(&dword_181A37000, v23, v59, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v42 = __nwlog_obj();
  *buf = 136446466;
  *&buf[4] = "nw_activity_activate_block_invoke";
  *&buf[12] = 2082;
  *&buf[14] = "Cannot activate lightweight representation of an activity";
  v43 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(__upper_bound[0]) = 0;
  if (__nwlog_fault(v43, type, __upper_bound))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_activity_activate_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "Cannot activate lightweight representation of an activity";
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
      }
    }

    else if (LOBYTE(__upper_bound[0]) == 1)
    {
      v51 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v52 = type[0];
      v53 = os_log_type_enabled(v44, type[0]);
      if (v51)
      {
        if (v53)
        {
          *buf = 136446722;
          *&buf[4] = "nw_activity_activate_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "Cannot activate lightweight representation of an activity";
          *&buf[22] = 2082;
          v64 = v51;
          _os_log_impl(&dword_181A37000, v44, v52, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v51);
        goto LABEL_138;
      }

      if (v53)
      {
        *buf = 136446466;
        *&buf[4] = "nw_activity_activate_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "Cannot activate lightweight representation of an activity";
        _os_log_impl(&dword_181A37000, v44, v52, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      v44 = __nwlog_obj();
      v58 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_activity_activate_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = "Cannot activate lightweight representation of an activity";
        _os_log_impl(&dword_181A37000, v44, v58, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
      }
    }
  }

LABEL_138:
  if (v43)
  {
    free(v43);
  }
}

uint64_t nw_activity_is_lightweight_representation(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[140] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_activity_is_lightweight_representation";
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
        v15 = "nw_activity_is_lightweight_representation";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null activity", buf, 0xCu);
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
          v15 = "nw_activity_is_lightweight_representation";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_activity_is_lightweight_representation";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_activity_is_lightweight_representation";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
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

int64_t nw_activity_get_investigation_id_from_defaults(void)
{
  v20 = *MEMORY[0x1E69E9840];
  result = networkd_settings_get_int64_with_default(nw_setting_activity_investigation_id, 0);
  if (result)
  {
    v1 = result;
    v2 = nw_setting_activity_investigation_id_start_time;
    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        int64 = xpc_dictionary_get_int64(sCachedSettings, v2);
        pthread_mutex_unlock(&sSettingsMutex);
        if (int64)
        {
          v4 = clock_gettime_nsec_np(_CLOCK_REALTIME);
          v5 = v4 - int64;
          if (v4 < int64)
          {
            return v1;
          }

          v6 = v4;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          v8 = v7;
          if (v5 >= 0x2261034C3CA00)
          {
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              v12 = 136446978;
              v13 = "nw_activity_get_investigation_id_from_defaults";
              v14 = 2048;
              v15 = int64;
              v16 = 2048;
              v17 = v6;
              v18 = 2048;
              v19 = v5 / 0x3B9ACA00;
              _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Ignoring investigation ID that has expired (start: %llu, now: %llu, delta_sec: %llu)", &v12, 0x2Au);
            }

            v1 = 0;
            goto LABEL_14;
          }

          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v12 = 136446978;
            v13 = "nw_activity_get_investigation_id_from_defaults";
            v14 = 2048;
            v15 = int64;
            v16 = 2048;
            v17 = v6;
            v18 = 2048;
            v19 = v5 / 0x3B9ACA00;
            v9 = "%{public}s Investigation ID has not expired (start: %llu, now: %llu, delta_sec: %llu)";
            v10 = v8;
            v11 = 42;
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }

      else
      {
        pthread_mutex_unlock(&sSettingsMutex);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136446210;
      v13 = "nw_activity_get_investigation_id_from_defaults";
      v9 = "%{public}s Investigation ID missing start time, allowing use";
      v10 = v8;
      v11 = 12;
LABEL_13:
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v9, &v12, v11);
    }

LABEL_14:

    return v1;
  }

  return result;
}

int64_t networkd_settings_get_int64_with_default(const char *a1, int64_t a2)
{
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    v4 = sCachedSettings;
    if (sCachedSettings)
    {
      Class = object_getClass(sCachedSettings);
      if (a1)
      {
        if (Class == MEMORY[0x1E69E9E80])
        {
          value = xpc_dictionary_get_value(v4, a1);
          if (value)
          {
            v7 = value;
            if (object_getClass(value) == MEMORY[0x1E69E9EB0])
            {
              a2 = xpc_int64_get_value(v7);
            }
          }
        }
      }
    }

    pthread_mutex_unlock(&sSettingsMutex);
  }

  return a2;
}

uint64_t networkd_settings_init()
{
  v21 = *MEMORY[0x1E69E9840];
  result = pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (sSettingsInitState != 2)
  {
    pthread_mutex_lock(&sSettingsMutex);
    if (sSettingsInitState)
    {
      return pthread_mutex_unlock(&sSettingsMutex);
    }

    sSettingsInitState = 1;
    networkd_settings_setup_notify_watch();
    networkd_settings_read_from_file();
    out_token = -1;
    v1 = notify_register_check(nw_notification_name_settings, &out_token);
    if (!v1 && out_token != -1)
    {
      networkd_settings_update_from_token(out_token);
LABEL_19:
      if (out_token != -1)
      {
        notify_cancel(out_token);
      }

      sSettingsInitState = 2;
      return pthread_mutex_unlock(&sSettingsMutex);
    }

    if (nw_settings_should_be_able_to_use_notify_apis(void)::onceToken != -1)
    {
      dispatch_once(&nw_settings_should_be_able_to_use_notify_apis(void)::onceToken, &__block_literal_global_26_93726);
    }

    v2 = nw_settings_should_be_able_to_use_notify_apis(void)::has_notify_apis;
    v3 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v3);
    v4 = gLogObj;
    if (v1 == 1000000 && (v2 & 1) != 0)
    {
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v5 = "";
      *buf = 136447234;
      if (sNWIsBetweenForkAndExec)
      {
        v5 = " (forked)";
      }

      v12 = "networkd_settings_init";
      v13 = 2082;
      v14 = nw_notification_name_settings;
      v15 = 1024;
      v16 = 1000000;
      v17 = 1024;
      v18 = out_token;
      v19 = 2082;
      v20 = v5;
      v6 = "%{public}s [sandboxed: ok] notify_register_check(%{public}s) status %u token %d%{public}s failed";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v9 = "";
      *buf = 136447234;
      if (sNWIsBetweenForkAndExec)
      {
        v9 = " (forked)";
      }

      v12 = "networkd_settings_init";
      v13 = 2082;
      v14 = nw_notification_name_settings;
      v15 = 1024;
      v16 = v1;
      v17 = 1024;
      v18 = out_token;
      v19 = 2082;
      v20 = v9;
      v6 = "%{public}s notify_register_check(%{public}s) status %u token %d%{public}s";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_181A37000, v7, v8, v6, buf, 0x2Cu);
    goto LABEL_19;
  }

  return result;
}

void ___ZL51nw_activity_inherit_from_global_parent_if_necessaryP22NWConcrete_nw_activity_block_invoke(uint64_t a1)
{
  if (global_parent && (nw_activity_is_equal(*(a1 + 32), global_parent) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = global_parent;

    nw_activity_set_parent_activity(v2, v3);
  }
}

void sub_181A3CB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v19 + 26);

  _Unwind_Resume(a1);
}

void sub_181A3D15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void nw_activity_get_sampling_rate_for_domain(unsigned int a1, unsigned int *a2, int *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_activity_get_sampling_rate_for_domain";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v29, &type, &v49))
    {
      goto LABEL_145;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null domain", buf, 0xCu);
      }
    }

    else if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v30, type);
      if (backtrace_string)
      {
        if (v38)
        {
          *buf = 136446466;
          v52 = "nw_activity_get_sampling_rate_for_domain";
          v53 = 2082;
          *v54 = backtrace_string;
          _os_log_impl(&dword_181A37000, v30, v37, "%{public}s called with null domain, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_145:
        if (!v29)
        {
          return;
        }

        goto LABEL_146;
      }

      if (v38)
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v37, "%{public}s called with null domain, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v30 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v44, "%{public}s called with null domain, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_144:

    goto LABEL_145;
  }

  if (!a2)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_activity_get_sampling_rate_for_domain";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v29, &type, &v49))
    {
      goto LABEL_145;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null out_sampling_rate_numerator", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v49 != 1)
    {
      v30 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v45, "%{public}s called with null out_sampling_rate_numerator, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v39 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v40 = type;
    v41 = os_log_type_enabled(v30, type);
    if (!v39)
    {
      if (v41)
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null out_sampling_rate_numerator, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v41)
    {
      *buf = 136446466;
      v52 = "nw_activity_get_sampling_rate_for_domain";
      v53 = 2082;
      *v54 = v39;
      _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null out_sampling_rate_numerator, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_125;
  }

  if (!a3)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_activity_get_sampling_rate_for_domain";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v29, &type, &v49))
    {
      goto LABEL_145;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v35, "%{public}s called with null out_sampling_rate_denominator", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v49 != 1)
    {
      v30 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v46, "%{public}s called with null out_sampling_rate_denominator, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v39 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v42 = type;
    v43 = os_log_type_enabled(v30, type);
    if (!v39)
    {
      if (v43)
      {
        *buf = 136446210;
        v52 = "nw_activity_get_sampling_rate_for_domain";
        _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null out_sampling_rate_denominator, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v43)
    {
      *buf = 136446466;
      v52 = "nw_activity_get_sampling_rate_for_domain";
      v53 = 2082;
      *v54 = v39;
      _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null out_sampling_rate_denominator, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_125:

    free(v39);
    if (!v29)
    {
      return;
    }

LABEL_146:
    free(v29);
    return;
  }

  v4 = a1 - 11;
  if (a1 - 11 > 0x33)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = dword_182BD3280[v4];
    v6 = 1;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v7 = gactivityLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (v4 >= 0x34)
    {
      if (a1 - 900 >= 0x64)
      {
        v8 = "invalid";
        if (a1 < 0xB)
        {
          v8 = "reserved";
        }
      }

      else
      {
        v8 = "experimental";
      }
    }

    else
    {
      v8 = off_1E6A36540[v4];
    }

    *buf = 136315650;
    v52 = v8;
    v53 = 1024;
    *v54 = v6;
    *&v54[4] = 1024;
    *&v54[6] = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "Domain %s rate configured in registry as %u / %u", buf, 0x18u);
  }

  int64_with_default = networkd_settings_get_int64_with_default(nw_setting_activity_default_numerator, v6);
  v10 = networkd_settings_get_int64_with_default(nw_setting_activity_default_denominator, v5);
  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v11 = gactivityLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (v4 >= 0x34)
    {
      if (a1 - 900 >= 0x64)
      {
        v12 = "invalid";
        if (a1 < 0xB)
        {
          v12 = "reserved";
        }
      }

      else
      {
        v12 = "experimental";
      }
    }

    else
    {
      v12 = off_1E6A36540[v4];
    }

    *buf = 136315650;
    v52 = v12;
    v53 = 1024;
    *v54 = int64_with_default;
    *&v54[4] = 1024;
    *&v54[6] = v10;
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "Domain %s rate configured after remote default override as %u / %u", buf, 0x18u);
  }

  if (v4 < 0x34)
  {
    v13 = off_1E6A363A0[v4];
    int64_with_default = networkd_settings_get_int64_with_default(*off_1E6A36200[v4], int64_with_default);
    v10 = networkd_settings_get_int64_with_default(*v13, v10);
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v14 = gactivityLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (v4 >= 0x34)
    {
      if (a1 - 900 >= 0x64)
      {
        v15 = "invalid";
        if (a1 < 0xB)
        {
          v15 = "reserved";
        }
      }

      else
      {
        v15 = "experimental";
      }
    }

    else
    {
      v15 = off_1E6A36540[v4];
    }

    *buf = 136315650;
    v52 = v15;
    v53 = 1024;
    *v54 = int64_with_default;
    *&v54[4] = 1024;
    *&v54[6] = v10;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "After reading settings plist, domain %s rate configured as %u / %u", buf, 0x18u);
  }

  v16 = a1 - 900;
  if (a1 - 900 >= 0x64 && v4 >= 0x34)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v18 = gactivityLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = "invalid";
      *buf = 136315906;
      if (a1 < 0xB)
      {
        v19 = "reserved";
      }

      v52 = v19;
      v53 = 1024;
      *v54 = a1;
      *&v54[4] = 1024;
      *&v54[6] = 0;
      v55 = 1024;
      v56 = 0;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "Invalid domain (%s: %u) sampled at %u / %u", buf, 0x1Eu);
    }

    v10 = 0;
    int64_with_default = 0;
  }

  v20 = nw_setting_activity_report_numerator;
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    if (sCachedSettings)
    {
      int64 = xpc_dictionary_get_int64(sCachedSettings, v20);
    }

    else
    {
      int64 = 0;
    }

    pthread_mutex_unlock(&sSettingsMutex);
  }

  else
  {
    int64 = 0;
  }

  v22 = nw_setting_activity_report_denominator;
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    if (sCachedSettings)
    {
      v23 = xpc_dictionary_get_int64(sCachedSettings, v22);
    }

    else
    {
      v23 = 0;
    }

    pthread_mutex_unlock(&sSettingsMutex);
    if (v16 >= 0x64)
    {
      goto LABEL_69;
    }

    if (int64 <= 1)
    {
      int64 = 1;
    }

    if (v23)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (v16 > 0x63)
    {
      v23 = 0;
      goto LABEL_69;
    }

    if (int64 <= 1)
    {
      int64 = 1;
    }
  }

  v23 = 20000;
LABEL_69:
  if (int64 != 0 && v23 != 0)
  {
    int64_with_default = int64;
  }

  else
  {
    v23 = v10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v24 = gactivityLogObj;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    if (v4 >= 0x34)
    {
      if (v16 >= 0x64)
      {
        v25 = "invalid";
        if (a1 < 0xB)
        {
          v25 = "reserved";
        }
      }

      else
      {
        v25 = "experimental";
      }
    }

    else
    {
      v25 = off_1E6A36540[v4];
    }

    *buf = 136315650;
    v52 = v25;
    v53 = 1024;
    *v54 = int64_with_default;
    *&v54[4] = 1024;
    *&v54[6] = v23;
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "After settings override, domain %s rate configured as %u / %u", buf, 0x18u);
  }

  if (nw_activity_should_use_elevated_sampling_rate(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_activity_should_use_elevated_sampling_rate(void)::onceToken, &__block_literal_global_1246);
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v26 = gactivityLogObj;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    if (v4 >= 0x34)
    {
      if (v16 >= 0x64)
      {
        v27 = "invalid";
        if (a1 < 0xB)
        {
          v27 = "reserved";
        }
      }

      else
      {
        v27 = "experimental";
      }
    }

    else
    {
      v27 = off_1E6A36540[v4];
    }

    *buf = 136315650;
    v52 = v27;
    v53 = 1024;
    *v54 = int64_with_default;
    *&v54[4] = 1024;
    *&v54[6] = v23;
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "Final domain %s rate configured as %u / %u", buf, 0x18u);
  }

  *a2 = int64_with_default;
  *a3 = v23;
}

uint64_t sub_181A3DFE8(uint64_t result)
{
  v2 = *result;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 116);
  v8 = *(v1 + 117);
  v9 = v1[25];
  v10 = v1[33];
  if (v2 <= 2 && v2 != 0)
  {
    v15 = *(v1 + 39);
    if (v2 != 1)
    {
      v12 = 1;
      if ((v15 & 0x800000) != 0)
      {
        return v12;
      }

      goto LABEL_7;
    }

    if ((v15 & 0x400000) != 0)
    {
      return 1;
    }
  }

  LODWORD(v12) = 0;
LABEL_7:
  v13 = v2;
  if (v3)
  {
    v14 = *(v3 + 184);
    if (v14 == 5)
    {
LABEL_9:
      if (v13 != 5)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_25:
      if (v13 == 5 || qword_182AEE030[v14] != qword_182AEE030[v13])
      {
        goto LABEL_31;
      }
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

  v43 = v1[2];
  v44 = v1[3];
  v16 = v9[4];
  v17 = v9[2];
  if (v17 >= v9[3] + v16)
  {
    v17 = v9[3] + v16;
  }

  v48 = v1[25];
  v49 = v16;
  v50 = v17;
  v18 = v9;
  while (v16 != v17)
  {
LABEL_22:
    v19 = v16 + 1;
    v49 = v16 + 1;
    v20 = &v18[26 * v16];
    v21 = *(v20 + 9);
    v22 = *(v20 + 13);
    v23 = *(v20 + 7);
    v46[3] = *(v20 + 11);
    v46[4] = v22;
    v46[1] = v23;
    v46[2] = v21;
    v24 = *(v20 + 17);
    v25 = *(v20 + 21);
    v26 = *(v20 + 15);
    v46[7] = *(v20 + 19);
    v46[8] = v25;
    v46[5] = v26;
    v46[6] = v24;
    v27 = *(v20 + 25);
    v28 = *(v20 + 27);
    v29 = *(v20 + 23);
    *&v47[10] = *(v20 + 226);
    v46[10] = v27;
    *v47 = v28;
    v46[9] = v29;
    v46[0] = *(v20 + 5);
    v30 = *(&v46[0] + 1);
    if (*(&v46[0] + 1) && (v47[24] & 1) != 0)
    {

      sub_181AFE6F4(v46, v45);

      sub_181AFE6A0(v46);
      v14 = *(v30 + 184);

      v6 = v43;
      v5 = v44;
      if (v14 == 5)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    v17 = v50;
    v16 = v19;
  }

  result = sub_181AC81FC(result);
  if (result)
  {
    v18 = v48;
    v16 = v49;
    goto LABEL_22;
  }

  v6 = v43;
  v5 = v44;
  if (v13 == 5)
  {
    return 1;
  }

LABEL_31:
  if (v7 == 1)
  {
LABEL_50:
    if (v4 && (v40 = *(v4 + 184), v40 != 5))
    {
      if (v13 != 5 && qword_182AEE030[v40] == qword_182AEE030[v13])
      {
        return 1;
      }
    }

    else if (v13 == 5)
    {
      return 1;
    }

    if (v6)
    {
      v41 = *(v6 + 184);
      if (v41 != 5)
      {
        if (v13 != 5 && qword_182AEE030[v41] == qword_182AEE030[v13])
        {
          return 1;
        }

LABEL_62:
        if (v5 && (v42 = *(v5 + 184), v42 != 5))
        {
          if (v13 != 5 && qword_182AEE030[v42] == qword_182AEE030[v13])
          {
            return 1;
          }
        }

        else if (v13 == 5)
        {
          return 1;
        }

        return 0;
      }
    }

    if (v13 != 5)
    {
      goto LABEL_62;
    }

    return 1;
  }

  if (v7 != 3 || (v10 ? (v31 = v12) : (v31 = 0), v31 != 1))
  {
LABEL_48:
    v12 = 0;
    if (v8 == 4 || v8 == 29)
    {
      return v12;
    }

    goto LABEL_50;
  }

  v32 = 0;
  v33 = 1 << *(v10 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v10 + 64);
  v36 = (v33 + 63) >> 6;
  v12 = 1;
  while (v35)
  {
LABEL_45:
    v38 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v39 = *(*(v10 + 56) + ((v32 << 9) | (8 * v38)));
    if (*(v39 + 56) == 1 && (*(v39 + 80) & 3) == 1)
    {
      return v12;
    }
  }

  while (1)
  {
    v37 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v37 >= v36)
    {
      goto LABEL_48;
    }

    v35 = *(v10 + 64 + 8 * v37);
    ++v32;
    if (v35)
    {
      v32 = v37;
      goto LABEL_45;
    }
  }

  __break(1u);
  return result;
}

void __cxx_global_var_init()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__description_def_instance = nw::object::class_def::register_method_def(qword_1ED4119A0, nw::object::_description, 0);
    LOBYTE(qword_1ED4119A0) = v0;
  }
}

char *nw::object::class_def::register_method_def(char a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "register_method_def";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v43, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          *&buf[4] = "register_method_def";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null (!def.slot())", buf, 0xCu);
        }
      }

      else if (v52 == 1)
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
            *&buf[4] = "register_method_def";
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null (!def.slot()), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_74;
        }

        if (v48)
        {
          *buf = 136446210;
          *&buf[4] = "register_method_def";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null (!def.slot()), no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          *&buf[4] = "register_method_def";
          _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null (!def.slot()), backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_74:
    if (v43)
    {
      free(v43);
    }

    return 0;
  }

  v5 = *(&xmmword_1ED411A10 + 1);
  v6 = xmmword_1ED411A10;
  v7 = *(&xmmword_1ED411A10 + 1) - xmmword_1ED411A10;
  if (*(&xmmword_1ED411A10 + 1) == xmmword_1ED411A10)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (*(&xmmword_1ED411A10 + 1) - xmmword_1ED411A10) - 1;
  }

  v9 = qword_1ED411A30;
  v10 = qword_1ED411A28 + qword_1ED411A30;
  if (v8 != qword_1ED411A28 + qword_1ED411A30)
  {
    goto LABEL_56;
  }

  if (qword_1ED411A28 >= 0x100)
  {
    qword_1ED411A28 -= 256;
    *buf = *xmmword_1ED411A10;
    *&xmmword_1ED411A10 = xmmword_1ED411A10 + 8;
    std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(&qword_1ED411A08, buf);
LABEL_55:
    v6 = xmmword_1ED411A10;
    v10 = qword_1ED411A30 + qword_1ED411A28;
LABEL_56:
    v41 = (*(v6 + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10);
    *v41 = a2;
    v41[1] = a3;
    ++qword_1ED411A30;
    return v9;
  }

  if (v7 >= (qword_1ED411A20 - qword_1ED411A08))
  {
    if (qword_1ED411A20 == qword_1ED411A08)
    {
      v12 = 1;
    }

    else
    {
      v12 = (qword_1ED411A20 - qword_1ED411A08) >> 2;
    }

    result = malloc_type_calloc(v12, 8uLL, 0x80040B8603338uLL);
    if (!result)
    {
      goto LABEL_77;
    }

    v13 = result;
    result = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
    v50 = a2;
    v51 = a3;
    if (!result)
    {
      goto LABEL_77;
    }

    v14 = &v13[v7];
    v15 = &v13[8 * v12];
    if (v7 == 8 * v12)
    {
      if (v7 < 1)
      {
        v16 = result;
        if (v5 == v6)
        {
          v17 = 1;
        }

        else
        {
          v17 = v7 >> 2;
        }

        result = malloc_type_calloc(v17, 8uLL, 0x80040B8603338uLL);
        v18 = result;
        if (!result)
        {
          goto LABEL_77;
        }

        v14 = &result[8 * (v17 >> 2)];
        v15 = &result[8 * v17];
        free(v13);
        v13 = v18;
        result = v16;
      }

      else
      {
        v14 -= ((v7 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    *v14 = result;
    v19 = v14 + 8;
    v20 = *(&xmmword_1ED411A10 + 1);
    if (*(&xmmword_1ED411A10 + 1) == xmmword_1ED411A10)
    {
      v21 = v13;
      v24 = v14;
LABEL_53:
      v40 = qword_1ED411A08;
      qword_1ED411A08 = v21;
      *&xmmword_1ED411A10 = v24;
      *(&xmmword_1ED411A10 + 1) = v19;
      qword_1ED411A20 = v15;
      a2 = v50;
      a3 = v51;
      if (v40)
      {
        free(v40);
      }

      goto LABEL_55;
    }

    while (v14 != v13)
    {
      v21 = v13;
      v22 = v14;
LABEL_30:
      v23 = *(v20 - 8);
      v20 -= 8;
      *(v22 - 1) = v23;
      v24 = v22 - 8;
      v14 = v24;
      v13 = v21;
      if (v20 == xmmword_1ED411A10)
      {
        goto LABEL_53;
      }
    }

    if (v19 < v15)
    {
      v22 = &v14[8 * ((((v15 - v19) >> 3) + 1 + ((((v15 - v19) >> 3) + 1) >> 63)) >> 1)];
      v26 = v19 - v14;
      v25 = v19 == v14;
      v19 += 8 * ((((v15 - v19) >> 3) + 1 + ((((v15 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v25)
      {
        memmove(v22, v14, v26);
      }

      v21 = v13;
      goto LABEL_30;
    }

    if (v15 == v14)
    {
      v27 = 1;
    }

    else
    {
      v27 = (v15 - v14) >> 2;
    }

    result = malloc_type_calloc(v27, 8uLL, 0x80040B8603338uLL);
    v21 = result;
    if (!result)
    {
      goto LABEL_77;
    }

    v28 = (v27 + 3) >> 2;
    v22 = &result[8 * v28];
    v29 = v19 - v14;
    v25 = v19 == v14;
    v19 = v22;
    if (!v25)
    {
      v19 = &v22[v29];
      v30 = v29 - 8;
      if (v30 >= 0x18)
      {
        v32 = 8 * v28;
        if ((&result[8 * v28] - v14) >= 0x20)
        {
          v33 = (v30 >> 3) + 1;
          v34 = 8 * (v33 & 0x3FFFFFFFFFFFFFFCLL);
          v31 = &v22[v34];
          v35 = (v14 + 16);
          v36 = &result[v32 + 16];
          v37 = v33 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v38 = *v35;
            *(v36 - 1) = *(v35 - 1);
            *v36 = v38;
            v35 += 2;
            v36 += 32;
            v37 -= 4;
          }

          while (v37);
          if (v33 == (v33 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_51;
          }

          v14 += v34;
        }

        else
        {
          v31 = &result[8 * v28];
        }
      }

      else
      {
        v31 = &result[8 * v28];
      }

      do
      {
        v39 = *v14;
        v14 += 8;
        *v31 = v39;
        v31 += 8;
      }

      while (v31 != v19);
    }

LABEL_51:
    v15 = &result[8 * v27];
    free(v13);
    goto LABEL_30;
  }

  if (qword_1ED411A20 == *(&xmmword_1ED411A10 + 1))
  {
    result = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
    if (result)
    {
      *buf = result;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_front<void (nw::object::**)(void)>(&qword_1ED411A08, buf);
      *buf = *xmmword_1ED411A10;
      *&xmmword_1ED411A10 = xmmword_1ED411A10 + 8;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(&qword_1ED411A08, buf);
      goto LABEL_55;
    }
  }

  else
  {
    result = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
    if (result)
    {
      *buf = result;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(&qword_1ED411A08, buf);
      goto LABEL_55;
    }
  }

LABEL_77:
  __break(1u);
  return result;
}

void sub_181A3EADC(_Unwind_Exception *a1)
{
  free(v2);
  free(v1);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_2()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__redacted_description_def_instance = nw::object::class_def::register_method_def(qword_1ED411968, nw::object::_redacted_description, 0);
    LOBYTE(qword_1ED411968) = v0;
  }
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1865DC480](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::append((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_181A3EDEC(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1865DC4F0](v2);
  _Unwind_Resume(a1);
}

void __nw_activity_activate_block_invoke_55(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1;
  if (!v1)
  {
    v14 = __nwlog_obj();
    LODWORD(v33.investigation_identifier) = 136446210;
    *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
    v15 = _os_log_send_and_compose_impl();

    LOBYTE(buf) = 16;
    LOBYTE(v31) = 0;
    if (!__nwlog_fault(v15, &buf, &v31))
    {
      goto LABEL_73;
    }

    if (buf == 17)
    {
      v16 = __nwlog_obj();
      v17 = buf;
      if (os_log_type_enabled(v16, buf))
      {
        LODWORD(v33.investigation_identifier) = 136446210;
        *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null activity", &v33, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v21 = buf;
      v22 = os_log_type_enabled(v16, buf);
      if (backtrace_string)
      {
        if (v22)
        {
          LODWORD(v33.investigation_identifier) = 136446466;
          *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
          LOWORD(v33.label) = 2082;
          *(&v33.label + 2) = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null activity, dumping backtrace:%{public}s", &v33, 0x16u);
        }

        free(backtrace_string);
LABEL_73:
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_74;
      }

      if (v22)
      {
        LODWORD(v33.investigation_identifier) = 136446210;
        *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null activity, no backtrace", &v33, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v26 = buf;
      if (os_log_type_enabled(v16, buf))
      {
        LODWORD(v33.investigation_identifier) = 136446210;
        *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null activity, backtrace limit exceeded", &v33, 0xCu);
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  if ((*(v1 + 140) & 4) == 0)
  {
    v18 = __nwlog_obj();
    LODWORD(v33.investigation_identifier) = 136446210;
    *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
    v15 = _os_log_send_and_compose_impl();

    LOBYTE(buf) = 16;
    LOBYTE(v31) = 0;
    if (!__nwlog_fault(v15, &buf, &v31))
    {
      goto LABEL_73;
    }

    if (buf == 17)
    {
      v16 = __nwlog_obj();
      v19 = buf;
      if (os_log_type_enabled(v16, buf))
      {
        LODWORD(v33.investigation_identifier) = 136446210;
        *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s Cannot report activity before activation", &v33, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v24 = buf;
      v25 = os_log_type_enabled(v16, buf);
      if (v23)
      {
        if (v25)
        {
          LODWORD(v33.investigation_identifier) = 136446466;
          *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
          LOWORD(v33.label) = 2082;
          *(&v33.label + 2) = v23;
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s Cannot report activity before activation, dumping backtrace:%{public}s", &v33, 0x16u);
        }

        free(v23);
        if (!v15)
        {
          goto LABEL_39;
        }

LABEL_74:
        free(v15);
        goto LABEL_39;
      }

      if (v25)
      {
        LODWORD(v33.investigation_identifier) = 136446210;
        *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s Cannot report activity before activation, no backtrace", &v33, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v27 = buf;
      if (os_log_type_enabled(v16, buf))
      {
        LODWORD(v33.investigation_identifier) = 136446210;
        *(&v33.investigation_identifier + 4) = "nw_activity_report_if_selected";
        _os_log_impl(&dword_181A37000, v16, v27, "%{public}s Cannot report activity before activation, backtrace limit exceeded", &v33, 0xCu);
      }
    }

    goto LABEL_72;
  }

  if ((v1->token[9] & 1) == 0)
  {
    goto LABEL_39;
  }

  memset(&v33, 0, sizeof(v33));
  nw_activity_fill_out_activity_report(v1, &v33);
  if (os_variant_has_internal_diagnostics() && networkd_settings_get_BOOL(nw_setting_activity_write_metric_stream_to_log))
  {
    v3 = v2;
    v4 = nw_activity_create_activity_dictionary(v3, &v33);
    v30 = 0;
    v31 = v4;
    v32 = -1;
    if (nw_activity_metric_object_is_valid(v4, 0, &v30))
    {
      if (__nwlog_metricstream_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_metricstream_log::onceToken, &__block_literal_global_68);
      }

      v5 = gmetricstreamLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        buf = 136446210;
        v35 = v30;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      }

      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    buf = 136446210;
    v35 = "nw_activity_write_activity_report_to_log";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v7, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          buf = 136446210;
          v35 = "nw_activity_write_activity_report_to_log";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s generated activity dictionary is not valid", &buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        v10 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v11 = type;
        v12 = os_log_type_enabled(v8, type);
        if (v10)
        {
          if (v12)
          {
            buf = 136446466;
            v35 = "nw_activity_write_activity_report_to_log";
            v36 = 2082;
            v37 = v10;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s generated activity dictionary is not valid, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(v10);
          if (!v7)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (v12)
        {
          buf = 136446210;
          v35 = "nw_activity_write_activity_report_to_log";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s generated activity dictionary is not valid, no backtrace", &buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          buf = 136446210;
          v35 = "nw_activity_write_activity_report_to_log";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s generated activity dictionary is not valid, backtrace limit exceeded", &buf, 0xCu);
        }
      }
    }

    if (!v7)
    {
LABEL_34:
      if (v30)
      {
        free(v30);
      }

      if (v4)
      {
      }

      goto LABEL_39;
    }

LABEL_33:
    free(v7);
    goto LABEL_34;
  }

  if (nw_connection_get_symptom_reporter_handle::once != -1)
  {
    dispatch_once(&nw_connection_get_symptom_reporter_handle::once, &__block_literal_global_83286);
  }

  symptom_new();
  symptom_set_qualifier();
  symptom_set_additional_qualifier();
  symptom_send();
LABEL_39:
}

void sub_181A3F6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  nw::retained_ptr<void({block_pointer} {__strong})(void)>::~retained_ptr(va);

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1865DC3D0](v21, a1);
  if (v21[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_28;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v23 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v23 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v23 < 0)
      {
        v19 = v18;
        operator delete(__b.__locale_);
        if (v19 != v16)
        {
LABEL_28:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
          goto LABEL_29;
        }
      }

      else if (v18 != v16)
      {
        goto LABEL_28;
      }
    }

    if (v11 - v12 >= 1 && (*(*v7 + 96))(v7, v12, v11 - v12) != v11 - v12)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x1865DC3E0](v21);
  return a1;
}

void sub_181A3FA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1865DC3E0](&a10);
  _Unwind_Resume(a1);
}

uint64_t __nw_activity_is_global_parent_block_invoke(uint64_t a1)
{
  result = nw_activity_is_equal(*(a1 + 32), global_parent);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t nw_activity_is_global_parent(void *a1)
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
    aBlock[2] = __nw_activity_is_global_parent_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    v17 = v3;
    nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(&global_parent_lock, &v17);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_activity_is_global_parent";
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
        *&buf[4] = "nw_activity_is_global_parent";
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
          *&buf[4] = "nw_activity_is_global_parent";
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
        *&buf[4] = "nw_activity_is_global_parent";
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
        *&buf[4] = "nw_activity_is_global_parent";
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

  return v4 & 1;
}

void sub_181A3FE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_activity_is_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4 && !uuid_is_null(v3 + 8) && !uuid_is_null(v5 + 8))
  {
    if (*(v3 + 1) != *(v5 + 1))
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = *(v3 + 2) == *(v5 + 2);
  }

  else
  {
    v6 = v3 == v5;
  }

  v7 = v6;
LABEL_9:

  return v7;
}

uint64_t nw_activity_is_selected_for_reporting(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[17] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_activity_is_selected_for_reporting";
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
        v15 = "nw_activity_is_selected_for_reporting";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null activity", buf, 0xCu);
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
          v15 = "nw_activity_is_selected_for_reporting";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_activity_is_selected_for_reporting";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_activity_is_selected_for_reporting";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
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

void nw_queue_context_async_if_needed(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (nw_context_is_inline(v5))
  {
    v3[2](v3);
  }

  else
  {
    v4 = nw_context_copy_workloop(v5);
    if (dispatch_workloop_is_current())
    {
      v3[2](v3);
    }

    else
    {
      dispatch_async(v4, v3);
    }
  }
}

uint64_t nw_context_is_inline(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj(0, v2);
    *buf = 136446210;
    v24 = "nw_context_is_inline";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    v12 = __nwlog_fault(v11, &type, &v21);
    if (v12)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj(v12, v13);
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v24 = "nw_context_is_inline";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj(backtrace_string, v17);
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v24 = "nw_context_is_inline";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v19)
        {
          *buf = 136446210;
          v24 = "nw_context_is_inline";
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj(v12, v13);
        v20 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v24 = "nw_context_is_inline";
          _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v11)
    {
      free(v11);
    }

    v9 = 0;
    goto LABEL_6;
  }

  v4 = v1[152];
  if ((v4 & 0x40) != 0)
  {
LABEL_5:
    v9 = (v4 >> 3) & 1;
LABEL_6:

    return v9;
  }

  v5 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v5);
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v24 = "nw_context_is_inline";
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    v4 = v3[152];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_context_copy_workloop(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = v1;
  if (!v1)
  {
    v9 = __nwlog_obj(0, v2);
    *buf = 136446210;
    v31 = "nw_context_copy_workloop";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    v11 = __nwlog_fault(v10, &type, &v28);
    if (v11)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj(v11, v12);
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v31 = "nw_context_copy_workloop";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v28 != 1)
      {
        v13 = __nwlog_obj(v11, v12);
        v26 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v31 = "nw_context_copy_workloop";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj(backtrace_string, v20);
      v21 = type;
      v22 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v31 = "nw_context_copy_workloop";
          _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v22)
      {
        *buf = 136446466;
        v31 = "nw_context_copy_workloop";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }

LABEL_40:
    if (v10)
    {
      free(v10);
    }

    v8 = 0;
    goto LABEL_7;
  }

  if ((v1[19] & 8) != 0)
  {
    v15 = __nwlog_obj(v1, v2);
    *buf = 136446210;
    v31 = "nw_context_copy_workloop";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    v16 = __nwlog_fault(v10, &type, &v28);
    if (v16)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj(v16, v17);
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v31 = "nw_context_copy_workloop";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null !context->is_inline", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v28 != 1)
      {
        v13 = __nwlog_obj(v16, v17);
        v27 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v31 = "nw_context_copy_workloop";
          _os_log_impl(&dword_181A37000, v13, v27, "%{public}s called with null !context->is_inline, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj(backtrace_string, v23);
      v24 = type;
      v25 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v31 = "nw_context_copy_workloop";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null !context->is_inline, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v25)
      {
        *buf = 136446466;
        v31 = "nw_context_copy_workloop";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null !context->is_inline, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }

    goto LABEL_40;
  }

  if ((v1[19] & 0x40) != 0)
  {
LABEL_6:
    v8 = v3[1];
LABEL_7:

    return v8;
  }

  v4 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v4);
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v31 = "nw_context_copy_workloop";
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void nw_release(void *obj)
{
  if (obj)
  {
    os_release(obj);
  }
}

void __cxx_global_var_init_4()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__destroy_def_instance = nw::object::class_def::register_method_def(qword_1ED411980, nw::object::_destroy, 0);
    LOBYTE(qword_1ED411980) = v0;
  }
}

uint64_t nw_libnetwork_library_initializer(void)
{
  si_set_nat64_v4_requires_synthesis();
  si_set_nat64_v4_synthesize();

  return MEMORY[0x1EEE72098](nw_path_libinfo_path_check);
}

uint64_t sub_181A40CDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

NWConcrete_nw_endpoint_mode_handler *nw_endpoint_handler_copy_flow(NWConcrete_nw_endpoint_handler *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_copy_flow";
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
          v36 = "nw_endpoint_handler_copy_flow";
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
            v36 = "nw_endpoint_handler_copy_flow";
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
          v36 = "nw_endpoint_handler_copy_flow";
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
          v36 = "nw_endpoint_handler_copy_flow";
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

  if (v1->mode != 2)
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
          v36 = "nw_endpoint_handler_copy_flow";
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
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is %{public}s, not a flow", buf, 0x52u);

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

uint64_t nw_hash_table_get_node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj(0, a2);
    *buf = 136446210;
    v38 = "nw_hash_table_get_node";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    v11 = __nwlog_fault(v10, &type, &v35);
    if (!v11)
    {
      goto LABEL_56;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v13 = __nwlog_obj(v11, v12);
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v38 = "nw_hash_table_get_node";
        v15 = "%{public}s called with null table, backtrace limit exceeded";
        goto LABEL_55;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj(backtrace_string, v27);
      v14 = type;
      v28 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v28)
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v38 = "nw_hash_table_get_node";
        v15 = "%{public}s called with null table, no backtrace";
        goto LABEL_55;
      }

      if (v28)
      {
        *buf = 136446466;
        v38 = "nw_hash_table_get_node";
        v39 = 2082;
        v40 = backtrace_string;
        v29 = "%{public}s called with null table, dumping backtrace:%{public}s";
LABEL_38:
        _os_log_impl(&dword_181A37000, v13, v14, v29, buf, 0x16u);
      }

LABEL_39:
      free(backtrace_string);
      goto LABEL_56;
    }

    v13 = __nwlog_obj(v11, v12);
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    v38 = "nw_hash_table_get_node";
    v15 = "%{public}s called with null table";
LABEL_55:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
LABEL_56:
    if (v10)
    {
      free(v10);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj(a1, 0);
    *buf = 136446210;
    v38 = "nw_hash_table_get_node";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    v16 = __nwlog_fault(v10, &type, &v35);
    if (!v16)
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj(v16, v17);
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v38 = "nw_hash_table_get_node";
      v15 = "%{public}s called with null key";
      goto LABEL_55;
    }

    if (v35 != 1)
    {
      v13 = __nwlog_obj(v16, v17);
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v38 = "nw_hash_table_get_node";
      v15 = "%{public}s called with null key, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj(backtrace_string, v30);
    v14 = type;
    v31 = os_log_type_enabled(v13, type);
    if (backtrace_string)
    {
      if (v31)
      {
        *buf = 136446466;
        v38 = "nw_hash_table_get_node";
        v39 = 2082;
        v40 = backtrace_string;
        v29 = "%{public}s called with null key, dumping backtrace:%{public}s";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (!v31)
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    v38 = "nw_hash_table_get_node";
    v15 = "%{public}s called with null key, no backtrace";
    goto LABEL_55;
  }

  if (*(a1 + 40))
  {
    v6 = *(a1 + 56);
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v18 = __nwlog_obj(a1, a2);
  os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v38 = "nw_hash_table_lock";
  v19 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v19);
  if (!result)
  {
    free(v19);
    v6 = *(a1 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_6:
      if (v6)
      {
        v7 = *(a1 + 16 * ((*(a1 + 8))(a2, a3) % *(a1 + 40)) + 64);
        if (v7)
        {
          do
          {
            v8 = *v7;
            if (*(v7 + 30) == 1 && ((*(a1 + 16))(v7[2], a2, a3) & 1) != 0)
            {
              break;
            }

            v7 = v8;
          }

          while (v8);
        }

        if ((*(a1 + 56) & 2) != 0)
        {
          os_unfair_lock_unlock((a1 + 60));
        }

        return v7;
      }

      __nwlog_obj(a1, a2);
      *buf = 136446210;
      v38 = "nw_hash_table_get_node";
      v20 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v35 = 0;
      v21 = __nwlog_fault(v20, &type, &v35);
      if (v21)
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v23 = __nwlog_obj(v21, v22);
          v24 = type;
          if (!os_log_type_enabled(v23, type))
          {
            goto LABEL_61;
          }

          *buf = 136446210;
          v38 = "nw_hash_table_get_node";
          v25 = "%{public}s called with invalid hash table";
LABEL_60:
          _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
          goto LABEL_61;
        }

        if (v35 != 1)
        {
          v23 = __nwlog_obj(v21, v22);
          v24 = type;
          if (!os_log_type_enabled(v23, type))
          {
            goto LABEL_61;
          }

          *buf = 136446210;
          v38 = "nw_hash_table_get_node";
          v25 = "%{public}s called with invalid hash table, backtrace limit exceeded";
          goto LABEL_60;
        }

        v32 = __nw_create_backtrace_string();
        v23 = __nwlog_obj(v32, v33);
        v24 = type;
        v34 = os_log_type_enabled(v23, type);
        if (!v32)
        {
          if (!v34)
          {
            goto LABEL_61;
          }

          *buf = 136446210;
          v38 = "nw_hash_table_get_node";
          v25 = "%{public}s called with invalid hash table, no backtrace";
          goto LABEL_60;
        }

        if (v34)
        {
          *buf = 136446466;
          v38 = "nw_hash_table_get_node";
          v39 = 2082;
          v40 = v32;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with invalid hash table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
      }

LABEL_61:
      if (v20)
      {
        free(v20);
      }

      if ((*(a1 + 56) & 2) != 0)
      {
        os_unfair_lock_unlock((a1 + 60));
        return 0;
      }

      return 0;
    }

LABEL_5:
    os_unfair_lock_lock((a1 + 60));
    v6 = *(a1 + 56);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t nw_hash_node_get_object(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_hash_node_get_object";
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
        v11 = "nw_hash_node_get_object";
        v5 = "%{public}s called with null node";
LABEL_17:
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
          v11 = "nw_hash_node_get_object";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null node, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_hash_node_get_object";
        v5 = "%{public}s called with null node, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_hash_node_get_object";
        v5 = "%{public}s called with null node, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

uint64_t nw_path_parameters_copy_context(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_path_parameters_copy_context();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_path_parameters_copy_context";
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
        v12 = "nw_path_parameters_copy_context";
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
            v12 = "nw_path_parameters_copy_context";
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
        v12 = "nw_path_parameters_copy_context";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_path_parameters_copy_context";
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

unint64_t sub_181A41ED8(unsigned __int8 a1)
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](a1);
  v2 = sub_182AD4558();
  return sub_181A41F40(a1, v2);
}

unint64_t sub_181A41F40(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void nw_context_assert_queue(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = v1;
  if (v1)
  {
    if ((v1[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v1[1]);
    }

    goto LABEL_4;
  }

  v4 = __nwlog_obj(0, v2);
  *buf = 136446210;
  v18 = "nw_context_assert_queue";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  v6 = __nwlog_fault(v5, &type, &v15);
  if (v6)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj(v6, v7);
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_context_assert_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj(backtrace_string, v11);
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_context_assert_queue";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_context_assert_queue";
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj(v6, v7);
      v14 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_context_assert_queue";
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

LABEL_4:
}

uint64_t nw_hash_node_get_extra(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1 + 32;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_hash_node_get_extra";
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
        v11 = "nw_hash_node_get_extra";
        v5 = "%{public}s called with null node";
LABEL_17:
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
          v11 = "nw_hash_node_get_extra";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null node, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_hash_node_get_extra";
        v5 = "%{public}s called with null node, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_hash_node_get_extra";
        v5 = "%{public}s called with null node, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

NWConcrete_nw_context *nw_context_copy_globals_context(NWConcrete_nw_context *a1)
{
  v1 = a1;
  v2 = v1;
  if ((*(v1 + 152) & 5) != 0)
  {
    v3 = *(v1 + 5);
    if (!v3)
    {
      v3 = v1;
    }
  }

  else
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v3 = nw_context_copy_implicit_context::implicit_context;
  }

  v4 = v3;
  if (*(v4 + 4))
  {
    goto LABEL_11;
  }

  v5 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v5);
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
LABEL_11:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t nw_hash_table_count(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  __nwlog_obj(0, a2);
  *buf = 136446210;
  v15 = "nw_hash_table_count";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  v4 = __nwlog_fault(v3, &type, &v12);
  if (v4)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj(v4, v5);
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_hash_table_count";
        v8 = "%{public}s called with null table";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj(backtrace_string, v10);
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_hash_table_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_hash_table_count";
        v8 = "%{public}s called with null table, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __nwlog_obj(v4, v5);
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_hash_table_count";
        v8 = "%{public}s called with null table, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_hash_table_apply(char *a1, uint64_t a2)
{
  v151 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v142 = "nw_hash_table_apply";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (!__nwlog_fault(v3, &type, &v139))
    {
      goto LABEL_206;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v121 = __nwlog_obj();
      v122 = type;
      if (!os_log_type_enabled(v121, type))
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v123 = "%{public}s called with null table";
      goto LABEL_205;
    }

    if (v139 != 1)
    {
      v121 = __nwlog_obj();
      v122 = type;
      if (!os_log_type_enabled(v121, type))
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v123 = "%{public}s called with null table, backtrace limit exceeded";
      goto LABEL_205;
    }

    backtrace_string = __nw_create_backtrace_string();
    v121 = __nwlog_obj();
    v122 = type;
    v131 = os_log_type_enabled(v121, type);
    if (!backtrace_string)
    {
      if (!v131)
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v123 = "%{public}s called with null table, no backtrace";
      goto LABEL_205;
    }

    if (v131)
    {
      *buf = 136446466;
      v142 = "nw_hash_table_apply";
      v143 = 2082;
      v144 = backtrace_string;
      _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_206:
    if (!v3)
    {
      return;
    }

    goto LABEL_162;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v142 = "nw_hash_table_apply";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (!__nwlog_fault(v3, &type, &v139))
    {
      goto LABEL_206;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v121 = __nwlog_obj();
      v122 = type;
      if (!os_log_type_enabled(v121, type))
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v123 = "%{public}s called with null apply_block";
      goto LABEL_205;
    }

    if (v139 != 1)
    {
      v121 = __nwlog_obj();
      v122 = type;
      if (!os_log_type_enabled(v121, type))
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v123 = "%{public}s called with null apply_block, backtrace limit exceeded";
      goto LABEL_205;
    }

    v132 = __nw_create_backtrace_string();
    v121 = __nwlog_obj();
    v122 = type;
    v133 = os_log_type_enabled(v121, type);
    if (v132)
    {
      if (v133)
      {
        *buf = 136446466;
        v142 = "nw_hash_table_apply";
        v143 = 2082;
        v144 = v132;
        _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null apply_block, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v132);
      if (!v3)
      {
        return;
      }

      goto LABEL_162;
    }

    if (v133)
    {
      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v123 = "%{public}s called with null apply_block, no backtrace";
LABEL_205:
      _os_log_impl(&dword_181A37000, v121, v122, v123, buf, 0xCu);
      goto LABEL_206;
    }

    goto LABEL_206;
  }

  v3 = a1;
  if (*(a1 + 10))
  {
    v4 = *(a1 + 14);
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v124 = __nwlog_obj();
  os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v142 = "nw_hash_table_lock";
  v125 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v125))
  {
LABEL_215:
    __break(1u);
    return;
  }

  free(v125);
  v4 = *(v3 + 14);
  if ((v4 & 2) != 0)
  {
LABEL_5:
    os_unfair_lock_lock(v3 + 15);
    v4 = *(v3 + 14);
  }

LABEL_6:
  if (v4)
  {
    v5 = *(v3 + 13) + 1;
    *(v3 + 13) = v5;
    if (v5 == v5 << 31 >> 31)
    {
LABEL_25:
      if (!*(v3 + 10))
      {
        goto LABEL_138;
      }

      v17 = 0;
      v18 = v3 + 64;
      v137 = a2;
      while (1)
      {
        v136 = v17;
        v19 = *v18;
        if (*v18)
        {
          break;
        }

LABEL_27:
        v17 = v136 + 1;
        v18 += 2;
        if ((v136 + 1) >= *(v3 + 10))
        {
          goto LABEL_137;
        }
      }

      v138 = v18;
      while (1)
      {
        v20 = v19;
        v19 = *v19;
        v21 = v20[1];
        if (!v21 || *v21 != v20)
        {
          v97 = __nwlog_obj();
          os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
          v98 = *(v20 + 30);
          v99 = "invalid_state";
          if (v98 <= 3)
          {
            v99 = off_1E6A39598[v98];
          }

          v100 = *(v20 + 14);
          *buf = 136446722;
          v142 = "nw_hash_table_apply";
          v143 = 2082;
          v144 = v99;
          v145 = 1024;
          LODWORD(v146) = v100;
          v101 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort(v101))
          {
            goto LABEL_215;
          }

          free(v101);
        }

        v22 = *(v20 + 30);
        if (v22 != 1)
        {
          if (v22 == 2)
          {
            if (*(v20 + 14))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                v142 = "nw_hash_table_apply";
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring temp node remove", buf, 0xCu);
              }
            }

            else
            {
              nw_hash_node_free(v18, v20);
            }
          }

          else
          {
            v102 = __nwlog_obj();
            os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
            v103 = *(v20 + 30);
            v104 = "invalid_state";
            if (v103 <= 3)
            {
              v104 = off_1E6A39598[v103];
            }

            v105 = *(v20 + 14);
            *buf = 136446722;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = v104;
            v145 = 1024;
            LODWORD(v146) = v105;
            v106 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v106))
            {
              goto LABEL_215;
            }

            free(v106);
          }

          goto LABEL_31;
        }

        v23 = (*(v20 + 14))++ + 1;
        if ((v23 & 0x10000) != 0)
        {
          break;
        }

LABEL_58:
        if (!v19)
        {
          goto LABEL_77;
        }

        v42 = (*(v19 + 14))++ + 1;
        if ((v42 & 0x10000) == 0)
        {
          goto LABEL_77;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = *(v19 + 14);
        *buf = 136446978;
        v142 = "nw_hash_table_apply";
        v143 = 2082;
        v144 = "next_node->apply_count";
        v145 = 2048;
        v146 = 1;
        v147 = 2048;
        v148 = v43;
        v44 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v139 = 0;
        if (__nwlog_fault(v44, &type, &v139))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v46 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v47 = *(v19 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "next_node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v47;
              v48 = v45;
              v49 = v46;
              v50 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_73:
              _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0x2Au);
            }
          }

          else if (v139 == 1)
          {
            v51 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v52 = gLogObj;
            v53 = type;
            v54 = os_log_type_enabled(gLogObj, type);
            if (v51)
            {
              if (v54)
              {
                v55 = *(v19 + 14);
                *buf = 136447234;
                v142 = "nw_hash_table_apply";
                v143 = 2082;
                v144 = "next_node->apply_count";
                v145 = 2048;
                v146 = 1;
                v147 = 2048;
                v148 = v55;
                v149 = 2082;
                v150 = v51;
                _os_log_impl(&dword_181A37000, v52, v53, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v51);
              goto LABEL_74;
            }

            if (v54)
            {
              v59 = *(v19 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "next_node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v59;
              v48 = v52;
              v49 = v53;
              v50 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_73;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v56 = gLogObj;
            v57 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v58 = *(v19 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "next_node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v58;
              v48 = v56;
              v49 = v57;
              v50 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_73;
            }
          }
        }

LABEL_74:
        if (v44)
        {
          free(v44);
        }

        *(v19 + 14) = -1;
        v18 = v138;
LABEL_77:
        if ((v3[56] & 2) != 0)
        {
          os_unfair_lock_unlock(v3 + 15);
        }

        v60 = (*(v137 + 16))(v137, v20);
        if (*(v3 + 10))
        {
          if ((v3[56] & 2) == 0)
          {
            goto LABEL_82;
          }

LABEL_81:
          os_unfair_lock_lock(v3 + 15);
          goto LABEL_82;
        }

        v107 = __nwlog_obj();
        os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v142 = "nw_hash_table_lock";
        v108 = _os_log_send_and_compose_impl();
        if (__nwlog_should_abort(v108))
        {
          goto LABEL_215;
        }

        free(v108);
        if ((v3[56] & 2) != 0)
        {
          goto LABEL_81;
        }

LABEL_82:
        v61 = (*(v20 + 14))-- - 1;
        if (v61 < 0x10000)
        {
          goto LABEL_100;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v62 = *(v20 + 14);
        *buf = 136446978;
        v142 = "nw_hash_table_apply";
        v143 = 2082;
        v144 = "node->apply_count";
        v145 = 2048;
        v146 = 1;
        v147 = 2048;
        v148 = v62;
        v63 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v139 = 0;
        if (__nwlog_fault(v63, &type, &v139))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v64 = gLogObj;
            v65 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v66 = *(v20 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v66;
              v67 = v64;
              v68 = v65;
              v69 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_96:
              _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0x2Au);
            }
          }

          else if (v139 == 1)
          {
            v70 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v71 = gLogObj;
            v72 = type;
            v73 = os_log_type_enabled(gLogObj, type);
            if (v70)
            {
              if (v73)
              {
                v74 = *(v20 + 14);
                *buf = 136447234;
                v142 = "nw_hash_table_apply";
                v143 = 2082;
                v144 = "node->apply_count";
                v145 = 2048;
                v146 = 1;
                v147 = 2048;
                v148 = v74;
                v149 = 2082;
                v150 = v70;
                _os_log_impl(&dword_181A37000, v71, v72, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v70);
              goto LABEL_97;
            }

            if (v73)
            {
              v78 = *(v20 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v78;
              v67 = v71;
              v68 = v72;
              v69 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_96;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v75 = gLogObj;
            v76 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v77 = *(v20 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v77;
              v67 = v75;
              v68 = v76;
              v69 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_96;
            }
          }
        }

LABEL_97:
        if (v63)
        {
          free(v63);
        }

        *(v20 + 14) = 0;
        v18 = v138;
LABEL_100:
        if (!v19)
        {
          goto LABEL_119;
        }

        v79 = (*(v19 + 14))-- - 1;
        if (v79 < 0x10000)
        {
          goto LABEL_119;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v80 = *(v19 + 14);
        *buf = 136446978;
        v142 = "nw_hash_table_apply";
        v143 = 2082;
        v144 = "next_node->apply_count";
        v145 = 2048;
        v146 = 1;
        v147 = 2048;
        v148 = v80;
        v81 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v139 = 0;
        if (__nwlog_fault(v81, &type, &v139))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v82 = gLogObj;
            v83 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v84 = *(v19 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "next_node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v84;
              v85 = v82;
              v86 = v83;
              v87 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_115:
              _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0x2Au);
            }
          }

          else if (v139 == 1)
          {
            v88 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v89 = gLogObj;
            v90 = type;
            v91 = os_log_type_enabled(gLogObj, type);
            if (v88)
            {
              if (v91)
              {
                v92 = *(v19 + 14);
                *buf = 136447234;
                v142 = "nw_hash_table_apply";
                v143 = 2082;
                v144 = "next_node->apply_count";
                v145 = 2048;
                v146 = 1;
                v147 = 2048;
                v148 = v92;
                v149 = 2082;
                v150 = v88;
                _os_log_impl(&dword_181A37000, v89, v90, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v88);
              goto LABEL_116;
            }

            if (v91)
            {
              v96 = *(v19 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "next_node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v96;
              v85 = v89;
              v86 = v90;
              v87 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_115;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v93 = gLogObj;
            v94 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v95 = *(v19 + 14);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "next_node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v95;
              v85 = v93;
              v86 = v94;
              v87 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_115;
            }
          }
        }

LABEL_116:
        if (v81)
        {
          free(v81);
        }

        *(v19 + 14) = 0;
        v18 = v138;
LABEL_119:
        if (*(v20 + 30) == 2 && !*(v20 + 14))
        {
          nw_hash_node_free(v18, v20);
        }

        if ((v60 & 1) == 0)
        {
          if (v19 && *(v19 + 30) == 2 && !*(v19 + 14))
          {
            nw_hash_node_free(v18, v19);
          }

LABEL_137:
          LODWORD(v5) = *(v3 + 13);
LABEL_138:
          *(v3 + 13) = v5 - 1;
          if (v5)
          {
            v109 = *(v3 + 14);
            if (v5 != 1)
            {
              if ((v109 & 2) != 0)
              {
                goto LABEL_141;
              }

              return;
            }

LABEL_159:
            if ((v109 & 2) != 0)
            {
              os_unfair_lock_unlock(v3 + 15);
            }

            if (v109)
            {
              return;
            }

LABEL_162:
            free(v3);
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v110 = *(v3 + 13);
          *buf = 136446978;
          v142 = "nw_hash_table_apply";
          v143 = 2082;
          v144 = "table->apply_count";
          v145 = 2048;
          v146 = 1;
          v147 = 2048;
          v148 = v110;
          v111 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v139 = 0;
          if (!__nwlog_fault(v111, &type, &v139))
          {
            goto LABEL_156;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v112 = gLogObj;
            v113 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v114 = *(v3 + 13);
              *buf = 136446978;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "table->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v114;
              v115 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
              goto LABEL_155;
            }

            goto LABEL_156;
          }

          if (v139 == 1)
          {
            v116 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v112 = gLogObj;
            v113 = type;
            v117 = os_log_type_enabled(gLogObj, type);
            if (v116)
            {
              if (v117)
              {
                v118 = *(v3 + 13);
                *buf = 136447234;
                v142 = "nw_hash_table_apply";
                v143 = 2082;
                v144 = "table->apply_count";
                v145 = 2048;
                v146 = 1;
                v147 = 2048;
                v148 = v118;
                v149 = 2082;
                v150 = v116;
                _os_log_impl(&dword_181A37000, v112, v113, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v116);
              goto LABEL_156;
            }

            if (!v117)
            {
LABEL_156:
              if (v111)
              {
                free(v111);
              }

              *(v3 + 13) = 0;
              v109 = *(v3 + 14);
              goto LABEL_159;
            }

            v120 = *(v3 + 13);
            *buf = 136446978;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = "table->apply_count";
            v145 = 2048;
            v146 = 1;
            v147 = 2048;
            v148 = v120;
            v115 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v112 = gLogObj;
            v113 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_156;
            }

            v119 = *(v3 + 13);
            *buf = 136446978;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = "table->apply_count";
            v145 = 2048;
            v146 = 1;
            v147 = 2048;
            v148 = v119;
            v115 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          }

LABEL_155:
          _os_log_impl(&dword_181A37000, v112, v113, v115, buf, 0x2Au);
          goto LABEL_156;
        }

LABEL_31:
        if (!v19)
        {
          goto LABEL_27;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = *(v20 + 14);
      *buf = 136446978;
      v142 = "nw_hash_table_apply";
      v143 = 2082;
      v144 = "node->apply_count";
      v145 = 2048;
      v146 = 1;
      v147 = 2048;
      v148 = v24;
      v25 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v139 = 0;
      if (__nwlog_fault(v25, &type, &v139))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v28 = *(v20 + 14);
            *buf = 136446978;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = "node->apply_count";
            v145 = 2048;
            v146 = 1;
            v147 = 2048;
            v148 = v28;
            v29 = v26;
            v30 = v27;
            v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_54:
            _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0x2Au);
          }
        }

        else if (v139 == 1)
        {
          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          v35 = type;
          v36 = os_log_type_enabled(gLogObj, type);
          if (v33)
          {
            if (v36)
            {
              v37 = *(v20 + 14);
              *buf = 136447234;
              v142 = "nw_hash_table_apply";
              v143 = 2082;
              v144 = "node->apply_count";
              v145 = 2048;
              v146 = 1;
              v147 = 2048;
              v148 = v37;
              v149 = 2082;
              v150 = v33;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v33);
            goto LABEL_55;
          }

          if (v36)
          {
            v41 = *(v20 + 14);
            *buf = 136446978;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = "node->apply_count";
            v145 = 2048;
            v146 = 1;
            v147 = 2048;
            v148 = v41;
            v29 = v34;
            v30 = v35;
            v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_54;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          v39 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v40 = *(v20 + 14);
            *buf = 136446978;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = "node->apply_count";
            v145 = 2048;
            v146 = 1;
            v147 = 2048;
            v148 = v40;
            v29 = v38;
            v30 = v39;
            v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_54;
          }
        }
      }

LABEL_55:
      if (v25)
      {
        free(v25);
      }

      *(v20 + 14) = -1;
      v18 = v138;
      goto LABEL_58;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = *(v3 + 13);
    *buf = 136446978;
    v142 = "nw_hash_table_apply";
    v143 = 2082;
    v144 = "table->apply_count";
    v145 = 2048;
    v146 = 1;
    v147 = 2048;
    v148 = v6;
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (__nwlog_fault(v7, &type, &v139))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v10 = *(v3 + 13);
          *buf = 136446978;
          v142 = "nw_hash_table_apply";
          v143 = 2082;
          v144 = "table->apply_count";
          v145 = 2048;
          v146 = 1;
          v147 = 2048;
          v148 = v10;
          v11 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_21:
          _os_log_impl(&dword_181A37000, v8, v9, v11, buf, 0x2Au);
        }
      }

      else if (v139 == 1)
      {
        v12 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        v13 = os_log_type_enabled(gLogObj, type);
        if (v12)
        {
          if (v13)
          {
            v14 = *(v3 + 13);
            *buf = 136447234;
            v142 = "nw_hash_table_apply";
            v143 = 2082;
            v144 = "table->apply_count";
            v145 = 2048;
            v146 = 1;
            v147 = 2048;
            v148 = v14;
            v149 = 2082;
            v150 = v12;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v12);
          goto LABEL_22;
        }

        if (v13)
        {
          v16 = *(v3 + 13);
          *buf = 136446978;
          v142 = "nw_hash_table_apply";
          v143 = 2082;
          v144 = "table->apply_count";
          v145 = 2048;
          v146 = 1;
          v147 = 2048;
          v148 = v16;
          v11 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_21;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v15 = *(v3 + 13);
          *buf = 136446978;
          v142 = "nw_hash_table_apply";
          v143 = 2082;
          v144 = "table->apply_count";
          v145 = 2048;
          v146 = 1;
          v147 = 2048;
          v148 = v15;
          v11 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_21;
        }
      }
    }

LABEL_22:
    if (v7)
    {
      free(v7);
    }

    LODWORD(v5) = -1;
    *(v3 + 13) = -1;
    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v142 = "nw_hash_table_apply";
  v126 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v139 = 0;
  if (__nwlog_fault(v126, &type, &v139))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v127 = __nwlog_obj();
      v128 = type;
      if (!os_log_type_enabled(v127, type))
      {
        goto LABEL_211;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v129 = "%{public}s called with invalid hash table";
LABEL_210:
      _os_log_impl(&dword_181A37000, v127, v128, v129, buf, 0xCu);
      goto LABEL_211;
    }

    if (v139 != 1)
    {
      v127 = __nwlog_obj();
      v128 = type;
      if (!os_log_type_enabled(v127, type))
      {
        goto LABEL_211;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v129 = "%{public}s called with invalid hash table, backtrace limit exceeded";
      goto LABEL_210;
    }

    v134 = __nw_create_backtrace_string();
    v127 = __nwlog_obj();
    v128 = type;
    v135 = os_log_type_enabled(v127, type);
    if (!v134)
    {
      if (!v135)
      {
        goto LABEL_211;
      }

      *buf = 136446210;
      v142 = "nw_hash_table_apply";
      v129 = "%{public}s called with invalid hash table, no backtrace";
      goto LABEL_210;
    }

    if (v135)
    {
      *buf = 136446466;
      v142 = "nw_hash_table_apply";
      v143 = 2082;
      v144 = v134;
      _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with invalid hash table, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v134);
  }

LABEL_211:
  if (v126)
  {
    free(v126);
  }

  if ((v3[56] & 2) != 0)
  {
LABEL_141:
    os_unfair_lock_unlock(v3 + 15);
  }
}

void nw_context_purge_endpoints(NWConcrete_nw_context *a1, int a2)
{
  v133 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v60 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_purge_endpoints";
    v54 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v128 = 0;
    if (!__nwlog_fault(v54, type, &v128))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v55 = __nwlog_obj();
      v61 = type[0];
      if (os_log_type_enabled(v55, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v61, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v128 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v55 = __nwlog_obj();
      v90 = type[0];
      v91 = os_log_type_enabled(v55, type[0]);
      if (backtrace_string)
      {
        if (v91)
        {
          *buf = 136446466;
          *&buf[4] = "nw_context_purge_endpoints";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v55, v90, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_188:
        if (!v54)
        {
          goto LABEL_60;
        }

LABEL_189:
        free(v54);
        goto LABEL_60;
      }

      if (v91)
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v90, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v55 = __nwlog_obj();
      v110 = type[0];
      if (os_log_type_enabled(v55, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v110, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_187:

    goto LABEL_188;
  }

  v5 = v3;
  v6 = v5;
  if ((*(v5 + 152) & 8) == 0)
  {
    dispatch_assert_queue_V2(*(v5 + 1));
  }

  if ((*(v6 + 152) & 0x24) == 0)
  {
    v62 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_purge_endpoints";
    v54 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v128 = 0;
    if (!__nwlog_fault(v54, type, &v128))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v55 = __nwlog_obj();
      v63 = type[0];
      if (os_log_type_enabled(v55, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v63, "%{public}s called with null (context->is_implicit || context->is_isolated_context)", buf, 0xCu);
      }

      goto LABEL_187;
    }

    if (v128 != 1)
    {
      v55 = __nwlog_obj();
      v111 = type[0];
      if (os_log_type_enabled(v55, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v111, "%{public}s called with null (context->is_implicit || context->is_isolated_context), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_187;
    }

    v57 = __nw_create_backtrace_string();
    v55 = __nwlog_obj();
    v92 = type[0];
    v93 = os_log_type_enabled(v55, type[0]);
    if (!v57)
    {
      if (v93)
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v92, "%{public}s called with null (context->is_implicit || context->is_isolated_context), no backtrace", buf, 0xCu);
      }

      goto LABEL_187;
    }

    if (v93)
    {
      *buf = 136446466;
      *&buf[4] = "nw_context_purge_endpoints";
      *&buf[12] = 2082;
      *&buf[14] = v57;
      _os_log_impl(&dword_181A37000, v55, v92, "%{public}s called with null (context->is_implicit || context->is_isolated_context), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_123;
  }

  v7 = *(v6 + 3);
  if (!*(v7 + 32) || !*(v7 + 40) || !*(v7 + 48))
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_purge_endpoints";
    v54 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v128 = 0;
    if (!__nwlog_fault(v54, type, &v128))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v55 = __nwlog_obj();
      v56 = type[0];
      if (os_log_type_enabled(v55, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null (context->cache->address_endpoints != NULL && context->cache->host_endpoints != NULL && context->cache->other_endpoints != NULL)", buf, 0xCu);
      }

      goto LABEL_187;
    }

    if (v128 != 1)
    {
      v55 = __nwlog_obj();
      v76 = type[0];
      if (os_log_type_enabled(v55, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v76, "%{public}s called with null (context->cache->address_endpoints != NULL && context->cache->host_endpoints != NULL && context->cache->other_endpoints != NULL), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_187;
    }

    v57 = __nw_create_backtrace_string();
    v55 = __nwlog_obj();
    v58 = type[0];
    v59 = os_log_type_enabled(v55, type[0]);
    if (!v57)
    {
      if (v59)
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoints";
        _os_log_impl(&dword_181A37000, v55, v58, "%{public}s called with null (context->cache->address_endpoints != NULL && context->cache->host_endpoints != NULL && context->cache->other_endpoints != NULL), no backtrace", buf, 0xCu);
      }

      goto LABEL_187;
    }

    if (v59)
    {
      *buf = 136446466;
      *&buf[4] = "nw_context_purge_endpoints";
      *&buf[12] = 2082;
      *&buf[14] = v57;
      _os_log_impl(&dword_181A37000, v55, v58, "%{public}s called with null (context->cache->address_endpoints != NULL && context->cache->host_endpoints != NULL && context->cache->other_endpoints != NULL), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_123:

    free(v57);
    if (!v54)
    {
      goto LABEL_60;
    }

    goto LABEL_189;
  }

  if (a2)
  {
    v8 = *(v7 + 68);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
LABEL_13:
      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      if (*(v6 + 33) != 4)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(*(v6 + 3) + 68);
          *buf = 136447490;
          *&buf[4] = "nw_context_purge_endpoints";
          *&buf[12] = 2114;
          *&buf[14] = v6;
          *&buf[22] = 1024;
          LODWORD(v130) = v9;
          WORD2(v130) = 1024;
          *(&v130 + 6) = v8 - v11;
          WORD5(v130) = 1024;
          HIDWORD(v130) = v13;
          LOWORD(v131) = 1024;
          *(&v131 + 2) = v10;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s Context %{public}@ has more than %u cache entries, purging %u from %u down to %u", buf, 0x2Eu);
        }

        v7 = *(v6 + 3);
      }

      v14 = **(*(v7 + 8) + 8);
      if (v14)
      {
        v15 = ~v8 + v11;
        do
        {
          *(v14 + 32) = 0;
          v16 = __CFADD__(v15++, 1);
          if (v16)
          {
            break;
          }

          v14 = **(*(v14 + 8) + 8);
        }

        while (v14);
      }

      goto LABEL_34;
    }
  }

  else
  {
    v9 = *(v6 + 23);
    v8 = *(v7 + 68);
    if (v8 > v9)
    {
      v10 = *(v6 + 24);
      goto LABEL_13;
    }
  }

  v17 = *(v7 + 64);
  v18 = *(v6 + 25);
  if (v17 > v18)
  {
    if (*(v6 + 33) != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(v6 + 25);
        v21 = *(*(v6 + 3) + 64);
        *buf = 136447490;
        *&buf[4] = "nw_context_purge_endpoints";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 1024;
        LODWORD(v130) = v20;
        WORD2(v130) = 1024;
        *(&v130 + 6) = v17 - v18;
        WORD5(v130) = 1024;
        HIDWORD(v130) = v21;
        LOWORD(v131) = 1024;
        *(&v131 + 2) = v20;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s Context %{public}@ has more than %u idle cache entries, purging %u from %u down to %u", buf, 0x2Eu);
      }

      v7 = *(v6 + 3);
    }

    v22 = **(*(v7 + 24) + 8);
    if (v22)
    {
      v23 = ~v17 + v18;
      do
      {
        *(v22 + 32) = 0;
        v16 = __CFADD__(v23++, 1);
        if (v16)
        {
          break;
        }

        v22 = **(*(v22 + 24) + 8);
      }

      while (v22);
    }
  }

LABEL_34:
  v24 = *(v7 + 32);
  v25 = v6;
  v26 = v25;
  if (v24)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL36nw_context_purge_endpoint_hash_tableP21NWConcrete_nw_contextP13nw_hash_tablePKc_block_invoke;
    *&v130 = &unk_1E6A2D138;
    *(&v130 + 1) = v25;
    v131 = v24;
    v132 = "address";
    nw_hash_table_apply(v24, buf);

    goto LABEL_36;
  }

  v64 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_context_purge_endpoint_hash_table";
  v65 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v128 = 0;
  if (__nwlog_fault(v65, type, &v128))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v66 = __nwlog_obj();
      v67 = type[0];
      if (os_log_type_enabled(v66, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null hash_table", buf, 0xCu);
      }
    }

    else if (v128 == 1)
    {
      v94 = __nw_create_backtrace_string();
      v66 = __nwlog_obj();
      v95 = type[0];
      v96 = os_log_type_enabled(v66, type[0]);
      if (v94)
      {
        if (v96)
        {
          *buf = 136446466;
          *&buf[4] = "nw_context_purge_endpoint_hash_table";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          _os_log_impl(&dword_181A37000, v66, v95, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v94);
        goto LABEL_193;
      }

      if (v96)
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v66, v95, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v66 = __nwlog_obj();
      v112 = type[0];
      if (os_log_type_enabled(v66, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v66, v112, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_193:
  if (v65)
  {
    free(v65);
  }

LABEL_36:

  v27 = *(*(v6 + 3) + 40);
  v28 = v26;
  v29 = v28;
  if (v27)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL36nw_context_purge_endpoint_hash_tableP21NWConcrete_nw_contextP13nw_hash_tablePKc_block_invoke;
    *&v130 = &unk_1E6A2D138;
    *(&v130 + 1) = v28;
    v131 = v27;
    v132 = "host";
    nw_hash_table_apply(v27, buf);

    goto LABEL_38;
  }

  v68 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_context_purge_endpoint_hash_table";
  v69 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v128 = 0;
  if (__nwlog_fault(v69, type, &v128))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type[0];
      if (os_log_type_enabled(v70, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null hash_table", buf, 0xCu);
      }
    }

    else if (v128 == 1)
    {
      v97 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v98 = type[0];
      v99 = os_log_type_enabled(v70, type[0]);
      if (v97)
      {
        if (v99)
        {
          *buf = 136446466;
          *&buf[4] = "nw_context_purge_endpoint_hash_table";
          *&buf[12] = 2082;
          *&buf[14] = v97;
          _os_log_impl(&dword_181A37000, v70, v98, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v97);
        goto LABEL_198;
      }

      if (v99)
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v70, v98, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v70 = __nwlog_obj();
      v113 = type[0];
      if (os_log_type_enabled(v70, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v70, v113, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_198:
  if (v69)
  {
    free(v69);
  }

LABEL_38:

  v30 = *(*(v6 + 3) + 48);
  v31 = v29;
  v32 = v31;
  if (v30)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL36nw_context_purge_endpoint_hash_tableP21NWConcrete_nw_contextP13nw_hash_tablePKc_block_invoke;
    *&v130 = &unk_1E6A2D138;
    *(&v130 + 1) = v31;
    v131 = v30;
    v132 = "other";
    nw_hash_table_apply(v30, buf);

    goto LABEL_40;
  }

  v72 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_context_purge_endpoint_hash_table";
  v73 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v128 = 0;
  if (__nwlog_fault(v73, type, &v128))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type[0];
      if (os_log_type_enabled(v74, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null hash_table", buf, 0xCu);
      }
    }

    else if (v128 == 1)
    {
      v100 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v101 = type[0];
      v102 = os_log_type_enabled(v74, type[0]);
      if (v100)
      {
        if (v102)
        {
          *buf = 136446466;
          *&buf[4] = "nw_context_purge_endpoint_hash_table";
          *&buf[12] = 2082;
          *&buf[14] = v100;
          _os_log_impl(&dword_181A37000, v74, v101, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v100);
        goto LABEL_203;
      }

      if (v102)
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v74, v101, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v74 = __nwlog_obj();
      v114 = type[0];
      if (os_log_type_enabled(v74, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_purge_endpoint_hash_table";
        _os_log_impl(&dword_181A37000, v74, v114, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_203:
  if (v73)
  {
    free(v73);
  }

LABEL_40:

  if (v32[10])
  {
    v34 = *(*(v6 + 3) + 32);
    v35 = v32;
    v36 = v35;
    if (v34)
    {
      *type = 0;
      v125 = type;
      v126 = 0x2020000000;
      v127 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL51nw_context_get_active_instance_count_for_hash_tableP21NWConcrete_nw_contextP13nw_hash_table_block_invoke;
      *&v130 = &unk_1E6A3CD58;
      v131 = type;
      *(&v130 + 1) = v35;
      nw_hash_table_apply(v34, buf);
      v37 = *(v125 + 3);

      _Block_object_dispose(type, 8);
      goto LABEL_43;
    }

    v77 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
    v78 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v128 = 0;
    if (__nwlog_fault(v78, type, &v128))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (os_log_type_enabled(v79, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null hash_table", buf, 0xCu);
        }
      }

      else if (v128 == 1)
      {
        v103 = __nw_create_backtrace_string();
        v79 = __nwlog_obj();
        v119 = type[0];
        v104 = os_log_type_enabled(v79, type[0]);
        if (v103)
        {
          if (v104)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
            *&buf[12] = 2082;
            *&buf[14] = v103;
            _os_log_impl(&dword_181A37000, v79, v119, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v103);
          goto LABEL_208;
        }

        if (v104)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
          _os_log_impl(&dword_181A37000, v79, v119, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v79 = __nwlog_obj();
        v115 = type[0];
        if (os_log_type_enabled(v79, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
          _os_log_impl(&dword_181A37000, v79, v115, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_208:
    if (v78)
    {
      free(v78);
    }

    v37 = 0;
LABEL_43:

    v38 = *(*(v6 + 3) + 40);
    v39 = v36;
    v40 = v39;
    if (v38)
    {
      *type = 0;
      v125 = type;
      v126 = 0x2020000000;
      v127 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL51nw_context_get_active_instance_count_for_hash_tableP21NWConcrete_nw_contextP13nw_hash_table_block_invoke;
      *&v130 = &unk_1E6A3CD58;
      v131 = type;
      *(&v130 + 1) = v39;
      nw_hash_table_apply(v38, buf);
      v41 = *(v125 + 3);

      _Block_object_dispose(type, 8);
      goto LABEL_45;
    }

    v81 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
    v121 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v128 = 0;
    v82 = v121;
    if (!__nwlog_fault(v121, type, &v128))
    {
LABEL_215:
      if (v82)
      {
        free(v82);
      }

      v41 = 0;
LABEL_45:

      v42 = *(*(v6 + 3) + 48);
      v43 = v40;
      v44 = v43;
      if (v42)
      {
        *type = 0;
        v125 = type;
        v126 = 0x2020000000;
        v127 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL51nw_context_get_active_instance_count_for_hash_tableP21NWConcrete_nw_contextP13nw_hash_table_block_invoke;
        *&v130 = &unk_1E6A3CD58;
        v131 = type;
        *(&v130 + 1) = v43;
        nw_hash_table_apply(v42, buf);
        v45 = *(v125 + 3);

        _Block_object_dispose(type, 8);
LABEL_47:

        v46 = v41 + v37 + v45;
        if ((*(v44 + 153) & 2) != 0 && !v46 || (*(v44 + 153) & 2) == 0 && v46)
        {
          if (v44[9])
          {
            v47 = _Block_copy(v32[10]);
            v48 = v44[9];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = ___ZL26nw_context_purge_endpointsP21NWConcrete_nw_contextb_block_invoke;
            block[3] = &unk_1E6A3B8C0;
            block[4] = v47;
            v123 = v46 == 0;
            dispatch_async(v48, block);
          }

          else
          {
            (*(v32[10] + 2))(v32[10], v46 == 0);
          }
        }

        *(v44 + 153) = *(v44 + 153) & 0xFD | (2 * (v46 != 0));
        goto LABEL_55;
      }

      v85 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
      v86 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v128 = 0;
      if (__nwlog_fault(v86, type, &v128))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v87 = __nwlog_obj();
          v88 = type[0];
          if (os_log_type_enabled(v87, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
            _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null hash_table", buf, 0xCu);
          }
        }

        else if (v128 == 1)
        {
          v108 = __nw_create_backtrace_string();
          v87 = __nwlog_obj();
          v120 = type[0];
          v109 = os_log_type_enabled(v87, type[0]);
          if (v108)
          {
            if (v109)
            {
              *buf = 136446466;
              *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
              *&buf[12] = 2082;
              *&buf[14] = v108;
              _os_log_impl(&dword_181A37000, v87, v120, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v108);
            goto LABEL_221;
          }

          if (v109)
          {
            *buf = 136446210;
            *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
            _os_log_impl(&dword_181A37000, v87, v120, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v87 = __nwlog_obj();
          v117 = type[0];
          if (os_log_type_enabled(v87, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
            _os_log_impl(&dword_181A37000, v87, v117, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_221:
      if (v86)
      {
        free(v86);
      }

      v45 = 0;
      goto LABEL_47;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v83 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v83, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
        _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null hash_table", buf, 0xCu);
      }
    }

    else
    {
      if (v128 == 1)
      {
        v105 = __nw_create_backtrace_string();
        v106 = __nwlog_obj();
        v118 = type[0];
        v107 = os_log_type_enabled(v106, type[0]);
        if (v105)
        {
          if (v107)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
            *&buf[12] = 2082;
            *&buf[14] = v105;
            _os_log_impl(&dword_181A37000, v106, v118, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v105);
        }

        else
        {
          if (v107)
          {
            *buf = 136446210;
            *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
            _os_log_impl(&dword_181A37000, v106, v118, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_214;
      }

      v83 = __nwlog_obj();
      v116 = type[0];
      if (os_log_type_enabled(v83, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_context_get_active_instance_count_for_hash_table";
        _os_log_impl(&dword_181A37000, v83, v116, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_214:
    v82 = v121;
    goto LABEL_215;
  }

LABEL_55:
  if (!nw_hash_table_count(*(*(v6 + 3) + 32), v33) && !nw_hash_table_count(*(*(v6 + 3) + 40), v49) && !nw_hash_table_count(*(*(v6 + 3) + 48), v50))
  {
    v52 = *(*(v6 + 3) + 56);
    if (v52)
    {
      nw_queue_cancel_source(v52, v51);
      *(*(v6 + 3) + 56) = 0;
    }
  }

LABEL_60:
}

void nw_queue_context_async(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (nw_context_is_inline(v5))
  {
    nw_context_queue_block(v5, v3);
  }

  else
  {
    v4 = nw_context_copy_workloop(v5);
    dispatch_async(v4, v3);
  }
}

uint64_t nw_queue_context_target_dispatch_queue(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_context_copy_workloop(v3);
      dispatch_set_target_queue(v5, v6);

      v7 = 1;
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_queue_context_target_dispatch_queue";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v10, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_queue_context_target_dispatch_queue";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null queue", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_queue_context_target_dispatch_queue";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v25 = "nw_queue_context_target_dispatch_queue";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null queue, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_queue_context_target_dispatch_queue";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_queue_context_target_dispatch_queue";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v10, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_queue_context_target_dispatch_queue";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_queue_context_target_dispatch_queue";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v25 = "nw_queue_context_target_dispatch_queue";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_queue_context_target_dispatch_queue";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

BOOL nw_settings_get_quic_enabled()
{
  v0 = nw_setting_enable_quic;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 0;
  if (!v0 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (value && (v5 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v3 = xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v3;
}

uint64_t nw_context_create(const char *a1)
{
  v2 = [NWConcrete_nw_context alloc];

  return [(NWConcrete_nw_context *)v2 initWithIdentifier:a1];
}

void nw_context_set_privacy_level(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_context_set_privacy_level_internal(v3, a2, a2 == 4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_context_set_privacy_level";
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
        v16 = "nw_context_set_privacy_level";
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
          v16 = "nw_context_set_privacy_level";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_context_set_privacy_level";
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
        v16 = "nw_context_set_privacy_level";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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

void nw_context_set_privacy_level_internal(void *a1, int a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if ((v5[152] & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __nw_context_set_privacy_level_internal_block_invoke;
      v16[3] = &unk_1E6A2BA80;
      v17 = v6;
      v18 = a2;
      v19 = a3;
      nw_queue_context_async(v17, v16);
    }

    else
    {
      *(v6 + 33) = a2;
      *(v6 + 153) = *(v6 + 153) & 0xFE | a3;
      v7 = *(v6 + 5);
      if (v7)
      {
        *(v7 + 132) = a2;
        *(*(v6 + 5) + 153) = *(*(v6 + 5) + 153) & 0xFE | a3;
      }
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_context_set_privacy_level_internal";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v9, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v23 = "nw_context_set_privacy_level_internal";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          v23 = "nw_context_set_privacy_level_internal";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_context_set_privacy_level_internal";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v23 = "nw_context_set_privacy_level_internal";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v9)
  {
    free(v9);
  }

LABEL_7:
}

uint64_t sub_181A46DBC(char a1)
{
  if (a1 & 1) != 0 && (sub_181A49908())
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1ED411BA0);
    v3 = v1;
    v4 = sub_182AD2678();
    v5 = sub_182AD38A8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136315138;
      sensitive_redacted = nw_context_get_sensitive_redacted(*&v3[OBJC_IVAR____TtC7Network8Endpoint_context]);
      if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
      {
        v9 = Endpoint.description.getter();
      }

      else
      {
        v9 = sub_181B52D70();
      }

      v12 = sub_181C64FFC(v9, v10, &v37);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_181A37000, v4, v5, "endpoint %s has active edges", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1865DF520](v7, -1, -1);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  sub_181A49DB4();
  v13 = *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar];
  if (v13 && nw_protocol_instance_registrar_get_instance_count(v13))
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1ED411BA0);
    v15 = v1;
    v16 = sub_182AD2678();
    v17 = sub_182AD38A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      v20 = nw_context_get_sensitive_redacted(*&v15[OBJC_IVAR____TtC7Network8Endpoint_context]);
      if ((*&v15[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v20 & 1) == 0)
      {
        v21 = Endpoint.description.getter();
      }

      else
      {
        v21 = sub_181B52D70();
      }

      v24 = sub_181C64FFC(v21, v22, &v37);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_181A37000, v16, v17, "endpoint %s has active protocol registrars", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  sub_181A47260();
  if (v25)
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1ED411BA0);
    v27 = v1;
    v28 = sub_182AD2678();
    v29 = sub_182AD38A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v32 = nw_context_get_sensitive_redacted(*&v27[OBJC_IVAR____TtC7Network8Endpoint_context]);
      if ((*&v27[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v32 & 1) == 0)
      {
        v33 = Endpoint.description.getter();
      }

      else
      {
        v33 = sub_181B52D70();
      }

      v36 = sub_181C64FFC(v33, v34, &v37);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_181A37000, v28, v29, "endpoint %s has associations", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1865DF520](v31, -1, -1);
      MEMORY[0x1865DF520](v30, -1, -1);
    }
  }

  else if ((v11 | v23) != 1)
  {
    return 0;
  }

  return 1;
}

void sub_181A47260()
{
  if (*(v0 + OBJC_IVAR____TtC7Network8Endpoint_context))
  {
    v1 = OBJC_IVAR____TtC7Network8Endpoint_associations;
    swift_beginAccess();
    v2 = *(v0 + v1);
    v3 = *(v2 + 16);
    if (v3)
    {

      v4 = 0;
      v5 = (v2 + 40);
      while (v4 < *(v2 + 16))
      {
        if (*v5)
        {
          v6 = *(v5 - 1);
          v7 = swift_unknownObjectRetain();
          if (nw_association_is_empty(v7))
          {
            sub_181BE07F8(v6);
          }

          swift_unknownObjectRelease();
        }

        ++v4;
        v5 += 2;
        if (v3 == v4)
        {

          v8 = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_storageLock);
          os_unfair_lock_lock(v8 + 4);
          v9 = OBJC_IVAR____TtC7Network8Endpoint_flags;
          v10 = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_flags);
          if ((v10 & 4) != 0)
          {
            v11 = v10 & 0xFFFB;
            *(v0 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v11;
            if ((v11 & 0x40) == 0)
            {
              goto LABEL_15;
            }

LABEL_13:
            *(v0 + v9) = v11 & 0xFFBF;
          }

          else
          {
            sub_181A47778(0);
            v11 = *(v0 + v9);
            if ((v11 & 0x40) != 0)
            {
              goto LABEL_13;
            }

LABEL_15:
            sub_181A47778(1);
          }

          os_unfair_lock_unlock(v8 + 4);
          return;
        }
      }

      __break(1u);
    }
  }
}

BOOL nw_association_is_empty(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_parameters_copy_context(v1[2]);
    nw_context_assert_queue(v3);
    v4 = *(v2 + 7);
    if (v4 && *(v4 + 48))
    {
      v5 = time(0);
      v6 = *(v2 + 7);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __nw_association_is_empty_block_invoke;
      v18[3] = &unk_1E6A3CDA8;
      v21 = v5;
      v19 = v3;
      v20 = v2;
      nw_hash_table_apply(v6, v18);
    }

    if (*(v2 + 76))
    {
      v8 = *(v2 + 7);
      if (v8)
      {
        v7 = *(v8 + 48) == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_11;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_association_is_empty";
  v11 = _os_log_send_and_compose_impl();

  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v11, &v23, &v22))
  {
    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = v23;
      if (os_log_type_enabled(v12, v23))
      {
        *buf = 136446210;
        v25 = "nw_association_is_empty";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null association", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = v23;
      v16 = os_log_type_enabled(v12, v23);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_association_is_empty";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_association_is_empty";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = v23;
      if (os_log_type_enabled(v12, v23))
      {
        *buf = 136446210;
        v25 = "nw_association_is_empty";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_28:
  if (v11)
  {
    free(v11);
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t sub_181A47778(uint64_t a1)
{
  v3 = v1;
  v4 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  v5 = sub_181A41ED0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + v4);
    v11 = *(v3 + v4);
    *(v3 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182254CDC();
      v9 = v11;
    }

    sub_181BE0664(v7, v9);
    *(v3 + v4) = v9;
  }

  return swift_endAccess();
}

uint64_t ___ZL36nw_context_purge_endpoint_hash_tableP21NWConcrete_nw_contextP13nw_hash_tablePKc_block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___ZL36nw_context_purge_endpoint_hash_tableP21NWConcrete_nw_contextP13nw_hash_tablePKc_block_invoke_2;
  v29[3] = &unk_1E6A35D48;
  v31 = object;
  v30 = *(a1 + 32);
  nw_hash_table_apply(object, v29);
  if (nw_hash_table_count(object, v5) || (nw_hash_table_remove_node(*(a1 + 40), a2) & 1) != 0)
  {
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  *buf = 136446978;
  v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
  v34 = 2114;
  v35 = v7;
  v36 = 2080;
  v37 = v8;
  v38 = 2048;
  v39 = a2;
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v9, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 48);
        *buf = 136446978;
        v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
        v34 = 2114;
        v35 = v12;
        v36 = 2080;
        v37 = v13;
        v38 = 2048;
        v39 = a2;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s %{public}@ failed to remove %s hash table for node %p", buf, 0x2Au);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (backtrace_string)
      {
        v16 = backtrace_string;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          v19 = *(a1 + 32);
          v20 = *(a1 + 48);
          *buf = 136447234;
          v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
          v34 = 2114;
          v35 = v19;
          v36 = 2080;
          v37 = v20;
          v38 = 2048;
          v39 = a2;
          v40 = 2082;
          v41 = v16;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}@ failed to remove %s hash table for node %p, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v16);
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        *buf = 136446978;
        v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
        v34 = 2114;
        v35 = v25;
        v36 = 2080;
        v37 = v26;
        v38 = 2048;
        v39 = a2;
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s %{public}@ failed to remove %s hash table for node %p, no backtrace", buf, 0x2Au);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v21 = type;
      if (os_log_type_enabled(v10, type))
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 48);
        *buf = 136446978;
        v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
        v34 = 2114;
        v35 = v22;
        v36 = 2080;
        v37 = v23;
        v38 = 2048;
        v39 = a2;
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s %{public}@ failed to remove %s hash table for node %p, backtrace limit exceeded", buf, 0x2Au);
      }
    }
  }

  if (v9)
  {
LABEL_9:
    free(v9);
  }

LABEL_10:

  return 1;
}

uint64_t __nw_association_is_empty_block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (*(a1 + 48) > *(extra + 32))
  {
    v6 = extra;
    v7 = *(extra + 40);
    if (v7)
    {
      nw_protocol_definition_deallocate_cache_entry(v4, v7);
    }

    nw_context_remove_cache_entry(*(a1 + 32), v6);
    if ((nw_hash_table_remove_node(*(*(a1 + 40) + 56), a2) & 1) == 0 && (nw_path_parameters_get_logging_disabled(*(*(a1 + 40) + 16)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      v9 = *(*(a1 + 40) + 8);
      v10 = v9;
      if (v9)
      {
        logging_description = _nw_endpoint_get_logging_description(v9);
      }

      else
      {
        logging_description = "<NULL>";
      }

      *buf = 136446722;
      v33 = "nw_association_is_empty_block_invoke";
      v34 = 2082;
      v35 = logging_description;
      v36 = 2048;
      v37 = a2;
      v12 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (!__nwlog_fault(v12, &type, &v30))
      {
        goto LABEL_41;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          v15 = *(*(a1 + 40) + 8);
          v16 = v15;
          if (v15)
          {
            v17 = _nw_endpoint_get_logging_description(v15);
          }

          else
          {
            v17 = "<NULL>";
          }

          *buf = 136446722;
          v33 = "nw_association_is_empty_block_invoke";
          v34 = 2082;
          v35 = v17;
          v36 = 2048;
          v37 = a2;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 0x20u);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v19 = backtrace_string;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v20 = gconnectionLogObj;
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            v22 = nw_endpoint_get_logging_description(*(*(a1 + 40) + 8));
            *buf = 136446978;
            v33 = "nw_association_is_empty_block_invoke";
            v34 = 2082;
            v35 = v22;
            v36 = 2048;
            v37 = a2;
            v38 = 2082;
            v39 = v19;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v19);
          goto LABEL_41;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        v27 = type;
        if (os_log_type_enabled(v13, type))
        {
          v28 = nw_endpoint_get_logging_description(*(*(a1 + 40) + 8));
          *buf = 136446722;
          v33 = "nw_association_is_empty_block_invoke";
          v34 = 2082;
          v35 = v28;
          v36 = 2048;
          v37 = a2;
          _os_log_impl(&dword_181A37000, v13, v27, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        v23 = type;
        if (os_log_type_enabled(v13, type))
        {
          v24 = *(*(a1 + 40) + 8);
          v25 = v24;
          if (v24)
          {
            v26 = _nw_endpoint_get_logging_description(v24);
          }

          else
          {
            v26 = "<NULL>";
          }

          *buf = 136446722;
          v33 = "nw_association_is_empty_block_invoke";
          v34 = 2082;
          v35 = v26;
          v36 = 2048;
          v37 = a2;
          _os_log_impl(&dword_181A37000, v13, v23, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_41:
      if (v12)
      {
        free(v12);
      }
    }
  }

  return 1;
}

uint64_t nw_context_get_globals_for_channel(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = &__block_literal_global_33_92229;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_context_get_globals_for_channel";
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
          v21 = "nw_context_get_globals_for_channel";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null context", buf, 0xCu);
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
            v21 = "nw_context_get_globals_for_channel";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_context_get_globals_for_channel";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_context_get_globals_for_channel";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v11)
    {
      free(v11);
    }

    v5 = 0;
    goto LABEL_8;
  }

  v3 = nw_context_copy_globals_context(v1);

  os_unfair_lock_lock((*(v3 + 4) + 40));
  v4 = *(v3 + 4);
  v5 = *(v4 + 60);
  if (v5)
  {
LABEL_7:
    os_unfair_lock_unlock((v4 + 40));

LABEL_8:
    return v5;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xA8C41A1EuLL);
  if (v6)
  {
LABEL_6:
    *(*(v3 + 4) + 60) = v6;
    *v6 = nw_dictionary_create();
    v6[1] = _nw_array_create();
    v6[2] = 0;
    v4 = *(v3 + 4);
    v5 = *(v4 + 60);
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v21 = "nw_context_get_globals_for_channel";
  v22 = 2048;
  v23 = 1;
  v24 = 2048;
  v25 = 24;
  v8 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

BOOL nw_dictionary_apply(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_dictionary_apply";
    v4 = _os_log_send_and_compose_impl();
    v15 = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &v15, &v14))
    {
      goto LABEL_45;
    }

    if (v15 == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = v15;
      if (!os_log_type_enabled(v5, v15))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_apply";
      v7 = "%{public}s called with null dictionary";
LABEL_44:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_45;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = v15;
      if (os_log_type_enabled(v5, v15))
      {
        *buf = 136446210;
        v17 = "nw_dictionary_apply";
        v7 = "%{public}s called with null dictionary, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = v15;
    v9 = os_log_type_enabled(v5, v15);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v17 = "nw_dictionary_apply";
        v7 = "%{public}s called with null dictionary, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v9)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v17 = "nw_dictionary_apply";
    v18 = 2082;
    v19 = backtrace_string;
    v10 = "%{public}s called with null dictionary, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    goto LABEL_31;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_dictionary_apply";
    v4 = _os_log_send_and_compose_impl();
    v15 = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &v15, &v14))
    {
      goto LABEL_45;
    }

    if (v15 == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = v15;
      if (!os_log_type_enabled(v5, v15))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v17 = "nw_dictionary_apply";
      v7 = "%{public}s called with null applier";
      goto LABEL_44;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = v15;
      if (os_log_type_enabled(v5, v15))
      {
        *buf = 136446210;
        v17 = "nw_dictionary_apply";
        v7 = "%{public}s called with null applier, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = v15;
    v11 = os_log_type_enabled(v5, v15);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_dictionary_apply";
        v7 = "%{public}s called with null applier, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v11)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v17 = "nw_dictionary_apply";
    v18 = 2082;
    v19 = backtrace_string;
    v10 = "%{public}s called with null applier, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __nw_dictionary_apply_block_invoke;
    applier[3] = &unk_1E6A34450;
    applier[4] = a2;
    applier[5] = a1;
    return xpc_dictionary_apply(v2, applier);
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_dictionary_apply";
  v4 = _os_log_send_and_compose_impl();
  v15 = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v4, &v15, &v14))
  {
    goto LABEL_45;
  }

  if (v15 != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = v15;
      if (os_log_type_enabled(v5, v15))
      {
        *buf = 136446210;
        v17 = "nw_dictionary_apply";
        v7 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = v15;
    v12 = os_log_type_enabled(v5, v15);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_dictionary_apply";
        v7 = "%{public}s called with null dictionary->xpc_object, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (v12)
    {
      *buf = 136446466;
      v17 = "nw_dictionary_apply";
      v18 = 2082;
      v19 = backtrace_string;
      v10 = "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_45;
  }

  v5 = __nwlog_obj();
  v6 = v15;
  if (os_log_type_enabled(v5, v15))
  {
    *buf = 136446210;
    v17 = "nw_dictionary_apply";
    v7 = "%{public}s called with null dictionary->xpc_object";
    goto LABEL_44;
  }

LABEL_45:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t ___ZL36nw_context_purge_endpoint_hash_tableP21NWConcrete_nw_contextP13nw_hash_tablePKc_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = nw_hash_node_get_object(a2);
  if (nw_endpoint_is_active(v4, 1) & 1) != 0 || (nw_hash_table_remove_node(*(a1 + 40), a2))
  {
    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v6 = *(a1 + 32);
  v7 = v4;
  v8 = v7;
  if (v7)
  {
    logging_description = _nw_endpoint_get_logging_description(v7);
  }

  else
  {
    logging_description = "<NULL>";
  }

  *buf = 136446978;
  v33 = "nw_context_purge_endpoint_hash_table_block_invoke_2";
  v34 = 2114;
  v35 = v6;
  v36 = 2082;
  v37 = logging_description;
  v38 = 2048;
  v39 = a2;
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v10, &type, &v30))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        v13 = *(a1 + 32);
        v14 = v8;
        v15 = v14;
        if (v8)
        {
          v16 = _nw_endpoint_get_logging_description(v14);
        }

        else
        {
          v16 = "<NULL>";
        }

        *buf = 136446978;
        v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
        v34 = 2114;
        v35 = v13;
        v36 = 2082;
        v37 = v16;
        v38 = 2048;
        v39 = a2;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %{public}@ failed to remove endpoint %{public}s for node %p", buf, 0x2Au);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v18 = type;
      v19 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v19)
        {
          v20 = *(a1 + 32);
          v21 = nw_endpoint_get_logging_description(v8);
          *buf = 136447234;
          v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
          v34 = 2114;
          v35 = v20;
          v36 = 2082;
          v37 = v21;
          v38 = 2048;
          v39 = a2;
          v40 = 2082;
          v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s %{public}@ failed to remove endpoint %{public}s for node %p, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (v19)
      {
        v27 = *(a1 + 32);
        v28 = nw_endpoint_get_logging_description(v8);
        *buf = 136446978;
        v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
        v34 = 2114;
        v35 = v27;
        v36 = 2082;
        v37 = v28;
        v38 = 2048;
        v39 = a2;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s %{public}@ failed to remove endpoint %{public}s for node %p, no backtrace", buf, 0x2Au);
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
        v23 = *(a1 + 32);
        v24 = v8;
        v25 = v24;
        if (v8)
        {
          v26 = _nw_endpoint_get_logging_description(v24);
        }

        else
        {
          v26 = "<NULL>";
        }

        *buf = 136446978;
        v33 = "nw_context_purge_endpoint_hash_table_block_invoke";
        v34 = 2114;
        v35 = v23;
        v36 = 2082;
        v37 = v26;
        v38 = 2048;
        v39 = a2;
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s %{public}@ failed to remove endpoint %{public}s for node %p, backtrace limit exceeded", buf, 0x2Au);
      }
    }
  }

LABEL_28:
  if (v10)
  {
    free(v10);
  }

LABEL_30:

  return 1;
}

unint64_t sub_181A490C8(unint64_t *a1, _BYTE *a2)
{
  v5 = *a1;
  result = sub_181A49A2C(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_182AD3EB8();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_182AD3EB8())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1865DA790](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v11 = *(v5 + 8 * v9 + 32);
    swift_unknownObjectRetain();
LABEL_15:
    if (nw_endpoint_edge_is_active(v11))
    {
      *a2 = 1;
      swift_unknownObjectRelease();
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1865DA790](v8, v5);
          v13 = MEMORY[0x1865DA790](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v14)
          {
            goto LABEL_48;
          }

          if (v9 >= v14)
          {
            goto LABEL_49;
          }

          v12 = *(v5 + 32 + 8 * v8);
          v13 = *(v5 + 32 + 8 * v9);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_182084878(v5);
          v15 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v13;
        swift_unknownObjectRelease();
        if ((v5 & 0x8000000000000000) != 0 || v15)
        {
          v5 = sub_182084878(v5);
          v16 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v16 + 16))
        {
          goto LABEL_46;
        }

        *(v16 + 8 * v9 + 32) = v12;
        swift_unknownObjectRelease();
        *a1 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_45;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return sub_182AD3EB8();
}

void ___ZL28nw_context_start_purge_timerP21NWConcrete_nw_context_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    globals_for_channel = nw_context_get_globals_for_channel(v2);
    os_unfair_lock_lock((globals_for_channel + 16));
    v4 = *globals_for_channel;
    if (*globals_for_channel)
    {
      *type = 0;
      v15 = type;
      v16 = 0x2000000000;
      v17 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_channel_purge_idle_block_invoke;
      v20 = &unk_1E6A3D328;
      v21 = type;
      nw_dictionary_apply(v4, buf);
      os_unfair_lock_unlock((globals_for_channel + 16));
      v5 = *(v15 + 3);
      if (v5)
      {
        _nw_array_apply(v5, &__block_literal_global_92231);
        v6 = *(v15 + 3);
        if (v6)
        {
          os_release(v6);
          *(v15 + 3) = 0;
        }
      }

      _Block_object_dispose(type, 8);
    }

    else
    {
      os_unfair_lock_unlock((globals_for_channel + 16));
    }

    goto LABEL_8;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_channel_purge_idle";
  v8 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v8, type, &v18))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_purge_idle";
      v11 = "%{public}s called with null context";
      goto LABEL_24;
    }

    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_purge_idle";
      v11 = "%{public}s called with null context, backtrace limit exceeded";
      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v13 = os_log_type_enabled(v9, type[0]);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_purge_idle";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_25;
    }

    if (v13)
    {
      *buf = 136446210;
      *&buf[4] = "nw_channel_purge_idle";
      v11 = "%{public}s called with null context, no backtrace";
LABEL_24:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_25:
  if (v8)
  {
    free(v8);
  }

LABEL_8:
  v7 = *(a1 + 32);

  nw_context_purge_endpoints(v7, 0);
}

uint64_t nw_endpoint_is_active(void *a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    is_active = _nw_endpoint_is_active(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_is_active";
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
        v18 = "nw_endpoint_is_active";
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
          v18 = "nw_endpoint_is_active";
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
        v18 = "nw_endpoint_is_active";
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
        v18 = "nw_endpoint_is_active";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  is_active = 0;
LABEL_3:

  return is_active;
}

uint64_t sub_181A49908()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_lock);
  os_unfair_lock_lock(v1 + 4);
  v2 = OBJC_IVAR____TtC7Network8Endpoint_edges;
  swift_beginAccess();
  v3 = sub_181A490C8((v0 + v2), &v8);
  v4 = *(v0 + v2);
  if (v4 >> 62)
  {
    v7 = v3;
    v5 = sub_182AD3EB8();
    v3 = v7;
    if (v5 >= v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= v3)
    {
LABEL_3:
      sub_181A49B30(v3, v5);
      swift_endAccess();
      os_unfair_lock_unlock(v1 + 4);
      return v8;
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}
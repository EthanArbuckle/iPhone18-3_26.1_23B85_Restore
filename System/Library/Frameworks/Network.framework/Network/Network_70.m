uint64_t sub_181EC957C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t __nw_framer_options_copy_object_value_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = nw_dictionary_copy_value(*a2, *(a1 + 40));
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return 1;
}

void nw_framer_set_wakeup_handler(nw_framer_t framer, nw_framer_wakeup_handler_t wakeup_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = wakeup_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
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
          v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
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
    v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null wakeup_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null wakeup_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null wakeup_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_wakeup_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null wakeup_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
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
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_wakeup_handler";
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
  isa = v3[52].isa;
  v3[52].isa = v6;

LABEL_5:
}

uint64_t nw_framer_protocol_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    if (v2)
    {
      if (*(v2 + 1))
      {
        v3 = (v2[608] >> 3) & 1;
LABEL_5:

        return v3;
      }

      v9 = v2;
      v14 = __nwlog_obj();
      *buf = 136446210;
      v31 = "nw_framer_protocol_waiting_for_output";
      v11 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v28 = 0;
      if (__nwlog_fault(v11, &type, &v28))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v15 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v31 = "nw_framer_protocol_waiting_for_output";
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v28 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v12 = __nwlog_obj();
          v23 = type;
          v24 = os_log_type_enabled(v12, type);
          if (backtrace_string)
          {
            if (v24)
            {
              *buf = 136446466;
              v31 = "nw_framer_protocol_waiting_for_output";
              v32 = 2082;
              v33 = backtrace_string;
              _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v11)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          if (v24)
          {
            *buf = 136446210;
            v31 = "nw_framer_protocol_waiting_for_output";
            _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v12 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v31 = "nw_framer_protocol_waiting_for_output";
            _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_58;
      }

LABEL_59:
      if (!v11)
      {
LABEL_61:
        v3 = 0;
        v2 = v9;
        goto LABEL_5;
      }

LABEL_60:
      free(v11);
      goto LABEL_61;
    }

    v9 = 0;
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_framer_protocol_waiting_for_output";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v31 = "nw_framer_protocol_waiting_for_output";
          v32 = 2082;
          v33 = v19;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_59;
      }

      if (v21)
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_framer_protocol_waiting_for_output";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v6, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v7, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v31 = "nw_framer_protocol_waiting_for_output";
          v32 = 2082;
          v33 = v16;
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_50;
      }

      if (v18)
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v7, v25, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_50:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_dictionary_copy(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_dictionary_copy";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v4, &type, &v19))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v22 = "nw_dictionary_copy";
      v7 = "%{public}s called with null dictionary";
      goto LABEL_16;
    }

    if (v19 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v22 = "nw_dictionary_copy";
      v7 = "%{public}s called with null dictionary, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v16 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v22 = "nw_dictionary_copy";
      v7 = "%{public}s called with null dictionary, no backtrace";
      goto LABEL_16;
    }

    if (v16)
    {
      *buf = 136446466;
      v22 = "nw_dictionary_copy";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null dictionary, dumping backtrace:%{public}s";
LABEL_40:
      _os_log_impl(&dword_181A37000, v5, v6, v17, buf, 0x16u);
    }

LABEL_41:
    free(backtrace_string);
    goto LABEL_18;
  }

  if (!*(a1 + 16))
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_dictionary_copy";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v4, &type, &v19))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v22 = "nw_dictionary_copy";
      v7 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_16;
    }

    if (v19 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v22 = "nw_dictionary_copy";
      v7 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v18 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v18)
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v22 = "nw_dictionary_copy";
      v7 = "%{public}s called with null dictionary->xpc_object, no backtrace";
      goto LABEL_16;
    }

    if (v18)
    {
      *buf = 136446466;
      v22 = "nw_dictionary_copy";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  objc_opt_class();
  v2 = _os_object_alloc();
  if (v2)
  {
    v3 = v2;
    *(v2 + 16) = xpc_copy(*(a1 + 16));
    xpc_dictionary_apply(*(a1 + 16), &__block_literal_global_50762);
    return v3;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v22 = "nw_dictionary_copy";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v4, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v22 = "nw_dictionary_copy";
        v7 = "%{public}s nw_dictionary_obj_alloc failed";
LABEL_16:
        v12 = v5;
        v13 = v6;
LABEL_17:
        _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(gLogObj, type);
      if (v8)
      {
        if (v11)
        {
          *buf = 136446466;
          v22 = "nw_dictionary_copy";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s nw_dictionary_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        goto LABEL_18;
      }

      if (v11)
      {
        *buf = 136446210;
        v22 = "nw_dictionary_copy";
        v7 = "%{public}s nw_dictionary_obj_alloc failed, no backtrace";
        v12 = v9;
        v13 = v10;
        goto LABEL_17;
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
        *buf = 136446210;
        v22 = "nw_dictionary_copy";
        v7 = "%{public}s nw_dictionary_obj_alloc failed, backtrace limit exceeded";
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

unint64_t sub_181ECAA50@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(result))
  {
LABEL_21:
    __break(1u);
    JUMPOUT(0x181ECAB48);
  }

  v2 = 0;
  switch(result)
  {
    case 1:
      goto LABEL_12;
    case 2:
      *a2 = 1;
      break;
    case 3:
      *a2 = 2;
      break;
    case 4:
      *a2 = 3;
      break;
    case 5:
      *a2 = 4;
      break;
    case 6:
      *a2 = 5;
      break;
    case 128:
      *a2 = 80;
      break;
    case 129:
      *a2 = 16;
      break;
    case 130:
      *a2 = 17;
      break;
    case 131:
      *a2 = 48;
      break;
    case 132:
      *a2 = 49;
      break;
    case 133:
      *a2 = 81;
      break;
    case 134:
      *a2 = 112;
      break;
    case 135:
      *a2 = 113;
      break;
    case 136:
      *a2 = -112;
      break;
    default:
      v2 = 24;
LABEL_12:
      *a2 = v2;
      break;
  }

  return result;
}

id nw_framer_protocol_get_parameters(nw_protocol *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1->handle;
    v2 = v1;
    if (v1)
    {
      if (v1[1])
      {
        nw_context_assert_queue(v1[46]);
        v3 = v2[42];
        if (v3 && (v4 = v3[3]) != 0 && (v5 = *(v4 + 112)) != 0)
        {
          v6 = v5();
        }

        else
        {
          v6 = v2[45];
        }

        v7 = v6;
LABEL_9:

        goto LABEL_10;
      }

      v17 = __nwlog_obj();
      *buf = 136446210;
      v33 = "nw_framer_protocol_get_parameters";
      v14 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (__nwlog_fault(v14, &type, &v30))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v18 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

LABEL_64:

          goto LABEL_65;
        }

        if (v30 != 1)
        {
          v15 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_64;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v26)
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_64;
        }

        if (v26)
        {
          *buf = 136446466;
          v33 = "nw_framer_protocol_get_parameters";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      *buf = 136446210;
      v33 = "nw_framer_protocol_get_parameters";
      v14 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (__nwlog_fault(v14, &type, &v30))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null framer", buf, 0xCu);
          }

          goto LABEL_64;
        }

        if (v30 != 1)
        {
          v15 = __nwlog_obj();
          v28 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v28, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_64;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v24)
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null framer, no backtrace", buf, 0xCu);
          }

          goto LABEL_64;
        }

        if (v24)
        {
          *buf = 136446466;
          v33 = "nw_framer_protocol_get_parameters";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_43:

        free(backtrace_string);
      }
    }

LABEL_65:
    if (v14)
    {
      free(v14);
    }

    v7 = 0;
    goto LABEL_9;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_framer_protocol_get_parameters";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v10, &type, &v30))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_protocol_get_parameters";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v11, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v33 = "nw_framer_protocol_get_parameters";
          v34 = 2082;
          v35 = v19;
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_56;
      }

      if (v21)
      {
        *buf = 136446210;
        v33 = "nw_framer_protocol_get_parameters";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_protocol_get_parameters";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_56:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t nw_path_is_defunct(NWConcrete_nw_path *a1, NWConcrete_nw_path_flow_registration *a2)
{
  v2 = nw_path_copy_flow_for_registration(a1, a2);
  v3 = v2;
  if (v2)
  {
    is_defunct = _nw_path_flow_is_defunct(v2);
  }

  else
  {
    is_defunct = 0;
  }

  return is_defunct;
}

uint64_t nw_protocol_ipv4_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_ipv4_updated_path";
    v29 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v29, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_ipv4_updated_path";
          v32 = "%{public}s called with null protocol";
LABEL_71:
          _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v34 = os_log_type_enabled(v30, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v40 = "nw_protocol_ipv4_updated_path";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_72;
        }

        if (v34)
        {
          *buf = 136446210;
          v40 = "nw_protocol_ipv4_updated_path";
          v32 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_71;
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_ipv4_updated_path";
          v32 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_72:
    if (v29)
    {
      free(v29);
    }

    return 0;
  }

  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *a1[1].flow_id;
  if (v5)
  {
LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
LABEL_18:
    if (a3)
    {
      LODWORD(v8[3].identifier) = nw_path_get_maximum_packet_size(a3);
      v14 = a3;
      mtu = _nw_path_get_mtu(v14);

      HIDWORD(v8[3].identifier) = mtu;
      result = 1;
      if (v6)
      {
        return result;
      }

      goto LABEL_33;
    }

    __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_ipv4_updated_path";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v9, &type, &v37))
    {
      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v40 = "nw_protocol_ipv4_updated_path";
      v12 = "%{public}s called with null path";
    }

    else if (v37 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v36 = os_log_type_enabled(v10, type);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446466;
          v40 = "nw_protocol_ipv4_updated_path";
          v41 = 2082;
          v42 = v35;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        goto LABEL_30;
      }

      if (!v36)
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v40 = "nw_protocol_ipv4_updated_path";
      v12 = "%{public}s called with null path, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v40 = "nw_protocol_ipv4_updated_path";
      v12 = "%{public}s called with null path, backtrace limit exceeded";
    }

LABEL_28:
    v21 = v10;
    v22 = v11;
LABEL_29:
    _os_log_impl(&dword_181A37000, v21, v22, v12, buf, 0xCu);
    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v40 = "nw_protocol_ipv4_updated_path";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v9, &type, &v37))
  {
    goto LABEL_30;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    *buf = 136446210;
    v40 = "nw_protocol_ipv4_updated_path";
    v12 = "%{public}s called with null ipv4";
    goto LABEL_28;
  }

  if (v37 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    *buf = 136446210;
    v40 = "nw_protocol_ipv4_updated_path";
    v12 = "%{public}s called with null ipv4, backtrace limit exceeded";
    goto LABEL_28;
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
      v40 = "nw_protocol_ipv4_updated_path";
      v41 = 2082;
      v42 = v17;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v17);
  }

  else if (v20)
  {
    *buf = 136446210;
    v40 = "nw_protocol_ipv4_updated_path";
    v12 = "%{public}s called with null ipv4, no backtrace";
    v21 = v18;
    v22 = v19;
    goto LABEL_29;
  }

LABEL_30:
  if (v9)
  {
    free(v9);
  }

  result = 0;
  if ((v6 & 1) == 0)
  {
LABEL_33:
    v23 = v3->handle;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v24 = v3[1].callbacks;
      if (v24)
      {
        v25 = (v24 - 1);
        v3[1].callbacks = v25;
        if (!v25)
        {
          v26 = result;
          v27 = *v3[1].flow_id;
          if (v27)
          {
            *v3[1].flow_id = 0;
            v27[2](v27);
            _Block_release(v27);
          }

          if (v3[1].flow_id[8])
          {
            v28 = *v3[1].flow_id;
            if (v28)
            {
              _Block_release(v28);
            }
          }

          free(v3);
          return v26;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_updated_path(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v26 = v6[11];
      if (v26)
      {
        v7 = 0;
        v6[11] = v26 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
LABEL_38:
          __nwlog_obj();
          *buf = 136446210;
          v61 = "__nw_protocol_updated_path";
          v27 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v58 = 0;
          if (__nwlog_fault(v27, &type, &v58))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v28 = __nwlog_obj();
              v29 = type;
              if (os_log_type_enabled(v28, type))
              {
                *buf = 136446210;
                v61 = "__nw_protocol_updated_path";
                v30 = "%{public}s called with null other_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
              }
            }

            else if (v58 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v28 = __nwlog_obj();
              v29 = type;
              v50 = os_log_type_enabled(v28, type);
              if (backtrace_string)
              {
                if (v50)
                {
                  *buf = 136446466;
                  v61 = "__nw_protocol_updated_path";
                  v62 = 2082;
                  v63 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v50)
              {
                *buf = 136446210;
                v61 = "__nw_protocol_updated_path";
                v30 = "%{public}s called with null other_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v28 = __nwlog_obj();
              v29 = type;
              if (os_log_type_enabled(v28, type))
              {
                *buf = 136446210;
                v61 = "__nw_protocol_updated_path";
                v30 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v27)
          {
            free(v27);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v31 = *(v9 + 88);
      if (v31)
      {
        v10 = 0;
        *(v9 + 88) = v31 + 1;
        if (!a3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_45:
        __nwlog_obj();
        *buf = 136446210;
        v61 = "__nw_protocol_updated_path";
        v32 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v58 = 0;
        if (!__nwlog_fault(v32, &type, &v58))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v33 = __nwlog_obj();
          v34 = type;
          if (!os_log_type_enabled(v33, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v61 = "__nw_protocol_updated_path";
          v35 = "%{public}s called with null path";
          goto LABEL_117;
        }

        if (v58 != 1)
        {
          v33 = __nwlog_obj();
          v34 = type;
          if (!os_log_type_enabled(v33, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v61 = "__nw_protocol_updated_path";
          v35 = "%{public}s called with null path, backtrace limit exceeded";
          goto LABEL_117;
        }

        v51 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v52 = os_log_type_enabled(v33, type);
        if (v51)
        {
          if (v52)
          {
            *buf = 136446466;
            v61 = "__nw_protocol_updated_path";
            v62 = 2082;
            v63 = v51;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v51);
          if (!v32)
          {
LABEL_121:
            result = 0;
            if (v10)
            {
LABEL_22:
              if ((v7 & 1) == 0)
              {
                v20 = v4[5];
                if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v4 = v4[8]) != 0)
                {
                  v21 = v4[11];
                  if (v21)
                  {
                    v22 = v21 - 1;
                    v4[11] = v22;
                    if (!v22)
                    {
                      v23 = result;
                      v24 = v4[8];
                      if (v24)
                      {
                        v4[8] = 0;
                        v24[2](v24);
                        _Block_release(v24);
                      }

                      if (v4[9])
                      {
                        v25 = v4[8];
                        if (v25)
                        {
                          _Block_release(v25);
                        }
                      }

                      free(v4);
                      return v23;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v14 = *(v3 + 40);
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v15 = *(v3 + 88);
              if (v15)
              {
                v16 = v15 - 1;
                *(v3 + 88) = v16;
                if (!v16)
                {
                  v17 = result;
                  v18 = *(v3 + 64);
                  if (v18)
                  {
                    *(v3 + 64) = 0;
                    v18[2](v18);
                    _Block_release(v18);
                  }

                  if (*(v3 + 72))
                  {
                    v19 = *(v3 + 64);
                    if (v19)
                    {
                      _Block_release(v19);
                    }
                  }

                  free(v3);
                  result = v17;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v32);
          goto LABEL_121;
        }

        if (v52)
        {
          *buf = 136446210;
          v61 = "__nw_protocol_updated_path";
          v35 = "%{public}s called with null path, no backtrace";
LABEL_117:
          v55 = v33;
          v56 = v34;
          v57 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 168);
      if (v12)
      {
        result = v12(a1, a2);
        if (v10)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v36 = v4[2];
    *buf = 136446722;
    v61 = "__nw_protocol_updated_path";
    if (!v36)
    {
      v36 = "invalid";
    }

    v62 = 2082;
    v63 = v36;
    v64 = 2048;
    v65 = v4;
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v32, &type, &v58))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_119;
        }

        v39 = v4[2];
        if (!v39)
        {
          v39 = "invalid";
        }

        *buf = 136446722;
        v61 = "__nw_protocol_updated_path";
        v62 = 2082;
        v63 = v39;
        v64 = 2048;
        v65 = v4;
        v35 = "%{public}s protocol %{public}s (%p) has invalid updated_path callback";
      }

      else if (v58 == 1)
      {
        v44 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type;
        v45 = os_log_type_enabled(v37, type);
        if (v44)
        {
          if (v45)
          {
            v46 = v4[2];
            if (!v46)
            {
              v46 = "invalid";
            }

            *buf = 136446978;
            v61 = "__nw_protocol_updated_path";
            v62 = 2082;
            v63 = v46;
            v64 = 2048;
            v65 = v4;
            v66 = 2082;
            v67 = v44;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v44);
          goto LABEL_119;
        }

        if (!v45)
        {
          goto LABEL_119;
        }

        v54 = v4[2];
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446722;
        v61 = "__nw_protocol_updated_path";
        v62 = 2082;
        v63 = v54;
        v64 = 2048;
        v65 = v4;
        v35 = "%{public}s protocol %{public}s (%p) has invalid updated_path callback, no backtrace";
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_119;
        }

        v53 = v4[2];
        if (!v53)
        {
          v53 = "invalid";
        }

        *buf = 136446722;
        v61 = "__nw_protocol_updated_path";
        v62 = 2082;
        v63 = v53;
        v64 = 2048;
        v65 = v4;
        v35 = "%{public}s protocol %{public}s (%p) has invalid updated_path callback, backtrace limit exceeded";
      }

      v55 = v37;
      v56 = v38;
      v57 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v55, v56, v35, buf, v57);
    }

LABEL_119:
    if (!v32)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  __nwlog_obj();
  *buf = 136446210;
  v61 = "__nw_protocol_updated_path";
  v40 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v58 = 0;
  if (__nwlog_fault(v40, &type, &v58))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v61 = "__nw_protocol_updated_path";
        v43 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v48 = os_log_type_enabled(v41, type);
      if (v47)
      {
        if (v48)
        {
          *buf = 136446466;
          v61 = "__nw_protocol_updated_path";
          v62 = 2082;
          v63 = v47;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_106;
      }

      if (v48)
      {
        *buf = 136446210;
        v61 = "__nw_protocol_updated_path";
        v43 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v61 = "__nw_protocol_updated_path";
        v43 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v40)
  {
    free(v40);
  }

  return 0;
}

uint64_t nw_protocol_definition_get_framer_create(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1[9];
  if (v2)
  {
    v3 = *(v2 + 72);
    goto LABEL_3;
  }

  v5 = v1;
  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_definition_get_framer_create";
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
        v17 = "nw_protocol_definition_get_framer_create";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null definition->common_state", buf, 0xCu);
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
          v17 = "nw_protocol_definition_get_framer_create";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_protocol_definition_get_framer_create";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_definition_get_framer_create";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v1 = v5;
LABEL_3:

  return v3;
}

uint64_t nw_framer_protocol_supports_external_data(nw_protocol *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1->handle;
    if (v1)
    {
      if (*(v1 + 1))
      {
        v2 = v1[606] & 1;
LABEL_5:

        return v2;
      }

      v8 = v1;
      v13 = __nwlog_obj();
      *buf = 136446210;
      v30 = "nw_framer_protocol_supports_external_data";
      v10 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v27 = 0;
      if (__nwlog_fault(v10, &type, &v27))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v14 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v30 = "nw_framer_protocol_supports_external_data";
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v27 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v22 = type;
          v23 = os_log_type_enabled(v11, type);
          if (backtrace_string)
          {
            if (v23)
            {
              *buf = 136446466;
              v30 = "nw_framer_protocol_supports_external_data";
              v31 = 2082;
              v32 = backtrace_string;
              _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v10)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          if (v23)
          {
            *buf = 136446210;
            v30 = "nw_framer_protocol_supports_external_data";
            _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v11 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v30 = "nw_framer_protocol_supports_external_data";
            _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_58;
      }

LABEL_59:
      if (!v10)
      {
LABEL_61:
        v2 = 0;
        v1 = v8;
        goto LABEL_5;
      }

LABEL_60:
      free(v10);
      goto LABEL_61;
    }

    v8 = 0;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_protocol_supports_external_data";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v11, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v30 = "nw_framer_protocol_supports_external_data";
          v31 = 2082;
          v32 = v18;
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_59;
      }

      if (v20)
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_framer_protocol_supports_external_data";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v5, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v15 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          v30 = "nw_framer_protocol_supports_external_data";
          v31 = 2082;
          v32 = v15;
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_50;
      }

      if (v17)
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v6, v24, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_50:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_framer_protocol_connect(nw_protocol *a1, nw_protocol *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1->handle;
    v4 = v3;
    if (v3)
    {
      if (v3[1])
      {
        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            if (callbacks->connect)
            {
              v7 = nw_protocol_connect(output_handler, a1);
LABEL_8:

              return v7;
            }
          }
        }

        v9 = v4[45];
        if (v9 && _nw_parameters_get_custom_protocols_only(v9))
        {
          nw_framer_protocol_connected(a1, 0);
          v7 = 1;
          goto LABEL_8;
        }

LABEL_66:
        v7 = 0;
        goto LABEL_8;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_connect";
      v15 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v15, &type, &v31))
      {
LABEL_64:
        if (v15)
        {
          free(v15);
        }

        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

LABEL_63:

        goto LABEL_64;
      }

      if (v31 != 1)
      {
        v16 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_63;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_63;
      }

      if (v27)
      {
        *buf = 136446466;
        v34 = "nw_framer_protocol_connect";
        v35 = 2082;
        v36 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_connect";
      v15 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v15, &type, &v31))
      {
        goto LABEL_64;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_63;
      }

      if (v31 != 1)
      {
        v16 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v29, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_63;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_63;
      }

      if (v25)
      {
        *buf = 136446466;
        v34 = "nw_framer_protocol_connect";
        v35 = 2082;
        v36 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_64;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_framer_protocol_connect";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v11, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_connect";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v12, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_connect";
          v35 = 2082;
          v36 = v20;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_55;
      }

      if (v22)
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_connect";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_connect";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_55:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

void nw_framer_protocol_connected(nw_protocol *a1, nw_protocol *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    v5 = v4;
    if (v4)
    {
      if (v4[1])
      {
        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          callbacks = default_input_handler->callbacks;
          if (callbacks)
          {
            connected = callbacks->connected;
            if (connected)
            {
              connected();
            }
          }
        }

        if (a1->output_handler == a2)
        {
          v9 = *(v5 + 606);
          if ((v9 & 8) != 0)
          {
            if ((*(v5 + 606) & 0x10) != 0)
            {
              v12 = a1->default_input_handler;
              if (v12)
              {
                v13 = v12->callbacks;
                if (v13)
                {
                  v14 = v13->connected;
                  if (v14)
                  {
                    v14();
                  }
                }
              }
            }
          }

          else
          {
            *type = 0;
            if (a2)
            {
              v10 = a2->callbacks;
              if (v10)
              {
                v10 = v10->get_message_properties;
                if (v10)
                {
                  (v10)(a2, a1, type);
                  LOBYTE(v10) = type[4];
                  v9 = *(v5 + 606);
                }
              }
            }

            else
            {
              LOBYTE(v10) = 0;
            }

            *(v5 + 606) = (2 * (v10 & 1)) | v9 & 0xFD;
            if ((v10 & 1) != 0 && gLogDatapath == 1)
            {
              v37 = __nwlog_obj();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v41 = "nw_framer_protocol_connected";
                v42 = 2080;
                v43 = v5 + 609;
                _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %s Output frames will be treated as separate messages", buf, 0x16u);
              }
            }

            v11 = v5[49];
            if (v11)
            {
              *(v5 + 606) |= 0xCu;
              if ((*(v11 + 16))(v11, v5) == 1)
              {
                nw_framer_mark_ready(v5);
              }

              *(v5 + 606) &= ~4u;
              nw_framer_input_loop(v5);
            }

            else
            {
              nw_framer_mark_failed_with_error(v5, 22);
            }
          }
        }

        goto LABEL_9;
      }

      v23 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_framer_protocol_connected";
      v20 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v39 = 0;
      if (__nwlog_fault(v20, type, &v39))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v21 = __nwlog_obj();
          v24 = type[0];
          if (os_log_type_enabled(v21, type[0]))
          {
            *buf = 136446210;
            v41 = "nw_framer_protocol_connected";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v39 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v21 = __nwlog_obj();
          v32 = type[0];
          v33 = os_log_type_enabled(v21, type[0]);
          if (backtrace_string)
          {
            if (v33)
            {
              *buf = 136446466;
              v41 = "nw_framer_protocol_connected";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v20)
            {
              goto LABEL_9;
            }

            goto LABEL_81;
          }

          if (v33)
          {
            *buf = 136446210;
            v41 = "nw_framer_protocol_connected";
            _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v21 = __nwlog_obj();
          v36 = type[0];
          if (os_log_type_enabled(v21, type[0]))
          {
            *buf = 136446210;
            v41 = "nw_framer_protocol_connected";
            _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_79;
      }

LABEL_80:
      if (!v20)
      {
LABEL_9:

        return;
      }

LABEL_81:
      free(v20);
      goto LABEL_9;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_framer_protocol_connected";
    v20 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v20, type, &v39))
    {
      goto LABEL_80;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v29 = type[0];
      v30 = os_log_type_enabled(v21, type[0]);
      if (v28)
      {
        if (v30)
        {
          *buf = 136446466;
          v41 = "nw_framer_protocol_connected";
          v42 = 2082;
          v43 = v28;
          _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_80;
      }

      if (v30)
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v21, v35, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_79:

    goto LABEL_80;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_framer_protocol_connected";
  v16 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v16, type, &v39))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v25 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v26 = type[0];
      v27 = os_log_type_enabled(v17, type[0]);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v41 = "nw_framer_protocol_connected";
          v42 = 2082;
          v43 = v25;
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_72;
      }

      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v34 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v17, v34, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_72:
  if (v16)
  {
    free(v16);
  }
}

void nw_framer_set_cleanup_handler(nw_framer_t framer, nw_framer_cleanup_handler_t cleanup_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = cleanup_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
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
          v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
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
    v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null cleanup_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null cleanup_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null cleanup_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_cleanup_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null cleanup_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
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
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_cleanup_handler";
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
  isa = v3[54].isa;
  v3[54].isa = v6;

LABEL_5:
}

uint64_t nw_endpoint_fillout_v6_address(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = _nw_endpoint_get_type(v5);

    if (v6 == 1)
    {
      v7 = _nw_endpoint_fillout_v6_address(v5, a2);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_fillout_v6_address";
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)", buf, 0xCu);
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), backtrace limit exceeded", buf, 0xCu);
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_fillout_v6_address";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_fillout_v6_address";
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null endpoint", buf, 0xCu);
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_fillout_v6_address";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_ipv6_connected(nw_protocol *a1, nw_protocol *a2)
{
  v143 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
        *&buf[4] = "nw_protocol_ipv6_connected";
        default_input_handler = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v132 = 0;
        if (!__nwlog_fault(default_input_handler, &type, &v132))
        {
          goto LABEL_43;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v11 = "%{public}s called with null ipv6";
LABEL_41:
          v25 = v9;
          v26 = v10;
          goto LABEL_42;
        }

        if (v132 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v11 = "%{public}s called with null ipv6, backtrace limit exceeded";
          goto LABEL_41;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(gLogObj, type);
        if (!backtrace_string)
        {
          if (!v24)
          {
LABEL_43:
            if (!default_input_handler)
            {
              goto LABEL_168;
            }

            goto LABEL_44;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v11 = "%{public}s called with null ipv6, no backtrace";
          v25 = v22;
          v26 = v23;
LABEL_42:
          _os_log_impl(&dword_181A37000, v25, v26, v11, buf, 0xCu);
          goto LABEL_43;
        }

        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v135 = 2082;
          v136 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!default_input_handler)
        {
LABEL_168:
          if ((v5 & 1) == 0)
          {
            v92 = v2->handle;
            if (v92 == &nw_protocol_ref_counted_handle || v92 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
            {
              v93 = v2[1].callbacks;
              if (v93)
              {
                v94 = (v93 - 1);
                v2[1].callbacks = v94;
                if (!v94)
                {
                  v95 = *v2[1].flow_id;
                  if (v95)
                  {
                    *v2[1].flow_id = 0;
                    v95[2](v95);
                    _Block_release(v95);
                  }

                  if (v2[1].flow_id[8])
                  {
                    v96 = *v2[1].flow_id;
                    if (v96)
                    {
                      _Block_release(v96);
                    }
                  }

                  goto LABEL_179;
                }
              }
            }
          }

          return;
        }

LABEL_44:
        free(default_input_handler);
        goto LABEL_168;
      }

      v7 = *a1[1].flow_id;
    }

    if ((HIBYTE(v7[3].output_handler_context) & 1) == 0 && gLogDatapath == 1)
    {
      v102 = a2;
      v103 = __nwlog_obj();
      v104 = os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG);
      a2 = v102;
      if (v104)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_ipv6_connected";
        v135 = 2082;
        v136 = v7 + 4;
        v137 = 2080;
        v138 = " ";
        v139 = 2048;
        p_output_handler = &v7[1].output_handler;
        _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Got a connected event from the lower layer", buf, 0x2Au);
        a2 = v102;
      }
    }

    default_input_handler = v2->default_input_handler;
    if (v2->output_handler != a2)
    {
      if (!default_input_handler)
      {
        goto LABEL_168;
      }

      v12 = *(default_input_handler + 24);
      if (!v12)
      {
        goto LABEL_168;
      }

      if (!a2)
      {
        goto LABEL_168;
      }

      v13 = *(v12 + 40);
      if (!v13)
      {
        goto LABEL_168;
      }

      v14 = *(default_input_handler + 40);
      v15 = v2->default_input_handler;
      if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(default_input_handler + 64)) != 0)
      {
        v27 = v15[1].callbacks;
        v16 = 0;
        if (v27)
        {
          v15[1].callbacks = (&v27->add_input_handler + 1);
        }
      }

      else
      {
        v16 = 1;
      }

      v28 = a2->handle;
      v29 = a2;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = *a2[1].flow_id) != 0)
      {
        v30 = v29[1].callbacks;
        if (v30)
        {
          v29[1].callbacks = (&v30->add_input_handler + 1);
        }

        v31 = a2;
        v13(default_input_handler);
        v32 = v31;
        v33 = v31->handle;
        if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v32 = *v31[1].flow_id) != 0)
        {
          v34 = v32[1].callbacks;
          if (v34)
          {
            v35 = (v34 - 1);
            v32[1].callbacks = v35;
            if (!v35)
            {
              v36 = *v32[1].flow_id;
              if (v36)
              {
                *v32[1].flow_id = 0;
                v37 = v32;
                v36[2](v36);
                _Block_release(v36);
                v32 = v37;
              }

              if (v32[1].flow_id[8])
              {
                v38 = *v32[1].flow_id;
                if (v38)
                {
                  v39 = v32;
                  _Block_release(v38);
                  v32 = v39;
                }
              }

              free(v32);
            }
          }
        }

        if (v16)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v13(default_input_handler);
        if (v16)
        {
          goto LABEL_168;
        }
      }

LABEL_163:
      v89 = *(default_input_handler + 40);
      if (v89 != &nw_protocol_ref_counted_handle)
      {
        if (v89 != &nw_protocol_ref_counted_additional_handle)
        {
          goto LABEL_168;
        }

        default_input_handler = *(default_input_handler + 64);
        if (!default_input_handler)
        {
          goto LABEL_168;
        }
      }

      v90 = *(default_input_handler + 88);
      if (!v90)
      {
        goto LABEL_168;
      }

      v91 = v90 - 1;
      *(default_input_handler + 88) = v91;
      if (v91)
      {
        goto LABEL_168;
      }

      v97 = *(default_input_handler + 64);
      if (v97)
      {
        *(default_input_handler + 64) = 0;
        v97[2](v97);
        _Block_release(v97);
      }

      if (*(default_input_handler + 72))
      {
        v98 = *(default_input_handler + 64);
        if (v98)
        {
          _Block_release(v98);
        }
      }

      goto LABEL_44;
    }

    if (default_input_handler)
    {
      v17 = *(default_input_handler + 40);
      v18 = v2->default_input_handler;
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *(default_input_handler + 64)) != 0)
      {
        v40 = v18[1].callbacks;
        if (v40)
        {
          v19 = 0;
          v18[1].callbacks = (&v40->add_input_handler + 1);
          v20 = *(default_input_handler + 24);
          if (!v20)
          {
            goto LABEL_198;
          }
        }

        else
        {
          v19 = 0;
          v20 = *(default_input_handler + 24);
          if (!v20)
          {
            goto LABEL_198;
          }
        }
      }

      else
      {
        v19 = 1;
        v20 = *(default_input_handler + 24);
        if (!v20)
        {
          goto LABEL_198;
        }
      }

      v41 = *(v20 + 112);
      if (v41)
      {
        v42 = v41(default_input_handler);
        if (v19)
        {
          goto LABEL_86;
        }

        goto LABEL_75;
      }

LABEL_198:
      __nwlog_obj();
      v107 = *(default_input_handler + 16);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_parameters";
      if (!v107)
      {
        v107 = "invalid";
      }

      v135 = 2082;
      v136 = v107;
      v137 = 2048;
      v138 = default_input_handler;
      type = OS_LOG_TYPE_ERROR;
      v132 = 0;
      v131 = _os_log_send_and_compose_impl();
      if (__nwlog_fault(v131, &type, &v132))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v108 = __nwlog_obj();
          v109 = type;
          log = v108;
          if (!os_log_type_enabled(v108, type))
          {
            goto LABEL_231;
          }

          v110 = *(default_input_handler + 16);
          if (!v110)
          {
            v110 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v110;
          v137 = 2048;
          v138 = default_input_handler;
          v111 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_230:
          _os_log_impl(&dword_181A37000, log, v109, v111, buf, 0x20u);
          goto LABEL_231;
        }

        if (v132 != 1)
        {
          v116 = __nwlog_obj();
          v109 = type;
          log = v116;
          if (!os_log_type_enabled(v116, type))
          {
            goto LABEL_231;
          }

          v117 = *(default_input_handler + 16);
          if (!v117)
          {
            v117 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v117;
          v137 = 2048;
          v138 = default_input_handler;
          v111 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
          goto LABEL_230;
        }

        v112 = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v109 = type;
        log = v113;
        v114 = os_log_type_enabled(v113, type);
        if (!v112)
        {
          if (!v114)
          {
            goto LABEL_231;
          }

          v119 = *(default_input_handler + 16);
          if (!v119)
          {
            v119 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v119;
          v137 = 2048;
          v138 = default_input_handler;
          v111 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
          goto LABEL_230;
        }

        if (v114)
        {
          v115 = *(default_input_handler + 16);
          if (!v115)
          {
            v115 = "invalid";
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_get_parameters";
          v135 = 2082;
          v136 = v115;
          v137 = 2048;
          v138 = default_input_handler;
          v139 = 2082;
          p_output_handler = v112;
          _os_log_impl(&dword_181A37000, log, v109, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v112);
      }

LABEL_231:
      if (v131)
      {
        free(v131);
      }

      v42 = 0;
      if (v19)
      {
        goto LABEL_86;
      }

LABEL_75:
      v43 = *(default_input_handler + 40);
      if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *(default_input_handler + 64)) != 0)
      {
        v44 = *(default_input_handler + 88);
        if (v44)
        {
          v45 = v44 - 1;
          *(default_input_handler + 88) = v45;
          if (!v45)
          {
            v46 = v42;
            v47 = *(default_input_handler + 64);
            if (v47)
            {
              *(default_input_handler + 64) = 0;
              v47[2](v47);
              _Block_release(v47);
            }

            if (*(default_input_handler + 72))
            {
              v48 = *(default_input_handler + 64);
              if (v48)
              {
                _Block_release(v48);
              }
            }

            free(default_input_handler);
            v42 = v46;
          }
        }
      }

      goto LABEL_86;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_parameters";
    v120 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v132 = 0;
    if (__nwlog_fault(v120, &type, &v132))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v121 = __nwlog_obj();
        v122 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v123 = "%{public}s called with null protocol";
LABEL_246:
          v128 = v121;
          v129 = v122;
LABEL_247:
          _os_log_impl(&dword_181A37000, v128, v129, v123, buf, 0xCu);
        }
      }

      else if (v132 == 1)
      {
        v124 = __nw_create_backtrace_string();
        v125 = __nwlog_obj();
        v126 = type;
        v127 = os_log_type_enabled(v125, type);
        if (v124)
        {
          if (v127)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_parameters";
            v135 = 2082;
            v136 = v124;
            _os_log_impl(&dword_181A37000, v125, v126, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v124);
          goto LABEL_248;
        }

        if (v127)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v123 = "%{public}s called with null protocol, no backtrace";
          v128 = v125;
          v129 = v126;
          goto LABEL_247;
        }
      }

      else
      {
        v121 = __nwlog_obj();
        v122 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v123 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_246;
        }
      }
    }

LABEL_248:
    if (v120)
    {
      free(v120);
    }

    v42 = 0;
LABEL_86:
    v49 = nw_parameters_copy_context(v42);
    v50 = nw_path_copy_flow_registration(v49, v2);
    if (v50)
    {
      v51 = v50;
      stats_region = nw_path_flow_registration_get_stats_region(v50, v7->identifier->name);
      v7[2].identifier = stats_region;
      if (!stats_region)
      {
        if ((HIBYTE(v7[3].output_handler_context) & 1) == 0 && gLogDatapath == 1)
        {
          v118 = __nwlog_obj();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv6_connected";
            v135 = 2082;
            v136 = v7 + 4;
            v137 = 2080;
            v138 = " ";
            v139 = 2048;
            p_output_handler = &v7[1].output_handler;
            v141 = 2048;
            v142 = &g_ip6_stats;
            _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p ipv6->ip6_stats is NULL setting to global %p", buf, 0x34u);
          }
        }

        v7[2].identifier = &g_ip6_stats;
      }

      os_release(v51);
    }

    if (v49)
    {
      os_release(v49);
    }

    *buf = 0;
    output_handler = v2->output_handler;
    if (output_handler)
    {
      v54 = output_handler->callbacks;
      if (v54)
      {
        get_message_properties = v54->get_message_properties;
        if (get_message_properties)
        {
          v56 = output_handler->handle;
          v57 = v2->output_handler;
          if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v57 = *output_handler[1].flow_id) != 0)
          {
            v59 = v57[1].callbacks;
            v58 = 0;
            if (v59)
            {
              v57[1].callbacks = (&v59->add_input_handler + 1);
            }
          }

          else
          {
            v58 = 1;
          }

          v60 = v2->handle;
          v61 = v2;
          if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v61 = *v2[1].flow_id) != 0)
          {
            v62 = v61[1].callbacks;
            if (v62)
            {
              v61[1].callbacks = (&v62->add_input_handler + 1);
            }

            get_message_properties(output_handler, v2, buf);
            v63 = v2->handle;
            v64 = v2;
            if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v64 = *v2[1].flow_id) != 0)
            {
              v65 = v64[1].callbacks;
              if (v65)
              {
                v66 = (v65 - 1);
                v64[1].callbacks = v66;
                if (!v66)
                {
                  v67 = *v64[1].flow_id;
                  if (v67)
                  {
                    *v64[1].flow_id = 0;
                    v67[2](v67);
                    _Block_release(v67);
                  }

                  if (v64[1].flow_id[8])
                  {
                    v68 = *v64[1].flow_id;
                    if (v68)
                    {
                      _Block_release(v68);
                    }
                  }

                  free(v64);
                }
              }
            }
          }

          else
          {
            get_message_properties(output_handler, v2, buf);
          }

          if ((v58 & 1) == 0)
          {
            v69 = output_handler->handle;
            if (v69 == &nw_protocol_ref_counted_handle || v69 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
            {
              v70 = output_handler[1].callbacks;
              if (v70)
              {
                v71 = (v70 - 1);
                output_handler[1].callbacks = v71;
                if (!v71)
                {
                  v72 = *output_handler[1].flow_id;
                  if (v72)
                  {
                    *output_handler[1].flow_id = 0;
                    v72[2](v72);
                    _Block_release(v72);
                  }

                  if (output_handler[1].flow_id[8])
                  {
                    v73 = *output_handler[1].flow_id;
                    if (v73)
                    {
                      _Block_release(v73);
                    }
                  }

                  free(output_handler);
                }
              }
            }
          }

          if ((*buf - 1) <= 0xFFFFFFFD)
          {
            HIDWORD(v7[3].handle) = *buf;
          }
        }
      }
    }

    default_input_handler = v2->default_input_handler;
    if (!default_input_handler)
    {
      goto LABEL_168;
    }

    v74 = *(default_input_handler + 24);
    if (!v74)
    {
      goto LABEL_168;
    }

    v75 = *(v74 + 40);
    if (!v75)
    {
      goto LABEL_168;
    }

    v76 = *(default_input_handler + 40);
    v77 = v2->default_input_handler;
    if (v76 == &nw_protocol_ref_counted_handle || v76 == &nw_protocol_ref_counted_additional_handle && (v77 = *(default_input_handler + 64)) != 0)
    {
      v79 = v77[1].callbacks;
      v78 = 0;
      if (v79)
      {
        v77[1].callbacks = (&v79->add_input_handler + 1);
      }
    }

    else
    {
      v78 = 1;
    }

    v80 = v2->handle;
    v81 = v2;
    if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *v2[1].flow_id) != 0)
    {
      v82 = v81[1].callbacks;
      if (v82)
      {
        v81[1].callbacks = (&v82->add_input_handler + 1);
      }

      v75(default_input_handler, v2);
      v83 = v2->handle;
      v84 = v2;
      if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v84 = *v2[1].flow_id) != 0)
      {
        v85 = v84[1].callbacks;
        if (v85)
        {
          v86 = (v85 - 1);
          v84[1].callbacks = v86;
          if (!v86)
          {
            v87 = *v84[1].flow_id;
            if (v87)
            {
              *v84[1].flow_id = 0;
              v87[2](v87);
              _Block_release(v87);
            }

            if (v84[1].flow_id[8])
            {
              v88 = *v84[1].flow_id;
              if (v88)
              {
                _Block_release(v88);
              }
            }

            free(v84);
          }
        }
      }
    }

    else
    {
      v75(default_input_handler, v2);
    }

    if (v78)
    {
      goto LABEL_168;
    }

    goto LABEL_163;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ipv6_connected";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v132 = 0;
  if (__nwlog_fault(v2, &type, &v132))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_connected";
      v101 = "%{public}s called with null protocol";
    }

    else if (v132 == 1)
    {
      v105 = __nw_create_backtrace_string();
      v99 = __nwlog_obj();
      v100 = type;
      v106 = os_log_type_enabled(v99, type);
      if (v105)
      {
        if (v106)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v135 = 2082;
          v136 = v105;
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v105);
        if (v2)
        {
          goto LABEL_179;
        }

        return;
      }

      if (!v106)
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_connected";
      v101 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_connected";
      v101 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v99, v100, v101, buf, 0xCu);
  }

LABEL_222:
  if (v2)
  {
LABEL_179:
    free(v2);
  }
}

uint64_t nw_protocol_ipv6_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v215 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v127 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v209 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v127, type, &v209))
    {
      if (type[0] == 17)
      {
        v128 = __nwlog_obj();
        v129 = type[0];
        if (os_log_type_enabled(v128, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          v130 = "%{public}s called with null protocol";
LABEL_417:
          _os_log_impl(&dword_181A37000, v128, v129, v130, buf, 0xCu);
        }
      }

      else if (v209 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v128 = __nwlog_obj();
        v129 = type[0];
        v154 = os_log_type_enabled(v128, type[0]);
        if (backtrace_string)
        {
          if (v154)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ipv6_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v128, v129, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_418;
        }

        if (v154)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          v130 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_417;
        }
      }

      else
      {
        v128 = __nwlog_obj();
        v129 = type[0];
        if (os_log_type_enabled(v128, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          v130 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_417;
        }
      }
    }

LABEL_418:
    if (v127)
    {
      free(v127);
    }

    return 0;
  }

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
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *a1[1].flow_id;
  if (v5)
  {
LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
LABEL_18:
    if (a1->default_input_handler)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_add_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type[0] = 16;
      v209 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v9, type, &v209))
      {
        goto LABEL_62;
      }

      if (type[0] == 17)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Default input handler already exists";
        goto LABEL_59;
      }

      if (v209 == OS_LOG_TYPE_INFO)
      {
        v166 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type[0];
        v167 = os_log_type_enabled(v10, type[0]);
        if (v166)
        {
          if (!v167)
          {
            goto LABEL_410;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v166;
          v168 = "%{public}s Default input handler already exists, dumping backtrace:%{public}s";
LABEL_340:
          v170 = buf;
LABEL_409:
          _os_log_impl(&dword_181A37000, v10, v11, v168, v170, 0x16u);
          goto LABEL_410;
        }

        if (!v167)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Default input handler already exists, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Default input handler already exists, backtrace limit exceeded";
      }

LABEL_59:
      v35 = buf;
LABEL_60:
      v36 = v10;
      v37 = v11;
LABEL_61:
      _os_log_impl(&dword_181A37000, v36, v37, v12, v35, 0xCu);
      goto LABEL_62;
    }

    if (a2)
    {
      if (a2->identifier)
      {
        identifier = a2->identifier;
      }

      else
      {
        identifier = "invalid";
      }

      if (strncmp(identifier->name, "quic", 4uLL))
      {
        nw_protocol_release(0);
        v3->default_input_handler = v2;
        v14 = v2->handle;
        v15 = v2;
        if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *v2[1].flow_id) != 0)
        {
          v16 = v15[1].callbacks;
          if (v16)
          {
            v15[1].callbacks = (&v16->add_input_handler + 1);
          }
        }

        nw_protocol_set_flow_id_from_protocol(v8, v2);
        if (v2->output_handler)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ipv6_add_input_handler";
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
          }
        }

        else if (v8)
        {
          v2->output_handler = v8;
          v26 = v8->handle;
          v27 = v8;
          if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v27 = *v8[1].flow_id) != 0)
          {
            v28 = v27[1].callbacks;
            if (v28)
            {
              v27[1].callbacks = (&v28->add_input_handler + 1);
            }
          }
        }

        v29 = v2->handle;
        v30 = v2;
        if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v30 = *v2[1].flow_id) != 0)
        {
          v39 = v30[1].callbacks;
          if (v39)
          {
            v31 = 0;
            v30[1].callbacks = (&v39->add_input_handler + 1);
            v32 = v2->callbacks;
            if (!v32)
            {
              goto LABEL_263;
            }
          }

          else
          {
            v31 = 0;
            v32 = v2->callbacks;
            if (!v32)
            {
              goto LABEL_263;
            }
          }
        }

        else
        {
          v31 = 1;
          v32 = v2->callbacks;
          if (!v32)
          {
            goto LABEL_263;
          }
        }

        get_parameters = v32->get_parameters;
        if (get_parameters)
        {
          v41 = get_parameters(v2);
          if (v31)
          {
            goto LABEL_84;
          }

          goto LABEL_73;
        }

LABEL_263:
        __nwlog_obj();
        name = v2->identifier->name;
        if (!name)
        {
          name = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_parameters";
        *&buf[12] = 2082;
        *&buf[14] = name;
        *&buf[22] = 2048;
        v212 = v2;
        v132 = _os_log_send_and_compose_impl();
        type[0] = 16;
        v209 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v132, type, &v209))
        {
          if (type[0] == 17)
          {
            v133 = __nwlog_obj();
            v134 = type[0];
            if (!os_log_type_enabled(v133, type[0]))
            {
              goto LABEL_363;
            }

            v135 = v2->identifier->name;
            if (!v135)
            {
              v135 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v135;
            *&buf[22] = 2048;
            v212 = v2;
            v136 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_361:
            v174 = v133;
LABEL_362:
            _os_log_impl(&dword_181A37000, v174, v134, v136, buf, 0x20u);
            goto LABEL_363;
          }

          if (v209 != OS_LOG_TYPE_INFO)
          {
            v133 = __nwlog_obj();
            v134 = type[0];
            if (!os_log_type_enabled(v133, type[0]))
            {
              goto LABEL_363;
            }

            v173 = v2->identifier->name;
            if (!v173)
            {
              v173 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v173;
            *&buf[22] = 2048;
            v212 = v2;
            v136 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
            goto LABEL_361;
          }

          v155 = __nw_create_backtrace_string();
          v156 = __nwlog_obj();
          v134 = type[0];
          v204 = v156;
          v157 = os_log_type_enabled(v156, type[0]);
          if (v155)
          {
            if (v157)
            {
              v158 = v2->identifier->name;
              if (!v158)
              {
                v158 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_parameters";
              *&buf[12] = 2082;
              *&buf[14] = v158;
              *&buf[22] = 2048;
              v212 = v2;
              v213 = 2082;
              v214 = v155;
              _os_log_impl(&dword_181A37000, v204, v134, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v155);
          }

          else if (v157)
          {
            v190 = v2->identifier->name;
            if (!v190)
            {
              v190 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v190;
            *&buf[22] = 2048;
            v212 = v2;
            v136 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
            v174 = v204;
            goto LABEL_362;
          }
        }

LABEL_363:
        if (v132)
        {
          free(v132);
        }

        v41 = 0;
        if (v31)
        {
LABEL_84:
          BYTE4(v8[3].output_handler_context) = nw_parameters_get_ip_protocol(v41);
          v48 = v2->handle;
          v49 = v2;
          if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v49 = *v2[1].flow_id) != 0)
          {
            v52 = v49[1].callbacks;
            if (v52)
            {
              v50 = 0;
              v49[1].callbacks = (&v52->add_input_handler + 1);
              v51 = v2->callbacks;
              if (!v51)
              {
                goto LABEL_271;
              }
            }

            else
            {
              v50 = 0;
              v51 = v2->callbacks;
              if (!v51)
              {
                goto LABEL_271;
              }
            }
          }

          else
          {
            v50 = 1;
            v51 = v2->callbacks;
            if (!v51)
            {
              goto LABEL_271;
            }
          }

          get_local_endpoint = v51->get_local_endpoint;
          if (get_local_endpoint)
          {
            v54 = get_local_endpoint(v2);
            if (v50)
            {
              goto LABEL_95;
            }

            goto LABEL_376;
          }

LABEL_271:
          __nwlog_obj();
          v137 = v2->identifier->name;
          if (!v137)
          {
            v137 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_local_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v137;
          *&buf[22] = 2048;
          v212 = v2;
          v138 = _os_log_send_and_compose_impl();
          type[0] = 16;
          v209 = OS_LOG_TYPE_DEFAULT;
          v206 = v138;
          if (__nwlog_fault(v138, type, &v209))
          {
            if (type[0] == 17)
            {
              v139 = __nwlog_obj();
              v140 = type[0];
              if (!os_log_type_enabled(v139, type[0]))
              {
                goto LABEL_373;
              }

              v141 = v2->identifier->name;
              if (!v141)
              {
                v141 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v141;
              *&buf[22] = 2048;
              v212 = v2;
              v142 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
LABEL_371:
              v176 = v139;
              v177 = v140;
LABEL_372:
              _os_log_impl(&dword_181A37000, v176, v177, v142, buf, 0x20u);
              goto LABEL_373;
            }

            if (v209 != OS_LOG_TYPE_INFO)
            {
              v139 = __nwlog_obj();
              v140 = type[0];
              if (!os_log_type_enabled(v139, type[0]))
              {
                goto LABEL_373;
              }

              v175 = v2->identifier->name;
              if (!v175)
              {
                v175 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v175;
              *&buf[22] = 2048;
              v212 = v2;
              v142 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
              goto LABEL_371;
            }

            v159 = __nw_create_backtrace_string();
            v160 = __nwlog_obj();
            logb = type[0];
            v161 = os_log_type_enabled(v160, type[0]);
            if (v159)
            {
              if (v161)
              {
                v162 = v2->identifier->name;
                if (!v162)
                {
                  v162 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                *&buf[12] = 2082;
                *&buf[14] = v162;
                *&buf[22] = 2048;
                v212 = v2;
                v213 = 2082;
                v214 = v159;
                _os_log_impl(&dword_181A37000, v160, logb, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v159);
            }

            else if (v161)
            {
              v191 = v2->identifier->name;
              if (!v191)
              {
                v191 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v191;
              *&buf[22] = 2048;
              v212 = v2;
              v142 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
              v176 = v160;
              v177 = logb;
              goto LABEL_372;
            }
          }

LABEL_373:
          if (v206)
          {
            free(v206);
          }

          v54 = 0;
          if (v50)
          {
            goto LABEL_95;
          }

LABEL_376:
          v55 = v2->handle;
          v178 = v2;
          if (v55 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_379;
          }

          if (v55 != &nw_protocol_ref_counted_additional_handle)
          {
            goto LABEL_96;
          }

          v178 = *v2[1].flow_id;
          if (v178)
          {
LABEL_379:
            v179 = v178[1].callbacks;
            if (v179)
            {
              v180 = (v179 - 1);
              v178[1].callbacks = v180;
              if (!v180)
              {
                v181 = *v178[1].flow_id;
                if (v181)
                {
                  *v178[1].flow_id = 0;
                  v181[2](v181);
                  _Block_release(v181);
                }

                if (v178[1].flow_id[8])
                {
                  v182 = *v178[1].flow_id;
                  if (v182)
                  {
                    _Block_release(v182);
                  }
                }

                free(v178);
              }
            }
          }

LABEL_95:
          v55 = v2->handle;
LABEL_96:
          v56 = v2;
          if (v55 == &nw_protocol_ref_counted_handle || v55 == &nw_protocol_ref_counted_additional_handle && (v56 = *v2[1].flow_id) != 0)
          {
            v59 = v56[1].callbacks;
            if (v59)
            {
              v57 = 0;
              v56[1].callbacks = (&v59->add_input_handler + 1);
              v58 = v2->callbacks;
              if (!v58)
              {
                goto LABEL_279;
              }
            }

            else
            {
              v57 = 0;
              v58 = v2->callbacks;
              if (!v58)
              {
                goto LABEL_279;
              }
            }
          }

          else
          {
            v57 = 1;
            v58 = v2->callbacks;
            if (!v58)
            {
              goto LABEL_279;
            }
          }

          get_remote_endpoint = v58->get_remote_endpoint;
          if (get_remote_endpoint)
          {
            v61 = get_remote_endpoint(v2);
            if (v57)
            {
              goto LABEL_192;
            }

            goto LABEL_107;
          }

LABEL_279:
          __nwlog_obj();
          v143 = v2->identifier->name;
          if (!v143)
          {
            v143 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v143;
          *&buf[22] = 2048;
          v212 = v2;
          v144 = _os_log_send_and_compose_impl();
          type[0] = 16;
          v209 = OS_LOG_TYPE_DEFAULT;
          v207 = v144;
          if (__nwlog_fault(v144, type, &v209))
          {
            if (type[0] == 17)
            {
              v145 = __nwlog_obj();
              v146 = type[0];
              log = v145;
              if (!os_log_type_enabled(v145, type[0]))
              {
                goto LABEL_393;
              }

              v147 = v2->identifier->name;
              if (!v147)
              {
                v147 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v147;
              *&buf[22] = 2048;
              v212 = v2;
              v148 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_391:
              v185 = log;
              v186 = v146;
LABEL_392:
              _os_log_impl(&dword_181A37000, v185, v186, v148, buf, 0x20u);
              goto LABEL_393;
            }

            if (v209 != OS_LOG_TYPE_INFO)
            {
              v183 = __nwlog_obj();
              v146 = type[0];
              log = v183;
              if (!os_log_type_enabled(v183, type[0]))
              {
                goto LABEL_393;
              }

              v184 = v2->identifier->name;
              if (!v184)
              {
                v184 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v184;
              *&buf[22] = 2048;
              v212 = v2;
              v148 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
              goto LABEL_391;
            }

            v163 = __nw_create_backtrace_string();
            logc = __nwlog_obj();
            v199 = type[0];
            v164 = os_log_type_enabled(logc, type[0]);
            if (v163)
            {
              if (v164)
              {
                v165 = v2->identifier->name;
                if (!v165)
                {
                  v165 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_get_remote_endpoint";
                *&buf[12] = 2082;
                *&buf[14] = v165;
                *&buf[22] = 2048;
                v212 = v2;
                v213 = 2082;
                v214 = v163;
                _os_log_impl(&dword_181A37000, logc, v199, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v163);
            }

            else if (v164)
            {
              v192 = v2->identifier->name;
              if (!v192)
              {
                v192 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v192;
              *&buf[22] = 2048;
              v212 = v2;
              v148 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
              v185 = logc;
              v186 = v199;
              goto LABEL_392;
            }
          }

LABEL_393:
          if (v207)
          {
            free(v207);
          }

          v61 = 0;
          if (v57)
          {
            goto LABEL_192;
          }

LABEL_107:
          v62 = v2->handle;
          if (v62 == &nw_protocol_ref_counted_handle || v62 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v63 = v2[1].callbacks;
            if (v63)
            {
              v64 = (v63 - 1);
              v2[1].callbacks = v64;
              if (!v64)
              {
                v65 = *v2[1].flow_id;
                if (v65)
                {
                  *v2[1].flow_id = 0;
                  v65[2](v65);
                  _Block_release(v65);
                }

                if (v2[1].flow_id[8])
                {
                  v66 = *v2[1].flow_id;
                  if (v66)
                  {
                    _Block_release(v66);
                  }
                }

                free(v2);
              }
            }
          }

          goto LABEL_192;
        }

LABEL_73:
        v42 = v2->handle;
        v43 = v2;
        if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *v2[1].flow_id) != 0)
        {
          v44 = v43[1].callbacks;
          if (v44)
          {
            v45 = (v44 - 1);
            v43[1].callbacks = v45;
            if (!v45)
            {
              v46 = *v43[1].flow_id;
              if (v46)
              {
                *v43[1].flow_id = 0;
                v46[2](v46);
                _Block_release(v46);
              }

              if (v43[1].flow_id[8])
              {
                v47 = *v43[1].flow_id;
                if (v47)
                {
                  _Block_release(v47);
                }
              }

              free(v43);
            }
          }
        }

        goto LABEL_84;
      }

LABEL_291:
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_add_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type[0] = 16;
      v209 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v9, type, &v209))
      {
        goto LABEL_62;
      }

      if (type[0] == 17)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Attempt to add quic to ip";
        goto LABEL_59;
      }

      if (v209 == OS_LOG_TYPE_INFO)
      {
        v166 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type[0];
        v169 = os_log_type_enabled(v10, type[0]);
        if (v166)
        {
          if (!v169)
          {
            goto LABEL_410;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v166;
          v168 = "%{public}s Attempt to add quic to ip, dumping backtrace:%{public}s";
          goto LABEL_340;
        }

        if (!v169)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Attempt to add quic to ip, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Attempt to add quic to ip, backtrace limit exceeded";
      }

      goto LABEL_59;
    }

    if (!strncmp("invalid", "quic", 4uLL))
    {
      goto LABEL_291;
    }

    nw_protocol_set_flow_id_from_protocol(v8, 0);
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_output_handler";
    v18 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v209 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v18, type, &v209))
    {
      if (type[0] == 17)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (!os_log_type_enabled(v19, type[0]))
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol";
LABEL_124:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
        goto LABEL_125;
      }

      if (v209 != OS_LOG_TYPE_INFO)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (!os_log_type_enabled(v19, type[0]))
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_124;
      }

      v33 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type[0];
      v34 = os_log_type_enabled(v19, type[0]);
      if (!v33)
      {
        if (!v34)
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_124;
      }

      if (v34)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_get_output_handler";
        *&buf[12] = 2082;
        *&buf[14] = v33;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v33);
    }

LABEL_125:
    if (v18)
    {
      free(v18);
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_set_output_handler";
    v67 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v209 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v67, type, &v209))
    {
      if (type[0] == 17)
      {
        v68 = __nwlog_obj();
        v69 = type[0];
        if (!os_log_type_enabled(v68, type[0]))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v70 = "%{public}s called with null protocol";
LABEL_140:
        _os_log_impl(&dword_181A37000, v68, v69, v70, buf, 0xCu);
        goto LABEL_141;
      }

      if (v209 != OS_LOG_TYPE_INFO)
      {
        v68 = __nwlog_obj();
        v69 = type[0];
        if (!os_log_type_enabled(v68, type[0]))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v70 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_140;
      }

      v71 = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v69 = type[0];
      v72 = os_log_type_enabled(v68, type[0]);
      if (!v71)
      {
        if (!v72)
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v70 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_140;
      }

      if (v72)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_set_output_handler";
        *&buf[12] = 2082;
        *&buf[14] = v71;
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v71);
    }

LABEL_141:
    if (v67)
    {
      free(v67);
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_parameters";
    v73 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v209 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v73, type, &v209))
    {
      if (type[0] == 17)
      {
        v74 = __nwlog_obj();
        v75 = type[0];
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_parameters";
        v76 = "%{public}s called with null protocol";
LABEL_156:
        _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
        goto LABEL_157;
      }

      if (v209 != OS_LOG_TYPE_INFO)
      {
        v74 = __nwlog_obj();
        v75 = type[0];
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_parameters";
        v76 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_156;
      }

      v77 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type[0];
      v78 = os_log_type_enabled(v74, type[0]);
      if (!v77)
      {
        if (!v78)
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_parameters";
        v76 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_156;
      }

      if (v78)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_get_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v77;
        _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v77);
    }

LABEL_157:
    if (v73)
    {
      free(v73);
    }

    BYTE4(v8[3].output_handler_context) = nw_parameters_get_ip_protocol(0);
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_local_endpoint";
    v79 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v209 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v79, type, &v209))
    {
      if (type[0] == 17)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (!os_log_type_enabled(v80, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v82 = "%{public}s called with null protocol";
LABEL_172:
        _os_log_impl(&dword_181A37000, v80, v81, v82, buf, 0xCu);
        goto LABEL_173;
      }

      if (v209 != OS_LOG_TYPE_INFO)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (!os_log_type_enabled(v80, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v82 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_172;
      }

      v83 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v81 = type[0];
      v84 = os_log_type_enabled(v80, type[0]);
      if (!v83)
      {
        if (!v84)
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v82 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_172;
      }

      if (v84)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        *&buf[12] = 2082;
        *&buf[14] = v83;
        _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v83);
    }

LABEL_173:
    if (v79)
    {
      free(v79);
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_remote_endpoint";
    v85 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v209 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v85, type, &v209))
    {
      goto LABEL_189;
    }

    if (type[0] == 17)
    {
      v86 = __nwlog_obj();
      v87 = type[0];
      if (os_log_type_enabled(v86, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v88 = "%{public}s called with null protocol";
LABEL_188:
        _os_log_impl(&dword_181A37000, v86, v87, v88, buf, 0xCu);
      }
    }

    else if (v209 == OS_LOG_TYPE_INFO)
    {
      v89 = __nw_create_backtrace_string();
      v86 = __nwlog_obj();
      v87 = type[0];
      v90 = os_log_type_enabled(v86, type[0]);
      if (v89)
      {
        if (v90)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v89;
          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v89);
        goto LABEL_189;
      }

      if (v90)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v88 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_188;
      }
    }

    else
    {
      v86 = __nwlog_obj();
      v87 = type[0];
      if (os_log_type_enabled(v86, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v88 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_188;
      }
    }

LABEL_189:
    if (v85)
    {
      free(v85);
    }

    v54 = 0;
    v41 = 0;
    v61 = 0;
LABEL_192:
    if (nw_endpoint_get_address_family(v54) == 30)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v212) = 0;
      if ((nw_endpoint_fillout_v6_address(v54, buf) & 1) == 0)
      {
        __nwlog_obj();
        *type = 136446210;
        *&type[4] = "nw_protocol_ipv6_add_input_handler";
        v9 = _os_log_send_and_compose_impl();
        v209 = OS_LOG_TYPE_ERROR;
        v208 = 0;
        if (!__nwlog_fault(v9, &v209, &v208))
        {
          goto LABEL_62;
        }

        if (v209 == OS_LOG_TYPE_FAULT)
        {
          v10 = __nwlog_obj();
          v11 = v209;
          if (!os_log_type_enabled(v10, v209))
          {
            goto LABEL_62;
          }

          *type = 136446210;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          v12 = "%{public}s called with null success";
          goto LABEL_445;
        }

        if (v208 == 1)
        {
          v166 = __nw_create_backtrace_string();
          v10 = __nwlog_obj();
          v11 = v209;
          v187 = os_log_type_enabled(v10, v209);
          if (v166)
          {
            if (v187)
            {
              goto LABEL_408;
            }

            goto LABEL_410;
          }

          if (!v187)
          {
            goto LABEL_62;
          }

          *type = 136446210;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          v12 = "%{public}s called with null success, no backtrace";
        }

        else
        {
          v10 = __nwlog_obj();
          v11 = v209;
          if (!os_log_type_enabled(v10, v209))
          {
            goto LABEL_62;
          }

          *type = 136446210;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          v12 = "%{public}s called with null success, backtrace limit exceeded";
        }

LABEL_445:
        v35 = type;
        goto LABEL_60;
      }

      *&v8[2].callbacks = *&buf[8];
    }

    if (nw_endpoint_get_address_family(v61) != 30)
    {
      goto LABEL_198;
    }

    memset(buf, 0, sizeof(buf));
    LODWORD(v212) = 0;
    if (nw_endpoint_fillout_v6_address(v61, buf))
    {
      *&v8[2].handle = *&buf[8];
LABEL_198:
      *type = 0;
      *&type[8] = 0;
      *type = *v8->flow_id;
      LODWORD(v8[3].default_input_handler) = net_flowhash(type, 0x10u, flowhash_seed) & 0xFFFF0F00;
      default_input_handler = v3->default_input_handler;
      if (default_input_handler)
      {
        v92 = default_input_handler->handle;
        v93 = v3->default_input_handler;
        if (v92 == &nw_protocol_ref_counted_handle || v92 == &nw_protocol_ref_counted_additional_handle && (v93 = *default_input_handler[1].flow_id) != 0)
        {
          v96 = v93[1].callbacks;
          if (v96)
          {
            v94 = 0;
            v93[1].callbacks = (&v96->add_input_handler + 1);
            v95 = default_input_handler->callbacks;
            if (!v95)
            {
              goto LABEL_251;
            }
          }

          else
          {
            v94 = 0;
            v95 = default_input_handler->callbacks;
            if (!v95)
            {
              goto LABEL_251;
            }
          }
        }

        else
        {
          v94 = 1;
          v95 = default_input_handler->callbacks;
          if (!v95)
          {
            goto LABEL_251;
          }
        }

        get_path = v95->get_path;
        if (get_path)
        {
          v98 = get_path(default_input_handler);
          if (v94)
          {
LABEL_221:
            if (v98)
            {
              v105 = v98;
              LODWORD(v8[3].output_handler_context) = nw_path_get_maximum_packet_size(v98);
              v106 = v105;
              mtu = _nw_path_get_mtu(v106);

              LODWORD(v8[3].handle) = mtu;
            }

            goto LABEL_223;
          }

LABEL_210:
          v99 = default_input_handler->handle;
          if (v99 == &nw_protocol_ref_counted_handle || v99 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
          {
            v100 = default_input_handler[1].callbacks;
            if (v100)
            {
              v101 = (v100 - 1);
              default_input_handler[1].callbacks = v101;
              if (!v101)
              {
                v102 = v98;
                v103 = *default_input_handler[1].flow_id;
                if (v103)
                {
                  *default_input_handler[1].flow_id = 0;
                  v103[2](v103);
                  _Block_release(v103);
                }

                if (default_input_handler[1].flow_id[8])
                {
                  v104 = *default_input_handler[1].flow_id;
                  if (v104)
                  {
                    _Block_release(v104);
                  }
                }

                free(default_input_handler);
                v98 = v102;
              }
            }
          }

          goto LABEL_221;
        }

LABEL_251:
        __nwlog_obj();
        v121 = default_input_handler->identifier->name;
        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_path";
        if (!v121)
        {
          v121 = "invalid";
        }

        *&buf[12] = 2082;
        *&buf[14] = v121;
        *&buf[22] = 2048;
        v212 = default_input_handler;
        v122 = _os_log_send_and_compose_impl();
        v209 = OS_LOG_TYPE_ERROR;
        v208 = 0;
        v205 = v122;
        if (__nwlog_fault(v122, &v209, &v208))
        {
          if (v209 == OS_LOG_TYPE_FAULT)
          {
            v123 = __nwlog_obj();
            v124 = v209;
            if (!os_log_type_enabled(v123, v209))
            {
              goto LABEL_351;
            }

            v125 = default_input_handler->identifier->name;
            if (!v125)
            {
              v125 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v125;
            *&buf[22] = 2048;
            v212 = default_input_handler;
            v126 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
LABEL_349:
            v172 = v123;
LABEL_350:
            _os_log_impl(&dword_181A37000, v172, v124, v126, buf, 0x20u);
            goto LABEL_351;
          }

          if (v208 != 1)
          {
            v123 = __nwlog_obj();
            v124 = v209;
            if (!os_log_type_enabled(v123, v209))
            {
              goto LABEL_351;
            }

            v171 = default_input_handler->identifier->name;
            if (!v171)
            {
              v171 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v171;
            *&buf[22] = 2048;
            v212 = default_input_handler;
            v126 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
            goto LABEL_349;
          }

          v149 = __nw_create_backtrace_string();
          v150 = __nwlog_obj();
          v124 = v209;
          loga = v150;
          v151 = os_log_type_enabled(v150, v209);
          if (v149)
          {
            if (v151)
            {
              v152 = default_input_handler->identifier->name;
              if (!v152)
              {
                v152 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_path";
              *&buf[12] = 2082;
              *&buf[14] = v152;
              *&buf[22] = 2048;
              v212 = default_input_handler;
              v213 = 2082;
              v214 = v149;
              _os_log_impl(&dword_181A37000, loga, v124, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v149);
          }

          else if (v151)
          {
            v189 = default_input_handler->identifier->name;
            if (!v189)
            {
              v189 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v189;
            *&buf[22] = 2048;
            v212 = default_input_handler;
            v126 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
            v172 = loga;
            goto LABEL_350;
          }
        }

LABEL_351:
        if (v205)
        {
          free(v205);
        }

        v98 = 0;
        if (v94)
        {
          goto LABEL_221;
        }

        goto LABEL_210;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_path";
      v193 = _os_log_send_and_compose_impl();
      v209 = OS_LOG_TYPE_ERROR;
      v208 = 0;
      if (__nwlog_fault(v193, &v209, &v208))
      {
        if (v209 == OS_LOG_TYPE_FAULT)
        {
          v194 = __nwlog_obj();
          v195 = v209;
          if (!os_log_type_enabled(v194, v209))
          {
            goto LABEL_460;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_path";
          v196 = "%{public}s called with null protocol";
          goto LABEL_459;
        }

        if (v208 != 1)
        {
          v194 = __nwlog_obj();
          v195 = v209;
          if (!os_log_type_enabled(v194, v209))
          {
            goto LABEL_460;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_path";
          v196 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_459;
        }

        v197 = __nw_create_backtrace_string();
        v194 = __nwlog_obj();
        v195 = v209;
        v198 = os_log_type_enabled(v194, v209);
        if (v197)
        {
          if (v198)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v197;
            _os_log_impl(&dword_181A37000, v194, v195, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v197);
          goto LABEL_460;
        }

        if (v198)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_path";
          v196 = "%{public}s called with null protocol, no backtrace";
LABEL_459:
          _os_log_impl(&dword_181A37000, v194, v195, v196, buf, 0xCu);
        }
      }

LABEL_460:
      if (v193)
      {
        free(v193);
      }

LABEL_223:
      v108 = nw_parameters_copy_protocol_options_legacy(v41, v3);
      if (v108)
      {
        v109 = v108;
        _nw_protocol_options_get_log_id_str(v109, &v8[4]);

        hop_limit = _nw_ip_options_get_hop_limit(v109);
        if (hop_limit)
        {
          v111 = hop_limit;
        }

        else
        {
          v111 = 64;
        }

        BYTE5(v8[3].output_handler_context) = v111;
        if (_nw_ip_options_get_use_minimum_mtu(v109))
        {
          v112 = 2;
        }

        else
        {
          v112 = 0;
        }

        HIBYTE(v8[3].output_handler_context) = HIBYTE(v8[3].output_handler_context) & 0xFD | v112;
        if (_nw_ip_options_get_calculate_receive_time(v109))
        {
          v113 = 4;
        }

        else
        {
          v113 = 0;
        }

        HIBYTE(v8[3].output_handler_context) = HIBYTE(v8[3].output_handler_context) & 0xFB | v113;
        if (_nw_ip_options_get_receive_hop_limit(v109))
        {
          v114 = 16;
        }

        else
        {
          v114 = 0;
        }

        HIBYTE(v8[3].output_handler_context) = HIBYTE(v8[3].output_handler_context) & 0xEF | v114;
        BYTE6(v8[3].output_handler_context) = nw_ip_options_get_dscp_value(v109);
        os_release(v109);
      }

      else
      {
        BYTE5(v8[3].output_handler_context) = 64;
      }

      v38 = 1;
      nw_protocol_ip_register_segmentation_offload_notification(v3, 1);
      if (v6)
      {
        return v38;
      }

      goto LABEL_239;
    }

    __nwlog_obj();
    *type = 136446210;
    *&type[4] = "nw_protocol_ipv6_add_input_handler";
    v9 = _os_log_send_and_compose_impl();
    v209 = OS_LOG_TYPE_ERROR;
    v208 = 0;
    if (!__nwlog_fault(v9, &v209, &v208))
    {
      goto LABEL_62;
    }

    if (v209 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v209;
      if (!os_log_type_enabled(v10, v209))
      {
        goto LABEL_62;
      }

      *type = 136446210;
      *&type[4] = "nw_protocol_ipv6_add_input_handler";
      v12 = "%{public}s called with null success";
      goto LABEL_445;
    }

    if (v208 == 1)
    {
      v166 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = v209;
      v188 = os_log_type_enabled(v10, v209);
      if (v166)
      {
        if (v188)
        {
LABEL_408:
          *type = 136446466;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          *&type[12] = 2082;
          *&type[14] = v166;
          v168 = "%{public}s called with null success, dumping backtrace:%{public}s";
          v170 = type;
          goto LABEL_409;
        }

LABEL_410:
        free(v166);
        goto LABEL_62;
      }

      if (!v188)
      {
        goto LABEL_62;
      }

      *type = 136446210;
      *&type[4] = "nw_protocol_ipv6_add_input_handler";
      v12 = "%{public}s called with null success, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = v209;
      if (!os_log_type_enabled(v10, v209))
      {
        goto LABEL_62;
      }

      *type = 136446210;
      *&type[4] = "nw_protocol_ipv6_add_input_handler";
      v12 = "%{public}s called with null success, backtrace limit exceeded";
    }

    goto LABEL_445;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ipv6_add_input_handler";
  v9 = _os_log_send_and_compose_impl();
  type[0] = 16;
  v209 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v9, type, &v209))
  {
    goto LABEL_62;
  }

  if (type[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v12 = "%{public}s called with null ipv6";
    goto LABEL_59;
  }

  if (v209 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v12 = "%{public}s called with null ipv6, backtrace limit exceeded";
    goto LABEL_59;
  }

  v22 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  v24 = type[0];
  v25 = os_log_type_enabled(gLogObj, type[0]);
  if (v22)
  {
    if (v25)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ipv6_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v22;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v22);
  }

  else if (v25)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v12 = "%{public}s called with null ipv6, no backtrace";
    v35 = buf;
    v36 = v23;
    v37 = v24;
    goto LABEL_61;
  }

LABEL_62:
  if (v9)
  {
    free(v9);
  }

  v38 = 0;
  if ((v6 & 1) == 0)
  {
LABEL_239:
    v115 = v3->handle;
    if (v115 == &nw_protocol_ref_counted_handle || v115 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v116 = v3[1].callbacks;
      if (v116)
      {
        v117 = (v116 - 1);
        v3[1].callbacks = v117;
        if (!v117)
        {
          v118 = *v3[1].flow_id;
          if (v118)
          {
            *v3[1].flow_id = 0;
            v118[2](v118);
            _Block_release(v118);
          }

          if (v3[1].flow_id[8])
          {
            v119 = *v3[1].flow_id;
            if (v119)
            {
              _Block_release(v119);
            }
          }

          free(v3);
        }
      }
    }
  }

  return v38;
}

uint64_t ___ZL54nw_connection_start_candidate_manager_if_needed_lockedP24NWConcrete_nw_connection_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_resolution_report_copy_successful_endpoint(v3);
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 448);
      v11 = 136446722;
      v12 = "nw_connection_start_candidate_manager_if_needed_locked_block_invoke";
      v13 = 1024;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Found endpoint %@", &v11, 0x1Cu);
    }
  }

  type = nw_endpoint_get_type(v4);
  if (type == nw_endpoint_type_address)
  {
    v9 = 48;
    goto LABEL_12;
  }

  if (type == nw_endpoint_type_bonjour_service)
  {
    v9 = 40;
LABEL_12:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v4);
  }

  return 1;
}

nw_endpoint_t nw_resolution_report_copy_successful_endpoint(nw_resolution_report_t resolution_report)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_resolution_report_copy_successful_endpoint";
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
        v16 = "nw_resolution_report_copy_successful_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v16 = "nw_resolution_report_copy_successful_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_successful_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_successful_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

void NWConnection.requestEstablishmentReport(queue:completion:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181F1C974;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181AA4EBC;
  v10[3] = &block_descriptor_179;
  v9 = _Block_copy(v10);

  nw_connection_access_establishment_report(v7, a1, v9);
  _Block_release(v9);
}

void nw_connection_access_establishment_report(nw_connection_t connection, dispatch_queue_t queue, nw_establishment_report_access_block_t access_block)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = connection;
  v6 = queue;
  v7 = access_block;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_access_establishment_report";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
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
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v32 == 1)
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
          v35 = "nw_connection_access_establishment_report";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
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
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v6)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_access_establishment_report";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
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
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null queue", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
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
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null queue, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v35 = "nw_connection_access_establishment_report";
      v36 = 2082;
      v37 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_access_establishment_report";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
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
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null access_block", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
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
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v35 = "nw_connection_access_establishment_report";
      v36 = 2082;
      v37 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v20);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __nw_connection_access_establishment_report_block_invoke;
  v28[3] = &unk_1E6A39AE8;
  v29 = v5;
  v30 = v6;
  v31 = v8;
  nw_connection_async_if_needed(v29, v28);

LABEL_5:
}

void __nw_connection_access_establishment_report_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[52];
  if (!v3)
  {
    nw_connection_fillout_establishment_report_on_nw_queue(v2, 0);
    v3 = *(*(a1 + 32) + 416);
  }

  v4 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_connection_access_establishment_report_block_invoke_2;
  v8[3] = &unk_1E6A3D710;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __nw_connection_copy_attempted_endpoint_array_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    v3 = _nw_array_copy(v2);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

id nw_connection_copy_attempted_endpoint_array(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__83595;
    v20 = __Block_byref_object_dispose__83596;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_copy_attempted_endpoint_array_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_attempted_endpoint_array_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
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
        *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
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
          *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
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
        *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
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
        *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
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

uint64_t __nw_parameters_copy_prohibited_interface_types_block_invoke(uint64_t a1, uint64_t value)
{
  v2 = value;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  return 1;
}

uint64_t nw_parameters_are_equivalent_for_path_evaluation(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_parameters_are_equivalent_for_path_evaluation(v3, v4);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_are_equivalent_for_path_evaluation";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null right";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null right, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null right, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_parameters_are_equivalent_for_path_evaluation";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null right, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_are_equivalent_for_path_evaluation";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null left";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null left, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null left, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_parameters_are_equivalent_for_path_evaluation";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null left, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

BOOL sub_181ED3C68(uint64_t a1, void *a2)
{
  v2 = a2[3] + a2[4];
  if (a2[2] < v2)
  {
    v2 = a2[2];
  }

  v15 = a2[4];
  v16 = v2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 24) + v3;
  if (*(a1 + 16) < v4)
  {
    v4 = *(a1 + 16);
  }

  v11 = a1;
  v12 = *(a1 + 32);
  v13 = v4;
  v5 = a1;
  while (1)
  {
    v6 = v15;
    if (v15 != v16)
    {
      goto LABEL_9;
    }

    a1 = sub_181AC81FC(a1);
    if (a1)
    {
      v6 = v15;
LABEL_9:
      v15 = v6 + 1;
      v7 = *(a2 + v6 + 40);
      goto LABEL_11;
    }

    v7 = 5;
LABEL_11:
    if (v3 == v13)
    {
      break;
    }

LABEL_14:
    v12 = v3 + 1;
    v8 = *(v5 + v3 + 40);
    v9 = v8 == 5;
    if (v7 == 5)
    {
      goto LABEL_20;
    }

    if (v8 != 5)
    {
      ++v3;
      if (qword_182B07CD0[v7] == qword_182B07CD0[v8])
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  a1 = sub_181AC81FC(a1);
  v5 = v11;
  if (a1)
  {
    v3 = v12;
    goto LABEL_14;
  }

  if (v7 == 5)
  {
    v9 = 1;
LABEL_20:

    goto LABEL_22;
  }

LABEL_21:

  v9 = 0;
LABEL_22:

  return v9;
}

uint64_t nw_resolver_get_error(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 3);
    os_unfair_lock_opaque = v2[21]._os_unfair_lock_opaque;
    if (!os_unfair_lock_opaque)
    {
      if (v2[2]._os_unfair_lock_opaque == 2 && nw_endpoint_get_type(*&v2[6]._os_unfair_lock_opaque) == nw_endpoint_type_host && ((v4 = *&v2[42]._os_unfair_lock_opaque) == 0 || !_nw_array_get_count(v4)) && (v2[92]._os_unfair_lock_opaque & 0x100000) == 0 && (~LOWORD(v2[22]._os_unfair_lock_opaque) & 0xC00) != 0)
      {
        os_unfair_lock_opaque = 4294901742;
      }

      else
      {
        os_unfair_lock_opaque = 0;
      }
    }

    os_unfair_lock_unlock(v2 + 3);
    goto LABEL_11;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_resolver_get_error";
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
        v17 = "nw_resolver_get_error";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null resolver", buf, 0xCu);
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
          v17 = "nw_resolver_get_error";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_resolver_get_error";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_resolver_get_error";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }

  os_unfair_lock_opaque = 0;
LABEL_11:

  return os_unfair_lock_opaque;
}

uint64_t get_enum_tag_for_layout_string_7Network0A9AgentTypeV0B6DomainO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t InterfaceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181EBD8F0();
  sub_182AD45E8();
  if (!v2)
  {
    v9 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    v10 = 0x302010400uLL >> (8 * v9);
    if (v9 >= 5)
    {
      LOBYTE(v10) = 0;
    }

    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_DWORD *nw_error_create_dns_error(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [NWConcrete_nw_error alloc];

    return [(NWConcrete_nw_error *)v2 initWithDomain:a1 code:?];
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_error_create_dns_error";
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
        v14 = "nw_error_create_dns_error";
        v8 = "%{public}s called with null dns_error";
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
            v14 = "nw_error_create_dns_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null dns_error, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_error_create_dns_error";
        v8 = "%{public}s called with null dns_error, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_error_create_dns_error";
        v8 = "%{public}s called with null dns_error, backtrace limit exceeded";
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

uint64_t nw_protocol_connected_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 40) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void _nw_path_set_necp_result_delegate_interface_generation(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 86) = a2;
  }
}

void _nw_path_set_necp_result_delegate_interface_index(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 85) = a2;
  }
}

uint64_t __nw_dictionary_copy_block_invoke()
{
  value = xpc_pointer_get_value();
  if (value)
  {
    os_retain(value);
  }

  return 1;
}

uint64_t sub_181ED46C8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NWProtocolFramer.Instance();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = *(a3 + 16);
  swift_unknownObjectRetain();

  v9 = v7(v8, a2, a3);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = v6;
  v25 = sub_181F1490C;
  v26 = v10;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181F148B0;
  v24 = &block_descriptor_56;
  v11 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_input_handler(a1, v11);
  _Block_release(v11);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a3;
  v12[4] = v6;
  v25 = sub_181BE7ED8;
  v26 = v12;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181BE7D2C;
  v24 = &block_descriptor_62_0;
  v13 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_output_handler(a1, v13);
  _Block_release(v13);
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = a3;
  v14[4] = v6;
  v25 = sub_1820F9C04;
  v26 = v14;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181AA4EBC;
  v24 = &block_descriptor_68;
  v15 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_wakeup_handler(a1, v15);
  _Block_release(v15);
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a3;
  v16[4] = v6;
  v25 = sub_1820F9C5C;
  v26 = v16;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1820F7CF0;
  v24 = &block_descriptor_74_0;
  v17 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_stop_handler(a1, v17);
  _Block_release(v17);
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = a3;
  v18[4] = v6;
  v25 = sub_1820F9CB8;
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181AA4EBC;
  v24 = &block_descriptor_80;
  v19 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_cleanup_handler(a1, v19);
  _Block_release(v19);
  (*(a3 + 24))(&v21, v6, a2, a3);
  swift_unknownObjectRelease();

  if (v21)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t NWProtocolFramer.Instance.options.getter()
{
  v1 = nw_framer_copy_options(*(v0 + 16));
  type metadata accessor for NWProtocolFramer.Options();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

nw_protocol_options_t nw_framer_copy_options(nw_framer_t framer)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    v3 = nw_framer_copy_parameters(v1);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = _nw_parameters_copy_protocol_options_with_level(v5, &v2[36]);

LABEL_4:
      goto LABEL_5;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_framer_copy_options";
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
          v27 = "nw_framer_copy_options";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v27 = "nw_framer_copy_options";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_framer_copy_options";
          _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v27 = "nw_framer_copy_options";
          _os_log_impl(&dword_181A37000, v14, v23, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_41:
    if (v13)
    {
      free(v13);
    }

    v6 = 0;
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_framer_copy_options";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v9, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_framer_copy_options";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_framer_copy_options";
          v28 = 2082;
          v29 = v16;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_35;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_framer_copy_options";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_framer_copy_options";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_5:

  return v6;
}

nw_parameters_t nw_framer_copy_parameters(nw_framer_t framer)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    isa = v2[42].isa;
    if (isa && (v4 = *(isa + 3)) != 0 && (v5 = *(v4 + 112)) != 0)
    {
      v6 = v5();
    }

    else
    {
      v6 = v2[45].isa;
    }

    v7 = v6;
    goto LABEL_7;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_framer_copy_parameters";
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
        v20 = "nw_framer_copy_parameters";
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
          v20 = "nw_framer_copy_parameters";
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
        v20 = "nw_framer_copy_parameters";
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
        v20 = "nw_framer_copy_parameters";
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

id nw_framer_options_copy_object_value(nw_protocol_options_t options, const char *key)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = options;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_object_value";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v8, &type, &v27))
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
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
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
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_options_copy_object_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!nw_protocol_options_has_standard_framer_options(v3))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_object_value";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v8, &type, &v27))
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
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v9, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_framer_options_copy_object_value";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
LABEL_55:
        if (!v8)
        {
LABEL_57:
          v5 = 0;
          goto LABEL_5;
        }

LABEL_56:
        free(v8);
        goto LABEL_57;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!key)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_object_value";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v8, &type, &v27))
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
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_options_copy_object_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    if (!v8)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__5122;
  v31 = __Block_byref_object_dispose__5123;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __nw_framer_options_copy_object_value_block_invoke;
  v26[3] = &unk_1E6A3AB40;
  v26[4] = buf;
  v26[5] = key;
  nw_protocol_options_access_handle(v4, v26);
  v5 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_5:
  return v5;
}

void sub_181ED5B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void nw_framer_set_input_handler(nw_framer_t framer, nw_framer_input_handler_t input_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = input_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
          v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
    v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null input_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null input_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null input_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_input_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null input_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_input_handler";
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
  isa = v3[50].isa;
  v3[50].isa = v6;

LABEL_5:
}

void nw_framer_set_output_handler(nw_framer_t framer, nw_framer_output_handler_t output_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = output_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
          v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
    v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null output_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null output_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null output_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_output_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_output_handler";
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
  isa = v3[51].isa;
  v3[51].isa = v6;

LABEL_5:
}

void nw_framer_set_stop_handler(nw_framer_t framer, nw_framer_stop_handler_t stop_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = stop_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
          v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
    v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null stop_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null stop_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null stop_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_stop_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null stop_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_stop_handler";
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
  isa = v3[53].isa;
  v3[53].isa = v6;

LABEL_5:
}

void nw_framer_mark_ready(nw_framer_t framer)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    if ((BYTE6(v2[75].isa) & 0x10) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "nw_framer_mark_ready";
        v21 = 2080;
        v22 = &v2[76].isa + 1;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %s Already in the ready state", buf, 0x16u);
      }
    }

    else
    {
      BYTE6(v2[75].isa) |= 0x10u;
      isa = v2[42].isa;
      if (isa)
      {
        v4 = *(isa + 3);
        if (v4)
        {
          v5 = *(v4 + 40);
          if (!v5 || (v5(), (v6 = v2[42].isa) != 0) && (v4 = *(v6 + 3)) != 0)
          {
            v7 = *(v4 + 72);
            if (v7)
            {
              v7();
            }
          }
        }
      }
    }

    goto LABEL_13;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_framer_mark_ready";
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
        v20 = "nw_framer_mark_ready";
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
          v20 = "nw_framer_mark_ready";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_framer_mark_ready";
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
        v20 = "nw_framer_mark_ready";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v10)
  {
    free(v10);
  }

LABEL_13:
}

uint64_t nw_protocol_http_messaging_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_create";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v16, &type, &v26))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v19 = "%{public}s called with null endpoint";
LABEL_52:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }

LABEL_53:
      if (v16)
      {
        free(v16);
      }

      return 0;
    }

    if (v26 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v19 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v22 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v19 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v23 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v17, v18, v23, buf, 0x16u);
    }

LABEL_43:
    free(backtrace_string);
    goto LABEL_53;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_create";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v16, &type, &v26))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v19 = "%{public}s called with null parameters";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v26 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v19 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v24 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v19 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v24)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v23 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v6 = malloc_type_calloc(1uLL, 0x160uLL, 0x46D9C302uLL);
  v7 = v6;
  if (v6)
  {
    v6[20] = 0u;
    v6[21] = 0u;
    v6[18] = 0u;
    v6[19] = 0u;
    v6[16] = 0u;
    v6[17] = 0u;
    v6[14] = 0u;
    v6[15] = 0u;
    v6[12] = 0u;
    v6[13] = 0u;
    v6[10] = 0u;
    v6[11] = 0u;
    v6[8] = 0u;
    v6[9] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
LABEL_8:
    logging_disabled = _nw_parameters_get_logging_disabled(a4);
    if (logging_disabled)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(v7 + 172) = *(v7 + 172) & 0xFFFD | v12;
    if (!logging_disabled && gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_messaging_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 260;
        *&buf[22] = 2080;
        v29 = " ";
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v29 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __nw_protocol_http_messaging_create_block_invoke;
    aBlock[3] = &unk_1E6A3AE90;
    aBlock[4] = buf;
    *(v7 + 28) = _Block_copy(aBlock);
    _Block_object_dispose(buf, 8);
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    }

    *(v7 + 2) = &nw_protocol_http_messaging_identifier::protocol_identifier;
    if (nw_protocol_http_messaging_get_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_get_callbacks(void)::onceToken, &__block_literal_global_19_80494);
    }

    *(v7 + 3) = &nw_protocol_http_messaging_get_callbacks(void)::protocol_callbacks;
    *(v7 + 5) = v7;
    if (nw_protocol_http_messaging_get_listen_callbacks(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_http_messaging_get_listen_callbacks(void)::onceToken, &__block_literal_global_32_80495);
    }

    *(v7 + 8) = &nw_protocol_http_messaging_get_listen_callbacks(void)::listen_protocol_callbacks;
    *(v7 + 11) = v7;
    v13 = os_retain(a3);
    v14 = *(v7 + 120);
    if (v14)
    {
      if (*(v7 + 14))
      {
        v15 = v13;
        os_release(*(v7 + 14));
        v13 = v15;
        v14 = *(v7 + 120);
      }
    }

    *(v7 + 14) = v13;
    *(v7 + 120) = v14 | 1;
    *(v7 + 172) = *(v7 + 172) & 0xFFFE | _nw_parameters_get_server_mode(a4);
    return v7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_messaging_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v29 = 352;
  v8 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x130] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x60] = 0;
    MEMORY[0x68] = 0;
    MEMORY[0x70] = 0;
    MEMORY[0x78] = 0;
    MEMORY[0x90] = 0;
    MEMORY[0x88] = 0;
    MEMORY[0x80] = 0;
    MEMORY[0xA0] = 0;
    MEMORY[0xA8] = 0;
    MEMORY[0xB0] = 0;
    MEMORY[0xB8] = 0;
    MEMORY[0xC0] = 0;
    MEMORY[0xC8] = 0;
    MEMORY[0xD0] = 0;
    MEMORY[0xD8] = 0;
    MEMORY[0xF8] = 0;
    MEMORY[0xF0] = 0;
    MEMORY[0xE8] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_create";
    v10 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v10);
    if (!result)
    {
      free(v10);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_http_messaging_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v18, &type, &v47))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null protocol";
      goto LABEL_113;
    }

    if (v47 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_113;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type;
    v42 = os_log_type_enabled(v40, type);
    if (backtrace_string)
    {
      if (!v42)
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v51 = 2082;
      v52 = backtrace_string;
      v30 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_76;
    }

    if (!v42)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v21 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_113;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v18, &type, &v47))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null http_messaging";
      goto LABEL_113;
    }

    if (v47 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_113;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type;
    v43 = os_log_type_enabled(v40, type);
    if (backtrace_string)
    {
      if (!v43)
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v51 = 2082;
      v52 = backtrace_string;
      v30 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
      goto LABEL_76;
    }

    if (!v43)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v21 = "%{public}s called with null http_messaging, no backtrace";
    goto LABEL_113;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v18, &type, &v47))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null input_protocol";
      goto LABEL_113;
    }

    if (v47 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_113;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type;
    v44 = os_log_type_enabled(v40, type);
    if (backtrace_string)
    {
      if (!v44)
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v51 = 2082;
      v52 = backtrace_string;
      v30 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_76;
    }

    if (!v44)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v21 = "%{public}s called with null input_protocol, no backtrace";
    goto LABEL_113;
  }

  if (*(handle + 19))
  {
    v4 = a1->handle;

    return nw_http_messaging_add_to_version_specific_protocol(v4, a2);
  }

  v6 = *(handle + 6);
  if (!v6)
  {
    v10 = a2;
    nw_protocol_set_input_handler(a1->handle, a2);
    *handle = *v10->flow_id;
    v11 = v10;
    parameters = nw_protocol_get_parameters(v10);
    if (parameters)
    {
      v13 = parameters;
      v14 = _nw_parameters_copy_protocol_options_with_level(v13, a1);

      if (v14)
      {
        v15 = v14;
        _nw_protocol_options_get_log_id_str(v15, handle + 260);

        os_release(v15);
        a2 = v11;
        if (v11->output_handler)
        {
LABEL_39:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v50 = "nw_protocol_http_messaging_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
          }

          return 1;
        }

LABEL_15:
        nw_protocol_set_output_handler(a2, a1);
        return 1;
      }

      __nwlog_obj();
      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v18 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v47 = 0;
      if (!__nwlog_fault(v18, &type, &v47))
      {
        goto LABEL_48;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null options";
        goto LABEL_113;
      }

      if (v47 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v46 = os_log_type_enabled(v40, type);
        if (backtrace_string)
        {
          if (!v46)
          {
            goto LABEL_34;
          }

          *buf = 136446466;
          v50 = "nw_protocol_http_messaging_add_input_handler";
          v51 = 2082;
          v52 = backtrace_string;
          v30 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_76:
          v31 = v40;
          v32 = v41;
          v33 = 22;
          goto LABEL_33;
        }

        if (!v46)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null options, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null options, backtrace limit exceeded";
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v18 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v47 = 0;
      if (!__nwlog_fault(v18, &type, &v47))
      {
        goto LABEL_48;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null parameters";
        goto LABEL_113;
      }

      if (v47 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v45 = os_log_type_enabled(v40, type);
        if (backtrace_string)
        {
          if (!v45)
          {
            goto LABEL_34;
          }

          *buf = 136446466;
          v50 = "nw_protocol_http_messaging_add_input_handler";
          v51 = 2082;
          v52 = backtrace_string;
          v30 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
          goto LABEL_76;
        }

        if (!v45)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null parameters, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null parameters, backtrace limit exceeded";
      }
    }

LABEL_113:
    v37 = v40;
    v38 = v41;
    v39 = 12;
    goto LABEL_47;
  }

  if (v6 != a2)
  {
    v8 = *(handle + 30);
    v7 = *(handle + 31);
    if (v8 >= v7)
    {
      v22 = *(handle + 29);
      v23 = v8 - v22;
      v24 = (v8 - v22) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v26 = v7 - v22;
      if (v26 >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v34 = 16 * v24;
      v35 = a2;
      *v34 = a2;
      *(v34 + 8) = 0;
      v9 = 16 * v24 + 16;
      memcpy(0, v22, v23);
      *(handle + 29) = 0;
      *(handle + 30) = v9;
      *(handle + 31) = 0;
      if (v22)
      {
        operator delete(v22);
      }

      a2 = v35;
    }

    else
    {
      *v8 = a2;
      *(v8 + 8) = 0;
      v9 = v8 + 16;
    }

    *(handle + 30) = v9;
    if (a2->output_handler)
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

  v16 = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v50 = "nw_protocol_http_messaging_add_input_handler";
  v51 = 2048;
  v17 = v16;
  v52 = v16;
  v18 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (!__nwlog_fault(v18, &type, &v47))
  {
    goto LABEL_48;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(gLogObj, type))
    {
      *buf = 136446466;
      v50 = "nw_protocol_http_messaging_add_input_handler";
      v51 = 2048;
      v52 = v17;
      v21 = "%{public}s Adding the same input handler more than once to messaging %p";
LABEL_46:
      v37 = v19;
      v38 = v20;
      v39 = 22;
LABEL_47:
      _os_log_impl(&dword_181A37000, v37, v38, v21, buf, v39);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  if (v47 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    v29 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        v50 = "nw_protocol_http_messaging_add_input_handler";
        v51 = 2048;
        v52 = v17;
        v21 = "%{public}s Adding the same input handler more than once to messaging %p, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_48;
    }

    if (!v29)
    {
LABEL_34:
      free(backtrace_string);
      goto LABEL_48;
    }

    *buf = 136446722;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v51 = 2048;
    v52 = v17;
    v53 = 2082;
    v54 = backtrace_string;
    v30 = "%{public}s Adding the same input handler more than once to messaging %p, dumping backtrace:%{public}s";
    v31 = v19;
    v32 = v20;
    v33 = 32;
LABEL_33:
    _os_log_impl(&dword_181A37000, v31, v32, v30, buf, v33);
    goto LABEL_34;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v20 = type;
  if (os_log_type_enabled(gLogObj, type))
  {
    *buf = 136446466;
    v50 = "nw_protocol_http_messaging_add_input_handler";
    v51 = 2048;
    v52 = v17;
    v21 = "%{public}s Adding the same input handler more than once to messaging %p, backtrace limit exceeded";
    goto LABEL_46;
  }

LABEL_48:
  if (v18)
  {
    free(v18);
  }

  return 0;
}
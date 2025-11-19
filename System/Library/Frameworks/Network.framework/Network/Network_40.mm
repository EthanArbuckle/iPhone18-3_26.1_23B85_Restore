uint64_t sub_181CF1404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, void *a7)
{
  v12 = a2 == -1;
  if (a2 == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  if (a5 >= 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5;
  }

  v19 = v14;
  v17 = sub_181D101A4(v13, v12, a3, a4, &v19);
  if (a6)
  {
    *a6 = v15;
  }

  if (a7)
  {
    *a7 = v16;
  }

  return v17 & 1;
}

uint64_t sub_181CF14BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    return sub_181F749D0(a1, a2);
  }

  return a1;
}

void nw_endpoint_flow_reset_is_leaf_handler(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v3[32] = v3[32] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_flow_reset_is_leaf_handler";
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
        v16 = "nw_endpoint_flow_reset_is_leaf_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null flow", buf, 0xCu);
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
          v16 = "nw_endpoint_flow_reset_is_leaf_handler";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_flow_reset_is_leaf_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_flow_reset_is_leaf_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_protocol_implementation_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    v6 = *(a1 + 40);
    if (v6 != &nw_protocol_ref_counted_handle)
    {
      if (v6 != &nw_protocol_ref_counted_additional_handle)
      {
        v7 = __nwlog_obj();
        *buf = 136446210;
        v55 = "nw_protocol_implementation_get_message_properties";
        v8 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (__nwlog_fault(v8, &type, &v52))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v9 = __nwlog_obj();
            v10 = type;
            if (os_log_type_enabled(v9, type))
            {
              *buf = 136446210;
              v55 = "nw_protocol_implementation_get_message_properties";
              _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v52 == 1)
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
                v55 = "nw_protocol_implementation_get_message_properties";
                v56 = 2082;
                v57 = backtrace_string;
                _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v8)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            if (v17)
            {
              *buf = 136446210;
              v55 = "nw_protocol_implementation_get_message_properties";
              _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v9 = __nwlog_obj();
            v18 = type;
            if (os_log_type_enabled(v9, type))
            {
              *buf = 136446210;
              v55 = "nw_protocol_implementation_get_message_properties";
              _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v8)
        {
LABEL_32:
          v11 = 0;
          goto LABEL_111;
        }

LABEL_31:
        free(v8);
        goto LABEL_32;
      }

      v5 = *(a1 + 64);
    }

    v11 = (v5 + 96);
    v12 = *(v5 + 104);
    if (v12)
    {
      if (*(v12 + 80))
      {
        if (!a3)
        {
LABEL_111:

          return;
        }

        if (*(v12 + 64) != 3)
        {
LABEL_108:
          v50 = *(v5 + 192);
          if (!v50)
          {
            LODWORD(v50) = -1;
          }

          *a3 = v50;
          v51 = a3[1] & 0xFFFFFFFC | (*(v5 + 506) >> 7);
          a3[1] = v51;
          a3[1] = v51 & 0xFFFFFFF9 | (*(*(v5 + 104) + 192) >> 1) & 4;
          goto LABEL_111;
        }

        if (a2)
        {
          v13 = *(a2 + 56);
          if (v13)
          {
            if ((*(v13 + 84) & 0x800) != 0)
            {
              v14 = a3[1] & 0xFFFFFFF8 | 1;
              *a3 = *(v13 + 76);
              a3[1] = v14;
              goto LABEL_111;
            }

            goto LABEL_108;
          }

LABEL_104:
          if ((*(v5 + 509) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v49 = gLogObj;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v55 = "nw_protocol_implementation_get_message_properties";
              v56 = 2082;
              v57 = (v5 + 511);
              v58 = 2080;
              v59 = " ";
              v60 = 2048;
              v61 = a2;
              _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
            }
          }

          goto LABEL_108;
        }

        v39 = __nwlog_obj();
        *buf = 136446210;
        v55 = "__nw_protocol_get_output_handler_context";
        v40 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (__nwlog_fault(v40, &type, &v52))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              *buf = 136446210;
              v55 = "__nw_protocol_get_output_handler_context";
              _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v52 == 1)
          {
            v45 = __nw_create_backtrace_string();
            v41 = __nwlog_obj();
            v46 = type;
            v47 = os_log_type_enabled(v41, type);
            if (v45)
            {
              if (v47)
              {
                *buf = 136446466;
                v55 = "__nw_protocol_get_output_handler_context";
                v56 = 2082;
                v57 = v45;
                _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v45);
              goto LABEL_102;
            }

            if (v47)
            {
              *buf = 136446210;
              v55 = "__nw_protocol_get_output_handler_context";
              _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v41 = __nwlog_obj();
            v48 = type;
            if (os_log_type_enabled(v41, type))
            {
              *buf = 136446210;
              v55 = "__nw_protocol_get_output_handler_context";
              _os_log_impl(&dword_181A37000, v41, v48, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_102:
        if (v40)
        {
          free(v40);
        }

        goto LABEL_104;
      }

      v27 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_protocol_implementation_get_message_properties";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v24, &type, &v52))
      {
        goto LABEL_94;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v55 = "nw_protocol_implementation_get_message_properties";
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v35 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v25, type);
        if (v35)
        {
          if (v37)
          {
            *buf = 136446466;
            v55 = "nw_protocol_implementation_get_message_properties";
            v56 = 2082;
            v57 = v35;
            _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
          if (!v24)
          {
            goto LABEL_111;
          }

          goto LABEL_95;
        }

        if (v37)
        {
          *buf = 136446210;
          v55 = "nw_protocol_implementation_get_message_properties";
          _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v55 = "nw_protocol_implementation_get_message_properties";
          _os_log_impl(&dword_181A37000, v25, v44, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v23 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_protocol_implementation_get_message_properties";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v24, &type, &v52))
      {
        goto LABEL_94;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v55 = "nw_protocol_implementation_get_message_properties";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v32 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v33 = type;
        v34 = os_log_type_enabled(v25, type);
        if (v32)
        {
          if (v34)
          {
            *buf = 136446466;
            v55 = "nw_protocol_implementation_get_message_properties";
            v56 = 2082;
            v57 = v32;
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v32);
LABEL_94:
          if (!v24)
          {
            goto LABEL_111;
          }

LABEL_95:
          free(v24);
          goto LABEL_111;
        }

        if (v34)
        {
          *buf = 136446210;
          v55 = "nw_protocol_implementation_get_message_properties";
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v55 = "nw_protocol_implementation_get_message_properties";
          _os_log_impl(&dword_181A37000, v25, v43, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_94;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v55 = "nw_protocol_implementation_get_message_properties";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v20, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v55 = "nw_protocol_implementation_get_message_properties";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v21, type);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          v55 = "nw_protocol_implementation_get_message_properties";
          v56 = 2082;
          v57 = v29;
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_86;
      }

      if (v31)
      {
        *buf = 136446210;
        v55 = "nw_protocol_implementation_get_message_properties";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v55 = "nw_protocol_implementation_get_message_properties";
        _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_86:
  if (v20)
  {
    free(v20);
  }
}

uint64_t nw_parameters_copy_protocol_options(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = _nw_parameters_copy_protocol_options_with_level(v3, a2);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_copy_protocol_options";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_copy_protocol_options";
          v11 = "%{public}s called with null protocol_handle";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_copy_protocol_options";
          v11 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v20 = "nw_parameters_copy_protocol_options";
          v11 = "%{public}s called with null protocol_handle, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v16)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_copy_protocol_options";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null protocol_handle, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_copy_protocol_options";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_copy_protocol_options";
          v11 = "%{public}s called with null parameters";
LABEL_31:
          _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_copy_protocol_options";
          v11 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_parameters_copy_protocol_options";
          v11 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_copy_protocol_options";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

uint64_t in6_pseudo(unsigned __int16 *a1, unsigned __int16 *a2, int a3)
{
  v3 = *a1;
  v4 = *a1;
  if (v4 == 255)
  {
    if ((((v3 >> 8) & 0xF) != 2 || (BYTE1(v3) & 0xF0) == 48) && (BYTE1(v3) & 0xF) != 1)
    {
      goto LABEL_4;
    }
  }

  else if (v4 != 254 || (BYTE1(v3) & 0xC0) != 0x80)
  {
LABEL_4:
    v3 += a1[1];
  }

  v5 = *a2;
  v6 = v3 + a1[2] + a1[3] + a1[4] + a1[5] + a1[6] + a1[7] + v5;
  v7 = *a2;
  if (v7 != 255)
  {
    if (v7 == 254 && (BYTE1(v5) & 0xC0) == 0x80)
    {
      goto LABEL_25;
    }

LABEL_24:
    v6 += a2[1];
    goto LABEL_25;
  }

  v10 = ((v5 >> 8) & 0xF) != 2 || (BYTE1(v5) & 0xF0) == 48;
  if (v10 && (BYTE1(v5) & 0xF) != 1)
  {
    goto LABEL_24;
  }

LABEL_25:
  v11 = vaddvq_s32(vmovl_u16(*(a2 + 2))) + a2[6] + a2[7] + a3 + v6;
  return (((-65535 * HIWORD(v11) + v11) >> 16) + HIWORD(v11) + v11 + ((-65535 * ((-65535 * HIWORD(v11) + v11) >> 16) + -65535 * HIWORD(v11) + v11) >> 16));
}

uint64_t nw_protocol_options_is_quic_stream(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_is_quic_stream(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_is_quic_stream";
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
        v12 = "nw_protocol_options_is_quic_stream";
        v6 = "%{public}s called with null options";
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
            v12 = "nw_protocol_options_is_quic_stream";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_options_is_quic_stream";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_is_quic_stream";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
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

void nw_protocol_set_flow_id_from_protocol(_OWORD *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a1 = *a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_set_flow_id_from_protocol";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_set_flow_id_from_protocol";
        v5 = "%{public}s called with null from_protocol";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_set_flow_id_from_protocol";
        v5 = "%{public}s called with null from_protocol, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_set_flow_id_from_protocol";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null from_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_set_flow_id_from_protocol";
        v5 = "%{public}s called with null from_protocol, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_set_flow_id_from_protocol";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_set_flow_id_from_protocol";
      v5 = "%{public}s called with null protocol";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_set_flow_id_from_protocol";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_set_flow_id_from_protocol";
      v5 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_set_flow_id_from_protocol";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

uint64_t nw_protocol_instance_copy_path(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_copy_path";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v18, &type, &v35))
    {
LABEL_47:
      if (!v18)
      {
        goto LABEL_49;
      }

LABEL_48:
      free(v18);
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_path";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v35 != 1)
    {
      v19 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_path";
        _os_log_impl(&dword_181A37000, v19, v34, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_path";
        _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v33)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_instance_copy_path";
      v38 = 2082;
      v39 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v5 = v3[15];
  if (v5)
  {
    v6 = v5;
    v7 = v6;
    if ((v6[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v6[1]);
    }
  }

  if (a2 == -1)
  {
    v8 = *(v4 - 6);
    if (v8)
    {
      v9 = v8[3];
      if (v9)
      {
        v10 = *(v9 + 120);
        if (v10)
        {
          v11 = v8[5];
          v12 = *(v4 - 6);
          if (v11 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_37;
          }

          if (v11 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v12) = 0;
            v13 = 1;
            goto LABEL_54;
          }

          v12 = v8[8];
          if (v12)
          {
LABEL_37:
            v25 = v12[11];
            v13 = 0;
            if (v25)
            {
              v12[11] = v25 + 1;
            }

            LOBYTE(v12) = -1;
            goto LABEL_54;
          }

          v13 = 1;
          goto LABEL_54;
        }
      }
    }

    goto LABEL_49;
  }

  if (*(*(v4 + 1) + 64) != 3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_copy_path";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v18, &type, &v35))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_path";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null (flow == (_nw_protocol_default_flow))", buf, 0xCu);
      }

LABEL_46:

      goto LABEL_47;
    }

    if (v35 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v26 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_path";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null (flow == (_nw_protocol_default_flow)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v22 = type;
    v23 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_path";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null (flow == (_nw_protocol_default_flow)), no backtrace", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v23)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_instance_copy_path";
      v38 = 2082;
      v39 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null (flow == (_nw_protocol_default_flow)), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_30:

    free(backtrace_string);
    if (!v18)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  node = nw_hash_table_get_node(*(v4 + 29), a2, 8);
  if (!node)
  {
    if ((v4[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_instance_copy_path";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        v42 = 2048;
        v43 = a2;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot access path, flow %llx does not exist", buf, 0x2Au);
      }
    }

    goto LABEL_49;
  }

  v8 = *(node + 16);
  if (!v8 || (v15 = v8[3]) == 0 || (v10 = *(v15 + 120)) == 0)
  {
LABEL_49:
    v27 = 0;
    goto LABEL_56;
  }

  v16 = v8[5];
  v12 = v8;
  if (v16 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_51;
  }

  if (v16 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v12) = 0;
    v13 = 1;
    goto LABEL_54;
  }

  v12 = v8[8];
  if (v12)
  {
LABEL_51:
    v28 = v12[11];
    v13 = 0;
    if (v28)
    {
      v12[11] = v28 + 1;
    }

    LOBYTE(v12) = -1;
    goto LABEL_54;
  }

  v13 = 1;
LABEL_54:
  *buf = v8;
  buf[8] = v12;
  v27 = v10();
  if ((v13 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(buf);
  }

LABEL_56:

  return v27;
}

void sub_181CF36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v8 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_instance_access_globals(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_instance_access_globals";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v39 != 1)
    {
      v13 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v34, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_87;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v25)
    {
      *buf = 136446466;
      v42 = "nw_protocol_instance_access_globals";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_57:

    free(backtrace_string);
    goto LABEL_88;
  }

  if (!v4)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_instance_access_globals";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null access_block", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v39 != 1)
    {
      v13 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v35, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_87;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v27)
    {
      *buf = 136446466;
      v42 = "nw_protocol_instance_access_globals";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  v6 = v3[1];
  if (!v6)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_instance_access_globals";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v39 != 1)
    {
      v13 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_87;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v28 = type;
    v29 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v29)
    {
      *buf = 136446466;
      v42 = "nw_protocol_instance_access_globals";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!v3[6])
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_instance_access_globals";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null instance->parameters", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v39 != 1)
    {
      v13 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v37, "%{public}s called with null instance->parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_87;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v30 = type;
    v31 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v31)
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v30, "%{public}s called with null instance->parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v31)
    {
      *buf = 136446466;
      v42 = "nw_protocol_instance_access_globals";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v30, "%{public}s called with null instance->parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  v7 = v3[15];
  if (v7)
  {
    globals_for_protocol = nw_context_get_globals_for_protocol(v7, v6);
    v9 = v5[2](v5, globals_for_protocol);
    goto LABEL_7;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_protocol_instance_access_globals";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v12, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null instance->context", buf, 0xCu);
      }

LABEL_87:

      goto LABEL_88;
    }

    if (v39 != 1)
    {
      v13 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v38, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_87;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        v42 = "nw_protocol_instance_access_globals";
        _os_log_impl(&dword_181A37000, v13, v32, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_87;
    }

    if (v33)
    {
      *buf = 136446466;
      v42 = "nw_protocol_instance_access_globals";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v32, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

LABEL_88:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

uint64_t nw_protocol_instance_get_level(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 15);
    if (v3)
    {
      v4 = v3;
      v5 = v4;
      if ((v4[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v4[1]);
      }
    }

    v6 = v2[94];
    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_instance_get_level";
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
        v19 = "nw_protocol_instance_get_level";
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
          v19 = "nw_protocol_instance_get_level";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_get_level";
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
        v19 = "nw_protocol_instance_get_level";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_7:

  return v6;
}

id nw_protocol_instance_copy_options(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[15];
    if (v5)
    {
      v6 = v5;
      v7 = v6;
      if ((v6[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v6[1]);
      }
    }

    if (a2 != -1 && *(v4[1] + 64) == 3)
    {
      node = nw_hash_table_get_node(v4[29], a2, 8);
      if (node)
      {
        v9 = *(node + 40);
LABEL_12:
        v10 = v9;
        goto LABEL_13;
      }

LABEL_11:
      v9 = v4[7];
      goto LABEL_12;
    }

    if (a2 == -1)
    {
      goto LABEL_11;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_copy_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v13, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_protocol_instance_copy_options";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null (flow == (_nw_protocol_default_flow))", buf, 0xCu);
        }

LABEL_45:

        goto LABEL_46;
      }

      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_protocol_instance_copy_options";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null (flow == (_nw_protocol_default_flow)), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_45;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v28 = "nw_protocol_instance_copy_options";
          _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null (flow == (_nw_protocol_default_flow)), no backtrace", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v23)
      {
        *buf = 136446466;
        v28 = "nw_protocol_instance_copy_options";
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null (flow == (_nw_protocol_default_flow)), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_36;
    }
  }

  else
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_copy_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v13, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_protocol_instance_copy_options";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_protocol_instance_copy_options";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_45;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v28 = "nw_protocol_instance_copy_options";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v20)
      {
        *buf = 136446466;
        v28 = "nw_protocol_instance_copy_options";
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_36:

      free(backtrace_string);
    }
  }

LABEL_46:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

uint64_t nw_quic_connection_get_initial_packet_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_packet_size = _nw_quic_connection_get_initial_packet_size(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_packet_size";
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
        v14 = "nw_quic_connection_get_initial_packet_size";
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
            v14 = "nw_quic_connection_get_initial_packet_size";
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
        v14 = "nw_quic_connection_get_initial_packet_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_packet_size";
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

  initial_packet_size = 0;
LABEL_3:

  return initial_packet_size;
}

uint64_t _nw_quic_connection_get_max_udp_payload_sizeTm(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v4 = sub_181AA8420(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4 + 128);
  v6 = v4;
  swift_beginAccess();
  v7 = *(v6 + v5);

  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + *a2);

  return v8;
}

uint64_t nw_quic_connection_get_source_connection_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_source_connection_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_source_connection_id";
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
        v14 = "nw_quic_connection_get_source_connection_id";
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
            v14 = "nw_quic_connection_get_source_connection_id";
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
        v14 = "nw_quic_connection_get_source_connection_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_source_connection_id";
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

id _nw_quic_connection_get_source_connection_idTm(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v7 = sub_181AA8420(a1);
  if (v7 && (v8 = *(*v7 + 128), v9 = v7, swift_beginAccess(), v10 = *(v9 + v8), , , v10))
  {
    v11 = *a2;
    swift_beginAccess();
    sub_181AB5D28(v10 + v11, v6, &unk_1EA8394B0);

    v12 = sub_182AD2868();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v6, 1, v12);
    v15 = 0;
    if (v14 != 1)
    {
      v16 = sub_182AD2808();
      (*(v13 + 8))(v6, v12);
      v15 = v16;
    }
  }

  else
  {
    v17 = sub_182AD2868();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v15 = 0;
  }

  return v15;
}

uint64_t nw_quic_connection_get_keepalive_count(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    keepalive_count = _nw_quic_connection_get_keepalive_count(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_keepalive_count";
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
        v14 = "nw_quic_connection_get_keepalive_count";
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
            v14 = "nw_quic_connection_get_keepalive_count";
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
        v14 = "nw_quic_connection_get_keepalive_count";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_keepalive_count";
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

  keepalive_count = 0;
LABEL_3:

  return keepalive_count;
}

uint64_t nw_quic_connection_get_enable_multipath(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    enable_multipath = _nw_quic_connection_get_enable_multipath(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_enable_multipath";
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
        v14 = "nw_quic_connection_get_enable_multipath";
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
            v14 = "nw_quic_connection_get_enable_multipath";
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
        v14 = "nw_quic_connection_get_enable_multipath";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_enable_multipath";
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

  enable_multipath = 0;
LABEL_3:

  return enable_multipath;
}

uint64_t _nw_quic_connection_get_enable_multipath(uint64_t a1)
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

      return (v6 >> 20) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_max_paths_per_interface(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    max_paths_per_interface = _nw_quic_connection_get_max_paths_per_interface(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_max_paths_per_interface";
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
        v14 = "nw_quic_connection_get_max_paths_per_interface";
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
            v14 = "nw_quic_connection_get_max_paths_per_interface";
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
        v14 = "nw_quic_connection_get_max_paths_per_interface";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_max_paths_per_interface";
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

  max_paths_per_interface = 0;
LABEL_3:

  return max_paths_per_interface;
}

uint64_t _nw_quic_connection_get_ack_delay_sizeTm(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v4 = sub_181AA8420(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4 + 128);
  v6 = v4;
  swift_beginAccess();
  v7 = *(v6 + v5);

  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + *a2);

  return v8;
}

uint64_t nw_quic_connection_get_stream_path_affinity(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    stream_path_affinity = _nw_quic_connection_get_stream_path_affinity(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_stream_path_affinity";
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
        v14 = "nw_quic_connection_get_stream_path_affinity";
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
            v14 = "nw_quic_connection_get_stream_path_affinity";
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
        v14 = "nw_quic_connection_get_stream_path_affinity";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_stream_path_affinity";
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

  stream_path_affinity = 0;
LABEL_3:

  return stream_path_affinity;
}

uint64_t _nw_quic_connection_get_stream_path_affinity_0(uint64_t a1)
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

  v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity);

  return v6;
}

uint64_t nw_quic_connection_copy_sec_protocol_options(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_copy_sec_protocol_options(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_copy_sec_protocol_options";
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
        v14 = "nw_quic_connection_copy_sec_protocol_options";
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
            v14 = "nw_quic_connection_copy_sec_protocol_options";
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
        v14 = "nw_quic_connection_copy_sec_protocol_options";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_copy_sec_protocol_options";
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

uint64_t _nw_quic_connection_copy_sec_protocol_options_0(uint64_t a1)
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
      v6 = *(v5 + 112);
      swift_unknownObjectRetain();

      if (v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  return result;
}

uint64_t nw_quic_connection_get_disable_spin_bit(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    disable_spin_bit = _nw_quic_connection_get_disable_spin_bit(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_disable_spin_bit";
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
        v14 = "nw_quic_connection_get_disable_spin_bit";
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
            v14 = "nw_quic_connection_get_disable_spin_bit";
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
        v14 = "nw_quic_connection_get_disable_spin_bit";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_spin_bit";
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

  disable_spin_bit = 0;
LABEL_3:

  return disable_spin_bit;
}

uint64_t _nw_quic_connection_get_disable_spin_bit(uint64_t a1)
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

      return (v6 >> 17) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_get_remote_transport_parameters(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v42 = *MEMORY[0x1E69E9840];
  v13 = a1;
  if ((nw_protocol_options_is_quic_connection(v13) & 1) == 0)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v17, &type, &v36))
    {
      goto LABEL_98;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v28 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v28)
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (!v28)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v39 = "nw_quic_get_remote_transport_parameters";
      v40 = 2082;
      v41 = backtrace_string;
      v29 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v20 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_96:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_97;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v17, &type, &v36))
    {
      goto LABEL_98;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_stream_data_bidirectional_local, backtrace limit exceeded";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v30 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v30)
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_stream_data_bidirectional_local, no backtrace";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (!v30)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v39 = "nw_quic_get_remote_transport_parameters";
      v40 = 2082;
      v41 = backtrace_string;
      v29 = "%{public}s called with null max_stream_data_bidirectional_local, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v20 = "%{public}s called with null max_stream_data_bidirectional_local";
    goto LABEL_96;
  }

  if (!a3)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v17, &type, &v36))
    {
      goto LABEL_98;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_stream_data_bidirectional_remote, backtrace limit exceeded";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v31 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v31)
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_stream_data_bidirectional_remote, no backtrace";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (!v31)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v39 = "nw_quic_get_remote_transport_parameters";
      v40 = 2082;
      v41 = backtrace_string;
      v29 = "%{public}s called with null max_stream_data_bidirectional_remote, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v20 = "%{public}s called with null max_stream_data_bidirectional_remote";
    goto LABEL_96;
  }

  if (!a4)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v17, &type, &v36))
    {
      goto LABEL_98;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_data, backtrace limit exceeded";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v32 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v32)
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_data, no backtrace";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (!v32)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v39 = "nw_quic_get_remote_transport_parameters";
      v40 = 2082;
      v41 = backtrace_string;
      v29 = "%{public}s called with null max_data, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v20 = "%{public}s called with null max_data";
    goto LABEL_96;
  }

  if (!a5)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v17, &type, &v36))
    {
      goto LABEL_98;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_data_unidirectional, backtrace limit exceeded";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v33 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v39 = "nw_quic_get_remote_transport_parameters";
          v20 = "%{public}s called with null max_data_unidirectional, no backtrace";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (!v33)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v39 = "nw_quic_get_remote_transport_parameters";
      v40 = 2082;
      v41 = backtrace_string;
      v29 = "%{public}s called with null max_data_unidirectional, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v20 = "%{public}s called with null max_data_unidirectional";
    goto LABEL_96;
  }

  if (!a6)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_quic_get_remote_transport_parameters";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v17, &type, &v36))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v39 = "nw_quic_get_remote_transport_parameters";
      v20 = "%{public}s called with null max_streams_bidirectional";
      goto LABEL_96;
    }

    if (v36 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v39 = "nw_quic_get_remote_transport_parameters";
        v20 = "%{public}s called with null max_streams_bidirectional, backtrace limit exceeded";
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v34 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v39 = "nw_quic_get_remote_transport_parameters";
        v20 = "%{public}s called with null max_streams_bidirectional, no backtrace";
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if (!v34)
    {
      goto LABEL_67;
    }

    *buf = 136446466;
    v39 = "nw_quic_get_remote_transport_parameters";
    v40 = 2082;
    v41 = backtrace_string;
    v29 = "%{public}s called with null max_streams_bidirectional, dumping backtrace:%{public}s";
LABEL_66:
    _os_log_impl(&dword_181A37000, v18, v19, v29, buf, 0x16u);
LABEL_67:

    free(backtrace_string);
    goto LABEL_98;
  }

  if (a7)
  {
    remote_transport_parameters = _nw_quic_get_remote_transport_parameters(v13, a2, a3, a4, a5, a6, a7);
    goto LABEL_9;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_quic_get_remote_transport_parameters";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v17, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v39 = "nw_quic_get_remote_transport_parameters";
        v20 = "%{public}s called with null max_streams_unidirectional";
        goto LABEL_96;
      }

LABEL_97:

      goto LABEL_98;
    }

    if (v36 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v39 = "nw_quic_get_remote_transport_parameters";
        v20 = "%{public}s called with null max_streams_unidirectional, backtrace limit exceeded";
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v35 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v35)
      {
        *buf = 136446210;
        v39 = "nw_quic_get_remote_transport_parameters";
        v20 = "%{public}s called with null max_streams_unidirectional, no backtrace";
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if (!v35)
    {
      goto LABEL_67;
    }

    *buf = 136446466;
    v39 = "nw_quic_get_remote_transport_parameters";
    v40 = 2082;
    v41 = backtrace_string;
    v29 = "%{public}s called with null max_streams_unidirectional, dumping backtrace:%{public}s";
    goto LABEL_66;
  }

LABEL_98:
  if (v17)
  {
    free(v17);
  }

  remote_transport_parameters = 0;
LABEL_9:

  return remote_transport_parameters;
}

uint64_t sub_181CF708C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v14 = sub_181AA8420(a1);
  if (!v14)
  {
    return 0;
  }

  v15 = *(*v14 + 128);
  v16 = v14;
  swift_beginAccess();
  v17 = *(v16 + v15);

  if (!v17)
  {
    return 0;
  }

  v18 = *(v17 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  v19 = (v18 >> 19) & 1;
  if ((v18 & 0x80000) != 0)
  {
    *a2 = v17[8];
    *a3 = v17[9];
    *a4 = v17[10];
    *a5 = v17[11];
    *a6 = v17[12];
    *a7 = v17[13];
  }

  return v19;
}

uint64_t nw_quic_connection_get_probe_simultaneously(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    probe_simultaneously = _nw_quic_connection_get_probe_simultaneously(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_probe_simultaneously";
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
        v14 = "nw_quic_connection_get_probe_simultaneously";
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
            v14 = "nw_quic_connection_get_probe_simultaneously";
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
        v14 = "nw_quic_connection_get_probe_simultaneously";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_probe_simultaneously";
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

  probe_simultaneously = 0;
LABEL_3:

  return probe_simultaneously;
}

uint64_t _nw_quic_connection_get_probe_simultaneously(uint64_t a1)
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

      return (v6 >> 21) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_ignore_path_errors(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    ignore_path_errors = _nw_quic_connection_get_ignore_path_errors(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_ignore_path_errors";
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
        v14 = "nw_quic_connection_get_ignore_path_errors";
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
            v14 = "nw_quic_connection_get_ignore_path_errors";
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
        v14 = "nw_quic_connection_get_ignore_path_errors";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_ignore_path_errors";
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

  ignore_path_errors = 0;
LABEL_3:

  return ignore_path_errors;
}

uint64_t _nw_quic_connection_get_ignore_path_errorsTm(uint64_t a1)
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

      return (v6 >> 22) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_metadata_is_quic_connection(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_metadata_is_quic_connection(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_is_quic_connection";
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
        v12 = "nw_protocol_metadata_is_quic_connection";
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
            v12 = "nw_protocol_metadata_is_quic_connection";
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
        v12 = "nw_protocol_metadata_is_quic_connection";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_quic_connection";
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

void nw_quic_connection_set_max_data_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_data_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_max_data_handler";
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
        v15 = "nw_quic_connection_set_max_data_handler";
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
            v15 = "nw_quic_connection_set_max_data_handler";
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
        v15 = "nw_quic_connection_set_max_data_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_max_data_handler";
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

void _nw_quic_connection_set_max_data_handlerTm(uint64_t a1, void *aBlock, void (*a3)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  a3(a1, v5);

  _Block_release(v5);
}

void sub_181CF7DF0(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 72);
      *(v6 + 72) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_max_stream_data_bidirectional_local_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_bidirectional_local_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_max_stream_data_bidirectional_local_handler";
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
        v15 = "nw_quic_connection_set_max_stream_data_bidirectional_local_handler";
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
            v15 = "nw_quic_connection_set_max_stream_data_bidirectional_local_handler";
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
        v15 = "nw_quic_connection_set_max_stream_data_bidirectional_local_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_max_stream_data_bidirectional_local_handler";
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

void sub_181CF8190(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 80);
      *(v6 + 80) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_max_stream_data_bidirectional_remote_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_bidirectional_remote_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_max_stream_data_bidirectional_remote_handler";
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
        v15 = "nw_quic_connection_set_max_stream_data_bidirectional_remote_handler";
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
            v15 = "nw_quic_connection_set_max_stream_data_bidirectional_remote_handler";
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
        v15 = "nw_quic_connection_set_max_stream_data_bidirectional_remote_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_max_stream_data_bidirectional_remote_handler";
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

void sub_181CF8530(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 88);
      *(v6 + 88) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_max_stream_data_unidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_unidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_max_stream_data_unidirectional_handler";
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
        v15 = "nw_quic_connection_set_max_stream_data_unidirectional_handler";
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
            v15 = "nw_quic_connection_set_max_stream_data_unidirectional_handler";
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
        v15 = "nw_quic_connection_set_max_stream_data_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_max_stream_data_unidirectional_handler";
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

void sub_181CF88B8(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 96);
      *(v6 + 96) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_local_max_streams_bidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_max_streams_bidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_local_max_streams_bidirectional_handler";
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
        v15 = "nw_quic_connection_set_local_max_streams_bidirectional_handler";
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
            v15 = "nw_quic_connection_set_local_max_streams_bidirectional_handler";
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
        v15 = "nw_quic_connection_set_local_max_streams_bidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_max_streams_bidirectional_handler";
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

void sub_181CF8C70(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 184);
      *(v6 + 184) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_local_max_streams_bidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_local_max_streams_bidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_local_max_streams_bidirectional_handler";
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
        v15 = "nw_quic_connection_get_local_max_streams_bidirectional_handler";
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
            v15 = "nw_quic_connection_get_local_max_streams_bidirectional_handler";
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
        v15 = "nw_quic_connection_get_local_max_streams_bidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_local_max_streams_bidirectional_handler";
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

void sub_181CF9010(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 120);
      *(v6 + 120) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_local_max_streams_unidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_local_max_streams_unidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_local_max_streams_unidirectional_handler";
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
        v15 = "nw_quic_connection_get_local_max_streams_unidirectional_handler";
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
            v15 = "nw_quic_connection_get_local_max_streams_unidirectional_handler";
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
        v15 = "nw_quic_connection_get_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_local_max_streams_unidirectional_handler";
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

void sub_181CF9398(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 128);
      *(v6 + 128) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_remote_max_streams_bidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_remote_max_streams_bidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_remote_max_streams_bidirectional_handler";
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
        v15 = "nw_quic_connection_get_remote_max_streams_bidirectional_handler";
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
            v15 = "nw_quic_connection_get_remote_max_streams_bidirectional_handler";
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
        v15 = "nw_quic_connection_get_remote_max_streams_bidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_remote_max_streams_bidirectional_handler";
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

void sub_181CF9720(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 152);
      *(v6 + 152) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_remote_max_streams_unidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_remote_max_streams_unidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_remote_max_streams_unidirectional_handler";
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
        v15 = "nw_quic_connection_get_remote_max_streams_unidirectional_handler";
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
            v15 = "nw_quic_connection_get_remote_max_streams_unidirectional_handler";
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
        v15 = "nw_quic_connection_get_remote_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_remote_max_streams_unidirectional_handler";
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

void sub_181CF9AA8(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 160);
      *(v6 + 160) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_peer_idle_timeout_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_peer_idle_timeout_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_peer_idle_timeout_handler";
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
        v15 = "nw_quic_connection_get_peer_idle_timeout_handler";
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
            v15 = "nw_quic_connection_get_peer_idle_timeout_handler";
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
        v15 = "nw_quic_connection_get_peer_idle_timeout_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_peer_idle_timeout_handler";
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

void sub_181CF9E48(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 176);
      *(v6 + 176) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_keepalive_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_keepalive_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_keepalive_handler";
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
        v15 = "nw_quic_connection_get_keepalive_handler";
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
            v15 = "nw_quic_connection_get_keepalive_handler";
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
        v15 = "nw_quic_connection_get_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_keepalive_handler";
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

void nw_quic_connection_set_application_result_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_application_result_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_application_result_handler";
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
        v15 = "nw_quic_connection_set_application_result_handler";
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
            v15 = "nw_quic_connection_set_application_result_handler";
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
        v15 = "nw_quic_connection_set_application_result_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_application_result_handler";
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

void sub_181CFA480(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 208);
      *(v6 + 208) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_get_application_result_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_application_result_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_application_result_handler";
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
        v15 = "nw_quic_connection_get_application_result_handler";
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
            v15 = "nw_quic_connection_get_application_result_handler";
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
        v15 = "nw_quic_connection_get_application_result_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_application_result_handler";
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

void sub_181CFA820(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 216);
      *(v6 + 216) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_inject_packet_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_inject_packet_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_inject_packet_handler";
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
        v15 = "nw_quic_connection_inject_packet_handler";
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
            v15 = "nw_quic_connection_inject_packet_handler";
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
        v15 = "nw_quic_connection_inject_packet_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_inject_packet_handler";
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

void sub_181CFABC0(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 200);
      *(v6 + 200) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_quic_connection_set_link_flow_controlled_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_link_flow_controlled_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_link_flow_controlled_handler";
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
        v15 = "nw_quic_connection_set_link_flow_controlled_handler";
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
            v15 = "nw_quic_connection_set_link_flow_controlled_handler";
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
        v15 = "nw_quic_connection_set_link_flow_controlled_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_link_flow_controlled_handler";
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

void sub_181CFAF60(uint64_t a1, void *aBlock)
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
      v8 = *(v6 + 224);
      *(v6 + 224) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_context_cleanup_timer(NWConcrete_nw_context *a1)
{
  v1 = a1;
  v2 = *(v1 + 4);
  v3 = *(v2 + 8);
  v5 = nw_hash_table_count(*(v2 + 24), v4);
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
LABEL_11:

    return;
  }

  if (v3)
  {
    v9 = v5;
    v10 = __nwlog_obj(v5, v6);
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v11 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v11))
    {
      goto LABEL_16;
    }

    free(v11);
    v5 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else if (!v5)
  {
LABEL_8:
    v8 = *(v1 + 4);
    if (*v8)
    {
      nw_queue_cancel_source(*v8, v6);
      v8 = *(v1 + 4);
      *v8 = 0;
    }

    v8[4] = -1;
    goto LABEL_11;
  }

  v12 = __nwlog_obj(v5, v6);
  os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  v13 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v13))
  {
    free(v13);
    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
}

uint64_t nw_protocol_instance_get_multipath_service(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_instance_get_multipath_service";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v6, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_protocol_instance_get_multipath_service";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v14 == 1)
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
            v17 = "nw_protocol_instance_get_multipath_service";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v11)
        {
          *buf = 136446210;
          v17 = "nw_protocol_instance_get_multipath_service";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_protocol_instance_get_multipath_service";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_22;
  }

  v3 = *(v1 + 6);
  if (!v3)
  {
LABEL_22:
    multipath_service = 0;
    goto LABEL_23;
  }

  multipath_service = _nw_parameters_get_multipath_service(v3);
LABEL_23:

  return multipath_service;
}

BOOL nw_protocol_instance_get_logging_disabled(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);

    return nw_parameters_get_logging_disabled(v1);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_instance_get_logging_disabled";
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
        v14 = "nw_protocol_instance_get_logging_disabled";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
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
          v14 = "nw_protocol_instance_get_logging_disabled";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_get_logging_disabled";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_get_logging_disabled";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  return 1;
}

uint64_t nw_protocol_instance_get_sensitive_redacted(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);

    return nw_parameters_get_sensitive_redacted(v1);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_instance_get_sensitive_redacted";
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
        v14 = "nw_protocol_instance_get_sensitive_redacted";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
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
          v14 = "nw_protocol_instance_get_sensitive_redacted";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_get_sensitive_redacted";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_get_sensitive_redacted";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  return 1;
}

unint64_t nw_protocol_instance_copy_association(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5];
    if (v3)
    {
      v4 = nw_endpoint_copy_association_with_evaluator(v3, v2[6], 0);
      goto LABEL_4;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_instance_copy_association";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_copy_association";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null instance->endpoint", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_copy_association";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null instance->endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_copy_association";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null instance->endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_protocol_instance_copy_association";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null instance->endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_instance_copy_association";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_copy_association";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_copy_association";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_copy_association";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v14)
      {
        *buf = 136446466;
        v22 = "nw_protocol_instance_copy_association";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_4:

  return v4;
}

void nw_quic_access_token_on_queue(void *a1, void *a2)
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
        v4[2](v4, *cached_content_for_protocol);
      }

      else
      {
        v4[2](v4, 0);
      }

LABEL_8:

      goto LABEL_9;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_access_token_on_queue";
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
        v24 = "nw_quic_access_token_on_queue";
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
            v24 = "nw_quic_access_token_on_queue";
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
        v24 = "nw_quic_access_token_on_queue";
        v16 = "%{public}s called with null definition, no backtrace";
        goto LABEL_40;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_token_on_queue";
        v16 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_quic_access_token_on_queue";
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
        v24 = "nw_quic_access_token_on_queue";
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
            v24 = "nw_quic_access_token_on_queue";
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
        v24 = "nw_quic_access_token_on_queue";
        v11 = "%{public}s called with null association, no backtrace";
        goto LABEL_34;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_token_on_queue";
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

BOOL nw_protocol_instance_supports_multipath(NWConcrete_nw_protocol_instance *a1)
{
  v1 = a1;
  upper_transport_protocol = nw_parameters_get_upper_transport_protocol(v1->destroy_timer);
  quic_migration_enabled = nw_settings_get_quic_migration_enabled();
  v4 = (*(v1->parent_definition + 192) & 0x10) != 0 && (nw_parameters_get_multipath(v1->destroy_timer) | (upper_transport_protocol == 253 && quic_migration_enabled)) == 1 && v1->parent_definition->extended_state->var27 != 0;

  return v4;
}

uint64_t nw_protocol_implementation_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v7 = __nwlog_obj();
        *buf = 136446210;
        v47 = "nw_protocol_implementation_add_listen_handler";
        v8 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (__nwlog_fault(v8, &type, &v44))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v9 = __nwlog_obj();
            v10 = type;
            if (os_log_type_enabled(v9, type))
            {
              *buf = 136446210;
              v47 = "nw_protocol_implementation_add_listen_handler";
              _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v44 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v9 = __nwlog_obj();
            v19 = type;
            v20 = os_log_type_enabled(v9, type);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                v47 = "nw_protocol_implementation_add_listen_handler";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v8)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }

            if (v20)
            {
              *buf = 136446210;
              v47 = "nw_protocol_implementation_add_listen_handler";
              _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v9 = __nwlog_obj();
            v21 = type;
            if (os_log_type_enabled(v9, type))
            {
              *buf = 136446210;
              v47 = "nw_protocol_implementation_add_listen_handler";
              _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v8)
        {
LABEL_43:
          v11 = 0;
          v15 = 0;
          goto LABEL_44;
        }

LABEL_42:
        free(v8);
        goto LABEL_43;
      }

      v5 = *a1[1].flow_id;
    }

    v11 = &v5[1].output_handler;
    v12 = v5[1].handle;
    if (v12)
    {
      if (v12[10])
      {
        v13 = SBYTE5(v5[7].output_handler_context);
        if (!v5[1].output_handler_context)
        {
          if ((v13 & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v16 = gLogObj;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v47 = "nw_protocol_implementation_add_listen_handler";
              v48 = 2082;
              v49 = &v5[7].output_handler_context + 7;
              v50 = 2080;
              v51 = " ";
              _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdded protocol listen handler", buf, 0x20u);
            }
          }

          v5[1].output_handler_context = a2;
          a2->protocol_handler = v5;
          if (a3)
          {
            if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v17 = gLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                v47 = "nw_protocol_implementation_add_listen_handler";
                v48 = 2082;
                v49 = &v5[7].output_handler_context + 7;
                v50 = 2080;
                v51 = " ";
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sListen handler prohibits joining, removing instance", buf, 0x20u);
              }
            }

            BYTE4(v5[7].output_handler_context) |= 4u;
          }

          v15 = 1;
          goto LABEL_44;
        }

        if ((v13 & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v47 = "nw_protocol_implementation_add_listen_handler";
            v48 = 2082;
            v49 = &v5[7].output_handler_context + 7;
            v50 = 2080;
            v51 = " ";
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sAlready have a listen handler, ignoring add", buf, 0x20u);
          }
        }

        goto LABEL_17;
      }

      v31 = __nwlog_obj();
      *buf = 136446210;
      v47 = "nw_protocol_implementation_add_listen_handler";
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v44 = 0;
      if (!__nwlog_fault(v28, &type, &v44))
      {
LABEL_97:
        if (v28)
        {
          free(v28);
        }

LABEL_17:
        v15 = 0;
LABEL_44:

        return v15;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_add_listen_handler";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

LABEL_96:

        goto LABEL_97;
      }

      if (v44 != 1)
      {
        v29 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_add_listen_handler";
          _os_log_impl(&dword_181A37000, v29, v43, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_96;
      }

      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v29, type);
      if (!v36)
      {
        if (v40)
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_add_listen_handler";
          _os_log_impl(&dword_181A37000, v29, v39, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v40)
      {
        *buf = 136446466;
        v47 = "nw_protocol_implementation_add_listen_handler";
        v48 = 2082;
        v49 = v36;
        _os_log_impl(&dword_181A37000, v29, v39, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *buf = 136446210;
      v47 = "nw_protocol_implementation_add_listen_handler";
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v44 = 0;
      if (!__nwlog_fault(v28, &type, &v44))
      {
        goto LABEL_97;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_add_listen_handler";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v44 != 1)
      {
        v29 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_add_listen_handler";
          _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_96;
      }

      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v29, type);
      if (!v36)
      {
        if (v38)
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_add_listen_handler";
          _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (v38)
      {
        *buf = 136446466;
        v47 = "nw_protocol_implementation_add_listen_handler";
        v48 = 2082;
        v49 = v36;
        _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v36);
    goto LABEL_97;
  }

  v23 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_protocol_implementation_add_listen_handler";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v24, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v47 = "nw_protocol_implementation_add_listen_handler";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v25, type);
      if (v33)
      {
        if (v35)
        {
          *buf = 136446466;
          v47 = "nw_protocol_implementation_add_listen_handler";
          v48 = 2082;
          v49 = v33;
          _os_log_impl(&dword_181A37000, v25, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        goto LABEL_88;
      }

      if (v35)
      {
        *buf = 136446210;
        v47 = "nw_protocol_implementation_add_listen_handler";
        _os_log_impl(&dword_181A37000, v25, v34, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v47 = "nw_protocol_implementation_add_listen_handler";
        _os_log_impl(&dword_181A37000, v25, v41, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_88:
  if (v24)
  {
    free(v24);
  }

  return 0;
}

uint64_t sub_181CFCFF8(uint64_t a1)
{
  v2 = *(a1 + 104);

  if ((~v2 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 96);
  v5 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = &unk_1ED40FF50;
        v7 = &unk_1EA838DE0;
      }

      else
      {
        v6 = &qword_1ED40F830;
        v7 = &qword_1EA838AB0;
      }
    }

    else
    {
      v6 = &unk_1ED40F850;
      v7 = &unk_1EA838710;
    }

    goto LABEL_15;
  }

  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      v6 = qword_1ED40FB50;
      v7 = &unk_1EA838750;
    }

    else
    {
      v6 = &unk_1EA838AE0;
      v7 = &unk_1EA838DD0;
    }

LABEL_15:
    v8 = sub_181AA8428(v6, v7);
    goto LABEL_16;
  }

  if (v5 != 5)
  {
LABEL_2:

    return 0;
  }

  v8 = v2 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_16:
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 336);
  sub_181AACFF4(v4, v2);
  v11 = v10(ObjectType, v8);

  sub_181A53008(v4, v2);
  return v11;
}

uint64_t _nw_udp_create_options()
{
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED40FF68 + 1);
  v1 = unk_1ED40FF78;
  v2 = byte_1ED40FF80;
  v3 = xmmword_1ED40FF68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  swift_allocObject();
  v4 = sub_181CFD414(v3, v0, v1, v2, 0);
  sub_181F49A24(v0, v1, v2);
  return v4;
}

uint64_t sub_181CFD238(unsigned int a1, uint64_t a2, uint64_t a3, char a4, __int16 a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = v5 + *(*v5 + 128);
  *v14 = 256;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  *v14 = a5;
  *(v14 + 1) = HIBYTE(a5) & 1;
  return v5;
}

uint64_t _nw_udp_options_set_prefer_no_checksumTm(uint64_t a1, char a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  result = sub_181B4B228(a1, &unk_1EA838DF0, &unk_182AE7590, ProtocolOptions<>.udpOptions());
  if (result)
  {
    v7 = a3;
    sub_181CFD4C4(&v7, a2);
  }

  return result;
}

uint64_t sub_181CFD4C4(unsigned __int8 *a1, char a2)
{
  v19 = *a1;
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v3 = xmmword_1ED40FF68;
  v4 = *(&xmmword_1ED40FF68 + 1);
  v5 = unk_1ED40FF78;
  v6 = byte_1ED40FF80;
  swift_beginAccess();
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  *v26 = *(v2 + 16);
  v27 = v7;
  v28 = v8;
  v29 = v9;
  *v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v21 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v26, v22);
  v11 = v23;
  v10 = v24;
  v12 = v25;
  sub_181F49A24(v7, v8, v9);
  sub_181F49A24(v4, v5, v6);
  sub_181F48350(v11, v10, v12);
  result = sub_181F48350(v27, v28, v29);
  if (v21)
  {
    v14 = (v2 + *(*v2 + 128));
    result = swift_beginAccess();
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
      v16 = v15 & ~v19;
      if ((v15 & v19) == 0)
      {
        v16 = *v14;
      }

      if ((v15 & v19) == v19)
      {
        v17 = 0;
      }

      else
      {
        v17 = v19;
      }

      v18 = v17 | v15;
      if ((a2 & 1) == 0)
      {
        v18 = v16;
      }

      *v14 = v18;
      v14[1] = 0;
    }
  }

  return result;
}

uint64_t sub_181CFD65C(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    a2 = sub_181AA847C(a2);
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = 0;
      a2 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v7 = 0x2000000000000000;
        a2 = v8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v7 = 0x4000000000000000;
          a2 = v9;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v7 = 0x6000000000000000;
            a2 = v10;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v7 = 0x8000000000000000;
              a2 = v11;
            }

            else
            {
              v7 = v5 | 0xA000000000000000;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0xF000000000000007;
  }

  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a1 + 96) = a2;
  *(a1 + 104) = v7;
  sub_181A53008(v12, v13);
}

uint64_t nw_protocol_udp_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (nw_protocol_udp_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
    v4 = a4;
  }

  if (nw_protocol_udp_callbacks(void)::onceToken != -1)
  {
    v8 = v4;
    dispatch_once(&nw_protocol_udp_callbacks(void)::onceToken, &__block_literal_global_14);
    v4 = v8;
  }

  v5 = nw_protocol_new(184, v4, &nw_protocol_udp_identifier::identifier, nw_protocol_udp_callbacks(void)::callbacks);
  if (v5)
  {
    return v5 - 96;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_proxy_config_get_mode(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[38];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_mode";
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
        v15 = "nw_proxy_config_get_mode";
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
          v15 = "nw_proxy_config_get_mode";
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
        v15 = "nw_proxy_config_get_mode";
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
        v15 = "nw_proxy_config_get_mode";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

BOOL network_config_setting_exists(const char *a1)
{
  v1 = networkd_settings_copy_value_of_type(a1, 0);
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_181CFDB48()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 0;
  v0 = sub_182AD3048();
  v1 = nw_parameters_fillout_salted_hash((v0 + 32), &v3, 9);

  if (v1)
  {
    return sub_182AD3158();
  }

  else
  {
    return 0;
  }
}

void *_nw_endpoint_get_connected_flow_count(void *a1)
{
  v1 = a1;
  v2 = Endpoint.connectedFlowCount.getter();

  return v2;
}

void *Endpoint.connectedFlowCount.getter()
{
  if (*(v0 + OBJC_IVAR____TtC7Network8Endpoint_context))
  {
    v1 = OBJC_IVAR____TtC7Network8Endpoint_associations;
    swift_beginAccess();
    v2 = *(v0 + v1);
    v3 = *(v2 + 16);
    if (v3)
    {

      v5 = 0;
      v6 = 0;
      while (2)
      {
        v7 = 16 * v5 + 40;
        do
        {
          if (v3 == v5)
          {

            return v6;
          }

          if (v5 >= *(v2 + 16))
          {
            __break(1u);
            return result;
          }

          result = *(v2 + v7);
          v7 += 16;
          ++v5;
        }

        while (!result);
        result = nw_association_get_connected_flow_count(result);
        v8 = __CFADD__(v6, result);
        v6 = (v6 + result);
        if (!v8)
        {
          continue;
        }

        break;
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t nw_association_get_connected_flow_count(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_association_get_connected_flow_count";
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
          v18 = "nw_association_get_connected_flow_count";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null association", buf, 0xCu);
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
            v18 = "nw_association_get_connected_flow_count";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_association_get_connected_flow_count";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null association, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_association_get_connected_flow_count";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
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

  v3 = nw_path_parameters_copy_context(v1[2]);
  nw_context_assert_queue(v3);

  v4 = v2[6];
  if (!v4)
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v5 = *(v4 + 48);
LABEL_23:

  return v5;
}

uint64_t __nw_context_endpoint_get_active_instance_count_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = nw_hash_node_get_object(a2);
  v4 = v3;
  if (v3)
  {
    active_instance_count = _nw_endpoint_get_active_instance_count(v3);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_get_active_instance_count";
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
        v18 = "nw_endpoint_get_active_instance_count";
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
          v18 = "nw_endpoint_get_active_instance_count";
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
        v18 = "nw_endpoint_get_active_instance_count";
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
        v18 = "nw_endpoint_get_active_instance_count";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  active_instance_count = 0;
LABEL_3:

  *(*(*(a1 + 32) + 8) + 24) += active_instance_count;
  return 1;
}

uint64_t _nw_endpoint_get_active_instance_count(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_registrar];
  v2 = a1;
  if (v1)
  {
    v3 = swift_unknownObjectRetain();
    instance_count = nw_protocol_instance_registrar_get_instance_count(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    instance_count = 0;
  }

  return instance_count;
}

BOOL nw_resolver_set_interface_on_endpoint(void *a1, int a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v7 = nw_context_copy_implicit_context::implicit_context;
    v8 = nw_path_copy_interface_with_generation(v7, a2, 0);

    v9 = v8 != 0;
    if (v8)
    {
      nw_endpoint_set_interface(v6, v8);
LABEL_29:

      goto LABEL_30;
    }

    if (v5)
    {
      if ((v5[370] & 0x20) != 0)
      {
        goto LABEL_29;
      }

      if (v5[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        v11 = v6;
        v12 = v11;
        if (v11)
        {
          logging_description = _nw_endpoint_get_logging_description(v11);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v25 = 136446978;
        v26 = "nw_resolver_set_interface_on_endpoint";
        v27 = 2082;
        *v28 = v5 + 280;
        *&v28[8] = 2082;
        *&v28[10] = logging_description;
        *&v28[18] = 1024;
        v29 = a2;
        v21 = "%{public}s [C%{public}s] Not adding the endpoint %{public}s on interface %u to array due to invalid interface";
        v22 = v10;
        v23 = 38;
        goto LABEL_27;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v5 + 91);
        v18 = v6;
        v19 = v18;
        if (v18)
        {
          v20 = _nw_endpoint_get_logging_description(v18);
        }

        else
        {
          v20 = "<NULL>";
        }

        v25 = 136446978;
        v26 = "nw_resolver_set_interface_on_endpoint";
        v27 = 1024;
        *v28 = v17;
        *&v28[4] = 2082;
        *&v28[6] = v20;
        *&v28[14] = 1024;
        *&v28[16] = a2;
        v21 = "%{public}s [R%u] Not adding the endpoint %{public}s on interface %u to array due to invalid interface";
        v22 = v10;
        v23 = 34;
LABEL_27:
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v21, &v25, v23);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = v6;
        v15 = v14;
        if (v14)
        {
          v16 = _nw_endpoint_get_logging_description(v14);
        }

        else
        {
          v16 = "<NULL>";
        }

        v25 = 136446722;
        v26 = "nw_resolver_set_interface_on_endpoint";
        v27 = 2082;
        *v28 = v16;
        *&v28[8] = 1024;
        *&v28[10] = a2;
        v21 = "%{public}s Not adding the endpoint %{public}s on interface %u to array due to invalid interface";
        v22 = v10;
        v23 = 28;
        goto LABEL_27;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v9 = 1;
LABEL_30:

  return v9;
}

char *nw_path_is_flow_divert(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_flow_divert(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *_nw_path_is_flow_divert(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 72);
    LODWORD(v1) = *(v1 + 88);

    return (v1 || v3 == 4);
  }

  return result;
}

uint64_t nw_endpoint_flow_attach_socket_protocol(NWConcrete_nw_endpoint_handler *a1, nw_protocol *a2)
{
  v159 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = nw_endpoint_handler_copy_flow(v3);
  parameters = nw_endpoint_handler_copy_parameters(v3);
  if (nw_socket_protocol_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
  }

  v5 = nw_endpoint_handler_copy_endpoint(v3);
  internal = nw_protocol_create_internal(&nw_socket_protocol_identifier::identifier, v5, parameters, 1);

  if (internal)
  {
    if (nw_socket_protocol_identifier::onceToken[0] != -1)
    {
      dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
    }

    v7 = nw_protocol_definition_create_with_identifier(&nw_socket_protocol_identifier::identifier);
    v138 = v7;
    v8 = nw_parameters_copy_default_protocol_stack(parameters);
    v136 = v8;
    if (!*(v4 + 90))
    {
      v9 = v8;
      v10 = nw_protocol_stack_copy_transport_protocol(v8);
      nw_endpoint_handler_set_protocol_instance(v3, v10, v7, internal);

      v8 = v9;
    }

    v137 = nw_protocol_stack_copy_internet_protocol(v8);
    nw_endpoint_handler_set_protocol_instance(v3, v137, v7, internal);
    *(v4 + 114) = internal;
    os_unfair_lock_lock(v4 + 220);
    if (*(v4 + 90))
    {
      goto LABEL_29;
    }

    v11 = *(internal + 40);
    v12 = internal;
    if (v11 != &nw_protocol_ref_counted_handle)
    {
      if (v11 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v12) = 0;
LABEL_12:
        v13 = 0;
LABEL_26:
        *&buf[0].sa_len = internal;
        buf[0].sa_data[6] = v12;
        v25 = *(v4 + 728);
        if (v25)
        {
          nw::release_if_needed<nw_protocol *>(v4 + 90);
          v25 = *(v4 + 728);
        }

        *(v4 + 90) = internal;
        *(v4 + 728) = v13 | v25 & 0xFE;
        v7 = v138;
LABEL_29:
        os_unfair_lock_unlock(v4 + 220);
        if ((*(v4 + 225) & 0x80000000) != 0)
        {
LABEL_84:
          v51 = *(v4 + 119);
          if (!v51)
          {
            goto LABEL_128;
          }

          v52 = *(internal + 40);
          v53 = internal;
          if (v52 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_89;
          }

          if (v52 != &nw_protocol_ref_counted_additional_handle)
          {
            v54 = 1;
            goto LABEL_94;
          }

          v53 = *(internal + 64);
          if (v53)
          {
LABEL_89:
            v55 = *(v53 + 88);
            v54 = 0;
            if (v55)
            {
              *(v53 + 88) = v55 + 1;
            }
          }

          else
          {
            v54 = 1;
          }

          v52 = *(internal + 40);
LABEL_94:
          v56 = internal;
          if (v52 != &nw_protocol_ref_counted_handle)
          {
            if (v52 != &nw_protocol_ref_counted_additional_handle)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *&buf[0].sa_len = 136446210;
              *&buf[0].sa_data[2] = "nw_socket_set_flow_divert_token";
              v57 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              v148[0] = 0;
              if (!__nwlog_fault(v57, type, v148))
              {
                goto LABEL_114;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v58 = gLogObj;
                v59 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_114;
                }

                *&buf[0].sa_len = 136446210;
                *&buf[0].sa_data[2] = "nw_socket_set_flow_divert_token";
                v60 = "%{public}s called with null socket_handler";
              }

              else
              {
                if (v148[0] == 1)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v63 = gLogObj;
                  v64 = type[0];
                  v65 = os_log_type_enabled(gLogObj, type[0]);
                  if (backtrace_string)
                  {
                    if (v65)
                    {
                      *&buf[0].sa_len = 136446466;
                      *&buf[0].sa_data[2] = "nw_socket_set_flow_divert_token";
                      *&buf[0].sa_data[10] = 2082;
                      *&buf[0].sa_data[12] = backtrace_string;
                      _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", &buf[0].sa_len, 0x16u);
                    }

                    free(backtrace_string);
                  }

                  else if (v65)
                  {
                    *&buf[0].sa_len = 136446210;
                    *&buf[0].sa_data[2] = "nw_socket_set_flow_divert_token";
                    v60 = "%{public}s called with null socket_handler, no backtrace";
                    v66 = v63;
                    v67 = v64;
                    goto LABEL_113;
                  }

LABEL_114:
                  if (v57)
                  {
                    free(v57);
                  }

                  v7 = v138;
                  if ((v54 & 1) == 0)
                  {
LABEL_117:
                    v68 = *(internal + 40);
                    v69 = internal;
                    if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v69 = *(internal + 64)) != 0)
                    {
                      v70 = *(v69 + 88);
                      if (v70)
                      {
                        v71 = v70 - 1;
                        *(v69 + 88) = v71;
                        if (!v71)
                        {
                          v72 = *(v69 + 64);
                          if (v72)
                          {
                            *(v69 + 64) = 0;
                            v72[2](v72);
                            _Block_release(v72);
                          }

                          if (*(v69 + 72))
                          {
                            v73 = *(v69 + 64);
                            if (v73)
                            {
                              _Block_release(v73);
                            }
                          }

                          free(v69);
                        }
                      }
                    }
                  }

LABEL_128:
                  if (a2)
                  {
                    if (internal != a2)
                    {
                      v74 = *(internal + 24);
                      if (v74 && *v74)
                      {
                        if (nw_protocol_add_input_handler(internal, a2))
                        {
                          v75 = v137;
                          if ((*(v4 + 33) & 0x80000000) == 0)
                          {
                            v23 = 1;
LABEL_163:

                            goto LABEL_164;
                          }

                          v86 = *(internal + 40);
                          v87 = internal;
                          if (v86 == &nw_protocol_ref_counted_handle)
                          {
                            goto LABEL_199;
                          }

                          if (v86 != &nw_protocol_ref_counted_additional_handle)
                          {
                            v88 = 1;
                            goto LABEL_210;
                          }

                          v87 = *(internal + 64);
                          if (v87)
                          {
LABEL_199:
                            v107 = *(v87 + 88);
                            v88 = 0;
                            if (v107)
                            {
                              *(v87 + 88) = v107 + 1;
                            }
                          }

                          else
                          {
                            v88 = 1;
                          }

                          v86 = *(internal + 40);
LABEL_210:
                          v110 = internal;
                          if (v86 != &nw_protocol_ref_counted_handle)
                          {
                            if (v86 != &nw_protocol_ref_counted_additional_handle)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              *&buf[0].sa_len = 136446210;
                              *&buf[0].sa_data[2] = "nw_socket_is_multipath";
                              v111 = _os_log_send_and_compose_impl();
                              type[0] = OS_LOG_TYPE_ERROR;
                              v148[0] = 0;
                              if (__nwlog_fault(v111, type, v148))
                              {
                                if (type[0] == OS_LOG_TYPE_FAULT)
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v112 = gLogObj;
                                  v113 = type[0];
                                  if (os_log_type_enabled(gLogObj, type[0]))
                                  {
                                    *&buf[0].sa_len = 136446210;
                                    *&buf[0].sa_data[2] = "nw_socket_is_multipath";
                                    v114 = "%{public}s called with null socket_handler";
LABEL_225:
                                    v120 = v112;
                                    v121 = v113;
LABEL_226:
                                    _os_log_impl(&dword_181A37000, v120, v121, v114, &buf[0].sa_len, 0xCu);
                                  }
                                }

                                else if (v148[0] == 1)
                                {
                                  v116 = __nw_create_backtrace_string();
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v117 = gLogObj;
                                  v118 = type[0];
                                  v119 = os_log_type_enabled(gLogObj, type[0]);
                                  if (v116)
                                  {
                                    if (v119)
                                    {
                                      *&buf[0].sa_len = 136446466;
                                      *&buf[0].sa_data[2] = "nw_socket_is_multipath";
                                      *&buf[0].sa_data[10] = 2082;
                                      *&buf[0].sa_data[12] = v116;
                                      _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", &buf[0].sa_len, 0x16u);
                                    }

                                    free(v116);
                                    goto LABEL_227;
                                  }

                                  if (v119)
                                  {
                                    *&buf[0].sa_len = 136446210;
                                    *&buf[0].sa_data[2] = "nw_socket_is_multipath";
                                    v114 = "%{public}s called with null socket_handler, no backtrace";
                                    v120 = v117;
                                    v121 = v118;
                                    goto LABEL_226;
                                  }
                                }

                                else
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v112 = gLogObj;
                                  v113 = type[0];
                                  if (os_log_type_enabled(gLogObj, type[0]))
                                  {
                                    *&buf[0].sa_len = 136446210;
                                    *&buf[0].sa_data[2] = "nw_socket_is_multipath";
                                    v114 = "%{public}s called with null socket_handler, backtrace limit exceeded";
                                    goto LABEL_225;
                                  }
                                }
                              }

LABEL_227:
                              if (v111)
                              {
                                free(v111);
                              }

                              LOBYTE(v115) = 0;
                              goto LABEL_230;
                            }

                            v110 = *(internal + 64);
                          }

                          v115 = (*(v110 + 415) >> 1) & 1;
LABEL_230:
                          if ((v88 & 1) == 0)
                          {
                            v122 = *(internal + 40);
                            if (v122 == &nw_protocol_ref_counted_handle || v122 == &nw_protocol_ref_counted_additional_handle && (internal = *(internal + 64)) != 0)
                            {
                              v123 = *(internal + 88);
                              if (v123)
                              {
                                v124 = v123 - 1;
                                *(internal + 88) = v124;
                                if (!v124)
                                {
                                  v125 = *(internal + 64);
                                  if (v125)
                                  {
                                    *(internal + 64) = 0;
                                    v125[2](v125);
                                    _Block_release(v125);
                                  }

                                  if (*(internal + 72))
                                  {
                                    v126 = *(internal + 64);
                                    if (v126)
                                    {
                                      _Block_release(v126);
                                    }
                                  }

                                  free(internal);
                                }
                              }
                            }
                          }

                          if ((v115 & 1) == 0)
                          {
                            *(v4 + 33) &= ~0x80u;
                          }

                          v23 = 1;
                          v7 = v138;
                          goto LABEL_144;
                        }
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v80 = gLogObj;
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                        {
                          *&buf[0].sa_len = 136446466;
                          *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                          *&buf[0].sa_data[10] = 2048;
                          *&buf[0].sa_data[12] = internal;
                          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", &buf[0].sa_len, 0x16u);
                        }
                      }

                      v23 = 0;
LABEL_144:
                      v75 = v137;
                      goto LABEL_163;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v76 = gLogObj;
                    *&buf[0].sa_len = 136446466;
                    *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                    *&buf[0].sa_data[10] = 2048;
                    *&buf[0].sa_data[12] = a2;
                    v77 = _os_log_send_and_compose_impl();

                    v7 = v138;
                    type[0] = OS_LOG_TYPE_ERROR;
                    v148[0] = 0;
                    if (__nwlog_fault(v77, type, v148))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v78 = gLogObj;
                        v79 = type[0];
                        if (os_log_type_enabled(v78, type[0]))
                        {
                          *&buf[0].sa_len = 136446466;
                          *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                          *&buf[0].sa_data[10] = 2048;
                          *&buf[0].sa_data[12] = a2;
                          _os_log_impl(&dword_181A37000, v78, v79, "%{public}s Cannot add input handler %p to itself", &buf[0].sa_len, 0x16u);
                        }

LABEL_262:

                        goto LABEL_160;
                      }

                      if (v148[0] != 1)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v78 = gLogObj;
                        v85 = type[0];
                        if (os_log_type_enabled(v78, type[0]))
                        {
                          *&buf[0].sa_len = 136446466;
                          *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                          *&buf[0].sa_data[10] = 2048;
                          *&buf[0].sa_data[12] = a2;
                          _os_log_impl(&dword_181A37000, v78, v85, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", &buf[0].sa_len, 0x16u);
                        }

                        goto LABEL_262;
                      }

                      v81 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v82 = gLogObj;
                      v83 = type[0];
                      v84 = os_log_type_enabled(v82, type[0]);
                      if (v81)
                      {
                        if (v84)
                        {
                          *&buf[0].sa_len = 136446722;
                          *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                          *&buf[0].sa_data[10] = 2048;
                          *&buf[0].sa_data[12] = a2;
                          *&buf[1].sa_data[4] = 2082;
                          *&buf[1].sa_data[6] = v81;
                          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", &buf[0].sa_len, 0x20u);
                        }

                        free(v81);
                        v75 = v137;
                        if (!v77)
                        {
                          goto LABEL_162;
                        }

                        goto LABEL_161;
                      }

                      if (v84)
                      {
                        *&buf[0].sa_len = 136446466;
                        *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                        *&buf[0].sa_data[10] = 2048;
                        *&buf[0].sa_data[12] = a2;
                        _os_log_impl(&dword_181A37000, v82, v83, "%{public}s Cannot add input handler %p to itself, no backtrace", &buf[0].sa_len, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v127 = __nwlog_obj();
                    *&buf[0].sa_len = 136446210;
                    *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                    v77 = _os_log_send_and_compose_impl();

                    v7 = v138;
                    type[0] = OS_LOG_TYPE_ERROR;
                    v148[0] = 0;
                    if (!__nwlog_fault(v77, type, v148))
                    {
                      goto LABEL_160;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v78 = __nwlog_obj();
                      v128 = type[0];
                      if (os_log_type_enabled(v78, type[0]))
                      {
                        *&buf[0].sa_len = 136446210;
                        *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                        _os_log_impl(&dword_181A37000, v78, v128, "%{public}s called with null input_protocol", &buf[0].sa_len, 0xCu);
                      }

                      goto LABEL_262;
                    }

                    if (v148[0] != 1)
                    {
                      v78 = __nwlog_obj();
                      v133 = type[0];
                      if (os_log_type_enabled(v78, type[0]))
                      {
                        *&buf[0].sa_len = 136446210;
                        *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                        _os_log_impl(&dword_181A37000, v78, v133, "%{public}s called with null input_protocol, backtrace limit exceeded", &buf[0].sa_len, 0xCu);
                      }

                      goto LABEL_262;
                    }

                    v129 = __nw_create_backtrace_string();
                    v130 = __nwlog_obj();
                    v131 = type[0];
                    v132 = os_log_type_enabled(v130, type[0]);
                    if (v129)
                    {
                      if (v132)
                      {
                        *&buf[0].sa_len = 136446466;
                        *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                        *&buf[0].sa_data[10] = 2082;
                        *&buf[0].sa_data[12] = v129;
                        _os_log_impl(&dword_181A37000, v130, v131, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", &buf[0].sa_len, 0x16u);
                      }

                      v7 = v138;
                      free(v129);
                    }

                    else
                    {
                      if (v132)
                      {
                        *&buf[0].sa_len = 136446210;
                        *&buf[0].sa_data[2] = "nw_protocol_utilities_add_input_handler";
                        _os_log_impl(&dword_181A37000, v130, v131, "%{public}s called with null input_protocol, no backtrace", &buf[0].sa_len, 0xCu);
                      }

                      v7 = v138;
                    }
                  }

LABEL_160:
                  v75 = v137;
                  if (!v77)
                  {
LABEL_162:
                    v23 = 0;
                    goto LABEL_163;
                  }

LABEL_161:
                  free(v77);
                  goto LABEL_162;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v58 = gLogObj;
                v59 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_114;
                }

                *&buf[0].sa_len = 136446210;
                *&buf[0].sa_data[2] = "nw_socket_set_flow_divert_token";
                v60 = "%{public}s called with null socket_handler, backtrace limit exceeded";
              }

              v66 = v58;
              v67 = v59;
LABEL_113:
              _os_log_impl(&dword_181A37000, v66, v67, v60, &buf[0].sa_len, 0xCu);
              goto LABEL_114;
            }

            v56 = *(internal + 64);
          }

          v61 = *(v56 + 216);
          if (v61)
          {
            xpc_release(v61);
            *(v56 + 216) = 0;
          }

          *(v56 + 216) = xpc_retain(v51);
          v7 = v138;
          if ((v54 & 1) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_128;
        }

        v26 = *(v4 + 111);
        v27 = *(v4 + 35);
        v28 = *(internal + 40);
        v29 = internal;
        if (v28 == &nw_protocol_ref_counted_handle)
        {
          goto LABEL_34;
        }

        if (v28 != &nw_protocol_ref_counted_additional_handle)
        {
          v30 = 1;
          goto LABEL_39;
        }

        v29 = *(internal + 64);
        if (v29)
        {
LABEL_34:
          v31 = *(v29 + 88);
          v30 = 0;
          if (v31)
          {
            *(v29 + 88) = v31 + 1;
          }
        }

        else
        {
          v30 = 1;
        }

        v28 = *(internal + 40);
LABEL_39:
        v32 = internal;
        if (v28 != &nw_protocol_ref_counted_handle)
        {
          if (v28 != &nw_protocol_ref_counted_additional_handle)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *&buf[0].sa_len = 136446210;
            *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
            v33 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v148[0] = 0;
            if (!__nwlog_fault(v33, type, v148))
            {
              goto LABEL_69;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              v35 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_69;
              }

              *&buf[0].sa_len = 136446210;
              *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
              v36 = "%{public}s called with null socket_handler";
            }

            else
            {
              if (v148[0] == 1)
              {
                v39 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v40 = gLogObj;
                v41 = type[0];
                v42 = os_log_type_enabled(gLogObj, type[0]);
                if (v39)
                {
                  if (v42)
                  {
                    *&buf[0].sa_len = 136446466;
                    *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
                    *&buf[0].sa_data[10] = 2082;
                    *&buf[0].sa_data[12] = v39;
                    _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", &buf[0].sa_len, 0x16u);
                  }

                  free(v39);
                  goto LABEL_69;
                }

                if (!v42)
                {
LABEL_69:
                  if (v33)
                  {
                    free(v33);
                  }

                  goto LABEL_71;
                }

                *&buf[0].sa_len = 136446210;
                *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
                v36 = "%{public}s called with null socket_handler, no backtrace";
                v43 = v40;
                v44 = v41;
LABEL_68:
                _os_log_impl(&dword_181A37000, v43, v44, v36, &buf[0].sa_len, 0xCu);
                goto LABEL_69;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              v35 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_69;
              }

              *&buf[0].sa_len = 136446210;
              *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
              v36 = "%{public}s called with null socket_handler, backtrace limit exceeded";
            }

            v43 = v34;
            v44 = v35;
            goto LABEL_68;
          }

          v32 = *(internal + 64);
        }

        if (*(v32 + 284) != -1)
        {
          if ((*(v32 + 413) & 0x80) != 0)
          {
            goto LABEL_71;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v37 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          goto LABEL_64;
        }

        *type = MEMORY[0x1E69E9820];
        v144 = 0x40000000;
        v145 = __nw_socket_set_connected_fd_block_invoke;
        v146 = &__block_descriptor_tmp_67122;
        v147 = v32 + 96;
        if ((nw_fd_wrapper_get_fd(v26, type) & 1) == 0)
        {
          if ((*(v32 + 413) & 0x80) != 0)
          {
            goto LABEL_71;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v37 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

LABEL_64:
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
          *&buf[0].sa_data[10] = 2082;
          *&buf[0].sa_data[12] = v32 + 420;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Socket protocol already has valid fd", &buf[0].sa_len, 0x16u);
LABEL_71:
          if ((v30 & 1) == 0)
          {
            v45 = *(internal + 40);
            v46 = internal;
            if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = *(internal + 64)) != 0)
            {
              v47 = *(v46 + 88);
              if (v47)
              {
                v48 = v47 - 1;
                *(v46 + 88) = v48;
                if (!v48)
                {
                  v49 = *(v46 + 64);
                  if (v49)
                  {
                    *(v46 + 64) = 0;
                    v49[2](v49);
                    _Block_release(v49);
                  }

                  if (*(v46 + 72))
                  {
                    v50 = *(v46 + 64);
                    if (v50)
                    {
                      _Block_release(v50);
                    }
                  }

                  free(v46);
                }
              }
            }
          }

          v7 = v138;
          goto LABEL_84;
        }

        if (v26)
        {
          v38 = os_retain(v26);
        }

        else
        {
          v38 = 0;
        }

        v90 = *(v32 + 184);
        if ((v90 & 1) != 0 && *(v32 + 176))
        {
          v91 = v38;
          os_release(*(v32 + 176));
          v38 = v91;
          v90 = *(v32 + 184);
        }

        *(v32 + 176) = v38;
        *(v32 + 184) = v90 | 1;
        *(v32 + 292) &= ~0x800u;
        if ((v27 & 0x40) != 0)
        {
          if ((nw_fd_wrapper_guard(v38) & 1) == 0 && (*(v32 + 413) & 0x80) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v98 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *&buf[0].sa_len = 136446466;
              *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
              *&buf[0].sa_data[10] = 2082;
              *&buf[0].sa_data[12] = v32 + 420;
              v94 = "%{public}s %{public}s Failed to guard socket fd";
              v95 = v98;
              v96 = OS_LOG_TYPE_ERROR;
              v97 = 22;
              goto LABEL_182;
            }
          }
        }

        else if ((*(v32 + 413) & 0x80) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v92 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
          {
            v93 = *(v32 + 284);
            *&buf[0].sa_len = 136446722;
            *&buf[0].sa_data[2] = "nw_socket_set_connected_fd";
            *&buf[0].sa_data[10] = 2082;
            *&buf[0].sa_data[12] = v32 + 420;
            *&buf[1].sa_data[4] = 1024;
            *&buf[1].sa_data[6] = v93;
            v94 = "%{public}s %{public}s Not guarding connected fd %d";
            v95 = v92;
            v96 = OS_LOG_TYPE_DEFAULT;
            v97 = 28;
LABEL_182:
            _os_log_impl(&dword_181A37000, v95, v96, v94, &buf[0].sa_len, v97);
          }
        }

        *(v32 + 413) |= 4u;
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        memset(buf, 0, sizeof(buf));
        v142 = 128;
        if (!getsockname(*(v32 + 284), buf, &v142))
        {
          *(v32 + 416) = buf[0].sa_family;
          goto LABEL_71;
        }

        v135 = v30;
        v99 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *v148 = 136446466;
        v149 = "nw_socket_set_connected_fd";
        v150 = 1024;
        v151 = v99;
        v100 = _os_log_send_and_compose_impl();
        v141 = OS_LOG_TYPE_ERROR;
        v140 = 0;
        if (__nwlog_fault(v100, &v141, &v140))
        {
          if (v141 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v101 = gLogObj;
            v102 = v141;
            if (!os_log_type_enabled(gLogObj, v141))
            {
              goto LABEL_206;
            }

            *v148 = 136446466;
            v149 = "nw_socket_set_connected_fd";
            v150 = 1024;
            v151 = v99;
            v103 = "%{public}s getsockname failed %{darwin.errno}d";
LABEL_204:
            v108 = v101;
            v109 = v102;
LABEL_205:
            _os_log_impl(&dword_181A37000, v108, v109, v103, v148, 0x12u);
            goto LABEL_206;
          }

          if (v140 != 1)
          {
            v101 = __nwlog_obj();
            v102 = v141;
            if (!os_log_type_enabled(v101, v141))
            {
              goto LABEL_206;
            }

            *v148 = 136446466;
            v149 = "nw_socket_set_connected_fd";
            v150 = 1024;
            v151 = v99;
            v103 = "%{public}s getsockname failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_204;
          }

          v104 = __nw_create_backtrace_string();
          v105 = __nwlog_obj();
          v134 = v141;
          v106 = os_log_type_enabled(v105, v141);
          if (v104)
          {
            if (v106)
            {
              *v148 = 136446722;
              v149 = "nw_socket_set_connected_fd";
              v150 = 1024;
              v151 = v99;
              v152 = 2082;
              v153 = v104;
              _os_log_impl(&dword_181A37000, v105, v134, "%{public}s getsockname failed %{darwin.errno}d, dumping backtrace:%{public}s", v148, 0x1Cu);
            }

            free(v104);
            goto LABEL_206;
          }

          if (v106)
          {
            *v148 = 136446466;
            v149 = "nw_socket_set_connected_fd";
            v150 = 1024;
            v151 = v99;
            v103 = "%{public}s getsockname failed %{darwin.errno}d, no backtrace";
            v108 = v105;
            v109 = v134;
            goto LABEL_205;
          }
        }

LABEL_206:
        v30 = v135;
        if (v100)
        {
          free(v100);
        }

        goto LABEL_71;
      }

      v12 = *(internal + 64);
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v24 = *(v12 + 88);
    if (v24)
    {
      *(v12 + 88) = v24 + 1;
    }

    v13 = 1;
    LOBYTE(v12) = -1;
    goto LABEL_26;
  }

  if (nw_endpoint_handler_get_logging_disabled(v3))
  {
    v23 = 0;
    goto LABEL_165;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v7 = gconnectionLogObj;
  if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
  {
    id_string = nw_endpoint_handler_get_id_string(v3);
    v15 = nw_endpoint_handler_dry_run_string(v3);
    v16 = nw_endpoint_handler_copy_endpoint(v3);
    v17 = v16;
    if (v16)
    {
      logging_description = _nw_endpoint_get_logging_description(v16);
      p_super = &v7->super;
    }

    else
    {
      p_super = &v7->super;
      logging_description = "<NULL>";
    }

    v20 = nw_endpoint_handler_state_string(v3);
    v21 = nw_endpoint_handler_mode_string(v3);
    v22 = nw_endpoint_handler_copy_current_path(v3);
    *&buf[0].sa_len = 136447746;
    *&buf[0].sa_data[2] = "nw_endpoint_flow_attach_socket_protocol";
    *&buf[0].sa_data[10] = 2082;
    *&buf[0].sa_data[12] = id_string;
    *&buf[1].sa_data[4] = 2082;
    *&buf[1].sa_data[6] = v15;
    *&buf[2].sa_len = 2082;
    *buf[2].sa_data = logging_description;
    *&buf[2].sa_data[8] = 2082;
    *&buf[2].sa_data[10] = v20;
    *&buf[3].sa_data[2] = 2082;
    *&buf[3].sa_data[4] = v21;
    *&buf[3].sa_data[12] = 2114;
    *&v155 = v22;
    v7 = p_super;
    _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not create socket protocol", &buf[0].sa_len, 0x48u);
  }

  v23 = 0;
LABEL_164:

LABEL_165:
  return v23;
}

uint64_t __nw_socket_protocol_identifier_block_invoke()
{
  byte_1EA83FB7F = 0;
  unk_1EA83FB77 = 0;
  unk_1EA83FB67 = 0u;
  strcpy(&nw_socket_protocol_identifier::identifier, "socket");
  qword_1EA83FB80 = 0x100000003;
  return nw_protocol_register_extended(&nw_socket_protocol_identifier::identifier, nw_protocol_socket_create);
}

void *nw_protocol_socket_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v3 = a3;
  if (nw_socket_protocol_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
    v3 = a3;
  }

  if (nw_socket_protocol_callbacks(void)::onceToken != -1)
  {
    v7 = v3;
    dispatch_once(&nw_socket_protocol_callbacks(void)::onceToken, &__block_literal_global_17_67176);
    v3 = v7;
  }

  v4 = nw_protocol_new(408, v3, &nw_socket_protocol_identifier::identifier, nw_socket_protocol_callbacks(void)::callbacks);
  v4[27] = 0;
  v4 += 27;
  *(v4 - 20) = 0;
  *(v4 - 152) &= ~1u;
  *(v4 - 17) = 0;
  *(v4 - 128) &= ~1u;
  *(v4 - 9) = 0;
  *(v4 - 64) &= ~1u;
  *(v4 - 7) = -1;
  *(v4 - 5) = 6159;
  v4[2] = 0;
  v4[3] = v4 + 2;
  v4[4] = 0;
  v4[5] = v4 + 4;
  v4[6] = 0;
  v4[7] = v4 + 6;
  v4[8] = 0;
  v4[9] = v4 + 8;
  v4[10] = 0;
  v4[11] = v4 + 10;
  v4[1] = v4;
  return v4 - 39;
}

void ___ZL28nw_socket_protocol_callbacksv_block_invoke()
{
  nw_socket_protocol_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_add_input_handler);
  nw_protocol_callbacks_set_replace_input_handler(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_replace_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_remove_input_handler);
  nw_protocol_callbacks_set_input_available(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_input_available);
  nw_protocol_callbacks_set_input_finished(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_input_finished);
  nw_protocol_callbacks_set_output_available(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_output_available);
  nw_protocol_callbacks_set_output_finished(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_output_finished);
  nw_protocol_callbacks_set_get_input_frames(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_finalize_output_frames);
  nw_protocol_callbacks_set_get_parameters(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_parameters);
  nw_protocol_callbacks_set_get_path(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_path);
  nw_protocol_callbacks_set_updated_path(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_updated_path);
  nw_protocol_callbacks_set_get_local_endpoint(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_local);
  nw_protocol_callbacks_set_get_remote_endpoint(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_remote);
  nw_protocol_callbacks_set_get_output_local_endpoint(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_output_local);
  nw_protocol_callbacks_set_get_output_interface(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_output_interface);
  nw_protocol_callbacks_set_waiting_for_output(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_waiting_for_output);
  nw_protocol_callbacks_set_connect(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_connect);
  nw_protocol_callbacks_set_disconnect(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_disconnect);
  nw_protocol_callbacks_set_error(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_error);
  nw_protocol_callbacks_set_reset(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_reset);
  nw_protocol_callbacks_set_copy_info(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_copy_info);
  nw_protocol_callbacks_set_register_notification(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_register_notification);
  nw_protocol_callbacks_set_unregister_notification(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_unregister_notification);
  nw_protocol_callbacks_set_notify(nw_socket_protocol_callbacks(void)::callbacks, nw_protocol_socket_notify);
  v0 = nw_socket_protocol_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_get_message_properties(v0, nw_protocol_socket_get_message_properties);
}

void ___ZL25nw_protocol_udp_callbacksv_block_invoke()
{
  nw_protocol_udp_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_add_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_remove_input_handler);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_finalize_output_frames);
  nw_protocol_callbacks_set_connected(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_connected);
  nw_protocol_callbacks_set_disconnected(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_disconnected);
  nw_protocol_callbacks_set_link_state(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_link_state);
  nw_protocol_callbacks_set_updated_path(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_updated_path);
  nw_protocol_callbacks_set_get_message_properties(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_get_message_properties);
  nw_protocol_callbacks_set_copy_info(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_copy_info);
  v0 = nw_protocol_udp_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_error(v0, nw_protocol_udp_error);
}

void *nw_mem_buffer_manager_initialize(NSObject *a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v165 = *MEMORY[0x1E69E9840];
  if (nw_mem_buffer_manager_init(void)::onceToken != -1)
  {
    dispatch_once(&nw_mem_buffer_manager_init(void)::onceToken, &__block_literal_global_66862);
  }

  if (use_malloc_memory == 1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x5E65A360uLL);
          if (v8)
          {
            goto LABEL_10;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v156 = "nw_mem_malloc_buffer_manager_initialize";
          v157 = 2048;
          *v158 = 1;
          *&v158[8] = 2048;
          *v159 = 160;
          v9 = _os_log_send_and_compose_impl();
          if (!__nwlog_should_abort(v9))
          {
            free(v9);
LABEL_10:
            v8[5] = a3;
            v8[6] = a4;
            v10 = v8 + 12;
            v11 = 64;
            v8[7] = a3;
            v8[8] = a4;
            while (1)
            {
              v12 = *a2;
              *v10 = v12;
              if (!v12)
              {
                return v8;
              }

              ++v10;
              ++a2;
              if (--v11 <= 1)
              {
                goto LABEL_132;
              }
            }
          }

LABEL_262:
          __break(1u);
        }

        __nwlog_obj();
        *buf = 136446210;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v84 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v153 = 0;
        if (__nwlog_fault(v84, type, &v153))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v85 = __nwlog_obj();
            v86 = type[0];
            if (!os_log_type_enabled(v85, type[0]))
            {
              goto LABEL_259;
            }

            *buf = 136446210;
            v156 = "nw_mem_malloc_buffer_manager_initialize";
            v87 = "%{public}s called with null (obj_cnt > 0)";
            goto LABEL_258;
          }

          if (v153 != 1)
          {
            v85 = __nwlog_obj();
            v86 = type[0];
            if (!os_log_type_enabled(v85, type[0]))
            {
              goto LABEL_259;
            }

            *buf = 136446210;
            v156 = "nw_mem_malloc_buffer_manager_initialize";
            v87 = "%{public}s called with null (obj_cnt > 0), backtrace limit exceeded";
            goto LABEL_258;
          }

          backtrace_string = __nw_create_backtrace_string();
          v85 = __nwlog_obj();
          v86 = type[0];
          v134 = os_log_type_enabled(v85, type[0]);
          if (!backtrace_string)
          {
            if (!v134)
            {
              goto LABEL_259;
            }

            *buf = 136446210;
            v156 = "nw_mem_malloc_buffer_manager_initialize";
            v87 = "%{public}s called with null (obj_cnt > 0), no backtrace";
            goto LABEL_258;
          }

          if (v134)
          {
            *buf = 136446466;
            v156 = "nw_mem_malloc_buffer_manager_initialize";
            v157 = 2082;
            *v158 = backtrace_string;
            v131 = "%{public}s called with null (obj_cnt > 0), dumping backtrace:%{public}s";
            goto LABEL_229;
          }

LABEL_230:
          free(backtrace_string);
          if (!v84)
          {
            return 0;
          }

          goto LABEL_260;
        }

LABEL_259:
        if (v84)
        {
LABEL_260:
          free(v84);
        }

        return 0;
      }

      __nwlog_obj();
      *buf = 136446210;
      v156 = "nw_mem_malloc_buffer_manager_initialize";
      v84 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v153 = 0;
      if (!__nwlog_fault(v84, type, &v153))
      {
        goto LABEL_259;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v86 = type[0];
        if (!os_log_type_enabled(v85, type[0]))
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v87 = "%{public}s called with null (obj_size > 0)";
        goto LABEL_258;
      }

      if (v153 != 1)
      {
        v85 = __nwlog_obj();
        v86 = type[0];
        if (!os_log_type_enabled(v85, type[0]))
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v87 = "%{public}s called with null (obj_size > 0), backtrace limit exceeded";
        goto LABEL_258;
      }

      backtrace_string = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v86 = type[0];
      v132 = os_log_type_enabled(v85, type[0]);
      if (!backtrace_string)
      {
        if (!v132)
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v87 = "%{public}s called with null (obj_size > 0), no backtrace";
        goto LABEL_258;
      }

      if (!v132)
      {
        goto LABEL_230;
      }

      *buf = 136446466;
      v156 = "nw_mem_malloc_buffer_manager_initialize";
      v157 = 2082;
      *v158 = backtrace_string;
      v131 = "%{public}s called with null (obj_size > 0), dumping backtrace:%{public}s";
LABEL_229:
      _os_log_impl(&dword_181A37000, v85, v86, v131, buf, 0x16u);
      goto LABEL_230;
    }

    __nwlog_obj();
    *buf = 136446210;
    v156 = "nw_mem_malloc_buffer_manager_initialize";
    v84 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v153 = 0;
    if (!__nwlog_fault(v84, type, &v153))
    {
      goto LABEL_259;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v153 != 1)
      {
        v85 = __nwlog_obj();
        v86 = type[0];
        if (!os_log_type_enabled(v85, type[0]))
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v87 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_258;
      }

      v127 = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v86 = type[0];
      v128 = os_log_type_enabled(v85, type[0]);
      if (!v127)
      {
        if (!v128)
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v87 = "%{public}s called with null name, no backtrace";
        goto LABEL_258;
      }

      if (v128)
      {
        *buf = 136446466;
        v156 = "nw_mem_malloc_buffer_manager_initialize";
        v157 = 2082;
        *v158 = v127;
        _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v127);
      goto LABEL_259;
    }

    v85 = __nwlog_obj();
    v86 = type[0];
    if (!os_log_type_enabled(v85, type[0]))
    {
      goto LABEL_259;
    }

    *buf = 136446210;
    v156 = "nw_mem_malloc_buffer_manager_initialize";
    v87 = "%{public}s called with null name";
LABEL_258:
    _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0xCu);
    goto LABEL_259;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v84 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v153 = 0;
    if (!__nwlog_fault(v84, type, &v153))
    {
      goto LABEL_259;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v153 != 1)
      {
        v85 = __nwlog_obj();
        v86 = type[0];
        if (!os_log_type_enabled(v85, type[0]))
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
        v87 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_258;
      }

      backtrace_string = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v86 = type[0];
      v130 = os_log_type_enabled(v85, type[0]);
      if (!backtrace_string)
      {
        if (!v130)
        {
          goto LABEL_259;
        }

        *buf = 136446210;
        v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
        v87 = "%{public}s called with null name, no backtrace";
        goto LABEL_258;
      }

      if (!v130)
      {
        goto LABEL_230;
      }

      *buf = 136446466;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v157 = 2082;
      *v158 = backtrace_string;
      v131 = "%{public}s called with null name, dumping backtrace:%{public}s";
      goto LABEL_229;
    }

    v85 = __nwlog_obj();
    v86 = type[0];
    if (!os_log_type_enabled(v85, type[0]))
    {
      goto LABEL_259;
    }

    *buf = 136446210;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v87 = "%{public}s called with null name";
    goto LABEL_258;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v84 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v153 = 0;
    if (!__nwlog_fault(v84, type, &v153))
    {
      goto LABEL_259;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v87 = "%{public}s called with null (obj_size > 0)";
      goto LABEL_258;
    }

    if (v153 != 1)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v87 = "%{public}s called with null (obj_size > 0), backtrace limit exceeded";
      goto LABEL_258;
    }

    backtrace_string = __nw_create_backtrace_string();
    v85 = __nwlog_obj();
    v86 = type[0];
    v133 = os_log_type_enabled(v85, type[0]);
    if (!backtrace_string)
    {
      if (!v133)
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v87 = "%{public}s called with null (obj_size > 0), no backtrace";
      goto LABEL_258;
    }

    if (!v133)
    {
      goto LABEL_230;
    }

    *buf = 136446466;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v157 = 2082;
    *v158 = backtrace_string;
    v131 = "%{public}s called with null (obj_size > 0), dumping backtrace:%{public}s";
    goto LABEL_229;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v84 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v153 = 0;
    if (!__nwlog_fault(v84, type, &v153))
    {
      goto LABEL_259;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v87 = "%{public}s called with null (obj_cnt > 0)";
      goto LABEL_258;
    }

    if (v153 != 1)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v87 = "%{public}s called with null (obj_cnt > 0), backtrace limit exceeded";
      goto LABEL_258;
    }

    backtrace_string = __nw_create_backtrace_string();
    v85 = __nwlog_obj();
    v86 = type[0];
    v135 = os_log_type_enabled(v85, type[0]);
    if (!backtrace_string)
    {
      if (!v135)
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v87 = "%{public}s called with null (obj_cnt > 0), no backtrace";
      goto LABEL_258;
    }

    if (v135)
    {
      *buf = 136446466;
      v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v157 = 2082;
      *v158 = backtrace_string;
      v131 = "%{public}s called with null (obj_cnt > 0), dumping backtrace:%{public}s";
      goto LABEL_229;
    }

    goto LABEL_230;
  }

  if (nw_mem_slab_allocator_buffer_manager_initialize(dispatch_workloop_s *,char const*,unsigned long,unsigned long)::onceToken != -1)
  {
    dispatch_once(&nw_mem_slab_allocator_buffer_manager_initialize(dispatch_workloop_s *,char const*,unsigned long,unsigned long)::onceToken, &__block_literal_global_5_66894);
  }

  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x4388A537uLL);
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v157 = 2048;
    *v158 = 1;
    *&v158[8] = 2048;
    *v159 = 160;
    v13 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v13))
    {
      goto LABEL_262;
    }

    free(v13);
  }

  *(v8 + 2) = xmmword_1E6A2E6F0;
  *(v8 + 3) = unk_1E6A2E700;
  *v8 = nw_mem_regions;
  *(v8 + 1) = unk_1E6A2E6E0;
  *(&v14 + 1) = 0;
  *(v8 + 4) = xmmword_1E6A2E710;
  v8[5] = a3;
  v8[6] = a4;
  *(v8 + 3) = 32 * (nw_mem_debug & 1);
  v15 = nw_mem_buf_seg_size;
  v8[2] = nw_mem_buf_seg_size;
  v16 = nw_mem_seg_min_buf_cnt;
  if (nw_mem_seg_min_buf_cnt < a4 && v15 / a3 < nw_mem_seg_min_buf_cnt)
  {
    v15 = -(-(nw_mem_seg_min_buf_cnt * a3) & 0xFFFFFFFFFFFFC000);
    v8[2] = v15;
    a4 = v16 + a4 / v16 * v16;
  }

  if (!v15 || (v15 & 0x3FFF) != 0)
  {
    v111 = __nwlog_obj();
    os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
    *buf = 136446466;
    v156 = "nw_mem_region_params_config";
    v157 = 2082;
    *v158 = "VERIFY seglim != 0 && (seglim % NW_MEM_PAGE_SIZE) == 0 failed";
    v112 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v112))
    {
      goto LABEL_262;
    }

    free(v112);
  }

  if (gLogDatapath == 1)
  {
    v88 = __nwlog_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      v89 = *v8;
      *buf = 136447234;
      v156 = "nw_mem_region_params_config";
      v157 = 2082;
      *v158 = v89;
      *&v158[8] = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = a3;
      *v160 = 2048;
      *&v160[2] = a4;
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: seglim %zu objsize %zu objcnt %zu", buf, 0x34u);
    }
  }

  v152 = a1;
  v17 = -(-a3 & 0xFFFFFFFFFFFFFF80);
  if (v15 > v17)
  {
    *&v14 = 136446978;
    do
    {
      if (!(v15 % v17))
      {
        break;
      }

      if (gLogDatapath == 1)
      {
        v148 = v14;
        log = __nwlog_obj();
        v18 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        v14 = v148;
        if (v18)
        {
          v19 = *v8;
          *buf = v148;
          v156 = "nw_mem_region_params_config";
          v157 = 2082;
          *v158 = v19;
          *&v158[8] = 2048;
          *v159 = v17;
          *&v159[8] = 2048;
          *&v159[10] = v17 + 128;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: objsize %zu -> %zu", buf, 0x2Au);
          v14 = v148;
        }
      }

      v17 += 128;
    }

    while (v17 < v15);
  }

  if (v17 > v15)
  {
    *&v14 = 136446978;
    do
    {
      if (gLogDatapath == 1)
      {
        v149 = v14;
        loga = __nwlog_obj();
        v20 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
        v14 = v149;
        if (v20)
        {
          v21 = *v8;
          *buf = v149;
          v156 = "nw_mem_region_params_config";
          v157 = 2082;
          *v158 = v21;
          *&v158[8] = 2048;
          *v159 = v15;
          *&v159[8] = 2048;
          *&v159[10] = v15 + 0x4000;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: seglim %zu -> %zu", buf, 0x2Au);
          v14 = v149;
        }
      }

      v15 += 0x4000;
    }

    while (v17 > v15);
  }

  v22 = -(a4 * v17) & 0xFFFFFFFFFFFFC000;
  v23 = -v22;
  if (v15 <= -v22)
  {
    if (v15 >= -v22)
    {
      v25 = -v22;
    }

    else
    {
      v30 = v15 + (v15 >> 1);
      *&v14 = 136447746;
      do
      {
        if (v15 >= v23 || !(v23 % v15))
        {
          break;
        }

        if (gLogDatapath == 1)
        {
          v151 = v14;
          logc = __nwlog_obj();
          v31 = os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG);
          v14 = v151;
          if (v31)
          {
            v32 = *v8;
            *buf = v151;
            v156 = "nw_mem_region_params_config";
            v157 = 2082;
            *v158 = v32;
            *&v158[8] = 2048;
            *v159 = -v22;
            *&v159[8] = 2048;
            *&v159[10] = v17;
            *v160 = 2048;
            *&v160[2] = a4;
            v161 = 2048;
            v162 = v15;
            v163 = 2048;
            v164 = v15 + 0x4000;
            _os_log_impl(&dword_181A37000, logc, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: segsize %zu (%zu*%zu) seglim [+] %zu -> %zu", buf, 0x48u);
            v14 = v151;
          }
        }

        v15 += 0x4000;
      }

      while (v15 < v30);
      if (v23 % v15)
      {
        v25 = v15 - v22 - v23 % v15;
      }

      else
      {
        v25 = -v22;
      }
    }
  }

  else
  {
    if (v23 <= 0x4000)
    {
      v24 = 0x4000;
    }

    else
    {
      v24 = -v22;
    }

    if (v15 <= 0x4000)
    {
      v25 = v15;
    }

    else
    {
      *&v14 = 136447746;
      v25 = v15;
      v26 = "%{public}s %{public}s: segsize %zu (%zu*%zu) seglim [-] %zu -> %zu";
      do
      {
        if (gLogDatapath == 1)
        {
          v150 = v14;
          v27 = v26;
          logb = __nwlog_obj();
          v28 = os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG);
          v26 = v27;
          v14 = v150;
          if (v28)
          {
            v29 = *v8;
            *buf = v150;
            v156 = "nw_mem_region_params_config";
            v157 = 2082;
            *v158 = v29;
            *&v158[8] = 2048;
            *v159 = v23;
            *&v159[8] = 2048;
            *&v159[10] = v17;
            *v160 = 2048;
            *&v160[2] = a4;
            v161 = 2048;
            v162 = v25;
            v163 = 2048;
            v164 = -((0x4000 - v25) & 0xFFFFFFFFFFFFC000);
            _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, v27, buf, 0x48u);
            v26 = v27;
            v14 = v150;
          }
        }

        v25 = -((0x4000 - v25) & 0xFFFFFFFFFFFFC000);
        v15 = v25;
      }

      while (v24 < v25);
    }
  }

  if (gLogDatapath == 1)
  {
    v90 = __nwlog_obj();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      v91 = *v8;
      *buf = 136446978;
      v156 = "nw_mem_region_params_config";
      v157 = 2082;
      *v158 = v91;
      *&v158[8] = 2048;
      *v159 = v25;
      *&v159[8] = 2048;
      *&v159[10] = v15;
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: segsize %zu seglim %zu", buf, 0x2Au);
    }
  }

  if ((*(v8 + 12) & 0x10) != 0)
  {
    v33 = 1;
  }

  else
  {
    if (v15 <= v25)
    {
      v33 = v25 / v15;
    }

    else
    {
      v33 = 1;
    }

    v25 /= v33;
  }

  if (gLogDatapath == 1)
  {
    v92 = __nwlog_obj();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      v93 = *v8;
      *buf = 136446978;
      v156 = "nw_mem_region_params_config";
      v157 = 2082;
      *v158 = v93;
      *&v158[8] = 2048;
      *v159 = v33;
      *&v159[8] = 2048;
      *&v159[10] = v25;
      _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: segcnt %zu segsize %zu", buf, 0x2Au);
    }
  }

  v8[7] = v17;
  v8[8] = v25 * v33 / v17;
  v8[3] = v25;
  v8[4] = v33;
  if (gLogDatapath == 1)
  {
    v94 = __nwlog_obj();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      v95 = *v8;
      *buf = 136447490;
      v156 = "nw_mem_region_params_config";
      v157 = 2082;
      *v158 = v95;
      *&v158[8] = 2048;
      *v159 = v17;
      *&v159[8] = 2048;
      *&v159[10] = v25 * v33 / v17;
      *v160 = 2048;
      *&v160[2] = v33;
      v161 = 2048;
      v162 = v25;
      _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: objsize %zu objcnt %zu segcnt %zu segsize %zu", buf, 0x3Eu);
    }
  }

  if (gLogDatapath == 1)
  {
    v96 = *(v8 + 2);
    v97 = "";
    if (v96 == 1)
    {
      v97 = "REGIONS";
    }

    if (v96)
    {
      v98 = v97;
    }

    else
    {
      v98 = "BUF";
    }

    snprintf(type, 0x20uLL, "REGION_%s:", v98);
    if (gLogDatapath == 1)
    {
      v139 = __nwlog_obj();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        v141 = v8[5];
        v140 = v8[6];
        v143 = v8[7];
        v142 = v8[8];
        *buf = 136447490;
        v156 = "nw_mem_region_params_config";
        v157 = 2080;
        *v158 = type;
        *&v158[8] = 1024;
        *v159 = v140;
        *&v159[4] = 1024;
        *&v159[6] = v141;
        *&v159[10] = 1024;
        *&v159[12] = v142;
        *&v159[16] = 1024;
        *v160 = v143;
        _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %-16s o:[%4u x %6u -> %4u x %6u]", buf, 0x2Eu);
      }
    }

    if (gLogDatapath)
    {
      v99 = __nwlog_obj();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v100 = v8[7];
        v101 = v8[8];
        v102 = v8[5];
        v103 = v8[6];
        *buf = 136447234;
        v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
        v157 = 2048;
        *v158 = v100;
        *&v158[8] = 2048;
        *v159 = v102;
        *&v159[8] = 2048;
        *&v159[10] = v101;
        *v160 = 2048;
        *&v160[2] = v103;
        _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s   obj size %6zu (was %6zu) cnt %6zu (was %6zu) for REGION_BUF", buf, 0x34u);
      }
    }
  }

  if (v8[7])
  {
    v34 = *(v8 + 3);
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v104 = __nwlog_obj();
    os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
    *buf = 136446466;
    v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v157 = 2082;
    *v158 = "VERIFY buffer_manager->nrp[NW_MEM_REGION_BUF].nrp_c_obj_size != 0 failed";
    v105 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v105))
    {
      goto LABEL_262;
    }

    free(v105);
    v34 = *(v8 + 3);
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_80;
    }
  }

  v106 = __nwlog_obj();
  os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v156 = "nw_mem_slab_allocator_buffer_manager_initialize";
  v157 = 2082;
  *v158 = "VERIFY !(buffer_manager->nrp[NW_MEM_REGION_BUF].nrp_cflags & NW_MEM_REGION_CR_NOCACHE) failed";
  v107 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v107))
  {
    goto LABEL_262;
  }

  free(v107);
  v34 = *(v8 + 3);
LABEL_80:
  v35 = malloc_type_zone_calloc(g_slab_zone, 1uLL, 0x190uLL, 0x8C983D4uLL);
  if (!v35)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v156 = "nw_mem_region_create";
    v157 = 2048;
    *v158 = 1;
    *&v158[8] = 2048;
    *v159 = 400;
    v36 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v36))
    {
      goto LABEL_262;
    }

    free(v36);
  }

  if (v152)
  {
    dispatch_retain(v152);
    *(v35 + 34) = v152;
  }

  *(v35 + 10) = v8[2];
  v37 = v8[3];
  *(v35 + 11) = v37;
  v38 = v8[4];
  *(v35 + 31) = v38 * v37;
  *(v35 + 37) = v37 / v8[7];
  *(v35 + 12) = v38;
  *(v35 + 41) = 32;
  *(v35 + 42) = 4096;
  v39 = malloc_type_calloc(1uLL, 0x200uLL, 0x7FF16BE5uLL);
  if (!v39)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v156 = "nw_mem_region_create";
    v157 = 2048;
    *v158 = 1;
    *&v158[8] = 2048;
    *v159 = 512;
    v40 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v40))
    {
      goto LABEL_262;
    }

    free(v40);
    v39 = 0;
  }

  *(v35 + 44) = *(v35 + 41) - 1;
  *(v35 + 45) = v39;
  *(v35 + 43) = flsll(v8[3]) - 1;
  v41 = *(v35 + 44);
  v42 = v41 + 1;
  if (v41 != -1)
  {
    v43 = *(v35 + 45);
    if (v42 < 8)
    {
      v44 = 0;
      v45 = 0;
LABEL_91:
      v46 = v45 + 1;
      do
      {
        v47 = (v43 + 16 * v44);
        *v47 = 0;
        v47[1] = v47;
        v44 = v46++;
      }

      while (v42 > v44);
      goto LABEL_93;
    }

    v45 = 0;
    v44 = 0;
    if (v41 == -1)
    {
      goto LABEL_91;
    }

    if (HIDWORD(v41))
    {
      goto LABEL_91;
    }

    v44 = v42 & 0x1FFFFFFFCLL;
    v77 = (v43 + 32);
    v78 = 0uLL;
    v79 = v42 & 0x1FFFFFFFCLL;
    do
    {
      *&v166.val[1].f64[0] = v77 - 4;
      *&v166.val[1].f64[1] = v77 - 2;
      v80 = v77;
      v81 = v77 + 2;
      v166.val[0] = 0uLL;
      vst2q_f64(*&v166.val[1].f64[0], v166);
      vst2q_f64(v77, *&v78);
      v77 += 8;
      v79 -= 4;
    }

    while (v79);
    v45 = v42 & 0xFFFFFFFC;
    if (v42 != v44)
    {
      goto LABEL_91;
    }
  }

LABEL_93:
  *(v35 + 104) = *(v8 + 5);
  *(v35 + 120) = *(v8 + 7);
  *(v35 + 17) = v8[9];
  *(v35 + 33) = 0;
  *v35 = 0;
  *(v35 + 35) = 0;
  *(v35 + 36) = 0;
  *(v35 + 46) = 0;
  *(v35 + 47) = v35 + 368;
  *(v35 + 18) = *(v8 + 2);
  uuid_generate_random(v35 + 224);
  snprintf(v35 + 160, 0x40uLL, "%s.region.%s.%s", "NWSlab", *v8, a2);
  if (gLogDatapath == 1)
  {
    v108 = __nwlog_obj();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v156 = "nw_mem_region_create";
      v157 = 2082;
      *v158 = v35 + 160;
      *&v158[8] = 2048;
      *v159 = v35;
      _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: nwr %p ", buf, 0x20u);
    }
  }

  *(v35 + 19) = v34;
  if ((v34 & 0x10) != 0)
  {
    *(v35 + 60) |= 0x10u;
  }

  if ((v34 & 0x20) != 0)
  {
    *(v35 + 60) |= 0x20u;
  }

  v48 = *(v35 + 12) + 63;
  *(v35 + 39) = v48 >> 6;
  v49 = (v48 >> 3) & 0x1FFFFFF8;
  if (!v49)
  {
    v109 = __nwlog_obj();
    os_log_type_enabled(v109, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v156 = "nw_mem_region_create";
    v110 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v110))
    {
      goto LABEL_262;
    }

    free(v110);
  }

  v50 = malloc_type_calloc(1uLL, v49, 0x9143376AuLL);
  if (!v50)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v156 = "nw_mem_region_create";
    v157 = 2048;
    *v158 = 1;
    *&v158[8] = 2048;
    *v159 = v49;
    v51 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v51))
    {
      goto LABEL_262;
    }

    free(v51);
    v50 = 0;
  }

  *(v35 + 38) = v50;
  memset(v50, 255, ((*(v35 + 24) + 63) >> 3) & 0x1FFFFFF8);
  ++*(v35 + 1);
  os_unfair_lock_lock(&nw_mem_region_lock);
  *(v35 + 18) = 0;
  v52 = qword_1ED411038;
  *(v35 + 19) = qword_1ED411038;
  *v52 = v35;
  qword_1ED411038 = (v35 + 144);
  os_unfair_lock_unlock(&nw_mem_region_lock);
  if (gLogDatapath == 1)
  {
    v113 = __nwlog_obj();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      v114 = *(v35 + 11);
      v115 = *(v35 + 12);
      v116 = *(v35 + 15);
      v117 = *(v35 + 16);
      v118 = *(v35 + 19);
      *buf = 136447490;
      v156 = "nw_mem_region_create";
      v157 = 1024;
      *v158 = v114;
      *&v158[4] = 1024;
      *&v158[6] = v115;
      *v159 = 1024;
      *&v159[2] = v116;
      *&v159[6] = 1024;
      *&v159[8] = v117;
      *&v159[12] = 1024;
      *&v159[14] = v118;
      _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s   [TOTAL] seg (%u*%u) obj (%u*%u) cflags 0x%u", buf, 0x2Au);
    }
  }

  v8[10] = v35;
  v53 = v8[7];
  v54 = *(v35 + 11);
  v55 = malloc_type_zone_calloc(g_slab_zone, 1uLL, 0x308uLL, 0x3D0FF037uLL);
  if (!v55)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v156 = "nw_mem_cache_create";
    v157 = 2048;
    *v158 = 1;
    *&v158[8] = 2048;
    *v159 = 776;
    v56 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v56))
    {
      goto LABEL_262;
    }

    free(v56);
    v55 = 0;
  }

  v57 = (-8 - v55) & 0xFFFFFFFFFFFFFF80;
  *(v57 ^ 0xFFFFFFFFFFFFFFF8) = v55;
  if (v54 <= 7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v156 = "nw_mem_cache_create";
    v157 = 2082;
    *v158 = "nw_mem_cache_create";
    *&v158[8] = 2048;
    *v159 = 8;
    v58 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v58))
    {
      goto LABEL_262;
    }

    free(v58);
  }

  v59 = -v57;
  v60 = nw_mem_debug;
  if (nw_mem_debug)
  {
    *(176 - v57) |= 1u;
  }

  if ((v60 & 2) != 0)
  {
    *(176 - v57) |= 2u;
  }

  snprintf((96 - v57), 0x40uLL, "NWSlab.mem.%s", a2);
  *(160 - v57) = v53;
  *(168 - v57) = 8;
  *(184 - v57) = 0u;
  *(200 - v57) = 0u;
  *(248 - v57) = v54;
  *(216 - v57) = v35;
  ++*(v35 + 1);
  v61 = *(v35 + 15);
  *(240 - v57) = v61;
  v62 = -(-v53 & 0xFFFFFFFFFFFFFFF8);
  if (v61 < v62)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446978;
    v156 = "nw_mem_cache_create";
    v157 = 2048;
    *v158 = v53;
    *&v158[8] = 2048;
    *v159 = -(-v53 & 0xFFFFFFFFFFFFFFF8);
    *&v159[8] = 2048;
    *&v159[10] = v61;
    v63 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v63))
    {
      goto LABEL_262;
    }

    free(v63);
  }

  *(232 - v57) = v62;
  *(224 - v57) = 0;
  *(296 - v57) = 0;
  *(304 - v57) = 296 - v57;
  *(312 - v57) = 0;
  *(320 - v57) = 312 - v57;
  *(256 - v57) = xmmword_182B08E70;
  v64 = nw_calloc_type<nw_mem_bufctl_bkt>(0x40uLL);
  *(280 - v57) = *(256 - v57) - 1;
  *(288 - v57) = v64;
  *(272 - v57) = flsll(v62) - 1;
  v65 = *(280 - v57);
  v66 = v65 + 1;
  if (v65 != -1)
  {
    v67 = *(288 - v57);
    if (v66 < 0xA)
    {
      v68 = 0;
      v69 = 0;
LABEL_119:
      v70 = v69 + 1;
      do
      {
        *(v67 + 8 * v68) = 0;
        v68 = v70++;
      }

      while (v66 > v68);
      goto LABEL_121;
    }

    v69 = 0;
    v68 = 0;
    if (v65 == -1)
    {
      goto LABEL_119;
    }

    if (HIDWORD(v65))
    {
      goto LABEL_119;
    }

    v68 = v66 & 0x1FFFFFFFCLL;
    v82 = *(288 - v57);
    v83 = v66 & 0x1FFFFFFFCLL;
    do
    {
      *v82 = 0uLL;
      v82[1] = 0uLL;
      v82 += 2;
      v83 -= 4;
    }

    while (v83);
    v69 = v66 & 0xFFFFFFFC;
    if (v66 != v68)
    {
      goto LABEL_119;
    }
  }

LABEL_121:
  *(328 - v57) = 0;
  v71 = &qword_1ED40FF48;
  do
  {
    v72 = v71[12];
    v71 += 11;
  }

  while (v72 >= v62);
  *(336 - v57) = v71;
  *(512 - v57) = 0;
  *(552 - v57) = -1;
  os_unfair_lock_lock(&nw_mem_cache_lock);
  *(80 - v57) = 0;
  v73 = qword_1ED411060;
  *(88 - v57) = qword_1ED411060;
  *v73 = v59;
  qword_1ED411060 = 80 - v57;
  os_unfair_lock_unlock(&nw_mem_cache_lock);
  if (gLogDatapath == 1)
  {
    v119 = __nwlog_obj();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      v120 = *(176 - v57);
      *buf = 136446978;
      v156 = "nw_mem_cache_create";
      v157 = 2082;
      *v158 = 96 - v57;
      *&v158[8] = 2048;
      *v159 = -v57;
      *&v159[8] = 1024;
      *&v159[10] = v120;
      _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: nwm %p mode 0x%X", buf, 0x26u);
    }
  }

  if (gLogDatapath == 1)
  {
    v121 = __nwlog_obj();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
    {
      v122 = *(160 - v57);
      v123 = *(168 - v57);
      v124 = *(232 - v57);
      v125 = *(240 - v57);
      v126 = *(248 - v57);
      *buf = 136447490;
      v156 = "nw_mem_cache_create";
      v157 = 1024;
      *v158 = v122;
      *&v158[4] = 1024;
      *&v158[6] = v123;
      *v159 = 1024;
      *&v159[2] = v124;
      *&v159[6] = 1024;
      *&v159[8] = v125;
      *&v159[12] = 1024;
      *&v159[14] = v126;
      _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s   bufsz %u align %u chunksz %u objsz %u slabsz %u", buf, 0x2Au);
    }
  }

  if (nw_mem_cache_ready == 1 && (*(176 - v57) & 1) == 0)
  {
    *(560 - v57) = **(336 - v57);
    if (gLogDatapath == 1)
    {
      v136 = __nwlog_obj();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
      {
        v137 = *(232 - v57);
        v138 = *(560 - v57);
        *buf = 136446978;
        v156 = "nw_mem_cache_magazine_enable";
        v157 = 2048;
        *v158 = -v57;
        *&v158[8] = 1024;
        *v159 = v137;
        *&v159[4] = 1024;
        *&v159[6] = v138;
        _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s nwm %p chunksize %u magsize %d", buf, 0x22u);
      }
    }
  }

  v8[11] = v59;
  if (!v57)
  {
    nw_mem_buffer_manager_close(v8);
    return 0;
  }

  v10 = v8 + 12;
  v74 = 64;
  while (1)
  {
    v75 = *a2;
    *v10 = v75;
    if (!v75)
    {
      break;
    }

    ++v10;
    ++a2;
    if (--v74 <= 1)
    {
LABEL_132:
      *v10 = 0;
      return v8;
    }
  }

  return v8;
}
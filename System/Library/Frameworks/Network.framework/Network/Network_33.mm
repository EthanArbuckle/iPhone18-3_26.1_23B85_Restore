uint64_t QUICStreamProtocol.QUICStreamMetadata.__deallocating_deinit()
{
  _Block_release(*(v0 + 48));

  return swift_deallocClassInstance();
}

void nw_protocol_implementation_input_flush(nw_protocol *a1, nw_protocol *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        v40 = "nw_protocol_implementation_input_flush";
        v4 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v37 = 0;
        if (__nwlog_fault(v4, &type, &v37))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type;
            if (os_log_type_enabled(v5, type))
            {
              *buf = 136446210;
              v40 = "nw_protocol_implementation_input_flush";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v37 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v16 = type;
            v17 = os_log_type_enabled(v5, type);
            if (backtrace_string)
            {
              if (v17)
              {
                *buf = 136446466;
                v40 = "nw_protocol_implementation_input_flush";
                v41 = 2082;
                v42 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v16, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

            if (v17)
            {
              *buf = 136446210;
              v40 = "nw_protocol_implementation_input_flush";
              _os_log_impl(&dword_181A37000, v5, v16, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v18 = type;
            if (os_log_type_enabled(v5, type))
            {
              *buf = 136446210;
              v40 = "nw_protocol_implementation_input_flush";
              _os_log_impl(&dword_181A37000, v5, v18, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_31:
          v8 = 0;
          goto LABEL_32;
        }

LABEL_30:
        free(v4);
        goto LABEL_31;
      }

      a1 = *a1[1].flow_id;
    }

    v7 = a1;
    v8 = &a1[1].output_handler;
    v9 = v7[1].handle;
    if (!v9)
    {
      v10 = v8;
      v23 = __nwlog_obj();
      *buf = 136446210;
      v40 = "nw_protocol_implementation_input_flush";
      v12 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (!__nwlog_fault(v12, &type, &v37))
      {
        goto LABEL_80;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_implementation_input_flush";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v13, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v40 = "nw_protocol_implementation_input_flush";
            v41 = 2082;
            v42 = v28;
            _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          if (!v12)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (v30)
        {
          *buf = 136446210;
          v40 = "nw_protocol_implementation_input_flush";
          _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_implementation_input_flush";
          _os_log_impl(&dword_181A37000, v13, v35, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_79;
    }

    if (v9[10])
    {
LABEL_32:

      return;
    }

    v10 = v8;
    v11 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_implementation_input_flush";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v12, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_implementation_input_flush";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

LABEL_79:

        goto LABEL_80;
      }

      if (v37 != 1)
      {
        v13 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_implementation_input_flush";
          _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_79;
      }

      v31 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v13, type);
      if (!v31)
      {
        if (v33)
        {
          *buf = 136446210;
          v40 = "nw_protocol_implementation_input_flush";
          _os_log_impl(&dword_181A37000, v13, v32, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_79;
      }

      if (v33)
      {
        *buf = 136446466;
        v40 = "nw_protocol_implementation_input_flush";
        v41 = 2082;
        v42 = v31;
        _os_log_impl(&dword_181A37000, v13, v32, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v31);
    }

LABEL_80:
    if (!v12)
    {
LABEL_82:
      v8 = v10;
      goto LABEL_32;
    }

LABEL_81:
    free(v12);
    goto LABEL_82;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_protocol_implementation_input_flush";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v20, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v40 = "nw_protocol_implementation_input_flush";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      v25 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v21, type);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v40 = "nw_protocol_implementation_input_flush";
          v41 = 2082;
          v42 = v25;
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_72;
      }

      if (v27)
      {
        *buf = 136446210;
        v40 = "nw_protocol_implementation_input_flush";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v40 = "nw_protocol_implementation_input_flush";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_72:
  if (v20)
  {
    free(v20);
  }
}

uint64_t nw_frame_check_validity(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "__nw_frame_check_validity";
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
          v14 = "__nw_frame_check_validity";
          v8 = "%{public}s called with null frame";
LABEL_20:
          _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
        }
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
            v14 = "__nw_frame_check_validity";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v10)
        {
          *buf = 136446210;
          v14 = "__nw_frame_check_validity";
          v8 = "%{public}s called with null frame, no backtrace";
          goto LABEL_20;
        }
      }

      else
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v14 = "__nw_frame_check_validity";
          v8 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  v1 = 1;
  if ((*(a1 + 204) & 0x100) == 0)
  {
    return v1;
  }

  v2 = g_channel_check_validity;
  if (!g_channel_check_validity)
  {
    return v1;
  }

  v3 = *(a1 + 88);

  return v2(a1, v3);
}

id nw_connection_copy_protocol_metadata_on_queue(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    nw_context_assert_queue(*(v3 + 3));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v22 = __Block_byref_object_copy__24471;
    v23 = __Block_byref_object_dispose__24472;
    v24 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_connection_copy_protocol_metadata_on_queue_block_invoke;
    v15[3] = &unk_1E6A3BE58;
    v18 = buf;
    v16 = v3;
    v17 = v4;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_copy_protocol_metadata_on_queue_block_invoke(v15);
    os_unfair_lock_unlock(v3 + 34);
    v5 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_protocol_metadata_on_queue";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_protocol_metadata_on_queue";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          *&buf[4] = "nw_connection_copy_protocol_metadata_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_protocol_metadata_on_queue";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_protocol_metadata_on_queue";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_3:

  return v5;
}

void __nw_connection_copy_protocol_metadata_on_queue_block_invoke(uint64_t a1)
{
  v2 = nw_connection_copy_protocol_metadata_locked(*(a1 + 32), *(a1 + 40), 1, 0);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id nw_protocol_implementation_copy_info(void *a1, int a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1[5];
    v7 = a1;
    if (v6 != &nw_protocol_ref_counted_handle)
    {
      if (v6 != &nw_protocol_ref_counted_additional_handle)
      {
        v8 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_copy_info";
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v94 = 0;
        if (__nwlog_fault(v9, &type, &v94))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v10 = __nwlog_obj();
            v11 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_copy_info";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v94 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v10 = __nwlog_obj();
            v24 = type;
            v25 = os_log_type_enabled(v10, type);
            if (backtrace_string)
            {
              if (v25)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_copy_info";
                v97 = 2082;
                v98 = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_71;
              }

              goto LABEL_70;
            }

            if (v25)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_copy_info";
              _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v10 = __nwlog_obj();
            v44 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_copy_info";
              _os_log_impl(&dword_181A37000, v10, v44, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
LABEL_71:
          v12 = 0;
LABEL_72:
          v47 = 0;
LABEL_73:

          return v47;
        }

LABEL_70:
        free(v9);
        goto LABEL_71;
      }

      v7 = a1[8];
    }

    v12 = v7 + 12;
    v13 = v7[13];
    if (v13)
    {
      v14 = *(v13 + 80);
      if (v14)
      {
        if (a2 <= 253)
        {
          if (a2 != 4)
          {
            if (a2 == 5)
            {
              v15 = a1[4];
              if (!v15 || (v16 = v15[3]) == 0 || (v17 = *(v16 + 224)) == 0)
              {
                v45 = 0;
                v46 = v14[25];
                if (!v46)
                {
                  goto LABEL_72;
                }

                goto LABEL_94;
              }

              v18 = v15[5];
              v19 = a1[4];
              if (v18 == &nw_protocol_ref_counted_handle)
              {
                goto LABEL_79;
              }

              if (v18 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v19) = 0;
                v20 = 1;
                goto LABEL_91;
              }

              v19 = v15[8];
              if (v19)
              {
LABEL_79:
                v54 = *(v19 + 88);
                v20 = 0;
                if (v54)
                {
                  *(v19 + 88) = v54 + 1;
                }

                LOBYTE(v19) = -1;
              }

              else
              {
                v20 = 1;
              }

LABEL_91:
              *buf = v15;
              buf[8] = v19;
              v45 = v17();
              if ((v20 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              v46 = *(*(v7[13] + 80) + 200);
              if (!v46)
              {
                goto LABEL_72;
              }

LABEL_94:
              v57 = v46(v12, v45, a3);
              goto LABEL_102;
            }

LABEL_36:
            v26 = a1[4];
            if (!v26)
            {
              goto LABEL_72;
            }

            v27 = v26[3];
            if (!v27)
            {
              goto LABEL_72;
            }

            v28 = *(v27 + 224);
            if (!v28)
            {
              goto LABEL_72;
            }

            v29 = v26[5];
            v30 = a1[4];
            if (v29 != &nw_protocol_ref_counted_handle)
            {
              if (v29 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v30) = 0;
                v31 = 1;
                goto LABEL_88;
              }

              v30 = v26[8];
              if (!v30)
              {
                v31 = 1;
LABEL_88:
                *buf = v26;
                buf[8] = v30;
                v47 = v28();
                if ((v31 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(buf);
                }

                goto LABEL_73;
              }
            }

            v53 = *(v30 + 88);
            v31 = 0;
            if (v53)
            {
              *(v30 + 88) = v53 + 1;
            }

            LOBYTE(v30) = -1;
            goto LABEL_88;
          }

          v32 = a1[4];
          if (!v32 || (v33 = v32[3]) == 0 || (v34 = *(v33 + 224)) == 0)
          {
LABEL_100:
            v58 = v14[26];
            if (!v58)
            {
              goto LABEL_72;
            }

            v57 = v58(v12);
LABEL_102:
            v47 = v57;
            goto LABEL_73;
          }

          v35 = v32[5];
          v36 = a1[4];
          if (v35 != &nw_protocol_ref_counted_handle)
          {
            if (v35 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v36) = 0;
              v37 = 1;
LABEL_96:
              *buf = v32;
              buf[8] = v36;
              v47 = v34();
              if ((v37 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              if (v47)
              {
                goto LABEL_73;
              }

              v14 = *(v7[13] + 80);
              goto LABEL_100;
            }

            v36 = v32[8];
            if (!v36)
            {
              v37 = 1;
              goto LABEL_96;
            }
          }

          v55 = *(v36 + 88);
          v37 = 0;
          if (v55)
          {
            *(v36 + 88) = v55 + 1;
          }

          LOBYTE(v36) = -1;
          goto LABEL_96;
        }

        if (a2 != 254)
        {
          if (a2 != 255)
          {
            goto LABEL_36;
          }

          if (a3)
          {
            if (*(v13 + 64) == 3)
            {
              if (nw_hash_table_get_node(v7[41], a3, 8))
              {
                v21 = v12;
                if (nw_protocol_definition_get_message_is_stream(v7[13]) && v7[6] == a3)
                {
                  v22 = -2;
                }

                else
                {
                  v22 = a3;
                }
              }

              else
              {
                v22 = -1;
              }

              if ((*(v7 + 509) & 0x80000000) == 0 && gLogDatapath == 1)
              {
                v93 = __nwlog_obj();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_copy_info";
                  v97 = 2082;
                  v98 = v7 + 511;
                  v99 = 2080;
                  v100 = " ";
                  v101 = 2048;
                  v102 = v22;
                  _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCopy metadata for flow %llx", buf, 0x2Au);
                }
              }

LABEL_115:
              v60 = a1[4];
              if (!v60 || (v61 = v60[3]) == 0 || (v62 = *(v61 + 224)) == 0)
              {
                v50 = 0;
                goto LABEL_128;
              }

              v63 = v60[5];
              v64 = a1[4];
              if (v63 != &nw_protocol_ref_counted_handle)
              {
                if (v63 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v64) = 0;
                  v65 = 1;
                  goto LABEL_126;
                }

                v64 = v60[8];
                if (!v64)
                {
                  v65 = 1;
LABEL_126:
                  *buf = v60;
                  buf[8] = v64;
                  v50 = v62();
                  if ((v65 & 1) == 0)
                  {
                    nw::release_if_needed<nw_protocol *>(buf);
                  }

LABEL_128:
                  v67 = *(*(v7[13] + 80) + 184);
                  if (!v67)
                  {
LABEL_143:
                    v47 = v50;

                    goto LABEL_73;
                  }

                  v68 = v67(v12, -1);
                  if (v68)
                  {
                    if (v50 || (v50 = _nw_array_create()) != 0)
                    {
                      _nw_array_append(v50, v68);
                    }
                  }

                  v69 = *(*(v7[13] + 80) + 184);
                  if (v22 == -1)
                  {
                    v70 = v69(v12, -2);
                    if (!v70)
                    {
                      goto LABEL_142;
                    }

                    if (!v50)
                    {
                      v50 = _nw_array_create();
                      if (!v50)
                      {
                        goto LABEL_142;
                      }
                    }
                  }

                  else
                  {
                    v70 = v69(v12, v22);
                    if (!v70)
                    {
                      goto LABEL_142;
                    }

                    if (!v50)
                    {
                      v50 = _nw_array_create();
                      if (!v50)
                      {
                        goto LABEL_142;
                      }
                    }
                  }

                  _nw_array_append(v50, v70);
LABEL_142:

                  goto LABEL_143;
                }
              }

              v66 = *(v64 + 88);
              v65 = 0;
              if (v66)
              {
                *(v64 + 88) = v66 + 1;
              }

              LOBYTE(v64) = -1;
              goto LABEL_126;
            }
          }

          else if (v7[44])
          {
            v49 = _nw_array_create();
            v50 = v49;
            if (v49)
            {
              v51 = v7[44];
              if (v51)
              {
                _nw_array_append(v49, v51);
              }
            }

            goto LABEL_143;
          }

          v22 = -1;
          goto LABEL_115;
        }

        v38 = a1[4];
        if (!v38 || (v39 = v38[3]) == 0 || (v40 = *(v39 + 224)) == 0)
        {
          v47 = 0;
          v48 = v14[24];
          if (!v48)
          {
            goto LABEL_73;
          }

LABEL_107:
          v59 = v48(v12);
          if (v59)
          {
            if (v47 || (v47 = _nw_array_create()) != 0)
            {
              _nw_array_append(v47, v59);
            }
          }

          goto LABEL_73;
        }

        v41 = v38[5];
        v42 = a1[4];
        if (v41 == &nw_protocol_ref_counted_handle)
        {
          goto LABEL_85;
        }

        if (v41 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v42) = 0;
          v43 = 1;
          goto LABEL_104;
        }

        v42 = v38[8];
        if (v42)
        {
LABEL_85:
          v56 = *(v42 + 88);
          v43 = 0;
          if (v56)
          {
            *(v42 + 88) = v56 + 1;
          }

          LOBYTE(v42) = -1;
        }

        else
        {
          v43 = 1;
        }

LABEL_104:
        *buf = v38;
        buf[8] = v42;
        v47 = v40();
        if ((v43 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(buf);
        }

        v48 = *(*(v7[13] + 80) + 192);
        if (!v48)
        {
          goto LABEL_73;
        }

        goto LABEL_107;
      }

      v79 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_copy_info";
      v76 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v94 = 0;
      if (!__nwlog_fault(v76, &type, &v94))
      {
        goto LABEL_202;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v80 = type;
        if (os_log_type_enabled(v77, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          _os_log_impl(&dword_181A37000, v77, v80, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        v87 = __nw_create_backtrace_string();
        v77 = __nwlog_obj();
        v88 = type;
        v89 = os_log_type_enabled(v77, type);
        if (v87)
        {
          if (v89)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_copy_info";
            v97 = 2082;
            v98 = v87;
            _os_log_impl(&dword_181A37000, v77, v88, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v87);
          if (!v76)
          {
            goto LABEL_72;
          }

          goto LABEL_203;
        }

        if (v89)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          _os_log_impl(&dword_181A37000, v77, v88, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v77 = __nwlog_obj();
        v92 = type;
        if (os_log_type_enabled(v77, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          _os_log_impl(&dword_181A37000, v77, v92, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v75 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_copy_info";
      v76 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v94 = 0;
      if (!__nwlog_fault(v76, &type, &v94))
      {
        goto LABEL_202;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v78 = type;
        if (os_log_type_enabled(v77, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        v84 = __nw_create_backtrace_string();
        v77 = __nwlog_obj();
        v85 = type;
        v86 = os_log_type_enabled(v77, type);
        if (v84)
        {
          if (v86)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_copy_info";
            v97 = 2082;
            v98 = v84;
            _os_log_impl(&dword_181A37000, v77, v85, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v84);
LABEL_202:
          if (!v76)
          {
            goto LABEL_72;
          }

LABEL_203:
          free(v76);
          goto LABEL_72;
        }

        if (v86)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          _os_log_impl(&dword_181A37000, v77, v85, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v77 = __nwlog_obj();
        v91 = type;
        if (os_log_type_enabled(v77, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          _os_log_impl(&dword_181A37000, v77, v91, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_202;
  }

  v71 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_copy_info";
  v72 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v94 = 0;
  if (__nwlog_fault(v72, &type, &v94))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v73, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_copy_info";
        _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v94 == 1)
    {
      v81 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v82 = type;
      v83 = os_log_type_enabled(v73, type);
      if (v81)
      {
        if (v83)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_copy_info";
          v97 = 2082;
          v98 = v81;
          _os_log_impl(&dword_181A37000, v73, v82, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v81);
        goto LABEL_193;
      }

      if (v83)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_copy_info";
        _os_log_impl(&dword_181A37000, v73, v82, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v73 = __nwlog_obj();
      v90 = type;
      if (os_log_type_enabled(v73, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_copy_info";
        _os_log_impl(&dword_181A37000, v73, v90, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_193:
  if (v72)
  {
    free(v72);
  }

  return 0;
}

void sub_181C81500(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_udp_copy_info(void *a1, uint64_t a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a2;
    v5 = a1;
    v6 = a1[5];
    v7 = a1;
    if (v6 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v6 != &nw_protocol_ref_counted_additional_handle)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v7 = a1[8];
    if (v7)
    {
LABEL_6:
      v9 = v7[11];
      v8 = 0;
      if (v9)
      {
        v7[11] = v9 + 1;
      }
    }

    else
    {
      v8 = 1;
    }

    v6 = a1[5];
LABEL_11:
    v10 = a1;
    if (v6 != &nw_protocol_ref_counted_handle)
    {
      if (v6 != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v51 = "nw_protocol_udp_copy_info";
        v11 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v48 = 0;
        if (__nwlog_fault(v11, &type, &v48))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            v13 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v51 = "nw_protocol_udp_copy_info";
              v14 = "%{public}s called with null udp";
LABEL_51:
              v32 = v12;
              v33 = v13;
LABEL_52:
              _os_log_impl(&dword_181A37000, v32, v33, v14, buf, 0xCu);
            }
          }

          else if (v48 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            v23 = type;
            v24 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v24)
              {
                *buf = 136446466;
                v51 = "nw_protocol_udp_copy_info";
                v52 = 2082;
                v53 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_53;
            }

            if (v24)
            {
              *buf = 136446210;
              v51 = "nw_protocol_udp_copy_info";
              v14 = "%{public}s called with null udp, no backtrace";
              v32 = v22;
              v33 = v23;
              goto LABEL_52;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            v13 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v51 = "nw_protocol_udp_copy_info";
              v14 = "%{public}s called with null udp, backtrace limit exceeded";
              goto LABEL_51;
            }
          }
        }

LABEL_53:
        if (v11)
        {
          free(v11);
        }

        result = 0;
        goto LABEL_56;
      }

      v10 = a1[8];
    }

    v15 = a1[4];
    if (v15 && (v16 = *(v15 + 24)) != 0 && (v17 = *(v16 + 224)) != 0)
    {
      v18 = *(v15 + 40);
      v19 = a1[4];
      if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v19 = *(v15 + 64)) != 0)
      {
        v25 = *(v19 + 88);
        if (v25)
        {
          *(v19 + 88) = v25 + 1;
        }

        result = v17(v15, a2, a3);
        v26 = *(v15 + 40);
        if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v15 = *(v15 + 64)) != 0)
        {
          v27 = *(v15 + 88);
          if (v27)
          {
            v28 = v27 - 1;
            *(v15 + 88) = v28;
            if (!v28)
            {
              v29 = result;
              v30 = *(v15 + 64);
              if (v30)
              {
                *(v15 + 64) = 0;
                v30[2](v30);
                _Block_release(v30);
              }

              if (*(v15 + 72))
              {
                v31 = *(v15 + 64);
                if (v31)
                {
                  _Block_release(v31);
                }
              }

              free(v15);
              result = v29;
            }
          }
        }

        if (v4 != 5)
        {
          goto LABEL_56;
        }

LABEL_45:
        if (!result)
        {
          result = malloc_type_calloc(1uLL, 0xE0uLL, 0x9F13B93AuLL);
          if (!result)
          {
            v46 = __nwlog_obj();
            os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
            v47 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v47);
            __break(1u);
            return result;
          }
        }

        *(result + 48) = v10[13];
        *(result + 72) = v10[12];
        if (a3)
        {
          *a3 = 224;
        }

        goto LABEL_56;
      }

      result = v17(a1[4], a2, a3);
      if (v4 == 5)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = 0;
      if (a2 == 5)
      {
        goto LABEL_45;
      }
    }

LABEL_56:
    if ((v8 & 1) == 0)
    {
      v34 = v5[5];
      if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v5 = v5[8]) != 0)
      {
        v35 = v5[11];
        if (v35)
        {
          v36 = v35 - 1;
          v5[11] = v36;
          if (!v36)
          {
            v37 = result;
            v38 = v5[8];
            if (v38)
            {
              v5[8] = 0;
              v38[2](v38);
              _Block_release(v38);
            }

            if (v5[9])
            {
              v39 = v5[8];
              if (v39)
              {
                _Block_release(v39);
              }
            }

            free(v5);
            return v37;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_protocol_udp_copy_info";
  v40 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v48 = 0;
  if (__nwlog_fault(v40, &type, &v48))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_udp_copy_info";
        v43 = "%{public}s called with null protocol";
LABEL_86:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      }
    }

    else if (v48 == 1)
    {
      v44 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v45 = os_log_type_enabled(v41, type);
      if (v44)
      {
        if (v45)
        {
          *buf = 136446466;
          v51 = "nw_protocol_udp_copy_info";
          v52 = 2082;
          v53 = v44;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v44);
        goto LABEL_87;
      }

      if (v45)
      {
        *buf = 136446210;
        v51 = "nw_protocol_udp_copy_info";
        v43 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_86;
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_udp_copy_info";
        v43 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_86;
      }
    }
  }

LABEL_87:
  if (v40)
  {
    free(v40);
  }

  return 0;
}

uint64_t _nw_quic_create_stream_metadata_0()
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED40FE60 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED40FE68;
  v1 = *(&xmmword_1ED40FE68 + 1);
  v2 = unk_1ED40FE78;
  v3 = byte_1ED40FE80;
  v8 = 0uLL;
  nw_uuid_generate_insecure_4(&v8);
  v7 = v8;
  type metadata accessor for QUICStreamProtocol.QUICStreamMetadata();
  swift_allocObject();
  v4 = QUICStreamProtocol.QUICStreamMetadata.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v5 = swift_allocObject();
  *(v5 + 57) = 0;
  *(v5 + 64) = 0;
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 41) = v7;
  swift_beginAccess();
  *(v5 + 64) = v4;
  sub_181F49A24(v1, v2, v3);
  return v5;
}

uint64_t QUICStreamProtocol.QUICStreamMetadata.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = -1;
  type metadata accessor for SystemLock._Storage();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 63) = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 72) = v1;
  return v0;
}

uint64_t nw_protocol_metadata_is_quic_stream(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_metadata_is_quic_stream(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_is_quic_stream";
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
        v12 = "nw_protocol_metadata_is_quic_stream";
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
            v12 = "nw_protocol_metadata_is_quic_stream";
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
        v12 = "nw_protocol_metadata_is_quic_stream";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_quic_stream";
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

void nw_quic_stream_set_connection_metadata(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_connection_metadata(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_stream_set_connection_metadata";
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
        v15 = "nw_quic_stream_set_connection_metadata";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata)";
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
            v15 = "nw_quic_stream_set_connection_metadata";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_stream_set_connection_metadata";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_stream_set_connection_metadata";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(stream_metadata), backtrace limit exceeded";
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

uint64_t _nw_protocol_metadata_is_quic_stream(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  if (sub_181A93694(a1, sub_1820EB39C, 0))
  {
    v2 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3D0);
    v2 = sub_181A93694(a1, sub_1820EB39C, 0);
  }

  return v2 & 1;
}

uint64_t _nw_quic_stream_set_connection_metadata_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
      v7 = sub_181A93260(a2);
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        v9 = *(v8 + 64);

        if (v9)
        {
          os_unfair_lock_lock((*(v6 + 72) + 16));
          *(v6 + 56) = v9;

          os_unfair_lock_unlock((*(v6 + 72) + 16));
        }
      }
    }
  }

  return result;
}

void nw_protocol_instance_add_outbound(void *a1, void *a2, void *a3, uint64_t a4, int a5, int a6)
{
  v117[2] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (!v11)
  {
    v43 = __nwlog_obj();
    *v114 = 136446210;
    *&v114[4] = "nw_protocol_instance_add_outbound";
    v44 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v44, buf, type))
    {
      goto LABEL_200;
    }

    if (buf[0] == 17)
    {
      v45 = __nwlog_obj();
      v46 = buf[0];
      if (os_log_type_enabled(v45, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null instance", v114, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v50 = buf[0];
      v51 = os_log_type_enabled(v45, buf[0]);
      if (backtrace_string)
      {
        if (v51)
        {
          *v114 = 136446466;
          *&v114[4] = "nw_protocol_instance_add_outbound";
          *&v114[12] = 2082;
          *&v114[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v45, v50, "%{public}s called with null instance, dumping backtrace:%{public}s", v114, 0x16u);
        }

        free(backtrace_string);
LABEL_200:
        if (!v44)
        {
          goto LABEL_66;
        }

LABEL_201:
        free(v44);
        goto LABEL_66;
      }

      if (v51)
      {
        *v114 = 136446210;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        _os_log_impl(&dword_181A37000, v45, v50, "%{public}s called with null instance, no backtrace", v114, 0xCu);
      }
    }

    else
    {
      v45 = __nwlog_obj();
      v55 = buf[0];
      if (os_log_type_enabled(v45, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        _os_log_impl(&dword_181A37000, v45, v55, "%{public}s called with null instance, backtrace limit exceeded", v114, 0xCu);
      }
    }

LABEL_199:

    goto LABEL_200;
  }

  if (!v12)
  {
    v47 = __nwlog_obj();
    *v114 = 136446210;
    *&v114[4] = "nw_protocol_instance_add_outbound";
    v44 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v44, buf, type))
    {
      goto LABEL_200;
    }

    if (buf[0] == 17)
    {
      v45 = __nwlog_obj();
      v48 = buf[0];
      if (os_log_type_enabled(v45, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        _os_log_impl(&dword_181A37000, v45, v48, "%{public}s called with null data", v114, 0xCu);
      }

      goto LABEL_199;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v45 = __nwlog_obj();
      v56 = buf[0];
      if (os_log_type_enabled(v45, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        _os_log_impl(&dword_181A37000, v45, v56, "%{public}s called with null data, backtrace limit exceeded", v114, 0xCu);
      }

      goto LABEL_199;
    }

    v52 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v53 = buf[0];
    v54 = os_log_type_enabled(v45, buf[0]);
    if (!v52)
    {
      if (v54)
      {
        *v114 = 136446210;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        _os_log_impl(&dword_181A37000, v45, v53, "%{public}s called with null data, no backtrace", v114, 0xCu);
      }

      goto LABEL_199;
    }

    if (v54)
    {
      *v114 = 136446466;
      *&v114[4] = "nw_protocol_instance_add_outbound";
      *&v114[12] = 2082;
      *&v114[14] = v52;
      _os_log_impl(&dword_181A37000, v45, v53, "%{public}s called with null data, dumping backtrace:%{public}s", v114, 0x16u);
    }

    goto LABEL_87;
  }

  v14 = v11[15];
  if (v14)
  {
    v15 = v14;
    v16 = v15;
    if ((v15[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v15[1]);
    }
  }

  if (*(v12 + 11) == v11)
  {
    nw_frame_finalize(v12);
    goto LABEL_66;
  }

  if (v13)
  {
    nw_frame_set_metadata(v12, v13, 1, a5);
  }

  if (a4)
  {
    *(v12 + 20) = a4;
  }

  if (!v11[37])
  {
    *(v12 + 4) = 0;
    v23 = v11[27];
    *(v12 + 5) = v23;
    *v23 = v12;
    v11[27] = v12 + 32;
    if ((*(v11 + 411) & 0x20) != 0 || !a6 || !v11[26])
    {
      goto LABEL_66;
    }

    if ((*(v11 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
    {
      v83 = __nwlog_obj();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        *v114 = 136446722;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        *&v114[12] = 2082;
        *&v114[14] = v11 + 415;
        *&v114[22] = 2080;
        v115 = " ";
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing outbound frames (one-off)", v114, 0x20u);
      }
    }

    v24 = *(v11 - 8);
    if (v24)
    {
      v25 = *(v24 + 5);
      v26 = *(v11 - 8);
      if (v25 != &nw_protocol_ref_counted_handle)
      {
        if (v25 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v26) = 0;
          v27 = 1;
          goto LABEL_62;
        }

        v26 = *(v24 + 8);
        if (!v26)
        {
          v27 = 1;
          goto LABEL_62;
        }
      }

      v40 = *(v26 + 88);
      v27 = 0;
      if (v40)
      {
        *(v26 + 88) = v40 + 1;
      }

      LOBYTE(v26) = -1;
LABEL_62:
      *buf = v24;
      buf[8] = v26;
      v41 = *(v24 + 3);
      if (v41)
      {
        v42 = *(v41 + 96);
        if (v42)
        {
          v42();
          if (v27)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }

      v101 = v27;
      v65 = v24;
      v66 = __nwlog_obj();
      v67 = *(v65 + 2);
      *v114 = 136446722;
      *&v114[4] = "__nw_protocol_finalize_output_frames";
      if (!v67)
      {
        v67 = "invalid";
      }

      *&v114[12] = 2082;
      *&v114[14] = v67;
      *&v114[22] = 2048;
      v68 = v65;
      v115 = v65;
      v69 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v102[0]) = 0;
      if (!__nwlog_fault(v69, type, v102))
      {
        goto LABEL_190;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v70 = __nwlog_obj();
        v71 = type[0];
        if (os_log_type_enabled(v70, type[0]))
        {
          v72 = *(v68 + 2);
          if (!v72)
          {
            v72 = "invalid";
          }

          *v114 = 136446722;
          *&v114[4] = "__nw_protocol_finalize_output_frames";
          *&v114[12] = 2082;
          *&v114[14] = v72;
          *&v114[22] = 2048;
          v115 = v68;
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", v114, 0x20u);
        }
      }

      else if (LOBYTE(v102[0]) == 1)
      {
        v84 = __nw_create_backtrace_string();
        v70 = __nwlog_obj();
        v85 = type[0];
        v86 = os_log_type_enabled(v70, type[0]);
        if (v84)
        {
          if (v86)
          {
            v87 = *(v68 + 2);
            if (!v87)
            {
              v87 = "invalid";
            }

            *v114 = 136446978;
            *&v114[4] = "__nw_protocol_finalize_output_frames";
            *&v114[12] = 2082;
            *&v114[14] = v87;
            *&v114[22] = 2048;
            v115 = v68;
            LOWORD(v116) = 2082;
            *(&v116 + 2) = v84;
            _os_log_impl(&dword_181A37000, v70, v85, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", v114, 0x2Au);
          }

          free(v84);
LABEL_190:
          if (v69)
          {
            free(v69);
          }

          if ((v101 & 1) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        }

        if (v86)
        {
          v99 = *(v68 + 2);
          if (!v99)
          {
            v99 = "invalid";
          }

          *v114 = 136446722;
          *&v114[4] = "__nw_protocol_finalize_output_frames";
          *&v114[12] = 2082;
          *&v114[14] = v99;
          *&v114[22] = 2048;
          v115 = v68;
          _os_log_impl(&dword_181A37000, v70, v85, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", v114, 0x20u);
        }
      }

      else
      {
        v70 = __nwlog_obj();
        v94 = type[0];
        if (os_log_type_enabled(v70, type[0]))
        {
          v95 = *(v68 + 2);
          if (!v95)
          {
            v95 = "invalid";
          }

          *v114 = 136446722;
          *&v114[4] = "__nw_protocol_finalize_output_frames";
          *&v114[12] = 2082;
          *&v114[14] = v95;
          *&v114[22] = 2048;
          v115 = v68;
          _os_log_impl(&dword_181A37000, v70, v94, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", v114, 0x20u);
        }
      }

      goto LABEL_190;
    }

    v81 = __nwlog_obj();
    *v114 = 136446210;
    *&v114[4] = "__nw_protocol_finalize_output_frames";
    v44 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v44, buf, type))
    {
      goto LABEL_200;
    }

    if (buf[0] == 17)
    {
      v45 = __nwlog_obj();
      v82 = buf[0];
      if (os_log_type_enabled(v45, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v45, v82, "%{public}s called with null protocol", v114, 0xCu);
      }

      goto LABEL_199;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v45 = __nwlog_obj();
      v97 = buf[0];
      if (os_log_type_enabled(v45, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v45, v97, "%{public}s called with null protocol, backtrace limit exceeded", v114, 0xCu);
      }

      goto LABEL_199;
    }

    v52 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v92 = buf[0];
    v93 = os_log_type_enabled(v45, buf[0]);
    if (!v52)
    {
      if (v93)
      {
        *v114 = 136446210;
        *&v114[4] = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v45, v92, "%{public}s called with null protocol, no backtrace", v114, 0xCu);
      }

      goto LABEL_199;
    }

    if (v93)
    {
      *v114 = 136446466;
      *&v114[4] = "__nw_protocol_finalize_output_frames";
      *&v114[12] = 2082;
      *&v114[14] = v52;
      _os_log_impl(&dword_181A37000, v45, v92, "%{public}s called with null protocol, dumping backtrace:%{public}s", v114, 0x16u);
    }

LABEL_87:

    goto LABEL_88;
  }

  v17 = v11;
  v18 = v12;
  v19 = v18;
  *type = 0;
  v104 = type;
  v105 = 0x2020000000;
  v106 = 0;
  v20 = *(v12 + 11);
  v117[0] = 0;
  v117[1] = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v102[3] = v117;
  if ((v18[205] & 1) != 0 && g_channel_get_flow_handler)
  {
    g_channel_get_flow_handler(v18);
    v21 = v11[37];
    *v114 = MEMORY[0x1E69E9820];
    *&v114[8] = 3221225472;
    *&v114[16] = ___ZL47nw_protocol_implementation_lookup_path_by_frameP31NWConcrete_nw_protocol_instancePU22objcproto11OS_nw_frame8NSObjectPm_block_invoke;
    v115 = &unk_1E6A2CFD0;
    *&v116 = v102;
    v22 = &v116 + 1;
  }

  else
  {
    v21 = v11[37];
    if (!v20)
    {
      node = nw_hash_table_get_node(v21, *(v17 + 38), 8);
      *(v104 + 3) = node;
      if (node)
      {
        goto LABEL_29;
      }

LABEL_31:
      if ((v17[413] & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_implementation_lookup_path_by_frame";
          v108 = 2082;
          v109 = v17 + 415;
          v110 = 2080;
          v111 = " ";
          v112 = 2048;
          v113 = v20;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path found for context %p", buf, 0x2Au);
        }
      }

      v29 = 0;
      extra = 0;
      goto LABEL_36;
    }

    *v114 = MEMORY[0x1E69E9820];
    *&v114[8] = 3221225472;
    *&v114[16] = ___ZL47nw_protocol_implementation_lookup_path_by_frameP31NWConcrete_nw_protocol_instancePU22objcproto11OS_nw_frame8NSObjectPm_block_invoke_2;
    v115 = &unk_1E6A2DD68;
    *(&v116 + 1) = v20;
    v22 = &v116;
  }

  *v22 = type;
  nw_hash_table_apply(v21, v114);
  node = *(v104 + 3);
  if (!node)
  {
    goto LABEL_31;
  }

LABEL_29:
  v29 = *(node + 16);
  extra = nw_hash_node_get_extra(node);
LABEL_36:
  _Block_object_dispose(v102, 8);
  _Block_object_dispose(type, 8);

  if (extra)
  {
    *(v19 + 4) = 0;
    v32 = extra[16];
    *(v19 + 5) = v32;
    *v32 = v19;
    extra[16] = v19 + 32;
    if ((v17[411] & 0x20) != 0 || !a6 || !extra[15])
    {
      goto LABEL_66;
    }

    if ((v17[413] & 0x80000000) == 0 && gLogDatapath == 1)
    {
      v76 = __nwlog_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        *v114 = 136446978;
        *&v114[4] = "nw_protocol_instance_add_outbound";
        *&v114[12] = 2082;
        *&v114[14] = v17 + 415;
        *&v114[22] = 2080;
        v115 = " ";
        LOWORD(v116) = 2048;
        *(&v116 + 2) = v29;
        _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing outbound frames for %lx (one-off)", v114, 0x2Au);
      }
    }

    v33 = extra[4];
    if (v33)
    {
      v34 = *(v33 + 5);
      v35 = extra[4];
      if (v34 != &nw_protocol_ref_counted_handle)
      {
        if (v34 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v35) = 0;
          goto LABEL_54;
        }

        v35 = *(v33 + 8);
        if (!v35)
        {
          goto LABEL_54;
        }
      }

      v37 = *(v35 + 88);
      if (v37)
      {
        *(v35 + 88) = v37 + 1;
      }

      LOBYTE(v35) = -1;
LABEL_54:
      *buf = v33;
      buf[8] = v35;
      v38 = *(v33 + 3);
      if (v38)
      {
        v39 = *(v38 + 96);
        if (v39)
        {
          v39();
          if ((buf[8] & 1) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }

      v100 = v35;
      v57 = v33;
      v58 = __nwlog_obj();
      v59 = *(v57 + 2);
      *v114 = 136446722;
      *&v114[4] = "__nw_protocol_finalize_output_frames";
      if (!v59)
      {
        v59 = "invalid";
      }

      *&v114[12] = 2082;
      *&v114[14] = v59;
      *&v114[22] = 2048;
      v60 = v57;
      v115 = v57;
      v61 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v102[0]) = 0;
      if (__nwlog_fault(v61, type, v102))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v62 = __nwlog_obj();
          v63 = type[0];
          if (os_log_type_enabled(v62, type[0]))
          {
            v64 = *(v60 + 2);
            if (!v64)
            {
              v64 = "invalid";
            }

            *v114 = 136446722;
            *&v114[4] = "__nw_protocol_finalize_output_frames";
            *&v114[12] = 2082;
            *&v114[14] = v64;
            *&v114[22] = 2048;
            v115 = v60;
            _os_log_impl(&dword_181A37000, v62, v63, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", v114, 0x20u);
          }

LABEL_180:

          goto LABEL_181;
        }

        if (LOBYTE(v102[0]) != 1)
        {
          v62 = __nwlog_obj();
          v90 = type[0];
          if (os_log_type_enabled(v62, type[0]))
          {
            v91 = *(v60 + 2);
            if (!v91)
            {
              v91 = "invalid";
            }

            *v114 = 136446722;
            *&v114[4] = "__nw_protocol_finalize_output_frames";
            *&v114[12] = 2082;
            *&v114[14] = v91;
            *&v114[22] = 2048;
            v115 = v60;
            _os_log_impl(&dword_181A37000, v62, v90, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", v114, 0x20u);
          }

          goto LABEL_180;
        }

        v77 = __nw_create_backtrace_string();
        v62 = __nwlog_obj();
        v78 = type[0];
        v79 = os_log_type_enabled(v62, type[0]);
        if (!v77)
        {
          if (v79)
          {
            v98 = *(v60 + 2);
            if (!v98)
            {
              v98 = "invalid";
            }

            *v114 = 136446722;
            *&v114[4] = "__nw_protocol_finalize_output_frames";
            *&v114[12] = 2082;
            *&v114[14] = v98;
            *&v114[22] = 2048;
            v115 = v60;
            _os_log_impl(&dword_181A37000, v62, v78, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", v114, 0x20u);
          }

          goto LABEL_180;
        }

        if (v79)
        {
          v80 = *(v60 + 2);
          if (!v80)
          {
            v80 = "invalid";
          }

          *v114 = 136446978;
          *&v114[4] = "__nw_protocol_finalize_output_frames";
          *&v114[12] = 2082;
          *&v114[14] = v80;
          *&v114[22] = 2048;
          v115 = v60;
          LOWORD(v116) = 2082;
          *(&v116 + 2) = v77;
          _os_log_impl(&dword_181A37000, v62, v78, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", v114, 0x2Au);
        }

        free(v77);
      }

LABEL_181:
      if (v61)
      {
        free(v61);
      }

      if ((v100 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_65:
      nw::release_if_needed<nw_protocol *>(buf);
      goto LABEL_66;
    }

    v73 = __nwlog_obj();
    *v114 = 136446210;
    *&v114[4] = "__nw_protocol_finalize_output_frames";
    v44 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v44, buf, type))
    {
      goto LABEL_200;
    }

    if (buf[0] == 17)
    {
      v74 = __nwlog_obj();
      v75 = buf[0];
      if (os_log_type_enabled(v74, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol", v114, 0xCu);
      }

LABEL_196:

      goto LABEL_200;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v74 = __nwlog_obj();
      v96 = buf[0];
      if (os_log_type_enabled(v74, buf[0]))
      {
        *v114 = 136446210;
        *&v114[4] = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v74, v96, "%{public}s called with null protocol, backtrace limit exceeded", v114, 0xCu);
      }

      goto LABEL_196;
    }

    v52 = __nw_create_backtrace_string();
    v74 = __nwlog_obj();
    v88 = buf[0];
    v89 = os_log_type_enabled(v74, buf[0]);
    if (!v52)
    {
      if (v89)
      {
        *v114 = 136446210;
        *&v114[4] = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v74, v88, "%{public}s called with null protocol, no backtrace", v114, 0xCu);
      }

      goto LABEL_196;
    }

    if (v89)
    {
      *v114 = 136446466;
      *&v114[4] = "__nw_protocol_finalize_output_frames";
      *&v114[12] = 2082;
      *&v114[14] = v52;
      _os_log_impl(&dword_181A37000, v74, v88, "%{public}s called with null protocol, dumping backtrace:%{public}s", v114, 0x16u);
    }

LABEL_88:
    free(v52);
    if (!v44)
    {
      goto LABEL_66;
    }

    goto LABEL_201;
  }

  if ((v17[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *v114 = 136446978;
      *&v114[4] = "nw_protocol_instance_add_outbound";
      *&v114[12] = 2082;
      *&v114[14] = v17 + 415;
      *&v114[22] = 2080;
      v115 = " ";
      LOWORD(v116) = 2048;
      *(&v116 + 2) = v19;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path found for frame %p", v114, 0x2Au);
    }
  }

LABEL_66:
}

void sub_181C83A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void nw_protocol_data_set_compression_generation_count(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_frame_set_compression_generation_count(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_data_set_compression_generation_count";
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
        v16 = "nw_protocol_data_set_compression_generation_count";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null data", buf, 0xCu);
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
          v16 = "nw_protocol_data_set_compression_generation_count";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_set_compression_generation_count";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_set_compression_generation_count";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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

necp_all_stats *nw_protocol_instance_get_stats(void *a1, int a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_instance_get_stats";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v11, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_get_stats";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v19 == 1)
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
            v22 = "nw_protocol_instance_get_stats";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_get_stats";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_instance_get_stats";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_26;
  }

  if (a3)
  {
    v7 = nw_protocol_implementation_lookup_path(v5, a3, 0);
    if (v7)
    {
      wakeup = *(v7 + 24);
      if (wakeup)
      {
        goto LABEL_7;
      }
    }

LABEL_26:
    stats_area = 0;
    goto LABEL_27;
  }

  wakeup = v5->wakeup;
  if (!wakeup)
  {
    goto LABEL_26;
  }

LABEL_7:
  stats_area = nw_path_flow_registration_get_stats_area(wakeup, a2);
LABEL_27:

  return stats_area;
}

void nw_protocol_instance_schedule_wakeup(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *location = 136446210;
    *&location[4] = "nw_protocol_instance_schedule_wakeup";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v12, &type, &v32))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance", location, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *location = 136446466;
          *&location[4] = "nw_protocol_instance_schedule_wakeup";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", location, 0x16u);
        }

        free(backtrace_string);
LABEL_59:
        if (!v12)
        {
          goto LABEL_9;
        }

LABEL_60:
        free(v12);
        goto LABEL_9;
      }

      if (v21)
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null instance, no backtrace", location, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v27, "%{public}s called with null instance, backtrace limit exceeded", location, 0xCu);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

  if (!v3[33])
  {
    v15 = __nwlog_obj();
    *location = 136446210;
    *&location[4] = "nw_protocol_instance_schedule_wakeup";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v12, &type, &v32))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null instance->wakeup", location, 0xCu);
      }

      goto LABEL_58;
    }

    if (v32 != 1)
    {
      v13 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null instance->wakeup, backtrace limit exceeded", location, 0xCu);
      }

      goto LABEL_58;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v13, type);
    if (!v22)
    {
      if (v24)
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null instance->wakeup, no backtrace", location, 0xCu);
      }

      goto LABEL_58;
    }

    if (v24)
    {
      *location = 136446466;
      *&location[4] = "nw_protocol_instance_schedule_wakeup";
      v35 = 2082;
      v36 = v22;
      _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null instance->wakeup, dumping backtrace:%{public}s", location, 0x16u);
    }

    goto LABEL_39;
  }

  v5 = v3[15];
  if (!v5)
  {
    v17 = __nwlog_obj();
    *location = 136446210;
    *&location[4] = "nw_protocol_instance_schedule_wakeup";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v12, &type, &v32))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance->context", location, 0xCu);
      }

      goto LABEL_58;
    }

    if (v32 != 1)
    {
      v13 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null instance->context, backtrace limit exceeded", location, 0xCu);
      }

      goto LABEL_58;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v13, type);
    if (!v22)
    {
      if (v26)
      {
        *location = 136446210;
        *&location[4] = "nw_protocol_instance_schedule_wakeup";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null instance->context, no backtrace", location, 0xCu);
      }

      goto LABEL_58;
    }

    if (v26)
    {
      *location = 136446466;
      *&location[4] = "nw_protocol_instance_schedule_wakeup";
      v35 = 2082;
      v36 = v22;
      _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null instance->context, dumping backtrace:%{public}s", location, 0x16u);
    }

LABEL_39:

    free(v22);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

  v6 = v5;
  v7 = v6;
  if ((v6[19] & 8) == 0)
  {
    dispatch_assert_queue_V2(v6[1]);
  }

  v8 = *(v4 + 272);
  if (!v8)
  {
    objc_initWeak(location, v4);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_schedule_wakeup_block_invoke;
    aBlock[3] = &unk_1E6A3A6C8;
    objc_copyWeak(&v31, location);
    v9 = _Block_copy(aBlock);
    v10 = *(v4 + 272);
    *(v4 + 272) = v9;

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
    v8 = *(v4 + 272);
  }

  *(v4 + 412) = *(v4 + 412) & 0xEF | (16 * (a2 != -1));
  nw_context_reset_timer_block(*(v4 + 120), v4, a2, v8);
LABEL_9:
}

void nw_context_reset_timer_block(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a1;
  v7 = a4;
  if (a3 == -1)
  {
    v8 = -1;
  }

  else
  {
    v8 = dispatch_time(0x8000000000000000, 1000000 * a3);
  }

  nw_context_reset_timer_block_with_time(v9, a2, v8, v7);
}

void nw_context_reset_timer_block_with_time(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v10 = v8;
  if (!v7)
  {
    v66 = __nwlog_obj(v8, v9);
    *buf = 136446210;
    v101 = "nw_context_reset_timer_block_with_time";
    v67 = _os_log_send_and_compose_impl();

    v99 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    v68 = __nwlog_fault(v67, &v99, &type);
    if (v68)
    {
      if (v99 == OS_LOG_TYPE_FAULT)
      {
        v70 = __nwlog_obj(v68, v69);
        v71 = v99;
        if (os_log_type_enabled(v70, v99))
        {
          *buf = 136446210;
          v101 = "nw_context_reset_timer_block_with_time";
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v70 = __nwlog_obj(backtrace_string, v82);
        v83 = v99;
        v84 = os_log_type_enabled(v70, v99);
        if (backtrace_string)
        {
          if (v84)
          {
            *buf = 136446466;
            v101 = "nw_context_reset_timer_block_with_time";
            v102 = 2082;
            v103 = backtrace_string;
            _os_log_impl(&dword_181A37000, v70, v83, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_125;
        }

        if (v84)
        {
          *buf = 136446210;
          v101 = "nw_context_reset_timer_block_with_time";
          _os_log_impl(&dword_181A37000, v70, v83, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v70 = __nwlog_obj(v68, v69);
        v92 = v99;
        if (os_log_type_enabled(v70, v99))
        {
          *buf = 136446210;
          v101 = "nw_context_reset_timer_block_with_time";
          _os_log_impl(&dword_181A37000, v70, v92, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_125:
    if (v67)
    {
      free(v67);
    }

    v7 = 0;
    goto LABEL_81;
  }

  if (!a2)
  {
    v72 = __nwlog_obj(v8, v9);
    *buf = 136446210;
    v101 = "nw_context_reset_timer_block_with_time";
    v16 = _os_log_send_and_compose_impl();

    v99 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    v73 = __nwlog_fault(v16, &v99, &type);
    if (!v73)
    {
      goto LABEL_134;
    }

    if (v99 == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj(v73, v74);
      v76 = v99;
      if (os_log_type_enabled(v75, v99))
      {
        *buf = 136446210;
        v101 = "nw_context_reset_timer_block_with_time";
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null handle", buf, 0xCu);
      }

      goto LABEL_133;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj(v73, v74);
      v93 = v99;
      if (os_log_type_enabled(v75, v99))
      {
        *buf = 136446210;
        v101 = "nw_context_reset_timer_block_with_time";
        _os_log_impl(&dword_181A37000, v75, v93, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_133;
    }

    v85 = __nw_create_backtrace_string();
    v75 = __nwlog_obj(v85, v86);
    v87 = v99;
    v88 = os_log_type_enabled(v75, v99);
    if (!v85)
    {
      if (v88)
      {
        *buf = 136446210;
        v101 = "nw_context_reset_timer_block_with_time";
        _os_log_impl(&dword_181A37000, v75, v87, "%{public}s called with null handle, no backtrace", buf, 0xCu);
      }

      goto LABEL_133;
    }

    if (v88)
    {
      *buf = 136446466;
      v101 = "nw_context_reset_timer_block_with_time";
      v102 = 2082;
      v103 = v85;
      _os_log_impl(&dword_181A37000, v75, v87, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_111;
  }

  v11 = v7;
  v12 = v11;
  if ((*(v11 + 152) & 8) == 0)
  {
    dispatch_assert_queue_V2(*(v11 + 1));
  }

  v7 = nw_context_copy_globals_context(v12);
  if (a3 == -1)
  {
    v26 = *(*(v7 + 4) + 8);
    if (v26)
    {
      do
      {
        v30 = *v26;
        if (v26[3] == a2)
        {
          v31 = v7;
          if ((v26[5] & 1) == 0)
          {
            v32 = *v26;
            v33 = v26[1];
            if (*v26)
            {
              v32[1] = v33;
              v27 = *(v7 + 4);
            }

            else
            {
              v27 = *(v7 + 4);
              *(v27 + 16) = v33;
            }

            *v33 = v32;
            *v26 = 0;
            v26[1] = 0;
            node = nw_hash_table_get_node(*(v27 + 24), v26[3], 0);
            nw_hash_table_remove_node(*(*(v7 + 4) + 24), node);
            v29 = v26[4];
            v26[4] = 0;

            free(v26);
          }
        }

        v26 = v30;
      }

      while (v30);
    }

    nw_context_cleanup_timer(v7);
LABEL_81:

    return;
  }

  if (!v10)
  {
    v77 = __nwlog_obj(v13, v14);
    *buf = 136446210;
    v101 = "nw_context_reset_timer_block_with_time";
    v16 = _os_log_send_and_compose_impl();

    v99 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    v78 = __nwlog_fault(v16, &v99, &type);
    if (!v78)
    {
      goto LABEL_134;
    }

    if (v99 == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj(v78, v79);
      v80 = v99;
      if (os_log_type_enabled(v75, v99))
      {
        *buf = 136446210;
        v101 = "nw_context_reset_timer_block_with_time";
        _os_log_impl(&dword_181A37000, v75, v80, "%{public}s called with null block", buf, 0xCu);
      }

LABEL_133:

LABEL_134:
      if (!v16)
      {
        goto LABEL_81;
      }

LABEL_80:
      free(v16);
      goto LABEL_81;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj(v78, v79);
      v94 = v99;
      if (os_log_type_enabled(v75, v99))
      {
        *buf = 136446210;
        v101 = "nw_context_reset_timer_block_with_time";
        _os_log_impl(&dword_181A37000, v75, v94, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_133;
    }

    v85 = __nw_create_backtrace_string();
    v75 = __nwlog_obj(v85, v89);
    v90 = v99;
    v91 = os_log_type_enabled(v75, v99);
    if (!v85)
    {
      if (v91)
      {
        *buf = 136446210;
        v101 = "nw_context_reset_timer_block_with_time";
        _os_log_impl(&dword_181A37000, v75, v90, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }

      goto LABEL_133;
    }

    if (v91)
    {
      *buf = 136446466;
      v101 = "nw_context_reset_timer_block_with_time";
      v102 = 2082;
      v103 = v85;
      _os_log_impl(&dword_181A37000, v75, v90, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_111:

    free(v85);
    if (!v16)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  v15 = *(*(v7 + 4) + 8);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v21 = v15;
      v15 = *v15;
      if (v21[3] == a2)
      {
        if (v16)
        {
          v22 = v7;
          if ((v21[5] & 1) == 0)
          {
            v23 = *v21;
            v24 = v21[1];
            if (*v21)
            {
              *(v23 + 8) = v24;
              v18 = *(v7 + 4);
            }

            else
            {
              v18 = *(v7 + 4);
              *(v18 + 16) = v24;
            }

            *v24 = v23;
            *v21 = 0;
            v21[1] = 0;
            v19 = nw_hash_table_get_node(*(v18 + 24), v21[3], 0);
            nw_hash_table_remove_node(*(*(v7 + 4) + 24), v19);
            v20 = v21[4];
            v21[4] = 0;

            free(v21);
          }
        }

        else
        {
          v25 = v21[1];
          if (v15)
          {
            v15[1] = v25;
          }

          else
          {
            *(*(v7 + 4) + 16) = v25;
          }

          *v25 = v15;
          v17 = 1;
          v16 = v21;
          *v21 = 0;
          v21[1] = 0;
        }
      }
    }

    while (v15);
    if (v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v17 = 0;
  }

  v16 = malloc_type_calloc(1uLL, 0x30uLL, 0xC61C58FuLL);
  if (v16)
  {
LABEL_38:
    *(v16 + 16) = a3;
    *(v16 + 24) = a2;
    v37 = _Block_copy(v10);
    v38 = *(v16 + 32);
    *(v16 + 32) = v37;

    v39 = *(v7 + 4);
    v40 = v39 + 1;
    do
    {
      v40 = *v40;
      if (!v40)
      {
        *v16 = 0;
        v42 = v39[2];
        *(v16 + 8) = v42;
        *v42 = v16;
        v39[2] = v16;
        if (v17)
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    while (*(v16 + 16) >= v40[2]);
    v41 = v40[1];
    *v16 = v40;
    *(v16 + 8) = v41;
    *v41 = v16;
    v40[1] = v16;
    if (v17)
    {
LABEL_54:
      if (v39[1] == v16)
      {
        v51 = v39[4];
        if (!v51 || v51 > *(v16 + 16))
        {
          v52 = *v39;
          if (!*v39)
          {
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __nw_context_reset_timer_block_with_time_block_invoke;
            v95[3] = &unk_1E6A3D868;
            v96 = v7;
            **(v7 + 4) = nw_queue_context_create_source(v96, 2, 7, 0, v95, 0);
            if (!networkd_settings_get_BOOL(nw_setting_context_timer_disable_qos_override))
            {
              nw_queue_source_set_qos_class_fallback(**(v7 + 4), 25);
            }

            v52 = **(v7 + 4);
          }

          nw_queue_set_timer_values(v52, *(v16 + 16), 0xFFFFFFFFFFFFFFFFLL, 0);
          nw_queue_activate_source(**(v7 + 4), v53);
          *(*(v7 + 4) + 32) = *(v16 + 16);
        }
      }

      goto LABEL_81;
    }

LABEL_44:
    v99 = OS_LOG_TYPE_DEFAULT;
    v43 = nw_hash_table_add_object(v39[3], v16, &v99);
    if (v99 == OS_LOG_TYPE_INFO && v43 != 0)
    {
      v39 = *(v7 + 4);
      goto LABEL_54;
    }

    v45 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v45);
    v46 = gLogObj;
    *buf = 136446210;
    v101 = "nw_context_reset_timer_block_with_time";
    v47 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v97 = 0;
    if (__nwlog_fault(v47, &type, &v97))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v48 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init(v48);
        v49 = gLogObj;
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v101 = "nw_context_reset_timer_block_with_time";
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s Failed to add timer to hash table", buf, 0xCu);
        }
      }

      else if (v97 == 1)
      {
        v54 = __nw_create_backtrace_string();
        if (v54)
        {
          v56 = v54;
          v57 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v57);
          v58 = gLogObj;
          v59 = type;
          if (os_log_type_enabled(v58, type))
          {
            *buf = 136446466;
            v101 = "nw_context_reset_timer_block_with_time";
            v102 = 2082;
            v103 = v56;
            _os_log_impl(&dword_181A37000, v58, v59, "%{public}s Failed to add timer to hash table, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v56);
          if (!v47)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v49 = __nwlog_obj(0, v55);
        v62 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v101 = "nw_context_reset_timer_block_with_time";
          _os_log_impl(&dword_181A37000, v49, v62, "%{public}s Failed to add timer to hash table, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v60 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init(v60);
        v49 = gLogObj;
        v61 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v101 = "nw_context_reset_timer_block_with_time";
          _os_log_impl(&dword_181A37000, v49, v61, "%{public}s Failed to add timer to hash table, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v47)
    {
LABEL_76:
      v63 = *v16;
      v64 = *(v16 + 8);
      if (*v16)
      {
        *(v63 + 8) = v64;
      }

      else
      {
        *(*(v7 + 4) + 16) = v64;
      }

      *v64 = v63;
      *v16 = 0;
      *(v16 + 8) = 0;
      v65 = *(v16 + 32);
      *(v16 + 32) = 0;

      goto LABEL_80;
    }

LABEL_75:
    free(v47);
    goto LABEL_76;
  }

  v34 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v34);
  v35 = gLogObj;
  os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v101 = "nw_context_reset_timer_block_with_time";
  v102 = 2048;
  v103 = 1;
  v104 = 2048;
  v105 = 48;
  v36 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v36))
  {
    free(v36);
    v16 = 0;
    goto LABEL_38;
  }

  __break(1u);
}

uint64_t nw_protocol_instance_get_flow_for_key(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_instance_get_flow_for_key";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
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
        v30 = "nw_protocol_instance_get_flow_for_key";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_instance_get_flow_for_key";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v30 = "nw_protocol_instance_get_flow_for_key";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      v30 = "nw_protocol_instance_get_flow_for_key";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_instance_get_flow_for_key";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
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
        v30 = "nw_protocol_instance_get_flow_for_key";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null key", buf, 0xCu);
      }

LABEL_53:

LABEL_54:
      if (v12)
      {
        free(v12);
      }

      goto LABEL_13;
    }

    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_instance_get_flow_for_key";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_instance_get_flow_for_key";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_instance_get_flow_for_key";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_38:

    free(backtrace_string);
    goto LABEL_54;
  }

  v5 = v3[30];
  if (!v5 || !*(v5 + 48))
  {
    if ((v4[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v30 = "nw_protocol_instance_get_flow_for_key";
        v31 = 2082;
        v32 = v4 + 415;
        v33 = 2080;
        v34 = " ";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFlow mapping table is empty", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  node = nw_hash_table_get_node(v5, a2, *(*(*(v4 + 1) + 80) + 264));
  if (!node)
  {
    if ((v4[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v30 = "nw_protocol_instance_get_flow_for_key";
        v31 = 2082;
        v32 = v4 + 415;
        v33 = 2080;
        v34 = " ";
        v35 = 2048;
        v36 = a2;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo flow found for key %p", buf, 0x2Au);
      }
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if ((v4[413] & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v24 = node;
    v25 = __nwlog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(v24 + 32);
      *buf = 136447234;
      v30 = "nw_protocol_instance_get_flow_for_key";
      v31 = 2082;
      v32 = v4 + 415;
      v33 = 2080;
      v34 = " ";
      v35 = 2048;
      v36 = v26;
      v37 = 2048;
      v38 = a2;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound flow %llx for custom flow mapping key %p", buf, 0x34u);
    }

    node = v24;
  }

  v7 = *(node + 32);
LABEL_14:

  return v7;
}

necp_all_stats *nw_path_flow_registration_get_stats_area(NWConcrete_nw_path_flow_registration *a1, int a2)
{
  *&v33[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_flow_registration_get_stats_area";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v21, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_stats_area";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null registration", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v31 = "nw_path_flow_registration_get_stats_area";
            v32 = 2082;
            *v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null registration, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_57;
        }

        if (v26)
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_stats_area";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null registration, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_stats_area";
          _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null registration, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v21)
    {
      free(v21);
    }

    return 0;
  }

  if ((*(a1 + 148) & 1) == 0)
  {
    return 0;
  }

  if ((a2 - 1) >= 3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446466;
    v31 = "nw_path_flow_registration_get_stats_area";
    v32 = 1024;
    *v33 = a2;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v11, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446466;
          v31 = "nw_path_flow_registration_get_stats_area";
          v32 = 1024;
          *v33 = a2;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Requested unknown stats type %u", buf, 0x12u);
        }
      }

      else if (v28 == 1)
      {
        v14 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (v14)
        {
          if (v16)
          {
            *buf = 136446722;
            v31 = "nw_path_flow_registration_get_stats_area";
            v32 = 1024;
            *v33 = a2;
            v33[2] = 2082;
            *&v33[3] = v14;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s Requested unknown stats type %u, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v14);
          if (!v11)
          {
            return 0;
          }

          goto LABEL_38;
        }

        if (v16)
        {
          *buf = 136446466;
          v31 = "nw_path_flow_registration_get_stats_area";
          v32 = 1024;
          *v33 = a2;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s Requested unknown stats type %u, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446466;
          v31 = "nw_path_flow_registration_get_stats_area";
          v32 = 1024;
          *v33 = a2;
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s Requested unknown stats type %u, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

    if (!v11)
    {
      return 0;
    }

LABEL_38:
    free(v11);
    return 0;
  }

  result = a1->flow_stats_area;
  if (!result || (var0 = result->var0.var0.var0.var0) == 0)
  {
    v17 = nw_path_flow_registration_copy_parent_evaluator(a1);
    v18 = nw_parameters_copy_context(*(v17 + 1));
    nw_context_assert_queue(v18);
    a1->flow_stats_area = 0;

    return 0;
  }

  v7 = a2 == 2 && var0 == 3;
  if (var0 != a2 && !v7)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      flow_stats_area = a1->flow_stats_area;
      if (flow_stats_area)
      {
        LODWORD(flow_stats_area) = flow_stats_area->var0.var0.var0.var0;
      }

      *buf = 136446722;
      v31 = "nw_path_flow_registration_get_stats_area";
      v32 = 1024;
      *v33 = flow_stats_area;
      v33[2] = 1024;
      *&v33[3] = a2;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Requested stats type does not match allocated type (%u != %u)", buf, 0x18u);
    }

    return 0;
  }

  return result;
}

void *nw::release_if_needed<nw_protocol *>(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 + 40);
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
    {
      v3 = *(v1 + 88);
      if (v3)
      {
        v4 = v3 - 1;
        *(v1 + 88) = v4;
        if (!v4)
        {
          v5 = result;
          v6 = *(v1 + 64);
          if (v6)
          {
            v7 = _Block_copy(v6);
            v8 = *(v1 + 64);
            *(v1 + 64) = 0;

            v9 = _Block_copy(v7);
            v11 = _Block_copy(v9);

            v11[2](v11);
            v10 = *(v1 + 64);
            if (*(v1 + 72))
            {
              if (v10)
              {
                *(v1 + 64) = 0;

                v10 = *(v1 + 64);
              }
            }
          }

          else
          {
            v10 = 0;
          }

          *(v1 + 64) = 0;

          free(v1);
          result = v5;
        }
      }
    }

    *result = 0;
  }

  return result;
}

uint64_t ProtocolMetadata.protocolIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return sub_181F49A24(v2, v3, v4);
}

uint64_t nw_parameters_copy_protocol_options_for_definition(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = v4[23];
      if (v6)
      {
        v7 = _nw_parameters_copy_protocol_options_for_identifier_object(v3, v6);
      }

      else
      {
        v8 = v5;

        v7 = _nw_parameters_copy_protocol_options_for_identifier(v3, v8 + 1);
      }

      v9 = v7;

      goto LABEL_7;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_parameters_copy_protocol_options_for_definition";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_parameters_copy_protocol_options_for_definition";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null definition", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v24 != 1)
      {
        v13 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_parameters_copy_protocol_options_for_definition";
          _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_parameters_copy_protocol_options_for_definition";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v21)
      {
        *buf = 136446466;
        v27 = "nw_parameters_copy_protocol_options_for_definition";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_parameters_copy_protocol_options_for_definition";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_parameters_copy_protocol_options_for_definition";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parameters", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v24 != 1)
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_parameters_copy_protocol_options_for_definition";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v27 = "nw_parameters_copy_protocol_options_for_definition";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v19)
      {
        *buf = 136446466;
        v27 = "nw_parameters_copy_protocol_options_for_definition";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }
  }

LABEL_40:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

uint64_t sub_181C86AF4(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *v24 = *(a1 + 16);
  v25 = v2;
  v26 = v3;
  v27 = v4;
  sub_181F49A24(v2, v3, v4);
  if (qword_1ED4100F8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED411CD8;
  v6 = unk_1ED411CE0;
  v7 = byte_1ED411CE8;
  v20 = word_1ED411CD0;
  v21 = qword_1ED411CD8;
  v22 = unk_1ED411CE0;
  v23 = byte_1ED411CE8;
  v8 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v24, &v20);
  v9 = v21;
  v10 = v22;
  v11 = v23;
  sub_181F49A24(v5, v6, v7);
  sub_181F48350(v9, v10, v11);
  sub_181F48350(v25, v26, v27);
  if (v8)
  {

    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *v24 = *(a1 + 16);
    v25 = v13;
    v26 = v14;
    v27 = v15;
    sub_181F49A24(v13, v14, v15);
    if (qword_1ED40FDA0 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED40FDB0;
    v17 = unk_1ED40FDB8;
    v18 = byte_1ED40FDC0;
    v20 = word_1ED40FDA8;
    v21 = qword_1ED40FDB0;
    v22 = unk_1ED40FDB8;
    v23 = byte_1ED40FDC0;
    v12 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v24, &v20);
    sub_181F49A24(v16, v17, v18);

    sub_181F48350(v21, v22, v23);
    sub_181F48350(v25, v26, v27);
  }

  return v12 & 1;
}

uint64_t nw_endpoint_handler_get_mode(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[29];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_mode";
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
        v15 = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
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
          v15 = "nw_endpoint_handler_get_mode";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

BOOL nw_protocol_options_is_quic(nw_protocol_options_t options)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = options;
  v2 = v1;
  if (v1)
  {
    if (_nw_protocol_options_is_quic_connection(v1))
    {
      is_quic_stream = 1;
    }

    else
    {
      is_quic_stream = _nw_protocol_options_is_quic_stream(v2);
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_quic";
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
        v15 = "nw_protocol_options_is_quic";
        v9 = "%{public}s called with null options";
LABEL_19:
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
            v15 = "nw_protocol_options_is_quic";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v15 = "nw_protocol_options_is_quic";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_quic";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

  is_quic_stream = 0;
LABEL_5:

  return is_quic_stream;
}

uint64_t nw_quic_connection_get_is_speculative_attempt(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    is_speculative_attempt = _nw_quic_connection_get_is_speculative_attempt(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_is_speculative_attempt";
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
        v14 = "nw_quic_connection_get_is_speculative_attempt";
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
            v14 = "nw_quic_connection_get_is_speculative_attempt";
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
        v14 = "nw_quic_connection_get_is_speculative_attempt";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_is_speculative_attempt";
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

  is_speculative_attempt = 0;
LABEL_3:

  return is_speculative_attempt;
}

uint64_t _nw_quic_connection_get_is_speculative_attempt(uint64_t a1)
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

      return (v6 >> 16) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_is_above_failure_threshold(void *a1, _BYTE *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
      }

      v4 = nw_protocol_copy_quic_connection_definition_quic_definition;
      if (v4)
      {
        cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v4);
        if (cached_content_for_protocol)
        {
          v6 = cached_content_for_protocol;
          int64_with_default = networkd_settings_get_int64_with_default(nw_setting_quic_failure_threshold, 10);
          v8 = networkd_settings_get_int64_with_default(nw_setting_quic_application_failure_threshold, 3);
          if (v6[6] || int64_with_default >= v6[7] && int64_with_default >= v6[8])
          {
            v9 = 0;
          }

          else
          {
            *a2 = 0;
            if (gLogDatapath == 1)
            {
              v32 = v8;
              v33 = __nwlog_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v34 = v6[6];
                v35 = v6[7];
                v36 = v6[8];
                *buf = 136446978;
                v41 = "nw_quic_is_above_failure_threshold";
                v42 = 1024;
                *v43 = v34;
                *&v43[4] = 1024;
                *&v43[6] = v35;
                v44 = 1024;
                v45 = v36;
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s QUIC above failure threshold (success: %u, fail: %u, cancel: %u)", buf, 0x1Eu);
              }

              v9 = 1;
              v8 = v32;
            }

            else
            {
              v9 = 1;
            }
          }

          v10 = v6[10];
          if (v6[9] < v10 && v8 < v10)
          {
            v9 = 1;
            *a2 = 1;
            if (gLogDatapath == 1)
            {
              v12 = __nwlog_obj();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v13 = v6[9];
                v14 = v6[10];
                *buf = 136446722;
                v41 = "nw_quic_is_above_failure_threshold";
                v42 = 1024;
                *v43 = v13;
                *&v43[4] = 1024;
                *&v43[6] = v14;
                _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s QUIC above application failure threshold (success: %u, fail: %u)", buf, 0x18u);
              }
            }
          }

          goto LABEL_74;
        }

LABEL_73:
        v9 = 0;
LABEL_74:

        goto LABEL_75;
      }

      v21 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_quic_is_above_failure_threshold";
      v22 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v22, &type, &v38))
      {
LABEL_71:
        if (v22)
        {
          free(v22);
        }

        goto LABEL_73;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v25 = "%{public}s called with null definition";
LABEL_69:
          _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
        }
      }

      else
      {
        if (v38 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v23 = __nwlog_obj();
          v24 = type;
          v31 = os_log_type_enabled(v23, type);
          if (backtrace_string)
          {
            if (v31)
            {
              *buf = 136446466;
              v41 = "nw_quic_is_above_failure_threshold";
              v42 = 2082;
              *v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_71;
          }

          if (!v31)
          {
            goto LABEL_70;
          }

          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v25 = "%{public}s called with null definition, no backtrace";
          goto LABEL_69;
        }

        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v25 = "%{public}s called with null definition, backtrace limit exceeded";
          goto LABEL_69;
        }
      }

LABEL_70:

      goto LABEL_71;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_quic_is_above_failure_threshold";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v16, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v19 = "%{public}s called with null application";
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (v38 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v19 = "%{public}s called with null application, backtrace limit exceeded";
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      v26 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v29 = os_log_type_enabled(v17, type);
      if (!v26)
      {
        if (v29)
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v19 = "%{public}s called with null application, no backtrace";
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (!v29)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v41 = "nw_quic_is_above_failure_threshold";
      v42 = 2082;
      *v43 = v26;
      v28 = "%{public}s called with null application, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v17, v18, v28, buf, 0x16u);
LABEL_43:

      free(v26);
    }
  }

  else
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_quic_is_above_failure_threshold";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v16, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v19 = "%{public}s called with null association";
LABEL_62:
          _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
        }

LABEL_63:

        goto LABEL_64;
      }

      if (v38 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v19 = "%{public}s called with null association, backtrace limit exceeded";
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      v26 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v27 = os_log_type_enabled(v17, type);
      if (!v26)
      {
        if (v27)
        {
          *buf = 136446210;
          v41 = "nw_quic_is_above_failure_threshold";
          v19 = "%{public}s called with null association, no backtrace";
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (!v27)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v41 = "nw_quic_is_above_failure_threshold";
      v42 = 2082;
      *v43 = v26;
      v28 = "%{public}s called with null association, dumping backtrace:%{public}s";
      goto LABEL_42;
    }
  }

LABEL_64:
  if (v16)
  {
    free(v16);
  }

  v9 = 0;
LABEL_75:

  return v9;
}

uint64_t ___ZL31nw_resolver_check_svcb_completeP22NWConcrete_nw_resolver_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    return 1;
  }

  v3 = *(a3 + 38);
  if ((v3 & 5) != 0 && (v3 & 0xA) != 0)
  {
    return 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 0;
}

void nw_resolver_service_cancel_query(NWConcrete_nw_resolver_service *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (v1->gai)
    {
      dnssd_getaddrinfo_invalidate();
      gai = v2->gai;
      v2->gai = 0;
    }

    goto LABEL_4;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_service_cancel_query";
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
        v15 = "nw_resolver_service_cancel_query";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null service", buf, 0xCu);
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
          v15 = "nw_resolver_service_cancel_query";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_cancel_query";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_cancel_query";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
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

id nw_endpoint_handler_copy_association(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      nw_endpoint_handler_initialize_association(v3);
    }

    v5 = v4[7];
    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_handler_copy_association";
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
        v18 = "nw_endpoint_handler_copy_association";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
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
          v18 = "nw_endpoint_handler_copy_association";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_handler_copy_association";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_handler_copy_association";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

uint64_t nw_resolver_service_get_priority(NWConcrete_nw_resolver_service *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    priority = v1->priority;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_service_get_priority";
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
        v15 = "nw_resolver_service_get_priority";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null service", buf, 0xCu);
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
          v15 = "nw_resolver_service_get_priority";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_priority";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_priority";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  priority = 0;
  v1 = 0;
LABEL_3:

  return priority;
}

uint64_t nw_resolver_service_get_weight(NWConcrete_nw_resolver_service *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    weight = v1->weight;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_service_get_weight";
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
        v15 = "nw_resolver_service_get_weight";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null service", buf, 0xCu);
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
          v15 = "nw_resolver_service_get_weight";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_weight";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_weight";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  weight = 0;
  v1 = 0;
LABEL_3:

  return weight;
}

OS_dispatch_data *nw_resolver_service_copy_ech_config(NWConcrete_nw_resolver_service *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1->ech_config;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_resolver_service_copy_ech_config";
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
        v16 = "nw_resolver_service_copy_ech_config";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null service", buf, 0xCu);
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
          v16 = "nw_resolver_service_copy_ech_config";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_resolver_service_copy_ech_config";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_resolver_service_copy_ech_config";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
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

uint64_t ___ZL41nw_resolver_create_happy_eyeballs_variantP22NWConcrete_nw_resolverPU22objcproto11OS_nw_array8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (nw_endpoint_get_type(v6) == nw_endpoint_type_address)
  {
    if (nw_endpoint_get_address_family(v6) == *(a1 + 56))
    {
      v7 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v7;
}

uint64_t sa_dst_compare_init_once(void)
{
  info = 0;
  result = mach_timebase_info(&info);
  cache_timeout = 1000000000 * info.denom / info.numer;
  return result;
}

uint64_t nw_create_control_socket(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = socket(32, 2, 2);
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
  {
    v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_create_control_socket";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    v5 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v48[0] = 0;
    if (!__nwlog_fault(v5, type, v48))
    {
      goto LABEL_33;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_33;
      }

      *buf = 136446466;
      *&buf[4] = "nw_create_control_socket";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      v8 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d";
    }

    else if (v48[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      v17 = os_log_type_enabled(gLogObj, type[0]);
      if (backtrace_string)
      {
        if (!v17)
        {
          goto LABEL_25;
        }

        *buf = 136446722;
        *&buf[4] = "nw_create_control_socket";
        *&buf[12] = 1024;
        *&buf[14] = v4;
        *&buf[18] = 2082;
        *&buf[20] = backtrace_string;
        v18 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d, dumping backtrace:%{public}s";
        v19 = buf;
        v20 = v6;
        v21 = v7;
        v22 = 28;
        goto LABEL_24;
      }

      if (!v17)
      {
        goto LABEL_33;
      }

      *buf = 136446466;
      *&buf[4] = "nw_create_control_socket";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      v8 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_33;
      }

      *buf = 136446466;
      *&buf[4] = "nw_create_control_socket";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      v8 = "%{public}s socket(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL) failed %{darwin.errno}d, backtrace limit exceeded";
    }

    v23 = buf;
    v24 = v6;
    v25 = v7;
    v26 = 18;
LABEL_32:
    _os_log_impl(&dword_181A37000, v24, v25, v8, v23, v26);
    goto LABEL_33;
  }

  v51 = 1;
  if (setsockopt(v2, 0xFFFF, 4130, &v51, 4u))
  {
LABEL_3:
    close(v3);
    return 0xFFFFFFFFLL;
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v61 = 0u;
  memset(buf, 0, sizeof(buf));
  if (a1)
  {
LABEL_9:
    v9 = 0;
    while (1)
    {
      v10 = *(a1 + v9);
      buf[v9 + 4] = v10;
      if (!v10)
      {
        break;
      }

      if (++v9 == 95)
      {
        HIBYTE(v65) = 0;
        break;
      }
    }

    if (ioctl(v3, 0xC0644E03uLL, buf, v43) < 0)
    {
      goto LABEL_3;
    }

    *v48 = 139296;
    *&v48[4] = *buf;
    *&v48[8] = 0;
    *&v48[12] = 0;
    v49 = 0;
    v50 = 0;
    if (connect(v3, v48, 0x20u))
    {
      goto LABEL_3;
    }

    v47 = 0x20000;
    if (!setsockopt(v3, 0xFFFF, 4098, &v47, 4u))
    {
      goto LABEL_48;
    }

    v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *type = 136446978;
    v53 = "nw_create_control_socket";
    v54 = 1024;
    v55 = v3;
    v56 = 1024;
    v57 = v47;
    v58 = 1024;
    LODWORD(v59[0]) = v11;
    LODWORD(v44) = 30;
    v12 = _os_log_send_and_compose_impl();
    v46 = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v12, &v46, &v45))
    {
      if (v46 == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = v46;
        if (!os_log_type_enabled(v13, v46))
        {
          goto LABEL_46;
        }

        *type = 136446978;
        v53 = "nw_create_control_socket";
        v54 = 1024;
        v55 = v3;
        v56 = 1024;
        v57 = v47;
        v58 = 1024;
        LODWORD(v59[0]) = v11;
        v15 = "%{public}s setsockopt(%d, SOL_SOCKET, SO_RCVBUF, %d) %{darwin.errno}d";
        goto LABEL_45;
      }

      if (v45 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v46;
        if (!os_log_type_enabled(v13, v46))
        {
          goto LABEL_46;
        }

        *type = 136446978;
        v53 = "nw_create_control_socket";
        v54 = 1024;
        v55 = v3;
        v56 = 1024;
        v57 = v47;
        v58 = 1024;
        LODWORD(v59[0]) = v11;
        v15 = "%{public}s setsockopt(%d, SOL_SOCKET, SO_RCVBUF, %d) %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_45;
      }

      v28 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v46;
      v29 = os_log_type_enabled(v13, v46);
      if (v28)
      {
        if (v29)
        {
          *type = 136447234;
          v53 = "nw_create_control_socket";
          v54 = 1024;
          v55 = v3;
          v56 = 1024;
          v57 = v47;
          v58 = 1024;
          LODWORD(v59[0]) = v11;
          WORD2(v59[0]) = 2082;
          *(v59 + 6) = v28;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s setsockopt(%d, SOL_SOCKET, SO_RCVBUF, %d) %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x28u);
        }

        free(v28);
        goto LABEL_46;
      }

      if (v29)
      {
        *type = 136446978;
        v53 = "nw_create_control_socket";
        v54 = 1024;
        v55 = v3;
        v56 = 1024;
        v57 = v47;
        v58 = 1024;
        LODWORD(v59[0]) = v11;
        v15 = "%{public}s setsockopt(%d, SOL_SOCKET, SO_RCVBUF, %d) %{darwin.errno}d, no backtrace";
LABEL_45:
        _os_log_impl(&dword_181A37000, v13, v14, v15, type, 0x1Eu);
      }
    }

LABEL_46:
    if (v12)
    {
      free(v12);
    }

LABEL_48:
    v30 = fcntl(v3, 3, 0, v44);
    if (v30 != -1)
    {
      v31 = v30 | 4;
      if (fcntl(v3, 4, v30 | 4u) != -1)
      {
        return v3;
      }

      v32 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      __nwlog_obj();
      *type = 136446978;
      v53 = "nw_create_control_socket";
      v54 = 1024;
      v55 = v3;
      v56 = 1024;
      v57 = v31;
      v58 = 1024;
      LODWORD(v59[0]) = v32;
      v5 = _os_log_send_and_compose_impl();
      v46 = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (!__nwlog_fault(v5, &v46, &v45))
      {
        goto LABEL_33;
      }

      if (v46 == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = v46;
        if (os_log_type_enabled(v33, v46))
        {
          *type = 136446978;
          v53 = "nw_create_control_socket";
          v54 = 1024;
          v55 = v3;
          v56 = 1024;
          v57 = v31;
          v58 = 1024;
          LODWORD(v59[0]) = v32;
          v8 = "%{public}s fcntl(%d, F_SETFL, %d) %{darwin.errno}d";
LABEL_76:
          v23 = type;
          v24 = v33;
          v25 = v34;
          v26 = 30;
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      if (v45 != 1)
      {
        v33 = __nwlog_obj();
        v34 = v46;
        if (os_log_type_enabled(v33, v46))
        {
          *type = 136446978;
          v53 = "nw_create_control_socket";
          v54 = 1024;
          v55 = v3;
          v56 = 1024;
          v57 = v31;
          v58 = 1024;
          LODWORD(v59[0]) = v32;
          v8 = "%{public}s fcntl(%d, F_SETFL, %d) %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_76;
        }

LABEL_33:
        if (!v5)
        {
          return v3;
        }

LABEL_34:
        free(v5);
        return v3;
      }

      backtrace_string = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = v46;
      v40 = os_log_type_enabled(v33, v46);
      if (!backtrace_string)
      {
        if (v40)
        {
          *type = 136446978;
          v53 = "nw_create_control_socket";
          v54 = 1024;
          v55 = v3;
          v56 = 1024;
          v57 = v31;
          v58 = 1024;
          LODWORD(v59[0]) = v32;
          v8 = "%{public}s fcntl(%d, F_SETFL, %d) %{darwin.errno}d, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_33;
      }

      if (!v40)
      {
LABEL_25:
        free(backtrace_string);
        if (!v5)
        {
          return v3;
        }

        goto LABEL_34;
      }

      *type = 136447234;
      v53 = "nw_create_control_socket";
      v54 = 1024;
      v55 = v3;
      v56 = 1024;
      v57 = v31;
      v58 = 1024;
      LODWORD(v59[0]) = v32;
      WORD2(v59[0]) = 2082;
      *(v59 + 6) = backtrace_string;
      v18 = "%{public}s fcntl(%d, F_SETFL, %d) %{darwin.errno}d, dumping backtrace:%{public}s";
      v19 = type;
      v20 = v33;
      v21 = v34;
      v22 = 40;
LABEL_24:
      _os_log_impl(&dword_181A37000, v20, v21, v18, v19, v22);
      goto LABEL_25;
    }

    v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *type = 136446722;
    v53 = "nw_create_control_socket";
    v54 = 1024;
    v55 = v3;
    v56 = 1024;
    v57 = v35;
    v5 = _os_log_send_and_compose_impl();
    v46 = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v5, &v46, &v45))
    {
      goto LABEL_33;
    }

    if (v46 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = v46;
      if (!os_log_type_enabled(v36, v46))
      {
        goto LABEL_33;
      }

      *type = 136446722;
      v53 = "nw_create_control_socket";
      v54 = 1024;
      v55 = v3;
      v56 = 1024;
      v57 = v35;
      v8 = "%{public}s fcntl(%d, F_GETFL, 0) %{darwin.errno}d";
    }

    else if (v45 == 1)
    {
      v38 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = v46;
      v39 = os_log_type_enabled(v36, v46);
      if (v38)
      {
        if (v39)
        {
          *type = 136446978;
          v53 = "nw_create_control_socket";
          v54 = 1024;
          v55 = v3;
          v56 = 1024;
          v57 = v35;
          v58 = 2082;
          v59[0] = v38;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s fcntl(%d, F_GETFL, 0) %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x22u);
        }

        free(v38);
        goto LABEL_33;
      }

      if (!v39)
      {
        goto LABEL_33;
      }

      *type = 136446722;
      v53 = "nw_create_control_socket";
      v54 = 1024;
      v55 = v3;
      v56 = 1024;
      v57 = v35;
      v8 = "%{public}s fcntl(%d, F_GETFL, 0) %{darwin.errno}d, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = v46;
      if (!os_log_type_enabled(v36, v46))
      {
        goto LABEL_33;
      }

      *type = 136446722;
      v53 = "nw_create_control_socket";
      v54 = 1024;
      v55 = v3;
      v56 = 1024;
      v57 = v35;
      v8 = "%{public}s fcntl(%d, F_GETFL, 0) %{darwin.errno}d, backtrace limit exceeded";
    }

    v23 = type;
    v24 = v36;
    v25 = v37;
    v26 = 24;
    goto LABEL_32;
  }

  v41 = __nwlog_obj();
  os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
  *type = 136446210;
  v53 = "_strict_strlcpy";
  v43 = 12;
  v42 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v42);
  if (!result)
  {
    free(v42);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void __nw_interface_get_loopback_index_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  nw_interface_get_loopback_index_index = if_nametoindex("lo0");
  if (!nw_interface_get_loopback_index_index)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v0 = gLogObj;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v1 = 136446210;
      v2 = "nw_interface_get_loopback_index_block_invoke";
      _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s Unable to determine interface index for lo0, using 1", &v1, 0xCu);
    }

    nw_interface_get_loopback_index_index = 1;
  }
}

void nw_protocol_callbacks_set_disconnect(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 32) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_disconnect";
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
        v13 = "nw_protocol_callbacks_set_disconnect";
        v5 = "%{public}s called with null disconnect";
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
        v13 = "nw_protocol_callbacks_set_disconnect";
        v5 = "%{public}s called with null disconnect, backtrace limit exceeded";
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
          v13 = "nw_protocol_callbacks_set_disconnect";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null disconnect, dumping backtrace:%{public}s", buf, 0x16u);
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
        v13 = "nw_protocol_callbacks_set_disconnect";
        v5 = "%{public}s called with null disconnect, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_disconnect";
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
      v13 = "nw_protocol_callbacks_set_disconnect";
      v5 = "%{public}s called with null callbacks";
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
      v13 = "nw_protocol_callbacks_set_disconnect";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
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
      v13 = "nw_protocol_callbacks_set_disconnect";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_disconnect";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_callbacks_set_waiting_for_output(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 216) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_waiting_for_output";
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
        v13 = "nw_protocol_callbacks_set_waiting_for_output";
        v5 = "%{public}s called with null waiting_for_output";
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
        v13 = "nw_protocol_callbacks_set_waiting_for_output";
        v5 = "%{public}s called with null waiting_for_output, backtrace limit exceeded";
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
          v13 = "nw_protocol_callbacks_set_waiting_for_output";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null waiting_for_output, dumping backtrace:%{public}s", buf, 0x16u);
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
        v13 = "nw_protocol_callbacks_set_waiting_for_output";
        v5 = "%{public}s called with null waiting_for_output, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_waiting_for_output";
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
      v13 = "nw_protocol_callbacks_set_waiting_for_output";
      v5 = "%{public}s called with null callbacks";
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
      v13 = "nw_protocol_callbacks_set_waiting_for_output";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
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
      v13 = "nw_protocol_callbacks_set_waiting_for_output";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_waiting_for_output";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_callbacks_set_reset(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 256) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_reset";
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
        v13 = "nw_protocol_callbacks_set_reset";
        v5 = "%{public}s called with null reset";
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
        v13 = "nw_protocol_callbacks_set_reset";
        v5 = "%{public}s called with null reset, backtrace limit exceeded";
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
          v13 = "nw_protocol_callbacks_set_reset";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null reset, dumping backtrace:%{public}s", buf, 0x16u);
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
        v13 = "nw_protocol_callbacks_set_reset";
        v5 = "%{public}s called with null reset, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_reset";
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
      v13 = "nw_protocol_callbacks_set_reset";
      v5 = "%{public}s called with null callbacks";
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
      v13 = "nw_protocol_callbacks_set_reset";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
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
      v13 = "nw_protocol_callbacks_set_reset";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_reset";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_instance_enumerate_flows(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 29);
    if (v5 && *(v5 + 48))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __nw_protocol_instance_enumerate_flows_block_invoke;
      v15[3] = &unk_1E6A2CDC8;
      v16 = v3;
      v17 = v4;
      nw_hash_table_apply(v5, v15);
    }

    else if ((v3[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v21 = "nw_protocol_instance_enumerate_flows";
        v22 = 2082;
        v23 = v3 + 415;
        v24 = 2080;
        v25 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo flows to enumerate", buf, 0x20u);
      }
    }

    goto LABEL_9;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_instance_enumerate_flows";
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
        v21 = "nw_protocol_instance_enumerate_flows";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
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
          v21 = "nw_protocol_instance_enumerate_flows";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v13)
      {
        *buf = 136446210;
        v21 = "nw_protocol_instance_enumerate_flows";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_instance_enumerate_flows";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

uint64_t __nw_protocol_instance_enumerate_flows_block_invoke(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v9 = *(a1 + 32);
    if (v9 && *(v9 + 413) < 0)
    {
      return 1;
    }

    v10 = __nwlog_obj();
    v11 = *(a1 + 32);
    v12 = v11 == 0;
    if (v11)
    {
      v13 = (v11 + 415);
    }

    else
    {
      v13 = "";
    }

    *buf = 136446722;
    v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
    if (v12)
    {
      v14 = "";
    }

    else
    {
      v14 = " ";
    }

    v68 = 2082;
    v69 = v13;
    v70 = 2080;
    v71 = v14;
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v15, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          v18 = *(a1 + 32);
          v19 = v18 == 0;
          if (v18)
          {
            v20 = (v18 + 415);
          }

          else
          {
            v20 = "";
          }

          *buf = 136446722;
          if (v19)
          {
            v21 = "";
          }

          else
          {
            v21 = " ";
          }

          v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
          v68 = 2082;
          v69 = v20;
          v70 = 2080;
          v71 = v21;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s %{public}s%sNull node while enumerating flows", buf, 0x20u);
        }
      }

      else if (v64 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v35)
          {
            v36 = *(a1 + 32);
            v37 = v36 == 0;
            if (v36)
            {
              v38 = (v36 + 415);
            }

            else
            {
              v38 = "";
            }

            if (v37)
            {
              v39 = "";
            }

            else
            {
              v39 = " ";
            }

            *buf = 136446978;
            v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
            v68 = 2082;
            v69 = v38;
            v70 = 2080;
            v71 = v39;
            v72 = 2082;
            v73 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v34, "%{public}s %{public}s%sNull node while enumerating flows, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_103;
        }

        if (v35)
        {
          v56 = *(a1 + 32);
          v57 = v56 == 0;
          if (v56)
          {
            v58 = (v56 + 415);
          }

          else
          {
            v58 = "";
          }

          *buf = 136446722;
          if (v57)
          {
            v59 = "";
          }

          else
          {
            v59 = " ";
          }

          v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
          v68 = 2082;
          v69 = v58;
          v70 = 2080;
          v71 = v59;
          _os_log_impl(&dword_181A37000, v16, v34, "%{public}s %{public}s%sNull node while enumerating flows, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v16, type))
        {
          v47 = *(a1 + 32);
          v48 = v47 == 0;
          if (v47)
          {
            v49 = (v47 + 415);
          }

          else
          {
            v49 = "";
          }

          *buf = 136446722;
          if (v48)
          {
            v50 = "";
          }

          else
          {
            v50 = " ";
          }

          v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
          v68 = 2082;
          v69 = v49;
          v70 = 2080;
          v71 = v50;
          _os_log_impl(&dword_181A37000, v16, v46, "%{public}s %{public}s%sNull node while enumerating flows, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_103:
    if (!v15)
    {
      return 1;
    }

LABEL_104:
    free(v15);
    return 1;
  }

  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  if (!v4)
  {
    if (v5 && v5[413] < 0)
    {
      return 1;
    }

    v22 = __nwlog_obj();
    v23 = *(a1 + 32);
    v24 = v23 == 0;
    if (v23)
    {
      v25 = (v23 + 415);
    }

    else
    {
      v25 = "";
    }

    *buf = 136446978;
    v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
    v68 = 2082;
    v69 = v25;
    if (v24)
    {
      v26 = "";
    }

    else
    {
      v26 = " ";
    }

    v70 = 2080;
    v71 = v26;
    v72 = 2048;
    v73 = a2;
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v15, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          v29 = *(a1 + 32);
          v30 = v29 == 0;
          if (v29)
          {
            v31 = (v29 + 415);
          }

          else
          {
            v31 = "";
          }

          *buf = 136446978;
          if (v30)
          {
            v32 = "";
          }

          else
          {
            v32 = " ";
          }

          v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
          v68 = 2082;
          v69 = v31;
          v70 = 2080;
          v71 = v32;
          v72 = 2048;
          v73 = a2;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s %{public}s%sNull protocol in node %p", buf, 0x2Au);
        }
      }

      else if (v64 == 1)
      {
        v40 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v41 = type;
        v42 = os_log_type_enabled(v27, type);
        if (v40)
        {
          if (v42)
          {
            v43 = *(a1 + 32);
            v44 = (v43 + 415);
            v12 = v43 == 0;
            v45 = "";
            if (v12)
            {
              v44 = "";
            }

            else
            {
              v45 = " ";
            }

            *buf = 136447234;
            v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
            v68 = 2082;
            v69 = v44;
            v70 = 2080;
            v71 = v45;
            v72 = 2048;
            v73 = a2;
            v74 = 2082;
            v75 = v40;
            _os_log_impl(&dword_181A37000, v27, v41, "%{public}s %{public}s%sNull protocol in node %p, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v40);
          if (!v15)
          {
            return 1;
          }

          goto LABEL_104;
        }

        if (v42)
        {
          v60 = *(a1 + 32);
          v61 = (v60 + 415);
          v62 = v60 == 0;
          v63 = "";
          if (v62)
          {
            v61 = "";
          }

          *buf = 136446978;
          if (!v62)
          {
            v63 = " ";
          }

          v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
          v68 = 2082;
          v69 = v61;
          v70 = 2080;
          v71 = v63;
          v72 = 2048;
          v73 = a2;
          _os_log_impl(&dword_181A37000, v27, v41, "%{public}s %{public}s%sNull protocol in node %p, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v27, type))
        {
          v52 = *(a1 + 32);
          v53 = v52 == 0;
          if (v52)
          {
            v54 = (v52 + 415);
          }

          else
          {
            v54 = "";
          }

          *buf = 136446978;
          if (v53)
          {
            v55 = "";
          }

          else
          {
            v55 = " ";
          }

          v67 = "nw_protocol_instance_enumerate_flows_block_invoke";
          v68 = 2082;
          v69 = v54;
          v70 = 2080;
          v71 = v55;
          v72 = 2048;
          v73 = a2;
          _os_log_impl(&dword_181A37000, v27, v51, "%{public}s %{public}s%sNull protocol in node %p, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    goto LABEL_103;
  }

  v6 = v5;
  if (nw_protocol_definition_get_message_is_stream(v6[1]) && *(v6 - 6) == v4)
  {

    return 1;
  }

  if (v4 == -2)
  {
    return 1;
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void nw_protocol_data_finalizer(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_data_finalizer";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v23, &type, &v41))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v44 = "nw_protocol_data_finalizer";
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_83:
        if (!v23)
        {
          goto LABEL_32;
        }

LABEL_84:
        free(v23);
        goto LABEL_32;
      }

      if (v32)
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v38, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_82:

    goto LABEL_83;
  }

  if (!v8)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_data_finalizer";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v23, &type, &v41))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null frame", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v41 != 1)
    {
      v24 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v39, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v33 = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v34 = type;
    v35 = os_log_type_enabled(v24, type);
    if (!v33)
    {
      if (v35)
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null frame, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v35)
    {
      *buf = 136446466;
      v44 = "nw_protocol_data_finalizer";
      v45 = 2082;
      v46 = v33;
      _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_62;
  }

  if (!a4)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_data_finalizer";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v23, &type, &v41))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null existing_master_array", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v41 != 1)
    {
      v24 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null existing_master_array, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v33 = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v36 = type;
    v37 = os_log_type_enabled(v24, type);
    if (!v33)
    {
      if (v37)
      {
        *buf = 136446210;
        v44 = "nw_protocol_data_finalizer";
        _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null existing_master_array, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v37)
    {
      *buf = 136446466;
      v44 = "nw_protocol_data_finalizer";
      v45 = 2082;
      v46 = v33;
      _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null existing_master_array, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_62:

    free(v33);
    if (!v23)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

  v10 = *(v8 + 102);
  if (v10)
  {
    if ((*(v8 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v8, *(v8 + 11)))
    {
      v13 = *(v9 + 112);
      if (v13)
      {
        free(v13);
      }
    }
  }

  else
  {
    v11 = *(v8 + 13);
    if (v11)
    {
      if ((*(v8 + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v8, *(v8 + 11)))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v9 + 112);
      }

      nw_mem_buffer_free(v11, v12);
    }

    else if ((v10 & 2) != 0)
    {
      nw_frame_set_external_data(v8, 0, 0);
    }
  }

  nw_frame_reset(v9, 0, 0, 0, 0);
  v14 = (v9 + 16);
  v15 = *(v9 + 16);
  v16 = *(v9 + 204) & 0xFFFE;
  *(v9 + 204) = v16;
  v17 = *(v9 + 24);
  if (v15 | v17)
  {
    v18 = (a4 + 8);
    if (v15)
    {
      v18 = (v15 + 24);
    }

    *v18 = v17;
    *v17 = v15;
    *v14 = 0;
    *(v9 + 24) = 0;
    v16 = *(v9 + 204);
  }

  if ((v16 & 4) != 0)
  {
    v19 = *(v9 + 216);
    if (v19)
    {
      *(v9 + 216) = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v7 + 40);
  if (v20 <= 0x27)
  {
    *(v9 + 16) = 0;
    v21 = v7[22];
    *(v9 + 24) = v21;
    *v21 = v9;
    v7[22] = v14;
    *(v7 + 40) = v20 + 1;
    if (!v19)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v19)
  {
LABEL_30:
    v19[2](v19, a3);
  }

LABEL_31:

LABEL_32:
}

uint64_t ___ZL31nw_protocol_implementation_readP31NWConcrete_nw_protocol_instanceP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (!extra)
  {
    return 1;
  }

  v6 = extra;
  if (!*(extra + 120))
  {
    return 1;
  }

  v7 = *(a1 + 32);
  if ((!v7 || (*(v7 + 413) & 0x80000000) == 0) && gLogDatapath == 1)
  {
    v28 = a1;
    v29 = __nwlog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(v28 + 32);
      v31 = v30 == 0;
      if (v30)
      {
        v32 = (v30 + 415);
      }

      else
      {
        v32 = "";
      }

      *buf = 136446978;
      v50 = "nw_protocol_implementation_read_block_invoke";
      v51 = 2082;
      v52 = v32;
      if (v31)
      {
        v33 = "";
      }

      else
      {
        v33 = " ";
      }

      v53 = 2080;
      v54 = v33;
      v55 = 2048;
      v56 = object;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing pending outbound frames for %lx (one-off)", buf, 0x2Au);
    }
  }

  v8 = *(v6 + 32);
  if (v8)
  {
    v9 = *(v8 + 5);
    v10 = *(v6 + 32);
    if (v9 != &nw_protocol_ref_counted_handle)
    {
      if (v9 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v10) = 0;
        v11 = 1;
        goto LABEL_14;
      }

      v10 = *(v8 + 8);
      if (!v10)
      {
        v11 = 1;
        goto LABEL_14;
      }
    }

    v12 = *(v10 + 88);
    v11 = 0;
    if (v12)
    {
      *(v10 + 88) = v12 + 1;
    }

    LOBYTE(v10) = -1;
LABEL_14:
    *v46 = v8;
    v47 = v10;
    v13 = *(v8 + 3);
    if (v13)
    {
      v14 = *(v13 + 96);
      if (v14)
      {
        v14();
LABEL_17:
        if ((v11 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(v46);
        }

        return 1;
      }
    }

    v16 = v8;
    v17 = __nwlog_obj();
    v18 = *(v16 + 2);
    *buf = 136446722;
    v50 = "__nw_protocol_finalize_output_frames";
    if (!v18)
    {
      v18 = "invalid";
    }

    v51 = 2082;
    v52 = v18;
    v53 = 2048;
    v19 = v16;
    v54 = v16;
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v20, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          v23 = *(v19 + 2);
          if (!v23)
          {
            v23 = "invalid";
          }

          *buf = 136446722;
          v50 = "__nw_protocol_finalize_output_frames";
          v51 = 2082;
          v52 = v23;
          v53 = 2048;
          v54 = v19;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
        }
      }

      else if (v45 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v36)
          {
            if (*(v19 + 2))
            {
              v37 = *(v19 + 2);
            }

            else
            {
              v37 = "invalid";
            }

            *buf = 136446978;
            v50 = "__nw_protocol_finalize_output_frames";
            v51 = 2082;
            v52 = v37;
            v53 = 2048;
            v54 = v19;
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v35, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_71;
        }

        if (v36)
        {
          if (*(v19 + 2))
          {
            v44 = *(v19 + 2);
          }

          else
          {
            v44 = "invalid";
          }

          *buf = 136446722;
          v50 = "__nw_protocol_finalize_output_frames";
          v51 = 2082;
          v52 = v44;
          v53 = 2048;
          v54 = v19;
          _os_log_impl(&dword_181A37000, v21, v35, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v21, type))
        {
          v42 = *(v19 + 2);
          if (!v42)
          {
            v42 = "invalid";
          }

          *buf = 136446722;
          v50 = "__nw_protocol_finalize_output_frames";
          v51 = 2082;
          v52 = v42;
          v53 = 2048;
          v54 = v19;
          _os_log_impl(&dword_181A37000, v21, v41, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_71:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_17;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  v50 = "__nw_protocol_finalize_output_frames";
  v25 = _os_log_send_and_compose_impl();

  v46[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, v46, &type))
  {
    if (v46[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = v46[0];
      if (os_log_type_enabled(v26, v46[0]))
      {
        *buf = 136446210;
        v50 = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v38 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v39 = v46[0];
      v40 = os_log_type_enabled(v26, v46[0]);
      if (v38)
      {
        if (v40)
        {
          *buf = 136446466;
          v50 = "__nw_protocol_finalize_output_frames";
          v51 = 2082;
          v52 = v38;
          _os_log_impl(&dword_181A37000, v26, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
        goto LABEL_76;
      }

      if (v40)
      {
        *buf = 136446210;
        v50 = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v39, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v43 = v46[0];
      if (os_log_type_enabled(v26, v46[0]))
      {
        *buf = 136446210;
        v50 = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v43, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_76:
  if (v25)
  {
    free(v25);
  }

  return 1;
}

void sub_181C8BE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a14);
  _Unwind_Resume(exception_object);
}

uint64_t nw_interface_ioctl_get_multicast(int a1, _BYTE *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  if (!a2)
  {
    v4 = a1;
    v5 = __nwlog_obj();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v10 = 136446210;
    v11 = "_strict_strlcpy";
    v7 = 12;
    v6 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v6);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v6);
    a1 = v4;
    a2 = 0;
  }

  LOBYTE(v8) = *a2;
  if (v8)
  {
    BYTE1(v8) = a2[1];
    if (BYTE1(v8))
    {
      BYTE2(v8) = a2[2];
      if (BYTE2(v8))
      {
        BYTE3(v8) = a2[3];
        if (BYTE3(v8))
        {
          BYTE4(v8) = a2[4];
          if (BYTE4(v8))
          {
            BYTE5(v8) = a2[5];
            if (BYTE5(v8))
            {
              BYTE6(v8) = a2[6];
              if (BYTE6(v8))
              {
                BYTE7(v8) = a2[7];
                if (BYTE7(v8))
                {
                  BYTE8(v8) = a2[8];
                  if (BYTE8(v8))
                  {
                    BYTE9(v8) = a2[9];
                    if (BYTE9(v8))
                    {
                      BYTE10(v8) = a2[10];
                      if (BYTE10(v8))
                      {
                        BYTE11(v8) = a2[11];
                        if (BYTE11(v8))
                        {
                          BYTE12(v8) = a2[12];
                          if (BYTE12(v8))
                          {
                            BYTE13(v8) = a2[13];
                            if (BYTE13(v8))
                            {
                              BYTE14(v8) = a2[14];
                              if (BYTE14(v8))
                              {
                                HIBYTE(v8) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return ioctl(a1, 0xC0206911uLL, &v8, v7) != -1 && (v9 & 0x8000u) != 0;
}

uint64_t nw_protocol_implementation_lookup_path_by_protocol(NWConcrete_nw_protocol_instance *a1, nw_protocol *a2, unint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v22 = 0;
    flow_registration = v5->flow_registration;
    if (flow_registration)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = ___ZL50nw_protocol_implementation_lookup_path_by_protocolP31NWConcrete_nw_protocol_instanceP11nw_protocolPm_block_invoke;
      v18[3] = &unk_1E6A2DB20;
      v18[4] = buf;
      v18[5] = a2;
      v18[6] = a3;
      nw_hash_table_apply(flow_registration, v18);
      v8 = *(*&buf[8] + 24);
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_lookup_path_by_protocol";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v11, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_lookup_path_by_protocol";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          *&buf[4] = "nw_protocol_implementation_lookup_path_by_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_lookup_path_by_protocol";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_lookup_path_by_protocol";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

BOOL ___ZL50nw_protocol_implementation_lookup_path_by_protocolP31NWConcrete_nw_protocol_instanceP11nw_protocolPm_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v5 = extra;
  while (1)
  {
    v5 = *(v5 + 32);
    if (!v5)
    {
      break;
    }

    if (*(a1 + 40) == v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = extra;
      if (*(a1 + 48))
      {
        **(a1 + 48) = nw_hash_node_get_object(a2);
      }

      return v5 == 0;
    }
  }

  return v5 == 0;
}

uint64_t nw_protocol_implementation_lookup_path(NWConcrete_nw_protocol_instance *a1, uint64_t current_path, unint64_t *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!current_path)
  {
    current_path = v5->current_path;
    if (a3)
    {
      *a3 = current_path;
    }
  }

  node = nw_hash_table_get_node(v5->flow_registration, current_path, 8);
  if (node)
  {
    v8 = node + 32;
  }

  else
  {
    if ((v6[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446978;
        v12 = "nw_protocol_implementation_lookup_path";
        v13 = 2082;
        v14 = v6 + 415;
        v15 = 2080;
        v16 = " ";
        v17 = 2048;
        v18 = current_path;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path found for %lx", &v11, 0x2Au);
      }
    }

    v8 = 0;
  }

  return v8;
}

void nw_protocol_instance_update_outbound_data_limit(void *a1, uint64_t a2, int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = v5[15];
      if (v7)
      {
        v8 = v7;
        v9 = v8;
        if ((v8[19] & 8) == 0)
        {
          dispatch_assert_queue_V2(v8[1]);
        }
      }

      if ((v6[410] & 0x40) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        *buf = 136446210;
        v56 = "nw_protocol_instance_update_outbound_data_limit";
        v11 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v11, &type, &v53))
        {
          goto LABEL_51;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Outbound data limit updates is not opted in", buf, 0xCu);
          }

LABEL_50:

          goto LABEL_51;
        }

        if (v53 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v26 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v26, "%{public}s Outbound data limit updates is not opted in, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_50;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (v25)
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v24, "%{public}s Outbound data limit updates is not opted in, no backtrace", buf, 0xCu);
          }

          goto LABEL_50;
        }

        if (v25)
        {
          *buf = 136446466;
          v56 = "nw_protocol_instance_update_outbound_data_limit";
          v57 = 2082;
          *v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s Outbound data limit updates is not opted in, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_38:

        free(backtrace_string);
        if (!v11)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if (*(*(v6 + 1) + 64) == 3)
      {
        v14 = *(v6 + 29);
        if (a2 == -1)
        {
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __nw_protocol_instance_update_outbound_data_limit_block_invoke;
          v49[3] = &unk_1E6A2CDA0;
          v52 = a3;
          v51 = -1;
          v50 = v6;
          nw_hash_table_apply(v14, v49);

          goto LABEL_53;
        }

        node = nw_hash_table_get_node(*(v6 + 29), a2, 8);
        if (!node)
        {
          if ((v6[413] & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v27 = gLogObj;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v56 = "nw_protocol_instance_update_outbound_data_limit";
              v57 = 2082;
              *v58 = v6 + 415;
              *&v58[8] = 2080;
              *v59 = " ";
              *&v59[8] = 2048;
              v60 = a2;
              _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot set outbound data limit, flow %llx does not exist", buf, 0x2Au);
            }
          }

          goto LABEL_53;
        }

        v16 = *(node + 16);
        if (gLogDatapath == 1)
        {
          v45 = node;
          v46 = __nwlog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = *(v45 + 72);
            *buf = 136446978;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            v57 = 1024;
            *v58 = v47;
            *&v58[4] = 1024;
            *&v58[6] = a3;
            *v59 = 2048;
            *&v59[2] = a2;
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Increase current outbound data limit %u to %u bytes for flow %llx", buf, 0x22u);
          }

          node = v45;
          *(v45 + 72) = a3;
          if (!a3)
          {
            goto LABEL_53;
          }
        }

        else
        {
          *(node + 72) = a3;
          if (!a3)
          {
            goto LABEL_53;
          }
        }

        v17 = *(node + 84);
        if ((v17 & 0x180) != 0x80 || v16 == 0)
        {
          goto LABEL_53;
        }

        v19 = *(v16 + 24);
        if (!v19 || !*(v19 + 72))
        {
          goto LABEL_53;
        }

        *(node + 84) = v17 | 0x100;
        v20 = v6[413];
        goto LABEL_33;
      }

      if (a2 == -1)
      {
        if (gLogDatapath == 1)
        {
          v41 = __nwlog_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = *(v6 + 26);
            *buf = 136446722;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            v57 = 1024;
            *v58 = v42;
            *&v58[4] = 1024;
            *&v58[6] = a3;
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s Increase current outbound data limit %u to %u bytes for connection", buf, 0x18u);
          }
        }

        *(v6 + 26) = a3;
        if (!a3)
        {
          goto LABEL_53;
        }

        if ((v6[412] & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        v20 = v6[413];
        if (v20)
        {
          goto LABEL_53;
        }

        v21 = *(v6 - 6);
        if (!v21)
        {
          goto LABEL_53;
        }

        v22 = *(v21 + 24);
        if (!v22 || !*(v22 + 72))
        {
          goto LABEL_53;
        }

LABEL_33:
        v6[413] = v20 | 1;
        goto LABEL_53;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      v56 = "nw_protocol_instance_update_outbound_data_limit";
      v11 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (__nwlog_fault(v11, &type, &v53))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v39, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 0xCu);
          }

          goto LABEL_50;
        }

        if (v53 != 1)
        {
          v12 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v48, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_50;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (v44)
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v43, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), no backtrace", buf, 0xCu);
          }

          goto LABEL_50;
        }

        if (v44)
        {
          *buf = 136446466;
          v56 = "nw_protocol_instance_update_outbound_data_limit";
          v57 = 2082;
          *v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v43, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v30 = __nwlog_obj();
      *buf = 136446210;
      v56 = "nw_protocol_instance_update_outbound_data_limit";
      v11 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (__nwlog_fault(v11, &type, &v53))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v31 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null flow", buf, 0xCu);
          }

          goto LABEL_50;
        }

        if (v53 != 1)
        {
          v12 = __nwlog_obj();
          v40 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v40, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_50;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (v36)
          {
            *buf = 136446210;
            v56 = "nw_protocol_instance_update_outbound_data_limit";
            _os_log_impl(&dword_181A37000, v12, v35, "%{public}s called with null flow, no backtrace", buf, 0xCu);
          }

          goto LABEL_50;
        }

        if (v36)
        {
          *buf = 136446466;
          v56 = "nw_protocol_instance_update_outbound_data_limit";
          v57 = 2082;
          *v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v35, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_protocol_instance_update_outbound_data_limit";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v11, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v56 = "nw_protocol_instance_update_outbound_data_limit";
          _os_log_impl(&dword_181A37000, v12, v29, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_50;
      }

      if (v53 != 1)
      {
        v12 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v56 = "nw_protocol_instance_update_outbound_data_limit";
          _os_log_impl(&dword_181A37000, v12, v37, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_50;
      }

      v32 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v12, type);
      if (!v32)
      {
        if (v34)
        {
          *buf = 136446210;
          v56 = "nw_protocol_instance_update_outbound_data_limit";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_50;
      }

      if (v34)
      {
        *buf = 136446466;
        v56 = "nw_protocol_instance_update_outbound_data_limit";
        v57 = 2082;
        *v58 = v32;
        _os_log_impl(&dword_181A37000, v12, v33, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v32);
    }
  }

LABEL_51:
  if (v11)
  {
LABEL_52:
    free(v11);
  }

LABEL_53:
}

void nw_protocol_outbound_data_finalizer(void *a1, int a2, char *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v18 = "nw_protocol_outbound_data_finalizer";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Finalizing outbound frame by copying", buf, 0xCu);
      }
    }

    v6 = nw_frame_unclaimed_length(v5);
    v7 = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZL35nw_protocol_outbound_data_finalizerPU22objcproto11OS_nw_frame8NSObjectbPv_block_invoke;
    v12[3] = &unk_1E6A2D188;
    v15 = v6;
    v13 = v5;
    v14 = a3;
    v16 = a2;
    nw_protocol_request_outbound_data(v14, 0, v7, v12);
  }

  else
  {
    if ((!a3 || (a3[413] & 0x80000000) == 0) && gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = a3 + 415;
        if (!a3)
        {
          v10 = "";
        }

        *buf = 136446978;
        v18 = "nw_protocol_outbound_data_finalizer";
        v19 = 2082;
        v20 = v10;
        v11 = " ";
        if (!a3)
        {
          v11 = "";
        }

        v21 = 2080;
        v22 = v11;
        v23 = 2048;
        v24 = v5;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing outbound frame %p without copying (drop)", buf, 0x2Au);
      }
    }

    nw_protocol_data_finalizer(a3, v5, 0, (a3 + 144));
  }
}

uint64_t QUICConnectionProtocol.QUICConnectionMetadata.__deallocating_deinit()
{
  QUICConnectionProtocol.QUICConnectionMetadata.deinit();

  return swift_deallocClassInstance();
}

const void **QUICConnectionProtocol.QUICConnectionMetadata.deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
    if (sub_181A93260(v2))
    {
    }
  }

  swift_unknownObjectRelease();

  _Block_release(v1[9]);
  _Block_release(v1[10]);
  _Block_release(v1[11]);
  _Block_release(v1[12]);
  _Block_release(v1[13]);
  _Block_release(v1[14]);
  _Block_release(v1[15]);
  _Block_release(v1[16]);
  _Block_release(v1[17]);
  _Block_release(v1[18]);
  _Block_release(v1[19]);
  _Block_release(v1[20]);
  _Block_release(v1[21]);
  _Block_release(v1[22]);
  _Block_release(v1[23]);
  _Block_release(v1[24]);
  _Block_release(v1[25]);
  _Block_release(v1[26]);
  _Block_release(v1[27]);
  _Block_release(v1[28]);
  swift_unknownObjectRelease();

  return v1;
}

nw_interface_radio_type_t nw_data_transfer_report_get_path_radio_type(nw_data_transfer_report_t report, uint32_t path_index)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_path_radio_type";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_path_radio_type";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_get_path_radio_type";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_path_radio_type";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_path_radio_type";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_path_radio_type";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (path_index == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = path_index;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_get_path_radio_type";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_path_radio_type";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_get_path_radio_type";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_path_radio_type";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_path_radio_type";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    radio_type = nw_interface_radio_type_unknown;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  radio_type = nw_interface_get_radio_type(*(v7 + 352));
LABEL_13:

  return radio_type;
}

uint64_t nw_interface_create_with_name(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_create_with_name(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_create_with_name";
  v13 = 2082;
  v14 = "Invalid interface name";
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
        *buf = 136446466;
        v12 = "nw_interface_create_with_name";
        v13 = 2082;
        v14 = "Invalid interface name";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_create_with_name";
            v13 = 2082;
            v14 = "Invalid interface name";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_create_with_name";
        v13 = 2082;
        v14 = "Invalid interface name";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_create_with_name";
        v13 = 2082;
        v14 = "Invalid interface name";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

id _nw_interface_create_with_name_0()
{
  v0 = sub_182AD3158();
  sub_181C8DF10(v0, v1, &v15, v16);
  type metadata accessor for Interface.BackingClass();
  v2 = swift_allocObject();
  v3 = v17[0];
  v2[9] = v16[8];
  v2[10] = v3;
  *(v2 + 170) = *(v17 + 10);
  v4 = v16[5];
  v2[5] = v16[4];
  v2[6] = v4;
  v5 = v16[7];
  v2[7] = v16[6];
  v2[8] = v5;
  v6 = v16[1];
  v2[1] = v16[0];
  v2[2] = v6;
  v7 = v16[3];
  v2[3] = v16[2];
  v2[4] = v7;
  v8 = type metadata accessor for __NWInterface();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v11 = swift_slowAlloc();
  *&v9[v10] = v11;
  *&v9[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v9[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v2;
  *v11 = 0;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

void sub_181C8DF10(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_182AD3048();
  v10 = if_nametoindex((v9 + 32));

  if (v10)
  {
    sub_181C8E1E0(v10, a1, a2, &v30, v28);
    if (v4)
    {
      *a3 = v30;
    }

    else
    {
      v23 = v29[0];
      a4[8] = v28[8];
      a4[9] = v23;
      *(a4 + 154) = *(v29 + 10);
      v24 = v28[5];
      a4[4] = v28[4];
      a4[5] = v24;
      v25 = v28[7];
      a4[6] = v28[6];
      a4[7] = v25;
      v26 = v28[1];
      *a4 = v28[0];
      a4[1] = v26;
      v27 = v28[3];
      a4[2] = v28[2];
      a4[3] = v27;
    }
  }

  else
  {
    sub_1820CD11C();
    v11 = swift_allocError();
    *v12 = 2;
    swift_willThrow();
    if (qword_1EA837198 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843330);

    v14 = v11;
    v15 = sub_182AD2678();
    v16 = sub_182AD38B8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v17 = 136315394;
      v20 = sub_181C64FFC(a1, a2, &v30);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v11;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_181A37000, v15, v16, "init(name: String) failed for interface index %s: %@", v17, 0x16u);
      sub_1820CD170(v18);
      MEMORY[0x1865DF520](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v17, -1, -1);
    }

    else
    {
    }

    *a3 = 2;
    LODWORD(v30) = 2;
    swift_willThrowTypedImpl();
  }
}

double sub_181C8E1E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  functional_type = a4;
  type metadata accessor for SystemSocket();
  inited = swift_initStackObject();
  *(inited + 16) = -1;

  v6 = socket(2, 2, 0);
  *(inited + 16) = v6;
  if (v6 > 0)
  {

    sub_181C8E664(v6, v32);
    v12 = sub_182AD3048();
    functional_type = nw_interface_ioctl_get_functional_type(v6, (v12 + 32));

    if ((functional_type & 0x80000000) == 0)
    {
      if (functional_type > 3)
      {
        if (functional_type == 4)
        {
          v14 = 2;
          v13 = 1;
          goto LABEL_28;
        }

        if (functional_type == 5)
        {
          v13 = 2;
          goto LABEL_25;
        }

        if (functional_type != 6)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_25;
        }
      }

      else if (functional_type != 1)
      {
        if (functional_type != 2)
        {
          if (functional_type == 3)
          {
            v13 = 1;
            v14 = 1;
LABEL_28:
            v26 = sub_182AD3048();

            delegate_index = nw_interface_ioctl_get_delegate_index(v6, (v26 + 32));

            swift_setDeallocating();
            close(*(inited + 16));

            v28 = v36;
            *(a5 + 104) = v35;
            *(a5 + 120) = v28;
            v29 = v38;
            *(a5 + 136) = v37;
            *(a5 + 152) = v29;
            v30 = v32[1];
            *(a5 + 40) = v32[0];
            *(a5 + 56) = v30;
            result = *&v33;
            v31 = v34;
            *(a5 + 72) = v33;
            *a5 = a1;
            *(a5 + 8) = delegate_index;
            *(a5 + 16) = 0;
            *(a5 + 24) = a2;
            *(a5 + 32) = a3;
            *(a5 + 88) = v31;
            *(a5 + 168) = v13;
            *(a5 + 169) = v14;
            return result;
          }

          goto LABEL_22;
        }

        v13 = 3;
LABEL_25:
        if (functional_type == 6)
        {
          v14 = 3;
        }

        else
        {
          v14 = 4 * (functional_type == 7);
        }

        goto LABEL_28;
      }

      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (qword_1EA837190 != -1)
  {
LABEL_31:
    swift_once();
  }

  v15 = sub_182AD2698();
  __swift_project_value_buffer(v15, qword_1EA843318);
  v16 = sub_182AD2678();
  v17 = sub_182AD38B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_181A37000, v16, v17, "File descriptor is bad, could not create socket", v18, 2u);
    MEMORY[0x1865DF520](v18, -1, -1);
  }

  v39 = 22;
  sub_1820CD11C();
  swift_willThrowTypedImpl();
  swift_setDeallocating();
  close(v6);
  if (qword_1EA837198 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v15, qword_1EA843330);
  v19 = sub_182AD2678();
  v20 = sub_182AD38B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    swift_allocError();
    *v23 = 22;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_181A37000, v19, v20, "Failed to create a socket with error: %@", v21, 0xCu);
    sub_1820CD170(v22);
    MEMORY[0x1865DF520](v22, -1, -1);
    MEMORY[0x1865DF520](v21, -1, -1);
  }

  *functional_type = 22;
  v39 = 22;
  swift_willThrowTypedImpl();

  return result;
}
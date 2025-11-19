uint64_t nw_protocol_ipv4_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v91 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_protocol_ipv4_remove_input_handler";
    v73 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (__nwlog_fault(v73, &type, &v85))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v74 = __nwlog_obj();
        v75 = type;
        if (os_log_type_enabled(v74, type))
        {
          *buf = 136446210;
          v88 = "nw_protocol_ipv4_remove_input_handler";
          v76 = "%{public}s called with null protocol";
LABEL_150:
          _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
        }
      }

      else if (v85 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v74 = __nwlog_obj();
        v75 = type;
        v82 = os_log_type_enabled(v74, type);
        if (backtrace_string)
        {
          if (v82)
          {
            *buf = 136446466;
            v88 = "nw_protocol_ipv4_remove_input_handler";
            v89 = 2082;
            v90 = backtrace_string;
            _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_151;
        }

        if (v82)
        {
          *buf = 136446210;
          v88 = "nw_protocol_ipv4_remove_input_handler";
          v76 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_150;
        }
      }

      else
      {
        v74 = __nwlog_obj();
        v75 = type;
        if (os_log_type_enabled(v74, type))
        {
          *buf = 136446210;
          v88 = "nw_protocol_ipv4_remove_input_handler";
          v76 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_150;
        }
      }
    }

LABEL_151:
    if (v73)
    {
      free(v73);
    }

    return 0;
  }

  v4 = a1;
  handle = a1->handle;
  v6 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v6 = *a1[1].flow_id;
  if (v6)
  {
LABEL_6:
    callbacks = v6[1].callbacks;
    v7 = 0;
    if (callbacks)
    {
      v6[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v7 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v9 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v88 = "nw_protocol_ipv4_remove_input_handler";
      v10 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v85 = 0;
      if (!__nwlog_fault(v10, &type, &v85))
      {
        goto LABEL_48;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v88 = "nw_protocol_ipv4_remove_input_handler";
        v13 = "%{public}s called with null ipv4";
      }

      else
      {
        if (v85 == 1)
        {
          v27 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          v29 = type;
          v30 = os_log_type_enabled(gLogObj, type);
          if (v27)
          {
            if (v30)
            {
              *buf = 136446466;
              v88 = "nw_protocol_ipv4_remove_input_handler";
              v89 = 2082;
              v90 = v27;
              _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v27);
            goto LABEL_48;
          }

          if (!v30)
          {
LABEL_48:
            if (v10)
            {
              free(v10);
            }

LABEL_50:
            result = 0;
            if (v7)
            {
              return result;
            }

            goto LABEL_114;
          }

          *buf = 136446210;
          v88 = "nw_protocol_ipv4_remove_input_handler";
          v13 = "%{public}s called with null ipv4, no backtrace";
          v31 = v28;
          v32 = v29;
LABEL_47:
          _os_log_impl(&dword_181A37000, v31, v32, v13, buf, 0xCu);
          goto LABEL_48;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v88 = "nw_protocol_ipv4_remove_input_handler";
        v13 = "%{public}s called with null ipv4, backtrace limit exceeded";
      }

      v31 = v11;
      v32 = v12;
      goto LABEL_47;
    }

    v9 = *a1[1].flow_id;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v88 = "__nw_protocol_get_output_handler";
    v77 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (__nwlog_fault(v77, &type, &v85))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = type;
        if (os_log_type_enabled(v78, type))
        {
          *buf = 136446210;
          v88 = "__nw_protocol_get_output_handler";
          v80 = "%{public}s called with null protocol";
LABEL_156:
          _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0xCu);
        }
      }

      else if (v85 == 1)
      {
        v83 = __nw_create_backtrace_string();
        v78 = __nwlog_obj();
        v79 = type;
        v84 = os_log_type_enabled(v78, type);
        if (v83)
        {
          if (v84)
          {
            *buf = 136446466;
            v88 = "__nw_protocol_get_output_handler";
            v89 = 2082;
            v90 = v83;
            _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v83);
          goto LABEL_157;
        }

        if (v84)
        {
          *buf = 136446210;
          v88 = "__nw_protocol_get_output_handler";
          v80 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_156;
        }
      }

      else
      {
        v78 = __nwlog_obj();
        v79 = type;
        if (os_log_type_enabled(v78, type))
        {
          *buf = 136446210;
          v88 = "__nw_protocol_get_output_handler";
          v80 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_156;
        }
      }
    }

LABEL_157:
    if (v77)
    {
      free(v77);
    }

    a2 = 0;
    goto LABEL_32;
  }

  output_handler = a2->output_handler;
  if (output_handler == a1)
  {
    v15 = output_handler->handle;
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
    {
      v16 = output_handler[1].callbacks;
      if (v16)
      {
        v17 = (v16 - 1);
        output_handler[1].callbacks = v17;
        if (!v17)
        {
          v18 = a2;
          v19 = *output_handler[1].flow_id;
          if (v19)
          {
            *output_handler[1].flow_id = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (output_handler[1].flow_id[8])
          {
            v20 = *output_handler[1].flow_id;
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(output_handler);
          a2 = v18;
        }
      }
    }

    a2->output_handler = 0;
  }

LABEL_32:
  if (v4->default_input_handler != a2)
  {
    goto LABEL_50;
  }

  v21 = v4->output_handler;
  if (v21)
  {
    v22 = v21->callbacks;
    if (v22)
    {
      remove_input_handler = v22->remove_input_handler;
      if (remove_input_handler)
      {
        v24 = v21->handle;
        v25 = v4->output_handler;
        if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *v21[1].flow_id) != 0)
        {
          v34 = v25[1].callbacks;
          v26 = 0;
          if (v34)
          {
            v25[1].callbacks = (&v34->add_input_handler + 1);
          }
        }

        else
        {
          v26 = 1;
        }

        v35 = v4->handle;
        v36 = v4;
        if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *v4[1].flow_id) != 0)
        {
          v37 = v36[1].callbacks;
          if (v37)
          {
            v36[1].callbacks = (&v37->add_input_handler + 1);
          }

          remove_input_handler(v21, v4, a3);
          v38 = v4->handle;
          v39 = v4;
          if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (v39 = *v4[1].flow_id) != 0)
          {
            v40 = v39[1].callbacks;
            if (v40)
            {
              v41 = (v40 - 1);
              v39[1].callbacks = v41;
              if (!v41)
              {
                v42 = *v39[1].flow_id;
                if (v42)
                {
                  *v39[1].flow_id = 0;
                  v42[2](v42);
                  _Block_release(v42);
                }

                if (v39[1].flow_id[8])
                {
                  v43 = *v39[1].flow_id;
                  if (v43)
                  {
                    _Block_release(v43);
                  }
                }

                free(v39);
              }
            }
          }
        }

        else
        {
          remove_input_handler(v21, v4, a3);
        }

        if ((v26 & 1) == 0)
        {
          v44 = v21->handle;
          if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v21 = *v21[1].flow_id) != 0)
          {
            v45 = v21[1].callbacks;
            if (v45)
            {
              v46 = (v45 - 1);
              v21[1].callbacks = v46;
              if (!v46)
              {
                v47 = *v21[1].flow_id;
                if (v47)
                {
                  *v21[1].flow_id = 0;
                  v47[2](v47);
                  _Block_release(v47);
                }

                if (v21[1].flow_id[8])
                {
                  v48 = *v21[1].flow_id;
                  if (v48)
                  {
                    _Block_release(v48);
                  }
                }

                free(v21);
              }
            }
          }
        }
      }
    }
  }

  nw_protocol_ip_register_segmentation_offload_notification(v4, 0);
  default_input_handler = v4->default_input_handler;
  if (default_input_handler)
  {
    v50 = default_input_handler->handle;
    if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v51 = default_input_handler[1].callbacks;
      if (v51)
      {
        v52 = (v51 - 1);
        default_input_handler[1].callbacks = v52;
        if (!v52)
        {
          v53 = *default_input_handler[1].flow_id;
          if (v53)
          {
            *default_input_handler[1].flow_id = 0;
            v53[2](v53);
            _Block_release(v53);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v54 = *default_input_handler[1].flow_id;
            if (v54)
            {
              _Block_release(v54);
            }
          }

          free(default_input_handler);
        }
      }
    }

    v4->default_input_handler = 0;
  }

  if (a3)
  {
    for (i = v9[2].output_handler; i; i = v9[2].output_handler)
    {
      v56 = *(i + 32);
      v57 = *(i + 40);
      p_handle = (v56 + 40);
      if (!v56)
      {
        p_handle = &v9[2].handle;
      }

      *p_handle = v57;
      *v57 = v56;
      *(i + 32) = 0;
      *(i + 40) = 0;
      nw_frame_finalize(i);
    }

    for (j = v9[2].default_input_handler; j; j = v9[2].default_input_handler)
    {
      identifier = j->identifier;
      v61 = j->callbacks;
      p_output_handler_context = &identifier->name[24];
      if (!identifier)
      {
        p_output_handler_context = &v9[2].output_handler_context;
      }

      *p_output_handler_context = v61;
      v61->add_input_handler = identifier;
      j->identifier = 0;
      j->callbacks = 0;
      nw_frame_free_buffer(j);
      os_release(j);
    }

    for (k = *v9[3].flow_id; k; k = *v9[3].flow_id)
    {
      v64 = k[2];
      v65 = k[3];
      v66 = (v64 + 24);
      if (!v64)
      {
        v66 = &v9[3].flow_id[8];
      }

      *v66 = v65;
      *v65 = v64;
      k[2] = 0;
      k[3] = 0;
      nw_frame_free_buffer(k);
      os_release(k);
    }

    nw_protocol_destroy(&v9[1].output_handler, 0);
  }

  result = 1;
  if ((v7 & 1) == 0)
  {
LABEL_114:
    v67 = v4->handle;
    if (v67 == &nw_protocol_ref_counted_handle || v67 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
    {
      v68 = v4[1].callbacks;
      if (v68)
      {
        v69 = (v68 - 1);
        v4[1].callbacks = v69;
        if (!v69)
        {
          v70 = result;
          v71 = *v4[1].flow_id;
          if (v71)
          {
            *v4[1].flow_id = 0;
            v71[2](v71);
            _Block_release(v71);
          }

          if (v4[1].flow_id[8])
          {
            v72 = *v4[1].flow_id;
            if (v72)
            {
              _Block_release(v72);
            }
          }

          free(v4);
          return v70;
        }
      }
    }
  }

  return result;
}

BOOL nw_channel_remove_input_handler(nw_protocol *a1, nw_protocol **a2)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_remove_input_handler";
    v23 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v96[0]) = 0;
    if (!__nwlog_fault(v23, type, v96))
    {
      goto LABEL_62;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_remove_input_handler";
      v26 = "%{public}s called with null channel_protocol";
      goto LABEL_60;
    }

    if (LOBYTE(v96[0]) != 1)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_remove_input_handler";
      v26 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type[0];
    v68 = os_log_type_enabled(v24, type[0]);
    if (!backtrace_string)
    {
      if (!v68)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_remove_input_handler";
      v26 = "%{public}s called with null channel_protocol, no backtrace";
      goto LABEL_60;
    }

    if (v68)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v69 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_122:
      _os_log_impl(&dword_181A37000, v24, v25, v69, buf, 0x16u);
    }

LABEL_123:
    free(backtrace_string);
    goto LABEL_62;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_remove_input_handler";
    v23 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v96[0]) = 0;
    if (!__nwlog_fault(v23, type, v96))
    {
      goto LABEL_62;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_remove_input_handler";
      v26 = "%{public}s called with null channel";
      goto LABEL_60;
    }

    if (LOBYTE(v96[0]) != 1)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_remove_input_handler";
      v26 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type[0];
    v70 = os_log_type_enabled(v24, type[0]);
    if (!backtrace_string)
    {
      if (!v70)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_remove_input_handler";
      v26 = "%{public}s called with null channel, no backtrace";
      goto LABEL_60;
    }

    if (v70)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v69 = "%{public}s called with null channel, dumping backtrace:%{public}s";
      goto LABEL_122;
    }

    goto LABEL_123;
  }

  if (a2)
  {
    if (handle[34] == a2)
    {
      handle[34] = 0;
    }

    v4 = handle[35];
    if (v4)
    {
      v5 = a2[7];
      if (v5)
      {
        if (BYTE1(v5[2].callbacks))
        {
          v27 = *&v5[1].flow_id[8];
          identifier = v5[1].identifier;
          v29 = (handle + 49);
          if (v27)
          {
            v29 = (v27 + 48);
          }

          *v29 = identifier;
          *identifier->name = v27;
          v30 = BYTE1(v5[2].callbacks) & 0xFE;
          BYTE1(v5[2].callbacks) = v30;
          if ((v30 & 2) == 0)
          {
LABEL_10:
            default_input_handler = v5->default_input_handler;
            if (!default_input_handler)
            {
LABEL_12:
              p_output_handler = &v5->output_handler;
              v8 = v5[1].handle;
              if (v8)
              {
                os_release(v8);
                v5[1].handle = 0;
              }

              a2[7] = 0;
              v9 = a2[4];
              if (v9)
              {
                v10 = v9->handle;
                if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v9 = *v9[1].flow_id) != 0)
                {
                  callbacks = v9[1].callbacks;
                  if (callbacks)
                  {
                    v12 = (callbacks - 1);
                    v9[1].callbacks = v12;
                    if (!v12)
                    {
                      v13 = *v9[1].flow_id;
                      if (v13)
                      {
                        *v9[1].flow_id = 0;
                        v13[2](v13);
                        _Block_release(v13);
                      }

                      if (v9[1].flow_id[8])
                      {
                        v14 = *v9[1].flow_id;
                        if (v14)
                        {
                          _Block_release(v14);
                        }
                      }

                      free(v9);
                    }
                  }
                }

                a2[4] = 0;
              }

              v15 = *p_output_handler;
              if (*p_output_handler)
              {
                v15->handle = type;
                v16 = v5->handle;
                *type = v15;
                v93[0] = v16;
                v5->output_handler = 0;
                v5->handle = p_output_handler;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                *&buf[24] = &__block_descriptor_tmp_21_49595;
                LOBYTE(v98) = 0;
                do
                {
                  v17 = *type;
                  if (!*type)
                  {
                    break;
                  }

                  v18 = *(*type + 32);
                  v19 = *(*type + 40);
                  v20 = (v18 + 40);
                  if (!v18)
                  {
                    v20 = v93;
                  }

                  *v20 = v19;
                  *v19 = v18;
                  *(v17 + 32) = 0;
                  *(v17 + 40) = 0;
                }

                while (((*&buf[16])(buf) & 1) != 0);
              }

              nw::retained_ptr<nw_protocol *>::~retained_ptr(&v5->output_handler_context);
              v5->output_handler_context = 0;
              v5[1].flow_id[0] |= 1u;
              nw::retained_ptr<nw_protocol *>::~retained_ptr(&v5->output_handler_context);
              if (nw_hash_table_remove_node(v4, v5))
              {
                if (handle[17])
                {
                  if (os_channel_packet_pool_purge())
                  {
                    v22 = nw_channel_check_defunct(handle);
                    if ((*(handle + 230) & 0x20) == 0)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                    v22 = 0;
                    if ((*(handle + 230) & 0x20) == 0)
                    {
                      return 1;
                    }
                  }
                }

                else
                {
                  v22 = 1;
                  if ((*(handle + 230) & 0x20) == 0)
                  {
                    return 1;
                  }
                }

                if (!nw_hash_table_count(handle[35], v21))
                {
                  *type = 0;
                  v93[0] = type;
                  v93[1] = 0x2000000000;
                  v93[2] = os_retain(handle);
                  if (v22)
                  {
                    v43 = handle[19];
                    v91[0] = MEMORY[0x1E69E9820];
                    v91[1] = 0x40000000;
                    v91[2] = ___ZL31nw_channel_remove_input_handlerP11nw_protocolS0_b_block_invoke;
                    v91[3] = &unk_1E6A3D5E8;
                    v91[4] = type;
                    nw_queue_context_async(v43, v91);
LABEL_179:
                    _Block_object_dispose(type, 8);
                    return 1;
                  }

                  if ((*(handle + 230) & 0x40) != 0)
                  {
                    v54 = __nwlog_obj();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_channel_remove_input_handler";
                      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s Tearing down channel immediately", buf, 0xCu);
                    }

                    nw_channel_close(*(v93[0] + 24), v55);
                    goto LABEL_84;
                  }

                  v44 = handle[19];
                  v90[0] = MEMORY[0x1E69E9820];
                  v90[1] = 0x40000000;
                  v90[2] = ___ZL31nw_channel_remove_input_handlerP11nw_protocolS0_b_block_invoke_56;
                  v90[3] = &unk_1E6A3D610;
                  v90[4] = type;
                  v89[0] = MEMORY[0x1E69E9820];
                  v89[1] = 0x40000000;
                  v89[2] = ___ZL31nw_channel_remove_input_handlerP11nw_protocolS0_b_block_invoke_58;
                  v89[3] = &unk_1E6A3D638;
                  v89[4] = type;
                  source = nw_queue_context_create_source(v44, 2, 3, 0, v90, v89);
                  if (source)
                  {
                    v46 = source;
                    v47 = a2[3];
                    if (!v47 || !v47->get_parameters)
                    {
                      goto LABEL_173;
                    }

                    nw::share(v96, a2);
                    v48 = a2[3];
                    if (v48)
                    {
                      get_parameters = v48->get_parameters;
                      if (get_parameters)
                      {
                        v50 = get_parameters(a2);
                        nw::retained_ptr<nw_protocol *>::~retained_ptr(v96);
                        if (v50)
                        {
                          channel_teardown_delay = _nw_parameters_get_channel_teardown_delay(v50);
                          if (channel_teardown_delay)
                          {
                            v52 = channel_teardown_delay;
                            v53 = __nwlog_obj();
                            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_channel_remove_input_handler";
                              *&buf[12] = 2048;
                              *&buf[14] = v52;
                              _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s Using overridden channel teardown delay: %llums", buf, 0x16u);
                            }

                            goto LABEL_174;
                          }
                        }

LABEL_173:
                        v52 = 1000 * networkd_settings_get_int64_with_default(nw_setting_channel_teardown_delay, 60);
LABEL_174:
                        v84 = __nwlog_obj();
                        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_channel_remove_input_handler";
                          *&buf[12] = 2048;
                          *&buf[14] = v52;
                          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s Setting timer to tear down channel after %llums", buf, 0x16u);
                        }

                        v85 = dispatch_time(0x8000000000000000, 1000000 * v52);
                        nw_queue_set_timer_values(v46, v85, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                        v87 = *(v93[0] + 24);
                        v88 = *(v87 + 200);
                        if (v88)
                        {
                          nw_queue_cancel_source(v88, v86);
                          v87 = *(v93[0] + 24);
                          *(v87 + 200) = 0;
                        }

                        *(v87 + 200) = v46;
                        nw_queue_activate_source(v46, v86);
                        goto LABEL_179;
                      }
                    }

                    __nwlog_obj();
                    v73 = a2[2];
                    *buf = 136446722;
                    *&buf[4] = "__nw_protocol_get_parameters";
                    if (!v73)
                    {
                      v73 = "invalid";
                    }

                    *&buf[12] = 2082;
                    *&buf[14] = v73;
                    *&buf[22] = 2048;
                    *&buf[24] = a2;
                    v74 = _os_log_send_and_compose_impl();
                    v95 = OS_LOG_TYPE_ERROR;
                    v94 = 0;
                    if (__nwlog_fault(v74, &v95, &v94))
                    {
                      if (v95 == OS_LOG_TYPE_FAULT)
                      {
                        v75 = __nwlog_obj();
                        v76 = v95;
                        if (os_log_type_enabled(v75, v95))
                        {
                          v77 = a2[2];
                          if (!v77)
                          {
                            v77 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_get_parameters";
                          *&buf[12] = 2082;
                          *&buf[14] = v77;
                          *&buf[22] = 2048;
                          *&buf[24] = a2;
                          v78 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_169:
                          _os_log_impl(&dword_181A37000, v75, v76, v78, buf, 0x20u);
                        }
                      }

                      else if (v94 == 1)
                      {
                        v79 = __nw_create_backtrace_string();
                        v75 = __nwlog_obj();
                        v76 = v95;
                        v80 = os_log_type_enabled(v75, v95);
                        if (v79)
                        {
                          if (v80)
                          {
                            v81 = a2[2];
                            if (!v81)
                            {
                              v81 = "invalid";
                            }

                            *buf = 136446978;
                            *&buf[4] = "__nw_protocol_get_parameters";
                            *&buf[12] = 2082;
                            *&buf[14] = v81;
                            *&buf[22] = 2048;
                            *&buf[24] = a2;
                            v98 = 2082;
                            v99 = v79;
                            _os_log_impl(&dword_181A37000, v75, v76, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
                          }

                          free(v79);
                          goto LABEL_170;
                        }

                        if (v80)
                        {
                          v83 = a2[2];
                          if (!v83)
                          {
                            v83 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_get_parameters";
                          *&buf[12] = 2082;
                          *&buf[14] = v83;
                          *&buf[22] = 2048;
                          *&buf[24] = a2;
                          v78 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
                          goto LABEL_169;
                        }
                      }

                      else
                      {
                        v75 = __nwlog_obj();
                        v76 = v95;
                        if (os_log_type_enabled(v75, v95))
                        {
                          v82 = a2[2];
                          if (!v82)
                          {
                            v82 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_get_parameters";
                          *&buf[12] = 2082;
                          *&buf[14] = v82;
                          *&buf[22] = 2048;
                          *&buf[24] = a2;
                          v78 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
                          goto LABEL_169;
                        }
                      }
                    }

LABEL_170:
                    if (v74)
                    {
                      free(v74);
                    }

                    nw::retained_ptr<nw_protocol *>::~retained_ptr(v96);
                    goto LABEL_173;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_channel_remove_input_handler";
                  v57 = _os_log_send_and_compose_impl();
                  LOBYTE(v96[0]) = 16;
                  v95 = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v57, v96, &v95))
                  {
                    if (LOBYTE(v96[0]) == 17)
                    {
                      v58 = __nwlog_obj();
                      v59 = v96[0];
                      if (!os_log_type_enabled(v58, v96[0]))
                      {
                        goto LABEL_108;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_channel_remove_input_handler";
                      v60 = "%{public}s nw_queue_context_create_source(timer) failed";
                      goto LABEL_107;
                    }

                    if (v95 != OS_LOG_TYPE_INFO)
                    {
                      v58 = __nwlog_obj();
                      v59 = v96[0];
                      if (!os_log_type_enabled(v58, v96[0]))
                      {
                        goto LABEL_108;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_channel_remove_input_handler";
                      v60 = "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded";
                      goto LABEL_107;
                    }

                    v61 = __nw_create_backtrace_string();
                    v58 = __nwlog_obj();
                    v59 = v96[0];
                    v62 = os_log_type_enabled(v58, v96[0]);
                    if (v61)
                    {
                      if (v62)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_channel_remove_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v61;
                        _os_log_impl(&dword_181A37000, v58, v59, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v61);
                      goto LABEL_108;
                    }

                    if (v62)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_channel_remove_input_handler";
                      v60 = "%{public}s nw_queue_context_create_source(timer) failed, no backtrace";
LABEL_107:
                      _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
                    }
                  }

LABEL_108:
                  if (v57)
                  {
                    free(v57);
                  }

LABEL_84:
                  v56 = *(v93[0] + 24);
                  if (v56)
                  {
                    os_release(v56);
                    *(v93[0] + 24) = 0;
                  }

                  goto LABEL_179;
                }

                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                *&buf[4] = "remove_input_handler";
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s nw_hash_table_remove_node failed", buf, 0xCu);
              }

              goto LABEL_51;
            }

LABEL_11:
            os_release(default_input_handler);
            v5->default_input_handler = 0;
            goto LABEL_12;
          }
        }

        else if ((BYTE1(v5[2].callbacks) & 2) == 0)
        {
          goto LABEL_10;
        }

        v31 = v5[1].callbacks;
        output_handler = v5[1].output_handler;
        p_input_available = handle + 51;
        if (v31)
        {
          p_input_available = &v31->input_available;
        }

        *p_input_available = output_handler;
        *output_handler->flow_id = v31;
        BYTE1(v5[2].callbacks) &= ~2u;
        default_input_handler = v5->default_input_handler;
        if (!default_input_handler)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

LABEL_51:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446722;
        *&buf[4] = "nw_channel_remove_input_handler";
        *&buf[12] = 1042;
        *&buf[14] = 16;
        *&buf[18] = 2098;
        *&buf[20] = a2;
        _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s Channel does not have input handler registered for %{public,uuid_t}.16P", buf, 0x1Cu);
        return 0;
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "remove_input_handler";
    v63 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v96[0]) = 0;
    if (__nwlog_fault(v63, type, v96))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v64 = __nwlog_obj();
        v65 = type[0];
        if (!os_log_type_enabled(v64, type[0]))
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        *&buf[4] = "remove_input_handler";
        v66 = "%{public}s called with null table";
        goto LABEL_143;
      }

      if (LOBYTE(v96[0]) != 1)
      {
        v64 = __nwlog_obj();
        v65 = type[0];
        if (!os_log_type_enabled(v64, type[0]))
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        *&buf[4] = "remove_input_handler";
        v66 = "%{public}s called with null table, backtrace limit exceeded";
        goto LABEL_143;
      }

      v71 = __nw_create_backtrace_string();
      v64 = __nwlog_obj();
      v65 = type[0];
      v72 = os_log_type_enabled(v64, type[0]);
      if (v71)
      {
        if (v72)
        {
          *buf = 136446466;
          *&buf[4] = "remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          _os_log_impl(&dword_181A37000, v64, v65, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v71);
        goto LABEL_144;
      }

      if (v72)
      {
        *buf = 136446210;
        *&buf[4] = "remove_input_handler";
        v66 = "%{public}s called with null table, no backtrace";
LABEL_143:
        _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0xCu);
      }
    }

LABEL_144:
    if (v63)
    {
      free(v63);
    }

    goto LABEL_51;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_channel_remove_input_handler";
  v23 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v96[0]) = 0;
  if (__nwlog_fault(v23, type, v96))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_remove_input_handler";
        v26 = "%{public}s called with null input_protocol";
LABEL_60:
        v41 = v24;
        v42 = v25;
LABEL_61:
        _os_log_impl(&dword_181A37000, v41, v42, v26, buf, 0xCu);
      }
    }

    else if (LOBYTE(v96[0]) == 1)
    {
      v37 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      v39 = type[0];
      v40 = os_log_type_enabled(gLogObj, type[0]);
      if (v37)
      {
        if (v40)
        {
          *buf = 136446466;
          *&buf[4] = "nw_channel_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v37;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_62;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_remove_input_handler";
        v26 = "%{public}s called with null input_protocol, no backtrace";
        v41 = v38;
        v42 = v39;
        goto LABEL_61;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_remove_input_handler";
        v26 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_60;
      }
    }
  }

LABEL_62:
  if (v23)
  {
    free(v23);
  }

  return 0;
}

uint64_t nw_protocol_default_unregister_notification(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_default_unregister_notification";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v5, &type, &v11))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_unregister_notification";
      v8 = "%{public}s called with null protocol";
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
          v14 = "nw_protocol_default_unregister_notification";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v10)
      {
LABEL_22:
        if (v5)
        {
          free(v5);
        }

        return 0;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_unregister_notification";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_unregister_notification";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_22;
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 152);
  if (!v3)
  {
    return 0;
  }

  return v3();
}

void nw_protocol_implementation_destroy(NWConcrete_nw_protocol_instance *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_destroy";
    v21 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v21, type, &v29))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type[0];
        if (os_log_type_enabled(v22, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_destroy";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v25 = type[0];
        v26 = os_log_type_enabled(v22, type[0]);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_destroy";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_45;
        }

        if (v26)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_destroy";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v28 = type[0];
        if (os_log_type_enabled(v22, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_destroy";
          _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_45:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_25;
  }

  v3 = v1;
  v4 = v3;
  tqh_last = v3->pending_outbound_frames.tqh_last;
  if (tqh_last)
  {
    v6 = *(tqh_last + 12);

    if (v6)
    {
LABEL_8:
      BYTE4(v4->flow_in_connected) |= 8u;
      if ((SBYTE5(v4->flow_in_connected) & 0x80000000) == 0 && gLogDatapath == 1)
      {
        v10 = __nwlog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_implementation_destroy";
          *&buf[12] = 2082;
          *&buf[14] = &v4->flow_in_connected + 7;
          *&buf[22] = 2080;
          v35 = " ";
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferring destroying protocol", buf, 0x20u);
        }
      }

LABEL_25:

      return;
    }
  }

  else
  {
  }

  v7 = v4;
  *type = 0;
  v31 = type;
  v32 = 0x2020000000;
  v33 = 0;
  flow_registration = v7->flow_registration;
  if (flow_registration)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL43nw_protocol_implementation_has_active_pathsP31NWConcrete_nw_protocol_instance_block_invoke;
    v35 = &unk_1E6A2CE68;
    v36 = type;
    nw_hash_table_apply(flow_registration, buf);
    v9 = *(v31 + 24);
    _Block_object_dispose(type, 8);

    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    _Block_object_dispose(type, 8);
  }

  v11 = *v7->_anon_0;
  if (v11 == v7)
  {
LABEL_17:
    if ((SBYTE5(v7->flow_in_connected) & 0x80000000) == 0 && gLogDatapath == 1)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_implementation_destroy";
        *&buf[12] = 2082;
        *&buf[14] = &v7->flow_in_connected + 7;
        *&buf[22] = 2080;
        v35 = " ";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDestroying protocol", buf, 0x20u);
      }
    }

    maximum_content_size = v7->maximum_content_size;
    if (maximum_content_size)
    {
      parent_definition = v7->parent_definition;
      var1 = parent_definition->extended_state->var1;
      if (var1)
      {
        var1(parent_definition, maximum_content_size);
        v7->maximum_content_size = 0;
      }
    }

    parameters = v7->parameters;
    if (parameters)
    {
      nw_association_unregister(parameters, v7);
      v18 = v7->parameters;
      v7->parameters = 0;
    }

    wakeup = v7->wakeup;
    v7->wakeup = 0;

    *v7->_anon_0 = 0;
    BYTE4(v7->flow_in_connected) &= ~8u;
    nw_protocol_destroy(v7, 0);
    goto LABEL_25;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_implementation_destroy";
  *&buf[12] = 2048;
  *&buf[14] = v11;
  *&buf[22] = 2048;
  v35 = v7;
  v13 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v13))
  {
    free(v13);
    goto LABEL_17;
  }

  __break(1u);
}

void sub_181DFF068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if ((v21 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a19);
  }

  if ((v22 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL34nw_protocol_http3_stream_connectedP11nw_protocolS0__block_invoke_109(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!v4 || (*(v4 + 732) & 0x2000) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v5 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = (v6 + 632);
      v8 = "";
      v9 = v6 == 0;
      if (!v6)
      {
        v7 = "";
      }

      v10 = *(*(v6 + 344) + 1304);
      v11 = *(v6 + 240);
      if (!v9)
      {
        v8 = " ";
      }

      v12 = 136447490;
      v13 = "nw_protocol_http3_stream_connected_block_invoke";
      v14 = 2082;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      v18 = 1024;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> receiving request header {method=%{public}s}", &v12, 0x3Au);
    }
  }
}

void ___ZL34nw_protocol_http3_stream_connectedP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!v4 || (*(v4 + 732) & 0x2000) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v5 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = (v6 + 632);
      v8 = "";
      v9 = v6 == 0;
      if (!v6)
      {
        v7 = "";
      }

      v10 = *(*(v6 + 344) + 1304);
      v11 = *(v6 + 240);
      if (!v9)
      {
        v8 = " ";
      }

      v12 = 136447490;
      v13 = "nw_protocol_http3_stream_connected_block_invoke_2";
      v14 = 2082;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      v18 = 1024;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> sending request header {method=%{public}s}", &v12, 0x3Au);
    }
  }
}

uint64_t sub_181DFF4D8(uint64_t a1, void (*a2)(_OWORD *))
{
  v3 = swift_unknownObjectRetain();
  sub_181DFFAD0(v3, v5);
  a2(v5);
  v6[4] = v5[4];
  v6[5] = v5[5];
  v6[6] = v5[6];
  v6[7] = v5[7];
  v6[0] = v5[0];
  v6[1] = v5[1];
  v6[2] = v5[2];
  v6[3] = v5[3];
  return sub_181DFF8F8(v6);
}

uint64_t nw_data_transfer_report_get_duration_milliseconds(nw_data_transfer_report_t report)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = report;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_data_transfer_report_get_duration_milliseconds";
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
          v17 = "nw_data_transfer_report_get_duration_milliseconds";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v11 = type;
        v12 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v17 = "nw_data_transfer_report_get_duration_milliseconds";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_data_transfer_report_get_duration_milliseconds";
          _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_data_transfer_report_get_duration_milliseconds";
          _os_log_impl(&dword_181A37000, v7, v13, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_26;
  }

  if (nw_data_transfer_report_get_state(v1) != nw_data_transfer_report_state_collected)
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "nw_data_transfer_report_get_duration_milliseconds";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

LABEL_26:
    isa = 0;
    goto LABEL_4;
  }

  isa = v2[2].isa;
LABEL_4:

  return isa;
}

uint64_t NWConnection.DataTransferReport.aggregatePathReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v13 = *(v1 + 80);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 112);
  v4 = v15;
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  v6 = *(v1 + 64);
  v11 = *(v1 + 48);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_181DFF8C0(v10, v9);
}

uint64_t NWConnection.PendingDataTransferReport.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void __nw_activity_set_global_parent_block_invoke()
{
  v0 = global_parent;
  global_parent = 0;
}

void sub_181DFF998(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181DFFAC8;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181B7F17C;
  v10[3] = &block_descriptor_185;
  v9 = _Block_copy(v10);

  nw_data_transfer_report_collect(v7, a1, v9);
  _Block_release(v9);
}

uint64_t NWConnection.startDataTransferReport()()
{
  new_data_transfer_report = nw_connection_create_new_data_transfer_report(*(v0 + 16));
  type metadata accessor for NWConnection.PendingDataTransferReport();
  result = swift_allocObject();
  *(result + 16) = new_data_transfer_report;
  return result;
}

void sub_181DFFAD0(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v4 = swift_unknownObjectRetain();
  duration_milliseconds = nw_data_transfer_report_get_duration_milliseconds(v4);
  path_count = nw_data_transfer_report_get_path_count(a1);
  if (path_count)
  {
    v32 = a2;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(&nw_data_transfer_report_copy_path_interface(a1, v5)->isa + OBJC_IVAR____TtC7Network13__NWInterface_interface);

      swift_unknownObjectRelease();
      received_ip_packet_count = nw_data_transfer_report_get_received_ip_packet_count(a1, v5);
      sent_ip_packet_count = nw_data_transfer_report_get_sent_ip_packet_count(a1, v5);
      received_transport_byte_count = nw_data_transfer_report_get_received_transport_byte_count(a1, v5);
      received_transport_duplicate_byte_count = nw_data_transfer_report_get_received_transport_duplicate_byte_count(a1, v5);
      received_transport_out_of_order_byte_count = nw_data_transfer_report_get_received_transport_out_of_order_byte_count(a1, v5);
      sent_transport_byte_count = nw_data_transfer_report_get_sent_transport_byte_count(a1, v5);
      sent_transport_retransmitted_byte_count = nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(a1, v5);
      transport_smoothed_rtt_milliseconds = nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(a1, v5);
      transport_minimum_rtt_milliseconds = nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(a1, v5);
      transport_rtt_variance = nw_data_transfer_report_get_transport_rtt_variance(a1, v5);
      received_application_byte_count = nw_data_transfer_report_get_received_application_byte_count(a1, v5);
      sent_application_byte_count = nw_data_transfer_report_get_sent_application_byte_count(a1, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_181E62138(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      v15 = v6;
      if (v14 >= v13 >> 1)
      {
        v15 = sub_181E62138((v13 > 1), v14 + 1, 1, v6);
      }

      *(v15 + 2) = v14 + 1;
      v6 = v15;
      v16 = &v15[104 * v14];
      *(v16 + 4) = v7;
      *(v16 + 5) = received_ip_packet_count;
      *(v16 + 6) = sent_ip_packet_count;
      *(v16 + 7) = received_transport_byte_count;
      *(v16 + 8) = received_transport_duplicate_byte_count;
      *(v16 + 9) = received_transport_out_of_order_byte_count;
      *(v16 + 10) = sent_transport_byte_count;
      *(v16 + 11) = sent_transport_retransmitted_byte_count;
      *(v16 + 12) = transport_smoothed_rtt_milliseconds / 1000.0;
      *(v16 + 13) = transport_minimum_rtt_milliseconds / 1000.0;
      *(v16 + 14) = transport_rtt_variance / 1000.0;
      ++v5;
      *(v16 + 15) = received_application_byte_count;
      *(v16 + 16) = sent_application_byte_count;
    }

    while (path_count != v5);
    v44 = v15;
    v17 = *(&nw_data_transfer_report_copy_path_interface(a1, 0xFFFFFFFF)->isa + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    swift_unknownObjectRelease();
    v42 = nw_data_transfer_report_get_received_ip_packet_count(a1, 0xFFFFFFFF);
    v40 = nw_data_transfer_report_get_sent_ip_packet_count(a1, 0xFFFFFFFF);
    v18 = nw_data_transfer_report_get_received_transport_byte_count(a1, 0xFFFFFFFF);
    v19 = nw_data_transfer_report_get_received_transport_duplicate_byte_count(a1, 0xFFFFFFFF);
    v20 = nw_data_transfer_report_get_received_transport_out_of_order_byte_count(a1, 0xFFFFFFFF);
    v21 = nw_data_transfer_report_get_sent_transport_byte_count(a1, 0xFFFFFFFF);
    v22 = nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(a1, 0xFFFFFFFF);
    v23 = nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(a1, 0xFFFFFFFF) / 1000.0;
    v24 = nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(a1, 0xFFFFFFFF) / 1000.0;
    v25 = nw_data_transfer_report_get_transport_rtt_variance(a1, 0xFFFFFFFF) / 1000.0;
    v26 = nw_data_transfer_report_get_received_application_byte_count(a1, 0xFFFFFFFF);
    v27 = nw_data_transfer_report_get_sent_application_byte_count(a1, 0xFFFFFFFF);
    swift_unknownObjectRelease();
    v28 = v18;
    v30 = v40;
    v29 = v42;
    v31 = v44;
    a2 = v32;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_181DFFF08(v45);
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v26 = 0;
    v27 = 0;
    v17 = v45[0];
    v23 = 0.0;
    v24 = 0.0;
    v31 = MEMORY[0x1E69E7CC0];
    v25 = 0.0;
  }

  *a2 = a1;
  *(a2 + 8) = duration_milliseconds / 1000.0;
  *(a2 + 16) = v17;
  *(a2 + 24) = v29;
  *(a2 + 32) = v30;
  *(a2 + 40) = v28;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = v23;
  *(a2 + 88) = v24;
  *(a2 + 96) = v25;
  *(a2 + 104) = v26;
  *(a2 + 112) = v27;
  *(a2 + 120) = v31;
}

double sub_181DFFF08@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Interface.BackingClass();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0x6E776F6E6B6E75;
  *(v2 + 48) = 0xE700000000000000;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = xmmword_182AE69F0;
  *(v2 + 104) = 1;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 256;
  *(v2 + 170) = 0;
  *(v2 + 162) = 0;
  *(v2 + 175) = 0;
  *(v2 + 183) = 1;
  *(v2 + 184) = 0;
  *a1 = v2;
  return result;
}

void nw_protocol_disconnect_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 32);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
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

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

uint64_t *nw::retained_ptr<nw_protocol *>::~retained_ptr(uint64_t *result)
{
  if (result[1])
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
              *(v1 + 64) = 0;
              v6[2](v6);
              _Block_release(v6);
            }

            if (*(v1 + 72))
            {
              v7 = *(v1 + 64);
              if (v7)
              {
                _Block_release(v7);
              }
            }

            free(v1);
            result = v5;
          }
        }
      }
    }
  }

  *result = 0;
  return result;
}

void nw_channel_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    if (handle)
    {
      v4 = a2;
      if (a2)
      {
        callbacks = a2->callbacks;
        if (callbacks)
        {
          disconnected = callbacks->disconnected;
          if (disconnected)
          {
            v7 = a2->handle;
            v8 = a2;
            if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *a2[1].flow_id) != 0)
            {
              v10 = v8[1].callbacks;
              v9 = 0;
              if (v10)
              {
                v8[1].callbacks = (&v10->add_input_handler + 1);
              }
            }

            else
            {
              v9 = 1;
            }

            v11 = a1;
            if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v11 = *a1[1].flow_id) != 0)
            {
              v12 = v11[1].callbacks;
              if (v12)
              {
                v11[1].callbacks = (&v12->add_input_handler + 1);
              }

              disconnected(a2, a1);
              v13 = v2->handle;
              if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
              {
                v14 = v2[1].callbacks;
                if (v14)
                {
                  v15 = (v14 - 1);
                  v2[1].callbacks = v15;
                  if (!v15)
                  {
                    v16 = *v2[1].flow_id;
                    if (v16)
                    {
                      *v2[1].flow_id = 0;
                      v16[2](v16);
                      _Block_release(v16);
                    }

                    if (v2[1].flow_id[8])
                    {
                      v17 = *v2[1].flow_id;
                      if (v17)
                      {
                        _Block_release(v17);
                      }
                    }

                    free(v2);
                  }
                }
              }
            }

            else
            {
              disconnected(a2, a1);
            }

            if ((v9 & 1) == 0)
            {
              v18 = v4->handle;
              if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
              {
                v19 = v4[1].callbacks;
                if (v19)
                {
                  v20 = (v19 - 1);
                  v4[1].callbacks = v20;
                  if (!v20)
                  {
                    v21 = *v4[1].flow_id;
                    if (v21)
                    {
                      *v4[1].flow_id = 0;
                      v21[2](v21);
                      _Block_release(v21);
                    }

                    if (v4[1].flow_id[8])
                    {
                      v22 = *v4[1].flow_id;
                      if (v22)
                      {
                        _Block_release(v22);
                      }
                    }

                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }
      }

      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_channel_disconnect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v4, &type, &v30))
    {
LABEL_70:
      if (!v4)
      {
        return;
      }

      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v33 = "nw_channel_disconnect";
      v25 = "%{public}s called with null channel";
      goto LABEL_69;
    }

    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v33 = "nw_channel_disconnect";
      v25 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_69;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v29 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (!v29)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v33 = "nw_channel_disconnect";
      v25 = "%{public}s called with null channel, no backtrace";
      goto LABEL_69;
    }

    if (v29)
    {
      *buf = 136446466;
      v33 = "nw_channel_disconnect";
      v34 = 2082;
      v35 = backtrace_string;
      v28 = "%{public}s called with null channel, dumping backtrace:%{public}s";
      goto LABEL_58;
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_channel_disconnect";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v4, &type, &v30))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v33 = "nw_channel_disconnect";
      v25 = "%{public}s called with null channel_protocol";
LABEL_69:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
      goto LABEL_70;
    }

    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v33 = "nw_channel_disconnect";
      v25 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
      goto LABEL_69;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v27 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v33 = "nw_channel_disconnect";
      v25 = "%{public}s called with null channel_protocol, no backtrace";
      goto LABEL_69;
    }

    if (v27)
    {
      *buf = 136446466;
      v33 = "nw_channel_disconnect";
      v34 = 2082;
      v35 = backtrace_string;
      v28 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_58:
      _os_log_impl(&dword_181A37000, v23, v24, v28, buf, 0x16u);
    }
  }

  free(backtrace_string);
  if (v4)
  {
LABEL_40:
    free(v4);
  }
}

void nw_protocol_ipv4_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_ipv4_disconnected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v2, &type, &v47))
    {
      goto LABEL_97;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v50 = "nw_protocol_ipv4_disconnected";
      v44 = "%{public}s called with null protocol";
    }

    else if (v47 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = type;
      v46 = os_log_type_enabled(v42, type);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          v50 = "nw_protocol_ipv4_disconnected";
          v51 = 2082;
          v52 = backtrace_string;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_73;
        }

        return;
      }

      if (!v46)
      {
LABEL_97:
        if (!v2)
        {
          return;
        }

        goto LABEL_73;
      }

      *buf = 136446210;
      v50 = "nw_protocol_ipv4_disconnected";
      v44 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v50 = "nw_protocol_ipv4_disconnected";
      v44 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
    goto LABEL_97;
  }

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
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    v7[2].identifier = 0;
    default_input_handler = a1->default_input_handler;
    if (!default_input_handler)
    {
      goto LABEL_62;
    }

    v12 = *(default_input_handler + 24);
    if (!v12)
    {
      goto LABEL_62;
    }

    v13 = *(v12 + 48);
    if (!v13)
    {
      goto LABEL_62;
    }

    v14 = *(default_input_handler + 40);
    v15 = a1->default_input_handler;
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(default_input_handler + 64)) != 0)
    {
      v23 = v15[1].callbacks;
      v16 = 0;
      if (v23)
      {
        v15[1].callbacks = (&v23->add_input_handler + 1);
      }
    }

    else
    {
      v16 = 1;
    }

    v24 = a1;
    if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v24 = *a1[1].flow_id) != 0)
    {
      v25 = v24[1].callbacks;
      if (v25)
      {
        v24[1].callbacks = (&v25->add_input_handler + 1);
      }

      v13(default_input_handler, a1);
      v26 = v2->handle;
      v27 = v2;
      if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v27 = *v2[1].flow_id) != 0)
      {
        v28 = v27[1].callbacks;
        if (v28)
        {
          v29 = (v28 - 1);
          v27[1].callbacks = v29;
          if (!v29)
          {
            v30 = *v27[1].flow_id;
            if (v30)
            {
              *v27[1].flow_id = 0;
              v30[2](v30);
              _Block_release(v30);
            }

            if (v27[1].flow_id[8])
            {
              v31 = *v27[1].flow_id;
              if (v31)
              {
                _Block_release(v31);
              }
            }

            free(v27);
          }
        }
      }
    }

    else
    {
      v13(default_input_handler, a1);
    }

    if (v16)
    {
      goto LABEL_62;
    }

    v32 = *(default_input_handler + 40);
    if (v32 != &nw_protocol_ref_counted_handle)
    {
      if (v32 != &nw_protocol_ref_counted_additional_handle)
      {
        goto LABEL_62;
      }

      default_input_handler = *(default_input_handler + 64);
      if (!default_input_handler)
      {
        goto LABEL_62;
      }
    }

    v33 = *(default_input_handler + 88);
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = v33 - 1;
    *(default_input_handler + 88) = v34;
    if (v34)
    {
      goto LABEL_62;
    }

    v40 = *(default_input_handler + 64);
    if (v40)
    {
      *(default_input_handler + 64) = 0;
      v40[2](v40);
      _Block_release(v40);
    }

    if (*(default_input_handler + 72))
    {
      v41 = *(default_input_handler + 64);
      if (v41)
      {
        _Block_release(v41);
      }
    }

LABEL_35:
    free(default_input_handler);
    goto LABEL_62;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v50 = "nw_protocol_ipv4_disconnected";
  default_input_handler = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (!__nwlog_fault(default_input_handler, &type, &v47))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v50 = "nw_protocol_ipv4_disconnected";
    v11 = "%{public}s called with null ipv4";
LABEL_32:
    v21 = v9;
    v22 = v10;
    goto LABEL_33;
  }

  if (v47 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v50 = "nw_protocol_ipv4_disconnected";
    v11 = "%{public}s called with null ipv4, backtrace limit exceeded";
    goto LABEL_32;
  }

  v17 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v19 = type;
  v20 = os_log_type_enabled(gLogObj, type);
  if (!v17)
  {
    if (!v20)
    {
LABEL_34:
      if (!default_input_handler)
      {
        goto LABEL_62;
      }

      goto LABEL_35;
    }

    *buf = 136446210;
    v50 = "nw_protocol_ipv4_disconnected";
    v11 = "%{public}s called with null ipv4, no backtrace";
    v21 = v18;
    v22 = v19;
LABEL_33:
    _os_log_impl(&dword_181A37000, v21, v22, v11, buf, 0xCu);
    goto LABEL_34;
  }

  if (v20)
  {
    *buf = 136446466;
    v50 = "nw_protocol_ipv4_disconnected";
    v51 = 2082;
    v52 = v17;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (default_input_handler)
  {
    goto LABEL_35;
  }

LABEL_62:
  if ((v5 & 1) == 0)
  {
    v35 = v2->handle;
    if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v36 = v2[1].callbacks;
      if (v36)
      {
        v37 = (v36 - 1);
        v2[1].callbacks = v37;
        if (!v37)
        {
          v38 = *v2[1].flow_id;
          if (v38)
          {
            *v2[1].flow_id = 0;
            (v38)[2](v38, a2);
            _Block_release(v38);
          }

          if (v2[1].flow_id[8])
          {
            v39 = *v2[1].flow_id;
            if (v39)
            {
              _Block_release(v39);
            }
          }

LABEL_73:
          free(v2);
        }
      }
    }
  }
}

void ___ZL36nw_association_schedule_deactivationP25NWConcrete_nw_association_block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  nw_context_assert_queue(*(a1 + 32));
  v3 = *(a1 + 40);
  if (!*(v3 + 64))
  {
    if ((nw_path_parameters_get_logging_disabled(*(v3 + 16)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(*(a1 + 40) + 8);
        v18 = v17;
        if (v17)
        {
          logging_description = _nw_endpoint_get_logging_description(v17);
        }

        else
        {
          logging_description = "<NULL>";
        }

        *buf = 136446466;
        v66 = "nw_association_schedule_deactivation_block_invoke";
        v67 = 2082;
        v68 = logging_description;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s <nw_association %{public}s> ignoring deactivation timer event because this timer was already cancelled", buf, 0x16u);
      }
    }

    return;
  }

  v4 = *(v3 + 40);
  if (v4 && *(v4 + 48))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v6 = *(a1 + 40);
    *buf = 136446466;
    v66 = "nw_association_schedule_deactivation_block_invoke";
    v67 = 2114;
    v68 = v6;
    v7 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v7))
    {
      goto LABEL_108;
    }

    free(v7);
    v3 = *(a1 + 40);
  }

  if ((*(v3 + 76) & 1) == 0)
  {
    goto LABEL_9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v9 = *(a1 + 40);
  *buf = 136446466;
  v66 = "nw_association_schedule_deactivation_block_invoke";
  v67 = 2114;
  v68 = v9;
  v10 = _os_log_send_and_compose_impl();

  if (__nwlog_should_abort(v10))
  {
LABEL_108:
    __break(1u);
    return;
  }

  free(v10);
  v3 = *(a1 + 40);
LABEL_9:
  v11 = *(v3 + 64);
  if (v11)
  {
    nw_queue_cancel_source(v11, v2);
    *(*(a1 + 40) + 64) = 0;
    v3 = *(a1 + 40);
  }

  if ((nw_path_parameters_get_logging_disabled(*(v3 + 16)) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = v13;
      if (v13)
      {
        v15 = _nw_endpoint_get_logging_description(v13);
      }

      else
      {
        v15 = "<NULL>";
      }

      *buf = 136446466;
      v66 = "nw_association_schedule_deactivation_block_invoke";
      v67 = 2082;
      v68 = v15;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s <nw_association %{public}s> becoming dormant", buf, 0x16u);
    }
  }

  *(*(a1 + 40) + 76) |= 1u;
  nw_path_evaluator_cancel(*(*(a1 + 40) + 24));
  v20 = *(*(a1 + 40) + 24);
  *(*(a1 + 40) + 24) = 0;

  v22 = *(*(a1 + 40) + 48);
  if (!v22)
  {
    goto LABEL_68;
  }

  if (v22[12]._os_unfair_lock_opaque)
  {
    if ((nw_path_parameters_get_logging_disabled(*(*(a1 + 40) + 16)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
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

      *buf = 136446466;
      v66 = "nw_association_schedule_deactivation_block_invoke";
      v67 = 2082;
      v68 = v26;
      v27 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if ((__nwlog_fault(v27, &type, &v63) & 1) == 0)
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v28 = gconnectionLogObj;
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          v30 = *(*(a1 + 40) + 8);
          v31 = v30;
          if (v30)
          {
            v32 = _nw_endpoint_get_logging_description(v30);
          }

          else
          {
            v32 = "<NULL>";
          }

          *buf = 136446466;
          v66 = "nw_association_schedule_deactivation_block_invoke";
          v67 = 2082;
          v68 = v32;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s <nw_association %{public}s> dormant, but connected flow handles is non-empty", buf, 0x16u);
        }
      }

      else if (v63 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v28 = gconnectionLogObj;
        v34 = type;
        v35 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v35)
          {
            v36 = nw_endpoint_get_logging_description(*(*(a1 + 40) + 8));
            *buf = 136446722;
            v66 = "nw_association_schedule_deactivation_block_invoke";
            v67 = 2082;
            v68 = v36;
            v69 = 2082;
            v70 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v34, "%{public}s <nw_association %{public}s> dormant, but connected flow handles is non-empty, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_66;
        }

        if (v35)
        {
          v41 = nw_endpoint_get_logging_description(*(*(a1 + 40) + 8));
          *buf = 136446466;
          v66 = "nw_association_schedule_deactivation_block_invoke";
          v67 = 2082;
          v68 = v41;
          _os_log_impl(&dword_181A37000, v28, v34, "%{public}s <nw_association %{public}s> dormant, but connected flow handles is non-empty, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v28 = gconnectionLogObj;
        v37 = type;
        if (os_log_type_enabled(v28, type))
        {
          v38 = *(*(a1 + 40) + 8);
          v39 = v38;
          if (v38)
          {
            v40 = _nw_endpoint_get_logging_description(v38);
          }

          else
          {
            v40 = "<NULL>";
          }

          *buf = 136446466;
          v66 = "nw_association_schedule_deactivation_block_invoke";
          v67 = 2082;
          v68 = v40;
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s <nw_association %{public}s> dormant, but connected flow handles is non-empty, backtrace limit exceeded", buf, 0x16u);
        }
      }

LABEL_66:
      if (v27)
      {
        free(v27);
      }
    }
  }

  else
  {
    _nw_hash_table_release(v22, v21);
    *(*(a1 + 40) + 48) = 0;
  }

LABEL_68:
  v42 = *(a1 + 40);
  v43 = *(v42 + 40);
  if (v43)
  {
    if (!v43[12]._os_unfair_lock_opaque)
    {
      _nw_hash_table_release(v43, v21);
      *(*(a1 + 40) + 40) = 0;
      return;
    }

    if ((nw_path_parameters_get_logging_disabled(*(v42 + 16)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v44 = gconnectionLogObj;
      v45 = *(*(a1 + 40) + 8);
      v46 = v45;
      if (v45)
      {
        v47 = _nw_endpoint_get_logging_description(v45);
      }

      else
      {
        v47 = "<NULL>";
      }

      *buf = 136446466;
      v66 = "nw_association_schedule_deactivation_block_invoke";
      v67 = 2082;
      v68 = v47;
      v48 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if ((__nwlog_fault(v48, &type, &v63) & 1) == 0)
      {
        goto LABEL_105;
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
          v51 = *(*(a1 + 40) + 8);
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
          v66 = "nw_association_schedule_deactivation_block_invoke";
          v67 = 2082;
          v68 = v53;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s <nw_association %{public}s> dormant, but handles hash table is non-empty", buf, 0x16u);
        }
      }

      else if (v63 == 1)
      {
        v54 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v49 = gconnectionLogObj;
        v55 = type;
        v56 = os_log_type_enabled(v49, type);
        if (v54)
        {
          if (v56)
          {
            v57 = nw_endpoint_get_logging_description(*(*(a1 + 40) + 8));
            *buf = 136446722;
            v66 = "nw_association_schedule_deactivation_block_invoke";
            v67 = 2082;
            v68 = v57;
            v69 = 2082;
            v70 = v54;
            _os_log_impl(&dword_181A37000, v49, v55, "%{public}s <nw_association %{public}s> dormant, but handles hash table is non-empty, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v54);
          goto LABEL_105;
        }

        if (v56)
        {
          v62 = nw_endpoint_get_logging_description(*(*(a1 + 40) + 8));
          *buf = 136446466;
          v66 = "nw_association_schedule_deactivation_block_invoke";
          v67 = 2082;
          v68 = v62;
          _os_log_impl(&dword_181A37000, v49, v55, "%{public}s <nw_association %{public}s> dormant, but handles hash table is non-empty, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v49 = gconnectionLogObj;
        v58 = type;
        if (os_log_type_enabled(v49, type))
        {
          v59 = *(*(a1 + 40) + 8);
          v60 = v59;
          if (v59)
          {
            v61 = _nw_endpoint_get_logging_description(v59);
          }

          else
          {
            v61 = "<NULL>";
          }

          *buf = 136446466;
          v66 = "nw_association_schedule_deactivation_block_invoke";
          v67 = 2082;
          v68 = v61;
          _os_log_impl(&dword_181A37000, v49, v58, "%{public}s <nw_association %{public}s> dormant, but handles hash table is non-empty, backtrace limit exceeded", buf, 0x16u);
        }
      }

LABEL_105:
      if (v48)
      {
        free(v48);
      }
    }
  }
}

uint64_t *nw_proxy_config_create_with_agent_data_extended(uint64_t a1, unint64_t a2, _OWORD *a3, _BYTE *a4)
{
  v254 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v191 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
    v192 = _os_log_send_and_compose_impl();

    v249[0] = 16;
    LOBYTE(v248) = 0;
    if (!__nwlog_fault(v192, v249, &v248))
    {
      goto LABEL_490;
    }

    if (v249[0] == 17)
    {
      v193 = __nwlog_obj();
      v194 = v249[0];
      if (os_log_type_enabled(v193, v249[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v193, v194, "%{public}s called with null bytes", buf, 0xCu);
      }
    }

    else if (v248 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v193 = __nwlog_obj();
      v201 = v249[0];
      v202 = os_log_type_enabled(v193, v249[0]);
      if (backtrace_string)
      {
        if (v202)
        {
          *buf = 136446466;
          *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v193, v201, "%{public}s called with null bytes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v192)
        {
          return 0;
        }

        goto LABEL_491;
      }

      if (v202)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v193, v201, "%{public}s called with null bytes, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v193 = __nwlog_obj();
      v214 = v249[0];
      if (os_log_type_enabled(v193, v249[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v193, v214, "%{public}s called with null bytes, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_489;
  }

  v4 = a2 - 25;
  if (a2 <= 0x19)
  {
    v195 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
    v192 = _os_log_send_and_compose_impl();

    v249[0] = 16;
    LOBYTE(v248) = 0;
    if (!__nwlog_fault(v192, v249, &v248))
    {
      goto LABEL_490;
    }

    if (v249[0] == 17)
    {
      v193 = __nwlog_obj();
      v196 = v249[0];
      if (os_log_type_enabled(v193, v249[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v193, v196, "%{public}s called with null (length > __builtin_offsetof(struct nw_proxy_config_agent_data, tlv_data))", buf, 0xCu);
      }
    }

    else if (v248 == 1)
    {
      v203 = __nw_create_backtrace_string();
      v193 = __nwlog_obj();
      v204 = v249[0];
      v205 = os_log_type_enabled(v193, v249[0]);
      if (v203)
      {
        if (v205)
        {
          *buf = 136446466;
          *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
          *&buf[12] = 2082;
          *&buf[14] = v203;
          _os_log_impl(&dword_181A37000, v193, v204, "%{public}s called with null (length > __builtin_offsetof(struct nw_proxy_config_agent_data, tlv_data)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v203);
LABEL_490:
        if (!v192)
        {
          return 0;
        }

LABEL_491:
        free(v192);
        return 0;
      }

      if (v205)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v193, v204, "%{public}s called with null (length > __builtin_offsetof(struct nw_proxy_config_agent_data, tlv_data)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v193 = __nwlog_obj();
      v215 = v249[0];
      if (os_log_type_enabled(v193, v249[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v193, v215, "%{public}s called with null (length > __builtin_offsetof(struct nw_proxy_config_agent_data, tlv_data)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_489:

    goto LABEL_490;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (nw_proxy_config_initialize_known_protocols(void)::onceToken != -1)
  {
    v197 = a1;
    v198 = a2;
    v199 = a3;
    dispatch_once(&nw_proxy_config_initialize_known_protocols(void)::onceToken, &__block_literal_global_288);
    a1 = v197;
    a3 = v199;
    a2 = v198;
  }

  v248 = *a3;
  v5 = "er";
  if (a2 - 31 > 0xFFFFFFFFFFFFFFF9)
  {
    v240 = 0;
    keys = 0;
    stack = 0;
    v228 = 0;
    v236 = 0;
    v237 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
    objects = 0;
    obj = 0;
    v235 = 0;
    v239 = 0;
    goto LABEL_375;
  }

  v237 = 0;
  v238 = 0;
  v240 = 0;
  keys = 0;
  v228 = 0;
  __s1 = 0;
  stack = 0;
  v227 = 0;
  v235 = 0;
  v236 = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  objects = 0;
  obj = 0;
  v239 = 0;
  v6 = 0;
  v243 = a2 - 30;
  v244 = a1 + 26;
  v245 = a1 + 25;
  v225 = a1;
  v226 = a1 + 30;
  do
  {
    v7 = *(v245 + v6);
    v8 = *(v244 + v6);
    if (v8)
    {
      if (v8 <= 0xFFFFFFF9)
      {
        v9 = v4 >= v8 + 5 && v4 - (v8 + 5) >= v6;
        if (v9)
        {
          v17 = (v226 + v6);
          goto LABEL_36;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v6;
      *&buf[22] = 2048;
      *&buf[24] = v4;
      *&buf[32] = 1024;
      *&buf[34] = v8;
      v11 = _os_log_send_and_compose_impl();

      v249[0] = 16;
      v247 = 0;
      a1 = __nwlog_fault(v11, v249, &v247);
      if (a1)
      {
        if (v249[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = v249[0];
          if (os_log_type_enabled(v12, v249[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v6;
            *&buf[22] = 2048;
            *&buf[24] = v4;
            *&buf[32] = 1024;
            *&buf[34] = v8;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
          }
        }

        else if (v247 == 1)
        {
          v14 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v15 = v249[0];
          v16 = os_log_type_enabled(v12, v249[0]);
          if (v14)
          {
            if (v16)
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              *&buf[22] = 2048;
              *&buf[24] = v4;
              *&buf[32] = 1024;
              *&buf[34] = v8;
              *&buf[38] = 2082;
              *&buf[40] = v14;
              _os_log_impl(&dword_181A37000, v12, v15, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v14);
            if (!v11)
            {
              goto LABEL_35;
            }

LABEL_34:
            free(v11);
            goto LABEL_35;
          }

          if (v16)
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v6;
            *&buf[22] = 2048;
            *&buf[24] = v4;
            *&buf[32] = 1024;
            *&buf[34] = v8;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v18 = v249[0];
          if (os_log_type_enabled(v12, v249[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v6;
            *&buf[22] = 2048;
            *&buf[24] = v4;
            *&buf[32] = 1024;
            *&buf[34] = v8;
            _os_log_impl(&dword_181A37000, v12, v18, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (v11)
      {
        goto LABEL_34;
      }
    }

LABEL_35:
    v17 = 0;
LABEL_36:
    v6 += v8 + 5;
    if (v6 > v4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v162 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 2048;
      *&buf[20] = v6;
      *&buf[28] = 2048;
      *&buf[30] = v4;
      v163 = _os_log_send_and_compose_impl();

      v249[0] = 16;
      v247 = 0;
      if (__nwlog_fault(v163, v249, &v247))
      {
        if (v249[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v164 = gLogObj;
          v165 = v249[0];
          if (os_log_type_enabled(v164, v249[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            *&buf[18] = 2048;
            *&buf[20] = v6;
            *&buf[28] = 2048;
            *&buf[30] = v4;
            _os_log_impl(&dword_181A37000, v164, v165, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
          }
        }

        else if (v247 == 1)
        {
          v169 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v164 = gLogObj;
          v170 = v249[0];
          v171 = os_log_type_enabled(v164, v249[0]);
          if (v169)
          {
            if (v171)
            {
              *buf = 136447234;
              *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
              *&buf[12] = 1024;
              *&buf[14] = v8;
              *&buf[18] = 2048;
              *&buf[20] = v6;
              *&buf[28] = 2048;
              *&buf[30] = v4;
              *&buf[38] = 2082;
              *&buf[40] = v169;
              _os_log_impl(&dword_181A37000, v164, v170, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v169);
            if (!v163)
            {
              break;
            }

LABEL_413:
            free(v163);
            break;
          }

          if (v171)
          {
            *buf = 136446978;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            *&buf[18] = 2048;
            *&buf[20] = v6;
            *&buf[28] = 2048;
            *&buf[30] = v4;
            _os_log_impl(&dword_181A37000, v164, v170, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v164 = gLogObj;
          v173 = v249[0];
          if (os_log_type_enabled(v164, v249[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            *&buf[18] = 2048;
            *&buf[20] = v6;
            *&buf[28] = 2048;
            *&buf[30] = v4;
            _os_log_impl(&dword_181A37000, v164, v173, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (!v163)
      {
        break;
      }

      goto LABEL_413;
    }

    if (v8)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      continue;
    }

    switch(v7)
    {
      case 1:
        v38 = nw_path_copy_endpoint_from_tlv(1, v8, v17);

        v238 = v38;
        continue;
      case 2:
      case 3:
      case 10:
        if (!__s1)
        {
          goto LABEL_146;
        }

        if (stack)
        {
          if (v227)
          {
            goto LABEL_145;
          }
        }

        else
        {
          stack = v228;
          if (v227)
          {
            goto LABEL_145;
          }
        }

        if (v240)
        {
          nw_dictionary_set_value(v240[1], __s1, stack);
        }

        else
        {
          v240 = nw_proxy_config_create_with_stack_internal(v238, stack, __s1);
        }

        if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
        }

        if (!strcmp(__s1, nw_proxy_config_default_transport(void)::default_transport_string))
        {
          v64 = stack;

          v228 = v64;
        }

LABEL_145:

        v227 = 0;
        stack = 0;
LABEL_146:
        switch(v7)
        {
          case 10:
            v67 = keys;
            if (!keys)
            {
              v67 = xpc_dictionary_create(0, 0, 0);
            }

            keys = v67;
            xpc_dictionary_set_uint64(v67, v17, 2uLL);
            break;
          case 3:
            v66 = keys;
            if (!keys)
            {
              v66 = xpc_dictionary_create(0, 0, 0);
            }

            keys = v66;
            xpc_dictionary_set_uint64(v66, v17, 3uLL);
            break;
          case 2:
            if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
            {
              dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
            }

            a1 = strcmp(v17, nw_proxy_config_default_transport(void)::default_transport_string);
            if (a1)
            {
              v65 = keys;
              if (!keys)
              {
                v65 = xpc_dictionary_create(0, 0, 0);
              }

              keys = v65;
              xpc_dictionary_set_uint64(v65, v17, 4uLL);
            }

            break;
        }

        __s1 = v17;
        continue;
      case 4:
      case 5:
        if (stack)
        {
          if (v8 >= 0x2A)
          {
LABEL_52:
            v20 = *(v17 + 20);
            if (v20 + 42 == v8)
            {
              v21 = *(v17 + 1);
              *buf = *v17;
              *&buf[16] = v21;
              *&buf[32] = *(v17 + 4);
              os_unfair_lock_lock(&nw_protocol_registrar_lock);
              v22 = &g_registration_list;
              do
              {
                v22 = *v22;
                if (!v22)
                {
                  goto LABEL_162;
                }
              }

              while (*buf != v22[4] || *&buf[8] != v22[5] || *&buf[16] != v22[6] || *&buf[24] != v22[7] || *&buf[32] != v22[8]);
              v27 = v22[14];
              if (v27)
              {
                v28 = os_retain(v27);
                os_unfair_lock_unlock(&nw_protocol_registrar_lock);
                if (v28)
                {
                  goto LABEL_281;
                }
              }

              else
              {
LABEL_162:
                os_unfair_lock_unlock(&nw_protocol_registrar_lock);
              }

              if (nw_protocol_setup_tcp_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
              }

              v28 = g_tcp_definition;
              identifier = nw_protocol_definition_get_identifier(v28);
              if (nw_protocols_are_equal(identifier, buf))
              {
                if (v28)
                {
                  goto LABEL_281;
                }
              }

              else
              {
              }

              v101 = nw_protocol_boringssl_copy_definition();
              Helper_x8__nwswifttls_copy_definition = gotLoadHelper_x8__nwswifttls_copy_definition(v102);
              if (*(v104 + 2224))
              {
                inited = nwswifttls_copy_definition_delayInitStub(Helper_x8__nwswifttls_copy_definition);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v106 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                {
                  *v249 = 136446466;
                  v250 = "nw_protocol_copy_swift_tls_definition_if_present";
                  v251 = 2048;
                  v252 = inited;
                  _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS protocol definition %p", v249, 0x16u);
                }
              }

              else
              {
                inited = 0;
              }

              Helper_x8__nwswifttlsrecord_copy_definition = gotLoadHelper_x8__nwswifttlsrecord_copy_definition(Helper_x8__nwswifttls_copy_definition);
              if (*(v114 + 2232))
              {
                v115 = nwswifttlsrecord_copy_definition_delayInitStub(Helper_x8__nwswifttlsrecord_copy_definition);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v116 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                {
                  *v249 = 136446466;
                  v250 = "nw_protocol_copy_swift_tls_record_definition_if_present";
                  v251 = 2048;
                  v252 = v115;
                  _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS record protocol definition %p", v249, 0x16u);
                }
              }

              else
              {
                v115 = 0;
              }

              v117 = nw_protocol_definition_get_identifier(v101);
              v118 = nw_protocols_are_equal(v117, buf);
              v119 = v101;
              if (v118 || inited && (v120 = nw_protocol_definition_get_identifier(inited), v121 = nw_protocols_are_equal(v120, buf), v119 = inited, v121) || v115 && (v122 = nw_protocol_definition_get_identifier(v115), v123 = nw_protocols_are_equal(v122, buf), v119 = v115, v123))
              {
                v28 = v119;
              }

              else
              {
                v28 = 0;
              }

              if (!v28)
              {
                v28 = __nwlog_obj();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *v249 = 136446466;
                  v250 = "nw_proxy_config_create_with_agent_data_extended";
                  v251 = 2080;
                  v252 = buf;
                  _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s No protocol definition registered for %s", v249, 0x16u);
                }

                v227 = 1;
LABEL_296:

                continue;
              }

LABEL_281:
              if (*(v17 + 20))
              {
                deserialized_options = _nw_protocol_create_deserialized_options(v28, v17 + 42, *(v17 + 20));
              }

              else
              {
                deserialized_options = _nw_protocol_create_options();
              }

              v138 = deserialized_options;
              if (deserialized_options)
              {
                if (v7 == 5)
                {
                  nw_protocol_stack_set_transport_protocol(stack, deserialized_options);
LABEL_292:

                  goto LABEL_296;
                }

                nw_protocol_stack_append_application_protocol(stack, deserialized_options);
                v139 = v239;
                v239 = v138;
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v139 = gLogObj;
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                {
                  *v249 = 136446466;
                  v250 = "nw_proxy_config_create_with_agent_data_extended";
                  v251 = 2112;
                  v252 = v28;
                  _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to deserialize options for %@", v249, 0x16u);
                }

                v227 = 1;
              }

              goto LABEL_292;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v58 = gLogObj;
            *buf = 136446722;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v20;
            *&buf[18] = 1024;
            *&buf[20] = v8;
            v45 = _os_log_send_and_compose_impl();

            v249[0] = 16;
            v247 = 0;
            a1 = __nwlog_fault(v45, v249, &v247);
            if (!a1)
            {
LABEL_317:
              if (!v45)
              {
LABEL_319:
                v227 = 1;
                continue;
              }

LABEL_318:
              free(v45);
              goto LABEL_319;
            }

            if (v249[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              v59 = v249[0];
              if (os_log_type_enabled(v46, v249[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
                *&buf[12] = 1024;
                *&buf[14] = v20;
                *&buf[18] = 1024;
                *&buf[20] = v8;
                _os_log_impl(&dword_181A37000, v46, v59, "%{public}s Protocol has bad options length %u (total %u)", buf, 0x18u);
              }
            }

            else if (v247 == 1)
            {
              v97 = __nw_create_backtrace_string();
              v46 = __nwlog_obj();
              v98 = v249[0];
              v99 = os_log_type_enabled(v46, v249[0]);
              if (v97)
              {
                if (v99)
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
                  *&buf[12] = 1024;
                  *&buf[14] = v20;
                  *&buf[18] = 1024;
                  *&buf[20] = v8;
                  *&buf[24] = 2082;
                  *&buf[26] = v97;
                  _os_log_impl(&dword_181A37000, v46, v98, "%{public}s Protocol has bad options length %u (total %u), dumping backtrace:%{public}s", buf, 0x22u);
                }

                free(v97);
                if (!v45)
                {
                  goto LABEL_319;
                }

                goto LABEL_318;
              }

              if (v99)
              {
                *buf = 136446722;
                *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
                *&buf[12] = 1024;
                *&buf[14] = v20;
                *&buf[18] = 1024;
                *&buf[20] = v8;
                _os_log_impl(&dword_181A37000, v46, v98, "%{public}s Protocol has bad options length %u (total %u), no backtrace", buf, 0x18u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              v112 = v249[0];
              if (os_log_type_enabled(v46, v249[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
                *&buf[12] = 1024;
                *&buf[14] = v20;
                *&buf[18] = 1024;
                *&buf[20] = v8;
                _os_log_impl(&dword_181A37000, v46, v112, "%{public}s Protocol has bad options length %u (total %u), backtrace limit exceeded", buf, 0x18u);
              }
            }

LABEL_316:

            goto LABEL_317;
          }
        }

        else
        {
          stack = _nw_protocol_stack_create_empty(a1, a2);
          if (v8 >= 0x2A)
          {
            goto LABEL_52;
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        *buf = 136446466;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        v45 = _os_log_send_and_compose_impl();

        v249[0] = 16;
        v247 = 0;
        a1 = __nwlog_fault(v45, v249, &v247);
        if (!a1)
        {
          goto LABEL_317;
        }

        if (v249[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          v47 = v249[0];
          if (os_log_type_enabled(v46, v249[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, 0x12u);
          }
        }

        else if (v247 == 1)
        {
          v60 = __nw_create_backtrace_string();
          if (v60)
          {
            v61 = v60;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = v249[0];
            if (os_log_type_enabled(v62, v249[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
              *&buf[12] = 1024;
              *&buf[14] = v8;
              *&buf[18] = 2082;
              *&buf[20] = v61;
              _os_log_impl(&dword_181A37000, v62, v63, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v61);
            if (!v45)
            {
              goto LABEL_319;
            }

            goto LABEL_318;
          }

          v46 = __nwlog_obj();
          v133 = v249[0];
          if (os_log_type_enabled(v46, v249[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            _os_log_impl(&dword_181A37000, v46, v133, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          v100 = v249[0];
          if (os_log_type_enabled(v46, v249[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            _os_log_impl(&dword_181A37000, v46, v100, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, backtrace limit exceeded", buf, 0x12u);
          }
        }

        goto LABEL_316;
      case 6:
      case 7:
        if (!v239)
        {
          goto LABEL_82;
        }

        v29 = nw_path_copy_endpoint_from_tlv(v7, v8, v17);
        _nw_protocol_options_set_proxy_endpoint(v239, v29, v7 == 7);

        continue;
      case 8:
        v43 = v236;
        if (!v236)
        {
          v43 = xpc_array_create(0, 0);
        }

        v236 = v43;
        xpc_array_set_string(v43, 0xFFFFFFFFFFFFFFFFLL, v17);
        continue;
      case 9:
        v33 = v237;
        if (!v237)
        {
          v33 = xpc_array_create(0, 0);
        }

        v237 = v33;
        xpc_array_set_string(v33, 0xFFFFFFFFFFFFFFFFLL, v17);
        continue;
      case 11:
        v41 = nw_path_copy_endpoint_from_tlv(11, v8, v17);
        if (v41)
        {
          v42 = obj;
          if (obj || (v42 = _nw_array_create()) != 0)
          {
            obj = v42;
            _nw_array_append(v42, v41);
          }

          else
          {
            obj = 0;
          }
        }

        continue;
      case 12:
        if (v239)
        {
          v31 = nw_path_copy_endpoint_from_tlv(12, v8, v17);
          nw_protocol_options_add_proxy_next_hop(v239, v31);
        }

        else
        {
LABEL_82:
          v239 = 0;
        }

        continue;
      case 13:
        if (!v17[(v8 - 1)])
        {
          v32 = v230;
          if (!v230)
          {
            v32 = xpc_array_create(0, 0);
          }

          v230 = v32;
          xpc_array_set_string(v32, 0xFFFFFFFFFFFFFFFFLL, v17);
        }

        continue;
      case 14:
        if (!v17[(v8 - 1)])
        {
          v40 = v231;
          if (!v231)
          {
            v40 = xpc_array_create(0, 0);
          }

          v231 = v40;
          xpc_array_set_string(v40, 0xFFFFFFFFFFFFFFFFLL, v17);
        }

        continue;
      case 15:
        if (v8 == 16)
        {
          v248 = *v17;
        }

        continue;
      case 16:
        if (v8 <= 5)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_authentication_credential_create_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v8;
          v35 = _os_log_send_and_compose_impl();

          v249[0] = 16;
          v247 = 0;
          if (__nwlog_fault(v35, v249, &v247))
          {
            if (v249[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v36 = gLogObj;
              v37 = v249[0];
              if (os_log_type_enabled(v36, v249[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_authentication_credential_create_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v8;
                _os_log_impl(&dword_181A37000, v36, v37, "%{public}s invalid buffer, underflow %u", buf, 0x12u);
              }
            }

            else if (v247 == 1)
            {
              v94 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v36 = gLogObj;
              v95 = v249[0];
              v96 = os_log_type_enabled(v36, v249[0]);
              if (v94)
              {
                if (v96)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_authentication_credential_create_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v8;
                  *&buf[18] = 2082;
                  *&buf[20] = v94;
                  _os_log_impl(&dword_181A37000, v36, v95, "%{public}s invalid buffer, underflow %u, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v94);
                if (!v35)
                {
                  goto LABEL_372;
                }

                goto LABEL_313;
              }

              if (v96)
              {
                *buf = 136446466;
                *&buf[4] = "nw_authentication_credential_create_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v8;
                _os_log_impl(&dword_181A37000, v36, v95, "%{public}s invalid buffer, underflow %u, no backtrace", buf, 0x12u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v36 = gLogObj;
              v111 = v249[0];
              if (os_log_type_enabled(v36, v249[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_authentication_credential_create_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v8;
                _os_log_impl(&dword_181A37000, v36, v111, "%{public}s invalid buffer, underflow %u, backtrace limit exceeded", buf, 0x12u);
              }
            }
          }

          if (!v35)
          {
            goto LABEL_372;
          }

LABEL_313:
          v145 = v35;
          goto LABEL_371;
        }

        v48 = *v17;
        v49 = v17 + 2;
        v50 = v17[1];
        v51 = v8 - 2;
        if (v48 == 1)
        {
          if (*v49)
          {
            v52 = 2 - v8;
            v53 = v49;
            do
            {
              v55 = *++v53;
              v54 = v55;
              v56 = v55 != 0;
              v57 = v52 + 1;
              if (v52 == -1)
              {
                break;
              }

              ++v52;
            }

            while (v54);
            v51 = -v57;
            if (!v57)
            {
LABEL_265:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v131 = gLogObj;
              *buf = 136446466;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v51;
              v108 = _os_log_send_and_compose_impl();

              v249[0] = 16;
              v247 = 0;
              if (__nwlog_fault(v108, v249, &v247))
              {
                if (v249[0] == 17)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v109 = gLogObj;
                  v132 = v249[0];
                  if (os_log_type_enabled(v109, v249[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_authentication_credential_create_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v51;
                    _os_log_impl(&dword_181A37000, v109, v132, "%{public}s invalid buffer, underflow %u", buf, 0x12u);
                  }

                  goto LABEL_368;
                }

                if (v247 != 1)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v109 = gLogObj;
                  v147 = v249[0];
                  if (os_log_type_enabled(v109, v249[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_authentication_credential_create_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v51;
                    _os_log_impl(&dword_181A37000, v109, v147, "%{public}s invalid buffer, underflow %u, backtrace limit exceeded", buf, 0x12u);
                  }

                  goto LABEL_368;
                }

                v142 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v109 = gLogObj;
                v143 = v249[0];
                v144 = os_log_type_enabled(v109, v249[0]);
                if (!v142)
                {
                  if (v144)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_authentication_credential_create_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v51;
                    _os_log_impl(&dword_181A37000, v109, v143, "%{public}s invalid buffer, underflow %u, no backtrace", buf, 0x12u);
                  }

                  goto LABEL_368;
                }

                if (v144)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_authentication_credential_create_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v51;
                  *&buf[18] = 2082;
                  *&buf[20] = v142;
                  _os_log_impl(&dword_181A37000, v109, v143, "%{public}s invalid buffer, underflow %u, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v142);
              }

              goto LABEL_369;
            }
          }

          else
          {
            v56 = 0;
            v53 = v49;
          }

          if (v56)
          {
            goto LABEL_265;
          }

          v70 = v53 + 1;
          v71 = v53 + 1;
          do
          {
            v124 = v51--;
            v126 = *v71++;
            v125 = v126;
            if (v126)
            {
              v127 = v124 == 1;
            }

            else
            {
              v127 = 1;
            }
          }

          while (!v127);
          if (v125)
          {
            v128 = 1;
          }

          else
          {
            v128 = v51 == 0;
          }

          if (v128)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v129 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v51;
            v108 = _os_log_send_and_compose_impl();

            v249[0] = 16;
            v247 = 0;
            if (__nwlog_fault(v108, v249, &v247))
            {
              if (v249[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v109 = gLogObj;
                v130 = v249[0];
                if (os_log_type_enabled(v109, v249[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_authentication_credential_create_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v51;
                  _os_log_impl(&dword_181A37000, v109, v130, "%{public}s invalid buffer, underflow %u", buf, 0x12u);
                }

                goto LABEL_368;
              }

              if (v247 == 1)
              {
                v134 = __nw_create_backtrace_string();
                v109 = __nwlog_obj();
                v148 = v249[0];
                v149 = os_log_type_enabled(v109, v249[0]);
                if (v134)
                {
                  if (v149)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_authentication_credential_create_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v51;
                    *&buf[18] = 2082;
                    *&buf[20] = v134;
                    _os_log_impl(&dword_181A37000, v109, v148, "%{public}s invalid buffer, underflow %u, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  goto LABEL_340;
                }

                if (v149)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_authentication_credential_create_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v51;
                  _os_log_impl(&dword_181A37000, v109, v148, "%{public}s invalid buffer, underflow %u, no backtrace", buf, 0x12u);
                }
              }

              else
              {
                v109 = __nwlog_obj();
                v155 = v249[0];
                if (os_log_type_enabled(v109, v249[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_authentication_credential_create_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v51;
                  _os_log_impl(&dword_181A37000, v109, v155, "%{public}s invalid buffer, underflow %u, backtrace limit exceeded", buf, 0x12u);
                }
              }

LABEL_368:
            }

LABEL_369:
            if (!v108)
            {
              goto LABEL_372;
            }

LABEL_370:
            v145 = v108;
LABEL_371:
            free(v145);
            goto LABEL_372;
          }

          v51 = v124 - 2;
          if ((v124 - 2) <= 3)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v140 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v51;
            v108 = _os_log_send_and_compose_impl();

            v249[0] = 16;
            v247 = 0;
            if (!__nwlog_fault(v108, v249, &v247))
            {
              goto LABEL_369;
            }

            if (v249[0] == 17)
            {
              v109 = __nwlog_obj();
              v141 = v249[0];
              if (os_log_type_enabled(v109, v249[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_authentication_credential_create_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v51;
                _os_log_impl(&dword_181A37000, v109, v141, "%{public}s invalid buffer, underflow %u", buf, 0x12u);
              }

              goto LABEL_368;
            }

            if (v247 != 1)
            {
              v109 = __nwlog_obj();
              v157 = v249[0];
              if (os_log_type_enabled(v109, v249[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_authentication_credential_create_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v51;
                _os_log_impl(&dword_181A37000, v109, v157, "%{public}s invalid buffer, underflow %u, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_368;
            }

            v134 = __nw_create_backtrace_string();
            v109 = __nwlog_obj();
            v153 = v249[0];
            v154 = os_log_type_enabled(v109, v249[0]);
            if (!v134)
            {
              if (v154)
              {
                *buf = 136446466;
                *&buf[4] = "nw_authentication_credential_create_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v51;
                _os_log_impl(&dword_181A37000, v109, v153, "%{public}s invalid buffer, underflow %u, no backtrace", buf, 0x12u);
              }

              goto LABEL_368;
            }

            if (v154)
            {
              *buf = 136446722;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v51;
              *&buf[18] = 2082;
              *&buf[20] = v134;
              _os_log_impl(&dword_181A37000, v109, v153, "%{public}s invalid buffer, underflow %u, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

LABEL_340:

            free(v134);
            if (!v108)
            {
              goto LABEL_372;
            }

            goto LABEL_370;
          }
        }

        else
        {
          if (v48 == 2)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v69 = gLogObj;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s Unsupported credential type identity", buf, 0xCu);
            }
          }

          v70 = 0;
          v71 = v49;
          v49 = 0;
        }

        v74 = *v71;
        v73 = (v71 + 4);
        v72 = v74;
        v75 = v51 - 4;
        if (v75 != v74)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v107 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_authentication_credential_create_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v75;
          v108 = _os_log_send_and_compose_impl();

          v249[0] = 16;
          v247 = 0;
          if (!__nwlog_fault(v108, v249, &v247))
          {
            goto LABEL_369;
          }

          if (v249[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v109 = gLogObj;
            v110 = v249[0];
            if (os_log_type_enabled(v109, v249[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v75;
              _os_log_impl(&dword_181A37000, v109, v110, "%{public}s invalid buffer, underflow %u", buf, 0x12u);
            }

            goto LABEL_368;
          }

          if (v247 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v109 = gLogObj;
            v146 = v249[0];
            if (os_log_type_enabled(v109, v249[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v75;
              _os_log_impl(&dword_181A37000, v109, v146, "%{public}s invalid buffer, underflow %u, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_368;
          }

          v134 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v109 = gLogObj;
          v135 = v249[0];
          v136 = os_log_type_enabled(v109, v249[0]);
          if (!v134)
          {
            if (v136)
            {
              *buf = 136446466;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v75;
              _os_log_impl(&dword_181A37000, v109, v135, "%{public}s invalid buffer, underflow %u, no backtrace", buf, 0x12u);
            }

            goto LABEL_368;
          }

          if (v136)
          {
            *buf = 136446722;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v75;
            *&buf[18] = 2082;
            *&buf[20] = v134;
            _os_log_impl(&dword_181A37000, v109, v135, "%{public}s invalid buffer, underflow %u, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          goto LABEL_340;
        }

        v76 = [[NWConcrete_nw_authentication_credential alloc] initWithType:v48];
        nw_authentication_credential_set_persistence(v76, v50);
        if (v48 == 1)
        {
          nw_authentication_credential_set_username(v76, v49);
          nw_authentication_credential_set_password(v76, v70);
        }

        if (!v72)
        {
          v89 = v76;
          goto LABEL_373;
        }

        v77 = v72;
        break;
      case 17:
        if (v8 == 16)
        {
          v30 = objects;
          if (!objects)
          {
            v30 = xpc_array_create(0, 0);
          }

          objects = v30;
          xpc_array_set_uuid(v30, 0xFFFFFFFFFFFFFFFFLL, v17);
        }

        continue;
      case 18:
        if (!v17[(v8 - 1)])
        {
          v39 = v232;
          if (!v232)
          {
            v39 = xpc_array_create(0, 0);
          }

          v232 = v39;
          xpc_array_set_string(v39, 0xFFFFFFFFFFFFFFFFLL, v17);
        }

        continue;
      default:
        continue;
    }

    do
    {
      v79 = *v73++;
      v78 = v79;
      v9 = v72-- != 0;
      if (v9)
      {
        goto LABEL_199;
      }

      v80 = v76;
      v81 = v72;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v82 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_authentication_credential_create_from_tlv";
      *&buf[12] = 2082;
      *&buf[14] = "result_length";
      *&buf[22] = 2048;
      *&buf[24] = 1;
      *&buf[32] = 2048;
      *&buf[34] = v72;
      v83 = _os_log_send_and_compose_impl();

      v249[0] = 16;
      v247 = 0;
      if (__nwlog_fault(v83, v249, &v247))
      {
        if (v249[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = v249[0];
          if (os_log_type_enabled(v84, v249[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 2082;
            *&buf[14] = "result_length";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v81;
            _os_log_impl(&dword_181A37000, v84, v85, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
          }
        }

        else if (v247 == 1)
        {
          v86 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          type = v249[0];
          v87 = os_log_type_enabled(v84, v249[0]);
          if (v86)
          {
            if (v87)
            {
              *buf = 136447234;
              *&buf[4] = "nw_authentication_credential_create_from_tlv";
              *&buf[12] = 2082;
              *&buf[14] = "result_length";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v81;
              *&buf[42] = 2082;
              *&buf[44] = v86;
              _os_log_impl(&dword_181A37000, v84, type, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v86);
            if (!v83)
            {
              goto LABEL_198;
            }

LABEL_197:
            free(v83);
            goto LABEL_198;
          }

          if (v87)
          {
            *buf = 136446978;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 2082;
            *&buf[14] = "result_length";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v81;
            _os_log_impl(&dword_181A37000, v84, type, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace", buf, 0x2Au);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v88 = v249[0];
          if (os_log_type_enabled(v84, v249[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 2082;
            *&buf[14] = "result_length";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v81;
            _os_log_impl(&dword_181A37000, v84, v88, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded", buf, 0x2Au);
          }
        }
      }

      if (v83)
      {
        goto LABEL_197;
      }

LABEL_198:
      v72 = 0;
      v76 = v80;
LABEL_199:
      nw_authentication_credential_add_valid_authentication_type(v76, v78);
      --v77;
    }

    while (v77);
    v89 = v76;
    if (!v72)
    {
      goto LABEL_373;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v90 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nw_authentication_credential_create_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = v72;
    *&buf[18] = 1024;
    *&buf[20] = 0;
    v91 = _os_log_send_and_compose_impl();

    v249[0] = 16;
    v247 = 0;
    if (__nwlog_fault(v91, v249, &v247))
    {
      if (v249[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v92 = gLogObj;
        v93 = v249[0];
        if (os_log_type_enabled(v92, v249[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_authentication_credential_create_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v72;
          *&buf[18] = 1024;
          *&buf[20] = 0;
          _os_log_impl(&dword_181A37000, v92, v93, "%{public}s invalid result, result_length %u, types_count %u", buf, 0x18u);
        }

        goto LABEL_362;
      }

      if (v247 == 1)
      {
        v150 = __nw_create_backtrace_string();
        v92 = __nwlog_obj();
        v151 = v249[0];
        v152 = os_log_type_enabled(v92, v249[0]);
        if (v150)
        {
          if (v152)
          {
            *buf = 136446978;
            *&buf[4] = "nw_authentication_credential_create_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v72;
            *&buf[18] = 1024;
            *&buf[20] = 0;
            *&buf[24] = 2082;
            *&buf[26] = v150;
            _os_log_impl(&dword_181A37000, v92, v151, "%{public}s invalid result, result_length %u, types_count %u, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v150);
          goto LABEL_363;
        }

        if (v152)
        {
          *buf = 136446722;
          *&buf[4] = "nw_authentication_credential_create_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v72;
          *&buf[18] = 1024;
          *&buf[20] = 0;
          _os_log_impl(&dword_181A37000, v92, v151, "%{public}s invalid result, result_length %u, types_count %u, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        v92 = __nwlog_obj();
        v156 = v249[0];
        if (os_log_type_enabled(v92, v249[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_authentication_credential_create_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v72;
          *&buf[18] = 1024;
          *&buf[20] = 0;
          _os_log_impl(&dword_181A37000, v92, v156, "%{public}s invalid result, result_length %u, types_count %u, backtrace limit exceeded", buf, 0x18u);
        }
      }

LABEL_362:
    }

LABEL_363:
    if (v91)
    {
      free(v91);
    }

LABEL_372:
    v89 = 0;
LABEL_373:

    v235 = v89;
  }

  while (v4 >= 5 && v6 < v243);
  if (!v238)
  {
    v5 = "ProtocolIdentifier" + 16;
LABEL_375:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v158 = gLogObj;
    v246 = *(v5 + 315);
    *buf = v246;
    *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
    v159 = _os_log_send_and_compose_impl();

    v249[0] = 16;
    v247 = 0;
    if (__nwlog_fault(v159, v249, &v247))
    {
      if (v249[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v160 = gLogObj;
        v161 = v249[0];
        if (os_log_type_enabled(v160, v249[0]))
        {
          *buf = v246;
          *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
          _os_log_impl(&dword_181A37000, v160, v161, "%{public}s called with null endpoint", buf, 0xCu);
        }
      }

      else if (v247 == 1)
      {
        v166 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v160 = gLogObj;
        v167 = v249[0];
        v168 = os_log_type_enabled(v160, v249[0]);
        if (v166)
        {
          if (v168)
          {
            *buf = 136446466;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            *&buf[12] = 2082;
            *&buf[14] = v166;
            _os_log_impl(&dword_181A37000, v160, v167, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v166);
          if (!v159)
          {
            goto LABEL_408;
          }

          goto LABEL_407;
        }

        if (v168)
        {
          *buf = v246;
          *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
          _os_log_impl(&dword_181A37000, v160, v167, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v160 = gLogObj;
        v172 = v249[0];
        if (os_log_type_enabled(v160, v249[0]))
        {
          *buf = v246;
          *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
          _os_log_impl(&dword_181A37000, v160, v172, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v159)
    {
LABEL_408:
      v238 = 0;
      v174 = 0;
      goto LABEL_429;
    }

LABEL_407:
    free(v159);
    goto LABEL_408;
  }

  if (!stack)
  {
    stack = v228;
    if (!stack)
    {
      v206 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
      v207 = _os_log_send_and_compose_impl();

      v249[0] = 16;
      v247 = 0;
      if (__nwlog_fault(v207, v249, &v247))
      {
        if (v249[0] == 17)
        {
          v208 = __nwlog_obj();
          v209 = v249[0];
          if (os_log_type_enabled(v208, v249[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null stack", buf, 0xCu);
          }
        }

        else if (v247 == 1)
        {
          v216 = __nw_create_backtrace_string();
          v208 = __nwlog_obj();
          v217 = v249[0];
          v218 = os_log_type_enabled(v208, v249[0]);
          if (v216)
          {
            if (v218)
            {
              *buf = 136446466;
              *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
              *&buf[12] = 2082;
              *&buf[14] = v216;
              _os_log_impl(&dword_181A37000, v208, v217, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v216);
            goto LABEL_496;
          }

          if (v218)
          {
            *buf = 136446210;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            _os_log_impl(&dword_181A37000, v208, v217, "%{public}s called with null stack, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v208 = __nwlog_obj();
          v222 = v249[0];
          if (os_log_type_enabled(v208, v249[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
            _os_log_impl(&dword_181A37000, v208, v222, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_496:
      if (v207)
      {
        free(v207);
      }

      v228 = 0;
      stack = 0;
      v174 = 0;
      goto LABEL_429;
    }
  }

  v175 = v240;
  if (v240)
  {
    nw_dictionary_set_value(v240[1], __s1, stack);
    goto LABEL_428;
  }

  if (v227)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v176 = gLogObj;
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
      _os_log_impl(&dword_181A37000, v176, OS_LOG_TYPE_ERROR, "%{public}s Failed to create proxy config, error in deserializing stack", buf, 0xCu);
    }

    goto LABEL_423;
  }

  if (__s1)
  {
    v177 = nw_proxy_config_create_with_stack_internal(v238, stack, __s1);
  }

  else
  {
    v177 = nw_proxy_config_create_with_stack(v238, stack);
  }

  v175 = v177;
  if (v177)
  {
LABEL_428:
    objc_storeStrong(v175 + 6, obj);
    objc_storeStrong(v175 + 2, keys);
    objc_storeStrong(v175 + 3, v236);
    objc_storeStrong(v175 + 4, v237);
    *(v175 + 38) = *(v225 + 20);
    *(v175 + 39) = *(v225 + 16);
    *(v175 + 84) = *(v225 + 18);
    *(v175 + 40) = *(v225 + 21);
    v178 = *(v175 + 170) & 0xFE | *(v225 + 22) & 1;
    *(v175 + 170) = v178;
    v179 = v178 & 0xFFFFFFFD | (2 * ((*(v225 + 22) >> 1) & 1));
    *(v175 + 170) = v179;
    v180 = v179 & 0xFFFFFFFB | (4 * ((*(v225 + 22) >> 13) & 1));
    *(v175 + 170) = v180;
    v181 = v180 & 0xFFFFFFF7 | (8 * ((*(v225 + 22) >> 2) & 1));
    *(v175 + 170) = v181;
    v182 = v181 & 0xFFFFFFEF | (16 * ((*(v225 + 22) >> 3) & 1));
    *(v175 + 170) = v182;
    v183 = v182 & 0xFFFFFFDF | (32 * ((*(v225 + 22) >> 4) & 1));
    *(v175 + 170) = v183;
    LOBYTE(v183) = v183 & 0xBF | (((*(v225 + 22) & 0x20) != 0) << 6);
    *(v175 + 170) = v183;
    *(v175 + 170) = (2 * *(v225 + 22)) & 0x80 | v183 & 0x7F;
    v184 = *(v175 + 171) & 0xFE | (*(v225 + 22) >> 7);
    *(v175 + 171) = v184;
    v185 = v184 & 0xFFFFFFFD | (2 * (HIBYTE(*(v225 + 22)) & 1));
    *(v175 + 171) = v185;
    v186 = v185 & 0xFFFFFFFB | (4 * ((*(v225 + 22) >> 9) & 1));
    *(v175 + 171) = v186;
    v187 = v186 & 0xFFFFFFF7 | (8 * ((*(v225 + 22) >> 10) & 1));
    *(v175 + 171) = v187;
    v188 = v187 & 0xFFFFFFEF | (16 * ((*(v225 + 22) >> 11) & 1));
    *(v175 + 171) = v188;
    LOBYTE(v188) = v188 & 0xBF | (((*(v225 + 22) & 0x1000) != 0) << 6);
    *(v175 + 171) = v188;
    *(v175 + 171) = (*(v225 + 22) >> 7) & 0x80 | v188 & 0x7F;
    v189 = *(v175 + 172) & 0xFE | (*(v225 + 22) >> 15);
    *(v175 + 172) = v189;
    *(v175 + 172) = (2 * (*(v225 + 24) & 1)) | v189 & 0xFD;
    *(v175 + 9) = *v225;
    *(v175 + 7) = v248;
    objc_storeStrong(v175 + 15, v230);
    objc_storeStrong(v175 + 16, v231);
    objc_storeStrong(v175 + 17, v232);
    objc_storeStrong(v175 + 13, v235);
    objc_storeStrong(v175 + 18, objects);
    v174 = v175;
    v240 = v174;
    goto LABEL_429;
  }

  v210 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
  v211 = _os_log_send_and_compose_impl();

  v249[0] = 16;
  v247 = 0;
  if (__nwlog_fault(v211, v249, &v247))
  {
    if (v249[0] == 17)
    {
      v212 = __nwlog_obj();
      v213 = v249[0];
      if (os_log_type_enabled(v212, v249[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v212, v213, "%{public}s called with null config", buf, 0xCu);
      }

      goto LABEL_501;
    }

    if (v247 == 1)
    {
      v219 = __nw_create_backtrace_string();
      v212 = __nwlog_obj();
      v220 = v249[0];
      v221 = os_log_type_enabled(v212, v249[0]);
      if (v219)
      {
        if (v221)
        {
          *buf = 136446466;
          *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
          *&buf[12] = 2082;
          *&buf[14] = v219;
          _os_log_impl(&dword_181A37000, v212, v220, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v219);
        goto LABEL_502;
      }

      if (v221)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v212, v220, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v212 = __nwlog_obj();
      v223 = v249[0];
      if (os_log_type_enabled(v212, v249[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_create_with_agent_data_extended";
        _os_log_impl(&dword_181A37000, v212, v223, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_501:
  }

LABEL_502:
  if (v211)
  {
    free(v211);
  }

LABEL_423:
  v240 = 0;
  v174 = 0;
LABEL_429:

  return v174;
}

void ___ZL42nw_proxy_config_initialize_known_protocolsv_block_invoke()
{
  if (nw_protocol_socksv4_copy_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_socksv4_copy_definition::onceToken, &__block_literal_global_47340);
  }

  v0 = nw_protocol_socksv4_copy_definition::definition;
  if (nw_protocol_socksv4_copy_definition::definition)
  {
    v0 = os_retain(nw_protocol_socksv4_copy_definition::definition);
  }

  if (nw_protocol_socksv5_copy_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_socksv5_copy_definition::onceToken, &__block_literal_global_89224);
  }

  v1 = nw_protocol_socksv5_copy_definition::definition;
  if (nw_protocol_socksv5_copy_definition::definition)
  {
    v1 = os_retain(nw_protocol_socksv5_copy_definition::definition);
  }

  if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
  }

  v2 = nw_protocol_masque_get_definition(void)::definition;
  if (nw_protocol_masque_get_definition(void)::definition)
  {
    v2 = os_retain(nw_protocol_masque_get_definition(void)::definition);
    if (v2)
    {
      v2 = os_retain(v2);
    }
  }

  if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
  }

  v3 = nw_protocol_masque_listener_get_definition(void)::definition;
  if (nw_protocol_masque_listener_get_definition(void)::definition)
  {
    v3 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
    if (v3)
    {
      v3 = os_retain(v3);
    }
  }

  if (nw_protocol_copy_serializable_tls_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_serializable_tls_definition::onceToken, &__block_literal_global_75577);
  }

  if (nw_protocol_setup_tcp_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
  }

  if (nw_protocol_setup_udp_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_udp_definition_onceToken, &__block_literal_global_5_47888);
  }

  if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  if (nw_protocol_copy_http1_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
  }

  if (nw_protocol_copy_http2_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http2_definition_onceToken, &__block_literal_global_5_76055);
  }

  if (nw_protocol_copy_http3_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  if (nw_protocol_copy_http_redirect_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
  }

  if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
  }

  v4 = nw_protocol_demux_copy_definition::definition;
  if (nw_protocol_demux_copy_definition::definition)
  {
    v4 = os_retain(nw_protocol_demux_copy_definition::definition);
  }

  if (nw_protocol_copy_oblivious_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_oblivious_http_definition_onceToken, &__block_literal_global_52_77519);
  }

  if (nw_protocol_copy_oblivious_http_contexts_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_oblivious_http_contexts_definition_onceToken, &__block_literal_global_54);
  }

  if (nw_protocol_copy_qpod_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
  }

  if (nw_proxy_copy_http_connect_definition::onceToken != -1)
  {
    dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
  }

  v5 = nw_proxy_copy_http_connect_definition::proxy_definition;
}

uint64_t __nw_protocol_socksv4_copy_definition_block_invoke()
{
  definition = nw_framer_create_definition("socksv4", 0, &__block_literal_global_9_47345);
  nw_protocol_socksv4_copy_definition::definition = definition;

  return nw_protocol_definition_register(definition);
}

nw_protocol_definition_t nw_framer_create_definition(const char *identifier, uint32_t flags, nw_framer_start_handler_t start_handler)
{
  v3 = flags;
  v35 = *MEMORY[0x1E69E9840];
  v5 = start_handler;
  v6 = v5;
  if (identifier)
  {
    if (v5)
    {
      v7 = v5;
      named = nw_protocol_definition_create_named(v3 & 2 | 1u, identifier);
      v9 = named;
      if (named)
      {
        nw_protocol_definition_initialize_common_state(named);
        if (v3)
        {
          v10 = 3;
        }

        else
        {
          v10 = 1;
        }

        *(v9 + 192) = v10 | *(v9 + 192) & 0xFC;
        v9->common_state->var9 = nw_framer_protocol_create;
        v11 = _Block_copy(v7);
        common_state = v9->common_state;
        var10 = common_state->var10;
        common_state->var10 = v11;

        v14 = v9;
      }

      nw_protocol_definition_set_metadata_allocator(v9, nw_framer_allocate_metadata, nw_framer_deallocate_metadata);
      nw_protocol_definition_set_metadata_copy_reply(v9, nw_framer_message_create_reply, nw_framer_metadata_copy_original, nw_framer_metadata_set_original);
      nw_protocol_definition_set_options_allocator(v9, nw_framer_allocate_options, nw_framer_duplicate_options, nw_framer_deallocate_options);
      nw_protocol_definition_set_options_equality_check(v9, nw_framer_options_are_equal);
      goto LABEL_9;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_create_definition";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_framer_create_definition";
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null start", buf, 0xCu);
        }

LABEL_41:

        goto LABEL_42;
      }

      if (v29 != 1)
      {
        v18 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_framer_create_definition";
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_41;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v26)
        {
          *buf = 136446210;
          v32 = "nw_framer_create_definition";
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null start, no backtrace", buf, 0xCu);
        }

        goto LABEL_41;
      }

      if (v26)
      {
        *buf = 136446466;
        v32 = "nw_framer_create_definition";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null start, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_29;
    }
  }

  else
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_create_definition";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_framer_create_definition";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null identifier_string", buf, 0xCu);
        }

        goto LABEL_41;
      }

      if (v29 != 1)
      {
        v18 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_framer_create_definition";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null identifier_string, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_41;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          *buf = 136446210;
          v32 = "nw_framer_create_definition";
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null identifier_string, no backtrace", buf, 0xCu);
        }

        goto LABEL_41;
      }

      if (v24)
      {
        *buf = 136446466;
        v32 = "nw_framer_create_definition";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null identifier_string, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_29:

      free(backtrace_string);
    }
  }

LABEL_42:
  if (v17)
  {
    free(v17);
  }

  v9 = 0;
LABEL_9:

  return &v9->super;
}

void nw_protocol_definition_set_metadata_allocator(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v6 = 0;
    v7 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_definition_set_metadata_allocator";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v8, &type, &v25))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
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
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_protocol_definition_set_metadata_allocator";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!a2)
  {
    v6 = v5;
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_definition_set_metadata_allocator";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v8, &type, &v25))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null allocate_function", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null allocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null allocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_protocol_definition_set_metadata_allocator";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null allocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v5[18] = a2;
    v5[19] = a3;
    goto LABEL_5;
  }

  v6 = v5;
  v13 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_definition_set_metadata_allocator";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v8, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null deallocate_function", buf, 0xCu);
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_allocator";
        _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v21)
    {
      *buf = 136446466;
      v28 = "nw_protocol_definition_set_metadata_allocator";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_54:
  if (v8)
  {
    free(v8);
  }

  v5 = v6;
LABEL_5:
}

uint64_t __nw_protocol_socksv5_copy_definition_block_invoke()
{
  definition = nw_framer_create_definition("socksv5", 0, &__block_literal_global_9_89229);
  nw_protocol_socksv5_copy_definition::definition = definition;

  return nw_protocol_definition_register(definition);
}

uint64_t ___ZL33nw_protocol_masque_get_definitionv_block_invoke()
{
  if (nw_protocol_masque_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_identifier(void)::onceToken, &__block_literal_global_204);
  }

  nw_protocol_masque_get_definition(void)::definition = nw_protocol_definition_create_with_identifier(nw_protocol_masque_identifier(void)::g_masque_protocol_identifier);
  nw_protocol_definition_set_is_proxy(nw_protocol_masque_get_definition(void)::definition);
  nw_protocol_definition_set_globals_allocator(nw_protocol_masque_get_definition(void)::definition, nw_masque_allocate_globals, nw_masque_deallocate_globals);
  nw_protocol_definition_set_options_allocator(nw_protocol_masque_get_definition(void)::definition, nw_masque_allocate_options, nw_masque_copy_options, nw_masque_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_masque_get_definition(void)::definition, nw_masque_option_is_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_masque_get_definition(void)::definition, 0, nw_masque_serialize_options, nw_masque_deserialize_options);
  nw_protocol_definition_set_metadata_allocator(nw_protocol_masque_get_definition(void)::definition, nw_masque_allocate_metadata, nw_masque_deallocate_metadata);
  nw_protocol_definition_set_metadata_comparator(nw_protocol_masque_get_definition(void)::definition, nw_masque_compare_metadata);
  v0 = nw_protocol_masque_get_definition(void)::definition;

  return nw_protocol_register_handle(nw_protocol_masque_identifier(void)::g_masque_protocol_identifier, v0, nw_protocol_masque_create, 0);
}

double ___ZL29nw_protocol_masque_identifierv_block_invoke()
{
  byte_1EA8411DF = 0;
  unk_1EA8411D7 = 0;
  unk_1EA8411C7 = 0u;
  strcpy(nw_protocol_masque_identifier(void)::g_masque_protocol_identifier, "masque");
  *&result = 0x100000005;
  qword_1EA8411E0 = 0x100000005;
  return result;
}

void nw_protocol_definition_set_is_proxy(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v1[192] |= 0x80u;
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_definition_set_is_proxy";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_definition_set_is_proxy";
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v7 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v13 = "nw_protocol_definition_set_is_proxy";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v7, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v8)
      {
        *buf = 136446210;
        v13 = "nw_protocol_definition_set_is_proxy";
        _os_log_impl(&dword_181A37000, v4, v7, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_definition_set_is_proxy";
        _os_log_impl(&dword_181A37000, v4, v9, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  v1 = 0;
LABEL_3:
}

void nw_protocol_definition_set_options_serializer(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (!v7)
  {
    v8 = 0;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_options_serializer";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v11 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v24, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
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
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_options_serializer";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!a3)
  {
    v8 = v7;
    v13 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_options_serializer";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null serialize_function", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null serialize_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null serialize_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_options_serializer";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null serialize_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (a4)
  {
    v7[193] = v7[193] & 0xFE | a2;
    *(v7 + 16) = a3;
    *(v7 + 17) = a4;
    goto LABEL_5;
  }

  v8 = v7;
  v15 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_protocol_definition_set_options_serializer";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v10, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null deserialize_function", buf, 0xCu);
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null deserialize_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_options_serializer";
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null deserialize_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_options_serializer";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null deserialize_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_54:
  if (v10)
  {
    free(v10);
  }

  v7 = v8;
LABEL_5:
}

void nw_protocol_definition_set_metadata_comparator(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v3[20] = a2;
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_definition_set_metadata_comparator";
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
          v21 = "nw_protocol_definition_set_metadata_comparator";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null comparator_function", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_definition_set_metadata_comparator";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null comparator_function, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v21 = "nw_protocol_definition_set_metadata_comparator";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null comparator_function, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_protocol_definition_set_metadata_comparator";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null comparator_function, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_definition_set_metadata_comparator";
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
          v21 = "nw_protocol_definition_set_metadata_comparator";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_definition_set_metadata_comparator";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v21 = "nw_protocol_definition_set_metadata_comparator";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_protocol_definition_set_metadata_comparator";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

uint64_t ___ZL42nw_protocol_masque_listener_get_definitionv_block_invoke()
{
  if (nw_protocol_masque_listener_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_identifier(void)::onceToken, &__block_literal_global_195);
  }

  nw_protocol_masque_listener_get_definition(void)::definition = nw_protocol_definition_create_with_identifier(&nw_protocol_masque_listener_identifier(void)::g_masque_protocol_identifier);
  nw_protocol_definition_set_is_proxy(nw_protocol_masque_listener_get_definition(void)::definition);
  nw_protocol_definition_set_globals_allocator(nw_protocol_masque_listener_get_definition(void)::definition, nw_masque_allocate_globals, nw_masque_deallocate_globals);
  nw_protocol_definition_set_options_allocator(nw_protocol_masque_listener_get_definition(void)::definition, nw_masque_allocate_options, nw_masque_copy_options, nw_masque_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_masque_listener_get_definition(void)::definition, nw_masque_option_is_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_masque_listener_get_definition(void)::definition, 0, nw_masque_serialize_options, nw_masque_deserialize_options);
  nw_protocol_definition_set_metadata_allocator(nw_protocol_masque_listener_get_definition(void)::definition, nw_masque_listener_allocate_metadata, nw_masque_listener_deallocate_metadata);
  nw_protocol_definition_set_metadata_comparator(nw_protocol_masque_listener_get_definition(void)::definition, nw_masque_listener_compare_metadata);
  v0 = nw_protocol_masque_listener_get_definition(void)::definition;

  return nw_protocol_register_handle(&nw_protocol_masque_listener_identifier(void)::g_masque_protocol_identifier, v0, nw_protocol_masque_listener_create, nw_protocol_masque_listener_accept);
}

double ___ZL38nw_protocol_masque_listener_identifierv_block_invoke()
{
  strcpy(&nw_protocol_masque_listener_identifier(void)::g_masque_protocol_identifier, "masque_listener");
  unk_1EA8410D8 = 0u;
  *&result = 0x200000005;
  qword_1EA8410E8 = 0x200000005;
  return result;
}

uint64_t __nw_protocol_copy_serializable_tls_definition_block_invoke()
{
  named = nw_protocol_definition_create_named(2, "tls-serializable");
  v1 = nw_protocol_copy_serializable_tls_definition::tls_definition;
  nw_protocol_copy_serializable_tls_definition::tls_definition = named;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_serializable_tls_definition::tls_definition, nw_serializable_tls_allocate_options, nw_serializable_tls_copy_options, nw_serializable_tls_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_serializable_tls_definition::tls_definition, nw_serializable_tls_option_is_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_serializable_tls_definition::tls_definition, 0, nw_serializable_tls_serialize_options, nw_serializable_tls_deserialize_options);
  v2 = nw_protocol_copy_serializable_tls_definition::tls_definition;

  return nw_protocol_definition_register(v2);
}

uint64_t __nw_protocol_copy_http_messaging_definition_block_invoke()
{
  if (nw_protocol_http_messaging_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_http_messaging_identifier::protocol_identifier);
  v1 = nw_protocol_copy_http_messaging_definition_definition;
  nw_protocol_copy_http_messaging_definition_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_http_messaging_definition_definition, nw_http_messaging_allocate_options, nw_http_messaging_copy_options, nw_http_messaging_deallocate_options);
  nw_protocol_definition_set_options_comparator(nw_protocol_copy_http_messaging_definition_definition, nw_http_messaging_options_compare);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_http_messaging_definition_definition, 0, nw_http_messaging_serialize_options, nw_http_messaging_deserialize_options);
  if (nw_protocol_http_messaging_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
  }

  v2 = nw_protocol_copy_http_messaging_definition_definition;

  return nw_protocol_register_handle(&nw_protocol_http_messaging_identifier::protocol_identifier, v2, nw_protocol_http_messaging_create, nw_protocol_http_messaging_accept);
}

double __nw_protocol_http_messaging_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_messaging_identifier::protocol_identifier, "http_messaging");
  *&result = 0x200000004;
  qword_1EA841360 = 0x200000004;
  return result;
}

void nw_protocol_definition_set_options_comparator(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v3[15] = a2;
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_definition_set_options_comparator";
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
          v21 = "nw_protocol_definition_set_options_comparator";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null comparator_function", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_definition_set_options_comparator";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null comparator_function, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v21 = "nw_protocol_definition_set_options_comparator";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null comparator_function, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_protocol_definition_set_options_comparator";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null comparator_function, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_definition_set_options_comparator";
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
          v21 = "nw_protocol_definition_set_options_comparator";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_definition_set_options_comparator";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v21 = "nw_protocol_definition_set_options_comparator";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_protocol_definition_set_options_comparator";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

uint64_t __nw_protocol_copy_http1_definition_block_invoke()
{
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_http1_identifier::http1_protocol_identifier);
  v1 = nw_protocol_copy_http1_definition_http1_definition;
  nw_protocol_copy_http1_definition_http1_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_http1_definition_http1_definition, nw_http1_allocate_options, nw_http1_copy_options, nw_http1_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_http1_definition_http1_definition, nw_http1_compare_options);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_http1_definition_http1_definition, 0, nw_http1_serialize_options, nw_http1_deserialize_options);
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
  }

  v2 = nw_protocol_copy_http1_definition_http1_definition;

  return nw_protocol_register_handle(&nw_protocol_http1_identifier::http1_protocol_identifier, v2, nw_protocol_http1_create, nw_protocol_http1_accept);
}

double __nw_protocol_http1_identifier_block_invoke()
{
  strcpy(&nw_protocol_http1_identifier::http1_protocol_identifier, "http1");
  *&result = 0x200000004;
  qword_1EA841248 = 0x200000004;
  return result;
}

uint64_t __nw_protocol_copy_http2_definition_block_invoke()
{
  if (nw_protocol_http2_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_http2_identifier::http2_protocol_identifier);
  v1 = nw_protocol_copy_http2_definition_http2_definition;
  nw_protocol_copy_http2_definition_http2_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_http2_definition_http2_definition, nw_http2_allocate_options, nw_http2_copy_options, nw_http2_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_http2_definition_http2_definition, nw_http2_compare_options);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_http2_definition_http2_definition, 0, nw_http2_serialize_options, nw_http2_deserialize_options);
  if (nw_protocol_http2_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
  }

  v2 = nw_protocol_copy_http2_definition_http2_definition;

  return nw_protocol_register_handle(&nw_protocol_http2_identifier::http2_protocol_identifier, v2, nw_protocol_http2_create, nw_protocol_http2_accept);
}

double __nw_protocol_http2_identifier_block_invoke()
{
  strcpy(&nw_protocol_http2_identifier::http2_protocol_identifier, "http2");
  *&result = 0x200000004;
  qword_1EA8412EC = 0x200000004;
  return result;
}

uint64_t __nw_protocol_copy_http3_definition_block_invoke()
{
  if (nw_protocol_http3_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_http3_identifier::http3_protocol_identifier);
  v1 = nw_protocol_copy_http3_definition_http3_definition;
  nw_protocol_copy_http3_definition_http3_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_http3_definition_http3_definition, nw_http3_allocate_options, nw_http3_copy_options, nw_http3_deallocate_options);
  nw_protocol_definition_set_options_comparator(nw_protocol_copy_http3_definition_http3_definition, nw_http3_compare_options);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_http3_definition_http3_definition, 0, nw_http3_serialize_options, nw_http3_deserialize_options);
  if (nw_protocol_http3_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
  }

  v2 = nw_protocol_copy_http3_definition_http3_definition;

  return nw_protocol_register_handle(&nw_protocol_http3_identifier::http3_protocol_identifier, v2, nw_protocol_http3_create, nw_protocol_http3_accept);
}

double __nw_protocol_http3_identifier_block_invoke()
{
  strcpy(&nw_protocol_http3_identifier::http3_protocol_identifier, "http3");
  *&result = 0x200000004;
  qword_1EA8413B8 = 0x200000004;
  return result;
}

uint64_t __nw_protocol_copy_http_client_definition_block_invoke()
{
  if (nw_protocol_http_client_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_client_identifier::onceToken, &__block_literal_global_30594);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_http_client_identifier::protocol_identifier);
  v1 = nw_protocol_copy_http_client_definition_definition;
  nw_protocol_copy_http_client_definition_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_http_client_definition_definition, nw_http_client_allocate_options, nw_http_client_copy_options, nw_http_client_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_http_client_definition_definition, nw_http_client_options_are_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_http_client_definition_definition, 0, nw_http_client_serialize_options, nw_http_client_deserialize_options);
  nw_protocol_definition_set_metadata_initializer(nw_protocol_copy_http_client_definition_definition, 0x50u, nw_http_client_initialize_metadata, nw_http_client_finalize_metadata);
  if (nw_protocol_http_client_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_client_identifier::onceToken, &__block_literal_global_30594);
  }

  v2 = nw_protocol_copy_http_client_definition_definition;

  return nw_protocol_register_handle(&nw_protocol_http_client_identifier::protocol_identifier, v2, nw_protocol_http_client_create, 0);
}

double __nw_protocol_http_client_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_client_identifier::protocol_identifier, "http_client");
  *&result = 0x200000005;
  qword_1EA8410B0 = 0x200000005;
  return result;
}

void nw_protocol_definition_set_metadata_initializer(void *a1, unsigned int a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_definition_set_metadata_initializer";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v32 = "nw_protocol_definition_set_metadata_initializer";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v11)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v11);
        goto LABEL_5;
      }

      if (v20)
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_definition_set_metadata_initializer";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null initialize_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null initialize_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v23)
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null initialize_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v32 = "nw_protocol_definition_set_metadata_initializer";
      v33 = 2082;
      v34 = v21;
      _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null initialize_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a4)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_definition_set_metadata_initializer";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null finalize_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null finalize_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v25)
      {
        *buf = 136446210;
        v32 = "nw_protocol_definition_set_metadata_initializer";
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null finalize_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25)
    {
      *buf = 136446466;
      v32 = "nw_protocol_definition_set_metadata_initializer";
      v33 = 2082;
      v34 = v21;
      _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null finalize_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v21);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_protocol_definition_initialize_extended_state(v7);
  extended_state = v8->extended_state;
  extended_state->var34 = a2;
  extended_state->var30 = a3;
  extended_state->var31 = a4;
LABEL_5:
}

uint64_t __nw_protocol_copy_http_redirect_definition_block_invoke()
{
  if (nw_protocol_http_redirect_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_redirect_identifier::onceToken, &__block_literal_global_1346);
  }

  v0 = nw_protocol_definition_create_with_identifier(nw_protocol_http_redirect_identifier::protocol_identifier);
  v1 = nw_protocol_copy_http_redirect_definition_http_redirect_definition;
  nw_protocol_copy_http_redirect_definition_http_redirect_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_http_redirect_definition_http_redirect_definition, nw_http_redirect_allocate_options, nw_http_redirect_copy_options, nw_http_redirect_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_http_redirect_definition_http_redirect_definition, nw_http_redirect_options_are_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_http_redirect_definition_http_redirect_definition, 0, nw_http_redirect_serialize_options, nw_http_redirect_deserialize_options);
  if (nw_protocol_http_redirect_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_redirect_identifier::onceToken, &__block_literal_global_1346);
  }

  v2 = nw_protocol_copy_http_redirect_definition_http_redirect_definition;

  return nw_protocol_register_handle(nw_protocol_http_redirect_identifier::protocol_identifier, v2, nw_protocol_http_redirect_create, 0);
}

double __nw_protocol_http_redirect_identifier_block_invoke()
{
  strcpy(nw_protocol_http_redirect_identifier::protocol_identifier, "http_redirect");
  *&result = 0x100000005;
  qword_1EA841148 = 0x100000005;
  return result;
}

uint64_t __nw_protocol_demux_copy_definition_block_invoke()
{
  if (nw_protocol_demux_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_demux_identifier::onceToken, &__block_literal_global_26036);
  }

  nw_protocol_demux_copy_definition::definition = nw_protocol_definition_create_with_identifier(&nw_protocol_demux_identifier::identifier);
  nw_protocol_definition_set_options_allocator(nw_protocol_demux_copy_definition::definition, nw_demux_allocate_options, nw_demux_copy_options, nw_demux_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_demux_copy_definition::definition, nw_demux_option_is_equal);
  nw_protocol_definition_set_options_comparator(nw_protocol_demux_copy_definition::definition, nw_demux_compare_options);
  nw_protocol_definition_set_options_serializer(nw_protocol_demux_copy_definition::definition, 1, nw_demux_options_serialize, nw_demux_options_deserialize);
  v0 = nw_protocol_demux_copy_definition::definition;

  return nw_protocol_register_handle(&nw_protocol_demux_identifier::identifier, v0, nw_protocol_demux_create, 0);
}

double __nw_protocol_demux_identifier_block_invoke()
{
  word_1EA83FC2E = 0;
  unk_1EA83FC26 = 0;
  unk_1EA83FC16 = 0u;
  strcpy(&nw_protocol_demux_identifier::identifier, "demux");
  *&result = 0x200000000;
  qword_1EA83FC30 = 0x200000000;
  return result;
}

uint64_t __nw_protocol_copy_oblivious_http_definition_block_invoke()
{
  if (nw_protocol_oblivious_http_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier);
  v1 = nw_protocol_copy_oblivious_http_definition_ohttp_definition;
  nw_protocol_copy_oblivious_http_definition_ohttp_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_oblivious_http_definition_ohttp_definition, nw_oblivious_http_allocate_options, nw_oblivious_http_copy_options, nw_oblivious_http_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_oblivious_http_definition_ohttp_definition, nw_oblivious_http_options_are_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_oblivious_http_definition_ohttp_definition, 0, nw_oblivious_http_serialize_options, nw_oblivious_http_deserialize_options);
  if (nw_protocol_oblivious_http_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
  }

  v2 = nw_protocol_copy_oblivious_http_definition_ohttp_definition;

  return nw_protocol_register_handle(&nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier, v2, nw_protocol_oblivious_http_create, 0);
}

double __nw_protocol_oblivious_http_identifier_block_invoke()
{
  strcpy(&nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier, "ohttp");
  *&result = 0x100000004;
  qword_1EA841208 = 0x100000004;
  return result;
}

uint64_t __nw_protocol_copy_oblivious_http_contexts_definition_block_invoke()
{
  if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
  }

  v0 = nw_protocol_definition_create_with_identifier(nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier);
  v1 = nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition;
  nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition, nw_oblivious_http_allocate_options, nw_oblivious_http_copy_options, nw_oblivious_http_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition, nw_oblivious_http_options_are_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition, 0, nw_oblivious_http_serialize_options, nw_oblivious_http_deserialize_options);
  nw_protocol_definition_set_metadata_initializer(nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition, 0x20u, nw_oblivious_http_initialize_metadata, nw_oblivious_http_finalize_metadata);
  if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
  }

  v2 = nw_protocol_copy_oblivious_http_contexts_definition_ohttp_definition;

  return nw_protocol_register_handle(nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier, v2, nw_protocol_oblivious_http_create, 0);
}

double __nw_protocol_oblivious_http_contexts_identifier_block_invoke()
{
  strcpy(nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier, "ohttp-contexts");
  *&result = 0x200000004;
  qword_1EA841118 = 0x200000004;
  return result;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136446210;
      v5 = "nw_protocol_copy_qpod_definition_block_invoke";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s creating definition", &v4, 0xCu);
    }
  }

  definition = nw_framer_create_definition("qpod", 0, &__block_literal_global_80);
  v1 = nw_protocol_copy_qpod_definition_definition;
  nw_protocol_copy_qpod_definition_definition = definition;

  nw_protocol_definition_set_options_allocator(nw_protocol_copy_qpod_definition_definition, qpod_options_allocate, qpod_options_copy, qpod_options_deallocate);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_qpod_definition_definition, qpod_options_is_equal);
  nw_protocol_definition_set_options_serializer(nw_protocol_copy_qpod_definition_definition, 1, qpod_options_serialize, qpod_options_deserialize);
  return nw_protocol_definition_register(nw_protocol_copy_qpod_definition_definition);
}

void ___ZL33nw_proxy_config_default_transportv_block_invoke()
{
  if (nw_protocol_setup_tcp_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
  }

  v0 = g_tcp_definition;
  nw_proxy_config_default_transport(void)::default_transport_string = nw_protocol_definition_get_identifier(v0);
}

double sub_181E095B4()
{
  type metadata accessor for ProtocolStack();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = xmmword_182AE3C80;
  *(v0 + 56) = xmmword_182AE6A00;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  result = -3.10503618e231;
  *(v0 + 88) = xmmword_182AE3C90;
  *(v0 + 104) = 0xF000000000000007;
  return result;
}

uint64_t sub_181E09614(uint64_t result, const void *a2, size_t a3)
{
  v3 = result;
  if (a3)
  {
    v6 = sub_181AC1BE8(a3, 0);
    result = memcpy(v6 + 4, a2, a3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ED410028 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED40FF98)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED40FF98);
  if (result)
  {
    v14 = xmmword_1ED40FF68;
    v15 = unk_1ED40FF78;
    v16 = unk_1ED40FF88;
    v17 = qword_1ED40FF98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
    swift_allocObject();
    v7 = &unk_1EA838E40;
LABEL_14:
    sub_181AB5D28(&v14, v13, v7);
    v8 = sub_182093930;
LABEL_15:
    v9 = sub_181F857E0(&v14, v6, v8);
LABEL_16:
    v10 = v9;
    sub_181F49A88(&v14, v7);
    return v10;
  }

  if (qword_1ED40FE40 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED411BE8)
  {
    goto LABEL_51;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED411BE8);
  if (result)
  {
    v14 = xmmword_1ED411BB8;
    v15 = unk_1ED411BC8;
    v16 = unk_1ED411BD8;
    v17 = qword_1ED411BE8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0);
    swift_allocObject();
    v7 = &unk_1EA838E38;
    goto LABEL_14;
  }

  if (qword_1ED4102F0 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED411D90)
  {
    goto LABEL_52;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED411D90);
  if (result)
  {
    v14 = xmmword_1ED411D60;
    v15 = unk_1ED411D70;
    v16 = unk_1ED411D80;
    v17 = qword_1ED411D90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
    swift_allocObject();
    v7 = &qword_1EA838E30;
    sub_181AB5D28(&v14, v13, &qword_1EA838E30);
    v9 = sub_181F85420(&v14, v6);
    goto LABEL_16;
  }

  if (qword_1ED410038 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED411C78)
  {
    goto LABEL_53;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED411C78);
  if (result)
  {
    v14 = xmmword_1ED411C48;
    v15 = unk_1ED411C58;
    v16 = unk_1ED411C68;
    v17 = qword_1ED411C78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v10 = sub_181F85608(&v14);

    return v10;
  }

  if (qword_1ED40FE60 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED40FE98)
  {
    goto LABEL_54;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED40FE98);
  if (result)
  {
    v14 = xmmword_1ED40FE68;
    v15 = unk_1ED40FE78;
    v16 = unk_1ED40FE88;
    v17 = qword_1ED40FE98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
    swift_allocObject();
    v11 = &unk_1EA838E28;
LABEL_33:
    sub_181AB5D28(&v14, v13, v11);
    return sub_181E0ADD4(&v14, v6, v11);
  }

  if (qword_1ED40FF40 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED411C20)
  {
    goto LABEL_55;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED411C20);
  if (result)
  {
    v14 = xmmword_1ED411BF0;
    v15 = unk_1ED411C00;
    v16 = unk_1ED411C10;
    v17 = qword_1ED411C20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
    swift_allocObject();
    sub_181AB5D28(&v14, v13, &qword_1EA838E20);
    return sub_181F84D84(&v14);
  }

  if (qword_1ED40FDC8 != -1)
  {
    result = swift_once();
  }

  if (!qword_1ED40FE00)
  {
    goto LABEL_56;
  }

  result = nw_protocol_definition_is_equal(v3, qword_1ED40FE00);
  if (result)
  {
    v14 = xmmword_1ED40FDD0;
    v15 = unk_1ED40FDE0;
    v16 = unk_1ED40FDF0;
    v17 = qword_1ED40FE00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50);
    swift_allocObject();
    v11 = &unk_1EA838E18;
    goto LABEL_33;
  }

  if (qword_1ED40FD30 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED411AC8)
  {
    if (!nw_protocol_definition_is_equal(v3, qword_1ED411AC8))
    {
      v12 = swift_unknownObjectRetain_n();
      sub_181AA82BC(v12, 0, 0, 0, 255, v3, &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838DB8);
      swift_allocObject();
      v10 = sub_181E09D38(&v14, v6);
      *(v10 + qword_1ED411A88) = 1;
      return v10;
    }

    v14 = xmmword_1ED411A98;
    v15 = unk_1ED411AA8;
    v16 = unk_1ED411AB8;
    v17 = qword_1ED411AC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
    swift_allocObject();
    v7 = &qword_1EA838E10;
    sub_181AB5D28(&v14, v13, &qword_1EA838E10);
    v8 = sub_1822A4428;
    goto LABEL_15;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t _nw_protocol_create_deserialized_options(uint64_t a1, const void *a2, size_t a3)
{
  v5 = swift_unknownObjectRetain();
  v6 = sub_181E09614(v5, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

_OWORD *sub_181E09D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[3] = xmmword_182AE8E90;
  v6 = qword_1ED411A90;
  v7 = sub_182AD2738();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + qword_1ED411A88) = 0;
  v8 = *(*v3 + 128);
  *(v3 + v8) = 0;
  *(v3 + *(*v3 + 136)) = 0;
  *(v3 + *(*v3 + 144)) = 0;
  v9 = v3 + *(*v3 + 152);
  *v9 = 0;
  v9[8] = 1;
  v10 = v3 + *(*v3 + 160);
  *v10 = 0;
  v10[8] = 1;
  v11 = (v3 + *(*v3 + 168));
  *v11 = 0;
  v11[1] = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  v12 = *a1;
  *&v18[9] = *(a1 + 9);
  *v18 = v12;
  *(v3 + 25) = *(a1 + 9);
  v3[1] = *a1;
  v13 = *(a1 + 32);
  v17 = v13;
  if (v13)
  {
    type metadata accessor for CProtocol.COptions();
    swift_allocObject();
    sub_181BBBFDC(v18, v16);
    sub_181E09F80(&v17, v16);
    v14 = sub_181E09FDC(a2, v13);
  }

  else
  {
    sub_181BBBFDC(v18, v16);

    v14 = 0;
  }

  sub_181F49A88(a1, &unk_1EA838DC0);
  swift_beginAccess();
  *(v3 + v8) = v14;

  return v3;
}

uint64_t sub_181E09FDC(uint64_t a1, void *a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();
  options_deserializer = nw_protocol_definition_get_options_deserializer(a2);
  if (options_deserializer)
  {
    v6 = options_deserializer;
    v7 = *(a1 + 16);
    v8 = swift_unknownObjectRetain();
    v9 = v6(v8, a1 + 32, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v2 + 16) = v9;

    if (!*(v2 + 16))
    {

      return 0;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v2;
}

void *nw_masque_deserialize_options(nw_protocol_definition *a1, const char *a2, unint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_masque_deserialize_options";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_masque_deserialize_options";
        v16 = "%{public}s called with null serialized_bytes";
LABEL_46:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }

LABEL_47:
      if (v13)
      {
        free(v13);
      }

      return 0;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_masque_deserialize_options";
        v16 = "%{public}s called with null serialized_bytes, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v18 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_masque_deserialize_options";
        v16 = "%{public}s called with null serialized_bytes, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_masque_deserialize_options";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null serialized_bytes, dumping backtrace:%{public}s";
LABEL_36:
      _os_log_impl(&dword_181A37000, v14, v15, v19, buf, 0x16u);
    }

LABEL_37:
    free(backtrace_string);
    goto LABEL_47;
  }

  if (a3 <= 0x4B)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_masque_deserialize_options";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_masque_deserialize_options";
        v16 = "%{public}s called with null (serialized_length >= sizeof(struct nw_masque_serialized_options))";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_masque_deserialize_options";
        v16 = "%{public}s called with null (serialized_length >= sizeof(struct nw_masque_serialized_options)), backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
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
        v24 = "nw_masque_deserialize_options";
        v16 = "%{public}s called with null (serialized_length >= sizeof(struct nw_masque_serialized_options)), no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v20)
    {
      *buf = 136446466;
      v24 = "nw_masque_deserialize_options";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null (serialized_length >= sizeof(struct nw_masque_serialized_options)), dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v5 = malloc_type_calloc(1uLL, 0x28uLL, 0x3BB1A814uLL);
  if (v5)
  {
    goto LABEL_6;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v24 = "nw_masque_deserialize_options";
  v25 = 2048;
  v26 = 1;
  v27 = 2048;
  v28 = 40;
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
LABEL_6:
    *(v5 + 3) = *a2;
    *(v5 + 16) = *(a2 + 37);
    if (*(a2 + 4) && a2[10])
    {
      *v5 = nw_endpoint_create_host_with_numeric_port(a2 + 10, *(a2 + 4));
    }

    if (a3 != 76)
    {
      v8 = a2 + 76;
      if (!a2[a3 - 1])
      {
        if (!*(v5 + 1))
        {
          *(v5 + 1) = xpc_array_create(0, 0);
        }

        v9 = &a2[a3];
        if (!*(v5 + 2))
        {
          *(v5 + 2) = xpc_array_create(0, 0);
        }

        if (v8 < v9)
        {
          do
          {
            v10 = strlen(v8);
            if (&v8[v10 + 1] >= v9)
            {
              break;
            }

            v11 = &v8[v10 + 1];
            v12 = &v11[strlen(v11) + 1];
            if (v12 > v9)
            {
              break;
            }

            xpc_array_set_string(*(v5 + 1), 0xFFFFFFFFFFFFFFFFLL, v8);
            xpc_array_set_string(*(v5 + 2), 0xFFFFFFFFFFFFFFFFLL, v11);
            v8 = v12;
          }

          while (v12 < v9);
        }
      }
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_definition_get_options_deserializer(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[17];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_deserializer";
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
        v15 = "nw_protocol_definition_get_options_deserializer";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_options_deserializer";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_deserializer";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_deserializer";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void _nw_protocol_options_set_proxy_endpoint(uint64_t a1, void *a2, char a3)
{

  if (a2)
  {
    v6 = a2;
  }

  v7 = *(*a1 + 136);
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = a2;
  v9 = a2;

  v10 = *(*a1 + 176);
  swift_beginAccess();
  *(a1 + v10) = a3;
}

uint64_t nw_http3_deserialize_options(void *a1, _OWORD *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    if (a3 == 112)
    {
      v7 = a2[5];
      v27 = a2[4];
      v28 = v7;
      v29 = a2[6];
      v8 = a2[1];
      *buf = *a2;
      *&buf[16] = v8;
      v9 = a2[3];
      v25 = a2[2];
      v26 = v9;
      v10 = nw_http3_copy_options(v5, buf);
      goto LABEL_4;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http3_deserialize_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_deserialize_options";
          v16 = "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_http3_options))";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v22 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_deserialize_options";
          v16 = "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_http3_options)), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v21 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_deserialize_options";
          v16 = "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_http3_options)), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v21)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_deserialize_options";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v20 = "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_http3_options)), dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v20, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http3_deserialize_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_deserialize_options";
          v16 = "%{public}s called with null serialized_bytes";
LABEL_31:
          _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v22 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_deserialize_options";
          v16 = "%{public}s called with null serialized_bytes, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v19 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_deserialize_options";
          v16 = "%{public}s called with null serialized_bytes, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v19)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_deserialize_options";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v20 = "%{public}s called with null serialized_bytes, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_4:

  return v10;
}

_OWORD *sub_181E0ADD4(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v5[3] = xmmword_182AE8E90;
  v8 = qword_1ED411A90;
  v9 = sub_182AD2738();
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  *(v5 + qword_1ED411A88) = 0;
  v10 = *(*v5 + 128);
  *(v5 + v10) = 0;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v11 = v5 + *(*v5 + 152);
  *v11 = 0;
  v11[8] = 1;
  v12 = v5 + *(*v5 + 160);
  *v12 = 0;
  v12[8] = 1;
  v13 = (v5 + *(*v5 + 168));
  *v13 = 0;
  v13[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  v14 = *a1;
  *(v18 + 9) = *(a1 + 9);
  v18[0] = v14;
  *(v5 + 25) = *(a1 + 9);
  v5[1] = *a1;
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  swift_allocObject();
  sub_181BBBFDC(v18, &v17);
  v15 = sub_181E0AFEC(a2);
  sub_181F49A88(a1, a3);
  swift_beginAccess();
  *(v5 + v10) = v15;

  return v5;
}

_WORD *sub_181E0AFEC(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = 0;
  v6 = 1;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  *(v1 + 48) = sub_181AACB6C();
  *(v1 + 56) = 0;
  v7 = v1 + 48;
  *(v1 + 64) = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v131 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v123 = 0;
  v124 = 0;
  v122 = MEMORY[0x1E69E7CC0];
  v121 = 0;
  v119 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  v116 = 0;
  v114 = MEMORY[0x1E69E7CC0];
  v115 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  v113 = 0;
  v8 = a1 + 32 + *(a1 + 16);
  v107 = a1 + 32;
  v108 = v8;
  v110 = 0;
  v109 = 0;
  v111 = 1;
  Deserializer.uint16(_:)(v82, &v131);
  Deserializer.uint32(_:)(&v130, v81);
  Deserializer.uint16(_:)(&v106, &v129 + 2);
  Deserializer.uint16(_:)(&v105, &v129);
  Deserializer.uint16(_:)(&v104, &v128);
  Deserializer.uint64(_:)(&v124, v103);
  Deserializer.uint8(_:)(&v127, v102);
  Deserializer.uint16(_:)(&v101, &v126);
  Deserializer.uint64(_:)(&v134, v100);
  Deserializer.uint64(_:)(&v133, v99);
  Deserializer.uint8(_:)(&v132, v98);
  Deserializer.uint8(_:)(&v125, v97);
  Deserializer.uint8(_:)(&v121 + 1, v96);
  Deserializer.uint8(_:)(&v121, v95);
  Deserializer.buffer(_:length:)(v121, v94);
  Deserializer.uint64(_:)(&v123, v93);
  if (v123 < 0)
  {
    goto LABEL_105;
  }

  Deserializer.buffer(_:length:)(v123, v92);
  Deserializer.uint64(_:)(&v119, v91);
  v9 = v119;
  if (v119 < 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  Deserializer.buffer(_:length:)(v119, v90);
  Deserializer.uint8(_:)(&v116, v89);
  Deserializer.uint8(_:)(&v116 + 1, v88);
  Deserializer.buffer(_:length:)(HIBYTE(v116), v87);
  Deserializer.uint64(_:)(&v115, v86);
  if (v115 < 0)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  Deserializer.buffer(_:length:)(v115, v85);
  Deserializer.uint64(_:)(&v113, v84);
  v3 = v113;
  if (v113 < 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  Deserializer.buffer(_:length:)(v113, v83);
  v6 = v110;
  LOBYTE(v2) = v111;
  if (v111 != 1)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v110)
  {
    if (v110 != 1)
    {
      v6 = 2;
    }

    goto LABEL_9;
  }

  if (v107)
  {
    v20 = v108 - v107;
  }

  else
  {
    v20 = 0;
  }

  v6 = v20 - v109;
  if (__OFSUB__(v20, v109))
  {
    goto LABEL_117;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_118;
  }

  if (v6)
  {
    LOBYTE(v2) = 0;
LABEL_10:
    v3 = v1;
    if (qword_1EA8371A0 == -1)
    {
LABEL_11:
      v10 = sub_182AD2698();
      __swift_project_value_buffer(v10, qword_1EA843348);
      v11 = sub_182AD2678();
      v12 = sub_182AD38B8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v82[0] = v14;
        *v13 = 136315138;
        v107 = v6;
        LOBYTE(v108) = v2;
        v15 = DeserializationResult.description.getter();
        v17 = sub_181C64FFC(v15, v16, v82);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_181A37000, v11, v12, "Deserialize result: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1865DF520](v14, -1, -1);
        MEMORY[0x1865DF520](v13, -1, -1);
      }

      v18 = v3;

      return v18;
    }

LABEL_109:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v21 = *v7;
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize) = v131;
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout) = v130;
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize) = HIWORD(v129);
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize) = v129;
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount) = v128;
  v22 = v126;
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode) = v126;
  v23 = v127;
  LODWORD(v78) = v22;
  if (v127)
  {
    if (v127 != 1)
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 2;
  }

  v79 = v3;
  v80 = v124;
  *(v21 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S) = v23;
  v24 = v134;
  swift_beginAccess();
  *(v1 + 16) = v24;
  *(v1 + 24) = 0;
  *(v1 + 32) = v133;
  *(v1 + 40) = 0;
  *(v1 + 64) = v132;
  if (qword_1ED4100E8 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v2 = qword_1ED411CB8;
    v25 = unk_1ED411CC0;
    v26 = byte_1ED411CC8;
    v27 = *v7;
    v28 = word_1ED411CB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
    swift_allocObject();
    v29 = v80;
    v30 = sub_181AA94EC(v28, v2, v25, v26, v27);

    sub_181F49A24(v2, v25, v26);
    _nw_quic_connection_set_use_swift_tls_0(v30, (v80 & 0x1000) != 0);
    _nw_quic_connection_set_use_x25519_0(v30, (v80 & 0x4000) != 0);
    v31 = sub_181AA8420(v30);
    v75 = v30;
    v32 = v79;
    if (v31)
    {
      v33 = *(*v31 + 128);
      v34 = v31;
      swift_beginAccess();
      v35 = *(v34 + v33);
      v29 = v80;

      v30 = v75;

      if (v35)
      {
        v36 = *(v35 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
        if ((v80 & 0x2000) != 0)
        {
          if ((v36 & 0x2000) == 0)
          {
            v37 = v36 | 0x2000;
            goto LABEL_34;
          }
        }

        else if ((v36 & 0x2000) != 0)
        {
          v37 = v36 & 0xFFFFFFFFFFFFDFFFLL;
LABEL_34:
          *(v35 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v37;
        }
      }
    }

    _nw_quic_connection_set_override_trust_certs_for_tests_0(v30, (v29 & 0x400) != 0);
    _nw_quic_connection_add_h3_alpn_0(v30, (v29 & 0x800) != 0);
    if (v78)
    {
      _nw_quic_connection_set_pqtls_mode_0(v30, v78);
    }

    if (v125)
    {
      _nw_quic_connection_set_source_connection_id_length_0(v30, v125);
    }

    v38 = v116;
    v39 = MEMORY[0x1E695E480];
    v73 = v4;
    v74 = v7;
    if (!v9 && !v116)
    {
      goto LABEL_74;
    }

    v106 = MEMORY[0x1E69E7CC0];
    if (!v116)
    {
      break;
    }

    v40 = 0;
    v41 = 0;
    v42 = v114;
    v43 = *(v114 + 16);
    v4 = (v114 + 32);
    allocator = *MEMORY[0x1E695E480];
    v7 = 2;
    v76 = v114;
    LODWORD(v78) = MEMORY[0x1E69E7CC0];
    v72 = v43;
    while (1)
    {
      if (v43 >= v7)
      {
        if (*(v42 + 16) < v7)
        {
          goto LABEL_113;
        }

        v44 = *v4;
        if (*v4)
        {
          v45 = v40 + v44;
          if (__OFADD__(v40, v44))
          {
            goto LABEL_114;
          }

          v2 = v118;
          v46 = *(v118 + 16);
          if (v46 >= v45)
          {
            if (v45 < v40)
            {
              goto LABEL_119;
            }

            if (v40 < 0)
            {
              goto LABEL_120;
            }

            v47 = v38;
            if (v46 == v44)
            {

              v48 = v2;
            }

            else
            {
              v48 = MEMORY[0x1E69E7CC0];
              if (v45 != v40)
              {
                if (*v4)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
                  v48 = swift_allocObject();
                  v52 = _swift_stdlib_malloc_size(v48);
                  v48[2] = v44;
                  v48[3] = 2 * v52 - 64;
                }

                memcpy(v48 + 4, v2 + v40 + 32, v44);
              }
            }

            v49 = CFDataCreate(allocator, v48 + 32, v44);

            if (v49)
            {
              v50 = v49;
              MEMORY[0x1865D9F10]();
              if (*(v106 + 16) >= *(v106 + 24) >> 1)
              {
                sub_182AD3408();
              }

              sub_182AD3448();

              LODWORD(v78) = v106;
            }

            else
            {
            }

            v32 = v79;
            v38 = v47;
            v42 = v76;
            v43 = v72;
          }
        }
      }

      else
      {
        LODWORD(v44) = 0;
      }

      v51 = __OFADD__(v40, v44);
      v40 += v44;
      if (v51)
      {
        break;
      }

      ++v41;
      v7 += 2;
      ++v4;
      if (v41 == v38)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

LABEL_67:
  if (*(v118 + 16))
  {
    v7 = v74;
    v39 = MEMORY[0x1E695E480];
    if (v9)
    {
      v53 = CFDataCreate(*MEMORY[0x1E695E480], (v118 + 32), v9);
      v29 = v80;
      if (v53)
      {
        v54 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BA20);
        v55 = sub_182AD33B8();
        sub_1820CD8AC(v75, v54, v55);
      }

      else
      {
      }
    }

    else
    {

      v29 = v80;
    }
  }

  else
  {

    v7 = v74;
    v29 = v80;
    v39 = MEMORY[0x1E695E480];
  }

LABEL_74:
  v56 = v112;
  if (v32 && *(v112 + 16))
  {
    v57 = *v7;
    v58 = *v39;

    v59 = CFDataCreate(v58, (v56 + 32), v32);
    v60 = *(v57 + 152);
    *(v57 + 152) = v59;

    v29 = v80;
  }

  v4 = HIBYTE(v121);
  if (HIBYTE(v121))
  {
    v61 = 0;
    v9 = 0;
    v106 = MEMORY[0x1E69E7CC0];
    v62 = v120;
    v63 = *(v120 + 16);
    v7 = v120 + 32;
    v78 = v120;
    v79 = *v39;
    v6 = 2;
    v77 = v63;
    while (1)
    {
      if (v63 >= v6)
      {
        if (*(v62 + 16) < v6)
        {
          goto LABEL_111;
        }

        v3 = *v7;
        if (*v7)
        {
          v64 = v61 + v3;
          if (__OFADD__(v61, v3))
          {
            goto LABEL_112;
          }

          v65 = v122;
          v66 = v122[2];
          if (v66 >= v64)
          {
            if (v64 < v61)
            {
              goto LABEL_115;
            }

            if (v61 < 0)
            {
              goto LABEL_116;
            }

            if (v66 == v3)
            {

              v2 = v65;
            }

            else
            {
              v2 = MEMORY[0x1E69E7CC0];
              if (v64 != v61)
              {
                if (*v7)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
                  v2 = swift_allocObject();
                  v69 = _swift_stdlib_malloc_size(v2);
                  v2[2] = v3;
                  v2[3] = 2 * v69 - 64;
                }

                memcpy(v2 + 4, v65 + v61 + 32, v3);
              }
            }

            v67 = CFDataCreate(v79, v2 + 32, v3);

            if (v67)
            {
              v68 = v67;
              MEMORY[0x1865D9F10]();
              if (*(v106 + 16) >= *(v106 + 24) >> 1)
              {
                v2 = *(v106 + 16);
                sub_182AD3408();
              }

              sub_182AD3448();
            }

            else
            {
            }

            v63 = v77;
            v62 = v78;
          }
        }
      }

      else
      {
        v3 = 0;
      }

      v51 = __OFADD__(v61, v3);
      v61 += v3;
      if (v51)
      {
        break;
      }

      v9 = (v9 + 1);
      v6 += 2;
      v7 += 2;
      if (v9 == v4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BA20);
        v70 = sub_182AD33B8();
        sub_181E0C630(v75, v70);

        v7 = v74;
        v29 = v80;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

LABEL_103:
  *(*v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v29;

  return v73;
}

uint64_t _nw_quic_connection_set_use_swift_tls_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v9 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (((v9 >> 12) & 1) == (a2 & 1))
      {
      }

      if (a2)
      {
        if ((v9 & 0x1000) == 0)
        {
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9 | 0x1000;
        }

        if (nw_protocol_copy_swift_tls_definition(v8))
        {
LABEL_8:
          v10 = swift_unknownObjectRetain();
          v11 = v10;
LABEL_14:
          sub_181AA82B4(&v22, v10, 0, 0, 0, 255, v11);
          v20[0] = v22;
          v20[1] = v23;
          v20[2] = v24;
          v20[3] = v25;
          v21 = v26;
          v12 = *(&v22 + 1);
          v13 = v23;
          v14 = BYTE8(v23);
          v15 = v24;
          v16 = v22;
          sub_181F49A24(*(&v22 + 1), v23, SBYTE8(v23));
          v17 = sub_181AA90F0(v15);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
          swift_allocObject();
          v18 = sub_181AA94EC(v16, v12, v13, v14, v17);
          sub_181F49A88(v20, &unk_1EA838740);
          v19 = sub_1820D232C();
          *(v7 + 112) = v18;
          *(v7 + 120) = v19;

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        if ((v9 & 0x1000) != 0)
        {
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9 & 0xFFFFFFFFFFFFEFFFLL;
        }

        if (nw_protocol_copy_tls_definition())
        {
          goto LABEL_8;
        }
      }

      v10 = nw_protocol_copy_tls_definition();
      v11 = 0;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_use_x25519_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(*result + 128);
  v6 = result;
  swift_beginAccess();
  v7 = *(v6 + v5);

  if (!v7)
  {
    return result;
  }

  if (!*(v7 + 112))
  {
  }

  v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  if (((v8 >> 14) & 1) == (a2 & 1))
  {
  }

  if ((a2 & 1) == 0)
  {
    if ((v8 & 0x4000) != 0)
    {
      *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8 & 0xFFFFFFFFFFFFBFFFLL;
    }
  }

  v9 = *(v7 + 120);
  if ((v8 & 0x4000) == 0)
  {
    *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8 | 0x4000;
  }

  ObjectType = swift_getObjectType();
  v11 = *(v9 + 344);
  swift_unknownObjectRetain();
  v11(sub_1820CED44, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v9);

  return swift_unknownObjectRelease();
}

uint64_t _nw_quic_connection_set_override_trust_certs_for_tests_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      if (a2)
      {
        if (!os_variant_allows_internal_security_policies())
        {
        }

        if (!*(v7 + 112))
        {
        }

        v8 = *(v7 + 120);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 344);
        swift_unknownObjectRetain();
        v10(j__nw_quic_connection_set_trust_override_security_options, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v8);
        swift_unknownObjectRelease();
        v11 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
        v12 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
        if ((v12 & 0x400) != 0)
        {
        }

        v13 = v12 | 0x400;
      }

      else
      {
        v11 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
        v14 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
        if ((v14 & 0x400) == 0)
        {
        }

        v13 = v14 & 0xFFFFFFFFFFFFFBFFLL;
      }

      *(v7 + v11) = v13;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_add_h3_alpn_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      if (a2)
      {
        if (!*(v7 + 112))
        {
        }

        v8 = *(v7 + 120);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 344);
        swift_unknownObjectRetain();
        v10(sub_181E0C2A4, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v8);
        swift_unknownObjectRelease();
        v11 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
        v12 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
        if ((v12 & 0x800) != 0)
        {
        }

        v13 = v12 | 0x800;
      }

      else
      {
        v11 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
        v14 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
        if ((v14 & 0x800) == 0)
        {
        }

        v13 = v14 & 0xFFFFFFFFFFFFF7FFLL;
      }

      *(v7 + v11) = v13;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_pqtls_mode_0(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      if (*(v7 + 112))
      {
        v8 = *(v7 + 120);
        ObjectType = swift_getObjectType();
        MEMORY[0x1EEE9AC00](ObjectType);
        v11[8] = a2;
        v10 = *(v8 + 344);
        swift_unknownObjectRetain();
        v10(sub_181E0C418, v11, MEMORY[0x1E69E7CA8] + 8, ObjectType, v8);
        swift_unknownObjectRelease();
        *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode) = a2;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_source_connection_id_length_0(uint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v8 = *(*result + 128);
    v9 = result;
    swift_beginAccess();
    v10 = *(v9 + v8);

    if (v10)
    {
      if (v2)
      {
        if ((v2 & 0xF8) != 0)
        {
          v2 = 8;
        }

        else
        {
          v2 = v2;
        }

        v11 = sub_182AD3428();
        *(v11 + 16) = v2;
        bzero((v11 + 32), v2);
        sub_182AD2828();

        v12 = sub_182AD2868();
        (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
      }

      else
      {
        v13 = sub_182AD2868();
        (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      }

      v14 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
      swift_beginAccess();
      sub_181B38538(v6, v10 + v14);
      swift_endAccess();
    }
  }

  return result;
}

void sub_181E0C630(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v4 = sub_181AA8420(a1);
  if (v4)
  {
    v5 = *(*v4 + 128);
    v6 = v4;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      if (a2)
      {
        v8 = a2;
        if (CFArrayGetCount(v8) > 0 && v7[14])
        {
          v9 = v7[15];
          v10 = v7[16];
          v7[16] = a2;
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          MEMORY[0x1EEE9AC00](ObjectType);
          (*(v9 + 344))(sub_181E0C7B0);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

uint64_t *nw_proxy_config_create_with_stack_internal(void *a1, void *a2, const char *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = objc_alloc_init(NWConcrete_nw_proxy_config);
      v10 = v9;
      if (v9)
      {
        v9->mode = 1;
        objc_storeStrong(&v9->endpoint, a1);
        v11 = nw_dictionary_create();
        v12 = v10[1];
        v10[1] = v11;

        nw_dictionary_set_value(v10[1], a3, v8);
        v13 = v10;
LABEL_24:

        goto LABEL_25;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      *buf = 136446210;
      v39 = "nw_proxy_config_create_with_stack_internal";
      v15 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v36 = 0;
      if (__nwlog_fault(v15, &type, &v36))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v17 = type;
          if (os_log_type_enabled(v16, type))
          {
            *buf = 136446210;
            v39 = "nw_proxy_config_create_with_stack_internal";
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
          }
        }

        else if (v36 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v19 = type;
          v20 = os_log_type_enabled(v16, type);
          if (backtrace_string)
          {
            if (v20)
            {
              *buf = 136446466;
              v39 = "nw_proxy_config_create_with_stack_internal";
              v40 = 2082;
              v41 = backtrace_string;
              _os_log_impl(&dword_181A37000, v16, v19, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v15)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          if (v20)
          {
            *buf = 136446210;
            v39 = "nw_proxy_config_create_with_stack_internal";
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
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
            *buf = 136446210;
            v39 = "nw_proxy_config_create_with_stack_internal";
            _os_log_impl(&dword_181A37000, v16, v21, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v15)
      {
        goto LABEL_24;
      }

LABEL_23:
      free(v15);
      goto LABEL_24;
    }

    v27 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_proxy_config_create_with_stack_internal";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v24, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v39 = "nw_proxy_config_create_with_stack_internal";
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null stack", buf, 0xCu);
        }

LABEL_57:

        goto LABEL_58;
      }

      if (v36 != 1)
      {
        v25 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v39 = "nw_proxy_config_create_with_stack_internal";
          _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_57;
      }

      v29 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v25, type);
      if (!v29)
      {
        if (v33)
        {
          *buf = 136446210;
          v39 = "nw_proxy_config_create_with_stack_internal";
          _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null stack, no backtrace", buf, 0xCu);
        }

        goto LABEL_57;
      }

      if (v33)
      {
        *buf = 136446466;
        v39 = "nw_proxy_config_create_with_stack_internal";
        v40 = 2082;
        v41 = v29;
        _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_proxy_config_create_with_stack_internal";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v24, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v39 = "nw_proxy_config_create_with_stack_internal";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null proxy_endpoint", buf, 0xCu);
        }

        goto LABEL_57;
      }

      if (v36 != 1)
      {
        v25 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v39 = "nw_proxy_config_create_with_stack_internal";
          _os_log_impl(&dword_181A37000, v25, v34, "%{public}s called with null proxy_endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_57;
      }

      v29 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v25, type);
      if (!v29)
      {
        if (v31)
        {
          *buf = 136446210;
          v39 = "nw_proxy_config_create_with_stack_internal";
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null proxy_endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_57;
      }

      if (v31)
      {
        *buf = 136446466;
        v39 = "nw_proxy_config_create_with_stack_internal";
        v40 = 2082;
        v41 = v29;
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null proxy_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_45:

      free(v29);
    }
  }

LABEL_58:
  if (v24)
  {
    free(v24);
  }

  v10 = 0;
LABEL_25:

  return v10;
}